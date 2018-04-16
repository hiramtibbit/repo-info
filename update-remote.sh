#!/bin/bash
set -eo pipefail

trap 'echo >&2 Ctrl+C captured, exiting; exit 1' SIGINT

# going for "bashbrew: command not found"
bashbrew --help > /dev/null

repos=( "$@" )
if [ ${#repos[@]} -eq 0 ]; then
	IFS=$'\n'
	repos=( $(bashbrew list --all --repos) )
	unset IFS
fi
repos=( "${repos[@]%/}" )

docker build --pull -t repo-info:remote -q -f Dockerfile.remote . > /dev/null
trap 'docker rm -f repo-info-remote > /dev/null' EXIT
docker run -d --name repo-info-remote repo-info:remote daemon > /dev/null

repoInfoDaemon='http://localhost:3000' # since we're using "docker exec", we can just hit localhost
curl=( docker exec -i repo-info-remote curl -fsSL )

tries=10
while [ "$("${curl[@]}" --max-time 2 "$repoInfoDaemon" -o /dev/null &> /dev/null || echo "$?")" = '7' ]; do
	(( --tries )) || :
	if [ "$tries" -eq 0 ]; then
		echo >&2 "error: repo-info:remote daemon did not start up in a reasonable amount of time"
		exit 1
	fi
	sleep 1
done

# use "xargs" parallelism to pre-fill our new daemon's cache a bit (which should help speed things up in the long run)
echo -n 'pre-filling cache ... '
bashbrew list --repos "${repos[@]}" 2>/dev/null \
	| sed 's!^!'"$repoInfoDaemon"'/markdown/!' \
	| xargs -n 1 -P 8 "${curl[@]}" -o /dev/null
echo 'done'

for repo in "${repos[@]}"; do
	echo -n "$repo ... "
	IFS=$'\n'
	tags=( $(bashbrew list "$repo" 2>/dev/null | sort -u) )
	unset IFS
	if [ "${#tags[@]}" -eq 0 ]; then
		echo 'skipping'
		continue
	fi
	rm -rf "repos/$repo/remote"
	mkdir -p "repos/$repo/remote"
	./generate-readme.sh "$repo" > "repos/$repo/README.md"
	{
		echo "<!-- THIS FILE IS GENERATED VIA '$0' -->"
		echo
		echo "# Tags of \`$repo\`"
		echo
		# add a simple ToC
		for tag in "${tags[@]}"; do
			# GitHub heading anchors are strange
			href="${tag//./}"
			href="${href//:/}"
			href="#${href,,}"
			echo $'-\t[`'"$tag"'`]('"$href"')'
		done
		# fetch each markdown
		for tag in "${tags[@]}"; do
			echo
			"${curl[@]}" "$repoInfoDaemon/markdown/$tag" \
				| tee "repos/$repo/remote/${tag#*:}.md"
		done
	} > "repos/$repo/tag-details.md"
	echo 'done'
done

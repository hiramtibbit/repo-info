#!/usr/bin/env bash
set -Eeuo pipefail

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

trap 'err="$?"; echo >&2 "ERROR: exit code $err"; ( set -x && docker logs repo-info-remote ); exit "$err"' ERR

export repoInfoDaemon='http://localhost:3000' # since we're using "docker exec", we can just hit localhost
export curl='docker exec -i repo-info-remote curl -fsSL'

tries=10
while [ "$($curl --max-time 2 "$repoInfoDaemon" -o /dev/null &> /dev/null || echo "$?")" = '7' ]; do
	(( --tries )) || :
	if [ "$tries" -eq 0 ]; then
		echo >&2 "error: repo-info:remote daemon did not start up in a reasonable amount of time"
		exit 1
	fi
	sleep 1
done

# use "xargs" for parallelism
export generator="$0" tab=$'\t' quot="'"
xargs <<<"${repos[*]}" -n 1 -P "${PARALLELISM:-8}" bash -Eeuo pipefail -c '
	for repo; do
		tags=( $(bashbrew list "$repo" 2>/dev/null | sort -u) )
		if [ "${#tags[@]}" -eq 0 ]; then
			echo "skip:   $repo"
			continue
		fi
		rm -rf "repos/$repo/remote"
		mkdir -p "repos/$repo/remote"
		./generate-readme.sh "$repo" > "repos/$repo/README.md"
		{
			echo "<!-- THIS FILE IS GENERATED VIA $quot$generator$quot -->"
			echo
			echo "# Tags of \`$repo\`"
			echo
			# add a simple ToC
			for tag in "${tags[@]}"; do
				# GitHub heading anchors are strange
				href="${tag//./}"
				href="${href//:/}"
				href="#${href,,}"
				echo "-$tab[\`$tag\`]($href)"
		done
		# fetch each markdown
		for tag in "${tags[@]}"; do
			echo >&2 "processing: $tag"
			echo
			$curl -fsSL "$repoInfoDaemon/markdown/$tag" \
				| tee "repos/$repo/remote/${tag#*:}.md"
		done
		} > "repos/$repo/tag-details.md"
	done
' --

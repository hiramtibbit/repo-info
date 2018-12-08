## `ghost:latest`

```console
$ docker pull ghost@sha256:1fff8cdc7e4f07916bb4ac9db2a7019f910063401478642182b8260188791667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:latest` - linux; amd64

```console
$ docker pull ghost@sha256:7593e3a7d54ffa8c4e2585df41fbb3096286009c809725ce061fe3746ef4dc00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (272997765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:131d551b0d7f9c56ae4d77f0b5d3a949d92c25c9df089fdbdaac9883fa211bbd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:07:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 12:09:09 GMT
ENV NODE_VERSION=8.14.0
# Mon, 03 Dec 2018 21:41:03 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Mon, 03 Dec 2018 21:41:03 GMT
ENV YARN_VERSION=1.12.3
# Mon, 03 Dec 2018 21:41:08 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Mon, 03 Dec 2018 21:41:08 GMT
CMD ["node"]
# Mon, 03 Dec 2018 23:39:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 03 Dec 2018 23:39:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 03 Dec 2018 23:39:31 GMT
ENV NODE_ENV=production
# Mon, 03 Dec 2018 23:39:32 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Mon, 03 Dec 2018 23:39:55 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Dec 2018 23:40:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Dec 2018 23:40:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 08 Dec 2018 00:59:27 GMT
ENV GHOST_VERSION=2.7.1
# Sat, 08 Dec 2018 01:00:29 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Sat, 08 Dec 2018 01:01:28 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 08 Dec 2018 01:01:31 GMT
WORKDIR /var/lib/ghost
# Sat, 08 Dec 2018 01:01:31 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 08 Dec 2018 01:01:32 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Sat, 08 Dec 2018 01:01:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 08 Dec 2018 01:01:32 GMT
EXPOSE 2368/tcp
# Sat, 08 Dec 2018 01:01:33 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd77ab8da06679825549b88b99b2e9277d0f548bcbe631450a3be48408c8256`  
		Last Modified: Fri, 16 Nov 2018 14:28:00 GMT  
		Size: 4.1 KB (4149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f41ceffa9f20448582f818d80ad0ede610910ab85fbe149185348d0957e703`  
		Last Modified: Mon, 03 Dec 2018 22:53:57 GMT  
		Size: 28.0 MB (28009081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0780bb3d463704547a0e4065170553863f19f31d85108e29fd1a1450225097fd`  
		Last Modified: Mon, 03 Dec 2018 22:53:50 GMT  
		Size: 1.3 MB (1312712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:551fe63f1f02b08e3616a2256a55c721f7496fd47d5fa45f6caece9359947db7`  
		Last Modified: Mon, 03 Dec 2018 23:49:43 GMT  
		Size: 500.9 KB (500920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6968d4fce38e9918cb101fd9b3dacad8685254d831f0bc0e196049546c436ce8`  
		Last Modified: Mon, 03 Dec 2018 23:49:53 GMT  
		Size: 17.3 MB (17291868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1963c75132c90fcc815f90b0ce7c4e5372b528104d510a095f357449b6fb18cf`  
		Last Modified: Sat, 08 Dec 2018 01:06:20 GMT  
		Size: 111.3 MB (111313268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f525983f593bbd9d45129fe4f7087c4f138cfb6c7f5ef0eedd3b2b21c18ec53b`  
		Last Modified: Sat, 08 Dec 2018 01:06:21 GMT  
		Size: 92.1 MB (92078931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1a47b8bf9033c6b959ba3e167d7bcd4096925ee5eafabbf9267e5902e6959c`  
		Last Modified: Sat, 08 Dec 2018 01:05:38 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:e9206aead0e0fc3bb29f70620b7306db7bb2abc8b317b01717d1d6146f1e4e74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:latest` - linux; amd64

```console
$ docker pull ghost@sha256:a01b74717df9035e3f6edafe24894f749d64d400f9a84c8ce41fae2c7ce5f9c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.3 MB (271278227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf3f48f010e1fb893dc1d02bd4477d9cac1a5251cbd7e592e8f278b55d9a55f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:07:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 20 Dec 2018 00:44:20 GMT
ENV NODE_VERSION=8.14.1
# Thu, 20 Dec 2018 00:44:51 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 20 Dec 2018 00:44:51 GMT
ENV YARN_VERSION=1.12.3
# Thu, 20 Dec 2018 00:44:54 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 20 Dec 2018 00:44:54 GMT
CMD ["node"]
# Thu, 20 Dec 2018 01:29:04 GMT
ENV GOSU_VERSION=1.10
# Thu, 20 Dec 2018 01:29:08 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 20 Dec 2018 01:29:08 GMT
ENV NODE_ENV=production
# Thu, 20 Dec 2018 01:29:08 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 20 Dec 2018 01:29:28 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 20 Dec 2018 01:29:29 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 20 Dec 2018 01:29:29 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 20 Dec 2018 01:29:29 GMT
ENV GHOST_VERSION=2.7.1
# Thu, 20 Dec 2018 01:30:07 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 20 Dec 2018 01:30:42 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 20 Dec 2018 01:30:43 GMT
WORKDIR /var/lib/ghost
# Thu, 20 Dec 2018 01:30:44 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 20 Dec 2018 01:30:44 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 20 Dec 2018 01:30:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 20 Dec 2018 01:30:44 GMT
EXPOSE 2368
# Thu, 20 Dec 2018 01:30:44 GMT
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
	-	`sha256:40fdd334c62d4526a835bcbafbedbed87edaec180d35706c6c27f3f88ee2d8b8`  
		Last Modified: Thu, 20 Dec 2018 01:12:35 GMT  
		Size: 28.0 MB (28017935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c14b00b9881b4d0ff4f1bedba028c6e12845e55a90dba584147d1ef58764794`  
		Last Modified: Thu, 20 Dec 2018 01:12:29 GMT  
		Size: 1.3 MB (1318202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34319a75a335d733e2314be2d741d31bad2c63ed089700a3f9c5a0dd2912ee6a`  
		Last Modified: Thu, 20 Dec 2018 01:34:14 GMT  
		Size: 500.9 KB (500919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81daaf9f83344882b2afd38bc160ba9a506f09e01016a37670b89a62357b0b56`  
		Last Modified: Thu, 20 Dec 2018 01:34:18 GMT  
		Size: 17.2 MB (17179747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3725a6d0bb290f6736a3013bc19160c8089e74390459af4770dd41d8cce15f`  
		Last Modified: Thu, 20 Dec 2018 01:34:36 GMT  
		Size: 110.7 MB (110701112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7dfcdf9ecbb2b22a88e94c61b1d8dcfe2d59e3fb3c7f4f115d3b53770830b92`  
		Last Modified: Thu, 20 Dec 2018 01:34:34 GMT  
		Size: 91.1 MB (91069330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa2d2512d4aa9f80fd782f36195f2ceca47cc7e298ba9af839316d845075a26`  
		Last Modified: Thu, 20 Dec 2018 01:34:13 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm variant v7

```console
$ docker pull ghost@sha256:eefef2e7a201c424e03b66a56b750d3ad84cb05e2d0af9ff4942120a66851eb1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.6 MB (267573603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bcd782a29569173b49ee59bd682aa47670c6412c1f170cead78d36634eccb17`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:54:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 12:57:59 GMT
ENV NODE_VERSION=8.14.0
# Tue, 04 Dec 2018 13:10:05 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 04 Dec 2018 13:10:06 GMT
ENV YARN_VERSION=1.12.3
# Tue, 04 Dec 2018 13:10:10 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 04 Dec 2018 13:10:11 GMT
CMD ["node"]
# Tue, 04 Dec 2018 13:50:00 GMT
ENV GOSU_VERSION=1.10
# Tue, 04 Dec 2018 13:50:04 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 04 Dec 2018 13:50:05 GMT
ENV NODE_ENV=production
# Tue, 04 Dec 2018 13:50:05 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 04 Dec 2018 13:50:45 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 04 Dec 2018 13:50:47 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 04 Dec 2018 13:50:47 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 08 Dec 2018 13:12:58 GMT
ENV GHOST_VERSION=2.7.1
# Sat, 08 Dec 2018 13:14:37 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Sat, 08 Dec 2018 13:19:02 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 08 Dec 2018 13:19:07 GMT
WORKDIR /var/lib/ghost
# Sat, 08 Dec 2018 13:19:08 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 08 Dec 2018 13:19:09 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Sat, 08 Dec 2018 13:19:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 08 Dec 2018 13:19:10 GMT
EXPOSE 2368/tcp
# Sat, 08 Dec 2018 13:19:11 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d593375e3e016efae3c2913bf9ec6a773d4d78912648d30765dc4d4b0a756a`  
		Last Modified: Fri, 16 Nov 2018 19:05:29 GMT  
		Size: 4.2 KB (4165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9154be412e70e88f202eeb0a3b9647db633321aa300c9628d52e8e7cb23ba713`  
		Last Modified: Tue, 04 Dec 2018 13:21:05 GMT  
		Size: 25.5 MB (25472546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e50a2287b77513c62985480570d9ab3dda49720760bae0b64d134ec319b923`  
		Last Modified: Tue, 04 Dec 2018 13:20:57 GMT  
		Size: 1.3 MB (1312729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8014a75b7826e5d4055322a8a10a629b19a0cce041b3b74d75713d6e98419af5`  
		Last Modified: Tue, 04 Dec 2018 14:08:41 GMT  
		Size: 475.4 KB (475432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da6bf3d3d57b2a57a3d2cf5cfd00e44a2d20c1c4ad6d87cdde04024bbe286bd`  
		Last Modified: Tue, 04 Dec 2018 14:08:50 GMT  
		Size: 17.3 MB (17294221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99704bda4bb0fa507213a3aec046d1201bd23773bd529bbff89041967c8f0972`  
		Last Modified: Sat, 08 Dec 2018 13:25:23 GMT  
		Size: 96.5 MB (96473307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:544e1a226d6599f024a40df72182181cd2ec2db6fed94d83a93e4a23ee70efa4`  
		Last Modified: Sat, 08 Dec 2018 13:25:27 GMT  
		Size: 107.3 MB (107270582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36a02215ef85d0c817b570a2d6b9f1e6834e756caf8814edef576baf3441059`  
		Last Modified: Sat, 08 Dec 2018 13:24:45 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:06ab228d6bb1b73f6e1f440aa4dad4d69fd3e78886ca57d79781f5694f2936cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.2 MB (268227579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c208d4244f749a8392fa94906feabef96bb91f380e99a9fcf7ef6f8c14331339`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 03:05:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 16:55:37 GMT
ENV NODE_VERSION=8.14.0
# Tue, 04 Dec 2018 12:29:21 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 04 Dec 2018 12:29:22 GMT
ENV YARN_VERSION=1.12.3
# Tue, 04 Dec 2018 12:29:27 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 04 Dec 2018 12:29:28 GMT
CMD ["node"]
# Tue, 04 Dec 2018 14:19:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 04 Dec 2018 14:19:51 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 04 Dec 2018 14:19:51 GMT
ENV NODE_ENV=production
# Tue, 04 Dec 2018 14:19:52 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 04 Dec 2018 14:20:28 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 04 Dec 2018 14:20:30 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 04 Dec 2018 14:20:30 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 08 Dec 2018 10:58:30 GMT
ENV GHOST_VERSION=2.7.1
# Sat, 08 Dec 2018 11:00:37 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Sat, 08 Dec 2018 11:06:03 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 08 Dec 2018 11:06:08 GMT
WORKDIR /var/lib/ghost
# Sat, 08 Dec 2018 11:06:09 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 08 Dec 2018 11:06:10 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Sat, 08 Dec 2018 11:06:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 08 Dec 2018 11:06:12 GMT
EXPOSE 2368/tcp
# Sat, 08 Dec 2018 11:06:12 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4fc0c5fe73c64e6243ea741f24b5591b828ed247c4f9aefad5813804a12c18a`  
		Last Modified: Sat, 17 Nov 2018 03:10:34 GMT  
		Size: 4.2 KB (4167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499b0a52622fc8d8a77e00ec20d7186f32538d5c20eb154fe456789dc98405c0`  
		Last Modified: Tue, 04 Dec 2018 13:35:03 GMT  
		Size: 26.7 MB (26683282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b725e3dbcd08411630f693ca641ed8f56ae59f3bb8df8f6831e78f08c859c297`  
		Last Modified: Tue, 04 Dec 2018 13:34:52 GMT  
		Size: 1.3 MB (1312711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff0c8af569154cf2f127db8a3ff8cc75fb55c0e6d1dfa9513fd6ff9d86716ed`  
		Last Modified: Tue, 04 Dec 2018 14:36:01 GMT  
		Size: 468.9 KB (468940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8a7424df558a1f1541ced28c48ddb421a8c54d86f4183b5193cb9b5233be66`  
		Last Modified: Tue, 04 Dec 2018 14:36:11 GMT  
		Size: 17.3 MB (17296043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a079c065860a451238c92b674ea948e53d207ec2bb7e27429e1ff100a6df9bb2`  
		Last Modified: Sat, 08 Dec 2018 11:13:19 GMT  
		Size: 95.6 MB (95552333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6f275c95e0418547021585c4cf844342e9a3d41a2c41fc39a587b8bb0a2086`  
		Last Modified: Sat, 08 Dec 2018 11:13:24 GMT  
		Size: 106.6 MB (106578232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29e2bae58cc7bc49dc8ccbd29f36da14ed0c8ba192ad75bb5d5dae20848eeff`  
		Last Modified: Sat, 08 Dec 2018 11:11:27 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; 386

```console
$ docker pull ghost@sha256:47ce96f365278f6c1333b1c13e22d81f9dee619d452b1d1c4d023d331640228c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.2 MB (259242864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01fc6fab3f48fcc7a4d7818b93018e4493a77082718ee1a08f88f10be4f82d75`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Tue, 27 Nov 2018 14:20:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 16:49:58 GMT
ENV NODE_VERSION=8.14.0
# Tue, 04 Dec 2018 13:53:41 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 04 Dec 2018 13:53:41 GMT
ENV YARN_VERSION=1.12.3
# Tue, 04 Dec 2018 13:53:45 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 04 Dec 2018 13:53:45 GMT
CMD ["node"]
# Tue, 04 Dec 2018 15:20:08 GMT
ENV GOSU_VERSION=1.10
# Tue, 04 Dec 2018 15:20:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 04 Dec 2018 15:20:12 GMT
ENV NODE_ENV=production
# Tue, 04 Dec 2018 15:20:13 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 04 Dec 2018 15:20:44 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 04 Dec 2018 15:20:44 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 04 Dec 2018 15:20:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 08 Dec 2018 12:21:28 GMT
ENV GHOST_VERSION=2.7.1
# Sat, 08 Dec 2018 12:22:08 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Sat, 08 Dec 2018 12:24:10 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 08 Dec 2018 12:24:12 GMT
WORKDIR /var/lib/ghost
# Sat, 08 Dec 2018 12:24:12 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 08 Dec 2018 12:24:13 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Sat, 08 Dec 2018 12:24:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 08 Dec 2018 12:24:13 GMT
EXPOSE 2368/tcp
# Sat, 08 Dec 2018 12:24:14 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f393758efdde4e933c557f3f372621ebb2d7b6711b98741a1c8c23426030e867`  
		Last Modified: Tue, 27 Nov 2018 15:14:57 GMT  
		Size: 4.1 KB (4135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9f252457459e8dd7088fbbc1d92fa65911cd3b6b8c2dce7d942e0cf5c2a2ab`  
		Last Modified: Tue, 04 Dec 2018 14:51:41 GMT  
		Size: 27.8 MB (27841781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a55958f4c77a713d79184b2245bdd9314c1784eeacbf587922f98c66c653b52`  
		Last Modified: Tue, 04 Dec 2018 14:51:34 GMT  
		Size: 1.3 MB (1312703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f703ecbec4ca1bef6738bb95dd0d702b128937f099c9faae2d8febcfa05a14`  
		Last Modified: Tue, 04 Dec 2018 15:31:28 GMT  
		Size: 480.8 KB (480828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21dfdeac9a7f12266ffe530b58dc6b597bc626410be43dd0d47b8f15d370d99a`  
		Last Modified: Tue, 04 Dec 2018 15:31:42 GMT  
		Size: 17.3 MB (17295026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4302664053d6fb198b2e39c23f3f562c873326b8303c3951e0f472c9d6f5fe97`  
		Last Modified: Sat, 08 Dec 2018 12:26:58 GMT  
		Size: 89.6 MB (89577149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4111032ee890f49d9b3d6044c9b53cd394949d74c1ffd8949e947c787ed28f1e`  
		Last Modified: Sat, 08 Dec 2018 12:27:03 GMT  
		Size: 99.6 MB (99603908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebd5d44e28e9441bf3e3c4773d14a411a81fc32dcd559f825d940c79625e8db`  
		Last Modified: Sat, 08 Dec 2018 12:26:26 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; ppc64le

```console
$ docker pull ghost@sha256:b5651c5f30685eaa70d43b966cbdefdd5916ed9710dc745e28526e696b6965f4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.4 MB (256354397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3851a682026af36f489c14f3d844fb88abd12426d525dedd737b4f38db19a326`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:07:51 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 20 Dec 2018 09:42:27 GMT
ENV NODE_VERSION=8.14.1
# Thu, 20 Dec 2018 09:44:16 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 20 Dec 2018 09:44:23 GMT
ENV YARN_VERSION=1.12.3
# Thu, 20 Dec 2018 09:44:39 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 20 Dec 2018 09:44:48 GMT
CMD ["node"]
# Thu, 20 Dec 2018 10:22:38 GMT
ENV GOSU_VERSION=1.10
# Thu, 20 Dec 2018 10:22:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 20 Dec 2018 10:22:55 GMT
ENV NODE_ENV=production
# Thu, 20 Dec 2018 10:22:59 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 20 Dec 2018 10:23:27 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 20 Dec 2018 10:23:34 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 20 Dec 2018 10:23:37 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 20 Dec 2018 10:23:41 GMT
ENV GHOST_VERSION=2.7.1
# Thu, 20 Dec 2018 10:25:03 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 20 Dec 2018 10:31:06 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 20 Dec 2018 10:31:17 GMT
WORKDIR /var/lib/ghost
# Thu, 20 Dec 2018 10:31:21 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 20 Dec 2018 10:31:22 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 20 Dec 2018 10:31:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 20 Dec 2018 10:31:30 GMT
EXPOSE 2368
# Thu, 20 Dec 2018 10:31:36 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1afeea1085f7b2f8c5843b5f4cfab6c95444c74532315569e14b7459ea105b`  
		Last Modified: Fri, 16 Nov 2018 20:13:37 GMT  
		Size: 4.2 KB (4185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5406c8f6d3cad523a55f79636afc98645b7237756219261f7f504d528be3ffb3`  
		Last Modified: Thu, 20 Dec 2018 10:02:45 GMT  
		Size: 27.0 MB (26964183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f637f1c304402a285fd5c4600e11fc26627fe15771603c4946441834e2ec17ff`  
		Last Modified: Thu, 20 Dec 2018 10:02:39 GMT  
		Size: 1.3 MB (1318237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce51b439c4944e849d309583eb465508a842693d19cb31b88cc5412cab67a81`  
		Last Modified: Thu, 20 Dec 2018 10:42:33 GMT  
		Size: 470.1 KB (470077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b33c9139db9c031123f1e49bee2ac1377de3cfd4d93debb58a5e9b6fc95e66`  
		Last Modified: Thu, 20 Dec 2018 10:42:54 GMT  
		Size: 17.2 MB (17179960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d1e59de7a45fff6fbb704290b549ad91a182381c082106af39274ac2708190`  
		Last Modified: Thu, 20 Dec 2018 10:43:33 GMT  
		Size: 89.0 MB (88980834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af67a02e355bbb2428cea07c6222543cc56f44733742344b5e6236f8180dc76d`  
		Last Modified: Thu, 20 Dec 2018 10:43:39 GMT  
		Size: 98.7 MB (98695650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6606939d76d9a98f6e80af465713c653231268f87adc0cabfaa1bac55322211c`  
		Last Modified: Thu, 20 Dec 2018 10:42:32 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; s390x

```console
$ docker pull ghost@sha256:3bccc135d87b9111d05762f11c8a827533b81cd06234c2d2517b782d24b57bdf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.5 MB (258533469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca8bcedee770119bc3a49a41b53c3d394f6630abd49b4e9f2440145ffa202d64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:39:43 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 13:27:02 GMT
ENV NODE_VERSION=8.14.0
# Tue, 04 Dec 2018 13:39:45 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 04 Dec 2018 13:39:45 GMT
ENV YARN_VERSION=1.12.3
# Tue, 04 Dec 2018 13:39:50 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 04 Dec 2018 13:39:50 GMT
CMD ["node"]
# Tue, 04 Dec 2018 14:28:22 GMT
ENV GOSU_VERSION=1.10
# Tue, 04 Dec 2018 14:28:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 04 Dec 2018 14:28:26 GMT
ENV NODE_ENV=production
# Tue, 04 Dec 2018 14:28:26 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 04 Dec 2018 14:28:45 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 04 Dec 2018 14:28:46 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 04 Dec 2018 14:28:46 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 08 Dec 2018 13:18:21 GMT
ENV GHOST_VERSION=2.7.1
# Sat, 08 Dec 2018 13:19:07 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Sat, 08 Dec 2018 13:21:17 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 08 Dec 2018 13:21:19 GMT
WORKDIR /var/lib/ghost
# Sat, 08 Dec 2018 13:21:19 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 08 Dec 2018 13:21:20 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Sat, 08 Dec 2018 13:21:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 08 Dec 2018 13:21:20 GMT
EXPOSE 2368/tcp
# Sat, 08 Dec 2018 13:21:20 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:db7aa0264595016e37963ab9cf4e6fbfa7b19d99cb39b16bbb561a02b7b459d2`  
		Last Modified: Thu, 15 Nov 2018 02:03:05 GMT  
		Size: 22.3 MB (22334714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2801c348986bea5725dc642412a1130b6f77f3e4a15d3a5ab8d90b93bb96aad0`  
		Last Modified: Fri, 16 Nov 2018 20:42:10 GMT  
		Size: 4.2 KB (4150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfca232083a55cb5b1e0c045c4b99b62147b3aaa13ee4bc57c0f6008dd012b1`  
		Last Modified: Tue, 04 Dec 2018 14:07:58 GMT  
		Size: 27.8 MB (27849816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e69316ecac9bb1a55c117b2e318d77b02ef5d89b2ba26742af00434e02309ab`  
		Last Modified: Tue, 04 Dec 2018 14:07:53 GMT  
		Size: 1.3 MB (1312702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ec5090c05faf6388a732e39ce3e13ae543f29cf2aa88ca5acca8968bfbd49d`  
		Last Modified: Tue, 04 Dec 2018 14:34:20 GMT  
		Size: 487.0 KB (487041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a21e9ca2c17d4891d6c6e443525bc7756cb905704003ad1399501a12c980c37`  
		Last Modified: Tue, 04 Dec 2018 14:34:24 GMT  
		Size: 17.3 MB (17290200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c198633577233c92ac18beabce8a15313b3aa38fa2ca820ccddfbfb3fdb4c81f`  
		Last Modified: Sat, 08 Dec 2018 13:22:46 GMT  
		Size: 89.6 MB (89576834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2bac9b96ddaf59db19a221c91cd15e6759e1ea37c600348634eec6221221c4d`  
		Last Modified: Sat, 08 Dec 2018 13:22:49 GMT  
		Size: 99.7 MB (99677453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455d9d696c55f53814da2e54d8b19d9bd8ed561d274060dff4907f6248532daa`  
		Last Modified: Sat, 08 Dec 2018 13:22:20 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

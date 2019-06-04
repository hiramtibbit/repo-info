<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:1`](#ghost1)
-	[`ghost:1.25`](#ghost125)
-	[`ghost:1.25.8`](#ghost1258)
-	[`ghost:1.25.8-alpine`](#ghost1258-alpine)
-	[`ghost:1.25-alpine`](#ghost125-alpine)
-	[`ghost:1-alpine`](#ghost1-alpine)
-	[`ghost:2`](#ghost2)
-	[`ghost:2.23`](#ghost223)
-	[`ghost:2.23.1`](#ghost2231)
-	[`ghost:2.23.1-alpine`](#ghost2231-alpine)
-	[`ghost:2.23-alpine`](#ghost223-alpine)
-	[`ghost:2-alpine`](#ghost2-alpine)
-	[`ghost:alpine`](#ghostalpine)
-	[`ghost:latest`](#ghostlatest)

## `ghost:1`

```console
$ docker pull ghost@sha256:1fa339dbc0fcc38ad180f1f32fd91354792d959c38663aba8c78d7c50dc2c76c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:1` - linux; amd64

```console
$ docker pull ghost@sha256:aec1aeb91027f4d71c47096ac3d612419eaccff495c10ef60fde96ad08c39c7d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.5 MB (183452264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de3b271783c9a210a968e1137e9b47df9191fb92c7ea2536bbcc2ea9b15207bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:14:42 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 02:14:42 GMT
ENV NODE_VERSION=8.16.0
# Wed, 08 May 2019 02:14:57 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 02:14:57 GMT
ENV YARN_VERSION=1.15.2
# Wed, 08 May 2019 02:15:01 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 02:15:01 GMT
CMD ["node"]
# Wed, 08 May 2019 08:52:41 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 08:52:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 08 May 2019 08:52:45 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:23:08 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:23:28 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:23:29 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:23:29 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:23:29 GMT
ENV GHOST_VERSION=1.25.8
# Mon, 03 Jun 2019 22:24:04 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 03 Jun 2019 22:24:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 03 Jun 2019 22:24:14 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 22:24:14 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:24:14 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:24:14 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Mon, 03 Jun 2019 22:24:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:24:15 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:24:15 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89252b028f01ddb83169c019a9b0699d670133cd36bd332ed455fe90a8ea4483`  
		Last Modified: Wed, 08 May 2019 02:25:36 GMT  
		Size: 4.1 KB (4146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf13dafce3316c043c005ef6b47e44531a62d6f1d563cb586304e268b4e3e6d0`  
		Last Modified: Wed, 08 May 2019 02:25:45 GMT  
		Size: 28.0 MB (28031800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57153fe3234bf9f0026483507ad0c4194e91abfb73d32a26fd9e619326f53832`  
		Last Modified: Wed, 08 May 2019 02:25:37 GMT  
		Size: 1.3 MB (1324743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:962c9b06681fb3adb4ba56d677debc3823b42068e9e61a975a5af50977b0fddf`  
		Last Modified: Wed, 08 May 2019 08:55:19 GMT  
		Size: 500.9 KB (500920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a939c086bc9644b26bfbc1d364f59a3fd0926f515154ed4eb4fca57497d97ed`  
		Last Modified: Mon, 03 Jun 2019 22:27:28 GMT  
		Size: 13.7 MB (13724599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a53e63862ee945ed777830c280c1960264ba8deee1f37e8227818efe8863c85`  
		Last Modified: Mon, 03 Jun 2019 22:27:49 GMT  
		Size: 104.2 MB (104211361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6318e6285b73e4c0d95673f79b2159738ceb82b2c300c70e6c1e19f4a6d9fe7`  
		Last Modified: Mon, 03 Jun 2019 22:27:21 GMT  
		Size: 13.2 MB (13164756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bfbb3a056b917104115f8bd2e35047695b05c2568f04acdd3dbc9bb7f3d97a2`  
		Last Modified: Mon, 03 Jun 2019 22:27:19 GMT  
		Size: 589.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; arm variant v7

```console
$ docker pull ghost@sha256:e715bda3fcfb3b1a798cce47fd29bc0a6f7a9e42971d0f84dc40eecccb0c3c18
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186171271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:902b6fd1920da2f7219d1b87370a7def87e69d01774546ed92dfa96875cee075`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 15:13:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 15:13:21 GMT
ENV NODE_VERSION=8.16.0
# Wed, 08 May 2019 15:14:27 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 15:14:28 GMT
ENV YARN_VERSION=1.15.2
# Wed, 08 May 2019 15:14:38 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 15:14:39 GMT
CMD ["node"]
# Wed, 08 May 2019 18:28:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 18:28:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 08 May 2019 18:28:40 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 23:02:17 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 23:02:59 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 23:03:01 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 23:03:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 23:03:02 GMT
ENV GHOST_VERSION=1.25.8
# Mon, 03 Jun 2019 23:04:30 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 03 Jun 2019 23:04:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 03 Jun 2019 23:07:53 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 23:07:53 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 23:07:54 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 23:07:54 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Mon, 03 Jun 2019 23:07:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 23:07:55 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 23:07:56 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626773d003732b6357a355496b3568eb47daf3e804053223f39baae73cacf817`  
		Last Modified: Wed, 08 May 2019 15:26:06 GMT  
		Size: 4.2 KB (4159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f30da4c64397c8b1046d5caa940c54106c783a2232a4a7bb5fef93f2e9f34d`  
		Last Modified: Wed, 08 May 2019 15:26:15 GMT  
		Size: 25.5 MB (25480434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0212245cc078a3b06b22f0baffb8e1b2b9e38df5727dc0265ecb3a83e1af8b9b`  
		Last Modified: Wed, 08 May 2019 15:26:10 GMT  
		Size: 1.3 MB (1324822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fda0a8a945b9d3703f19e2f20208bd39cc3120fc46c62fee48a859fe9d2c47`  
		Last Modified: Wed, 08 May 2019 18:35:11 GMT  
		Size: 475.4 KB (475436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ad4c30aebc04e012df0bf85f3a037c56555e36931f4ad8f6ef03bf1db6e698`  
		Last Modified: Mon, 03 Jun 2019 23:09:19 GMT  
		Size: 13.7 MB (13730964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f01aa71a1addd5d65c76c014344b52aa2a7ab7fafb1e480afea7974d182c7ab9`  
		Last Modified: Mon, 03 Jun 2019 23:09:52 GMT  
		Size: 96.5 MB (96476809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db15ece0ee4be693a7579f32f4e0abac1276b0ce4f0e64e99d6f2e4ecd9481b`  
		Last Modified: Mon, 03 Jun 2019 23:09:22 GMT  
		Size: 29.4 MB (29401842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea33e5ecb90b10efdc7257db5528cda18795856ae2ccd5089b2827011ba46b4`  
		Last Modified: Mon, 03 Jun 2019 23:09:13 GMT  
		Size: 589.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:5ea19d9926a0685cc1f8cc6f2bfe23e65a23b3bc9f435557ddfd39d17d4d0fff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.1 MB (189108937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3a7fac2a488e4a7b0268e2d74af53dc7b42b89988414d9d2b664e32dcf03661`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 22 May 2019 23:44:56 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 22 May 2019 23:44:56 GMT
ENV NODE_VERSION=8.16.0
# Wed, 22 May 2019 23:45:30 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 22 May 2019 23:45:32 GMT
ENV YARN_VERSION=1.15.2
# Wed, 22 May 2019 23:45:37 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 22 May 2019 23:45:38 GMT
CMD ["node"]
# Thu, 23 May 2019 21:44:06 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 May 2019 21:44:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 23 May 2019 21:44:10 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:44:01 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:44:31 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:44:32 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:44:33 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:44:33 GMT
ENV GHOST_VERSION=1.25.8
# Mon, 03 Jun 2019 22:45:21 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 03 Jun 2019 22:45:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 03 Jun 2019 22:48:03 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 22:48:04 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:48:04 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:48:04 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Mon, 03 Jun 2019 22:48:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:48:05 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:48:05 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3921c095c25b350282d51bf3e3b484439b2134a3feee67a2f633ad6f9bc5295`  
		Last Modified: Thu, 23 May 2019 00:08:51 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7922ac4e2078aec40cd0b3a169ad3aa9cf5f8c955b542aba847506031467a909`  
		Last Modified: Thu, 23 May 2019 00:09:02 GMT  
		Size: 26.7 MB (26706509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9def03af8fb242c81f120506afdc9c08fdcf79b4633a7a9be31843bd0243edbd`  
		Last Modified: Thu, 23 May 2019 00:08:52 GMT  
		Size: 1.3 MB (1324806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2812fc18f1708e3672808ccc229d34fe1946bd0beab59b53bb5980af0f9a53`  
		Last Modified: Thu, 23 May 2019 21:49:16 GMT  
		Size: 468.9 KB (468942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95e1d389c8a6a4c04f7cae1f01281b554272fa60e688a8c04aeaf7c9afbbcc7`  
		Last Modified: Mon, 03 Jun 2019 22:49:37 GMT  
		Size: 13.7 MB (13728625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0da5322afa55e06d79845287fb1d7adeb09d97ee9600f40a937998fd884945`  
		Last Modified: Mon, 03 Jun 2019 22:50:03 GMT  
		Size: 96.5 MB (96513802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af2171832ea7fa6ae683957a5a736b03092a985863428e30a816f65c815806b`  
		Last Modified: Mon, 03 Jun 2019 22:49:40 GMT  
		Size: 30.0 MB (30027670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a73bdfdb1959a39e983fe093ba0516836fb17fe27f5976894f5e84596ecf013`  
		Last Modified: Mon, 03 Jun 2019 22:49:31 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; 386

```console
$ docker pull ghost@sha256:5403defe9378caae5beb71e6c8dee4d9466ebf40e842f5b1db7f63f3d06fcf33
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.8 MB (193769232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52a5d93de9939fc1efc3951e6055a67b77525bb02e98fe0fdfd74378aef0368d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 23:01:37 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 23:01:37 GMT
ENV NODE_VERSION=8.16.0
# Wed, 08 May 2019 23:02:03 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 23:02:03 GMT
ENV YARN_VERSION=1.15.2
# Wed, 08 May 2019 23:02:07 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 23:02:07 GMT
CMD ["node"]
# Thu, 09 May 2019 05:05:46 GMT
ENV GOSU_VERSION=1.10
# Thu, 09 May 2019 05:05:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 09 May 2019 05:05:50 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:44:50 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:45:09 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:45:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:45:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:45:10 GMT
ENV GHOST_VERSION=1.25.8
# Mon, 03 Jun 2019 22:45:49 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 03 Jun 2019 22:45:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 03 Jun 2019 22:47:27 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 22:47:28 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:47:28 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:47:28 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Mon, 03 Jun 2019 22:47:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:47:28 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:47:29 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b710f5be98e667f5cbf9d8d46caa2e09e11d7a119e5281e5b59e438f7383ea23`  
		Last Modified: Wed, 08 May 2019 23:34:58 GMT  
		Size: 4.1 KB (4133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97164f6906b97beae82cc6b966fa11128ea45d47ff23fa75dc3859d905ec2cbb`  
		Last Modified: Wed, 08 May 2019 23:35:05 GMT  
		Size: 27.9 MB (27862611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d742ea59aa34259f609b84a4306c87eeab4610cc6112b34d6c805f051ec520c`  
		Last Modified: Wed, 08 May 2019 23:34:58 GMT  
		Size: 1.3 MB (1324755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a37033ae6fedef9760ebd8c391f3920b78547240161e651096e98309e4afd6`  
		Last Modified: Thu, 09 May 2019 05:08:42 GMT  
		Size: 480.8 KB (480828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05a7e3ad6f15c8d0e5cb93238f34d81186d0f7457cce4b4bec10985d9bdb081`  
		Last Modified: Mon, 03 Jun 2019 22:48:36 GMT  
		Size: 13.7 MB (13723848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e0119a25ea1c14beab44f5ad63e0bd1fb6ac1780e1996dd563c64211657a1c`  
		Last Modified: Mon, 03 Jun 2019 22:48:57 GMT  
		Size: 96.5 MB (96475817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2626d64859e36de0970cb397df7828d8d44c541a89223a971b57d8bcad63e3ba`  
		Last Modified: Mon, 03 Jun 2019 22:48:38 GMT  
		Size: 30.8 MB (30775811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd12546f95d1c674c3b6d94335f453d7e80dcf4d7e9ef884b2c38c6d046e4d9`  
		Last Modified: Mon, 03 Jun 2019 22:48:30 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; ppc64le

```console
$ docker pull ghost@sha256:697b4846f8144288241a084301c4d11ba23b76432f93a1f4014d345a57e1155c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.7 MB (192732645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:171c4368fc213ced4e4d8b9b8e0ad74fd7db7fe7be33502a1bd672c6e51ef3c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Thu, 30 May 2019 19:19:31 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 30 May 2019 19:19:35 GMT
ENV NODE_VERSION=8.16.0
# Thu, 30 May 2019 19:21:38 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 30 May 2019 19:21:42 GMT
ENV YARN_VERSION=1.15.2
# Thu, 30 May 2019 19:21:59 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 30 May 2019 19:22:03 GMT
CMD ["node"]
# Thu, 30 May 2019 22:01:35 GMT
ENV GOSU_VERSION=1.10
# Thu, 30 May 2019 22:01:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 30 May 2019 22:01:49 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:34:55 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:35:29 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:35:33 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:35:36 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:35:39 GMT
ENV GHOST_VERSION=1.25.8
# Mon, 03 Jun 2019 22:39:03 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 03 Jun 2019 22:39:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 03 Jun 2019 22:43:36 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 22:43:41 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:43:44 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:43:45 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Mon, 03 Jun 2019 22:43:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:43:49 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:43:51 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1731a3590c4918a1aa9896862042f09bd0fa20af4e4580153724b905038152dc`  
		Last Modified: Thu, 30 May 2019 20:20:57 GMT  
		Size: 4.2 KB (4179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dda530acc571b69d9fadf5c48fb67e00781aa633dc66841ce256318d1dc77ed`  
		Last Modified: Thu, 30 May 2019 20:21:31 GMT  
		Size: 27.0 MB (26980007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a16b00c4baecb17fa3272863fbf33567cb7e5e4e3a6bb15e25bea6faddc4640`  
		Last Modified: Thu, 30 May 2019 20:20:57 GMT  
		Size: 1.3 MB (1324809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db793db3d3a186378dc454304db8ec669b23647828a439b2f0d9589c4d71441`  
		Last Modified: Thu, 30 May 2019 22:22:01 GMT  
		Size: 470.1 KB (470077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3b32eda4497e2312c74f6ee55a5b08d4dbafc942e955e889b9cce4737ca718`  
		Last Modified: Mon, 03 Jun 2019 22:56:38 GMT  
		Size: 13.7 MB (13723589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea5c62820e31df84adc36e9e5f2f16580515350625c8b28c2f5a16903f4b9ab`  
		Last Modified: Mon, 03 Jun 2019 22:58:09 GMT  
		Size: 96.5 MB (96513936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227a0b2a3e4235512f2ce745d2bf72bd83c7e905d88b4e5666affb8bd2470cde`  
		Last Modified: Mon, 03 Jun 2019 22:56:28 GMT  
		Size: 31.0 MB (30970543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1847ddc995ad42d34b7b933d36510c7289f199adda27c4c1ce128a278cb85905`  
		Last Modified: Mon, 03 Jun 2019 22:56:10 GMT  
		Size: 591.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; s390x

```console
$ docker pull ghost@sha256:ffd0e4306d80a759e6c7d04a58cd6ab9644b1992df77d98a4307d75417a97e5a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.2 MB (193177754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6703582a855aaa7e489f0709923668c229114bb3bbd6c5261dfb5ccaa73afabc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:12:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 14:12:19 GMT
ENV NODE_VERSION=8.16.0
# Wed, 08 May 2019 14:13:16 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 14:13:17 GMT
ENV YARN_VERSION=1.15.2
# Wed, 08 May 2019 14:13:24 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 14:13:24 GMT
CMD ["node"]
# Thu, 09 May 2019 03:04:55 GMT
ENV GOSU_VERSION=1.10
# Thu, 09 May 2019 03:05:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 09 May 2019 03:05:07 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:44:48 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:45:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:45:07 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:45:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:45:07 GMT
ENV GHOST_VERSION=1.25.8
# Mon, 03 Jun 2019 22:45:32 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 03 Jun 2019 22:45:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 03 Jun 2019 22:47:00 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 22:47:00 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:47:00 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:47:01 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Mon, 03 Jun 2019 22:47:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:47:01 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:47:02 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d77ccdc5044aabea621dcafff2d8f0ce8fd083c951109df82537c78478a8abc`  
		Last Modified: Wed, 08 May 2019 14:27:47 GMT  
		Size: 4.2 KB (4158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b80ca2d530fc066d0271e796fe6cc6c06c9ae161d613c95015267822d1f3863`  
		Last Modified: Wed, 08 May 2019 14:28:02 GMT  
		Size: 27.9 MB (27867144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1e3a463d9f9c0c68561c118954214ce206c9b8fc55ba7aedeb81ad8b897ecc`  
		Last Modified: Wed, 08 May 2019 14:27:48 GMT  
		Size: 1.3 MB (1324757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59aeb2fa892fcd7a772da442d3ce259fff012421acca2317af6f89f15ed5110c`  
		Last Modified: Thu, 09 May 2019 03:16:15 GMT  
		Size: 487.0 KB (487039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ff6a115d56f155ed961bbe645153404395710dd80bd182244385c91940e7f02`  
		Last Modified: Mon, 03 Jun 2019 22:48:14 GMT  
		Size: 13.7 MB (13722628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf32033c6e2d09adfca7d2647fbd7f38734e593bd682e073f16d7ab2131fc17`  
		Last Modified: Mon, 03 Jun 2019 22:48:29 GMT  
		Size: 96.5 MB (96513628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c0e9e5c7a74f053930efd9e7c2c6d020bfca450efd07635858e4489fa5c721`  
		Last Modified: Mon, 03 Jun 2019 22:48:17 GMT  
		Size: 30.9 MB (30918945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6974b372cbbe22d65fae9125f3788318f8ed07046f703817139f377cb0281622`  
		Last Modified: Mon, 03 Jun 2019 22:48:11 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25`

```console
$ docker pull ghost@sha256:1fa339dbc0fcc38ad180f1f32fd91354792d959c38663aba8c78d7c50dc2c76c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:1.25` - linux; amd64

```console
$ docker pull ghost@sha256:aec1aeb91027f4d71c47096ac3d612419eaccff495c10ef60fde96ad08c39c7d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.5 MB (183452264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de3b271783c9a210a968e1137e9b47df9191fb92c7ea2536bbcc2ea9b15207bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:14:42 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 02:14:42 GMT
ENV NODE_VERSION=8.16.0
# Wed, 08 May 2019 02:14:57 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 02:14:57 GMT
ENV YARN_VERSION=1.15.2
# Wed, 08 May 2019 02:15:01 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 02:15:01 GMT
CMD ["node"]
# Wed, 08 May 2019 08:52:41 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 08:52:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 08 May 2019 08:52:45 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:23:08 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:23:28 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:23:29 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:23:29 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:23:29 GMT
ENV GHOST_VERSION=1.25.8
# Mon, 03 Jun 2019 22:24:04 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 03 Jun 2019 22:24:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 03 Jun 2019 22:24:14 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 22:24:14 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:24:14 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:24:14 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Mon, 03 Jun 2019 22:24:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:24:15 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:24:15 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89252b028f01ddb83169c019a9b0699d670133cd36bd332ed455fe90a8ea4483`  
		Last Modified: Wed, 08 May 2019 02:25:36 GMT  
		Size: 4.1 KB (4146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf13dafce3316c043c005ef6b47e44531a62d6f1d563cb586304e268b4e3e6d0`  
		Last Modified: Wed, 08 May 2019 02:25:45 GMT  
		Size: 28.0 MB (28031800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57153fe3234bf9f0026483507ad0c4194e91abfb73d32a26fd9e619326f53832`  
		Last Modified: Wed, 08 May 2019 02:25:37 GMT  
		Size: 1.3 MB (1324743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:962c9b06681fb3adb4ba56d677debc3823b42068e9e61a975a5af50977b0fddf`  
		Last Modified: Wed, 08 May 2019 08:55:19 GMT  
		Size: 500.9 KB (500920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a939c086bc9644b26bfbc1d364f59a3fd0926f515154ed4eb4fca57497d97ed`  
		Last Modified: Mon, 03 Jun 2019 22:27:28 GMT  
		Size: 13.7 MB (13724599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a53e63862ee945ed777830c280c1960264ba8deee1f37e8227818efe8863c85`  
		Last Modified: Mon, 03 Jun 2019 22:27:49 GMT  
		Size: 104.2 MB (104211361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6318e6285b73e4c0d95673f79b2159738ceb82b2c300c70e6c1e19f4a6d9fe7`  
		Last Modified: Mon, 03 Jun 2019 22:27:21 GMT  
		Size: 13.2 MB (13164756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bfbb3a056b917104115f8bd2e35047695b05c2568f04acdd3dbc9bb7f3d97a2`  
		Last Modified: Mon, 03 Jun 2019 22:27:19 GMT  
		Size: 589.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; arm variant v7

```console
$ docker pull ghost@sha256:e715bda3fcfb3b1a798cce47fd29bc0a6f7a9e42971d0f84dc40eecccb0c3c18
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186171271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:902b6fd1920da2f7219d1b87370a7def87e69d01774546ed92dfa96875cee075`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 15:13:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 15:13:21 GMT
ENV NODE_VERSION=8.16.0
# Wed, 08 May 2019 15:14:27 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 15:14:28 GMT
ENV YARN_VERSION=1.15.2
# Wed, 08 May 2019 15:14:38 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 15:14:39 GMT
CMD ["node"]
# Wed, 08 May 2019 18:28:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 18:28:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 08 May 2019 18:28:40 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 23:02:17 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 23:02:59 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 23:03:01 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 23:03:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 23:03:02 GMT
ENV GHOST_VERSION=1.25.8
# Mon, 03 Jun 2019 23:04:30 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 03 Jun 2019 23:04:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 03 Jun 2019 23:07:53 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 23:07:53 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 23:07:54 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 23:07:54 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Mon, 03 Jun 2019 23:07:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 23:07:55 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 23:07:56 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626773d003732b6357a355496b3568eb47daf3e804053223f39baae73cacf817`  
		Last Modified: Wed, 08 May 2019 15:26:06 GMT  
		Size: 4.2 KB (4159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f30da4c64397c8b1046d5caa940c54106c783a2232a4a7bb5fef93f2e9f34d`  
		Last Modified: Wed, 08 May 2019 15:26:15 GMT  
		Size: 25.5 MB (25480434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0212245cc078a3b06b22f0baffb8e1b2b9e38df5727dc0265ecb3a83e1af8b9b`  
		Last Modified: Wed, 08 May 2019 15:26:10 GMT  
		Size: 1.3 MB (1324822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fda0a8a945b9d3703f19e2f20208bd39cc3120fc46c62fee48a859fe9d2c47`  
		Last Modified: Wed, 08 May 2019 18:35:11 GMT  
		Size: 475.4 KB (475436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ad4c30aebc04e012df0bf85f3a037c56555e36931f4ad8f6ef03bf1db6e698`  
		Last Modified: Mon, 03 Jun 2019 23:09:19 GMT  
		Size: 13.7 MB (13730964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f01aa71a1addd5d65c76c014344b52aa2a7ab7fafb1e480afea7974d182c7ab9`  
		Last Modified: Mon, 03 Jun 2019 23:09:52 GMT  
		Size: 96.5 MB (96476809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db15ece0ee4be693a7579f32f4e0abac1276b0ce4f0e64e99d6f2e4ecd9481b`  
		Last Modified: Mon, 03 Jun 2019 23:09:22 GMT  
		Size: 29.4 MB (29401842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea33e5ecb90b10efdc7257db5528cda18795856ae2ccd5089b2827011ba46b4`  
		Last Modified: Mon, 03 Jun 2019 23:09:13 GMT  
		Size: 589.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:5ea19d9926a0685cc1f8cc6f2bfe23e65a23b3bc9f435557ddfd39d17d4d0fff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.1 MB (189108937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3a7fac2a488e4a7b0268e2d74af53dc7b42b89988414d9d2b664e32dcf03661`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 22 May 2019 23:44:56 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 22 May 2019 23:44:56 GMT
ENV NODE_VERSION=8.16.0
# Wed, 22 May 2019 23:45:30 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 22 May 2019 23:45:32 GMT
ENV YARN_VERSION=1.15.2
# Wed, 22 May 2019 23:45:37 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 22 May 2019 23:45:38 GMT
CMD ["node"]
# Thu, 23 May 2019 21:44:06 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 May 2019 21:44:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 23 May 2019 21:44:10 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:44:01 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:44:31 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:44:32 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:44:33 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:44:33 GMT
ENV GHOST_VERSION=1.25.8
# Mon, 03 Jun 2019 22:45:21 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 03 Jun 2019 22:45:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 03 Jun 2019 22:48:03 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 22:48:04 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:48:04 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:48:04 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Mon, 03 Jun 2019 22:48:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:48:05 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:48:05 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3921c095c25b350282d51bf3e3b484439b2134a3feee67a2f633ad6f9bc5295`  
		Last Modified: Thu, 23 May 2019 00:08:51 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7922ac4e2078aec40cd0b3a169ad3aa9cf5f8c955b542aba847506031467a909`  
		Last Modified: Thu, 23 May 2019 00:09:02 GMT  
		Size: 26.7 MB (26706509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9def03af8fb242c81f120506afdc9c08fdcf79b4633a7a9be31843bd0243edbd`  
		Last Modified: Thu, 23 May 2019 00:08:52 GMT  
		Size: 1.3 MB (1324806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2812fc18f1708e3672808ccc229d34fe1946bd0beab59b53bb5980af0f9a53`  
		Last Modified: Thu, 23 May 2019 21:49:16 GMT  
		Size: 468.9 KB (468942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95e1d389c8a6a4c04f7cae1f01281b554272fa60e688a8c04aeaf7c9afbbcc7`  
		Last Modified: Mon, 03 Jun 2019 22:49:37 GMT  
		Size: 13.7 MB (13728625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0da5322afa55e06d79845287fb1d7adeb09d97ee9600f40a937998fd884945`  
		Last Modified: Mon, 03 Jun 2019 22:50:03 GMT  
		Size: 96.5 MB (96513802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af2171832ea7fa6ae683957a5a736b03092a985863428e30a816f65c815806b`  
		Last Modified: Mon, 03 Jun 2019 22:49:40 GMT  
		Size: 30.0 MB (30027670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a73bdfdb1959a39e983fe093ba0516836fb17fe27f5976894f5e84596ecf013`  
		Last Modified: Mon, 03 Jun 2019 22:49:31 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; 386

```console
$ docker pull ghost@sha256:5403defe9378caae5beb71e6c8dee4d9466ebf40e842f5b1db7f63f3d06fcf33
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.8 MB (193769232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52a5d93de9939fc1efc3951e6055a67b77525bb02e98fe0fdfd74378aef0368d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 23:01:37 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 23:01:37 GMT
ENV NODE_VERSION=8.16.0
# Wed, 08 May 2019 23:02:03 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 23:02:03 GMT
ENV YARN_VERSION=1.15.2
# Wed, 08 May 2019 23:02:07 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 23:02:07 GMT
CMD ["node"]
# Thu, 09 May 2019 05:05:46 GMT
ENV GOSU_VERSION=1.10
# Thu, 09 May 2019 05:05:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 09 May 2019 05:05:50 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:44:50 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:45:09 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:45:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:45:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:45:10 GMT
ENV GHOST_VERSION=1.25.8
# Mon, 03 Jun 2019 22:45:49 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 03 Jun 2019 22:45:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 03 Jun 2019 22:47:27 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 22:47:28 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:47:28 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:47:28 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Mon, 03 Jun 2019 22:47:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:47:28 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:47:29 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b710f5be98e667f5cbf9d8d46caa2e09e11d7a119e5281e5b59e438f7383ea23`  
		Last Modified: Wed, 08 May 2019 23:34:58 GMT  
		Size: 4.1 KB (4133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97164f6906b97beae82cc6b966fa11128ea45d47ff23fa75dc3859d905ec2cbb`  
		Last Modified: Wed, 08 May 2019 23:35:05 GMT  
		Size: 27.9 MB (27862611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d742ea59aa34259f609b84a4306c87eeab4610cc6112b34d6c805f051ec520c`  
		Last Modified: Wed, 08 May 2019 23:34:58 GMT  
		Size: 1.3 MB (1324755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a37033ae6fedef9760ebd8c391f3920b78547240161e651096e98309e4afd6`  
		Last Modified: Thu, 09 May 2019 05:08:42 GMT  
		Size: 480.8 KB (480828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05a7e3ad6f15c8d0e5cb93238f34d81186d0f7457cce4b4bec10985d9bdb081`  
		Last Modified: Mon, 03 Jun 2019 22:48:36 GMT  
		Size: 13.7 MB (13723848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e0119a25ea1c14beab44f5ad63e0bd1fb6ac1780e1996dd563c64211657a1c`  
		Last Modified: Mon, 03 Jun 2019 22:48:57 GMT  
		Size: 96.5 MB (96475817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2626d64859e36de0970cb397df7828d8d44c541a89223a971b57d8bcad63e3ba`  
		Last Modified: Mon, 03 Jun 2019 22:48:38 GMT  
		Size: 30.8 MB (30775811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd12546f95d1c674c3b6d94335f453d7e80dcf4d7e9ef884b2c38c6d046e4d9`  
		Last Modified: Mon, 03 Jun 2019 22:48:30 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; ppc64le

```console
$ docker pull ghost@sha256:697b4846f8144288241a084301c4d11ba23b76432f93a1f4014d345a57e1155c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.7 MB (192732645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:171c4368fc213ced4e4d8b9b8e0ad74fd7db7fe7be33502a1bd672c6e51ef3c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Thu, 30 May 2019 19:19:31 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 30 May 2019 19:19:35 GMT
ENV NODE_VERSION=8.16.0
# Thu, 30 May 2019 19:21:38 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 30 May 2019 19:21:42 GMT
ENV YARN_VERSION=1.15.2
# Thu, 30 May 2019 19:21:59 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 30 May 2019 19:22:03 GMT
CMD ["node"]
# Thu, 30 May 2019 22:01:35 GMT
ENV GOSU_VERSION=1.10
# Thu, 30 May 2019 22:01:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 30 May 2019 22:01:49 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:34:55 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:35:29 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:35:33 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:35:36 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:35:39 GMT
ENV GHOST_VERSION=1.25.8
# Mon, 03 Jun 2019 22:39:03 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 03 Jun 2019 22:39:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 03 Jun 2019 22:43:36 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 22:43:41 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:43:44 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:43:45 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Mon, 03 Jun 2019 22:43:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:43:49 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:43:51 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1731a3590c4918a1aa9896862042f09bd0fa20af4e4580153724b905038152dc`  
		Last Modified: Thu, 30 May 2019 20:20:57 GMT  
		Size: 4.2 KB (4179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dda530acc571b69d9fadf5c48fb67e00781aa633dc66841ce256318d1dc77ed`  
		Last Modified: Thu, 30 May 2019 20:21:31 GMT  
		Size: 27.0 MB (26980007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a16b00c4baecb17fa3272863fbf33567cb7e5e4e3a6bb15e25bea6faddc4640`  
		Last Modified: Thu, 30 May 2019 20:20:57 GMT  
		Size: 1.3 MB (1324809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db793db3d3a186378dc454304db8ec669b23647828a439b2f0d9589c4d71441`  
		Last Modified: Thu, 30 May 2019 22:22:01 GMT  
		Size: 470.1 KB (470077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3b32eda4497e2312c74f6ee55a5b08d4dbafc942e955e889b9cce4737ca718`  
		Last Modified: Mon, 03 Jun 2019 22:56:38 GMT  
		Size: 13.7 MB (13723589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea5c62820e31df84adc36e9e5f2f16580515350625c8b28c2f5a16903f4b9ab`  
		Last Modified: Mon, 03 Jun 2019 22:58:09 GMT  
		Size: 96.5 MB (96513936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227a0b2a3e4235512f2ce745d2bf72bd83c7e905d88b4e5666affb8bd2470cde`  
		Last Modified: Mon, 03 Jun 2019 22:56:28 GMT  
		Size: 31.0 MB (30970543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1847ddc995ad42d34b7b933d36510c7289f199adda27c4c1ce128a278cb85905`  
		Last Modified: Mon, 03 Jun 2019 22:56:10 GMT  
		Size: 591.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; s390x

```console
$ docker pull ghost@sha256:ffd0e4306d80a759e6c7d04a58cd6ab9644b1992df77d98a4307d75417a97e5a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.2 MB (193177754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6703582a855aaa7e489f0709923668c229114bb3bbd6c5261dfb5ccaa73afabc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:12:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 14:12:19 GMT
ENV NODE_VERSION=8.16.0
# Wed, 08 May 2019 14:13:16 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 14:13:17 GMT
ENV YARN_VERSION=1.15.2
# Wed, 08 May 2019 14:13:24 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 14:13:24 GMT
CMD ["node"]
# Thu, 09 May 2019 03:04:55 GMT
ENV GOSU_VERSION=1.10
# Thu, 09 May 2019 03:05:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 09 May 2019 03:05:07 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:44:48 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:45:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:45:07 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:45:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:45:07 GMT
ENV GHOST_VERSION=1.25.8
# Mon, 03 Jun 2019 22:45:32 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 03 Jun 2019 22:45:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 03 Jun 2019 22:47:00 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 22:47:00 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:47:00 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:47:01 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Mon, 03 Jun 2019 22:47:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:47:01 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:47:02 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d77ccdc5044aabea621dcafff2d8f0ce8fd083c951109df82537c78478a8abc`  
		Last Modified: Wed, 08 May 2019 14:27:47 GMT  
		Size: 4.2 KB (4158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b80ca2d530fc066d0271e796fe6cc6c06c9ae161d613c95015267822d1f3863`  
		Last Modified: Wed, 08 May 2019 14:28:02 GMT  
		Size: 27.9 MB (27867144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1e3a463d9f9c0c68561c118954214ce206c9b8fc55ba7aedeb81ad8b897ecc`  
		Last Modified: Wed, 08 May 2019 14:27:48 GMT  
		Size: 1.3 MB (1324757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59aeb2fa892fcd7a772da442d3ce259fff012421acca2317af6f89f15ed5110c`  
		Last Modified: Thu, 09 May 2019 03:16:15 GMT  
		Size: 487.0 KB (487039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ff6a115d56f155ed961bbe645153404395710dd80bd182244385c91940e7f02`  
		Last Modified: Mon, 03 Jun 2019 22:48:14 GMT  
		Size: 13.7 MB (13722628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf32033c6e2d09adfca7d2647fbd7f38734e593bd682e073f16d7ab2131fc17`  
		Last Modified: Mon, 03 Jun 2019 22:48:29 GMT  
		Size: 96.5 MB (96513628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c0e9e5c7a74f053930efd9e7c2c6d020bfca450efd07635858e4489fa5c721`  
		Last Modified: Mon, 03 Jun 2019 22:48:17 GMT  
		Size: 30.9 MB (30918945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6974b372cbbe22d65fae9125f3788318f8ed07046f703817139f377cb0281622`  
		Last Modified: Mon, 03 Jun 2019 22:48:11 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25.8`

```console
$ docker pull ghost@sha256:1fa339dbc0fcc38ad180f1f32fd91354792d959c38663aba8c78d7c50dc2c76c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:1.25.8` - linux; amd64

```console
$ docker pull ghost@sha256:aec1aeb91027f4d71c47096ac3d612419eaccff495c10ef60fde96ad08c39c7d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.5 MB (183452264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de3b271783c9a210a968e1137e9b47df9191fb92c7ea2536bbcc2ea9b15207bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:14:42 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 02:14:42 GMT
ENV NODE_VERSION=8.16.0
# Wed, 08 May 2019 02:14:57 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 02:14:57 GMT
ENV YARN_VERSION=1.15.2
# Wed, 08 May 2019 02:15:01 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 02:15:01 GMT
CMD ["node"]
# Wed, 08 May 2019 08:52:41 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 08:52:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 08 May 2019 08:52:45 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:23:08 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:23:28 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:23:29 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:23:29 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:23:29 GMT
ENV GHOST_VERSION=1.25.8
# Mon, 03 Jun 2019 22:24:04 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 03 Jun 2019 22:24:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 03 Jun 2019 22:24:14 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 22:24:14 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:24:14 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:24:14 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Mon, 03 Jun 2019 22:24:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:24:15 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:24:15 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89252b028f01ddb83169c019a9b0699d670133cd36bd332ed455fe90a8ea4483`  
		Last Modified: Wed, 08 May 2019 02:25:36 GMT  
		Size: 4.1 KB (4146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf13dafce3316c043c005ef6b47e44531a62d6f1d563cb586304e268b4e3e6d0`  
		Last Modified: Wed, 08 May 2019 02:25:45 GMT  
		Size: 28.0 MB (28031800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57153fe3234bf9f0026483507ad0c4194e91abfb73d32a26fd9e619326f53832`  
		Last Modified: Wed, 08 May 2019 02:25:37 GMT  
		Size: 1.3 MB (1324743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:962c9b06681fb3adb4ba56d677debc3823b42068e9e61a975a5af50977b0fddf`  
		Last Modified: Wed, 08 May 2019 08:55:19 GMT  
		Size: 500.9 KB (500920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a939c086bc9644b26bfbc1d364f59a3fd0926f515154ed4eb4fca57497d97ed`  
		Last Modified: Mon, 03 Jun 2019 22:27:28 GMT  
		Size: 13.7 MB (13724599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a53e63862ee945ed777830c280c1960264ba8deee1f37e8227818efe8863c85`  
		Last Modified: Mon, 03 Jun 2019 22:27:49 GMT  
		Size: 104.2 MB (104211361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6318e6285b73e4c0d95673f79b2159738ceb82b2c300c70e6c1e19f4a6d9fe7`  
		Last Modified: Mon, 03 Jun 2019 22:27:21 GMT  
		Size: 13.2 MB (13164756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bfbb3a056b917104115f8bd2e35047695b05c2568f04acdd3dbc9bb7f3d97a2`  
		Last Modified: Mon, 03 Jun 2019 22:27:19 GMT  
		Size: 589.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.8` - linux; arm variant v7

```console
$ docker pull ghost@sha256:e715bda3fcfb3b1a798cce47fd29bc0a6f7a9e42971d0f84dc40eecccb0c3c18
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186171271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:902b6fd1920da2f7219d1b87370a7def87e69d01774546ed92dfa96875cee075`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 15:13:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 15:13:21 GMT
ENV NODE_VERSION=8.16.0
# Wed, 08 May 2019 15:14:27 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 15:14:28 GMT
ENV YARN_VERSION=1.15.2
# Wed, 08 May 2019 15:14:38 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 15:14:39 GMT
CMD ["node"]
# Wed, 08 May 2019 18:28:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 18:28:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 08 May 2019 18:28:40 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 23:02:17 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 23:02:59 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 23:03:01 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 23:03:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 23:03:02 GMT
ENV GHOST_VERSION=1.25.8
# Mon, 03 Jun 2019 23:04:30 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 03 Jun 2019 23:04:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 03 Jun 2019 23:07:53 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 23:07:53 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 23:07:54 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 23:07:54 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Mon, 03 Jun 2019 23:07:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 23:07:55 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 23:07:56 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626773d003732b6357a355496b3568eb47daf3e804053223f39baae73cacf817`  
		Last Modified: Wed, 08 May 2019 15:26:06 GMT  
		Size: 4.2 KB (4159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f30da4c64397c8b1046d5caa940c54106c783a2232a4a7bb5fef93f2e9f34d`  
		Last Modified: Wed, 08 May 2019 15:26:15 GMT  
		Size: 25.5 MB (25480434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0212245cc078a3b06b22f0baffb8e1b2b9e38df5727dc0265ecb3a83e1af8b9b`  
		Last Modified: Wed, 08 May 2019 15:26:10 GMT  
		Size: 1.3 MB (1324822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fda0a8a945b9d3703f19e2f20208bd39cc3120fc46c62fee48a859fe9d2c47`  
		Last Modified: Wed, 08 May 2019 18:35:11 GMT  
		Size: 475.4 KB (475436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ad4c30aebc04e012df0bf85f3a037c56555e36931f4ad8f6ef03bf1db6e698`  
		Last Modified: Mon, 03 Jun 2019 23:09:19 GMT  
		Size: 13.7 MB (13730964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f01aa71a1addd5d65c76c014344b52aa2a7ab7fafb1e480afea7974d182c7ab9`  
		Last Modified: Mon, 03 Jun 2019 23:09:52 GMT  
		Size: 96.5 MB (96476809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db15ece0ee4be693a7579f32f4e0abac1276b0ce4f0e64e99d6f2e4ecd9481b`  
		Last Modified: Mon, 03 Jun 2019 23:09:22 GMT  
		Size: 29.4 MB (29401842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea33e5ecb90b10efdc7257db5528cda18795856ae2ccd5089b2827011ba46b4`  
		Last Modified: Mon, 03 Jun 2019 23:09:13 GMT  
		Size: 589.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.8` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:5ea19d9926a0685cc1f8cc6f2bfe23e65a23b3bc9f435557ddfd39d17d4d0fff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.1 MB (189108937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3a7fac2a488e4a7b0268e2d74af53dc7b42b89988414d9d2b664e32dcf03661`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 22 May 2019 23:44:56 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 22 May 2019 23:44:56 GMT
ENV NODE_VERSION=8.16.0
# Wed, 22 May 2019 23:45:30 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 22 May 2019 23:45:32 GMT
ENV YARN_VERSION=1.15.2
# Wed, 22 May 2019 23:45:37 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 22 May 2019 23:45:38 GMT
CMD ["node"]
# Thu, 23 May 2019 21:44:06 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 May 2019 21:44:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 23 May 2019 21:44:10 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:44:01 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:44:31 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:44:32 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:44:33 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:44:33 GMT
ENV GHOST_VERSION=1.25.8
# Mon, 03 Jun 2019 22:45:21 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 03 Jun 2019 22:45:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 03 Jun 2019 22:48:03 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 22:48:04 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:48:04 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:48:04 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Mon, 03 Jun 2019 22:48:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:48:05 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:48:05 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3921c095c25b350282d51bf3e3b484439b2134a3feee67a2f633ad6f9bc5295`  
		Last Modified: Thu, 23 May 2019 00:08:51 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7922ac4e2078aec40cd0b3a169ad3aa9cf5f8c955b542aba847506031467a909`  
		Last Modified: Thu, 23 May 2019 00:09:02 GMT  
		Size: 26.7 MB (26706509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9def03af8fb242c81f120506afdc9c08fdcf79b4633a7a9be31843bd0243edbd`  
		Last Modified: Thu, 23 May 2019 00:08:52 GMT  
		Size: 1.3 MB (1324806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2812fc18f1708e3672808ccc229d34fe1946bd0beab59b53bb5980af0f9a53`  
		Last Modified: Thu, 23 May 2019 21:49:16 GMT  
		Size: 468.9 KB (468942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95e1d389c8a6a4c04f7cae1f01281b554272fa60e688a8c04aeaf7c9afbbcc7`  
		Last Modified: Mon, 03 Jun 2019 22:49:37 GMT  
		Size: 13.7 MB (13728625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0da5322afa55e06d79845287fb1d7adeb09d97ee9600f40a937998fd884945`  
		Last Modified: Mon, 03 Jun 2019 22:50:03 GMT  
		Size: 96.5 MB (96513802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af2171832ea7fa6ae683957a5a736b03092a985863428e30a816f65c815806b`  
		Last Modified: Mon, 03 Jun 2019 22:49:40 GMT  
		Size: 30.0 MB (30027670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a73bdfdb1959a39e983fe093ba0516836fb17fe27f5976894f5e84596ecf013`  
		Last Modified: Mon, 03 Jun 2019 22:49:31 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.8` - linux; 386

```console
$ docker pull ghost@sha256:5403defe9378caae5beb71e6c8dee4d9466ebf40e842f5b1db7f63f3d06fcf33
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.8 MB (193769232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52a5d93de9939fc1efc3951e6055a67b77525bb02e98fe0fdfd74378aef0368d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 23:01:37 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 23:01:37 GMT
ENV NODE_VERSION=8.16.0
# Wed, 08 May 2019 23:02:03 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 23:02:03 GMT
ENV YARN_VERSION=1.15.2
# Wed, 08 May 2019 23:02:07 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 23:02:07 GMT
CMD ["node"]
# Thu, 09 May 2019 05:05:46 GMT
ENV GOSU_VERSION=1.10
# Thu, 09 May 2019 05:05:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 09 May 2019 05:05:50 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:44:50 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:45:09 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:45:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:45:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:45:10 GMT
ENV GHOST_VERSION=1.25.8
# Mon, 03 Jun 2019 22:45:49 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 03 Jun 2019 22:45:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 03 Jun 2019 22:47:27 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 22:47:28 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:47:28 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:47:28 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Mon, 03 Jun 2019 22:47:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:47:28 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:47:29 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b710f5be98e667f5cbf9d8d46caa2e09e11d7a119e5281e5b59e438f7383ea23`  
		Last Modified: Wed, 08 May 2019 23:34:58 GMT  
		Size: 4.1 KB (4133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97164f6906b97beae82cc6b966fa11128ea45d47ff23fa75dc3859d905ec2cbb`  
		Last Modified: Wed, 08 May 2019 23:35:05 GMT  
		Size: 27.9 MB (27862611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d742ea59aa34259f609b84a4306c87eeab4610cc6112b34d6c805f051ec520c`  
		Last Modified: Wed, 08 May 2019 23:34:58 GMT  
		Size: 1.3 MB (1324755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a37033ae6fedef9760ebd8c391f3920b78547240161e651096e98309e4afd6`  
		Last Modified: Thu, 09 May 2019 05:08:42 GMT  
		Size: 480.8 KB (480828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05a7e3ad6f15c8d0e5cb93238f34d81186d0f7457cce4b4bec10985d9bdb081`  
		Last Modified: Mon, 03 Jun 2019 22:48:36 GMT  
		Size: 13.7 MB (13723848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e0119a25ea1c14beab44f5ad63e0bd1fb6ac1780e1996dd563c64211657a1c`  
		Last Modified: Mon, 03 Jun 2019 22:48:57 GMT  
		Size: 96.5 MB (96475817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2626d64859e36de0970cb397df7828d8d44c541a89223a971b57d8bcad63e3ba`  
		Last Modified: Mon, 03 Jun 2019 22:48:38 GMT  
		Size: 30.8 MB (30775811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd12546f95d1c674c3b6d94335f453d7e80dcf4d7e9ef884b2c38c6d046e4d9`  
		Last Modified: Mon, 03 Jun 2019 22:48:30 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.8` - linux; ppc64le

```console
$ docker pull ghost@sha256:697b4846f8144288241a084301c4d11ba23b76432f93a1f4014d345a57e1155c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.7 MB (192732645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:171c4368fc213ced4e4d8b9b8e0ad74fd7db7fe7be33502a1bd672c6e51ef3c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Thu, 30 May 2019 19:19:31 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 30 May 2019 19:19:35 GMT
ENV NODE_VERSION=8.16.0
# Thu, 30 May 2019 19:21:38 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 30 May 2019 19:21:42 GMT
ENV YARN_VERSION=1.15.2
# Thu, 30 May 2019 19:21:59 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 30 May 2019 19:22:03 GMT
CMD ["node"]
# Thu, 30 May 2019 22:01:35 GMT
ENV GOSU_VERSION=1.10
# Thu, 30 May 2019 22:01:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 30 May 2019 22:01:49 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:34:55 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:35:29 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:35:33 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:35:36 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:35:39 GMT
ENV GHOST_VERSION=1.25.8
# Mon, 03 Jun 2019 22:39:03 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 03 Jun 2019 22:39:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 03 Jun 2019 22:43:36 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 22:43:41 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:43:44 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:43:45 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Mon, 03 Jun 2019 22:43:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:43:49 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:43:51 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1731a3590c4918a1aa9896862042f09bd0fa20af4e4580153724b905038152dc`  
		Last Modified: Thu, 30 May 2019 20:20:57 GMT  
		Size: 4.2 KB (4179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dda530acc571b69d9fadf5c48fb67e00781aa633dc66841ce256318d1dc77ed`  
		Last Modified: Thu, 30 May 2019 20:21:31 GMT  
		Size: 27.0 MB (26980007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a16b00c4baecb17fa3272863fbf33567cb7e5e4e3a6bb15e25bea6faddc4640`  
		Last Modified: Thu, 30 May 2019 20:20:57 GMT  
		Size: 1.3 MB (1324809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db793db3d3a186378dc454304db8ec669b23647828a439b2f0d9589c4d71441`  
		Last Modified: Thu, 30 May 2019 22:22:01 GMT  
		Size: 470.1 KB (470077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3b32eda4497e2312c74f6ee55a5b08d4dbafc942e955e889b9cce4737ca718`  
		Last Modified: Mon, 03 Jun 2019 22:56:38 GMT  
		Size: 13.7 MB (13723589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea5c62820e31df84adc36e9e5f2f16580515350625c8b28c2f5a16903f4b9ab`  
		Last Modified: Mon, 03 Jun 2019 22:58:09 GMT  
		Size: 96.5 MB (96513936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227a0b2a3e4235512f2ce745d2bf72bd83c7e905d88b4e5666affb8bd2470cde`  
		Last Modified: Mon, 03 Jun 2019 22:56:28 GMT  
		Size: 31.0 MB (30970543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1847ddc995ad42d34b7b933d36510c7289f199adda27c4c1ce128a278cb85905`  
		Last Modified: Mon, 03 Jun 2019 22:56:10 GMT  
		Size: 591.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.8` - linux; s390x

```console
$ docker pull ghost@sha256:ffd0e4306d80a759e6c7d04a58cd6ab9644b1992df77d98a4307d75417a97e5a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.2 MB (193177754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6703582a855aaa7e489f0709923668c229114bb3bbd6c5261dfb5ccaa73afabc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:12:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 14:12:19 GMT
ENV NODE_VERSION=8.16.0
# Wed, 08 May 2019 14:13:16 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 14:13:17 GMT
ENV YARN_VERSION=1.15.2
# Wed, 08 May 2019 14:13:24 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 14:13:24 GMT
CMD ["node"]
# Thu, 09 May 2019 03:04:55 GMT
ENV GOSU_VERSION=1.10
# Thu, 09 May 2019 03:05:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 09 May 2019 03:05:07 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:44:48 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:45:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:45:07 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:45:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:45:07 GMT
ENV GHOST_VERSION=1.25.8
# Mon, 03 Jun 2019 22:45:32 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 03 Jun 2019 22:45:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 03 Jun 2019 22:47:00 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 22:47:00 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:47:00 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:47:01 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Mon, 03 Jun 2019 22:47:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:47:01 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:47:02 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d77ccdc5044aabea621dcafff2d8f0ce8fd083c951109df82537c78478a8abc`  
		Last Modified: Wed, 08 May 2019 14:27:47 GMT  
		Size: 4.2 KB (4158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b80ca2d530fc066d0271e796fe6cc6c06c9ae161d613c95015267822d1f3863`  
		Last Modified: Wed, 08 May 2019 14:28:02 GMT  
		Size: 27.9 MB (27867144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1e3a463d9f9c0c68561c118954214ce206c9b8fc55ba7aedeb81ad8b897ecc`  
		Last Modified: Wed, 08 May 2019 14:27:48 GMT  
		Size: 1.3 MB (1324757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59aeb2fa892fcd7a772da442d3ce259fff012421acca2317af6f89f15ed5110c`  
		Last Modified: Thu, 09 May 2019 03:16:15 GMT  
		Size: 487.0 KB (487039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ff6a115d56f155ed961bbe645153404395710dd80bd182244385c91940e7f02`  
		Last Modified: Mon, 03 Jun 2019 22:48:14 GMT  
		Size: 13.7 MB (13722628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf32033c6e2d09adfca7d2647fbd7f38734e593bd682e073f16d7ab2131fc17`  
		Last Modified: Mon, 03 Jun 2019 22:48:29 GMT  
		Size: 96.5 MB (96513628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c0e9e5c7a74f053930efd9e7c2c6d020bfca450efd07635858e4489fa5c721`  
		Last Modified: Mon, 03 Jun 2019 22:48:17 GMT  
		Size: 30.9 MB (30918945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6974b372cbbe22d65fae9125f3788318f8ed07046f703817139f377cb0281622`  
		Last Modified: Mon, 03 Jun 2019 22:48:11 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25.8-alpine`

```console
$ docker pull ghost@sha256:358624f1b945d30e1081716660964ee1a9752b30bfc5c62db65f1fa0cd098485
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1.25.8-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:94cf775008e3132b25a839baa44551cfb37c4a43f59f3107f560704aa4ce00b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.0 MB (155029473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4ba43b44b7bf482b0b642ff80fe5cbf687022b7d7d278dbfcaba0aa650bd11c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:39:31 GMT
ENV NODE_VERSION=8.16.0
# Sat, 11 May 2019 01:11:04 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 11 May 2019 01:11:04 GMT
ENV YARN_VERSION=1.15.2
# Sat, 11 May 2019 01:11:08 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 11 May 2019 01:11:08 GMT
CMD ["node"]
# Sat, 11 May 2019 04:40:50 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 11 May 2019 04:40:51 GMT
RUN apk add --no-cache 		bash
# Sat, 11 May 2019 04:40:52 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:24:22 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:24:40 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:24:40 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:24:41 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:24:41 GMT
ENV GHOST_VERSION=1.25.8
# Mon, 03 Jun 2019 22:25:14 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 03 Jun 2019 22:25:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 03 Jun 2019 22:25:24 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Mon, 03 Jun 2019 22:25:24 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:25:24 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:25:24 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Mon, 03 Jun 2019 22:25:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:25:25 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:25:25 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5ce4d3d5f2dae5a3f1663d45e638dad850b198c76d45b5452679100cf82b91`  
		Last Modified: Sat, 11 May 2019 03:02:33 GMT  
		Size: 18.7 MB (18650809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac289eff61bcc2fd3bc312f745ef63b2de3347c8f56c33e94dba743116ad2cd7`  
		Last Modified: Sat, 11 May 2019 03:02:26 GMT  
		Size: 1.3 MB (1333844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7dc42665629ab3f94a4ddca44270195fd7b9f5a11057d6707ee254c79214e6`  
		Last Modified: Sat, 11 May 2019 04:42:42 GMT  
		Size: 9.7 KB (9674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6606f3831a662defa5fcecd62299e68535a05296708a9a0e4bd2846951029ef4`  
		Last Modified: Sat, 11 May 2019 04:42:41 GMT  
		Size: 1.2 MB (1176773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9b1586a03d6900eb00105681a6f5aff566187ee65417a106a86a5ecf660f33`  
		Last Modified: Mon, 03 Jun 2019 22:28:01 GMT  
		Size: 13.7 MB (13723203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1198cb501dbd22a115cc0ea59c2bc59798651b01d08799be5a121a1b2d55a230`  
		Last Modified: Mon, 03 Jun 2019 22:28:31 GMT  
		Size: 104.2 MB (104212641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c5c6aea8c82c4b305935243f3622964d4dc7c4483f9f8b8e8bea291adc1ed8`  
		Last Modified: Mon, 03 Jun 2019 22:27:56 GMT  
		Size: 13.2 MB (13164918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bd8ebc993ab1abec2d55d3b8d7e3139f56bf24384d06527126f9db37d58aa7`  
		Last Modified: Mon, 03 Jun 2019 22:27:54 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.8-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:a2998f3cd36545140a014a7aa1bf1af2bdda8984c043eab36af4508b57807b73
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (163035597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60c6c4c2e2ef1dcb0d172da53ff08bf4dee0ff3dc7661d8bffc4488d2dd689a6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:33:31 GMT
ENV NODE_VERSION=8.16.0
# Sat, 11 May 2019 08:37:23 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 11 May 2019 08:37:24 GMT
ENV YARN_VERSION=1.15.2
# Sat, 11 May 2019 08:37:28 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 11 May 2019 08:37:28 GMT
CMD ["node"]
# Sat, 11 May 2019 10:42:36 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 11 May 2019 10:42:38 GMT
RUN apk add --no-cache 		bash
# Sat, 11 May 2019 10:42:39 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:55:08 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:55:47 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:55:49 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:55:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:55:49 GMT
ENV GHOST_VERSION=1.25.8
# Mon, 03 Jun 2019 22:57:18 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 03 Jun 2019 22:57:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 03 Jun 2019 23:00:52 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Mon, 03 Jun 2019 23:00:53 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 23:00:54 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 23:00:54 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Mon, 03 Jun 2019 23:00:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 23:00:55 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 23:00:56 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d667d91510525193825e9220ddd7c06e6483280eb3285270de16ad56d7f9805`  
		Last Modified: Sat, 11 May 2019 08:57:18 GMT  
		Size: 17.7 MB (17657049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db02dfc9fecb68b303a633dbdbddf3e9faa632b31c44e24a1d589b479478fe7`  
		Last Modified: Sat, 11 May 2019 08:57:11 GMT  
		Size: 1.3 MB (1333894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc91f95c0c04559ef6afb6f6e7dd9562afde9d521302fb450409607bb2e7ffbc`  
		Last Modified: Sat, 11 May 2019 10:49:36 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a229afaa11352c133c311f0d37a3b4b6e6c6a47a6593dc1fecc243dab6f3d85`  
		Last Modified: Sat, 11 May 2019 10:49:36 GMT  
		Size: 1.1 MB (1121973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec1927cf1d9525d53f05f995919e061ceff89f961d8ed461ce4286e48ce6db0`  
		Last Modified: Mon, 03 Jun 2019 23:02:24 GMT  
		Size: 13.7 MB (13729368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375ed31a7a7d81fdd1c07f2d0de3d694d32f2b9de389a4c8067575843f7eebab`  
		Last Modified: Mon, 03 Jun 2019 23:02:54 GMT  
		Size: 96.5 MB (96477387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5eaf9d1dccdfe17abb72448bfa9b9bc9680c191d65c289516bfe1283e0f33c`  
		Last Modified: Mon, 03 Jun 2019 23:02:27 GMT  
		Size: 30.2 MB (30162439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288f282bf871cf710d5a98eb10b45dcd2b751cf9b7017a51aae54ff72405fc2f`  
		Last Modified: Mon, 03 Jun 2019 23:02:18 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.8-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:90bd4d1dd20f3f091f88adf7b4fea4eed6e5c0d54b49187e17c6f0e785b712bd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.1 MB (168080043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3609ec069466fe2041029d1ed9c50850adfa1dfc304b9023d974531f9db2d18`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 19:06:56 GMT
ENV NODE_VERSION=8.16.0
# Thu, 30 May 2019 19:18:18 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 30 May 2019 19:18:22 GMT
ENV YARN_VERSION=1.15.2
# Thu, 30 May 2019 19:18:31 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 30 May 2019 19:18:33 GMT
CMD ["node"]
# Thu, 30 May 2019 22:10:07 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 30 May 2019 22:10:15 GMT
RUN apk add --no-cache 		bash
# Thu, 30 May 2019 22:10:19 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:44:08 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:44:49 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:44:55 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:44:57 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:44:59 GMT
ENV GHOST_VERSION=1.25.8
# Mon, 03 Jun 2019 22:47:25 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 03 Jun 2019 22:47:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 03 Jun 2019 22:50:18 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Mon, 03 Jun 2019 22:50:22 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:50:24 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:50:25 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Mon, 03 Jun 2019 22:50:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:50:29 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:50:33 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a362280d05b7cc72e32d7216b4ab31ef645c94ed93cc2e0af6e7163f072249d4`  
		Last Modified: Thu, 30 May 2019 20:19:45 GMT  
		Size: 20.1 MB (20132690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbcf853ef71beeb35e52b6e08b4def2bdd301670bea355654602ba9a17d5b087`  
		Last Modified: Thu, 30 May 2019 20:19:22 GMT  
		Size: 1.3 MB (1333890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e289362314354b71a4b065c74e7da12473ca68a8b82e70409988cf00e8b89e`  
		Last Modified: Thu, 30 May 2019 22:24:09 GMT  
		Size: 10.2 KB (10237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:208e09417951809a6f9b383982a3bb1f0f2db73bb81e19d514d45691a40ce956`  
		Last Modified: Thu, 30 May 2019 22:24:09 GMT  
		Size: 1.3 MB (1257919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e64ebb96f224e4aecbdc56aaa15057db6d7c5bba77fd78a681e83ec64b5792`  
		Last Modified: Mon, 03 Jun 2019 22:58:50 GMT  
		Size: 13.7 MB (13723891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6481ed21bbc6b5b7f7713443cbb353cf16483e05e5ab3e2ee97583890cacc2f`  
		Last Modified: Mon, 03 Jun 2019 23:00:52 GMT  
		Size: 96.5 MB (96513190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9bd8be026bd3dcc4c13cf1b92742d70481f01ea4f19d4c3011cb60744c3de8`  
		Last Modified: Mon, 03 Jun 2019 22:58:38 GMT  
		Size: 32.3 MB (32326629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab42c9d2b7c3e8a75a6c8f94035e2204bc63b23538567248dc49809d698fe4b1`  
		Last Modified: Mon, 03 Jun 2019 22:58:25 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25-alpine`

```console
$ docker pull ghost@sha256:358624f1b945d30e1081716660964ee1a9752b30bfc5c62db65f1fa0cd098485
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1.25-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:94cf775008e3132b25a839baa44551cfb37c4a43f59f3107f560704aa4ce00b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.0 MB (155029473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4ba43b44b7bf482b0b642ff80fe5cbf687022b7d7d278dbfcaba0aa650bd11c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:39:31 GMT
ENV NODE_VERSION=8.16.0
# Sat, 11 May 2019 01:11:04 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 11 May 2019 01:11:04 GMT
ENV YARN_VERSION=1.15.2
# Sat, 11 May 2019 01:11:08 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 11 May 2019 01:11:08 GMT
CMD ["node"]
# Sat, 11 May 2019 04:40:50 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 11 May 2019 04:40:51 GMT
RUN apk add --no-cache 		bash
# Sat, 11 May 2019 04:40:52 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:24:22 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:24:40 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:24:40 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:24:41 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:24:41 GMT
ENV GHOST_VERSION=1.25.8
# Mon, 03 Jun 2019 22:25:14 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 03 Jun 2019 22:25:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 03 Jun 2019 22:25:24 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Mon, 03 Jun 2019 22:25:24 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:25:24 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:25:24 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Mon, 03 Jun 2019 22:25:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:25:25 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:25:25 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5ce4d3d5f2dae5a3f1663d45e638dad850b198c76d45b5452679100cf82b91`  
		Last Modified: Sat, 11 May 2019 03:02:33 GMT  
		Size: 18.7 MB (18650809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac289eff61bcc2fd3bc312f745ef63b2de3347c8f56c33e94dba743116ad2cd7`  
		Last Modified: Sat, 11 May 2019 03:02:26 GMT  
		Size: 1.3 MB (1333844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7dc42665629ab3f94a4ddca44270195fd7b9f5a11057d6707ee254c79214e6`  
		Last Modified: Sat, 11 May 2019 04:42:42 GMT  
		Size: 9.7 KB (9674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6606f3831a662defa5fcecd62299e68535a05296708a9a0e4bd2846951029ef4`  
		Last Modified: Sat, 11 May 2019 04:42:41 GMT  
		Size: 1.2 MB (1176773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9b1586a03d6900eb00105681a6f5aff566187ee65417a106a86a5ecf660f33`  
		Last Modified: Mon, 03 Jun 2019 22:28:01 GMT  
		Size: 13.7 MB (13723203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1198cb501dbd22a115cc0ea59c2bc59798651b01d08799be5a121a1b2d55a230`  
		Last Modified: Mon, 03 Jun 2019 22:28:31 GMT  
		Size: 104.2 MB (104212641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c5c6aea8c82c4b305935243f3622964d4dc7c4483f9f8b8e8bea291adc1ed8`  
		Last Modified: Mon, 03 Jun 2019 22:27:56 GMT  
		Size: 13.2 MB (13164918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bd8ebc993ab1abec2d55d3b8d7e3139f56bf24384d06527126f9db37d58aa7`  
		Last Modified: Mon, 03 Jun 2019 22:27:54 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:a2998f3cd36545140a014a7aa1bf1af2bdda8984c043eab36af4508b57807b73
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (163035597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60c6c4c2e2ef1dcb0d172da53ff08bf4dee0ff3dc7661d8bffc4488d2dd689a6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:33:31 GMT
ENV NODE_VERSION=8.16.0
# Sat, 11 May 2019 08:37:23 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 11 May 2019 08:37:24 GMT
ENV YARN_VERSION=1.15.2
# Sat, 11 May 2019 08:37:28 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 11 May 2019 08:37:28 GMT
CMD ["node"]
# Sat, 11 May 2019 10:42:36 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 11 May 2019 10:42:38 GMT
RUN apk add --no-cache 		bash
# Sat, 11 May 2019 10:42:39 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:55:08 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:55:47 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:55:49 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:55:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:55:49 GMT
ENV GHOST_VERSION=1.25.8
# Mon, 03 Jun 2019 22:57:18 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 03 Jun 2019 22:57:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 03 Jun 2019 23:00:52 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Mon, 03 Jun 2019 23:00:53 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 23:00:54 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 23:00:54 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Mon, 03 Jun 2019 23:00:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 23:00:55 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 23:00:56 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d667d91510525193825e9220ddd7c06e6483280eb3285270de16ad56d7f9805`  
		Last Modified: Sat, 11 May 2019 08:57:18 GMT  
		Size: 17.7 MB (17657049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db02dfc9fecb68b303a633dbdbddf3e9faa632b31c44e24a1d589b479478fe7`  
		Last Modified: Sat, 11 May 2019 08:57:11 GMT  
		Size: 1.3 MB (1333894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc91f95c0c04559ef6afb6f6e7dd9562afde9d521302fb450409607bb2e7ffbc`  
		Last Modified: Sat, 11 May 2019 10:49:36 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a229afaa11352c133c311f0d37a3b4b6e6c6a47a6593dc1fecc243dab6f3d85`  
		Last Modified: Sat, 11 May 2019 10:49:36 GMT  
		Size: 1.1 MB (1121973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec1927cf1d9525d53f05f995919e061ceff89f961d8ed461ce4286e48ce6db0`  
		Last Modified: Mon, 03 Jun 2019 23:02:24 GMT  
		Size: 13.7 MB (13729368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375ed31a7a7d81fdd1c07f2d0de3d694d32f2b9de389a4c8067575843f7eebab`  
		Last Modified: Mon, 03 Jun 2019 23:02:54 GMT  
		Size: 96.5 MB (96477387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5eaf9d1dccdfe17abb72448bfa9b9bc9680c191d65c289516bfe1283e0f33c`  
		Last Modified: Mon, 03 Jun 2019 23:02:27 GMT  
		Size: 30.2 MB (30162439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288f282bf871cf710d5a98eb10b45dcd2b751cf9b7017a51aae54ff72405fc2f`  
		Last Modified: Mon, 03 Jun 2019 23:02:18 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:90bd4d1dd20f3f091f88adf7b4fea4eed6e5c0d54b49187e17c6f0e785b712bd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.1 MB (168080043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3609ec069466fe2041029d1ed9c50850adfa1dfc304b9023d974531f9db2d18`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 19:06:56 GMT
ENV NODE_VERSION=8.16.0
# Thu, 30 May 2019 19:18:18 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 30 May 2019 19:18:22 GMT
ENV YARN_VERSION=1.15.2
# Thu, 30 May 2019 19:18:31 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 30 May 2019 19:18:33 GMT
CMD ["node"]
# Thu, 30 May 2019 22:10:07 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 30 May 2019 22:10:15 GMT
RUN apk add --no-cache 		bash
# Thu, 30 May 2019 22:10:19 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:44:08 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:44:49 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:44:55 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:44:57 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:44:59 GMT
ENV GHOST_VERSION=1.25.8
# Mon, 03 Jun 2019 22:47:25 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 03 Jun 2019 22:47:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 03 Jun 2019 22:50:18 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Mon, 03 Jun 2019 22:50:22 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:50:24 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:50:25 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Mon, 03 Jun 2019 22:50:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:50:29 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:50:33 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a362280d05b7cc72e32d7216b4ab31ef645c94ed93cc2e0af6e7163f072249d4`  
		Last Modified: Thu, 30 May 2019 20:19:45 GMT  
		Size: 20.1 MB (20132690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbcf853ef71beeb35e52b6e08b4def2bdd301670bea355654602ba9a17d5b087`  
		Last Modified: Thu, 30 May 2019 20:19:22 GMT  
		Size: 1.3 MB (1333890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e289362314354b71a4b065c74e7da12473ca68a8b82e70409988cf00e8b89e`  
		Last Modified: Thu, 30 May 2019 22:24:09 GMT  
		Size: 10.2 KB (10237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:208e09417951809a6f9b383982a3bb1f0f2db73bb81e19d514d45691a40ce956`  
		Last Modified: Thu, 30 May 2019 22:24:09 GMT  
		Size: 1.3 MB (1257919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e64ebb96f224e4aecbdc56aaa15057db6d7c5bba77fd78a681e83ec64b5792`  
		Last Modified: Mon, 03 Jun 2019 22:58:50 GMT  
		Size: 13.7 MB (13723891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6481ed21bbc6b5b7f7713443cbb353cf16483e05e5ab3e2ee97583890cacc2f`  
		Last Modified: Mon, 03 Jun 2019 23:00:52 GMT  
		Size: 96.5 MB (96513190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9bd8be026bd3dcc4c13cf1b92742d70481f01ea4f19d4c3011cb60744c3de8`  
		Last Modified: Mon, 03 Jun 2019 22:58:38 GMT  
		Size: 32.3 MB (32326629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab42c9d2b7c3e8a75a6c8f94035e2204bc63b23538567248dc49809d698fe4b1`  
		Last Modified: Mon, 03 Jun 2019 22:58:25 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:358624f1b945d30e1081716660964ee1a9752b30bfc5c62db65f1fa0cd098485
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:94cf775008e3132b25a839baa44551cfb37c4a43f59f3107f560704aa4ce00b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.0 MB (155029473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4ba43b44b7bf482b0b642ff80fe5cbf687022b7d7d278dbfcaba0aa650bd11c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:39:31 GMT
ENV NODE_VERSION=8.16.0
# Sat, 11 May 2019 01:11:04 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 11 May 2019 01:11:04 GMT
ENV YARN_VERSION=1.15.2
# Sat, 11 May 2019 01:11:08 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 11 May 2019 01:11:08 GMT
CMD ["node"]
# Sat, 11 May 2019 04:40:50 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 11 May 2019 04:40:51 GMT
RUN apk add --no-cache 		bash
# Sat, 11 May 2019 04:40:52 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:24:22 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:24:40 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:24:40 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:24:41 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:24:41 GMT
ENV GHOST_VERSION=1.25.8
# Mon, 03 Jun 2019 22:25:14 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 03 Jun 2019 22:25:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 03 Jun 2019 22:25:24 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Mon, 03 Jun 2019 22:25:24 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:25:24 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:25:24 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Mon, 03 Jun 2019 22:25:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:25:25 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:25:25 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5ce4d3d5f2dae5a3f1663d45e638dad850b198c76d45b5452679100cf82b91`  
		Last Modified: Sat, 11 May 2019 03:02:33 GMT  
		Size: 18.7 MB (18650809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac289eff61bcc2fd3bc312f745ef63b2de3347c8f56c33e94dba743116ad2cd7`  
		Last Modified: Sat, 11 May 2019 03:02:26 GMT  
		Size: 1.3 MB (1333844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7dc42665629ab3f94a4ddca44270195fd7b9f5a11057d6707ee254c79214e6`  
		Last Modified: Sat, 11 May 2019 04:42:42 GMT  
		Size: 9.7 KB (9674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6606f3831a662defa5fcecd62299e68535a05296708a9a0e4bd2846951029ef4`  
		Last Modified: Sat, 11 May 2019 04:42:41 GMT  
		Size: 1.2 MB (1176773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9b1586a03d6900eb00105681a6f5aff566187ee65417a106a86a5ecf660f33`  
		Last Modified: Mon, 03 Jun 2019 22:28:01 GMT  
		Size: 13.7 MB (13723203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1198cb501dbd22a115cc0ea59c2bc59798651b01d08799be5a121a1b2d55a230`  
		Last Modified: Mon, 03 Jun 2019 22:28:31 GMT  
		Size: 104.2 MB (104212641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c5c6aea8c82c4b305935243f3622964d4dc7c4483f9f8b8e8bea291adc1ed8`  
		Last Modified: Mon, 03 Jun 2019 22:27:56 GMT  
		Size: 13.2 MB (13164918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bd8ebc993ab1abec2d55d3b8d7e3139f56bf24384d06527126f9db37d58aa7`  
		Last Modified: Mon, 03 Jun 2019 22:27:54 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:a2998f3cd36545140a014a7aa1bf1af2bdda8984c043eab36af4508b57807b73
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (163035597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60c6c4c2e2ef1dcb0d172da53ff08bf4dee0ff3dc7661d8bffc4488d2dd689a6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:33:31 GMT
ENV NODE_VERSION=8.16.0
# Sat, 11 May 2019 08:37:23 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 11 May 2019 08:37:24 GMT
ENV YARN_VERSION=1.15.2
# Sat, 11 May 2019 08:37:28 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 11 May 2019 08:37:28 GMT
CMD ["node"]
# Sat, 11 May 2019 10:42:36 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 11 May 2019 10:42:38 GMT
RUN apk add --no-cache 		bash
# Sat, 11 May 2019 10:42:39 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:55:08 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:55:47 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:55:49 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:55:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:55:49 GMT
ENV GHOST_VERSION=1.25.8
# Mon, 03 Jun 2019 22:57:18 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 03 Jun 2019 22:57:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 03 Jun 2019 23:00:52 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Mon, 03 Jun 2019 23:00:53 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 23:00:54 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 23:00:54 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Mon, 03 Jun 2019 23:00:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 23:00:55 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 23:00:56 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d667d91510525193825e9220ddd7c06e6483280eb3285270de16ad56d7f9805`  
		Last Modified: Sat, 11 May 2019 08:57:18 GMT  
		Size: 17.7 MB (17657049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db02dfc9fecb68b303a633dbdbddf3e9faa632b31c44e24a1d589b479478fe7`  
		Last Modified: Sat, 11 May 2019 08:57:11 GMT  
		Size: 1.3 MB (1333894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc91f95c0c04559ef6afb6f6e7dd9562afde9d521302fb450409607bb2e7ffbc`  
		Last Modified: Sat, 11 May 2019 10:49:36 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a229afaa11352c133c311f0d37a3b4b6e6c6a47a6593dc1fecc243dab6f3d85`  
		Last Modified: Sat, 11 May 2019 10:49:36 GMT  
		Size: 1.1 MB (1121973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec1927cf1d9525d53f05f995919e061ceff89f961d8ed461ce4286e48ce6db0`  
		Last Modified: Mon, 03 Jun 2019 23:02:24 GMT  
		Size: 13.7 MB (13729368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375ed31a7a7d81fdd1c07f2d0de3d694d32f2b9de389a4c8067575843f7eebab`  
		Last Modified: Mon, 03 Jun 2019 23:02:54 GMT  
		Size: 96.5 MB (96477387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5eaf9d1dccdfe17abb72448bfa9b9bc9680c191d65c289516bfe1283e0f33c`  
		Last Modified: Mon, 03 Jun 2019 23:02:27 GMT  
		Size: 30.2 MB (30162439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288f282bf871cf710d5a98eb10b45dcd2b751cf9b7017a51aae54ff72405fc2f`  
		Last Modified: Mon, 03 Jun 2019 23:02:18 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:90bd4d1dd20f3f091f88adf7b4fea4eed6e5c0d54b49187e17c6f0e785b712bd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.1 MB (168080043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3609ec069466fe2041029d1ed9c50850adfa1dfc304b9023d974531f9db2d18`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 19:06:56 GMT
ENV NODE_VERSION=8.16.0
# Thu, 30 May 2019 19:18:18 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 30 May 2019 19:18:22 GMT
ENV YARN_VERSION=1.15.2
# Thu, 30 May 2019 19:18:31 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 30 May 2019 19:18:33 GMT
CMD ["node"]
# Thu, 30 May 2019 22:10:07 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 30 May 2019 22:10:15 GMT
RUN apk add --no-cache 		bash
# Thu, 30 May 2019 22:10:19 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:44:08 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:44:49 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:44:55 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:44:57 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:44:59 GMT
ENV GHOST_VERSION=1.25.8
# Mon, 03 Jun 2019 22:47:25 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 03 Jun 2019 22:47:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 03 Jun 2019 22:50:18 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Mon, 03 Jun 2019 22:50:22 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:50:24 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:50:25 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Mon, 03 Jun 2019 22:50:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:50:29 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:50:33 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a362280d05b7cc72e32d7216b4ab31ef645c94ed93cc2e0af6e7163f072249d4`  
		Last Modified: Thu, 30 May 2019 20:19:45 GMT  
		Size: 20.1 MB (20132690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbcf853ef71beeb35e52b6e08b4def2bdd301670bea355654602ba9a17d5b087`  
		Last Modified: Thu, 30 May 2019 20:19:22 GMT  
		Size: 1.3 MB (1333890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e289362314354b71a4b065c74e7da12473ca68a8b82e70409988cf00e8b89e`  
		Last Modified: Thu, 30 May 2019 22:24:09 GMT  
		Size: 10.2 KB (10237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:208e09417951809a6f9b383982a3bb1f0f2db73bb81e19d514d45691a40ce956`  
		Last Modified: Thu, 30 May 2019 22:24:09 GMT  
		Size: 1.3 MB (1257919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e64ebb96f224e4aecbdc56aaa15057db6d7c5bba77fd78a681e83ec64b5792`  
		Last Modified: Mon, 03 Jun 2019 22:58:50 GMT  
		Size: 13.7 MB (13723891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6481ed21bbc6b5b7f7713443cbb353cf16483e05e5ab3e2ee97583890cacc2f`  
		Last Modified: Mon, 03 Jun 2019 23:00:52 GMT  
		Size: 96.5 MB (96513190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9bd8be026bd3dcc4c13cf1b92742d70481f01ea4f19d4c3011cb60744c3de8`  
		Last Modified: Mon, 03 Jun 2019 22:58:38 GMT  
		Size: 32.3 MB (32326629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab42c9d2b7c3e8a75a6c8f94035e2204bc63b23538567248dc49809d698fe4b1`  
		Last Modified: Mon, 03 Jun 2019 22:58:25 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2`

```console
$ docker pull ghost@sha256:ba9764d9de0b082ee832aab8a806d5bc51b125779e0cdf32c982ca4ad24929cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `ghost:2` - linux; amd64

```console
$ docker pull ghost@sha256:433c6231b303dab6b7d7b9621d134d1a6ddde4645e686c17fc3c58b5baffd356
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.7 MB (236654120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:812876742b0c96c827417b3471bd125e1c8ca3aaf5685484ef535e8a88c04ef2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:14:42 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 29 May 2019 17:18:55 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 17:19:24 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 29 May 2019 17:19:24 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 17:19:28 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 29 May 2019 17:19:29 GMT
CMD ["node"]
# Wed, 29 May 2019 17:39:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 May 2019 17:39:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 May 2019 17:39:16 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:19:41 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:20:00 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:20:01 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:20:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:20:01 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:21:04 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 22:21:14 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 22:21:14 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:21:14 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:21:14 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Mon, 03 Jun 2019 22:21:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:21:15 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:21:15 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89252b028f01ddb83169c019a9b0699d670133cd36bd332ed455fe90a8ea4483`  
		Last Modified: Wed, 08 May 2019 02:25:36 GMT  
		Size: 4.1 KB (4146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7214f640d147f9fa3cb7cf3cbe0974c5e0b97457ae172c3e3cbe56b8a9eaef0`  
		Last Modified: Wed, 29 May 2019 17:23:29 GMT  
		Size: 30.9 MB (30900148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d7a6cb9337082b0e946bf3d5ecc7344724d05ee66e208e564c52b458652ded`  
		Last Modified: Wed, 29 May 2019 17:23:19 GMT  
		Size: 1.3 MB (1325496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbae7d9390670611faa77a0640497e04fdd062e64e2319bf9a783c8e7132a84d`  
		Last Modified: Wed, 29 May 2019 17:42:18 GMT  
		Size: 500.9 KB (500917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d658d76ac392062f7ae65304198f8f50e9bb4d685c43d824644d056c32dc9acc`  
		Last Modified: Mon, 03 Jun 2019 22:25:51 GMT  
		Size: 13.7 MB (13726151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce2fda123566538817f0093468baa23a79419af4210d05dd5626a4ac1d1dc63`  
		Last Modified: Mon, 03 Jun 2019 22:26:24 GMT  
		Size: 166.2 MB (166200876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb7c243d74bbff6b4ae36af4858645f27c9ff4bf5e9af375ad696a2aa8ea480a`  
		Last Modified: Mon, 03 Jun 2019 22:25:43 GMT  
		Size: 1.5 MB (1506477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f82bd643c1cb2bd77612b08d9fdacfc9a1a0605d9f51dab0b373414c7f89d5`  
		Last Modified: Mon, 03 Jun 2019 22:25:43 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; arm variant v7

```console
$ docker pull ghost@sha256:f1ae02a3d0426b06d91ca5ed15ac3ba6d2f4c2300a2cd2f8530bd430ab784b6b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.8 MB (232827947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:306d7142d835706a95c682c791b04408ff8ef68268e544eb3d28c77a42fcb5ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 15:13:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 29 May 2019 17:00:47 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 17:01:24 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 29 May 2019 17:01:25 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 17:01:31 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 29 May 2019 17:01:32 GMT
CMD ["node"]
# Wed, 29 May 2019 17:19:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 May 2019 17:19:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 May 2019 17:19:43 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:57:28 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:57:59 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:58:01 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:58:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:58:02 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:59:07 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 23:02:06 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 23:02:07 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 23:02:07 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 23:02:08 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Mon, 03 Jun 2019 23:02:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 23:02:09 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 23:02:09 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626773d003732b6357a355496b3568eb47daf3e804053223f39baae73cacf817`  
		Last Modified: Wed, 08 May 2019 15:26:06 GMT  
		Size: 4.2 KB (4159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bdeaafb760d782da98da717466de8b977fee0b27f3c367361b034adc11fa273`  
		Last Modified: Wed, 29 May 2019 17:03:59 GMT  
		Size: 28.0 MB (28003481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13f44904188ec2c39449440dc916fdf3d24c9181eb11c859089027bd1415861`  
		Last Modified: Wed, 29 May 2019 17:03:48 GMT  
		Size: 1.3 MB (1325537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17febbe82f6eb7ea8c96a464698dc8ee5fdd22532390b3d1bf34f12f8363583e`  
		Last Modified: Wed, 29 May 2019 17:24:37 GMT  
		Size: 475.4 KB (475436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769471fba657f1037df9cbb3c2df4ccd7e3a8f15c3f1d6e3257505d04b95dcd1`  
		Last Modified: Mon, 03 Jun 2019 23:08:18 GMT  
		Size: 13.7 MB (13728268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998f2fc78f6c29a19574cc3466858acf567eb1156ea31599d7b7f19f20fb9622`  
		Last Modified: Mon, 03 Jun 2019 23:09:00 GMT  
		Size: 150.5 MB (150453204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2970c59bfad73fc545c9b73a6ac02c730893dd15208cf94e5ea2970c287fb22`  
		Last Modified: Mon, 03 Jun 2019 23:08:19 GMT  
		Size: 19.6 MB (19561086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44962baf0a25e06c8b91effc85df29e574d16e12d33d855507ece17e76c4e31`  
		Last Modified: Mon, 03 Jun 2019 23:08:12 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:2f10370490adcbe8ea3524363a3072901fe18cd396b85ca438f97f3661e3b12d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235545698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5b065600e878e4b3f095fb5f13764d5b16e6531efd31de8f99ec1958b3b020`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 22 May 2019 23:44:56 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 29 May 2019 16:46:52 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 16:47:18 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 29 May 2019 16:47:19 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 16:47:23 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 29 May 2019 16:47:24 GMT
CMD ["node"]
# Wed, 29 May 2019 20:39:36 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 May 2019 20:39:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 May 2019 20:39:40 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:39:33 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:39:56 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:39:57 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:39:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:39:58 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:40:54 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 22:43:36 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 22:43:36 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:43:37 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:43:37 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Mon, 03 Jun 2019 22:43:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:43:38 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:43:38 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3921c095c25b350282d51bf3e3b484439b2134a3feee67a2f633ad6f9bc5295`  
		Last Modified: Thu, 23 May 2019 00:08:51 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948a044182c3ee60bba6907697a639dbe3a5a5a299757498ec510e5420f9d5d3`  
		Last Modified: Wed, 29 May 2019 16:49:23 GMT  
		Size: 29.7 MB (29706136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ce87a0522b6222c59cfedbf25ca11125f327c2419ea17e05c798626a9d7238`  
		Last Modified: Wed, 29 May 2019 16:49:13 GMT  
		Size: 1.3 MB (1325532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982894a909a71197b955aed248fc6ad251d3abcb226897244dac05a2ccaa7193`  
		Last Modified: Wed, 29 May 2019 20:48:12 GMT  
		Size: 468.9 KB (468940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6b0527e63fe9c10442071c0c5290e6eda1e5b55136be0185671beef6eaefdb`  
		Last Modified: Mon, 03 Jun 2019 22:48:41 GMT  
		Size: 13.7 MB (13727409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88571a645cd2d20011dbb9cbff23ced168d22fce595154b1a7b18e5acfebabc4`  
		Last Modified: Mon, 03 Jun 2019 22:49:16 GMT  
		Size: 150.3 MB (150301817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861e3179e0d5009de21339c66f626c9ab62afae69ad2bbd10c698dd493781973`  
		Last Modified: Mon, 03 Jun 2019 22:48:43 GMT  
		Size: 19.7 MB (19677308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643bf316c14709ad0c595dcb16e2fd5d86c6da669e2c461b862885a90beb3702`  
		Last Modified: Mon, 03 Jun 2019 22:48:36 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; ppc64le

```console
$ docker pull ghost@sha256:6f87f2b183c8010d426739ceb05e6eb9524e364e097eaa104afcef87117c3d00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.6 MB (225589947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1797743c441cabe65759424b8765544ab04f9eed70b09b0885293be40b8a893`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Thu, 30 May 2019 19:19:31 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 30 May 2019 20:15:15 GMT
ENV NODE_VERSION=10.16.0
# Thu, 30 May 2019 20:16:50 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 30 May 2019 20:16:54 GMT
ENV YARN_VERSION=1.16.0
# Thu, 30 May 2019 20:17:05 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 30 May 2019 20:17:08 GMT
CMD ["node"]
# Thu, 30 May 2019 21:42:05 GMT
ENV GOSU_VERSION=1.10
# Thu, 30 May 2019 21:42:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 30 May 2019 21:42:20 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:16:31 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:17:15 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:17:27 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:17:33 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:17:40 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:20:39 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 22:26:00 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 22:26:05 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:26:08 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:26:11 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Mon, 03 Jun 2019 22:26:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:26:17 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:26:20 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1731a3590c4918a1aa9896862042f09bd0fa20af4e4580153724b905038152dc`  
		Last Modified: Thu, 30 May 2019 20:20:57 GMT  
		Size: 4.2 KB (4179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2185eda95288e897f5f0fd2b371133e5949261a11237136fd80f016a4554526`  
		Last Modified: Thu, 30 May 2019 20:27:13 GMT  
		Size: 30.2 MB (30191757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4294d78c0d1aa2b9591c7ab55ea563b4192230514d06e52ca55484b457ffe044`  
		Last Modified: Thu, 30 May 2019 20:27:02 GMT  
		Size: 1.3 MB (1325535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4cc160f39b684800f101fb2b96de1675e6e2b2d950f25df82d25adb706cef7`  
		Last Modified: Thu, 30 May 2019 22:17:19 GMT  
		Size: 470.1 KB (470076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b85af148ac3812f3b2257137279229344b2eab175d9d2a62964e865187e9b84`  
		Last Modified: Mon, 03 Jun 2019 22:51:28 GMT  
		Size: 13.7 MB (13725421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4f33c12a30f911e1276137d6648fe5a2dcff8edf7afc43773c1da34a7336bb`  
		Last Modified: Mon, 03 Jun 2019 22:53:36 GMT  
		Size: 144.3 MB (144336149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb75c99f6d545fd6e9187ef7b34666b9aecedbba7af38ec897c72c54582ca283`  
		Last Modified: Mon, 03 Jun 2019 22:51:19 GMT  
		Size: 12.8 MB (12791357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bacefc56f4f22363921e96dd2d3435cc66b2c73b559e5271f99578d62194de1c`  
		Last Modified: Mon, 03 Jun 2019 22:51:08 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; s390x

```console
$ docker pull ghost@sha256:945d73f7551708e4f947d6b292376f733b31eb86807e69852b69c19c0ebf9ff2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.6 MB (225608280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6482e9c7d635b3bc66b6eff2a49877d8ff1f51c0c3e4591adfc9ce8fcf282cda`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:12:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 29 May 2019 17:03:31 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 17:03:58 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 29 May 2019 17:03:58 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 17:04:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 29 May 2019 17:04:03 GMT
CMD ["node"]
# Wed, 29 May 2019 17:21:15 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 May 2019 17:21:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 May 2019 17:21:19 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:41:35 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:41:50 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:41:51 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:41:51 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:41:51 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:42:32 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 22:44:11 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 22:44:11 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:44:12 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:44:12 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Mon, 03 Jun 2019 22:44:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:44:12 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:44:13 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d77ccdc5044aabea621dcafff2d8f0ce8fd083c951109df82537c78478a8abc`  
		Last Modified: Wed, 08 May 2019 14:27:47 GMT  
		Size: 4.2 KB (4158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563bbc9c62c3d5d74feac44dc430aee79a2dd3792451c118c3764ec2676749ed`  
		Last Modified: Wed, 29 May 2019 17:05:28 GMT  
		Size: 30.6 MB (30629607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cacd82ad40afde15f11c5b77bc13d021a53048d91e4ed9a26c5cbf0d5c6e8709`  
		Last Modified: Wed, 29 May 2019 17:05:22 GMT  
		Size: 1.3 MB (1325495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1778a941b4018754c43a0c1527732660447c6f8e014af198a9fe7ef89a9384f1`  
		Last Modified: Wed, 29 May 2019 17:24:20 GMT  
		Size: 487.0 KB (487043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24732dfb34e82e53d4a4e5848ed182e5c1f1249bf4f1c37d892a461eb3387774`  
		Last Modified: Mon, 03 Jun 2019 22:47:46 GMT  
		Size: 13.7 MB (13723780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4251f19f8d03439df624d97f2dd1b3d5ffc4e1736cbd355ce9b35792c60b1c`  
		Last Modified: Mon, 03 Jun 2019 22:48:03 GMT  
		Size: 144.3 MB (144325345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f80b3faf6d0d57650c96e1caca8c9c361e06a68d73bf2832707f3b5033bcc7ca`  
		Last Modified: Mon, 03 Jun 2019 22:47:45 GMT  
		Size: 12.8 MB (12773426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee8cd9d65a4dfa15da9dd8e23570ec6294e3ee6221d0e44e4977a9e4c0c11e8`  
		Last Modified: Mon, 03 Jun 2019 22:47:43 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.23`

```console
$ docker pull ghost@sha256:ba9764d9de0b082ee832aab8a806d5bc51b125779e0cdf32c982ca4ad24929cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `ghost:2.23` - linux; amd64

```console
$ docker pull ghost@sha256:433c6231b303dab6b7d7b9621d134d1a6ddde4645e686c17fc3c58b5baffd356
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.7 MB (236654120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:812876742b0c96c827417b3471bd125e1c8ca3aaf5685484ef535e8a88c04ef2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:14:42 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 29 May 2019 17:18:55 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 17:19:24 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 29 May 2019 17:19:24 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 17:19:28 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 29 May 2019 17:19:29 GMT
CMD ["node"]
# Wed, 29 May 2019 17:39:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 May 2019 17:39:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 May 2019 17:39:16 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:19:41 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:20:00 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:20:01 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:20:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:20:01 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:21:04 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 22:21:14 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 22:21:14 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:21:14 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:21:14 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Mon, 03 Jun 2019 22:21:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:21:15 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:21:15 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89252b028f01ddb83169c019a9b0699d670133cd36bd332ed455fe90a8ea4483`  
		Last Modified: Wed, 08 May 2019 02:25:36 GMT  
		Size: 4.1 KB (4146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7214f640d147f9fa3cb7cf3cbe0974c5e0b97457ae172c3e3cbe56b8a9eaef0`  
		Last Modified: Wed, 29 May 2019 17:23:29 GMT  
		Size: 30.9 MB (30900148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d7a6cb9337082b0e946bf3d5ecc7344724d05ee66e208e564c52b458652ded`  
		Last Modified: Wed, 29 May 2019 17:23:19 GMT  
		Size: 1.3 MB (1325496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbae7d9390670611faa77a0640497e04fdd062e64e2319bf9a783c8e7132a84d`  
		Last Modified: Wed, 29 May 2019 17:42:18 GMT  
		Size: 500.9 KB (500917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d658d76ac392062f7ae65304198f8f50e9bb4d685c43d824644d056c32dc9acc`  
		Last Modified: Mon, 03 Jun 2019 22:25:51 GMT  
		Size: 13.7 MB (13726151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce2fda123566538817f0093468baa23a79419af4210d05dd5626a4ac1d1dc63`  
		Last Modified: Mon, 03 Jun 2019 22:26:24 GMT  
		Size: 166.2 MB (166200876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb7c243d74bbff6b4ae36af4858645f27c9ff4bf5e9af375ad696a2aa8ea480a`  
		Last Modified: Mon, 03 Jun 2019 22:25:43 GMT  
		Size: 1.5 MB (1506477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f82bd643c1cb2bd77612b08d9fdacfc9a1a0605d9f51dab0b373414c7f89d5`  
		Last Modified: Mon, 03 Jun 2019 22:25:43 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.23` - linux; arm variant v7

```console
$ docker pull ghost@sha256:f1ae02a3d0426b06d91ca5ed15ac3ba6d2f4c2300a2cd2f8530bd430ab784b6b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.8 MB (232827947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:306d7142d835706a95c682c791b04408ff8ef68268e544eb3d28c77a42fcb5ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 15:13:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 29 May 2019 17:00:47 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 17:01:24 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 29 May 2019 17:01:25 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 17:01:31 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 29 May 2019 17:01:32 GMT
CMD ["node"]
# Wed, 29 May 2019 17:19:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 May 2019 17:19:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 May 2019 17:19:43 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:57:28 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:57:59 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:58:01 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:58:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:58:02 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:59:07 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 23:02:06 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 23:02:07 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 23:02:07 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 23:02:08 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Mon, 03 Jun 2019 23:02:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 23:02:09 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 23:02:09 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626773d003732b6357a355496b3568eb47daf3e804053223f39baae73cacf817`  
		Last Modified: Wed, 08 May 2019 15:26:06 GMT  
		Size: 4.2 KB (4159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bdeaafb760d782da98da717466de8b977fee0b27f3c367361b034adc11fa273`  
		Last Modified: Wed, 29 May 2019 17:03:59 GMT  
		Size: 28.0 MB (28003481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13f44904188ec2c39449440dc916fdf3d24c9181eb11c859089027bd1415861`  
		Last Modified: Wed, 29 May 2019 17:03:48 GMT  
		Size: 1.3 MB (1325537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17febbe82f6eb7ea8c96a464698dc8ee5fdd22532390b3d1bf34f12f8363583e`  
		Last Modified: Wed, 29 May 2019 17:24:37 GMT  
		Size: 475.4 KB (475436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769471fba657f1037df9cbb3c2df4ccd7e3a8f15c3f1d6e3257505d04b95dcd1`  
		Last Modified: Mon, 03 Jun 2019 23:08:18 GMT  
		Size: 13.7 MB (13728268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998f2fc78f6c29a19574cc3466858acf567eb1156ea31599d7b7f19f20fb9622`  
		Last Modified: Mon, 03 Jun 2019 23:09:00 GMT  
		Size: 150.5 MB (150453204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2970c59bfad73fc545c9b73a6ac02c730893dd15208cf94e5ea2970c287fb22`  
		Last Modified: Mon, 03 Jun 2019 23:08:19 GMT  
		Size: 19.6 MB (19561086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44962baf0a25e06c8b91effc85df29e574d16e12d33d855507ece17e76c4e31`  
		Last Modified: Mon, 03 Jun 2019 23:08:12 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:2f10370490adcbe8ea3524363a3072901fe18cd396b85ca438f97f3661e3b12d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235545698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5b065600e878e4b3f095fb5f13764d5b16e6531efd31de8f99ec1958b3b020`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 22 May 2019 23:44:56 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 29 May 2019 16:46:52 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 16:47:18 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 29 May 2019 16:47:19 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 16:47:23 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 29 May 2019 16:47:24 GMT
CMD ["node"]
# Wed, 29 May 2019 20:39:36 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 May 2019 20:39:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 May 2019 20:39:40 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:39:33 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:39:56 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:39:57 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:39:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:39:58 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:40:54 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 22:43:36 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 22:43:36 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:43:37 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:43:37 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Mon, 03 Jun 2019 22:43:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:43:38 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:43:38 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3921c095c25b350282d51bf3e3b484439b2134a3feee67a2f633ad6f9bc5295`  
		Last Modified: Thu, 23 May 2019 00:08:51 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948a044182c3ee60bba6907697a639dbe3a5a5a299757498ec510e5420f9d5d3`  
		Last Modified: Wed, 29 May 2019 16:49:23 GMT  
		Size: 29.7 MB (29706136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ce87a0522b6222c59cfedbf25ca11125f327c2419ea17e05c798626a9d7238`  
		Last Modified: Wed, 29 May 2019 16:49:13 GMT  
		Size: 1.3 MB (1325532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982894a909a71197b955aed248fc6ad251d3abcb226897244dac05a2ccaa7193`  
		Last Modified: Wed, 29 May 2019 20:48:12 GMT  
		Size: 468.9 KB (468940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6b0527e63fe9c10442071c0c5290e6eda1e5b55136be0185671beef6eaefdb`  
		Last Modified: Mon, 03 Jun 2019 22:48:41 GMT  
		Size: 13.7 MB (13727409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88571a645cd2d20011dbb9cbff23ced168d22fce595154b1a7b18e5acfebabc4`  
		Last Modified: Mon, 03 Jun 2019 22:49:16 GMT  
		Size: 150.3 MB (150301817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861e3179e0d5009de21339c66f626c9ab62afae69ad2bbd10c698dd493781973`  
		Last Modified: Mon, 03 Jun 2019 22:48:43 GMT  
		Size: 19.7 MB (19677308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643bf316c14709ad0c595dcb16e2fd5d86c6da669e2c461b862885a90beb3702`  
		Last Modified: Mon, 03 Jun 2019 22:48:36 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.23` - linux; ppc64le

```console
$ docker pull ghost@sha256:6f87f2b183c8010d426739ceb05e6eb9524e364e097eaa104afcef87117c3d00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.6 MB (225589947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1797743c441cabe65759424b8765544ab04f9eed70b09b0885293be40b8a893`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Thu, 30 May 2019 19:19:31 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 30 May 2019 20:15:15 GMT
ENV NODE_VERSION=10.16.0
# Thu, 30 May 2019 20:16:50 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 30 May 2019 20:16:54 GMT
ENV YARN_VERSION=1.16.0
# Thu, 30 May 2019 20:17:05 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 30 May 2019 20:17:08 GMT
CMD ["node"]
# Thu, 30 May 2019 21:42:05 GMT
ENV GOSU_VERSION=1.10
# Thu, 30 May 2019 21:42:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 30 May 2019 21:42:20 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:16:31 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:17:15 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:17:27 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:17:33 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:17:40 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:20:39 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 22:26:00 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 22:26:05 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:26:08 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:26:11 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Mon, 03 Jun 2019 22:26:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:26:17 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:26:20 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1731a3590c4918a1aa9896862042f09bd0fa20af4e4580153724b905038152dc`  
		Last Modified: Thu, 30 May 2019 20:20:57 GMT  
		Size: 4.2 KB (4179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2185eda95288e897f5f0fd2b371133e5949261a11237136fd80f016a4554526`  
		Last Modified: Thu, 30 May 2019 20:27:13 GMT  
		Size: 30.2 MB (30191757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4294d78c0d1aa2b9591c7ab55ea563b4192230514d06e52ca55484b457ffe044`  
		Last Modified: Thu, 30 May 2019 20:27:02 GMT  
		Size: 1.3 MB (1325535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4cc160f39b684800f101fb2b96de1675e6e2b2d950f25df82d25adb706cef7`  
		Last Modified: Thu, 30 May 2019 22:17:19 GMT  
		Size: 470.1 KB (470076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b85af148ac3812f3b2257137279229344b2eab175d9d2a62964e865187e9b84`  
		Last Modified: Mon, 03 Jun 2019 22:51:28 GMT  
		Size: 13.7 MB (13725421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4f33c12a30f911e1276137d6648fe5a2dcff8edf7afc43773c1da34a7336bb`  
		Last Modified: Mon, 03 Jun 2019 22:53:36 GMT  
		Size: 144.3 MB (144336149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb75c99f6d545fd6e9187ef7b34666b9aecedbba7af38ec897c72c54582ca283`  
		Last Modified: Mon, 03 Jun 2019 22:51:19 GMT  
		Size: 12.8 MB (12791357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bacefc56f4f22363921e96dd2d3435cc66b2c73b559e5271f99578d62194de1c`  
		Last Modified: Mon, 03 Jun 2019 22:51:08 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.23` - linux; s390x

```console
$ docker pull ghost@sha256:945d73f7551708e4f947d6b292376f733b31eb86807e69852b69c19c0ebf9ff2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.6 MB (225608280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6482e9c7d635b3bc66b6eff2a49877d8ff1f51c0c3e4591adfc9ce8fcf282cda`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:12:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 29 May 2019 17:03:31 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 17:03:58 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 29 May 2019 17:03:58 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 17:04:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 29 May 2019 17:04:03 GMT
CMD ["node"]
# Wed, 29 May 2019 17:21:15 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 May 2019 17:21:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 May 2019 17:21:19 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:41:35 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:41:50 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:41:51 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:41:51 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:41:51 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:42:32 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 22:44:11 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 22:44:11 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:44:12 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:44:12 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Mon, 03 Jun 2019 22:44:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:44:12 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:44:13 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d77ccdc5044aabea621dcafff2d8f0ce8fd083c951109df82537c78478a8abc`  
		Last Modified: Wed, 08 May 2019 14:27:47 GMT  
		Size: 4.2 KB (4158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563bbc9c62c3d5d74feac44dc430aee79a2dd3792451c118c3764ec2676749ed`  
		Last Modified: Wed, 29 May 2019 17:05:28 GMT  
		Size: 30.6 MB (30629607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cacd82ad40afde15f11c5b77bc13d021a53048d91e4ed9a26c5cbf0d5c6e8709`  
		Last Modified: Wed, 29 May 2019 17:05:22 GMT  
		Size: 1.3 MB (1325495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1778a941b4018754c43a0c1527732660447c6f8e014af198a9fe7ef89a9384f1`  
		Last Modified: Wed, 29 May 2019 17:24:20 GMT  
		Size: 487.0 KB (487043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24732dfb34e82e53d4a4e5848ed182e5c1f1249bf4f1c37d892a461eb3387774`  
		Last Modified: Mon, 03 Jun 2019 22:47:46 GMT  
		Size: 13.7 MB (13723780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4251f19f8d03439df624d97f2dd1b3d5ffc4e1736cbd355ce9b35792c60b1c`  
		Last Modified: Mon, 03 Jun 2019 22:48:03 GMT  
		Size: 144.3 MB (144325345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f80b3faf6d0d57650c96e1caca8c9c361e06a68d73bf2832707f3b5033bcc7ca`  
		Last Modified: Mon, 03 Jun 2019 22:47:45 GMT  
		Size: 12.8 MB (12773426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee8cd9d65a4dfa15da9dd8e23570ec6294e3ee6221d0e44e4977a9e4c0c11e8`  
		Last Modified: Mon, 03 Jun 2019 22:47:43 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.23.1`

```console
$ docker pull ghost@sha256:ba9764d9de0b082ee832aab8a806d5bc51b125779e0cdf32c982ca4ad24929cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `ghost:2.23.1` - linux; amd64

```console
$ docker pull ghost@sha256:433c6231b303dab6b7d7b9621d134d1a6ddde4645e686c17fc3c58b5baffd356
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.7 MB (236654120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:812876742b0c96c827417b3471bd125e1c8ca3aaf5685484ef535e8a88c04ef2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:14:42 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 29 May 2019 17:18:55 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 17:19:24 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 29 May 2019 17:19:24 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 17:19:28 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 29 May 2019 17:19:29 GMT
CMD ["node"]
# Wed, 29 May 2019 17:39:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 May 2019 17:39:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 May 2019 17:39:16 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:19:41 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:20:00 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:20:01 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:20:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:20:01 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:21:04 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 22:21:14 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 22:21:14 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:21:14 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:21:14 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Mon, 03 Jun 2019 22:21:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:21:15 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:21:15 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89252b028f01ddb83169c019a9b0699d670133cd36bd332ed455fe90a8ea4483`  
		Last Modified: Wed, 08 May 2019 02:25:36 GMT  
		Size: 4.1 KB (4146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7214f640d147f9fa3cb7cf3cbe0974c5e0b97457ae172c3e3cbe56b8a9eaef0`  
		Last Modified: Wed, 29 May 2019 17:23:29 GMT  
		Size: 30.9 MB (30900148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d7a6cb9337082b0e946bf3d5ecc7344724d05ee66e208e564c52b458652ded`  
		Last Modified: Wed, 29 May 2019 17:23:19 GMT  
		Size: 1.3 MB (1325496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbae7d9390670611faa77a0640497e04fdd062e64e2319bf9a783c8e7132a84d`  
		Last Modified: Wed, 29 May 2019 17:42:18 GMT  
		Size: 500.9 KB (500917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d658d76ac392062f7ae65304198f8f50e9bb4d685c43d824644d056c32dc9acc`  
		Last Modified: Mon, 03 Jun 2019 22:25:51 GMT  
		Size: 13.7 MB (13726151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce2fda123566538817f0093468baa23a79419af4210d05dd5626a4ac1d1dc63`  
		Last Modified: Mon, 03 Jun 2019 22:26:24 GMT  
		Size: 166.2 MB (166200876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb7c243d74bbff6b4ae36af4858645f27c9ff4bf5e9af375ad696a2aa8ea480a`  
		Last Modified: Mon, 03 Jun 2019 22:25:43 GMT  
		Size: 1.5 MB (1506477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f82bd643c1cb2bd77612b08d9fdacfc9a1a0605d9f51dab0b373414c7f89d5`  
		Last Modified: Mon, 03 Jun 2019 22:25:43 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.23.1` - linux; arm variant v7

```console
$ docker pull ghost@sha256:f1ae02a3d0426b06d91ca5ed15ac3ba6d2f4c2300a2cd2f8530bd430ab784b6b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.8 MB (232827947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:306d7142d835706a95c682c791b04408ff8ef68268e544eb3d28c77a42fcb5ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 15:13:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 29 May 2019 17:00:47 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 17:01:24 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 29 May 2019 17:01:25 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 17:01:31 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 29 May 2019 17:01:32 GMT
CMD ["node"]
# Wed, 29 May 2019 17:19:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 May 2019 17:19:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 May 2019 17:19:43 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:57:28 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:57:59 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:58:01 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:58:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:58:02 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:59:07 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 23:02:06 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 23:02:07 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 23:02:07 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 23:02:08 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Mon, 03 Jun 2019 23:02:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 23:02:09 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 23:02:09 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626773d003732b6357a355496b3568eb47daf3e804053223f39baae73cacf817`  
		Last Modified: Wed, 08 May 2019 15:26:06 GMT  
		Size: 4.2 KB (4159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bdeaafb760d782da98da717466de8b977fee0b27f3c367361b034adc11fa273`  
		Last Modified: Wed, 29 May 2019 17:03:59 GMT  
		Size: 28.0 MB (28003481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13f44904188ec2c39449440dc916fdf3d24c9181eb11c859089027bd1415861`  
		Last Modified: Wed, 29 May 2019 17:03:48 GMT  
		Size: 1.3 MB (1325537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17febbe82f6eb7ea8c96a464698dc8ee5fdd22532390b3d1bf34f12f8363583e`  
		Last Modified: Wed, 29 May 2019 17:24:37 GMT  
		Size: 475.4 KB (475436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769471fba657f1037df9cbb3c2df4ccd7e3a8f15c3f1d6e3257505d04b95dcd1`  
		Last Modified: Mon, 03 Jun 2019 23:08:18 GMT  
		Size: 13.7 MB (13728268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998f2fc78f6c29a19574cc3466858acf567eb1156ea31599d7b7f19f20fb9622`  
		Last Modified: Mon, 03 Jun 2019 23:09:00 GMT  
		Size: 150.5 MB (150453204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2970c59bfad73fc545c9b73a6ac02c730893dd15208cf94e5ea2970c287fb22`  
		Last Modified: Mon, 03 Jun 2019 23:08:19 GMT  
		Size: 19.6 MB (19561086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44962baf0a25e06c8b91effc85df29e574d16e12d33d855507ece17e76c4e31`  
		Last Modified: Mon, 03 Jun 2019 23:08:12 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.23.1` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:2f10370490adcbe8ea3524363a3072901fe18cd396b85ca438f97f3661e3b12d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235545698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5b065600e878e4b3f095fb5f13764d5b16e6531efd31de8f99ec1958b3b020`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 22 May 2019 23:44:56 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 29 May 2019 16:46:52 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 16:47:18 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 29 May 2019 16:47:19 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 16:47:23 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 29 May 2019 16:47:24 GMT
CMD ["node"]
# Wed, 29 May 2019 20:39:36 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 May 2019 20:39:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 May 2019 20:39:40 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:39:33 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:39:56 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:39:57 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:39:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:39:58 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:40:54 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 22:43:36 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 22:43:36 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:43:37 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:43:37 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Mon, 03 Jun 2019 22:43:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:43:38 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:43:38 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3921c095c25b350282d51bf3e3b484439b2134a3feee67a2f633ad6f9bc5295`  
		Last Modified: Thu, 23 May 2019 00:08:51 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948a044182c3ee60bba6907697a639dbe3a5a5a299757498ec510e5420f9d5d3`  
		Last Modified: Wed, 29 May 2019 16:49:23 GMT  
		Size: 29.7 MB (29706136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ce87a0522b6222c59cfedbf25ca11125f327c2419ea17e05c798626a9d7238`  
		Last Modified: Wed, 29 May 2019 16:49:13 GMT  
		Size: 1.3 MB (1325532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982894a909a71197b955aed248fc6ad251d3abcb226897244dac05a2ccaa7193`  
		Last Modified: Wed, 29 May 2019 20:48:12 GMT  
		Size: 468.9 KB (468940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6b0527e63fe9c10442071c0c5290e6eda1e5b55136be0185671beef6eaefdb`  
		Last Modified: Mon, 03 Jun 2019 22:48:41 GMT  
		Size: 13.7 MB (13727409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88571a645cd2d20011dbb9cbff23ced168d22fce595154b1a7b18e5acfebabc4`  
		Last Modified: Mon, 03 Jun 2019 22:49:16 GMT  
		Size: 150.3 MB (150301817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861e3179e0d5009de21339c66f626c9ab62afae69ad2bbd10c698dd493781973`  
		Last Modified: Mon, 03 Jun 2019 22:48:43 GMT  
		Size: 19.7 MB (19677308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643bf316c14709ad0c595dcb16e2fd5d86c6da669e2c461b862885a90beb3702`  
		Last Modified: Mon, 03 Jun 2019 22:48:36 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.23.1` - linux; ppc64le

```console
$ docker pull ghost@sha256:6f87f2b183c8010d426739ceb05e6eb9524e364e097eaa104afcef87117c3d00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.6 MB (225589947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1797743c441cabe65759424b8765544ab04f9eed70b09b0885293be40b8a893`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Thu, 30 May 2019 19:19:31 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 30 May 2019 20:15:15 GMT
ENV NODE_VERSION=10.16.0
# Thu, 30 May 2019 20:16:50 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 30 May 2019 20:16:54 GMT
ENV YARN_VERSION=1.16.0
# Thu, 30 May 2019 20:17:05 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 30 May 2019 20:17:08 GMT
CMD ["node"]
# Thu, 30 May 2019 21:42:05 GMT
ENV GOSU_VERSION=1.10
# Thu, 30 May 2019 21:42:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 30 May 2019 21:42:20 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:16:31 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:17:15 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:17:27 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:17:33 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:17:40 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:20:39 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 22:26:00 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 22:26:05 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:26:08 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:26:11 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Mon, 03 Jun 2019 22:26:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:26:17 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:26:20 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1731a3590c4918a1aa9896862042f09bd0fa20af4e4580153724b905038152dc`  
		Last Modified: Thu, 30 May 2019 20:20:57 GMT  
		Size: 4.2 KB (4179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2185eda95288e897f5f0fd2b371133e5949261a11237136fd80f016a4554526`  
		Last Modified: Thu, 30 May 2019 20:27:13 GMT  
		Size: 30.2 MB (30191757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4294d78c0d1aa2b9591c7ab55ea563b4192230514d06e52ca55484b457ffe044`  
		Last Modified: Thu, 30 May 2019 20:27:02 GMT  
		Size: 1.3 MB (1325535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4cc160f39b684800f101fb2b96de1675e6e2b2d950f25df82d25adb706cef7`  
		Last Modified: Thu, 30 May 2019 22:17:19 GMT  
		Size: 470.1 KB (470076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b85af148ac3812f3b2257137279229344b2eab175d9d2a62964e865187e9b84`  
		Last Modified: Mon, 03 Jun 2019 22:51:28 GMT  
		Size: 13.7 MB (13725421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4f33c12a30f911e1276137d6648fe5a2dcff8edf7afc43773c1da34a7336bb`  
		Last Modified: Mon, 03 Jun 2019 22:53:36 GMT  
		Size: 144.3 MB (144336149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb75c99f6d545fd6e9187ef7b34666b9aecedbba7af38ec897c72c54582ca283`  
		Last Modified: Mon, 03 Jun 2019 22:51:19 GMT  
		Size: 12.8 MB (12791357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bacefc56f4f22363921e96dd2d3435cc66b2c73b559e5271f99578d62194de1c`  
		Last Modified: Mon, 03 Jun 2019 22:51:08 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.23.1` - linux; s390x

```console
$ docker pull ghost@sha256:945d73f7551708e4f947d6b292376f733b31eb86807e69852b69c19c0ebf9ff2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.6 MB (225608280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6482e9c7d635b3bc66b6eff2a49877d8ff1f51c0c3e4591adfc9ce8fcf282cda`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:12:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 29 May 2019 17:03:31 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 17:03:58 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 29 May 2019 17:03:58 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 17:04:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 29 May 2019 17:04:03 GMT
CMD ["node"]
# Wed, 29 May 2019 17:21:15 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 May 2019 17:21:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 May 2019 17:21:19 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:41:35 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:41:50 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:41:51 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:41:51 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:41:51 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:42:32 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 22:44:11 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 22:44:11 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:44:12 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:44:12 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Mon, 03 Jun 2019 22:44:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:44:12 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:44:13 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d77ccdc5044aabea621dcafff2d8f0ce8fd083c951109df82537c78478a8abc`  
		Last Modified: Wed, 08 May 2019 14:27:47 GMT  
		Size: 4.2 KB (4158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563bbc9c62c3d5d74feac44dc430aee79a2dd3792451c118c3764ec2676749ed`  
		Last Modified: Wed, 29 May 2019 17:05:28 GMT  
		Size: 30.6 MB (30629607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cacd82ad40afde15f11c5b77bc13d021a53048d91e4ed9a26c5cbf0d5c6e8709`  
		Last Modified: Wed, 29 May 2019 17:05:22 GMT  
		Size: 1.3 MB (1325495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1778a941b4018754c43a0c1527732660447c6f8e014af198a9fe7ef89a9384f1`  
		Last Modified: Wed, 29 May 2019 17:24:20 GMT  
		Size: 487.0 KB (487043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24732dfb34e82e53d4a4e5848ed182e5c1f1249bf4f1c37d892a461eb3387774`  
		Last Modified: Mon, 03 Jun 2019 22:47:46 GMT  
		Size: 13.7 MB (13723780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4251f19f8d03439df624d97f2dd1b3d5ffc4e1736cbd355ce9b35792c60b1c`  
		Last Modified: Mon, 03 Jun 2019 22:48:03 GMT  
		Size: 144.3 MB (144325345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f80b3faf6d0d57650c96e1caca8c9c361e06a68d73bf2832707f3b5033bcc7ca`  
		Last Modified: Mon, 03 Jun 2019 22:47:45 GMT  
		Size: 12.8 MB (12773426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee8cd9d65a4dfa15da9dd8e23570ec6294e3ee6221d0e44e4977a9e4c0c11e8`  
		Last Modified: Mon, 03 Jun 2019 22:47:43 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.23.1-alpine`

```console
$ docker pull ghost@sha256:25ba2be5440ab0dcf0e2e11eeb2b92f1de7861532df83f34c73bc83b023e2dab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le

### `ghost:2.23.1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:8866e8876a53080d00813e8d0ec4bc4eb7d4c768ce1cea63b576e6645a924ec0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.5 MB (218478804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4d29fa5d16dfac7dfe900a6f3795d986cfe7617706dbece8430ca7fec90f786`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 16:25:37 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 17:18:15 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 29 May 2019 17:18:16 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 17:18:20 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 29 May 2019 17:18:20 GMT
CMD ["node"]
# Wed, 29 May 2019 17:40:39 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 29 May 2019 17:40:41 GMT
RUN apk add --no-cache 		bash
# Wed, 29 May 2019 17:40:41 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:21:25 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:21:52 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:21:53 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:21:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:21:53 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:22:42 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 22:22:54 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Mon, 03 Jun 2019 22:22:54 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:22:54 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:22:55 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Mon, 03 Jun 2019 22:22:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:22:55 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:22:55 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbec467490661835c5dcf69e5b09954d1f355ab5a7b2ba24bdfad236e19814ff`  
		Last Modified: Wed, 29 May 2019 17:22:49 GMT  
		Size: 21.4 MB (21430339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e5cf82282d283e6aba9c177b94d2cf52fde0daf6e8d26508129efb044638b6`  
		Last Modified: Wed, 29 May 2019 17:22:42 GMT  
		Size: 1.3 MB (1334654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b0d885793abf90747bc9ba68207bab50a32278f43fea74857364ab770ca390`  
		Last Modified: Wed, 29 May 2019 17:43:00 GMT  
		Size: 9.7 KB (9680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa8cd7c8e2df63cc84948c95983f7595aec3dbde9e78235dc3d29dbc9c647ca3`  
		Last Modified: Wed, 29 May 2019 17:42:55 GMT  
		Size: 1.2 MB (1176754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c14eef944fd0e052c20cbe5fbf3b138779797e048ba0e0f249af4b4a17f3e1`  
		Last Modified: Mon, 03 Jun 2019 22:26:41 GMT  
		Size: 13.7 MB (13728540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827dc5aa8da66837da22a389143d6749ea9ae143e928925d88c5d76a710cce9f`  
		Last Modified: Mon, 03 Jun 2019 22:27:09 GMT  
		Size: 167.1 MB (167109907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736f1025e7b0dccedc352edd017fb874cbbc1fea81cb0360e90e6dd561c79eb7`  
		Last Modified: Mon, 03 Jun 2019 22:26:36 GMT  
		Size: 10.9 MB (10931351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93811388628ec5bdf8f6999a0ffcb146beb197271edae41ad11923735bbdf516`  
		Last Modified: Mon, 03 Jun 2019 22:26:35 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.23.1-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:102bf4b991de59ae05009cf3ce16b67ed6aad2e2b2d397d17f515588f81b974f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.9 MB (195875299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f8260f6bf8dfaea7e6425dee583e4f2ae27806368d17d9cfcf4bd4c76477c84`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 16:49:43 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 16:54:32 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 29 May 2019 16:54:33 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 16:54:37 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 29 May 2019 16:54:37 GMT
CMD ["node"]
# Wed, 29 May 2019 17:10:35 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 29 May 2019 17:10:40 GMT
RUN apk add --no-cache 		bash
# Wed, 29 May 2019 17:10:41 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:49:20 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:49:56 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:49:58 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:49:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:49:59 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:51:37 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 22:55:01 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Mon, 03 Jun 2019 22:55:01 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:55:02 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:55:02 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Mon, 03 Jun 2019 22:55:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:55:03 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:55:03 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691caa3eeb33ffbe807e8abf7ad147b9831811fc6b21b3ece07fe910377bde8b`  
		Last Modified: Wed, 29 May 2019 16:55:07 GMT  
		Size: 20.6 MB (20580505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05fa9d74d670d9755cca13f4350a73f959fc7683dc9bbed2501889c52fa37a9`  
		Last Modified: Wed, 29 May 2019 16:54:59 GMT  
		Size: 1.3 MB (1334709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d0eabec97c921312d3b50dde7a9a0085b9c3830744ad508e5a4710649fa48f`  
		Last Modified: Wed, 29 May 2019 17:16:52 GMT  
		Size: 9.5 KB (9485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014dd8348fd3e5a84c258d88cfc6d87884a02c0d228f035adbcdbf1496a0b54b`  
		Last Modified: Wed, 29 May 2019 17:16:47 GMT  
		Size: 1.1 MB (1121971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4efd3736180fbd90e3b03f44ad8f202cbde657c367b521587bf1460ab76d29`  
		Last Modified: Mon, 03 Jun 2019 23:01:25 GMT  
		Size: 13.7 MB (13732474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dedd4f992c6f5db4d75b8e0f5f24c5897aefd80668de6e1f49762d1a6458d4b1`  
		Last Modified: Mon, 03 Jun 2019 23:02:07 GMT  
		Size: 144.3 MB (144304486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ae87b71a2840b7d42774357e1648200e70015971a304cf0953c469b290a6c0`  
		Last Modified: Mon, 03 Jun 2019 23:01:23 GMT  
		Size: 12.2 MB (12247695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc2489416e057a692f6c468808ad473fd7ca734afdc1d1269a8741303f6433d8`  
		Last Modified: Mon, 03 Jun 2019 23:01:19 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.23.1-alpine` - linux; 386

```console
$ docker pull ghost@sha256:785d696034abf6914113df9c17652763919e5a6cff01c862d66d43f941e89ab3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 MB (197359989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f06ed64be05b14c026d7fa862e6f123fd1f27a2a2ca946cb8b5b769ccc42913`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 16:39:17 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 17:26:25 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 29 May 2019 17:26:25 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 17:26:28 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 29 May 2019 17:26:28 GMT
CMD ["node"]
# Wed, 29 May 2019 17:43:29 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 29 May 2019 17:43:30 GMT
RUN apk add --no-cache 		bash
# Wed, 29 May 2019 17:43:31 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:41:36 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:41:54 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:41:55 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:41:55 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:41:55 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:42:41 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 22:44:35 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Mon, 03 Jun 2019 22:44:35 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:44:35 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:44:36 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Mon, 03 Jun 2019 22:44:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:44:36 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:44:36 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5085b6b7fb081fc251af55fa602375de69fbd4a8eab52035c880fd7d15a2ae06`  
		Last Modified: Wed, 29 May 2019 17:27:01 GMT  
		Size: 21.5 MB (21525639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b20c1a37383155ac701b155ad41610e098e84c492cd21a8f9a120d724127cc`  
		Last Modified: Wed, 29 May 2019 17:26:56 GMT  
		Size: 1.3 MB (1334715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8bc9b753e1bf8aa21f7c3d1da139f68eb283542f061c2d6d6c8cb253acd426b`  
		Last Modified: Wed, 29 May 2019 17:46:56 GMT  
		Size: 9.7 KB (9747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb5185cf14ae0b4650c16deabc2b6a10fd4584aeefa35be65642bccad19cb64`  
		Last Modified: Wed, 29 May 2019 17:46:56 GMT  
		Size: 1.2 MB (1223745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41dfde63924a7433b7732c90530f8336dee76b0f799284c1a961d0a6b715d599`  
		Last Modified: Mon, 03 Jun 2019 22:47:54 GMT  
		Size: 13.7 MB (13725551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e119bc3b67a0ef1ae9d0118f1f8e674156af7bbf6bcfbcf6d03a8811b2966ab1`  
		Last Modified: Mon, 03 Jun 2019 22:48:24 GMT  
		Size: 144.3 MB (144299167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618c64af6e6bb62b910dd868e7b9507cdb6dbb8b15e224a27ef3b669109d61d8`  
		Last Modified: Mon, 03 Jun 2019 22:47:48 GMT  
		Size: 12.5 MB (12488786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a3da61c4486312711d5d1afe526f79febb3da3104866a1add779de1d646581`  
		Last Modified: Mon, 03 Jun 2019 22:47:45 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.23.1-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:280f05abd07b298b4539b3572f0400e8ad4e898cb9a5ddfe60fc0b06fd03178f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.1 MB (200135144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b027203f98d5589eea30fac8f3c621b12f81a5d7fc17f40f7abd1656660332a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 19:58:31 GMT
ENV NODE_VERSION=10.16.0
# Thu, 30 May 2019 20:13:49 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 30 May 2019 20:13:54 GMT
ENV YARN_VERSION=1.16.0
# Thu, 30 May 2019 20:14:06 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 30 May 2019 20:14:09 GMT
CMD ["node"]
# Thu, 30 May 2019 21:52:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 30 May 2019 21:53:15 GMT
RUN apk add --no-cache 		bash
# Thu, 30 May 2019 21:53:17 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:26:28 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:27:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:27:11 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:27:13 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:27:16 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:31:51 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 22:34:32 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Mon, 03 Jun 2019 22:34:36 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:34:39 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:34:40 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Mon, 03 Jun 2019 22:34:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:34:45 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:34:48 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116e0b945f577ea77bee788c7d9edfe39191af855502fbb249447ddfe3d177a7`  
		Last Modified: Thu, 30 May 2019 20:26:02 GMT  
		Size: 23.3 MB (23308594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d349d00bf97db7d9c3daec22c43144ea6cef05aaffde875992b2340a43e8bc0d`  
		Last Modified: Thu, 30 May 2019 20:25:55 GMT  
		Size: 1.3 MB (1334719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304df1cadc92332956bf447f119002057f4d6f559b1df200559f509b188580b4`  
		Last Modified: Thu, 30 May 2019 22:19:53 GMT  
		Size: 10.2 KB (10239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b28f43227c6b8d0b07948864cbe2ff970df3dd62e7e9e4d1eb937bb68b3704f`  
		Last Modified: Thu, 30 May 2019 22:19:54 GMT  
		Size: 1.3 MB (1257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e740e54939ca8f29bf926bce8a45fd71c4dd9eb5b02a8b3b339a3f03fde663e1`  
		Last Modified: Mon, 03 Jun 2019 22:54:21 GMT  
		Size: 13.7 MB (13725117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b057424cd1a46bd35dadb90be30ed8ca1b1c249fc7553506cbd5e6d1827e5ad3`  
		Last Modified: Mon, 03 Jun 2019 22:55:54 GMT  
		Size: 144.3 MB (144335665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a427bbf1c46e599d75c75901e4d8cf71cd283ee0706c04f4d12177103c87bd9`  
		Last Modified: Mon, 03 Jun 2019 22:54:03 GMT  
		Size: 13.4 MB (13381327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9634ed58f1cf31e26958182436074165acdd119aed9da5c5795041fa5bdc8f6b`  
		Last Modified: Mon, 03 Jun 2019 22:53:53 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.23-alpine`

```console
$ docker pull ghost@sha256:25ba2be5440ab0dcf0e2e11eeb2b92f1de7861532df83f34c73bc83b023e2dab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le

### `ghost:2.23-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:8866e8876a53080d00813e8d0ec4bc4eb7d4c768ce1cea63b576e6645a924ec0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.5 MB (218478804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4d29fa5d16dfac7dfe900a6f3795d986cfe7617706dbece8430ca7fec90f786`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 16:25:37 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 17:18:15 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 29 May 2019 17:18:16 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 17:18:20 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 29 May 2019 17:18:20 GMT
CMD ["node"]
# Wed, 29 May 2019 17:40:39 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 29 May 2019 17:40:41 GMT
RUN apk add --no-cache 		bash
# Wed, 29 May 2019 17:40:41 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:21:25 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:21:52 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:21:53 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:21:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:21:53 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:22:42 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 22:22:54 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Mon, 03 Jun 2019 22:22:54 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:22:54 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:22:55 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Mon, 03 Jun 2019 22:22:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:22:55 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:22:55 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbec467490661835c5dcf69e5b09954d1f355ab5a7b2ba24bdfad236e19814ff`  
		Last Modified: Wed, 29 May 2019 17:22:49 GMT  
		Size: 21.4 MB (21430339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e5cf82282d283e6aba9c177b94d2cf52fde0daf6e8d26508129efb044638b6`  
		Last Modified: Wed, 29 May 2019 17:22:42 GMT  
		Size: 1.3 MB (1334654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b0d885793abf90747bc9ba68207bab50a32278f43fea74857364ab770ca390`  
		Last Modified: Wed, 29 May 2019 17:43:00 GMT  
		Size: 9.7 KB (9680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa8cd7c8e2df63cc84948c95983f7595aec3dbde9e78235dc3d29dbc9c647ca3`  
		Last Modified: Wed, 29 May 2019 17:42:55 GMT  
		Size: 1.2 MB (1176754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c14eef944fd0e052c20cbe5fbf3b138779797e048ba0e0f249af4b4a17f3e1`  
		Last Modified: Mon, 03 Jun 2019 22:26:41 GMT  
		Size: 13.7 MB (13728540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827dc5aa8da66837da22a389143d6749ea9ae143e928925d88c5d76a710cce9f`  
		Last Modified: Mon, 03 Jun 2019 22:27:09 GMT  
		Size: 167.1 MB (167109907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736f1025e7b0dccedc352edd017fb874cbbc1fea81cb0360e90e6dd561c79eb7`  
		Last Modified: Mon, 03 Jun 2019 22:26:36 GMT  
		Size: 10.9 MB (10931351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93811388628ec5bdf8f6999a0ffcb146beb197271edae41ad11923735bbdf516`  
		Last Modified: Mon, 03 Jun 2019 22:26:35 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.23-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:102bf4b991de59ae05009cf3ce16b67ed6aad2e2b2d397d17f515588f81b974f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.9 MB (195875299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f8260f6bf8dfaea7e6425dee583e4f2ae27806368d17d9cfcf4bd4c76477c84`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 16:49:43 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 16:54:32 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 29 May 2019 16:54:33 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 16:54:37 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 29 May 2019 16:54:37 GMT
CMD ["node"]
# Wed, 29 May 2019 17:10:35 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 29 May 2019 17:10:40 GMT
RUN apk add --no-cache 		bash
# Wed, 29 May 2019 17:10:41 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:49:20 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:49:56 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:49:58 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:49:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:49:59 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:51:37 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 22:55:01 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Mon, 03 Jun 2019 22:55:01 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:55:02 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:55:02 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Mon, 03 Jun 2019 22:55:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:55:03 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:55:03 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691caa3eeb33ffbe807e8abf7ad147b9831811fc6b21b3ece07fe910377bde8b`  
		Last Modified: Wed, 29 May 2019 16:55:07 GMT  
		Size: 20.6 MB (20580505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05fa9d74d670d9755cca13f4350a73f959fc7683dc9bbed2501889c52fa37a9`  
		Last Modified: Wed, 29 May 2019 16:54:59 GMT  
		Size: 1.3 MB (1334709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d0eabec97c921312d3b50dde7a9a0085b9c3830744ad508e5a4710649fa48f`  
		Last Modified: Wed, 29 May 2019 17:16:52 GMT  
		Size: 9.5 KB (9485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014dd8348fd3e5a84c258d88cfc6d87884a02c0d228f035adbcdbf1496a0b54b`  
		Last Modified: Wed, 29 May 2019 17:16:47 GMT  
		Size: 1.1 MB (1121971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4efd3736180fbd90e3b03f44ad8f202cbde657c367b521587bf1460ab76d29`  
		Last Modified: Mon, 03 Jun 2019 23:01:25 GMT  
		Size: 13.7 MB (13732474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dedd4f992c6f5db4d75b8e0f5f24c5897aefd80668de6e1f49762d1a6458d4b1`  
		Last Modified: Mon, 03 Jun 2019 23:02:07 GMT  
		Size: 144.3 MB (144304486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ae87b71a2840b7d42774357e1648200e70015971a304cf0953c469b290a6c0`  
		Last Modified: Mon, 03 Jun 2019 23:01:23 GMT  
		Size: 12.2 MB (12247695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc2489416e057a692f6c468808ad473fd7ca734afdc1d1269a8741303f6433d8`  
		Last Modified: Mon, 03 Jun 2019 23:01:19 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.23-alpine` - linux; 386

```console
$ docker pull ghost@sha256:785d696034abf6914113df9c17652763919e5a6cff01c862d66d43f941e89ab3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 MB (197359989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f06ed64be05b14c026d7fa862e6f123fd1f27a2a2ca946cb8b5b769ccc42913`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 16:39:17 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 17:26:25 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 29 May 2019 17:26:25 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 17:26:28 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 29 May 2019 17:26:28 GMT
CMD ["node"]
# Wed, 29 May 2019 17:43:29 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 29 May 2019 17:43:30 GMT
RUN apk add --no-cache 		bash
# Wed, 29 May 2019 17:43:31 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:41:36 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:41:54 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:41:55 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:41:55 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:41:55 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:42:41 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 22:44:35 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Mon, 03 Jun 2019 22:44:35 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:44:35 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:44:36 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Mon, 03 Jun 2019 22:44:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:44:36 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:44:36 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5085b6b7fb081fc251af55fa602375de69fbd4a8eab52035c880fd7d15a2ae06`  
		Last Modified: Wed, 29 May 2019 17:27:01 GMT  
		Size: 21.5 MB (21525639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b20c1a37383155ac701b155ad41610e098e84c492cd21a8f9a120d724127cc`  
		Last Modified: Wed, 29 May 2019 17:26:56 GMT  
		Size: 1.3 MB (1334715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8bc9b753e1bf8aa21f7c3d1da139f68eb283542f061c2d6d6c8cb253acd426b`  
		Last Modified: Wed, 29 May 2019 17:46:56 GMT  
		Size: 9.7 KB (9747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb5185cf14ae0b4650c16deabc2b6a10fd4584aeefa35be65642bccad19cb64`  
		Last Modified: Wed, 29 May 2019 17:46:56 GMT  
		Size: 1.2 MB (1223745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41dfde63924a7433b7732c90530f8336dee76b0f799284c1a961d0a6b715d599`  
		Last Modified: Mon, 03 Jun 2019 22:47:54 GMT  
		Size: 13.7 MB (13725551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e119bc3b67a0ef1ae9d0118f1f8e674156af7bbf6bcfbcf6d03a8811b2966ab1`  
		Last Modified: Mon, 03 Jun 2019 22:48:24 GMT  
		Size: 144.3 MB (144299167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618c64af6e6bb62b910dd868e7b9507cdb6dbb8b15e224a27ef3b669109d61d8`  
		Last Modified: Mon, 03 Jun 2019 22:47:48 GMT  
		Size: 12.5 MB (12488786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a3da61c4486312711d5d1afe526f79febb3da3104866a1add779de1d646581`  
		Last Modified: Mon, 03 Jun 2019 22:47:45 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.23-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:280f05abd07b298b4539b3572f0400e8ad4e898cb9a5ddfe60fc0b06fd03178f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.1 MB (200135144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b027203f98d5589eea30fac8f3c621b12f81a5d7fc17f40f7abd1656660332a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 19:58:31 GMT
ENV NODE_VERSION=10.16.0
# Thu, 30 May 2019 20:13:49 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 30 May 2019 20:13:54 GMT
ENV YARN_VERSION=1.16.0
# Thu, 30 May 2019 20:14:06 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 30 May 2019 20:14:09 GMT
CMD ["node"]
# Thu, 30 May 2019 21:52:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 30 May 2019 21:53:15 GMT
RUN apk add --no-cache 		bash
# Thu, 30 May 2019 21:53:17 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:26:28 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:27:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:27:11 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:27:13 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:27:16 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:31:51 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 22:34:32 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Mon, 03 Jun 2019 22:34:36 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:34:39 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:34:40 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Mon, 03 Jun 2019 22:34:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:34:45 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:34:48 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116e0b945f577ea77bee788c7d9edfe39191af855502fbb249447ddfe3d177a7`  
		Last Modified: Thu, 30 May 2019 20:26:02 GMT  
		Size: 23.3 MB (23308594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d349d00bf97db7d9c3daec22c43144ea6cef05aaffde875992b2340a43e8bc0d`  
		Last Modified: Thu, 30 May 2019 20:25:55 GMT  
		Size: 1.3 MB (1334719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304df1cadc92332956bf447f119002057f4d6f559b1df200559f509b188580b4`  
		Last Modified: Thu, 30 May 2019 22:19:53 GMT  
		Size: 10.2 KB (10239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b28f43227c6b8d0b07948864cbe2ff970df3dd62e7e9e4d1eb937bb68b3704f`  
		Last Modified: Thu, 30 May 2019 22:19:54 GMT  
		Size: 1.3 MB (1257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e740e54939ca8f29bf926bce8a45fd71c4dd9eb5b02a8b3b339a3f03fde663e1`  
		Last Modified: Mon, 03 Jun 2019 22:54:21 GMT  
		Size: 13.7 MB (13725117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b057424cd1a46bd35dadb90be30ed8ca1b1c249fc7553506cbd5e6d1827e5ad3`  
		Last Modified: Mon, 03 Jun 2019 22:55:54 GMT  
		Size: 144.3 MB (144335665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a427bbf1c46e599d75c75901e4d8cf71cd283ee0706c04f4d12177103c87bd9`  
		Last Modified: Mon, 03 Jun 2019 22:54:03 GMT  
		Size: 13.4 MB (13381327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9634ed58f1cf31e26958182436074165acdd119aed9da5c5795041fa5bdc8f6b`  
		Last Modified: Mon, 03 Jun 2019 22:53:53 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2-alpine`

```console
$ docker pull ghost@sha256:25ba2be5440ab0dcf0e2e11eeb2b92f1de7861532df83f34c73bc83b023e2dab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le

### `ghost:2-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:8866e8876a53080d00813e8d0ec4bc4eb7d4c768ce1cea63b576e6645a924ec0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.5 MB (218478804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4d29fa5d16dfac7dfe900a6f3795d986cfe7617706dbece8430ca7fec90f786`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 16:25:37 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 17:18:15 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 29 May 2019 17:18:16 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 17:18:20 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 29 May 2019 17:18:20 GMT
CMD ["node"]
# Wed, 29 May 2019 17:40:39 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 29 May 2019 17:40:41 GMT
RUN apk add --no-cache 		bash
# Wed, 29 May 2019 17:40:41 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:21:25 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:21:52 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:21:53 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:21:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:21:53 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:22:42 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 22:22:54 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Mon, 03 Jun 2019 22:22:54 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:22:54 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:22:55 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Mon, 03 Jun 2019 22:22:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:22:55 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:22:55 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbec467490661835c5dcf69e5b09954d1f355ab5a7b2ba24bdfad236e19814ff`  
		Last Modified: Wed, 29 May 2019 17:22:49 GMT  
		Size: 21.4 MB (21430339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e5cf82282d283e6aba9c177b94d2cf52fde0daf6e8d26508129efb044638b6`  
		Last Modified: Wed, 29 May 2019 17:22:42 GMT  
		Size: 1.3 MB (1334654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b0d885793abf90747bc9ba68207bab50a32278f43fea74857364ab770ca390`  
		Last Modified: Wed, 29 May 2019 17:43:00 GMT  
		Size: 9.7 KB (9680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa8cd7c8e2df63cc84948c95983f7595aec3dbde9e78235dc3d29dbc9c647ca3`  
		Last Modified: Wed, 29 May 2019 17:42:55 GMT  
		Size: 1.2 MB (1176754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c14eef944fd0e052c20cbe5fbf3b138779797e048ba0e0f249af4b4a17f3e1`  
		Last Modified: Mon, 03 Jun 2019 22:26:41 GMT  
		Size: 13.7 MB (13728540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827dc5aa8da66837da22a389143d6749ea9ae143e928925d88c5d76a710cce9f`  
		Last Modified: Mon, 03 Jun 2019 22:27:09 GMT  
		Size: 167.1 MB (167109907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736f1025e7b0dccedc352edd017fb874cbbc1fea81cb0360e90e6dd561c79eb7`  
		Last Modified: Mon, 03 Jun 2019 22:26:36 GMT  
		Size: 10.9 MB (10931351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93811388628ec5bdf8f6999a0ffcb146beb197271edae41ad11923735bbdf516`  
		Last Modified: Mon, 03 Jun 2019 22:26:35 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:102bf4b991de59ae05009cf3ce16b67ed6aad2e2b2d397d17f515588f81b974f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.9 MB (195875299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f8260f6bf8dfaea7e6425dee583e4f2ae27806368d17d9cfcf4bd4c76477c84`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 16:49:43 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 16:54:32 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 29 May 2019 16:54:33 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 16:54:37 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 29 May 2019 16:54:37 GMT
CMD ["node"]
# Wed, 29 May 2019 17:10:35 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 29 May 2019 17:10:40 GMT
RUN apk add --no-cache 		bash
# Wed, 29 May 2019 17:10:41 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:49:20 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:49:56 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:49:58 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:49:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:49:59 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:51:37 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 22:55:01 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Mon, 03 Jun 2019 22:55:01 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:55:02 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:55:02 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Mon, 03 Jun 2019 22:55:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:55:03 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:55:03 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691caa3eeb33ffbe807e8abf7ad147b9831811fc6b21b3ece07fe910377bde8b`  
		Last Modified: Wed, 29 May 2019 16:55:07 GMT  
		Size: 20.6 MB (20580505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05fa9d74d670d9755cca13f4350a73f959fc7683dc9bbed2501889c52fa37a9`  
		Last Modified: Wed, 29 May 2019 16:54:59 GMT  
		Size: 1.3 MB (1334709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d0eabec97c921312d3b50dde7a9a0085b9c3830744ad508e5a4710649fa48f`  
		Last Modified: Wed, 29 May 2019 17:16:52 GMT  
		Size: 9.5 KB (9485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014dd8348fd3e5a84c258d88cfc6d87884a02c0d228f035adbcdbf1496a0b54b`  
		Last Modified: Wed, 29 May 2019 17:16:47 GMT  
		Size: 1.1 MB (1121971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4efd3736180fbd90e3b03f44ad8f202cbde657c367b521587bf1460ab76d29`  
		Last Modified: Mon, 03 Jun 2019 23:01:25 GMT  
		Size: 13.7 MB (13732474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dedd4f992c6f5db4d75b8e0f5f24c5897aefd80668de6e1f49762d1a6458d4b1`  
		Last Modified: Mon, 03 Jun 2019 23:02:07 GMT  
		Size: 144.3 MB (144304486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ae87b71a2840b7d42774357e1648200e70015971a304cf0953c469b290a6c0`  
		Last Modified: Mon, 03 Jun 2019 23:01:23 GMT  
		Size: 12.2 MB (12247695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc2489416e057a692f6c468808ad473fd7ca734afdc1d1269a8741303f6433d8`  
		Last Modified: Mon, 03 Jun 2019 23:01:19 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; 386

```console
$ docker pull ghost@sha256:785d696034abf6914113df9c17652763919e5a6cff01c862d66d43f941e89ab3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 MB (197359989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f06ed64be05b14c026d7fa862e6f123fd1f27a2a2ca946cb8b5b769ccc42913`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 16:39:17 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 17:26:25 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 29 May 2019 17:26:25 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 17:26:28 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 29 May 2019 17:26:28 GMT
CMD ["node"]
# Wed, 29 May 2019 17:43:29 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 29 May 2019 17:43:30 GMT
RUN apk add --no-cache 		bash
# Wed, 29 May 2019 17:43:31 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:41:36 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:41:54 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:41:55 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:41:55 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:41:55 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:42:41 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 22:44:35 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Mon, 03 Jun 2019 22:44:35 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:44:35 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:44:36 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Mon, 03 Jun 2019 22:44:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:44:36 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:44:36 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5085b6b7fb081fc251af55fa602375de69fbd4a8eab52035c880fd7d15a2ae06`  
		Last Modified: Wed, 29 May 2019 17:27:01 GMT  
		Size: 21.5 MB (21525639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b20c1a37383155ac701b155ad41610e098e84c492cd21a8f9a120d724127cc`  
		Last Modified: Wed, 29 May 2019 17:26:56 GMT  
		Size: 1.3 MB (1334715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8bc9b753e1bf8aa21f7c3d1da139f68eb283542f061c2d6d6c8cb253acd426b`  
		Last Modified: Wed, 29 May 2019 17:46:56 GMT  
		Size: 9.7 KB (9747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb5185cf14ae0b4650c16deabc2b6a10fd4584aeefa35be65642bccad19cb64`  
		Last Modified: Wed, 29 May 2019 17:46:56 GMT  
		Size: 1.2 MB (1223745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41dfde63924a7433b7732c90530f8336dee76b0f799284c1a961d0a6b715d599`  
		Last Modified: Mon, 03 Jun 2019 22:47:54 GMT  
		Size: 13.7 MB (13725551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e119bc3b67a0ef1ae9d0118f1f8e674156af7bbf6bcfbcf6d03a8811b2966ab1`  
		Last Modified: Mon, 03 Jun 2019 22:48:24 GMT  
		Size: 144.3 MB (144299167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618c64af6e6bb62b910dd868e7b9507cdb6dbb8b15e224a27ef3b669109d61d8`  
		Last Modified: Mon, 03 Jun 2019 22:47:48 GMT  
		Size: 12.5 MB (12488786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a3da61c4486312711d5d1afe526f79febb3da3104866a1add779de1d646581`  
		Last Modified: Mon, 03 Jun 2019 22:47:45 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:280f05abd07b298b4539b3572f0400e8ad4e898cb9a5ddfe60fc0b06fd03178f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.1 MB (200135144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b027203f98d5589eea30fac8f3c621b12f81a5d7fc17f40f7abd1656660332a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 19:58:31 GMT
ENV NODE_VERSION=10.16.0
# Thu, 30 May 2019 20:13:49 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 30 May 2019 20:13:54 GMT
ENV YARN_VERSION=1.16.0
# Thu, 30 May 2019 20:14:06 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 30 May 2019 20:14:09 GMT
CMD ["node"]
# Thu, 30 May 2019 21:52:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 30 May 2019 21:53:15 GMT
RUN apk add --no-cache 		bash
# Thu, 30 May 2019 21:53:17 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:26:28 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:27:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:27:11 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:27:13 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:27:16 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:31:51 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 22:34:32 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Mon, 03 Jun 2019 22:34:36 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:34:39 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:34:40 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Mon, 03 Jun 2019 22:34:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:34:45 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:34:48 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116e0b945f577ea77bee788c7d9edfe39191af855502fbb249447ddfe3d177a7`  
		Last Modified: Thu, 30 May 2019 20:26:02 GMT  
		Size: 23.3 MB (23308594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d349d00bf97db7d9c3daec22c43144ea6cef05aaffde875992b2340a43e8bc0d`  
		Last Modified: Thu, 30 May 2019 20:25:55 GMT  
		Size: 1.3 MB (1334719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304df1cadc92332956bf447f119002057f4d6f559b1df200559f509b188580b4`  
		Last Modified: Thu, 30 May 2019 22:19:53 GMT  
		Size: 10.2 KB (10239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b28f43227c6b8d0b07948864cbe2ff970df3dd62e7e9e4d1eb937bb68b3704f`  
		Last Modified: Thu, 30 May 2019 22:19:54 GMT  
		Size: 1.3 MB (1257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e740e54939ca8f29bf926bce8a45fd71c4dd9eb5b02a8b3b339a3f03fde663e1`  
		Last Modified: Mon, 03 Jun 2019 22:54:21 GMT  
		Size: 13.7 MB (13725117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b057424cd1a46bd35dadb90be30ed8ca1b1c249fc7553506cbd5e6d1827e5ad3`  
		Last Modified: Mon, 03 Jun 2019 22:55:54 GMT  
		Size: 144.3 MB (144335665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a427bbf1c46e599d75c75901e4d8cf71cd283ee0706c04f4d12177103c87bd9`  
		Last Modified: Mon, 03 Jun 2019 22:54:03 GMT  
		Size: 13.4 MB (13381327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9634ed58f1cf31e26958182436074165acdd119aed9da5c5795041fa5bdc8f6b`  
		Last Modified: Mon, 03 Jun 2019 22:53:53 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:25ba2be5440ab0dcf0e2e11eeb2b92f1de7861532df83f34c73bc83b023e2dab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:8866e8876a53080d00813e8d0ec4bc4eb7d4c768ce1cea63b576e6645a924ec0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.5 MB (218478804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4d29fa5d16dfac7dfe900a6f3795d986cfe7617706dbece8430ca7fec90f786`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 16:25:37 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 17:18:15 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 29 May 2019 17:18:16 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 17:18:20 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 29 May 2019 17:18:20 GMT
CMD ["node"]
# Wed, 29 May 2019 17:40:39 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 29 May 2019 17:40:41 GMT
RUN apk add --no-cache 		bash
# Wed, 29 May 2019 17:40:41 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:21:25 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:21:52 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:21:53 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:21:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:21:53 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:22:42 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 22:22:54 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Mon, 03 Jun 2019 22:22:54 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:22:54 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:22:55 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Mon, 03 Jun 2019 22:22:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:22:55 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:22:55 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbec467490661835c5dcf69e5b09954d1f355ab5a7b2ba24bdfad236e19814ff`  
		Last Modified: Wed, 29 May 2019 17:22:49 GMT  
		Size: 21.4 MB (21430339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e5cf82282d283e6aba9c177b94d2cf52fde0daf6e8d26508129efb044638b6`  
		Last Modified: Wed, 29 May 2019 17:22:42 GMT  
		Size: 1.3 MB (1334654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b0d885793abf90747bc9ba68207bab50a32278f43fea74857364ab770ca390`  
		Last Modified: Wed, 29 May 2019 17:43:00 GMT  
		Size: 9.7 KB (9680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa8cd7c8e2df63cc84948c95983f7595aec3dbde9e78235dc3d29dbc9c647ca3`  
		Last Modified: Wed, 29 May 2019 17:42:55 GMT  
		Size: 1.2 MB (1176754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c14eef944fd0e052c20cbe5fbf3b138779797e048ba0e0f249af4b4a17f3e1`  
		Last Modified: Mon, 03 Jun 2019 22:26:41 GMT  
		Size: 13.7 MB (13728540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827dc5aa8da66837da22a389143d6749ea9ae143e928925d88c5d76a710cce9f`  
		Last Modified: Mon, 03 Jun 2019 22:27:09 GMT  
		Size: 167.1 MB (167109907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736f1025e7b0dccedc352edd017fb874cbbc1fea81cb0360e90e6dd561c79eb7`  
		Last Modified: Mon, 03 Jun 2019 22:26:36 GMT  
		Size: 10.9 MB (10931351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93811388628ec5bdf8f6999a0ffcb146beb197271edae41ad11923735bbdf516`  
		Last Modified: Mon, 03 Jun 2019 22:26:35 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:102bf4b991de59ae05009cf3ce16b67ed6aad2e2b2d397d17f515588f81b974f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.9 MB (195875299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f8260f6bf8dfaea7e6425dee583e4f2ae27806368d17d9cfcf4bd4c76477c84`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 16:49:43 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 16:54:32 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 29 May 2019 16:54:33 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 16:54:37 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 29 May 2019 16:54:37 GMT
CMD ["node"]
# Wed, 29 May 2019 17:10:35 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 29 May 2019 17:10:40 GMT
RUN apk add --no-cache 		bash
# Wed, 29 May 2019 17:10:41 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:49:20 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:49:56 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:49:58 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:49:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:49:59 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:51:37 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 22:55:01 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Mon, 03 Jun 2019 22:55:01 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:55:02 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:55:02 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Mon, 03 Jun 2019 22:55:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:55:03 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:55:03 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691caa3eeb33ffbe807e8abf7ad147b9831811fc6b21b3ece07fe910377bde8b`  
		Last Modified: Wed, 29 May 2019 16:55:07 GMT  
		Size: 20.6 MB (20580505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05fa9d74d670d9755cca13f4350a73f959fc7683dc9bbed2501889c52fa37a9`  
		Last Modified: Wed, 29 May 2019 16:54:59 GMT  
		Size: 1.3 MB (1334709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d0eabec97c921312d3b50dde7a9a0085b9c3830744ad508e5a4710649fa48f`  
		Last Modified: Wed, 29 May 2019 17:16:52 GMT  
		Size: 9.5 KB (9485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014dd8348fd3e5a84c258d88cfc6d87884a02c0d228f035adbcdbf1496a0b54b`  
		Last Modified: Wed, 29 May 2019 17:16:47 GMT  
		Size: 1.1 MB (1121971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4efd3736180fbd90e3b03f44ad8f202cbde657c367b521587bf1460ab76d29`  
		Last Modified: Mon, 03 Jun 2019 23:01:25 GMT  
		Size: 13.7 MB (13732474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dedd4f992c6f5db4d75b8e0f5f24c5897aefd80668de6e1f49762d1a6458d4b1`  
		Last Modified: Mon, 03 Jun 2019 23:02:07 GMT  
		Size: 144.3 MB (144304486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ae87b71a2840b7d42774357e1648200e70015971a304cf0953c469b290a6c0`  
		Last Modified: Mon, 03 Jun 2019 23:01:23 GMT  
		Size: 12.2 MB (12247695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc2489416e057a692f6c468808ad473fd7ca734afdc1d1269a8741303f6433d8`  
		Last Modified: Mon, 03 Jun 2019 23:01:19 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; 386

```console
$ docker pull ghost@sha256:785d696034abf6914113df9c17652763919e5a6cff01c862d66d43f941e89ab3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 MB (197359989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f06ed64be05b14c026d7fa862e6f123fd1f27a2a2ca946cb8b5b769ccc42913`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 16:39:17 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 17:26:25 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 29 May 2019 17:26:25 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 17:26:28 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 29 May 2019 17:26:28 GMT
CMD ["node"]
# Wed, 29 May 2019 17:43:29 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 29 May 2019 17:43:30 GMT
RUN apk add --no-cache 		bash
# Wed, 29 May 2019 17:43:31 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:41:36 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:41:54 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:41:55 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:41:55 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:41:55 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:42:41 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 22:44:35 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Mon, 03 Jun 2019 22:44:35 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:44:35 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:44:36 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Mon, 03 Jun 2019 22:44:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:44:36 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:44:36 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5085b6b7fb081fc251af55fa602375de69fbd4a8eab52035c880fd7d15a2ae06`  
		Last Modified: Wed, 29 May 2019 17:27:01 GMT  
		Size: 21.5 MB (21525639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b20c1a37383155ac701b155ad41610e098e84c492cd21a8f9a120d724127cc`  
		Last Modified: Wed, 29 May 2019 17:26:56 GMT  
		Size: 1.3 MB (1334715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8bc9b753e1bf8aa21f7c3d1da139f68eb283542f061c2d6d6c8cb253acd426b`  
		Last Modified: Wed, 29 May 2019 17:46:56 GMT  
		Size: 9.7 KB (9747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb5185cf14ae0b4650c16deabc2b6a10fd4584aeefa35be65642bccad19cb64`  
		Last Modified: Wed, 29 May 2019 17:46:56 GMT  
		Size: 1.2 MB (1223745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41dfde63924a7433b7732c90530f8336dee76b0f799284c1a961d0a6b715d599`  
		Last Modified: Mon, 03 Jun 2019 22:47:54 GMT  
		Size: 13.7 MB (13725551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e119bc3b67a0ef1ae9d0118f1f8e674156af7bbf6bcfbcf6d03a8811b2966ab1`  
		Last Modified: Mon, 03 Jun 2019 22:48:24 GMT  
		Size: 144.3 MB (144299167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618c64af6e6bb62b910dd868e7b9507cdb6dbb8b15e224a27ef3b669109d61d8`  
		Last Modified: Mon, 03 Jun 2019 22:47:48 GMT  
		Size: 12.5 MB (12488786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a3da61c4486312711d5d1afe526f79febb3da3104866a1add779de1d646581`  
		Last Modified: Mon, 03 Jun 2019 22:47:45 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:280f05abd07b298b4539b3572f0400e8ad4e898cb9a5ddfe60fc0b06fd03178f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.1 MB (200135144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b027203f98d5589eea30fac8f3c621b12f81a5d7fc17f40f7abd1656660332a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 19:58:31 GMT
ENV NODE_VERSION=10.16.0
# Thu, 30 May 2019 20:13:49 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 30 May 2019 20:13:54 GMT
ENV YARN_VERSION=1.16.0
# Thu, 30 May 2019 20:14:06 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 30 May 2019 20:14:09 GMT
CMD ["node"]
# Thu, 30 May 2019 21:52:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 30 May 2019 21:53:15 GMT
RUN apk add --no-cache 		bash
# Thu, 30 May 2019 21:53:17 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:26:28 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:27:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:27:11 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:27:13 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:27:16 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:31:51 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 22:34:32 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Mon, 03 Jun 2019 22:34:36 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:34:39 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:34:40 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Mon, 03 Jun 2019 22:34:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:34:45 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:34:48 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116e0b945f577ea77bee788c7d9edfe39191af855502fbb249447ddfe3d177a7`  
		Last Modified: Thu, 30 May 2019 20:26:02 GMT  
		Size: 23.3 MB (23308594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d349d00bf97db7d9c3daec22c43144ea6cef05aaffde875992b2340a43e8bc0d`  
		Last Modified: Thu, 30 May 2019 20:25:55 GMT  
		Size: 1.3 MB (1334719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304df1cadc92332956bf447f119002057f4d6f559b1df200559f509b188580b4`  
		Last Modified: Thu, 30 May 2019 22:19:53 GMT  
		Size: 10.2 KB (10239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b28f43227c6b8d0b07948864cbe2ff970df3dd62e7e9e4d1eb937bb68b3704f`  
		Last Modified: Thu, 30 May 2019 22:19:54 GMT  
		Size: 1.3 MB (1257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e740e54939ca8f29bf926bce8a45fd71c4dd9eb5b02a8b3b339a3f03fde663e1`  
		Last Modified: Mon, 03 Jun 2019 22:54:21 GMT  
		Size: 13.7 MB (13725117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b057424cd1a46bd35dadb90be30ed8ca1b1c249fc7553506cbd5e6d1827e5ad3`  
		Last Modified: Mon, 03 Jun 2019 22:55:54 GMT  
		Size: 144.3 MB (144335665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a427bbf1c46e599d75c75901e4d8cf71cd283ee0706c04f4d12177103c87bd9`  
		Last Modified: Mon, 03 Jun 2019 22:54:03 GMT  
		Size: 13.4 MB (13381327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9634ed58f1cf31e26958182436074165acdd119aed9da5c5795041fa5bdc8f6b`  
		Last Modified: Mon, 03 Jun 2019 22:53:53 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:ba9764d9de0b082ee832aab8a806d5bc51b125779e0cdf32c982ca4ad24929cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `ghost:latest` - linux; amd64

```console
$ docker pull ghost@sha256:433c6231b303dab6b7d7b9621d134d1a6ddde4645e686c17fc3c58b5baffd356
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.7 MB (236654120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:812876742b0c96c827417b3471bd125e1c8ca3aaf5685484ef535e8a88c04ef2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:14:42 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 29 May 2019 17:18:55 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 17:19:24 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 29 May 2019 17:19:24 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 17:19:28 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 29 May 2019 17:19:29 GMT
CMD ["node"]
# Wed, 29 May 2019 17:39:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 May 2019 17:39:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 May 2019 17:39:16 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:19:41 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:20:00 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:20:01 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:20:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:20:01 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:21:04 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 22:21:14 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 22:21:14 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:21:14 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:21:14 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Mon, 03 Jun 2019 22:21:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:21:15 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:21:15 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89252b028f01ddb83169c019a9b0699d670133cd36bd332ed455fe90a8ea4483`  
		Last Modified: Wed, 08 May 2019 02:25:36 GMT  
		Size: 4.1 KB (4146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7214f640d147f9fa3cb7cf3cbe0974c5e0b97457ae172c3e3cbe56b8a9eaef0`  
		Last Modified: Wed, 29 May 2019 17:23:29 GMT  
		Size: 30.9 MB (30900148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d7a6cb9337082b0e946bf3d5ecc7344724d05ee66e208e564c52b458652ded`  
		Last Modified: Wed, 29 May 2019 17:23:19 GMT  
		Size: 1.3 MB (1325496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbae7d9390670611faa77a0640497e04fdd062e64e2319bf9a783c8e7132a84d`  
		Last Modified: Wed, 29 May 2019 17:42:18 GMT  
		Size: 500.9 KB (500917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d658d76ac392062f7ae65304198f8f50e9bb4d685c43d824644d056c32dc9acc`  
		Last Modified: Mon, 03 Jun 2019 22:25:51 GMT  
		Size: 13.7 MB (13726151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce2fda123566538817f0093468baa23a79419af4210d05dd5626a4ac1d1dc63`  
		Last Modified: Mon, 03 Jun 2019 22:26:24 GMT  
		Size: 166.2 MB (166200876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb7c243d74bbff6b4ae36af4858645f27c9ff4bf5e9af375ad696a2aa8ea480a`  
		Last Modified: Mon, 03 Jun 2019 22:25:43 GMT  
		Size: 1.5 MB (1506477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f82bd643c1cb2bd77612b08d9fdacfc9a1a0605d9f51dab0b373414c7f89d5`  
		Last Modified: Mon, 03 Jun 2019 22:25:43 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm variant v7

```console
$ docker pull ghost@sha256:f1ae02a3d0426b06d91ca5ed15ac3ba6d2f4c2300a2cd2f8530bd430ab784b6b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.8 MB (232827947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:306d7142d835706a95c682c791b04408ff8ef68268e544eb3d28c77a42fcb5ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 15:13:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 29 May 2019 17:00:47 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 17:01:24 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 29 May 2019 17:01:25 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 17:01:31 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 29 May 2019 17:01:32 GMT
CMD ["node"]
# Wed, 29 May 2019 17:19:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 May 2019 17:19:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 May 2019 17:19:43 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:57:28 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:57:59 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:58:01 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:58:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:58:02 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:59:07 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 23:02:06 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 23:02:07 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 23:02:07 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 23:02:08 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Mon, 03 Jun 2019 23:02:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 23:02:09 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 23:02:09 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626773d003732b6357a355496b3568eb47daf3e804053223f39baae73cacf817`  
		Last Modified: Wed, 08 May 2019 15:26:06 GMT  
		Size: 4.2 KB (4159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bdeaafb760d782da98da717466de8b977fee0b27f3c367361b034adc11fa273`  
		Last Modified: Wed, 29 May 2019 17:03:59 GMT  
		Size: 28.0 MB (28003481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13f44904188ec2c39449440dc916fdf3d24c9181eb11c859089027bd1415861`  
		Last Modified: Wed, 29 May 2019 17:03:48 GMT  
		Size: 1.3 MB (1325537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17febbe82f6eb7ea8c96a464698dc8ee5fdd22532390b3d1bf34f12f8363583e`  
		Last Modified: Wed, 29 May 2019 17:24:37 GMT  
		Size: 475.4 KB (475436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769471fba657f1037df9cbb3c2df4ccd7e3a8f15c3f1d6e3257505d04b95dcd1`  
		Last Modified: Mon, 03 Jun 2019 23:08:18 GMT  
		Size: 13.7 MB (13728268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998f2fc78f6c29a19574cc3466858acf567eb1156ea31599d7b7f19f20fb9622`  
		Last Modified: Mon, 03 Jun 2019 23:09:00 GMT  
		Size: 150.5 MB (150453204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2970c59bfad73fc545c9b73a6ac02c730893dd15208cf94e5ea2970c287fb22`  
		Last Modified: Mon, 03 Jun 2019 23:08:19 GMT  
		Size: 19.6 MB (19561086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44962baf0a25e06c8b91effc85df29e574d16e12d33d855507ece17e76c4e31`  
		Last Modified: Mon, 03 Jun 2019 23:08:12 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:2f10370490adcbe8ea3524363a3072901fe18cd396b85ca438f97f3661e3b12d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235545698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5b065600e878e4b3f095fb5f13764d5b16e6531efd31de8f99ec1958b3b020`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 22 May 2019 23:44:56 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 29 May 2019 16:46:52 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 16:47:18 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 29 May 2019 16:47:19 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 16:47:23 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 29 May 2019 16:47:24 GMT
CMD ["node"]
# Wed, 29 May 2019 20:39:36 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 May 2019 20:39:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 May 2019 20:39:40 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:39:33 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:39:56 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:39:57 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:39:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:39:58 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:40:54 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 22:43:36 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 22:43:36 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:43:37 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:43:37 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Mon, 03 Jun 2019 22:43:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:43:38 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:43:38 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3921c095c25b350282d51bf3e3b484439b2134a3feee67a2f633ad6f9bc5295`  
		Last Modified: Thu, 23 May 2019 00:08:51 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948a044182c3ee60bba6907697a639dbe3a5a5a299757498ec510e5420f9d5d3`  
		Last Modified: Wed, 29 May 2019 16:49:23 GMT  
		Size: 29.7 MB (29706136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ce87a0522b6222c59cfedbf25ca11125f327c2419ea17e05c798626a9d7238`  
		Last Modified: Wed, 29 May 2019 16:49:13 GMT  
		Size: 1.3 MB (1325532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982894a909a71197b955aed248fc6ad251d3abcb226897244dac05a2ccaa7193`  
		Last Modified: Wed, 29 May 2019 20:48:12 GMT  
		Size: 468.9 KB (468940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6b0527e63fe9c10442071c0c5290e6eda1e5b55136be0185671beef6eaefdb`  
		Last Modified: Mon, 03 Jun 2019 22:48:41 GMT  
		Size: 13.7 MB (13727409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88571a645cd2d20011dbb9cbff23ced168d22fce595154b1a7b18e5acfebabc4`  
		Last Modified: Mon, 03 Jun 2019 22:49:16 GMT  
		Size: 150.3 MB (150301817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861e3179e0d5009de21339c66f626c9ab62afae69ad2bbd10c698dd493781973`  
		Last Modified: Mon, 03 Jun 2019 22:48:43 GMT  
		Size: 19.7 MB (19677308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643bf316c14709ad0c595dcb16e2fd5d86c6da669e2c461b862885a90beb3702`  
		Last Modified: Mon, 03 Jun 2019 22:48:36 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; ppc64le

```console
$ docker pull ghost@sha256:6f87f2b183c8010d426739ceb05e6eb9524e364e097eaa104afcef87117c3d00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.6 MB (225589947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1797743c441cabe65759424b8765544ab04f9eed70b09b0885293be40b8a893`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Thu, 30 May 2019 19:19:31 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 30 May 2019 20:15:15 GMT
ENV NODE_VERSION=10.16.0
# Thu, 30 May 2019 20:16:50 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 30 May 2019 20:16:54 GMT
ENV YARN_VERSION=1.16.0
# Thu, 30 May 2019 20:17:05 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 30 May 2019 20:17:08 GMT
CMD ["node"]
# Thu, 30 May 2019 21:42:05 GMT
ENV GOSU_VERSION=1.10
# Thu, 30 May 2019 21:42:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 30 May 2019 21:42:20 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:16:31 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:17:15 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:17:27 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:17:33 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:17:40 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:20:39 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 22:26:00 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 22:26:05 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:26:08 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:26:11 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Mon, 03 Jun 2019 22:26:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:26:17 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:26:20 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1731a3590c4918a1aa9896862042f09bd0fa20af4e4580153724b905038152dc`  
		Last Modified: Thu, 30 May 2019 20:20:57 GMT  
		Size: 4.2 KB (4179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2185eda95288e897f5f0fd2b371133e5949261a11237136fd80f016a4554526`  
		Last Modified: Thu, 30 May 2019 20:27:13 GMT  
		Size: 30.2 MB (30191757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4294d78c0d1aa2b9591c7ab55ea563b4192230514d06e52ca55484b457ffe044`  
		Last Modified: Thu, 30 May 2019 20:27:02 GMT  
		Size: 1.3 MB (1325535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4cc160f39b684800f101fb2b96de1675e6e2b2d950f25df82d25adb706cef7`  
		Last Modified: Thu, 30 May 2019 22:17:19 GMT  
		Size: 470.1 KB (470076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b85af148ac3812f3b2257137279229344b2eab175d9d2a62964e865187e9b84`  
		Last Modified: Mon, 03 Jun 2019 22:51:28 GMT  
		Size: 13.7 MB (13725421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4f33c12a30f911e1276137d6648fe5a2dcff8edf7afc43773c1da34a7336bb`  
		Last Modified: Mon, 03 Jun 2019 22:53:36 GMT  
		Size: 144.3 MB (144336149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb75c99f6d545fd6e9187ef7b34666b9aecedbba7af38ec897c72c54582ca283`  
		Last Modified: Mon, 03 Jun 2019 22:51:19 GMT  
		Size: 12.8 MB (12791357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bacefc56f4f22363921e96dd2d3435cc66b2c73b559e5271f99578d62194de1c`  
		Last Modified: Mon, 03 Jun 2019 22:51:08 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; s390x

```console
$ docker pull ghost@sha256:945d73f7551708e4f947d6b292376f733b31eb86807e69852b69c19c0ebf9ff2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.6 MB (225608280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6482e9c7d635b3bc66b6eff2a49877d8ff1f51c0c3e4591adfc9ce8fcf282cda`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:12:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 29 May 2019 17:03:31 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 17:03:58 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 29 May 2019 17:03:58 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 17:04:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 29 May 2019 17:04:03 GMT
CMD ["node"]
# Wed, 29 May 2019 17:21:15 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 May 2019 17:21:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 May 2019 17:21:19 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 22:41:35 GMT
ENV GHOST_CLI_VERSION=1.11.0
# Mon, 03 Jun 2019 22:41:50 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Jun 2019 22:41:51 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Jun 2019 22:41:51 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Jun 2019 22:41:51 GMT
ENV GHOST_VERSION=2.23.1
# Mon, 03 Jun 2019 22:42:32 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Jun 2019 22:44:11 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Jun 2019 22:44:11 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Jun 2019 22:44:12 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Jun 2019 22:44:12 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Mon, 03 Jun 2019 22:44:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 22:44:12 GMT
EXPOSE 2368
# Mon, 03 Jun 2019 22:44:13 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d77ccdc5044aabea621dcafff2d8f0ce8fd083c951109df82537c78478a8abc`  
		Last Modified: Wed, 08 May 2019 14:27:47 GMT  
		Size: 4.2 KB (4158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563bbc9c62c3d5d74feac44dc430aee79a2dd3792451c118c3764ec2676749ed`  
		Last Modified: Wed, 29 May 2019 17:05:28 GMT  
		Size: 30.6 MB (30629607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cacd82ad40afde15f11c5b77bc13d021a53048d91e4ed9a26c5cbf0d5c6e8709`  
		Last Modified: Wed, 29 May 2019 17:05:22 GMT  
		Size: 1.3 MB (1325495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1778a941b4018754c43a0c1527732660447c6f8e014af198a9fe7ef89a9384f1`  
		Last Modified: Wed, 29 May 2019 17:24:20 GMT  
		Size: 487.0 KB (487043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24732dfb34e82e53d4a4e5848ed182e5c1f1249bf4f1c37d892a461eb3387774`  
		Last Modified: Mon, 03 Jun 2019 22:47:46 GMT  
		Size: 13.7 MB (13723780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4251f19f8d03439df624d97f2dd1b3d5ffc4e1736cbd355ce9b35792c60b1c`  
		Last Modified: Mon, 03 Jun 2019 22:48:03 GMT  
		Size: 144.3 MB (144325345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f80b3faf6d0d57650c96e1caca8c9c361e06a68d73bf2832707f3b5033bcc7ca`  
		Last Modified: Mon, 03 Jun 2019 22:47:45 GMT  
		Size: 12.8 MB (12773426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee8cd9d65a4dfa15da9dd8e23570ec6294e3ee6221d0e44e4977a9e4c0c11e8`  
		Last Modified: Mon, 03 Jun 2019 22:47:43 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

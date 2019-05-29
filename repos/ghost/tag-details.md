<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:1`](#ghost1)
-	[`ghost:1.25`](#ghost125)
-	[`ghost:1.25.7`](#ghost1257)
-	[`ghost:1.25.7-alpine`](#ghost1257-alpine)
-	[`ghost:1.25-alpine`](#ghost125-alpine)
-	[`ghost:1-alpine`](#ghost1-alpine)
-	[`ghost:2`](#ghost2)
-	[`ghost:2.22`](#ghost222)
-	[`ghost:2.22.3`](#ghost2223)
-	[`ghost:2.22.3-alpine`](#ghost2223-alpine)
-	[`ghost:2.22-alpine`](#ghost222-alpine)
-	[`ghost:2-alpine`](#ghost2-alpine)
-	[`ghost:alpine`](#ghostalpine)
-	[`ghost:latest`](#ghostlatest)

## `ghost:1`

```console
$ docker pull ghost@sha256:a76663c02ca51fbba842ed67720cbaaad3a6c7cb92d249beeeb790720e2b1053
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
$ docker pull ghost@sha256:b8880d6a3f4ee35548cf40293b386ab7384ecc009905a27e91bc0359f2123385
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.4 MB (183429659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0837c1b58b2c1295468086c459a2ce3889a69066937c2d3217669d184557160`
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
# Wed, 08 May 2019 08:52:45 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 08 May 2019 08:53:04 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 08 May 2019 08:53:05 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 08 May 2019 08:53:05 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 08 May 2019 08:53:06 GMT
ENV GHOST_VERSION=1.25.7
# Wed, 08 May 2019 08:53:52 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 08 May 2019 08:53:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 08 May 2019 08:54:03 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 08 May 2019 08:54:03 GMT
WORKDIR /var/lib/ghost
# Wed, 08 May 2019 08:54:03 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 08 May 2019 08:54:04 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Wed, 08 May 2019 08:54:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 08:54:04 GMT
EXPOSE 2368
# Wed, 08 May 2019 08:54:04 GMT
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
	-	`sha256:dcc62e1554cc63fa213ad46b33e7b6e225f7124ea9eb081204e8600a66e5bf9c`  
		Last Modified: Wed, 08 May 2019 08:55:29 GMT  
		Size: 13.7 MB (13683792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bea71171e97c8f69c31a124f82e694e292da1de556590fb108e7085ebe9e5d9`  
		Last Modified: Wed, 08 May 2019 08:55:55 GMT  
		Size: 104.1 MB (104102645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827cbddb4b15dae1b7f743d24d6057213d65e927648fc7848ece50fe4d510ff4`  
		Last Modified: Wed, 08 May 2019 08:55:21 GMT  
		Size: 13.3 MB (13291678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87882863170cf00140b8aefdb27b5c0c5133dd1ad01e1ba912b9e724d225457b`  
		Last Modified: Wed, 08 May 2019 08:55:19 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; arm variant v7

```console
$ docker pull ghost@sha256:8bb8eff05efae59047df2dce45db248a7491741554a5fce665065afacbe4a576
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.1 MB (186149030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d39bbd23bba91ed9a9e2bbd0b914047ad67016128f087890bfe360f19c3cceb`
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
# Wed, 08 May 2019 18:28:40 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 08 May 2019 18:29:14 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 08 May 2019 18:29:16 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 08 May 2019 18:29:16 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 08 May 2019 18:29:17 GMT
ENV GHOST_VERSION=1.25.7
# Wed, 08 May 2019 18:30:43 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 08 May 2019 18:30:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 08 May 2019 18:34:02 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 08 May 2019 18:34:04 GMT
WORKDIR /var/lib/ghost
# Wed, 08 May 2019 18:34:04 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 08 May 2019 18:34:05 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Wed, 08 May 2019 18:34:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 18:34:05 GMT
EXPOSE 2368
# Wed, 08 May 2019 18:34:06 GMT
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
	-	`sha256:f6c86efde5bd2f779b3a427b2b24fedda78bce023215e2bd48c45c63f1c04e2c`  
		Last Modified: Wed, 08 May 2019 18:35:18 GMT  
		Size: 13.7 MB (13685457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d21bb389ff7616349f900ad4577857d54a50df2d674ccf7394465a30e972979`  
		Last Modified: Wed, 08 May 2019 18:35:51 GMT  
		Size: 96.4 MB (96362290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26c5f086ed88227a92bb059d1c1448d73b611e67c94496e94fb4a52865457cb`  
		Last Modified: Wed, 08 May 2019 18:35:20 GMT  
		Size: 29.5 MB (29539629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83fc1d8b436603d028b9426c2c4a9367b0de1f32eebd5025aaf399e821440b8d`  
		Last Modified: Wed, 08 May 2019 18:35:11 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:ac03bd79db2ebf3ac98d88313bda45d15210e9927e8fb7c8f3f08089466c860d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.1 MB (189123784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:416e4508d8d4bc3352448970557263bc5904f0d8ab0113499970130ce16f3942`
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
# Thu, 23 May 2019 21:44:11 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 23 May 2019 21:44:34 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 23 May 2019 21:44:35 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 23 May 2019 21:44:35 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 23 May 2019 21:44:36 GMT
ENV GHOST_VERSION=1.25.7
# Thu, 23 May 2019 21:45:21 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 23 May 2019 21:45:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 23 May 2019 21:47:57 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 23 May 2019 21:47:58 GMT
WORKDIR /var/lib/ghost
# Thu, 23 May 2019 21:47:58 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 23 May 2019 21:47:58 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Thu, 23 May 2019 21:47:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 21:47:59 GMT
EXPOSE 2368
# Thu, 23 May 2019 21:48:00 GMT
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
	-	`sha256:b3f7fd88ff0ef7f1a30be06ede0efd9afbc43de9bf8a9945a3538291502cd010`  
		Last Modified: Thu, 23 May 2019 21:49:22 GMT  
		Size: 13.7 MB (13728134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be97aebb74d8819d78a35231fd3755e340540d8a5f35d53b7d3b7011de431353`  
		Last Modified: Thu, 23 May 2019 21:49:49 GMT  
		Size: 96.4 MB (96406405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d198ffa34e19fd8075ebcbec76ecf699fa6689cbab269b6ebe26cbb8164eb838`  
		Last Modified: Thu, 23 May 2019 21:49:24 GMT  
		Size: 30.2 MB (30150405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a171efb761c2b348bd3647fe71c3569a5eb57c6d349e18765f8c65a45ad7753`  
		Last Modified: Thu, 23 May 2019 21:49:18 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; 386

```console
$ docker pull ghost@sha256:8a72c2836edae40748676e794f7cd4365f34290c2ea170328a12f650a28c0e15
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.7 MB (193742855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f56b432ff72b51a3e4968b97288148cf46b9e33cfc89621415ea76ebb057675`
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
# Thu, 09 May 2019 05:05:50 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 09 May 2019 05:06:07 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 09 May 2019 05:06:07 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 09 May 2019 05:06:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 09 May 2019 05:06:07 GMT
ENV GHOST_VERSION=1.25.7
# Thu, 09 May 2019 05:06:46 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 09 May 2019 05:06:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 09 May 2019 05:08:23 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 09 May 2019 05:08:23 GMT
WORKDIR /var/lib/ghost
# Thu, 09 May 2019 05:08:23 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 09 May 2019 05:08:24 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Thu, 09 May 2019 05:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 05:08:24 GMT
EXPOSE 2368
# Thu, 09 May 2019 05:08:24 GMT
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
	-	`sha256:6a74b8c1ac010b1279d21c7005450fc18ecbc875f69d6b0ad4b69bbef2fc037d`  
		Last Modified: Thu, 09 May 2019 05:08:47 GMT  
		Size: 13.7 MB (13683665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a30347c9f18b53a2d08e8de0a1c43d5b71416392cc4102a63dbeb91798485040`  
		Last Modified: Thu, 09 May 2019 05:09:08 GMT  
		Size: 96.4 MB (96360974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5fe700b52faed95d83284198e0eb677680debede088a8a58db83618847aaf46`  
		Last Modified: Thu, 09 May 2019 05:08:50 GMT  
		Size: 30.9 MB (30904463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635dc7bbd87af0e721851537d5fd290228207b4da8e9328360677a1e69bec9f2`  
		Last Modified: Thu, 09 May 2019 05:08:41 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; ppc64le

```console
$ docker pull ghost@sha256:bc55115b8e134ed8d51dead94b9283b49c96da52eaf4cc73969c424e175db50f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.7 MB (192718492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b4725b8402399bf4dfd1da7d40889bb6981b1f91c1934cd1c32b5226686d1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:14:01 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 14:14:06 GMT
ENV NODE_VERSION=8.16.0
# Wed, 08 May 2019 14:16:24 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 14:16:31 GMT
ENV YARN_VERSION=1.15.2
# Wed, 08 May 2019 14:16:46 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 14:16:53 GMT
CMD ["node"]
# Thu, 09 May 2019 00:37:14 GMT
ENV GOSU_VERSION=1.10
# Thu, 09 May 2019 00:37:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 09 May 2019 00:37:29 GMT
ENV NODE_ENV=production
# Thu, 09 May 2019 00:37:34 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 09 May 2019 00:38:30 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 09 May 2019 00:38:35 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 09 May 2019 00:38:39 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 09 May 2019 00:38:43 GMT
ENV GHOST_VERSION=1.25.7
# Thu, 09 May 2019 00:43:40 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 09 May 2019 00:43:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 09 May 2019 00:48:56 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 09 May 2019 00:49:02 GMT
WORKDIR /var/lib/ghost
# Thu, 09 May 2019 00:49:06 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 09 May 2019 00:49:08 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Thu, 09 May 2019 00:49:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 00:49:22 GMT
EXPOSE 2368
# Thu, 09 May 2019 00:49:27 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8942858951da9975540fe5101d6b94c8f553ebbd9fe8614a4dcfd9ec1d21e5c`  
		Last Modified: Wed, 08 May 2019 14:59:21 GMT  
		Size: 4.2 KB (4185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307ae30e1f707cf7bcda4eb9b5881ef625164d331e0c0b6c38733606d7df4365`  
		Last Modified: Wed, 08 May 2019 14:59:39 GMT  
		Size: 27.0 MB (26980060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4115d813dd87f739f79fb23d6904e40ee269b914b0356dcb81ffd17eed27856b`  
		Last Modified: Wed, 08 May 2019 14:59:21 GMT  
		Size: 1.3 MB (1324812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d57617419aed08abb4377b73a89b69e7e7056552f0d23d43cc1ee5c3b672277`  
		Last Modified: Thu, 09 May 2019 00:51:58 GMT  
		Size: 470.1 KB (470075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6003cb49b11a1e5feeb6f7e7755f5ecc3a21e54b05eff9995d43accef787f9`  
		Last Modified: Thu, 09 May 2019 00:52:05 GMT  
		Size: 13.7 MB (13684611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894c2e752915ede55220593178621f91b3c16264e7dbda76b3a6249e3ae03d19`  
		Last Modified: Thu, 09 May 2019 00:52:27 GMT  
		Size: 96.4 MB (96406833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3acb9d0d6e129b78053193d7f59dc570f916a9d3e1142b8391d06b82abb2ec`  
		Last Modified: Thu, 09 May 2019 00:52:05 GMT  
		Size: 31.1 MB (31102416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31342ee5d8b8252045053e9cabebcd5a433792ed686ae5bb3fdbe0148fb0d485`  
		Last Modified: Thu, 09 May 2019 00:51:57 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; s390x

```console
$ docker pull ghost@sha256:d4e7be9b54c104c37b6e0fe1869a55f3b17f770cdeb6e6d20a0357b4ba815498
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.2 MB (193154303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffb0dd06fa6200b5ebf9165f8acd16b342a381ce8e09d592d014b2f1293cc77a`
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
# Thu, 09 May 2019 03:05:07 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 09 May 2019 03:06:18 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 09 May 2019 03:06:20 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 09 May 2019 03:06:22 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 09 May 2019 03:06:24 GMT
ENV GHOST_VERSION=1.25.7
# Thu, 09 May 2019 03:09:55 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 09 May 2019 03:10:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 09 May 2019 03:13:56 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 09 May 2019 03:13:58 GMT
WORKDIR /var/lib/ghost
# Thu, 09 May 2019 03:13:59 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 09 May 2019 03:14:00 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Thu, 09 May 2019 03:14:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 03:14:02 GMT
EXPOSE 2368
# Thu, 09 May 2019 03:14:03 GMT
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
	-	`sha256:946e984323329d80c998c67979f93ac21fafc471ff8f56be36fab533c50d9e25`  
		Last Modified: Thu, 09 May 2019 03:16:26 GMT  
		Size: 13.7 MB (13686441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b4a91b229fe7199953a51c2a43dc6b43d57ab66bf82d064ed69afcfc0456c1`  
		Last Modified: Thu, 09 May 2019 03:16:52 GMT  
		Size: 96.4 MB (96394258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72b8f4f05865f4fc31581f32d058f4ef2f08d8461aaed61c5b2d57e09de8c1d`  
		Last Modified: Thu, 09 May 2019 03:16:31 GMT  
		Size: 31.1 MB (31051052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a01a7f93838438752af1c7f5ef09f195b131448ddb0b13d09ecd8adda479d98`  
		Last Modified: Thu, 09 May 2019 03:16:14 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25`

```console
$ docker pull ghost@sha256:a76663c02ca51fbba842ed67720cbaaad3a6c7cb92d249beeeb790720e2b1053
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
$ docker pull ghost@sha256:b8880d6a3f4ee35548cf40293b386ab7384ecc009905a27e91bc0359f2123385
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.4 MB (183429659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0837c1b58b2c1295468086c459a2ce3889a69066937c2d3217669d184557160`
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
# Wed, 08 May 2019 08:52:45 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 08 May 2019 08:53:04 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 08 May 2019 08:53:05 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 08 May 2019 08:53:05 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 08 May 2019 08:53:06 GMT
ENV GHOST_VERSION=1.25.7
# Wed, 08 May 2019 08:53:52 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 08 May 2019 08:53:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 08 May 2019 08:54:03 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 08 May 2019 08:54:03 GMT
WORKDIR /var/lib/ghost
# Wed, 08 May 2019 08:54:03 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 08 May 2019 08:54:04 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Wed, 08 May 2019 08:54:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 08:54:04 GMT
EXPOSE 2368
# Wed, 08 May 2019 08:54:04 GMT
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
	-	`sha256:dcc62e1554cc63fa213ad46b33e7b6e225f7124ea9eb081204e8600a66e5bf9c`  
		Last Modified: Wed, 08 May 2019 08:55:29 GMT  
		Size: 13.7 MB (13683792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bea71171e97c8f69c31a124f82e694e292da1de556590fb108e7085ebe9e5d9`  
		Last Modified: Wed, 08 May 2019 08:55:55 GMT  
		Size: 104.1 MB (104102645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827cbddb4b15dae1b7f743d24d6057213d65e927648fc7848ece50fe4d510ff4`  
		Last Modified: Wed, 08 May 2019 08:55:21 GMT  
		Size: 13.3 MB (13291678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87882863170cf00140b8aefdb27b5c0c5133dd1ad01e1ba912b9e724d225457b`  
		Last Modified: Wed, 08 May 2019 08:55:19 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; arm variant v7

```console
$ docker pull ghost@sha256:8bb8eff05efae59047df2dce45db248a7491741554a5fce665065afacbe4a576
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.1 MB (186149030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d39bbd23bba91ed9a9e2bbd0b914047ad67016128f087890bfe360f19c3cceb`
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
# Wed, 08 May 2019 18:28:40 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 08 May 2019 18:29:14 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 08 May 2019 18:29:16 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 08 May 2019 18:29:16 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 08 May 2019 18:29:17 GMT
ENV GHOST_VERSION=1.25.7
# Wed, 08 May 2019 18:30:43 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 08 May 2019 18:30:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 08 May 2019 18:34:02 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 08 May 2019 18:34:04 GMT
WORKDIR /var/lib/ghost
# Wed, 08 May 2019 18:34:04 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 08 May 2019 18:34:05 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Wed, 08 May 2019 18:34:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 18:34:05 GMT
EXPOSE 2368
# Wed, 08 May 2019 18:34:06 GMT
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
	-	`sha256:f6c86efde5bd2f779b3a427b2b24fedda78bce023215e2bd48c45c63f1c04e2c`  
		Last Modified: Wed, 08 May 2019 18:35:18 GMT  
		Size: 13.7 MB (13685457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d21bb389ff7616349f900ad4577857d54a50df2d674ccf7394465a30e972979`  
		Last Modified: Wed, 08 May 2019 18:35:51 GMT  
		Size: 96.4 MB (96362290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26c5f086ed88227a92bb059d1c1448d73b611e67c94496e94fb4a52865457cb`  
		Last Modified: Wed, 08 May 2019 18:35:20 GMT  
		Size: 29.5 MB (29539629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83fc1d8b436603d028b9426c2c4a9367b0de1f32eebd5025aaf399e821440b8d`  
		Last Modified: Wed, 08 May 2019 18:35:11 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:ac03bd79db2ebf3ac98d88313bda45d15210e9927e8fb7c8f3f08089466c860d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.1 MB (189123784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:416e4508d8d4bc3352448970557263bc5904f0d8ab0113499970130ce16f3942`
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
# Thu, 23 May 2019 21:44:11 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 23 May 2019 21:44:34 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 23 May 2019 21:44:35 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 23 May 2019 21:44:35 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 23 May 2019 21:44:36 GMT
ENV GHOST_VERSION=1.25.7
# Thu, 23 May 2019 21:45:21 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 23 May 2019 21:45:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 23 May 2019 21:47:57 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 23 May 2019 21:47:58 GMT
WORKDIR /var/lib/ghost
# Thu, 23 May 2019 21:47:58 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 23 May 2019 21:47:58 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Thu, 23 May 2019 21:47:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 21:47:59 GMT
EXPOSE 2368
# Thu, 23 May 2019 21:48:00 GMT
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
	-	`sha256:b3f7fd88ff0ef7f1a30be06ede0efd9afbc43de9bf8a9945a3538291502cd010`  
		Last Modified: Thu, 23 May 2019 21:49:22 GMT  
		Size: 13.7 MB (13728134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be97aebb74d8819d78a35231fd3755e340540d8a5f35d53b7d3b7011de431353`  
		Last Modified: Thu, 23 May 2019 21:49:49 GMT  
		Size: 96.4 MB (96406405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d198ffa34e19fd8075ebcbec76ecf699fa6689cbab269b6ebe26cbb8164eb838`  
		Last Modified: Thu, 23 May 2019 21:49:24 GMT  
		Size: 30.2 MB (30150405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a171efb761c2b348bd3647fe71c3569a5eb57c6d349e18765f8c65a45ad7753`  
		Last Modified: Thu, 23 May 2019 21:49:18 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; 386

```console
$ docker pull ghost@sha256:8a72c2836edae40748676e794f7cd4365f34290c2ea170328a12f650a28c0e15
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.7 MB (193742855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f56b432ff72b51a3e4968b97288148cf46b9e33cfc89621415ea76ebb057675`
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
# Thu, 09 May 2019 05:05:50 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 09 May 2019 05:06:07 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 09 May 2019 05:06:07 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 09 May 2019 05:06:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 09 May 2019 05:06:07 GMT
ENV GHOST_VERSION=1.25.7
# Thu, 09 May 2019 05:06:46 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 09 May 2019 05:06:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 09 May 2019 05:08:23 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 09 May 2019 05:08:23 GMT
WORKDIR /var/lib/ghost
# Thu, 09 May 2019 05:08:23 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 09 May 2019 05:08:24 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Thu, 09 May 2019 05:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 05:08:24 GMT
EXPOSE 2368
# Thu, 09 May 2019 05:08:24 GMT
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
	-	`sha256:6a74b8c1ac010b1279d21c7005450fc18ecbc875f69d6b0ad4b69bbef2fc037d`  
		Last Modified: Thu, 09 May 2019 05:08:47 GMT  
		Size: 13.7 MB (13683665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a30347c9f18b53a2d08e8de0a1c43d5b71416392cc4102a63dbeb91798485040`  
		Last Modified: Thu, 09 May 2019 05:09:08 GMT  
		Size: 96.4 MB (96360974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5fe700b52faed95d83284198e0eb677680debede088a8a58db83618847aaf46`  
		Last Modified: Thu, 09 May 2019 05:08:50 GMT  
		Size: 30.9 MB (30904463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635dc7bbd87af0e721851537d5fd290228207b4da8e9328360677a1e69bec9f2`  
		Last Modified: Thu, 09 May 2019 05:08:41 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; ppc64le

```console
$ docker pull ghost@sha256:bc55115b8e134ed8d51dead94b9283b49c96da52eaf4cc73969c424e175db50f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.7 MB (192718492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b4725b8402399bf4dfd1da7d40889bb6981b1f91c1934cd1c32b5226686d1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:14:01 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 14:14:06 GMT
ENV NODE_VERSION=8.16.0
# Wed, 08 May 2019 14:16:24 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 14:16:31 GMT
ENV YARN_VERSION=1.15.2
# Wed, 08 May 2019 14:16:46 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 14:16:53 GMT
CMD ["node"]
# Thu, 09 May 2019 00:37:14 GMT
ENV GOSU_VERSION=1.10
# Thu, 09 May 2019 00:37:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 09 May 2019 00:37:29 GMT
ENV NODE_ENV=production
# Thu, 09 May 2019 00:37:34 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 09 May 2019 00:38:30 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 09 May 2019 00:38:35 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 09 May 2019 00:38:39 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 09 May 2019 00:38:43 GMT
ENV GHOST_VERSION=1.25.7
# Thu, 09 May 2019 00:43:40 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 09 May 2019 00:43:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 09 May 2019 00:48:56 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 09 May 2019 00:49:02 GMT
WORKDIR /var/lib/ghost
# Thu, 09 May 2019 00:49:06 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 09 May 2019 00:49:08 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Thu, 09 May 2019 00:49:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 00:49:22 GMT
EXPOSE 2368
# Thu, 09 May 2019 00:49:27 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8942858951da9975540fe5101d6b94c8f553ebbd9fe8614a4dcfd9ec1d21e5c`  
		Last Modified: Wed, 08 May 2019 14:59:21 GMT  
		Size: 4.2 KB (4185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307ae30e1f707cf7bcda4eb9b5881ef625164d331e0c0b6c38733606d7df4365`  
		Last Modified: Wed, 08 May 2019 14:59:39 GMT  
		Size: 27.0 MB (26980060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4115d813dd87f739f79fb23d6904e40ee269b914b0356dcb81ffd17eed27856b`  
		Last Modified: Wed, 08 May 2019 14:59:21 GMT  
		Size: 1.3 MB (1324812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d57617419aed08abb4377b73a89b69e7e7056552f0d23d43cc1ee5c3b672277`  
		Last Modified: Thu, 09 May 2019 00:51:58 GMT  
		Size: 470.1 KB (470075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6003cb49b11a1e5feeb6f7e7755f5ecc3a21e54b05eff9995d43accef787f9`  
		Last Modified: Thu, 09 May 2019 00:52:05 GMT  
		Size: 13.7 MB (13684611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894c2e752915ede55220593178621f91b3c16264e7dbda76b3a6249e3ae03d19`  
		Last Modified: Thu, 09 May 2019 00:52:27 GMT  
		Size: 96.4 MB (96406833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3acb9d0d6e129b78053193d7f59dc570f916a9d3e1142b8391d06b82abb2ec`  
		Last Modified: Thu, 09 May 2019 00:52:05 GMT  
		Size: 31.1 MB (31102416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31342ee5d8b8252045053e9cabebcd5a433792ed686ae5bb3fdbe0148fb0d485`  
		Last Modified: Thu, 09 May 2019 00:51:57 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; s390x

```console
$ docker pull ghost@sha256:d4e7be9b54c104c37b6e0fe1869a55f3b17f770cdeb6e6d20a0357b4ba815498
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.2 MB (193154303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffb0dd06fa6200b5ebf9165f8acd16b342a381ce8e09d592d014b2f1293cc77a`
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
# Thu, 09 May 2019 03:05:07 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 09 May 2019 03:06:18 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 09 May 2019 03:06:20 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 09 May 2019 03:06:22 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 09 May 2019 03:06:24 GMT
ENV GHOST_VERSION=1.25.7
# Thu, 09 May 2019 03:09:55 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 09 May 2019 03:10:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 09 May 2019 03:13:56 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 09 May 2019 03:13:58 GMT
WORKDIR /var/lib/ghost
# Thu, 09 May 2019 03:13:59 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 09 May 2019 03:14:00 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Thu, 09 May 2019 03:14:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 03:14:02 GMT
EXPOSE 2368
# Thu, 09 May 2019 03:14:03 GMT
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
	-	`sha256:946e984323329d80c998c67979f93ac21fafc471ff8f56be36fab533c50d9e25`  
		Last Modified: Thu, 09 May 2019 03:16:26 GMT  
		Size: 13.7 MB (13686441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b4a91b229fe7199953a51c2a43dc6b43d57ab66bf82d064ed69afcfc0456c1`  
		Last Modified: Thu, 09 May 2019 03:16:52 GMT  
		Size: 96.4 MB (96394258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72b8f4f05865f4fc31581f32d058f4ef2f08d8461aaed61c5b2d57e09de8c1d`  
		Last Modified: Thu, 09 May 2019 03:16:31 GMT  
		Size: 31.1 MB (31051052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a01a7f93838438752af1c7f5ef09f195b131448ddb0b13d09ecd8adda479d98`  
		Last Modified: Thu, 09 May 2019 03:16:14 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25.7`

```console
$ docker pull ghost@sha256:a76663c02ca51fbba842ed67720cbaaad3a6c7cb92d249beeeb790720e2b1053
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:1.25.7` - linux; amd64

```console
$ docker pull ghost@sha256:b8880d6a3f4ee35548cf40293b386ab7384ecc009905a27e91bc0359f2123385
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.4 MB (183429659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0837c1b58b2c1295468086c459a2ce3889a69066937c2d3217669d184557160`
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
# Wed, 08 May 2019 08:52:45 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 08 May 2019 08:53:04 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 08 May 2019 08:53:05 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 08 May 2019 08:53:05 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 08 May 2019 08:53:06 GMT
ENV GHOST_VERSION=1.25.7
# Wed, 08 May 2019 08:53:52 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 08 May 2019 08:53:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 08 May 2019 08:54:03 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 08 May 2019 08:54:03 GMT
WORKDIR /var/lib/ghost
# Wed, 08 May 2019 08:54:03 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 08 May 2019 08:54:04 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Wed, 08 May 2019 08:54:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 08:54:04 GMT
EXPOSE 2368
# Wed, 08 May 2019 08:54:04 GMT
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
	-	`sha256:dcc62e1554cc63fa213ad46b33e7b6e225f7124ea9eb081204e8600a66e5bf9c`  
		Last Modified: Wed, 08 May 2019 08:55:29 GMT  
		Size: 13.7 MB (13683792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bea71171e97c8f69c31a124f82e694e292da1de556590fb108e7085ebe9e5d9`  
		Last Modified: Wed, 08 May 2019 08:55:55 GMT  
		Size: 104.1 MB (104102645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827cbddb4b15dae1b7f743d24d6057213d65e927648fc7848ece50fe4d510ff4`  
		Last Modified: Wed, 08 May 2019 08:55:21 GMT  
		Size: 13.3 MB (13291678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87882863170cf00140b8aefdb27b5c0c5133dd1ad01e1ba912b9e724d225457b`  
		Last Modified: Wed, 08 May 2019 08:55:19 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.7` - linux; arm variant v7

```console
$ docker pull ghost@sha256:8bb8eff05efae59047df2dce45db248a7491741554a5fce665065afacbe4a576
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.1 MB (186149030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d39bbd23bba91ed9a9e2bbd0b914047ad67016128f087890bfe360f19c3cceb`
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
# Wed, 08 May 2019 18:28:40 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 08 May 2019 18:29:14 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 08 May 2019 18:29:16 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 08 May 2019 18:29:16 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 08 May 2019 18:29:17 GMT
ENV GHOST_VERSION=1.25.7
# Wed, 08 May 2019 18:30:43 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 08 May 2019 18:30:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 08 May 2019 18:34:02 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 08 May 2019 18:34:04 GMT
WORKDIR /var/lib/ghost
# Wed, 08 May 2019 18:34:04 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 08 May 2019 18:34:05 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Wed, 08 May 2019 18:34:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 18:34:05 GMT
EXPOSE 2368
# Wed, 08 May 2019 18:34:06 GMT
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
	-	`sha256:f6c86efde5bd2f779b3a427b2b24fedda78bce023215e2bd48c45c63f1c04e2c`  
		Last Modified: Wed, 08 May 2019 18:35:18 GMT  
		Size: 13.7 MB (13685457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d21bb389ff7616349f900ad4577857d54a50df2d674ccf7394465a30e972979`  
		Last Modified: Wed, 08 May 2019 18:35:51 GMT  
		Size: 96.4 MB (96362290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26c5f086ed88227a92bb059d1c1448d73b611e67c94496e94fb4a52865457cb`  
		Last Modified: Wed, 08 May 2019 18:35:20 GMT  
		Size: 29.5 MB (29539629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83fc1d8b436603d028b9426c2c4a9367b0de1f32eebd5025aaf399e821440b8d`  
		Last Modified: Wed, 08 May 2019 18:35:11 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.7` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:ac03bd79db2ebf3ac98d88313bda45d15210e9927e8fb7c8f3f08089466c860d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.1 MB (189123784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:416e4508d8d4bc3352448970557263bc5904f0d8ab0113499970130ce16f3942`
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
# Thu, 23 May 2019 21:44:11 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 23 May 2019 21:44:34 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 23 May 2019 21:44:35 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 23 May 2019 21:44:35 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 23 May 2019 21:44:36 GMT
ENV GHOST_VERSION=1.25.7
# Thu, 23 May 2019 21:45:21 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 23 May 2019 21:45:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 23 May 2019 21:47:57 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 23 May 2019 21:47:58 GMT
WORKDIR /var/lib/ghost
# Thu, 23 May 2019 21:47:58 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 23 May 2019 21:47:58 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Thu, 23 May 2019 21:47:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 21:47:59 GMT
EXPOSE 2368
# Thu, 23 May 2019 21:48:00 GMT
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
	-	`sha256:b3f7fd88ff0ef7f1a30be06ede0efd9afbc43de9bf8a9945a3538291502cd010`  
		Last Modified: Thu, 23 May 2019 21:49:22 GMT  
		Size: 13.7 MB (13728134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be97aebb74d8819d78a35231fd3755e340540d8a5f35d53b7d3b7011de431353`  
		Last Modified: Thu, 23 May 2019 21:49:49 GMT  
		Size: 96.4 MB (96406405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d198ffa34e19fd8075ebcbec76ecf699fa6689cbab269b6ebe26cbb8164eb838`  
		Last Modified: Thu, 23 May 2019 21:49:24 GMT  
		Size: 30.2 MB (30150405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a171efb761c2b348bd3647fe71c3569a5eb57c6d349e18765f8c65a45ad7753`  
		Last Modified: Thu, 23 May 2019 21:49:18 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.7` - linux; 386

```console
$ docker pull ghost@sha256:8a72c2836edae40748676e794f7cd4365f34290c2ea170328a12f650a28c0e15
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.7 MB (193742855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f56b432ff72b51a3e4968b97288148cf46b9e33cfc89621415ea76ebb057675`
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
# Thu, 09 May 2019 05:05:50 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 09 May 2019 05:06:07 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 09 May 2019 05:06:07 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 09 May 2019 05:06:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 09 May 2019 05:06:07 GMT
ENV GHOST_VERSION=1.25.7
# Thu, 09 May 2019 05:06:46 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 09 May 2019 05:06:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 09 May 2019 05:08:23 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 09 May 2019 05:08:23 GMT
WORKDIR /var/lib/ghost
# Thu, 09 May 2019 05:08:23 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 09 May 2019 05:08:24 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Thu, 09 May 2019 05:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 05:08:24 GMT
EXPOSE 2368
# Thu, 09 May 2019 05:08:24 GMT
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
	-	`sha256:6a74b8c1ac010b1279d21c7005450fc18ecbc875f69d6b0ad4b69bbef2fc037d`  
		Last Modified: Thu, 09 May 2019 05:08:47 GMT  
		Size: 13.7 MB (13683665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a30347c9f18b53a2d08e8de0a1c43d5b71416392cc4102a63dbeb91798485040`  
		Last Modified: Thu, 09 May 2019 05:09:08 GMT  
		Size: 96.4 MB (96360974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5fe700b52faed95d83284198e0eb677680debede088a8a58db83618847aaf46`  
		Last Modified: Thu, 09 May 2019 05:08:50 GMT  
		Size: 30.9 MB (30904463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635dc7bbd87af0e721851537d5fd290228207b4da8e9328360677a1e69bec9f2`  
		Last Modified: Thu, 09 May 2019 05:08:41 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.7` - linux; ppc64le

```console
$ docker pull ghost@sha256:bc55115b8e134ed8d51dead94b9283b49c96da52eaf4cc73969c424e175db50f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.7 MB (192718492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b4725b8402399bf4dfd1da7d40889bb6981b1f91c1934cd1c32b5226686d1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:14:01 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 14:14:06 GMT
ENV NODE_VERSION=8.16.0
# Wed, 08 May 2019 14:16:24 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 14:16:31 GMT
ENV YARN_VERSION=1.15.2
# Wed, 08 May 2019 14:16:46 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 14:16:53 GMT
CMD ["node"]
# Thu, 09 May 2019 00:37:14 GMT
ENV GOSU_VERSION=1.10
# Thu, 09 May 2019 00:37:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 09 May 2019 00:37:29 GMT
ENV NODE_ENV=production
# Thu, 09 May 2019 00:37:34 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 09 May 2019 00:38:30 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 09 May 2019 00:38:35 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 09 May 2019 00:38:39 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 09 May 2019 00:38:43 GMT
ENV GHOST_VERSION=1.25.7
# Thu, 09 May 2019 00:43:40 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 09 May 2019 00:43:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 09 May 2019 00:48:56 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 09 May 2019 00:49:02 GMT
WORKDIR /var/lib/ghost
# Thu, 09 May 2019 00:49:06 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 09 May 2019 00:49:08 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Thu, 09 May 2019 00:49:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 00:49:22 GMT
EXPOSE 2368
# Thu, 09 May 2019 00:49:27 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8942858951da9975540fe5101d6b94c8f553ebbd9fe8614a4dcfd9ec1d21e5c`  
		Last Modified: Wed, 08 May 2019 14:59:21 GMT  
		Size: 4.2 KB (4185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307ae30e1f707cf7bcda4eb9b5881ef625164d331e0c0b6c38733606d7df4365`  
		Last Modified: Wed, 08 May 2019 14:59:39 GMT  
		Size: 27.0 MB (26980060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4115d813dd87f739f79fb23d6904e40ee269b914b0356dcb81ffd17eed27856b`  
		Last Modified: Wed, 08 May 2019 14:59:21 GMT  
		Size: 1.3 MB (1324812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d57617419aed08abb4377b73a89b69e7e7056552f0d23d43cc1ee5c3b672277`  
		Last Modified: Thu, 09 May 2019 00:51:58 GMT  
		Size: 470.1 KB (470075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6003cb49b11a1e5feeb6f7e7755f5ecc3a21e54b05eff9995d43accef787f9`  
		Last Modified: Thu, 09 May 2019 00:52:05 GMT  
		Size: 13.7 MB (13684611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894c2e752915ede55220593178621f91b3c16264e7dbda76b3a6249e3ae03d19`  
		Last Modified: Thu, 09 May 2019 00:52:27 GMT  
		Size: 96.4 MB (96406833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3acb9d0d6e129b78053193d7f59dc570f916a9d3e1142b8391d06b82abb2ec`  
		Last Modified: Thu, 09 May 2019 00:52:05 GMT  
		Size: 31.1 MB (31102416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31342ee5d8b8252045053e9cabebcd5a433792ed686ae5bb3fdbe0148fb0d485`  
		Last Modified: Thu, 09 May 2019 00:51:57 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.7` - linux; s390x

```console
$ docker pull ghost@sha256:d4e7be9b54c104c37b6e0fe1869a55f3b17f770cdeb6e6d20a0357b4ba815498
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.2 MB (193154303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffb0dd06fa6200b5ebf9165f8acd16b342a381ce8e09d592d014b2f1293cc77a`
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
# Thu, 09 May 2019 03:05:07 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 09 May 2019 03:06:18 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 09 May 2019 03:06:20 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 09 May 2019 03:06:22 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 09 May 2019 03:06:24 GMT
ENV GHOST_VERSION=1.25.7
# Thu, 09 May 2019 03:09:55 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 09 May 2019 03:10:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 09 May 2019 03:13:56 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 09 May 2019 03:13:58 GMT
WORKDIR /var/lib/ghost
# Thu, 09 May 2019 03:13:59 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 09 May 2019 03:14:00 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Thu, 09 May 2019 03:14:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 03:14:02 GMT
EXPOSE 2368
# Thu, 09 May 2019 03:14:03 GMT
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
	-	`sha256:946e984323329d80c998c67979f93ac21fafc471ff8f56be36fab533c50d9e25`  
		Last Modified: Thu, 09 May 2019 03:16:26 GMT  
		Size: 13.7 MB (13686441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b4a91b229fe7199953a51c2a43dc6b43d57ab66bf82d064ed69afcfc0456c1`  
		Last Modified: Thu, 09 May 2019 03:16:52 GMT  
		Size: 96.4 MB (96394258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72b8f4f05865f4fc31581f32d058f4ef2f08d8461aaed61c5b2d57e09de8c1d`  
		Last Modified: Thu, 09 May 2019 03:16:31 GMT  
		Size: 31.1 MB (31051052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a01a7f93838438752af1c7f5ef09f195b131448ddb0b13d09ecd8adda479d98`  
		Last Modified: Thu, 09 May 2019 03:16:14 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25.7-alpine`

```console
$ docker pull ghost@sha256:fc465380f9c370bbfc375c43938decd7ad681c482e0e9a9f2eed3bcefdf2f260
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1.25.7-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:ff07de233220afa8f1f977a454af8fd39e43c34cd00a82f66abf7d72540358dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.0 MB (155013098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30e9221662ba80831aa9f72a16bd2e948f8b2663dd8f6cb5b4b40a147f9ff140`
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
# Sat, 11 May 2019 04:40:52 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Sat, 11 May 2019 04:41:07 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 11 May 2019 04:41:08 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 11 May 2019 04:41:08 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 11 May 2019 04:41:08 GMT
ENV GHOST_VERSION=1.25.7
# Sat, 11 May 2019 04:41:44 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 11 May 2019 04:41:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 11 May 2019 04:41:55 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Sat, 11 May 2019 04:41:55 GMT
WORKDIR /var/lib/ghost
# Sat, 11 May 2019 04:41:56 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 11 May 2019 04:41:56 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Sat, 11 May 2019 04:41:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 04:41:56 GMT
EXPOSE 2368
# Sat, 11 May 2019 04:41:56 GMT
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
	-	`sha256:5b8179e9c2bf321216ec71e69bdbd4fcfca801aa38a264c69168772e76e19ab6`  
		Last Modified: Sat, 11 May 2019 04:42:47 GMT  
		Size: 13.7 MB (13688835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4294b4caa0348108199d0b963e095d6e8d090c8c0ee88b2b32cdddc39de6a5fe`  
		Last Modified: Sat, 11 May 2019 04:43:00 GMT  
		Size: 104.1 MB (104103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5509845bd46fafe569f152b40bba3c3c82d2d99258a34f884d0e454156e41aed`  
		Last Modified: Sat, 11 May 2019 04:42:44 GMT  
		Size: 13.3 MB (13292000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6e61b50daf643ab7eac73e967ecdc2cfc8c1844ce4a68fc4d7b1117a063bcf`  
		Last Modified: Sat, 11 May 2019 04:42:40 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.7-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:f9b96058ef6e983740a633170fd82793a8b389f61f9921086f48d4000c811bce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (163015635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e856536477bd42ea53936deb8ccebce0bd2f27951c8d344bfb25352cd04e33c`
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
# Sat, 11 May 2019 10:42:39 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Sat, 11 May 2019 10:43:15 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 11 May 2019 10:43:16 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 11 May 2019 10:43:16 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 11 May 2019 10:43:17 GMT
ENV GHOST_VERSION=1.25.7
# Sat, 11 May 2019 10:44:46 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 11 May 2019 10:44:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 11 May 2019 10:48:23 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Sat, 11 May 2019 10:48:24 GMT
WORKDIR /var/lib/ghost
# Sat, 11 May 2019 10:48:24 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 11 May 2019 10:48:24 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Sat, 11 May 2019 10:48:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 10:48:25 GMT
EXPOSE 2368
# Sat, 11 May 2019 10:48:26 GMT
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
	-	`sha256:557db67d45931d2a38145df6673a173a1f344e4ad0072dd4cfb2cc4307d7da47`  
		Last Modified: Sat, 11 May 2019 10:49:47 GMT  
		Size: 13.7 MB (13694892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d897de6c8ed0325633511e8e0c953f2d3c4ab0f5bb51fa9c3fbd20e9f4a2c608`  
		Last Modified: Sat, 11 May 2019 10:50:11 GMT  
		Size: 96.4 MB (96362366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab2c1ae6edb58c8d322785c74daae9b8c8ef58ba9b72684cba4cef2023a3dce`  
		Last Modified: Sat, 11 May 2019 10:49:51 GMT  
		Size: 30.3 MB (30291976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a45317862208917d7bbc1fa8b81dd36ed2954ece3f3351c0452b69054834ff`  
		Last Modified: Sat, 11 May 2019 10:49:35 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.7-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:8ce67c4152f10ee627ac2725516b233c723856f19963cdb84fbe48d6dc56c8bf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.1 MB (168102823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b7984503df818f73376d33bdfd86e081d2fa761e0e369a9a57c76617648b0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 01:31:45 GMT
ENV NODE_VERSION=8.16.0
# Thu, 16 May 2019 01:41:52 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 16 May 2019 01:41:55 GMT
ENV YARN_VERSION=1.15.2
# Thu, 16 May 2019 01:42:07 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 16 May 2019 01:42:12 GMT
CMD ["node"]
# Thu, 16 May 2019 02:51:52 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 16 May 2019 02:52:01 GMT
RUN apk add --no-cache 		bash
# Thu, 16 May 2019 02:52:03 GMT
ENV NODE_ENV=production
# Thu, 16 May 2019 02:52:05 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 16 May 2019 02:52:38 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 16 May 2019 02:52:42 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 16 May 2019 02:52:46 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 16 May 2019 02:52:48 GMT
ENV GHOST_VERSION=1.25.7
# Thu, 16 May 2019 02:54:58 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 16 May 2019 02:55:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 16 May 2019 02:57:40 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Thu, 16 May 2019 02:57:43 GMT
WORKDIR /var/lib/ghost
# Thu, 16 May 2019 02:57:45 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 16 May 2019 02:57:46 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Thu, 16 May 2019 02:57:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 02:57:49 GMT
EXPOSE 2368
# Thu, 16 May 2019 02:57:50 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52156b2ddcc743708b37839cf472d812345842f0e266b5da16a6f1ef39fac379`  
		Last Modified: Thu, 16 May 2019 02:26:15 GMT  
		Size: 20.1 MB (20132996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2928f4ea931cef7d38f203b848f5158b79a08295ba1e69cd2e6ad305e4b8dd2`  
		Last Modified: Thu, 16 May 2019 02:26:01 GMT  
		Size: 1.3 MB (1333899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393b6ca3a64c1a94e36c3cc6149b9aec6b094f3c79fbd363420e25d94ae4b2f9`  
		Last Modified: Thu, 16 May 2019 03:00:59 GMT  
		Size: 10.2 KB (10234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b57894ff77abce634d72df154dc120c550dcdfa3167a093248f55c083327daa`  
		Last Modified: Thu, 16 May 2019 03:01:13 GMT  
		Size: 1.3 MB (1257938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e81bb01330fcdb6f296ed5266b080d4a1076f031feb3c41ab47093b8cdb08a8`  
		Last Modified: Thu, 16 May 2019 03:02:08 GMT  
		Size: 13.7 MB (13723180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9165a8807b671dfc567563e007619eafeb874cb22b50d17d1f90fc5d6ed44a9`  
		Last Modified: Thu, 16 May 2019 03:03:12 GMT  
		Size: 96.4 MB (96406369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f6e4a3c1a14e12fec9e5c5098508888e221b72732388aa797997244231158e2`  
		Last Modified: Thu, 16 May 2019 03:01:04 GMT  
		Size: 32.5 MB (32456613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e19c8a0b94e2a1b2b2fd029dda0cae32e83ac1348b399aa730747b27f890367`  
		Last Modified: Thu, 16 May 2019 03:00:55 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25-alpine`

```console
$ docker pull ghost@sha256:fc465380f9c370bbfc375c43938decd7ad681c482e0e9a9f2eed3bcefdf2f260
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1.25-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:ff07de233220afa8f1f977a454af8fd39e43c34cd00a82f66abf7d72540358dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.0 MB (155013098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30e9221662ba80831aa9f72a16bd2e948f8b2663dd8f6cb5b4b40a147f9ff140`
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
# Sat, 11 May 2019 04:40:52 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Sat, 11 May 2019 04:41:07 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 11 May 2019 04:41:08 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 11 May 2019 04:41:08 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 11 May 2019 04:41:08 GMT
ENV GHOST_VERSION=1.25.7
# Sat, 11 May 2019 04:41:44 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 11 May 2019 04:41:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 11 May 2019 04:41:55 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Sat, 11 May 2019 04:41:55 GMT
WORKDIR /var/lib/ghost
# Sat, 11 May 2019 04:41:56 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 11 May 2019 04:41:56 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Sat, 11 May 2019 04:41:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 04:41:56 GMT
EXPOSE 2368
# Sat, 11 May 2019 04:41:56 GMT
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
	-	`sha256:5b8179e9c2bf321216ec71e69bdbd4fcfca801aa38a264c69168772e76e19ab6`  
		Last Modified: Sat, 11 May 2019 04:42:47 GMT  
		Size: 13.7 MB (13688835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4294b4caa0348108199d0b963e095d6e8d090c8c0ee88b2b32cdddc39de6a5fe`  
		Last Modified: Sat, 11 May 2019 04:43:00 GMT  
		Size: 104.1 MB (104103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5509845bd46fafe569f152b40bba3c3c82d2d99258a34f884d0e454156e41aed`  
		Last Modified: Sat, 11 May 2019 04:42:44 GMT  
		Size: 13.3 MB (13292000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6e61b50daf643ab7eac73e967ecdc2cfc8c1844ce4a68fc4d7b1117a063bcf`  
		Last Modified: Sat, 11 May 2019 04:42:40 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:f9b96058ef6e983740a633170fd82793a8b389f61f9921086f48d4000c811bce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (163015635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e856536477bd42ea53936deb8ccebce0bd2f27951c8d344bfb25352cd04e33c`
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
# Sat, 11 May 2019 10:42:39 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Sat, 11 May 2019 10:43:15 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 11 May 2019 10:43:16 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 11 May 2019 10:43:16 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 11 May 2019 10:43:17 GMT
ENV GHOST_VERSION=1.25.7
# Sat, 11 May 2019 10:44:46 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 11 May 2019 10:44:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 11 May 2019 10:48:23 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Sat, 11 May 2019 10:48:24 GMT
WORKDIR /var/lib/ghost
# Sat, 11 May 2019 10:48:24 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 11 May 2019 10:48:24 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Sat, 11 May 2019 10:48:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 10:48:25 GMT
EXPOSE 2368
# Sat, 11 May 2019 10:48:26 GMT
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
	-	`sha256:557db67d45931d2a38145df6673a173a1f344e4ad0072dd4cfb2cc4307d7da47`  
		Last Modified: Sat, 11 May 2019 10:49:47 GMT  
		Size: 13.7 MB (13694892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d897de6c8ed0325633511e8e0c953f2d3c4ab0f5bb51fa9c3fbd20e9f4a2c608`  
		Last Modified: Sat, 11 May 2019 10:50:11 GMT  
		Size: 96.4 MB (96362366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab2c1ae6edb58c8d322785c74daae9b8c8ef58ba9b72684cba4cef2023a3dce`  
		Last Modified: Sat, 11 May 2019 10:49:51 GMT  
		Size: 30.3 MB (30291976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a45317862208917d7bbc1fa8b81dd36ed2954ece3f3351c0452b69054834ff`  
		Last Modified: Sat, 11 May 2019 10:49:35 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:8ce67c4152f10ee627ac2725516b233c723856f19963cdb84fbe48d6dc56c8bf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.1 MB (168102823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b7984503df818f73376d33bdfd86e081d2fa761e0e369a9a57c76617648b0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 01:31:45 GMT
ENV NODE_VERSION=8.16.0
# Thu, 16 May 2019 01:41:52 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 16 May 2019 01:41:55 GMT
ENV YARN_VERSION=1.15.2
# Thu, 16 May 2019 01:42:07 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 16 May 2019 01:42:12 GMT
CMD ["node"]
# Thu, 16 May 2019 02:51:52 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 16 May 2019 02:52:01 GMT
RUN apk add --no-cache 		bash
# Thu, 16 May 2019 02:52:03 GMT
ENV NODE_ENV=production
# Thu, 16 May 2019 02:52:05 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 16 May 2019 02:52:38 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 16 May 2019 02:52:42 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 16 May 2019 02:52:46 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 16 May 2019 02:52:48 GMT
ENV GHOST_VERSION=1.25.7
# Thu, 16 May 2019 02:54:58 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 16 May 2019 02:55:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 16 May 2019 02:57:40 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Thu, 16 May 2019 02:57:43 GMT
WORKDIR /var/lib/ghost
# Thu, 16 May 2019 02:57:45 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 16 May 2019 02:57:46 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Thu, 16 May 2019 02:57:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 02:57:49 GMT
EXPOSE 2368
# Thu, 16 May 2019 02:57:50 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52156b2ddcc743708b37839cf472d812345842f0e266b5da16a6f1ef39fac379`  
		Last Modified: Thu, 16 May 2019 02:26:15 GMT  
		Size: 20.1 MB (20132996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2928f4ea931cef7d38f203b848f5158b79a08295ba1e69cd2e6ad305e4b8dd2`  
		Last Modified: Thu, 16 May 2019 02:26:01 GMT  
		Size: 1.3 MB (1333899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393b6ca3a64c1a94e36c3cc6149b9aec6b094f3c79fbd363420e25d94ae4b2f9`  
		Last Modified: Thu, 16 May 2019 03:00:59 GMT  
		Size: 10.2 KB (10234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b57894ff77abce634d72df154dc120c550dcdfa3167a093248f55c083327daa`  
		Last Modified: Thu, 16 May 2019 03:01:13 GMT  
		Size: 1.3 MB (1257938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e81bb01330fcdb6f296ed5266b080d4a1076f031feb3c41ab47093b8cdb08a8`  
		Last Modified: Thu, 16 May 2019 03:02:08 GMT  
		Size: 13.7 MB (13723180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9165a8807b671dfc567563e007619eafeb874cb22b50d17d1f90fc5d6ed44a9`  
		Last Modified: Thu, 16 May 2019 03:03:12 GMT  
		Size: 96.4 MB (96406369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f6e4a3c1a14e12fec9e5c5098508888e221b72732388aa797997244231158e2`  
		Last Modified: Thu, 16 May 2019 03:01:04 GMT  
		Size: 32.5 MB (32456613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e19c8a0b94e2a1b2b2fd029dda0cae32e83ac1348b399aa730747b27f890367`  
		Last Modified: Thu, 16 May 2019 03:00:55 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:fc465380f9c370bbfc375c43938decd7ad681c482e0e9a9f2eed3bcefdf2f260
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:ff07de233220afa8f1f977a454af8fd39e43c34cd00a82f66abf7d72540358dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.0 MB (155013098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30e9221662ba80831aa9f72a16bd2e948f8b2663dd8f6cb5b4b40a147f9ff140`
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
# Sat, 11 May 2019 04:40:52 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Sat, 11 May 2019 04:41:07 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 11 May 2019 04:41:08 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 11 May 2019 04:41:08 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 11 May 2019 04:41:08 GMT
ENV GHOST_VERSION=1.25.7
# Sat, 11 May 2019 04:41:44 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 11 May 2019 04:41:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 11 May 2019 04:41:55 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Sat, 11 May 2019 04:41:55 GMT
WORKDIR /var/lib/ghost
# Sat, 11 May 2019 04:41:56 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 11 May 2019 04:41:56 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Sat, 11 May 2019 04:41:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 04:41:56 GMT
EXPOSE 2368
# Sat, 11 May 2019 04:41:56 GMT
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
	-	`sha256:5b8179e9c2bf321216ec71e69bdbd4fcfca801aa38a264c69168772e76e19ab6`  
		Last Modified: Sat, 11 May 2019 04:42:47 GMT  
		Size: 13.7 MB (13688835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4294b4caa0348108199d0b963e095d6e8d090c8c0ee88b2b32cdddc39de6a5fe`  
		Last Modified: Sat, 11 May 2019 04:43:00 GMT  
		Size: 104.1 MB (104103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5509845bd46fafe569f152b40bba3c3c82d2d99258a34f884d0e454156e41aed`  
		Last Modified: Sat, 11 May 2019 04:42:44 GMT  
		Size: 13.3 MB (13292000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6e61b50daf643ab7eac73e967ecdc2cfc8c1844ce4a68fc4d7b1117a063bcf`  
		Last Modified: Sat, 11 May 2019 04:42:40 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:f9b96058ef6e983740a633170fd82793a8b389f61f9921086f48d4000c811bce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (163015635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e856536477bd42ea53936deb8ccebce0bd2f27951c8d344bfb25352cd04e33c`
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
# Sat, 11 May 2019 10:42:39 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Sat, 11 May 2019 10:43:15 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 11 May 2019 10:43:16 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 11 May 2019 10:43:16 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 11 May 2019 10:43:17 GMT
ENV GHOST_VERSION=1.25.7
# Sat, 11 May 2019 10:44:46 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 11 May 2019 10:44:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 11 May 2019 10:48:23 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Sat, 11 May 2019 10:48:24 GMT
WORKDIR /var/lib/ghost
# Sat, 11 May 2019 10:48:24 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 11 May 2019 10:48:24 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Sat, 11 May 2019 10:48:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 10:48:25 GMT
EXPOSE 2368
# Sat, 11 May 2019 10:48:26 GMT
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
	-	`sha256:557db67d45931d2a38145df6673a173a1f344e4ad0072dd4cfb2cc4307d7da47`  
		Last Modified: Sat, 11 May 2019 10:49:47 GMT  
		Size: 13.7 MB (13694892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d897de6c8ed0325633511e8e0c953f2d3c4ab0f5bb51fa9c3fbd20e9f4a2c608`  
		Last Modified: Sat, 11 May 2019 10:50:11 GMT  
		Size: 96.4 MB (96362366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab2c1ae6edb58c8d322785c74daae9b8c8ef58ba9b72684cba4cef2023a3dce`  
		Last Modified: Sat, 11 May 2019 10:49:51 GMT  
		Size: 30.3 MB (30291976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a45317862208917d7bbc1fa8b81dd36ed2954ece3f3351c0452b69054834ff`  
		Last Modified: Sat, 11 May 2019 10:49:35 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:8ce67c4152f10ee627ac2725516b233c723856f19963cdb84fbe48d6dc56c8bf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.1 MB (168102823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b7984503df818f73376d33bdfd86e081d2fa761e0e369a9a57c76617648b0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 01:31:45 GMT
ENV NODE_VERSION=8.16.0
# Thu, 16 May 2019 01:41:52 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 16 May 2019 01:41:55 GMT
ENV YARN_VERSION=1.15.2
# Thu, 16 May 2019 01:42:07 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 16 May 2019 01:42:12 GMT
CMD ["node"]
# Thu, 16 May 2019 02:51:52 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 16 May 2019 02:52:01 GMT
RUN apk add --no-cache 		bash
# Thu, 16 May 2019 02:52:03 GMT
ENV NODE_ENV=production
# Thu, 16 May 2019 02:52:05 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 16 May 2019 02:52:38 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 16 May 2019 02:52:42 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 16 May 2019 02:52:46 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 16 May 2019 02:52:48 GMT
ENV GHOST_VERSION=1.25.7
# Thu, 16 May 2019 02:54:58 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 16 May 2019 02:55:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 16 May 2019 02:57:40 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Thu, 16 May 2019 02:57:43 GMT
WORKDIR /var/lib/ghost
# Thu, 16 May 2019 02:57:45 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 16 May 2019 02:57:46 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Thu, 16 May 2019 02:57:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 02:57:49 GMT
EXPOSE 2368
# Thu, 16 May 2019 02:57:50 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52156b2ddcc743708b37839cf472d812345842f0e266b5da16a6f1ef39fac379`  
		Last Modified: Thu, 16 May 2019 02:26:15 GMT  
		Size: 20.1 MB (20132996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2928f4ea931cef7d38f203b848f5158b79a08295ba1e69cd2e6ad305e4b8dd2`  
		Last Modified: Thu, 16 May 2019 02:26:01 GMT  
		Size: 1.3 MB (1333899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393b6ca3a64c1a94e36c3cc6149b9aec6b094f3c79fbd363420e25d94ae4b2f9`  
		Last Modified: Thu, 16 May 2019 03:00:59 GMT  
		Size: 10.2 KB (10234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b57894ff77abce634d72df154dc120c550dcdfa3167a093248f55c083327daa`  
		Last Modified: Thu, 16 May 2019 03:01:13 GMT  
		Size: 1.3 MB (1257938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e81bb01330fcdb6f296ed5266b080d4a1076f031feb3c41ab47093b8cdb08a8`  
		Last Modified: Thu, 16 May 2019 03:02:08 GMT  
		Size: 13.7 MB (13723180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9165a8807b671dfc567563e007619eafeb874cb22b50d17d1f90fc5d6ed44a9`  
		Last Modified: Thu, 16 May 2019 03:03:12 GMT  
		Size: 96.4 MB (96406369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f6e4a3c1a14e12fec9e5c5098508888e221b72732388aa797997244231158e2`  
		Last Modified: Thu, 16 May 2019 03:01:04 GMT  
		Size: 32.5 MB (32456613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e19c8a0b94e2a1b2b2fd029dda0cae32e83ac1348b399aa730747b27f890367`  
		Last Modified: Thu, 16 May 2019 03:00:55 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2`

```console
$ docker pull ghost@sha256:1b136ec11b0747935ffccd9e8fcb4cc56472d31cd065a64a465a250930446d5b
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
$ docker pull ghost@sha256:35591cc423620304be839e661e34e312a177438f7ddcd36353fddc561b369bc2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.7 MB (236662847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18b229752c60cdf64960997e17db3958f5c84caae81f1adcd77d2aceb0c3ec9c`
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
# Wed, 29 May 2019 17:39:16 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 29 May 2019 17:39:37 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 29 May 2019 17:39:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 29 May 2019 17:39:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 29 May 2019 17:39:38 GMT
ENV GHOST_VERSION=2.22.3
# Wed, 29 May 2019 17:40:21 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 29 May 2019 17:40:30 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 29 May 2019 17:40:30 GMT
WORKDIR /var/lib/ghost
# Wed, 29 May 2019 17:40:30 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 29 May 2019 17:40:30 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 29 May 2019 17:40:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 17:40:31 GMT
EXPOSE 2368
# Wed, 29 May 2019 17:40:31 GMT
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
	-	`sha256:dd165e082a7da5460e67bd59c368a9617e4d609d59aac14cbcaff4932878790b`  
		Last Modified: Wed, 29 May 2019 17:42:21 GMT  
		Size: 13.7 MB (13736729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab6953cc04529434b7aa43c925f887afd05e8a252f02054003f6ecc29b12d50`  
		Last Modified: Wed, 29 May 2019 17:42:48 GMT  
		Size: 166.2 MB (166198935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce829553fcdda94c67195c8c93463793722416ff850dfac6068f7ca638240eb3`  
		Last Modified: Wed, 29 May 2019 17:42:18 GMT  
		Size: 1.5 MB (1506569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfbaf0d597a3b59104be01024d1ff3784d21ef1ec5254c12399d0b3af39f37c9`  
		Last Modified: Wed, 29 May 2019 17:42:18 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; arm variant v7

```console
$ docker pull ghost@sha256:51ed26e6e2e601f7c032290f522e0ee5fb067b63afd90905b12c4315e77b62b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.8 MB (232836546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ce05eda10804f0f69443fba2019a51422c0ab7087441003b4ccc9e9348f3e74`
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
# Wed, 29 May 2019 17:19:43 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 29 May 2019 17:20:07 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 29 May 2019 17:20:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 29 May 2019 17:20:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 29 May 2019 17:20:10 GMT
ENV GHOST_VERSION=2.22.3
# Wed, 29 May 2019 17:21:17 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 29 May 2019 17:24:20 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 29 May 2019 17:24:21 GMT
WORKDIR /var/lib/ghost
# Wed, 29 May 2019 17:24:21 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 29 May 2019 17:24:22 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 29 May 2019 17:24:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 17:24:23 GMT
EXPOSE 2368
# Wed, 29 May 2019 17:24:23 GMT
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
	-	`sha256:51ead0eea2a91bb15eca29b8ccbfb8ad94be429b22b1b3b2fc5b401b52cda590`  
		Last Modified: Wed, 29 May 2019 17:24:43 GMT  
		Size: 13.7 MB (13736460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b88451c78970e72c4b0c70136d37e4719f321a22976339c6720dcd97e818d18`  
		Last Modified: Wed, 29 May 2019 17:25:24 GMT  
		Size: 150.5 MB (150453848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27655ca5d7e3aa2fb2c76e5ca5f3cd10b776e7acc88ca4b20b8c30c070a94d9`  
		Last Modified: Wed, 29 May 2019 17:24:43 GMT  
		Size: 19.6 MB (19560851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4e30302c2910f8f6da9d3d031e79c4b60f67b269603b8c7bce4e0f1ed952866`  
		Last Modified: Wed, 29 May 2019 17:24:37 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:fde594937f68a50175405d1a91ab8083fe414a78bdff36d98387400aba6bacc7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.0 MB (234043883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f3a0c49000b48ba9bf84195a815624223d848444cabb31f206ffdaddb9a787`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 22 May 2019 23:44:56 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 23 May 2019 00:06:44 GMT
ENV NODE_VERSION=10.15.3
# Thu, 23 May 2019 00:07:11 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 23 May 2019 00:07:13 GMT
ENV YARN_VERSION=1.13.0
# Thu, 23 May 2019 00:07:17 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 23 May 2019 00:07:17 GMT
CMD ["node"]
# Thu, 23 May 2019 21:39:34 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 May 2019 21:39:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 23 May 2019 21:39:39 GMT
ENV NODE_ENV=production
# Thu, 23 May 2019 21:39:39 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 23 May 2019 21:39:59 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 23 May 2019 21:40:01 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 23 May 2019 21:40:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 23 May 2019 21:40:02 GMT
ENV GHOST_VERSION=2.22.3
# Thu, 23 May 2019 21:40:55 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 23 May 2019 21:43:36 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 23 May 2019 21:43:37 GMT
WORKDIR /var/lib/ghost
# Thu, 23 May 2019 21:43:37 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 23 May 2019 21:43:37 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 23 May 2019 21:43:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 21:43:38 GMT
EXPOSE 2368
# Thu, 23 May 2019 21:43:38 GMT
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
	-	`sha256:b7ecd9482a01cac9a2da131b1e2dfa0af69ff07e69fcf6edaf9df0c63c4c662a`  
		Last Modified: Thu, 23 May 2019 00:12:27 GMT  
		Size: 28.3 MB (28345963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43426f6095bbd12eff233e331b1f66d21ede40a6c967cc432ed09d4171213544`  
		Last Modified: Thu, 23 May 2019 00:12:17 GMT  
		Size: 1.3 MB (1323217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7271ca35689850df8c2f14550ee1b77166ed76bcc54726643e037807d7ef1ec7`  
		Last Modified: Thu, 23 May 2019 21:48:29 GMT  
		Size: 468.9 KB (468943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e93bde67bbb550952d98023dcfde1a0338a61617ef192c6bfdecb04d4abead`  
		Last Modified: Thu, 23 May 2019 21:48:34 GMT  
		Size: 13.7 MB (13727116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ac4a9fc1a9b71062710d04abe42501fae5d4320a2a3965c85a7cf28004c41b`  
		Last Modified: Thu, 23 May 2019 21:49:08 GMT  
		Size: 150.3 MB (150305710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce55a14aaa2f0f44b4ecb60baf592787896e5e2b43d59dc189500219de985de5`  
		Last Modified: Thu, 23 May 2019 21:48:35 GMT  
		Size: 19.5 MB (19534379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fef57bbeb4bb3bbc57d5e8feec2e35d8fe6fb3640132d14898d48cb910fd3c7`  
		Last Modified: Thu, 23 May 2019 21:48:29 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; ppc64le

```console
$ docker pull ghost@sha256:b6e739f9dc37f28566432f59309e52993772d2a11f7a00ea6b825982cc82871b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.9 MB (223850273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9c00d4f3d98361d1e435816604e010de03bd70be752e4d76319c296eff80b52`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:14:01 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 14:51:31 GMT
ENV NODE_VERSION=10.15.3
# Wed, 08 May 2019 14:53:45 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 14:53:54 GMT
ENV YARN_VERSION=1.13.0
# Wed, 08 May 2019 14:54:09 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 14:54:12 GMT
CMD ["node"]
# Thu, 09 May 2019 00:25:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 09 May 2019 00:25:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 09 May 2019 00:25:29 GMT
ENV NODE_ENV=production
# Thu, 09 May 2019 00:25:37 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 09 May 2019 00:26:22 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 09 May 2019 00:26:30 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 09 May 2019 00:26:35 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 16 May 2019 00:17:54 GMT
ENV GHOST_VERSION=2.22.1
# Thu, 16 May 2019 00:20:16 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 16 May 2019 00:23:49 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 16 May 2019 00:23:51 GMT
WORKDIR /var/lib/ghost
# Thu, 16 May 2019 00:23:53 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 16 May 2019 00:23:54 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 16 May 2019 00:23:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:23:57 GMT
EXPOSE 2368
# Thu, 16 May 2019 00:23:59 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8942858951da9975540fe5101d6b94c8f553ebbd9fe8614a4dcfd9ec1d21e5c`  
		Last Modified: Wed, 08 May 2019 14:59:21 GMT  
		Size: 4.2 KB (4185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72bfa44db08cb51a5acd2c654c103282af2868d37547ec5007742fe69e611f0`  
		Last Modified: Wed, 08 May 2019 15:08:51 GMT  
		Size: 28.6 MB (28639189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb103610d1c42c6ce9932dd9599d7d334c8370dc3af64558ffdebb129dd6a14`  
		Last Modified: Wed, 08 May 2019 15:08:05 GMT  
		Size: 1.3 MB (1323221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31ad1d1983140420b35faa22ce7d97c4435d29f2859141a83deda4cb0d02993`  
		Last Modified: Thu, 09 May 2019 00:50:05 GMT  
		Size: 470.1 KB (470076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43e1e8b64db62770ecf9979702ec02691bf23fa21a6bc50c460e39e604272d4`  
		Last Modified: Thu, 09 May 2019 00:50:54 GMT  
		Size: 13.7 MB (13684221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86490b9fc91aa31f0db115680db9e1659c94615cbdaba3271962f084acf68874`  
		Last Modified: Thu, 16 May 2019 00:31:44 GMT  
		Size: 144.3 MB (144337740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f67f9b0dc7adb5270f5451eaa1c1422ddcf3a19a69b6f228c9460909b95ac2`  
		Last Modified: Thu, 16 May 2019 00:30:16 GMT  
		Size: 12.6 MB (12646168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b161390cf32259020caecfeb3835334a4c17c95ae266e460d59171c594cfb54`  
		Last Modified: Thu, 16 May 2019 00:30:11 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; s390x

```console
$ docker pull ghost@sha256:7424c3bf3c8f426b94e1c2d51a02069fcf9f0cad395802bd20ea106540cb4551
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.6 MB (225622010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:440cad3077a7b7a3214adec02e522e3ba1aee6933c63276d3e4835767a4419d2`
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
# Wed, 29 May 2019 17:21:19 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 29 May 2019 17:21:36 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 29 May 2019 17:21:36 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 29 May 2019 17:21:37 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 29 May 2019 17:21:37 GMT
ENV GHOST_VERSION=2.22.3
# Wed, 29 May 2019 17:22:04 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 29 May 2019 17:23:28 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 29 May 2019 17:23:29 GMT
WORKDIR /var/lib/ghost
# Wed, 29 May 2019 17:23:29 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 29 May 2019 17:23:29 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 29 May 2019 17:23:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 17:23:29 GMT
EXPOSE 2368
# Wed, 29 May 2019 17:23:30 GMT
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
	-	`sha256:b8d2dd10111b864e53752a6f4c866327da6c5d7f789497e15dcc302324683a3d`  
		Last Modified: Wed, 29 May 2019 17:24:24 GMT  
		Size: 13.7 MB (13733585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57328707cb4e8404cfe108275880b25c31d8dffaf50f166c32681652db93da3e`  
		Last Modified: Wed, 29 May 2019 17:24:40 GMT  
		Size: 144.3 MB (144329259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c544f75d05fab464eafdc11e2ad6782f55510a33181e0525f290a67bcbf92a`  
		Last Modified: Wed, 29 May 2019 17:24:24 GMT  
		Size: 12.8 MB (12773436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ae197ba8614d9afbc31ee3fb49b0b776e6a9f60e1a4dcaee1bc26a90d507dd`  
		Last Modified: Wed, 29 May 2019 17:24:21 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.22`

```console
$ docker pull ghost@sha256:1b136ec11b0747935ffccd9e8fcb4cc56472d31cd065a64a465a250930446d5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `ghost:2.22` - linux; amd64

```console
$ docker pull ghost@sha256:35591cc423620304be839e661e34e312a177438f7ddcd36353fddc561b369bc2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.7 MB (236662847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18b229752c60cdf64960997e17db3958f5c84caae81f1adcd77d2aceb0c3ec9c`
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
# Wed, 29 May 2019 17:39:16 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 29 May 2019 17:39:37 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 29 May 2019 17:39:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 29 May 2019 17:39:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 29 May 2019 17:39:38 GMT
ENV GHOST_VERSION=2.22.3
# Wed, 29 May 2019 17:40:21 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 29 May 2019 17:40:30 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 29 May 2019 17:40:30 GMT
WORKDIR /var/lib/ghost
# Wed, 29 May 2019 17:40:30 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 29 May 2019 17:40:30 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 29 May 2019 17:40:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 17:40:31 GMT
EXPOSE 2368
# Wed, 29 May 2019 17:40:31 GMT
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
	-	`sha256:dd165e082a7da5460e67bd59c368a9617e4d609d59aac14cbcaff4932878790b`  
		Last Modified: Wed, 29 May 2019 17:42:21 GMT  
		Size: 13.7 MB (13736729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab6953cc04529434b7aa43c925f887afd05e8a252f02054003f6ecc29b12d50`  
		Last Modified: Wed, 29 May 2019 17:42:48 GMT  
		Size: 166.2 MB (166198935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce829553fcdda94c67195c8c93463793722416ff850dfac6068f7ca638240eb3`  
		Last Modified: Wed, 29 May 2019 17:42:18 GMT  
		Size: 1.5 MB (1506569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfbaf0d597a3b59104be01024d1ff3784d21ef1ec5254c12399d0b3af39f37c9`  
		Last Modified: Wed, 29 May 2019 17:42:18 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.22` - linux; arm variant v7

```console
$ docker pull ghost@sha256:51ed26e6e2e601f7c032290f522e0ee5fb067b63afd90905b12c4315e77b62b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.8 MB (232836546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ce05eda10804f0f69443fba2019a51422c0ab7087441003b4ccc9e9348f3e74`
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
# Wed, 29 May 2019 17:19:43 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 29 May 2019 17:20:07 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 29 May 2019 17:20:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 29 May 2019 17:20:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 29 May 2019 17:20:10 GMT
ENV GHOST_VERSION=2.22.3
# Wed, 29 May 2019 17:21:17 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 29 May 2019 17:24:20 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 29 May 2019 17:24:21 GMT
WORKDIR /var/lib/ghost
# Wed, 29 May 2019 17:24:21 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 29 May 2019 17:24:22 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 29 May 2019 17:24:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 17:24:23 GMT
EXPOSE 2368
# Wed, 29 May 2019 17:24:23 GMT
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
	-	`sha256:51ead0eea2a91bb15eca29b8ccbfb8ad94be429b22b1b3b2fc5b401b52cda590`  
		Last Modified: Wed, 29 May 2019 17:24:43 GMT  
		Size: 13.7 MB (13736460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b88451c78970e72c4b0c70136d37e4719f321a22976339c6720dcd97e818d18`  
		Last Modified: Wed, 29 May 2019 17:25:24 GMT  
		Size: 150.5 MB (150453848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27655ca5d7e3aa2fb2c76e5ca5f3cd10b776e7acc88ca4b20b8c30c070a94d9`  
		Last Modified: Wed, 29 May 2019 17:24:43 GMT  
		Size: 19.6 MB (19560851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4e30302c2910f8f6da9d3d031e79c4b60f67b269603b8c7bce4e0f1ed952866`  
		Last Modified: Wed, 29 May 2019 17:24:37 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.22` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:fde594937f68a50175405d1a91ab8083fe414a78bdff36d98387400aba6bacc7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.0 MB (234043883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f3a0c49000b48ba9bf84195a815624223d848444cabb31f206ffdaddb9a787`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 22 May 2019 23:44:56 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 23 May 2019 00:06:44 GMT
ENV NODE_VERSION=10.15.3
# Thu, 23 May 2019 00:07:11 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 23 May 2019 00:07:13 GMT
ENV YARN_VERSION=1.13.0
# Thu, 23 May 2019 00:07:17 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 23 May 2019 00:07:17 GMT
CMD ["node"]
# Thu, 23 May 2019 21:39:34 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 May 2019 21:39:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 23 May 2019 21:39:39 GMT
ENV NODE_ENV=production
# Thu, 23 May 2019 21:39:39 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 23 May 2019 21:39:59 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 23 May 2019 21:40:01 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 23 May 2019 21:40:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 23 May 2019 21:40:02 GMT
ENV GHOST_VERSION=2.22.3
# Thu, 23 May 2019 21:40:55 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 23 May 2019 21:43:36 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 23 May 2019 21:43:37 GMT
WORKDIR /var/lib/ghost
# Thu, 23 May 2019 21:43:37 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 23 May 2019 21:43:37 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 23 May 2019 21:43:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 21:43:38 GMT
EXPOSE 2368
# Thu, 23 May 2019 21:43:38 GMT
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
	-	`sha256:b7ecd9482a01cac9a2da131b1e2dfa0af69ff07e69fcf6edaf9df0c63c4c662a`  
		Last Modified: Thu, 23 May 2019 00:12:27 GMT  
		Size: 28.3 MB (28345963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43426f6095bbd12eff233e331b1f66d21ede40a6c967cc432ed09d4171213544`  
		Last Modified: Thu, 23 May 2019 00:12:17 GMT  
		Size: 1.3 MB (1323217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7271ca35689850df8c2f14550ee1b77166ed76bcc54726643e037807d7ef1ec7`  
		Last Modified: Thu, 23 May 2019 21:48:29 GMT  
		Size: 468.9 KB (468943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e93bde67bbb550952d98023dcfde1a0338a61617ef192c6bfdecb04d4abead`  
		Last Modified: Thu, 23 May 2019 21:48:34 GMT  
		Size: 13.7 MB (13727116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ac4a9fc1a9b71062710d04abe42501fae5d4320a2a3965c85a7cf28004c41b`  
		Last Modified: Thu, 23 May 2019 21:49:08 GMT  
		Size: 150.3 MB (150305710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce55a14aaa2f0f44b4ecb60baf592787896e5e2b43d59dc189500219de985de5`  
		Last Modified: Thu, 23 May 2019 21:48:35 GMT  
		Size: 19.5 MB (19534379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fef57bbeb4bb3bbc57d5e8feec2e35d8fe6fb3640132d14898d48cb910fd3c7`  
		Last Modified: Thu, 23 May 2019 21:48:29 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.22` - linux; ppc64le

```console
$ docker pull ghost@sha256:b6e739f9dc37f28566432f59309e52993772d2a11f7a00ea6b825982cc82871b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.9 MB (223850273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9c00d4f3d98361d1e435816604e010de03bd70be752e4d76319c296eff80b52`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:14:01 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 14:51:31 GMT
ENV NODE_VERSION=10.15.3
# Wed, 08 May 2019 14:53:45 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 14:53:54 GMT
ENV YARN_VERSION=1.13.0
# Wed, 08 May 2019 14:54:09 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 14:54:12 GMT
CMD ["node"]
# Thu, 09 May 2019 00:25:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 09 May 2019 00:25:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 09 May 2019 00:25:29 GMT
ENV NODE_ENV=production
# Thu, 09 May 2019 00:25:37 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 09 May 2019 00:26:22 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 09 May 2019 00:26:30 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 09 May 2019 00:26:35 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 16 May 2019 00:17:54 GMT
ENV GHOST_VERSION=2.22.1
# Thu, 16 May 2019 00:20:16 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 16 May 2019 00:23:49 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 16 May 2019 00:23:51 GMT
WORKDIR /var/lib/ghost
# Thu, 16 May 2019 00:23:53 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 16 May 2019 00:23:54 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 16 May 2019 00:23:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:23:57 GMT
EXPOSE 2368
# Thu, 16 May 2019 00:23:59 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8942858951da9975540fe5101d6b94c8f553ebbd9fe8614a4dcfd9ec1d21e5c`  
		Last Modified: Wed, 08 May 2019 14:59:21 GMT  
		Size: 4.2 KB (4185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72bfa44db08cb51a5acd2c654c103282af2868d37547ec5007742fe69e611f0`  
		Last Modified: Wed, 08 May 2019 15:08:51 GMT  
		Size: 28.6 MB (28639189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb103610d1c42c6ce9932dd9599d7d334c8370dc3af64558ffdebb129dd6a14`  
		Last Modified: Wed, 08 May 2019 15:08:05 GMT  
		Size: 1.3 MB (1323221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31ad1d1983140420b35faa22ce7d97c4435d29f2859141a83deda4cb0d02993`  
		Last Modified: Thu, 09 May 2019 00:50:05 GMT  
		Size: 470.1 KB (470076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43e1e8b64db62770ecf9979702ec02691bf23fa21a6bc50c460e39e604272d4`  
		Last Modified: Thu, 09 May 2019 00:50:54 GMT  
		Size: 13.7 MB (13684221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86490b9fc91aa31f0db115680db9e1659c94615cbdaba3271962f084acf68874`  
		Last Modified: Thu, 16 May 2019 00:31:44 GMT  
		Size: 144.3 MB (144337740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f67f9b0dc7adb5270f5451eaa1c1422ddcf3a19a69b6f228c9460909b95ac2`  
		Last Modified: Thu, 16 May 2019 00:30:16 GMT  
		Size: 12.6 MB (12646168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b161390cf32259020caecfeb3835334a4c17c95ae266e460d59171c594cfb54`  
		Last Modified: Thu, 16 May 2019 00:30:11 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.22` - linux; s390x

```console
$ docker pull ghost@sha256:7424c3bf3c8f426b94e1c2d51a02069fcf9f0cad395802bd20ea106540cb4551
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.6 MB (225622010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:440cad3077a7b7a3214adec02e522e3ba1aee6933c63276d3e4835767a4419d2`
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
# Wed, 29 May 2019 17:21:19 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 29 May 2019 17:21:36 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 29 May 2019 17:21:36 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 29 May 2019 17:21:37 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 29 May 2019 17:21:37 GMT
ENV GHOST_VERSION=2.22.3
# Wed, 29 May 2019 17:22:04 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 29 May 2019 17:23:28 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 29 May 2019 17:23:29 GMT
WORKDIR /var/lib/ghost
# Wed, 29 May 2019 17:23:29 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 29 May 2019 17:23:29 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 29 May 2019 17:23:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 17:23:29 GMT
EXPOSE 2368
# Wed, 29 May 2019 17:23:30 GMT
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
	-	`sha256:b8d2dd10111b864e53752a6f4c866327da6c5d7f789497e15dcc302324683a3d`  
		Last Modified: Wed, 29 May 2019 17:24:24 GMT  
		Size: 13.7 MB (13733585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57328707cb4e8404cfe108275880b25c31d8dffaf50f166c32681652db93da3e`  
		Last Modified: Wed, 29 May 2019 17:24:40 GMT  
		Size: 144.3 MB (144329259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c544f75d05fab464eafdc11e2ad6782f55510a33181e0525f290a67bcbf92a`  
		Last Modified: Wed, 29 May 2019 17:24:24 GMT  
		Size: 12.8 MB (12773436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ae197ba8614d9afbc31ee3fb49b0b776e6a9f60e1a4dcaee1bc26a90d507dd`  
		Last Modified: Wed, 29 May 2019 17:24:21 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.22.3`

```console
$ docker pull ghost@sha256:5d461473c24e79f14f4f72ca70cdc3ef99f11df9bea424c6d00bef1f4c6d90fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; s390x

### `ghost:2.22.3` - linux; amd64

```console
$ docker pull ghost@sha256:35591cc423620304be839e661e34e312a177438f7ddcd36353fddc561b369bc2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.7 MB (236662847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18b229752c60cdf64960997e17db3958f5c84caae81f1adcd77d2aceb0c3ec9c`
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
# Wed, 29 May 2019 17:39:16 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 29 May 2019 17:39:37 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 29 May 2019 17:39:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 29 May 2019 17:39:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 29 May 2019 17:39:38 GMT
ENV GHOST_VERSION=2.22.3
# Wed, 29 May 2019 17:40:21 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 29 May 2019 17:40:30 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 29 May 2019 17:40:30 GMT
WORKDIR /var/lib/ghost
# Wed, 29 May 2019 17:40:30 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 29 May 2019 17:40:30 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 29 May 2019 17:40:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 17:40:31 GMT
EXPOSE 2368
# Wed, 29 May 2019 17:40:31 GMT
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
	-	`sha256:dd165e082a7da5460e67bd59c368a9617e4d609d59aac14cbcaff4932878790b`  
		Last Modified: Wed, 29 May 2019 17:42:21 GMT  
		Size: 13.7 MB (13736729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab6953cc04529434b7aa43c925f887afd05e8a252f02054003f6ecc29b12d50`  
		Last Modified: Wed, 29 May 2019 17:42:48 GMT  
		Size: 166.2 MB (166198935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce829553fcdda94c67195c8c93463793722416ff850dfac6068f7ca638240eb3`  
		Last Modified: Wed, 29 May 2019 17:42:18 GMT  
		Size: 1.5 MB (1506569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfbaf0d597a3b59104be01024d1ff3784d21ef1ec5254c12399d0b3af39f37c9`  
		Last Modified: Wed, 29 May 2019 17:42:18 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.22.3` - linux; arm variant v7

```console
$ docker pull ghost@sha256:51ed26e6e2e601f7c032290f522e0ee5fb067b63afd90905b12c4315e77b62b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.8 MB (232836546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ce05eda10804f0f69443fba2019a51422c0ab7087441003b4ccc9e9348f3e74`
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
# Wed, 29 May 2019 17:19:43 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 29 May 2019 17:20:07 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 29 May 2019 17:20:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 29 May 2019 17:20:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 29 May 2019 17:20:10 GMT
ENV GHOST_VERSION=2.22.3
# Wed, 29 May 2019 17:21:17 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 29 May 2019 17:24:20 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 29 May 2019 17:24:21 GMT
WORKDIR /var/lib/ghost
# Wed, 29 May 2019 17:24:21 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 29 May 2019 17:24:22 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 29 May 2019 17:24:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 17:24:23 GMT
EXPOSE 2368
# Wed, 29 May 2019 17:24:23 GMT
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
	-	`sha256:51ead0eea2a91bb15eca29b8ccbfb8ad94be429b22b1b3b2fc5b401b52cda590`  
		Last Modified: Wed, 29 May 2019 17:24:43 GMT  
		Size: 13.7 MB (13736460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b88451c78970e72c4b0c70136d37e4719f321a22976339c6720dcd97e818d18`  
		Last Modified: Wed, 29 May 2019 17:25:24 GMT  
		Size: 150.5 MB (150453848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27655ca5d7e3aa2fb2c76e5ca5f3cd10b776e7acc88ca4b20b8c30c070a94d9`  
		Last Modified: Wed, 29 May 2019 17:24:43 GMT  
		Size: 19.6 MB (19560851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4e30302c2910f8f6da9d3d031e79c4b60f67b269603b8c7bce4e0f1ed952866`  
		Last Modified: Wed, 29 May 2019 17:24:37 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.22.3` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:fde594937f68a50175405d1a91ab8083fe414a78bdff36d98387400aba6bacc7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.0 MB (234043883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f3a0c49000b48ba9bf84195a815624223d848444cabb31f206ffdaddb9a787`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 22 May 2019 23:44:56 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 23 May 2019 00:06:44 GMT
ENV NODE_VERSION=10.15.3
# Thu, 23 May 2019 00:07:11 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 23 May 2019 00:07:13 GMT
ENV YARN_VERSION=1.13.0
# Thu, 23 May 2019 00:07:17 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 23 May 2019 00:07:17 GMT
CMD ["node"]
# Thu, 23 May 2019 21:39:34 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 May 2019 21:39:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 23 May 2019 21:39:39 GMT
ENV NODE_ENV=production
# Thu, 23 May 2019 21:39:39 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 23 May 2019 21:39:59 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 23 May 2019 21:40:01 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 23 May 2019 21:40:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 23 May 2019 21:40:02 GMT
ENV GHOST_VERSION=2.22.3
# Thu, 23 May 2019 21:40:55 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 23 May 2019 21:43:36 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 23 May 2019 21:43:37 GMT
WORKDIR /var/lib/ghost
# Thu, 23 May 2019 21:43:37 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 23 May 2019 21:43:37 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 23 May 2019 21:43:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 21:43:38 GMT
EXPOSE 2368
# Thu, 23 May 2019 21:43:38 GMT
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
	-	`sha256:b7ecd9482a01cac9a2da131b1e2dfa0af69ff07e69fcf6edaf9df0c63c4c662a`  
		Last Modified: Thu, 23 May 2019 00:12:27 GMT  
		Size: 28.3 MB (28345963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43426f6095bbd12eff233e331b1f66d21ede40a6c967cc432ed09d4171213544`  
		Last Modified: Thu, 23 May 2019 00:12:17 GMT  
		Size: 1.3 MB (1323217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7271ca35689850df8c2f14550ee1b77166ed76bcc54726643e037807d7ef1ec7`  
		Last Modified: Thu, 23 May 2019 21:48:29 GMT  
		Size: 468.9 KB (468943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e93bde67bbb550952d98023dcfde1a0338a61617ef192c6bfdecb04d4abead`  
		Last Modified: Thu, 23 May 2019 21:48:34 GMT  
		Size: 13.7 MB (13727116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ac4a9fc1a9b71062710d04abe42501fae5d4320a2a3965c85a7cf28004c41b`  
		Last Modified: Thu, 23 May 2019 21:49:08 GMT  
		Size: 150.3 MB (150305710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce55a14aaa2f0f44b4ecb60baf592787896e5e2b43d59dc189500219de985de5`  
		Last Modified: Thu, 23 May 2019 21:48:35 GMT  
		Size: 19.5 MB (19534379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fef57bbeb4bb3bbc57d5e8feec2e35d8fe6fb3640132d14898d48cb910fd3c7`  
		Last Modified: Thu, 23 May 2019 21:48:29 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.22.3` - linux; s390x

```console
$ docker pull ghost@sha256:7424c3bf3c8f426b94e1c2d51a02069fcf9f0cad395802bd20ea106540cb4551
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.6 MB (225622010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:440cad3077a7b7a3214adec02e522e3ba1aee6933c63276d3e4835767a4419d2`
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
# Wed, 29 May 2019 17:21:19 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 29 May 2019 17:21:36 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 29 May 2019 17:21:36 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 29 May 2019 17:21:37 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 29 May 2019 17:21:37 GMT
ENV GHOST_VERSION=2.22.3
# Wed, 29 May 2019 17:22:04 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 29 May 2019 17:23:28 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 29 May 2019 17:23:29 GMT
WORKDIR /var/lib/ghost
# Wed, 29 May 2019 17:23:29 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 29 May 2019 17:23:29 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 29 May 2019 17:23:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 17:23:29 GMT
EXPOSE 2368
# Wed, 29 May 2019 17:23:30 GMT
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
	-	`sha256:b8d2dd10111b864e53752a6f4c866327da6c5d7f789497e15dcc302324683a3d`  
		Last Modified: Wed, 29 May 2019 17:24:24 GMT  
		Size: 13.7 MB (13733585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57328707cb4e8404cfe108275880b25c31d8dffaf50f166c32681652db93da3e`  
		Last Modified: Wed, 29 May 2019 17:24:40 GMT  
		Size: 144.3 MB (144329259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c544f75d05fab464eafdc11e2ad6782f55510a33181e0525f290a67bcbf92a`  
		Last Modified: Wed, 29 May 2019 17:24:24 GMT  
		Size: 12.8 MB (12773436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ae197ba8614d9afbc31ee3fb49b0b776e6a9f60e1a4dcaee1bc26a90d507dd`  
		Last Modified: Wed, 29 May 2019 17:24:21 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.22.3-alpine`

```console
$ docker pull ghost@sha256:762744e0670ba67f311170ab96a2ab3cf5518aa7dfc8e18c3642a9a625c9ef19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386

### `ghost:2.22.3-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:cb4a4ded54640194c81d839c341126ae3a5a332a96067c64ddae9cc23d5d1ae2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.5 MB (218484922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27ac0a776c7cb7f90a38803cb1d0764547392673ac6b1c11d7d13e16bb869cb2`
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
# Wed, 29 May 2019 17:40:41 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 29 May 2019 17:41:00 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 29 May 2019 17:41:01 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 29 May 2019 17:41:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 29 May 2019 17:41:01 GMT
ENV GHOST_VERSION=2.22.3
# Wed, 29 May 2019 17:41:43 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 29 May 2019 17:41:53 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 29 May 2019 17:41:53 GMT
WORKDIR /var/lib/ghost
# Wed, 29 May 2019 17:41:53 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 29 May 2019 17:41:54 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 29 May 2019 17:41:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 17:41:54 GMT
EXPOSE 2368
# Wed, 29 May 2019 17:41:54 GMT
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
	-	`sha256:77f0ebaa5cf69ce467679ecf7509a3fc4491a33e059160f41cde7665022af928`  
		Last Modified: Wed, 29 May 2019 17:42:59 GMT  
		Size: 13.7 MB (13735450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9234bf0cfaeb7138aef17027a93d8ebb9f69f292bc489b60d8804c1abedc706`  
		Last Modified: Wed, 29 May 2019 17:43:21 GMT  
		Size: 167.1 MB (167109289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07327617669b05bb99fbe2d3c732b6ec798e9cd6fcf5c1dddd6e70680af73452`  
		Last Modified: Wed, 29 May 2019 17:42:57 GMT  
		Size: 10.9 MB (10931178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fca02af4b95237a97b0a52d0e3766bb1fc33963cf688235e27e0ad40e78dc92`  
		Last Modified: Wed, 29 May 2019 17:42:55 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.22.3-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:58fdd5ea53c80936103458a75e80055e22ed270d056047afbfc2965bf98a49d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.9 MB (195880995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be79a571c958988d901f97e0f4676a8aed8b5b20e96bb19b0f2b3db08d207084`
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
# Wed, 29 May 2019 17:10:42 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 29 May 2019 17:11:17 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 29 May 2019 17:11:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 29 May 2019 17:11:20 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 29 May 2019 17:11:20 GMT
ENV GHOST_VERSION=2.22.3
# Wed, 29 May 2019 17:13:01 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 29 May 2019 17:16:20 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 29 May 2019 17:16:21 GMT
WORKDIR /var/lib/ghost
# Wed, 29 May 2019 17:16:22 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 29 May 2019 17:16:23 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 29 May 2019 17:16:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 17:16:24 GMT
EXPOSE 2368
# Wed, 29 May 2019 17:16:25 GMT
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
	-	`sha256:a3fde515391ff76e7e22e0f53717e95f32a9446a17e4872a825c163551a5d3a5`  
		Last Modified: Wed, 29 May 2019 17:16:53 GMT  
		Size: 13.7 MB (13738098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016132982c8274c6415737098340a18c72b7e4ced79642fc5f5236f8199f2642`  
		Last Modified: Wed, 29 May 2019 17:17:36 GMT  
		Size: 144.3 MB (144304641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a60e50aae2163e61bc29dce69880b2cbe611ada81838fce43cceb76e0f64ce`  
		Last Modified: Wed, 29 May 2019 17:16:50 GMT  
		Size: 12.2 MB (12247618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f041b38dea54862748caffa880214a5f166296d542106c43a861af9970717e`  
		Last Modified: Wed, 29 May 2019 17:16:46 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.22.3-alpine` - linux; 386

```console
$ docker pull ghost@sha256:f51c624c1dc3e58c3de248c56f0b4960c14a3d3f3eebda1ed4a73b555f668d52
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 MB (197371883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8fe669e4f5dfd66040238ced7770bb77780da22a4105c3918697c27224415c9`
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
# Wed, 29 May 2019 17:43:31 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 29 May 2019 17:43:51 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 29 May 2019 17:43:51 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 29 May 2019 17:43:51 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 29 May 2019 17:43:52 GMT
ENV GHOST_VERSION=2.22.3
# Wed, 29 May 2019 17:44:37 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 29 May 2019 17:46:31 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 29 May 2019 17:46:31 GMT
WORKDIR /var/lib/ghost
# Wed, 29 May 2019 17:46:32 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 29 May 2019 17:46:32 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 29 May 2019 17:46:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 17:46:32 GMT
EXPOSE 2368
# Wed, 29 May 2019 17:46:32 GMT
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
	-	`sha256:90bb34506ca5ba0e0dcf37d0eab8c5044cd847d32ee3967b11044d5583e8f2c9`  
		Last Modified: Wed, 29 May 2019 17:47:01 GMT  
		Size: 13.7 MB (13736340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974d4aa26be89349b2769733d2308a1169db5f69e62af98f6765f2ecbb9307b2`  
		Last Modified: Wed, 29 May 2019 17:47:27 GMT  
		Size: 144.3 MB (144299832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9653e6a2e15da665c627f5f02eee355d20b7dd0d708f53128f28a8bb7fa7393d`  
		Last Modified: Wed, 29 May 2019 17:46:59 GMT  
		Size: 12.5 MB (12489231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9f259f3808844e4c00c7b6945be6f9094a31d05b7cfc130022a778191bb11a`  
		Last Modified: Wed, 29 May 2019 17:46:55 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.22-alpine`

```console
$ docker pull ghost@sha256:f9fd39ad14959342218649e0c0f0a75c2b4755e8d66c40f823b232221d1eb0e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le

### `ghost:2.22-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:cb4a4ded54640194c81d839c341126ae3a5a332a96067c64ddae9cc23d5d1ae2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.5 MB (218484922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27ac0a776c7cb7f90a38803cb1d0764547392673ac6b1c11d7d13e16bb869cb2`
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
# Wed, 29 May 2019 17:40:41 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 29 May 2019 17:41:00 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 29 May 2019 17:41:01 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 29 May 2019 17:41:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 29 May 2019 17:41:01 GMT
ENV GHOST_VERSION=2.22.3
# Wed, 29 May 2019 17:41:43 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 29 May 2019 17:41:53 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 29 May 2019 17:41:53 GMT
WORKDIR /var/lib/ghost
# Wed, 29 May 2019 17:41:53 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 29 May 2019 17:41:54 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 29 May 2019 17:41:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 17:41:54 GMT
EXPOSE 2368
# Wed, 29 May 2019 17:41:54 GMT
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
	-	`sha256:77f0ebaa5cf69ce467679ecf7509a3fc4491a33e059160f41cde7665022af928`  
		Last Modified: Wed, 29 May 2019 17:42:59 GMT  
		Size: 13.7 MB (13735450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9234bf0cfaeb7138aef17027a93d8ebb9f69f292bc489b60d8804c1abedc706`  
		Last Modified: Wed, 29 May 2019 17:43:21 GMT  
		Size: 167.1 MB (167109289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07327617669b05bb99fbe2d3c732b6ec798e9cd6fcf5c1dddd6e70680af73452`  
		Last Modified: Wed, 29 May 2019 17:42:57 GMT  
		Size: 10.9 MB (10931178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fca02af4b95237a97b0a52d0e3766bb1fc33963cf688235e27e0ad40e78dc92`  
		Last Modified: Wed, 29 May 2019 17:42:55 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.22-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:58fdd5ea53c80936103458a75e80055e22ed270d056047afbfc2965bf98a49d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.9 MB (195880995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be79a571c958988d901f97e0f4676a8aed8b5b20e96bb19b0f2b3db08d207084`
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
# Wed, 29 May 2019 17:10:42 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 29 May 2019 17:11:17 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 29 May 2019 17:11:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 29 May 2019 17:11:20 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 29 May 2019 17:11:20 GMT
ENV GHOST_VERSION=2.22.3
# Wed, 29 May 2019 17:13:01 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 29 May 2019 17:16:20 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 29 May 2019 17:16:21 GMT
WORKDIR /var/lib/ghost
# Wed, 29 May 2019 17:16:22 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 29 May 2019 17:16:23 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 29 May 2019 17:16:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 17:16:24 GMT
EXPOSE 2368
# Wed, 29 May 2019 17:16:25 GMT
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
	-	`sha256:a3fde515391ff76e7e22e0f53717e95f32a9446a17e4872a825c163551a5d3a5`  
		Last Modified: Wed, 29 May 2019 17:16:53 GMT  
		Size: 13.7 MB (13738098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016132982c8274c6415737098340a18c72b7e4ced79642fc5f5236f8199f2642`  
		Last Modified: Wed, 29 May 2019 17:17:36 GMT  
		Size: 144.3 MB (144304641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a60e50aae2163e61bc29dce69880b2cbe611ada81838fce43cceb76e0f64ce`  
		Last Modified: Wed, 29 May 2019 17:16:50 GMT  
		Size: 12.2 MB (12247618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f041b38dea54862748caffa880214a5f166296d542106c43a861af9970717e`  
		Last Modified: Wed, 29 May 2019 17:16:46 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.22-alpine` - linux; 386

```console
$ docker pull ghost@sha256:f51c624c1dc3e58c3de248c56f0b4960c14a3d3f3eebda1ed4a73b555f668d52
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 MB (197371883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8fe669e4f5dfd66040238ced7770bb77780da22a4105c3918697c27224415c9`
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
# Wed, 29 May 2019 17:43:31 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 29 May 2019 17:43:51 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 29 May 2019 17:43:51 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 29 May 2019 17:43:51 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 29 May 2019 17:43:52 GMT
ENV GHOST_VERSION=2.22.3
# Wed, 29 May 2019 17:44:37 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 29 May 2019 17:46:31 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 29 May 2019 17:46:31 GMT
WORKDIR /var/lib/ghost
# Wed, 29 May 2019 17:46:32 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 29 May 2019 17:46:32 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 29 May 2019 17:46:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 17:46:32 GMT
EXPOSE 2368
# Wed, 29 May 2019 17:46:32 GMT
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
	-	`sha256:90bb34506ca5ba0e0dcf37d0eab8c5044cd847d32ee3967b11044d5583e8f2c9`  
		Last Modified: Wed, 29 May 2019 17:47:01 GMT  
		Size: 13.7 MB (13736340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974d4aa26be89349b2769733d2308a1169db5f69e62af98f6765f2ecbb9307b2`  
		Last Modified: Wed, 29 May 2019 17:47:27 GMT  
		Size: 144.3 MB (144299832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9653e6a2e15da665c627f5f02eee355d20b7dd0d708f53128f28a8bb7fa7393d`  
		Last Modified: Wed, 29 May 2019 17:46:59 GMT  
		Size: 12.5 MB (12489231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9f259f3808844e4c00c7b6945be6f9094a31d05b7cfc130022a778191bb11a`  
		Last Modified: Wed, 29 May 2019 17:46:55 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.22-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:6fa99327ca6f3db49621475c4de3a703c4ebffec953c7e825f95517293906e9b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.4 MB (198352309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c35d9506837f6636efe916ee1771928bac2b9d6879c8c3f4194a214ad8c3308`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 02:10:39 GMT
ENV NODE_VERSION=10.15.3
# Thu, 16 May 2019 02:24:07 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 16 May 2019 02:24:10 GMT
ENV YARN_VERSION=1.13.0
# Thu, 16 May 2019 02:24:20 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 16 May 2019 02:24:22 GMT
CMD ["node"]
# Thu, 16 May 2019 02:44:17 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 16 May 2019 02:44:26 GMT
RUN apk add --no-cache 		bash
# Thu, 16 May 2019 02:44:28 GMT
ENV NODE_ENV=production
# Thu, 16 May 2019 02:44:30 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 16 May 2019 02:45:10 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 16 May 2019 02:45:14 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 16 May 2019 02:45:17 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 16 May 2019 02:45:18 GMT
ENV GHOST_VERSION=2.22.1
# Thu, 16 May 2019 02:48:23 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 16 May 2019 02:51:13 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Thu, 16 May 2019 02:51:17 GMT
WORKDIR /var/lib/ghost
# Thu, 16 May 2019 02:51:20 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 16 May 2019 02:51:22 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Thu, 16 May 2019 02:51:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 02:51:28 GMT
EXPOSE 2368
# Thu, 16 May 2019 02:51:34 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f658a1195c9a8cc641cd6813c92b9cb21c878f8adb6d313a8121077bdb463d15`  
		Last Modified: Thu, 16 May 2019 02:28:18 GMT  
		Size: 21.7 MB (21671251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f631d59c3bad5d8a88f593a5e7b5876601270282a8a47e23efaea963b4333236`  
		Last Modified: Thu, 16 May 2019 02:28:12 GMT  
		Size: 1.3 MB (1331955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6783f4e54897cb99730320714ccc4157ee52a2174a90fa57ed6f9a44a7ad4b8`  
		Last Modified: Thu, 16 May 2019 02:58:17 GMT  
		Size: 10.2 KB (10234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cfc6a0f618596f142d97696bcd8e2a557a1582034bbab1cf23bba8b1e97e3b3`  
		Last Modified: Thu, 16 May 2019 02:58:18 GMT  
		Size: 1.3 MB (1257936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bde47e622704a14853f80e2d2e86f398c81ff600b5d8ecd5731666ff6efa2ba`  
		Last Modified: Thu, 16 May 2019 02:58:35 GMT  
		Size: 13.7 MB (13723912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bb14853896e17494803662d4b95c6a18a3336663adba1947604034527c7bac1`  
		Last Modified: Thu, 16 May 2019 03:00:32 GMT  
		Size: 144.3 MB (144338608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5655fc304bed8cdae83d7958bb3401b5825596be603c9e59094939a0c938fdbf`  
		Last Modified: Thu, 16 May 2019 02:58:22 GMT  
		Size: 13.2 MB (13236852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b18a5e3b111364674625f9568a672bca780ba9056e2d40b73d32ae5c3d4f5d`  
		Last Modified: Thu, 16 May 2019 02:58:14 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2-alpine`

```console
$ docker pull ghost@sha256:f9fd39ad14959342218649e0c0f0a75c2b4755e8d66c40f823b232221d1eb0e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le

### `ghost:2-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:cb4a4ded54640194c81d839c341126ae3a5a332a96067c64ddae9cc23d5d1ae2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.5 MB (218484922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27ac0a776c7cb7f90a38803cb1d0764547392673ac6b1c11d7d13e16bb869cb2`
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
# Wed, 29 May 2019 17:40:41 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 29 May 2019 17:41:00 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 29 May 2019 17:41:01 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 29 May 2019 17:41:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 29 May 2019 17:41:01 GMT
ENV GHOST_VERSION=2.22.3
# Wed, 29 May 2019 17:41:43 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 29 May 2019 17:41:53 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 29 May 2019 17:41:53 GMT
WORKDIR /var/lib/ghost
# Wed, 29 May 2019 17:41:53 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 29 May 2019 17:41:54 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 29 May 2019 17:41:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 17:41:54 GMT
EXPOSE 2368
# Wed, 29 May 2019 17:41:54 GMT
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
	-	`sha256:77f0ebaa5cf69ce467679ecf7509a3fc4491a33e059160f41cde7665022af928`  
		Last Modified: Wed, 29 May 2019 17:42:59 GMT  
		Size: 13.7 MB (13735450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9234bf0cfaeb7138aef17027a93d8ebb9f69f292bc489b60d8804c1abedc706`  
		Last Modified: Wed, 29 May 2019 17:43:21 GMT  
		Size: 167.1 MB (167109289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07327617669b05bb99fbe2d3c732b6ec798e9cd6fcf5c1dddd6e70680af73452`  
		Last Modified: Wed, 29 May 2019 17:42:57 GMT  
		Size: 10.9 MB (10931178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fca02af4b95237a97b0a52d0e3766bb1fc33963cf688235e27e0ad40e78dc92`  
		Last Modified: Wed, 29 May 2019 17:42:55 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:58fdd5ea53c80936103458a75e80055e22ed270d056047afbfc2965bf98a49d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.9 MB (195880995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be79a571c958988d901f97e0f4676a8aed8b5b20e96bb19b0f2b3db08d207084`
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
# Wed, 29 May 2019 17:10:42 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 29 May 2019 17:11:17 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 29 May 2019 17:11:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 29 May 2019 17:11:20 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 29 May 2019 17:11:20 GMT
ENV GHOST_VERSION=2.22.3
# Wed, 29 May 2019 17:13:01 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 29 May 2019 17:16:20 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 29 May 2019 17:16:21 GMT
WORKDIR /var/lib/ghost
# Wed, 29 May 2019 17:16:22 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 29 May 2019 17:16:23 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 29 May 2019 17:16:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 17:16:24 GMT
EXPOSE 2368
# Wed, 29 May 2019 17:16:25 GMT
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
	-	`sha256:a3fde515391ff76e7e22e0f53717e95f32a9446a17e4872a825c163551a5d3a5`  
		Last Modified: Wed, 29 May 2019 17:16:53 GMT  
		Size: 13.7 MB (13738098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016132982c8274c6415737098340a18c72b7e4ced79642fc5f5236f8199f2642`  
		Last Modified: Wed, 29 May 2019 17:17:36 GMT  
		Size: 144.3 MB (144304641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a60e50aae2163e61bc29dce69880b2cbe611ada81838fce43cceb76e0f64ce`  
		Last Modified: Wed, 29 May 2019 17:16:50 GMT  
		Size: 12.2 MB (12247618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f041b38dea54862748caffa880214a5f166296d542106c43a861af9970717e`  
		Last Modified: Wed, 29 May 2019 17:16:46 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; 386

```console
$ docker pull ghost@sha256:f51c624c1dc3e58c3de248c56f0b4960c14a3d3f3eebda1ed4a73b555f668d52
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 MB (197371883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8fe669e4f5dfd66040238ced7770bb77780da22a4105c3918697c27224415c9`
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
# Wed, 29 May 2019 17:43:31 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 29 May 2019 17:43:51 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 29 May 2019 17:43:51 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 29 May 2019 17:43:51 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 29 May 2019 17:43:52 GMT
ENV GHOST_VERSION=2.22.3
# Wed, 29 May 2019 17:44:37 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 29 May 2019 17:46:31 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 29 May 2019 17:46:31 GMT
WORKDIR /var/lib/ghost
# Wed, 29 May 2019 17:46:32 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 29 May 2019 17:46:32 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 29 May 2019 17:46:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 17:46:32 GMT
EXPOSE 2368
# Wed, 29 May 2019 17:46:32 GMT
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
	-	`sha256:90bb34506ca5ba0e0dcf37d0eab8c5044cd847d32ee3967b11044d5583e8f2c9`  
		Last Modified: Wed, 29 May 2019 17:47:01 GMT  
		Size: 13.7 MB (13736340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974d4aa26be89349b2769733d2308a1169db5f69e62af98f6765f2ecbb9307b2`  
		Last Modified: Wed, 29 May 2019 17:47:27 GMT  
		Size: 144.3 MB (144299832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9653e6a2e15da665c627f5f02eee355d20b7dd0d708f53128f28a8bb7fa7393d`  
		Last Modified: Wed, 29 May 2019 17:46:59 GMT  
		Size: 12.5 MB (12489231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9f259f3808844e4c00c7b6945be6f9094a31d05b7cfc130022a778191bb11a`  
		Last Modified: Wed, 29 May 2019 17:46:55 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:6fa99327ca6f3db49621475c4de3a703c4ebffec953c7e825f95517293906e9b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.4 MB (198352309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c35d9506837f6636efe916ee1771928bac2b9d6879c8c3f4194a214ad8c3308`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 02:10:39 GMT
ENV NODE_VERSION=10.15.3
# Thu, 16 May 2019 02:24:07 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 16 May 2019 02:24:10 GMT
ENV YARN_VERSION=1.13.0
# Thu, 16 May 2019 02:24:20 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 16 May 2019 02:24:22 GMT
CMD ["node"]
# Thu, 16 May 2019 02:44:17 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 16 May 2019 02:44:26 GMT
RUN apk add --no-cache 		bash
# Thu, 16 May 2019 02:44:28 GMT
ENV NODE_ENV=production
# Thu, 16 May 2019 02:44:30 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 16 May 2019 02:45:10 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 16 May 2019 02:45:14 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 16 May 2019 02:45:17 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 16 May 2019 02:45:18 GMT
ENV GHOST_VERSION=2.22.1
# Thu, 16 May 2019 02:48:23 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 16 May 2019 02:51:13 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Thu, 16 May 2019 02:51:17 GMT
WORKDIR /var/lib/ghost
# Thu, 16 May 2019 02:51:20 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 16 May 2019 02:51:22 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Thu, 16 May 2019 02:51:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 02:51:28 GMT
EXPOSE 2368
# Thu, 16 May 2019 02:51:34 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f658a1195c9a8cc641cd6813c92b9cb21c878f8adb6d313a8121077bdb463d15`  
		Last Modified: Thu, 16 May 2019 02:28:18 GMT  
		Size: 21.7 MB (21671251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f631d59c3bad5d8a88f593a5e7b5876601270282a8a47e23efaea963b4333236`  
		Last Modified: Thu, 16 May 2019 02:28:12 GMT  
		Size: 1.3 MB (1331955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6783f4e54897cb99730320714ccc4157ee52a2174a90fa57ed6f9a44a7ad4b8`  
		Last Modified: Thu, 16 May 2019 02:58:17 GMT  
		Size: 10.2 KB (10234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cfc6a0f618596f142d97696bcd8e2a557a1582034bbab1cf23bba8b1e97e3b3`  
		Last Modified: Thu, 16 May 2019 02:58:18 GMT  
		Size: 1.3 MB (1257936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bde47e622704a14853f80e2d2e86f398c81ff600b5d8ecd5731666ff6efa2ba`  
		Last Modified: Thu, 16 May 2019 02:58:35 GMT  
		Size: 13.7 MB (13723912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bb14853896e17494803662d4b95c6a18a3336663adba1947604034527c7bac1`  
		Last Modified: Thu, 16 May 2019 03:00:32 GMT  
		Size: 144.3 MB (144338608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5655fc304bed8cdae83d7958bb3401b5825596be603c9e59094939a0c938fdbf`  
		Last Modified: Thu, 16 May 2019 02:58:22 GMT  
		Size: 13.2 MB (13236852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b18a5e3b111364674625f9568a672bca780ba9056e2d40b73d32ae5c3d4f5d`  
		Last Modified: Thu, 16 May 2019 02:58:14 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:f9fd39ad14959342218649e0c0f0a75c2b4755e8d66c40f823b232221d1eb0e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:cb4a4ded54640194c81d839c341126ae3a5a332a96067c64ddae9cc23d5d1ae2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.5 MB (218484922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27ac0a776c7cb7f90a38803cb1d0764547392673ac6b1c11d7d13e16bb869cb2`
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
# Wed, 29 May 2019 17:40:41 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 29 May 2019 17:41:00 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 29 May 2019 17:41:01 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 29 May 2019 17:41:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 29 May 2019 17:41:01 GMT
ENV GHOST_VERSION=2.22.3
# Wed, 29 May 2019 17:41:43 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 29 May 2019 17:41:53 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 29 May 2019 17:41:53 GMT
WORKDIR /var/lib/ghost
# Wed, 29 May 2019 17:41:53 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 29 May 2019 17:41:54 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 29 May 2019 17:41:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 17:41:54 GMT
EXPOSE 2368
# Wed, 29 May 2019 17:41:54 GMT
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
	-	`sha256:77f0ebaa5cf69ce467679ecf7509a3fc4491a33e059160f41cde7665022af928`  
		Last Modified: Wed, 29 May 2019 17:42:59 GMT  
		Size: 13.7 MB (13735450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9234bf0cfaeb7138aef17027a93d8ebb9f69f292bc489b60d8804c1abedc706`  
		Last Modified: Wed, 29 May 2019 17:43:21 GMT  
		Size: 167.1 MB (167109289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07327617669b05bb99fbe2d3c732b6ec798e9cd6fcf5c1dddd6e70680af73452`  
		Last Modified: Wed, 29 May 2019 17:42:57 GMT  
		Size: 10.9 MB (10931178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fca02af4b95237a97b0a52d0e3766bb1fc33963cf688235e27e0ad40e78dc92`  
		Last Modified: Wed, 29 May 2019 17:42:55 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:58fdd5ea53c80936103458a75e80055e22ed270d056047afbfc2965bf98a49d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.9 MB (195880995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be79a571c958988d901f97e0f4676a8aed8b5b20e96bb19b0f2b3db08d207084`
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
# Wed, 29 May 2019 17:10:42 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 29 May 2019 17:11:17 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 29 May 2019 17:11:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 29 May 2019 17:11:20 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 29 May 2019 17:11:20 GMT
ENV GHOST_VERSION=2.22.3
# Wed, 29 May 2019 17:13:01 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 29 May 2019 17:16:20 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 29 May 2019 17:16:21 GMT
WORKDIR /var/lib/ghost
# Wed, 29 May 2019 17:16:22 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 29 May 2019 17:16:23 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 29 May 2019 17:16:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 17:16:24 GMT
EXPOSE 2368
# Wed, 29 May 2019 17:16:25 GMT
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
	-	`sha256:a3fde515391ff76e7e22e0f53717e95f32a9446a17e4872a825c163551a5d3a5`  
		Last Modified: Wed, 29 May 2019 17:16:53 GMT  
		Size: 13.7 MB (13738098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016132982c8274c6415737098340a18c72b7e4ced79642fc5f5236f8199f2642`  
		Last Modified: Wed, 29 May 2019 17:17:36 GMT  
		Size: 144.3 MB (144304641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a60e50aae2163e61bc29dce69880b2cbe611ada81838fce43cceb76e0f64ce`  
		Last Modified: Wed, 29 May 2019 17:16:50 GMT  
		Size: 12.2 MB (12247618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f041b38dea54862748caffa880214a5f166296d542106c43a861af9970717e`  
		Last Modified: Wed, 29 May 2019 17:16:46 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; 386

```console
$ docker pull ghost@sha256:f51c624c1dc3e58c3de248c56f0b4960c14a3d3f3eebda1ed4a73b555f668d52
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 MB (197371883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8fe669e4f5dfd66040238ced7770bb77780da22a4105c3918697c27224415c9`
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
# Wed, 29 May 2019 17:43:31 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 29 May 2019 17:43:51 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 29 May 2019 17:43:51 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 29 May 2019 17:43:51 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 29 May 2019 17:43:52 GMT
ENV GHOST_VERSION=2.22.3
# Wed, 29 May 2019 17:44:37 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 29 May 2019 17:46:31 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 29 May 2019 17:46:31 GMT
WORKDIR /var/lib/ghost
# Wed, 29 May 2019 17:46:32 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 29 May 2019 17:46:32 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 29 May 2019 17:46:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 17:46:32 GMT
EXPOSE 2368
# Wed, 29 May 2019 17:46:32 GMT
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
	-	`sha256:90bb34506ca5ba0e0dcf37d0eab8c5044cd847d32ee3967b11044d5583e8f2c9`  
		Last Modified: Wed, 29 May 2019 17:47:01 GMT  
		Size: 13.7 MB (13736340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974d4aa26be89349b2769733d2308a1169db5f69e62af98f6765f2ecbb9307b2`  
		Last Modified: Wed, 29 May 2019 17:47:27 GMT  
		Size: 144.3 MB (144299832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9653e6a2e15da665c627f5f02eee355d20b7dd0d708f53128f28a8bb7fa7393d`  
		Last Modified: Wed, 29 May 2019 17:46:59 GMT  
		Size: 12.5 MB (12489231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9f259f3808844e4c00c7b6945be6f9094a31d05b7cfc130022a778191bb11a`  
		Last Modified: Wed, 29 May 2019 17:46:55 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:6fa99327ca6f3db49621475c4de3a703c4ebffec953c7e825f95517293906e9b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.4 MB (198352309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c35d9506837f6636efe916ee1771928bac2b9d6879c8c3f4194a214ad8c3308`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 02:10:39 GMT
ENV NODE_VERSION=10.15.3
# Thu, 16 May 2019 02:24:07 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 16 May 2019 02:24:10 GMT
ENV YARN_VERSION=1.13.0
# Thu, 16 May 2019 02:24:20 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 16 May 2019 02:24:22 GMT
CMD ["node"]
# Thu, 16 May 2019 02:44:17 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 16 May 2019 02:44:26 GMT
RUN apk add --no-cache 		bash
# Thu, 16 May 2019 02:44:28 GMT
ENV NODE_ENV=production
# Thu, 16 May 2019 02:44:30 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 16 May 2019 02:45:10 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 16 May 2019 02:45:14 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 16 May 2019 02:45:17 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 16 May 2019 02:45:18 GMT
ENV GHOST_VERSION=2.22.1
# Thu, 16 May 2019 02:48:23 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 16 May 2019 02:51:13 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Thu, 16 May 2019 02:51:17 GMT
WORKDIR /var/lib/ghost
# Thu, 16 May 2019 02:51:20 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 16 May 2019 02:51:22 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Thu, 16 May 2019 02:51:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 02:51:28 GMT
EXPOSE 2368
# Thu, 16 May 2019 02:51:34 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f658a1195c9a8cc641cd6813c92b9cb21c878f8adb6d313a8121077bdb463d15`  
		Last Modified: Thu, 16 May 2019 02:28:18 GMT  
		Size: 21.7 MB (21671251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f631d59c3bad5d8a88f593a5e7b5876601270282a8a47e23efaea963b4333236`  
		Last Modified: Thu, 16 May 2019 02:28:12 GMT  
		Size: 1.3 MB (1331955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6783f4e54897cb99730320714ccc4157ee52a2174a90fa57ed6f9a44a7ad4b8`  
		Last Modified: Thu, 16 May 2019 02:58:17 GMT  
		Size: 10.2 KB (10234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cfc6a0f618596f142d97696bcd8e2a557a1582034bbab1cf23bba8b1e97e3b3`  
		Last Modified: Thu, 16 May 2019 02:58:18 GMT  
		Size: 1.3 MB (1257936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bde47e622704a14853f80e2d2e86f398c81ff600b5d8ecd5731666ff6efa2ba`  
		Last Modified: Thu, 16 May 2019 02:58:35 GMT  
		Size: 13.7 MB (13723912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bb14853896e17494803662d4b95c6a18a3336663adba1947604034527c7bac1`  
		Last Modified: Thu, 16 May 2019 03:00:32 GMT  
		Size: 144.3 MB (144338608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5655fc304bed8cdae83d7958bb3401b5825596be603c9e59094939a0c938fdbf`  
		Last Modified: Thu, 16 May 2019 02:58:22 GMT  
		Size: 13.2 MB (13236852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b18a5e3b111364674625f9568a672bca780ba9056e2d40b73d32ae5c3d4f5d`  
		Last Modified: Thu, 16 May 2019 02:58:14 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:1b136ec11b0747935ffccd9e8fcb4cc56472d31cd065a64a465a250930446d5b
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
$ docker pull ghost@sha256:35591cc423620304be839e661e34e312a177438f7ddcd36353fddc561b369bc2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.7 MB (236662847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18b229752c60cdf64960997e17db3958f5c84caae81f1adcd77d2aceb0c3ec9c`
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
# Wed, 29 May 2019 17:39:16 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 29 May 2019 17:39:37 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 29 May 2019 17:39:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 29 May 2019 17:39:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 29 May 2019 17:39:38 GMT
ENV GHOST_VERSION=2.22.3
# Wed, 29 May 2019 17:40:21 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 29 May 2019 17:40:30 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 29 May 2019 17:40:30 GMT
WORKDIR /var/lib/ghost
# Wed, 29 May 2019 17:40:30 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 29 May 2019 17:40:30 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 29 May 2019 17:40:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 17:40:31 GMT
EXPOSE 2368
# Wed, 29 May 2019 17:40:31 GMT
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
	-	`sha256:dd165e082a7da5460e67bd59c368a9617e4d609d59aac14cbcaff4932878790b`  
		Last Modified: Wed, 29 May 2019 17:42:21 GMT  
		Size: 13.7 MB (13736729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab6953cc04529434b7aa43c925f887afd05e8a252f02054003f6ecc29b12d50`  
		Last Modified: Wed, 29 May 2019 17:42:48 GMT  
		Size: 166.2 MB (166198935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce829553fcdda94c67195c8c93463793722416ff850dfac6068f7ca638240eb3`  
		Last Modified: Wed, 29 May 2019 17:42:18 GMT  
		Size: 1.5 MB (1506569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfbaf0d597a3b59104be01024d1ff3784d21ef1ec5254c12399d0b3af39f37c9`  
		Last Modified: Wed, 29 May 2019 17:42:18 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm variant v7

```console
$ docker pull ghost@sha256:51ed26e6e2e601f7c032290f522e0ee5fb067b63afd90905b12c4315e77b62b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.8 MB (232836546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ce05eda10804f0f69443fba2019a51422c0ab7087441003b4ccc9e9348f3e74`
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
# Wed, 29 May 2019 17:19:43 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 29 May 2019 17:20:07 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 29 May 2019 17:20:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 29 May 2019 17:20:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 29 May 2019 17:20:10 GMT
ENV GHOST_VERSION=2.22.3
# Wed, 29 May 2019 17:21:17 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 29 May 2019 17:24:20 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 29 May 2019 17:24:21 GMT
WORKDIR /var/lib/ghost
# Wed, 29 May 2019 17:24:21 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 29 May 2019 17:24:22 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 29 May 2019 17:24:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 17:24:23 GMT
EXPOSE 2368
# Wed, 29 May 2019 17:24:23 GMT
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
	-	`sha256:51ead0eea2a91bb15eca29b8ccbfb8ad94be429b22b1b3b2fc5b401b52cda590`  
		Last Modified: Wed, 29 May 2019 17:24:43 GMT  
		Size: 13.7 MB (13736460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b88451c78970e72c4b0c70136d37e4719f321a22976339c6720dcd97e818d18`  
		Last Modified: Wed, 29 May 2019 17:25:24 GMT  
		Size: 150.5 MB (150453848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27655ca5d7e3aa2fb2c76e5ca5f3cd10b776e7acc88ca4b20b8c30c070a94d9`  
		Last Modified: Wed, 29 May 2019 17:24:43 GMT  
		Size: 19.6 MB (19560851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4e30302c2910f8f6da9d3d031e79c4b60f67b269603b8c7bce4e0f1ed952866`  
		Last Modified: Wed, 29 May 2019 17:24:37 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:fde594937f68a50175405d1a91ab8083fe414a78bdff36d98387400aba6bacc7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.0 MB (234043883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f3a0c49000b48ba9bf84195a815624223d848444cabb31f206ffdaddb9a787`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 22 May 2019 23:44:56 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 23 May 2019 00:06:44 GMT
ENV NODE_VERSION=10.15.3
# Thu, 23 May 2019 00:07:11 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 23 May 2019 00:07:13 GMT
ENV YARN_VERSION=1.13.0
# Thu, 23 May 2019 00:07:17 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 23 May 2019 00:07:17 GMT
CMD ["node"]
# Thu, 23 May 2019 21:39:34 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 May 2019 21:39:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 23 May 2019 21:39:39 GMT
ENV NODE_ENV=production
# Thu, 23 May 2019 21:39:39 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 23 May 2019 21:39:59 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 23 May 2019 21:40:01 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 23 May 2019 21:40:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 23 May 2019 21:40:02 GMT
ENV GHOST_VERSION=2.22.3
# Thu, 23 May 2019 21:40:55 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 23 May 2019 21:43:36 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 23 May 2019 21:43:37 GMT
WORKDIR /var/lib/ghost
# Thu, 23 May 2019 21:43:37 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 23 May 2019 21:43:37 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 23 May 2019 21:43:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 21:43:38 GMT
EXPOSE 2368
# Thu, 23 May 2019 21:43:38 GMT
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
	-	`sha256:b7ecd9482a01cac9a2da131b1e2dfa0af69ff07e69fcf6edaf9df0c63c4c662a`  
		Last Modified: Thu, 23 May 2019 00:12:27 GMT  
		Size: 28.3 MB (28345963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43426f6095bbd12eff233e331b1f66d21ede40a6c967cc432ed09d4171213544`  
		Last Modified: Thu, 23 May 2019 00:12:17 GMT  
		Size: 1.3 MB (1323217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7271ca35689850df8c2f14550ee1b77166ed76bcc54726643e037807d7ef1ec7`  
		Last Modified: Thu, 23 May 2019 21:48:29 GMT  
		Size: 468.9 KB (468943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e93bde67bbb550952d98023dcfde1a0338a61617ef192c6bfdecb04d4abead`  
		Last Modified: Thu, 23 May 2019 21:48:34 GMT  
		Size: 13.7 MB (13727116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ac4a9fc1a9b71062710d04abe42501fae5d4320a2a3965c85a7cf28004c41b`  
		Last Modified: Thu, 23 May 2019 21:49:08 GMT  
		Size: 150.3 MB (150305710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce55a14aaa2f0f44b4ecb60baf592787896e5e2b43d59dc189500219de985de5`  
		Last Modified: Thu, 23 May 2019 21:48:35 GMT  
		Size: 19.5 MB (19534379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fef57bbeb4bb3bbc57d5e8feec2e35d8fe6fb3640132d14898d48cb910fd3c7`  
		Last Modified: Thu, 23 May 2019 21:48:29 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; ppc64le

```console
$ docker pull ghost@sha256:b6e739f9dc37f28566432f59309e52993772d2a11f7a00ea6b825982cc82871b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.9 MB (223850273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9c00d4f3d98361d1e435816604e010de03bd70be752e4d76319c296eff80b52`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:14:01 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 14:51:31 GMT
ENV NODE_VERSION=10.15.3
# Wed, 08 May 2019 14:53:45 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 14:53:54 GMT
ENV YARN_VERSION=1.13.0
# Wed, 08 May 2019 14:54:09 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 14:54:12 GMT
CMD ["node"]
# Thu, 09 May 2019 00:25:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 09 May 2019 00:25:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 09 May 2019 00:25:29 GMT
ENV NODE_ENV=production
# Thu, 09 May 2019 00:25:37 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 09 May 2019 00:26:22 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 09 May 2019 00:26:30 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 09 May 2019 00:26:35 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 16 May 2019 00:17:54 GMT
ENV GHOST_VERSION=2.22.1
# Thu, 16 May 2019 00:20:16 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 16 May 2019 00:23:49 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 16 May 2019 00:23:51 GMT
WORKDIR /var/lib/ghost
# Thu, 16 May 2019 00:23:53 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 16 May 2019 00:23:54 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 16 May 2019 00:23:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:23:57 GMT
EXPOSE 2368
# Thu, 16 May 2019 00:23:59 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8942858951da9975540fe5101d6b94c8f553ebbd9fe8614a4dcfd9ec1d21e5c`  
		Last Modified: Wed, 08 May 2019 14:59:21 GMT  
		Size: 4.2 KB (4185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72bfa44db08cb51a5acd2c654c103282af2868d37547ec5007742fe69e611f0`  
		Last Modified: Wed, 08 May 2019 15:08:51 GMT  
		Size: 28.6 MB (28639189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb103610d1c42c6ce9932dd9599d7d334c8370dc3af64558ffdebb129dd6a14`  
		Last Modified: Wed, 08 May 2019 15:08:05 GMT  
		Size: 1.3 MB (1323221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31ad1d1983140420b35faa22ce7d97c4435d29f2859141a83deda4cb0d02993`  
		Last Modified: Thu, 09 May 2019 00:50:05 GMT  
		Size: 470.1 KB (470076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43e1e8b64db62770ecf9979702ec02691bf23fa21a6bc50c460e39e604272d4`  
		Last Modified: Thu, 09 May 2019 00:50:54 GMT  
		Size: 13.7 MB (13684221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86490b9fc91aa31f0db115680db9e1659c94615cbdaba3271962f084acf68874`  
		Last Modified: Thu, 16 May 2019 00:31:44 GMT  
		Size: 144.3 MB (144337740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f67f9b0dc7adb5270f5451eaa1c1422ddcf3a19a69b6f228c9460909b95ac2`  
		Last Modified: Thu, 16 May 2019 00:30:16 GMT  
		Size: 12.6 MB (12646168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b161390cf32259020caecfeb3835334a4c17c95ae266e460d59171c594cfb54`  
		Last Modified: Thu, 16 May 2019 00:30:11 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; s390x

```console
$ docker pull ghost@sha256:7424c3bf3c8f426b94e1c2d51a02069fcf9f0cad395802bd20ea106540cb4551
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.6 MB (225622010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:440cad3077a7b7a3214adec02e522e3ba1aee6933c63276d3e4835767a4419d2`
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
# Wed, 29 May 2019 17:21:19 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 29 May 2019 17:21:36 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 29 May 2019 17:21:36 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 29 May 2019 17:21:37 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 29 May 2019 17:21:37 GMT
ENV GHOST_VERSION=2.22.3
# Wed, 29 May 2019 17:22:04 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 29 May 2019 17:23:28 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 29 May 2019 17:23:29 GMT
WORKDIR /var/lib/ghost
# Wed, 29 May 2019 17:23:29 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 29 May 2019 17:23:29 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 29 May 2019 17:23:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 17:23:29 GMT
EXPOSE 2368
# Wed, 29 May 2019 17:23:30 GMT
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
	-	`sha256:b8d2dd10111b864e53752a6f4c866327da6c5d7f789497e15dcc302324683a3d`  
		Last Modified: Wed, 29 May 2019 17:24:24 GMT  
		Size: 13.7 MB (13733585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57328707cb4e8404cfe108275880b25c31d8dffaf50f166c32681652db93da3e`  
		Last Modified: Wed, 29 May 2019 17:24:40 GMT  
		Size: 144.3 MB (144329259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c544f75d05fab464eafdc11e2ad6782f55510a33181e0525f290a67bcbf92a`  
		Last Modified: Wed, 29 May 2019 17:24:24 GMT  
		Size: 12.8 MB (12773436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ae197ba8614d9afbc31ee3fb49b0b776e6a9f60e1a4dcaee1bc26a90d507dd`  
		Last Modified: Wed, 29 May 2019 17:24:21 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

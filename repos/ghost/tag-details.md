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
-	[`ghost:2.22.0`](#ghost2220)
-	[`ghost:2.22.0-alpine`](#ghost2220-alpine)
-	[`ghost:2.22-alpine`](#ghost222-alpine)
-	[`ghost:2-alpine`](#ghost2-alpine)
-	[`ghost:alpine`](#ghostalpine)
-	[`ghost:latest`](#ghostlatest)

## `ghost:1`

```console
$ docker pull ghost@sha256:6109242577969164723867539b63a439240c18c659127301cd2e480d944dc0d4
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
$ docker pull ghost@sha256:50c06236bbe47f5c748e50745e419a6cef53dec8d3347f77eed293cac277d3e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.1 MB (189090573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cb3d755bc2282e302cdc2b476f64fa4d964cc9cbd98a626e34b083482376c14`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 15:39:28 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 15:39:28 GMT
ENV NODE_VERSION=8.16.0
# Wed, 08 May 2019 15:40:40 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 15:40:42 GMT
ENV YARN_VERSION=1.15.2
# Wed, 08 May 2019 15:40:48 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 15:40:49 GMT
CMD ["node"]
# Thu, 09 May 2019 06:06:03 GMT
ENV GOSU_VERSION=1.10
# Thu, 09 May 2019 06:06:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 09 May 2019 06:06:14 GMT
ENV NODE_ENV=production
# Thu, 09 May 2019 06:06:15 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 09 May 2019 06:07:27 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 09 May 2019 06:07:30 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 09 May 2019 06:07:31 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 09 May 2019 06:07:33 GMT
ENV GHOST_VERSION=1.25.7
# Thu, 09 May 2019 06:10:27 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 09 May 2019 06:10:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 09 May 2019 06:18:58 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 09 May 2019 06:19:01 GMT
WORKDIR /var/lib/ghost
# Thu, 09 May 2019 06:19:02 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 09 May 2019 06:19:03 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Thu, 09 May 2019 06:19:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 06:19:06 GMT
EXPOSE 2368
# Thu, 09 May 2019 06:19:07 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e813c27fe177b7315d10633afc967f85ef6c341a2f537b60e47d5711d235c092`  
		Last Modified: Wed, 08 May 2019 15:54:06 GMT  
		Size: 4.2 KB (4153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa6f4530d32611dcba0be04ea9c303a525de6a925e1a409cb1dbf804dd04695`  
		Last Modified: Wed, 08 May 2019 15:54:18 GMT  
		Size: 26.7 MB (26704977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:200c0ce37630685da9a84f31c40185912c557954fb2e6f7b8f59a02456e1c86f`  
		Last Modified: Wed, 08 May 2019 15:54:07 GMT  
		Size: 1.3 MB (1324758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c258c7f95887ab45e45beca2adc9e541671d19514a6738959a8f0141c01d9e`  
		Last Modified: Thu, 09 May 2019 06:22:17 GMT  
		Size: 468.9 KB (468941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6377f03cea18102b59753c6320581a7f10f2409f3bc3ef954374f65093c769`  
		Last Modified: Thu, 09 May 2019 06:22:43 GMT  
		Size: 13.7 MB (13686559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c50ca0acb50bd93b32b7214d9cc136627eaa3836cda59e7928a142d808e6fc43`  
		Last Modified: Thu, 09 May 2019 06:23:59 GMT  
		Size: 96.4 MB (96413079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28b8a2cf04a89c14962da1310bf5f9929c577282dee5c4b011d0dc268539c82`  
		Last Modified: Thu, 09 May 2019 06:22:48 GMT  
		Size: 30.2 MB (30153704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77bcd37d5185af21749da30729ecc6ce16fa6639846cfbf00b13486dc7feba8`  
		Last Modified: Thu, 09 May 2019 06:22:17 GMT  
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
$ docker pull ghost@sha256:6109242577969164723867539b63a439240c18c659127301cd2e480d944dc0d4
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
$ docker pull ghost@sha256:50c06236bbe47f5c748e50745e419a6cef53dec8d3347f77eed293cac277d3e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.1 MB (189090573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cb3d755bc2282e302cdc2b476f64fa4d964cc9cbd98a626e34b083482376c14`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 15:39:28 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 15:39:28 GMT
ENV NODE_VERSION=8.16.0
# Wed, 08 May 2019 15:40:40 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 15:40:42 GMT
ENV YARN_VERSION=1.15.2
# Wed, 08 May 2019 15:40:48 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 15:40:49 GMT
CMD ["node"]
# Thu, 09 May 2019 06:06:03 GMT
ENV GOSU_VERSION=1.10
# Thu, 09 May 2019 06:06:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 09 May 2019 06:06:14 GMT
ENV NODE_ENV=production
# Thu, 09 May 2019 06:06:15 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 09 May 2019 06:07:27 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 09 May 2019 06:07:30 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 09 May 2019 06:07:31 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 09 May 2019 06:07:33 GMT
ENV GHOST_VERSION=1.25.7
# Thu, 09 May 2019 06:10:27 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 09 May 2019 06:10:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 09 May 2019 06:18:58 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 09 May 2019 06:19:01 GMT
WORKDIR /var/lib/ghost
# Thu, 09 May 2019 06:19:02 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 09 May 2019 06:19:03 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Thu, 09 May 2019 06:19:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 06:19:06 GMT
EXPOSE 2368
# Thu, 09 May 2019 06:19:07 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e813c27fe177b7315d10633afc967f85ef6c341a2f537b60e47d5711d235c092`  
		Last Modified: Wed, 08 May 2019 15:54:06 GMT  
		Size: 4.2 KB (4153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa6f4530d32611dcba0be04ea9c303a525de6a925e1a409cb1dbf804dd04695`  
		Last Modified: Wed, 08 May 2019 15:54:18 GMT  
		Size: 26.7 MB (26704977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:200c0ce37630685da9a84f31c40185912c557954fb2e6f7b8f59a02456e1c86f`  
		Last Modified: Wed, 08 May 2019 15:54:07 GMT  
		Size: 1.3 MB (1324758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c258c7f95887ab45e45beca2adc9e541671d19514a6738959a8f0141c01d9e`  
		Last Modified: Thu, 09 May 2019 06:22:17 GMT  
		Size: 468.9 KB (468941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6377f03cea18102b59753c6320581a7f10f2409f3bc3ef954374f65093c769`  
		Last Modified: Thu, 09 May 2019 06:22:43 GMT  
		Size: 13.7 MB (13686559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c50ca0acb50bd93b32b7214d9cc136627eaa3836cda59e7928a142d808e6fc43`  
		Last Modified: Thu, 09 May 2019 06:23:59 GMT  
		Size: 96.4 MB (96413079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28b8a2cf04a89c14962da1310bf5f9929c577282dee5c4b011d0dc268539c82`  
		Last Modified: Thu, 09 May 2019 06:22:48 GMT  
		Size: 30.2 MB (30153704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77bcd37d5185af21749da30729ecc6ce16fa6639846cfbf00b13486dc7feba8`  
		Last Modified: Thu, 09 May 2019 06:22:17 GMT  
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
$ docker pull ghost@sha256:6109242577969164723867539b63a439240c18c659127301cd2e480d944dc0d4
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
$ docker pull ghost@sha256:50c06236bbe47f5c748e50745e419a6cef53dec8d3347f77eed293cac277d3e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.1 MB (189090573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cb3d755bc2282e302cdc2b476f64fa4d964cc9cbd98a626e34b083482376c14`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 15:39:28 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 15:39:28 GMT
ENV NODE_VERSION=8.16.0
# Wed, 08 May 2019 15:40:40 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 15:40:42 GMT
ENV YARN_VERSION=1.15.2
# Wed, 08 May 2019 15:40:48 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 15:40:49 GMT
CMD ["node"]
# Thu, 09 May 2019 06:06:03 GMT
ENV GOSU_VERSION=1.10
# Thu, 09 May 2019 06:06:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 09 May 2019 06:06:14 GMT
ENV NODE_ENV=production
# Thu, 09 May 2019 06:06:15 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 09 May 2019 06:07:27 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 09 May 2019 06:07:30 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 09 May 2019 06:07:31 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 09 May 2019 06:07:33 GMT
ENV GHOST_VERSION=1.25.7
# Thu, 09 May 2019 06:10:27 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 09 May 2019 06:10:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 09 May 2019 06:18:58 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 09 May 2019 06:19:01 GMT
WORKDIR /var/lib/ghost
# Thu, 09 May 2019 06:19:02 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 09 May 2019 06:19:03 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Thu, 09 May 2019 06:19:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 06:19:06 GMT
EXPOSE 2368
# Thu, 09 May 2019 06:19:07 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e813c27fe177b7315d10633afc967f85ef6c341a2f537b60e47d5711d235c092`  
		Last Modified: Wed, 08 May 2019 15:54:06 GMT  
		Size: 4.2 KB (4153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa6f4530d32611dcba0be04ea9c303a525de6a925e1a409cb1dbf804dd04695`  
		Last Modified: Wed, 08 May 2019 15:54:18 GMT  
		Size: 26.7 MB (26704977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:200c0ce37630685da9a84f31c40185912c557954fb2e6f7b8f59a02456e1c86f`  
		Last Modified: Wed, 08 May 2019 15:54:07 GMT  
		Size: 1.3 MB (1324758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c258c7f95887ab45e45beca2adc9e541671d19514a6738959a8f0141c01d9e`  
		Last Modified: Thu, 09 May 2019 06:22:17 GMT  
		Size: 468.9 KB (468941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6377f03cea18102b59753c6320581a7f10f2409f3bc3ef954374f65093c769`  
		Last Modified: Thu, 09 May 2019 06:22:43 GMT  
		Size: 13.7 MB (13686559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c50ca0acb50bd93b32b7214d9cc136627eaa3836cda59e7928a142d808e6fc43`  
		Last Modified: Thu, 09 May 2019 06:23:59 GMT  
		Size: 96.4 MB (96413079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28b8a2cf04a89c14962da1310bf5f9929c577282dee5c4b011d0dc268539c82`  
		Last Modified: Thu, 09 May 2019 06:22:48 GMT  
		Size: 30.2 MB (30153704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77bcd37d5185af21749da30729ecc6ce16fa6639846cfbf00b13486dc7feba8`  
		Last Modified: Thu, 09 May 2019 06:22:17 GMT  
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
$ docker pull ghost@sha256:52dcdb1715102c83817c89f6b2238a3f76f355913d7417eb37592ad9bbe10b41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1.25.7-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:a9d82ed199b64971eca52351926f71ddaf177cb73590454cba90d04053b1cbd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.0 MB (154998362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bb7da16af472a7caa7abb38054841ae5c5e6c70280499c5e21daa5f82d28284`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Fri, 19 Apr 2019 23:22:42 GMT
ENV NODE_VERSION=8.16.0
# Fri, 19 Apr 2019 23:47:30 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 19 Apr 2019 23:47:30 GMT
ENV YARN_VERSION=1.15.2
# Fri, 19 Apr 2019 23:47:33 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 19 Apr 2019 23:47:33 GMT
CMD ["node"]
# Sat, 20 Apr 2019 01:12:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 20 Apr 2019 01:12:46 GMT
RUN apk add --no-cache 		bash
# Sat, 20 Apr 2019 01:12:46 GMT
ENV NODE_ENV=production
# Thu, 25 Apr 2019 00:23:31 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 25 Apr 2019 00:23:51 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 25 Apr 2019 00:23:52 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 25 Apr 2019 00:23:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 25 Apr 2019 00:23:52 GMT
ENV GHOST_VERSION=1.25.7
# Thu, 25 Apr 2019 00:24:28 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 25 Apr 2019 00:24:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 25 Apr 2019 00:24:39 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Thu, 25 Apr 2019 00:24:39 GMT
WORKDIR /var/lib/ghost
# Thu, 25 Apr 2019 00:24:39 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 25 Apr 2019 00:24:39 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Thu, 25 Apr 2019 00:24:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 00:24:40 GMT
EXPOSE 2368
# Thu, 25 Apr 2019 00:24:40 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28476b858903d0f6bcbdbabbff0fd3d1f77876667b112b17b84e122b6a42ac3f`  
		Last Modified: Sat, 20 Apr 2019 00:53:29 GMT  
		Size: 18.7 MB (18651034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b957d43c01b33294054c23b05593b41b4ec773786ec411143c96a1aa88aaf766`  
		Last Modified: Sat, 20 Apr 2019 00:53:20 GMT  
		Size: 1.3 MB (1333856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1409747fe11d4fbe15a939d8581b0e30d17154465901f7c3699c8271cc0c3897`  
		Last Modified: Sat, 20 Apr 2019 01:15:07 GMT  
		Size: 9.7 KB (9671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ec2aa27f3e254e4f7e022a85100cedb01a0784d6d0e61d2e135f2df0aa00a4`  
		Last Modified: Sat, 20 Apr 2019 01:15:07 GMT  
		Size: 1.2 MB (1176758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95fdfd710d73a2a193de489f0062a3ae6dd9395c5f4ffe119e1b22896f33822`  
		Last Modified: Thu, 25 Apr 2019 00:27:24 GMT  
		Size: 13.7 MB (13672645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf7bb61fca9ef2dfe0e848325a00e2bab3dfb1d161b98b60e6a240f23f943156`  
		Last Modified: Thu, 25 Apr 2019 00:27:54 GMT  
		Size: 104.1 MB (104105069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6bdfe85bb4d15d8683abae8bf6366ac3b8e5bf86aca67826f6831d7244490d`  
		Last Modified: Thu, 25 Apr 2019 00:27:18 GMT  
		Size: 13.3 MB (13291746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081980ee07f36d7a80b536da70e38e54daede79a7d66ce359e36abc8725a1957`  
		Last Modified: Thu, 25 Apr 2019 00:27:15 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.7-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:41e4a1fc5ed01dbf79b22720e40d1f9e713f8012814f3ca8acf42283e2953df5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (162994959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e103d7bbc882c837f6fd43da1fa54f8ffb885a32cac5acaa38da59ed328479df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Sat, 20 Apr 2019 07:49:35 GMT
ENV NODE_VERSION=8.16.0
# Sat, 20 Apr 2019 07:53:23 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 20 Apr 2019 07:53:24 GMT
ENV YARN_VERSION=1.15.2
# Sat, 20 Apr 2019 07:53:28 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 20 Apr 2019 07:53:28 GMT
CMD ["node"]
# Sat, 20 Apr 2019 08:30:51 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 20 Apr 2019 08:30:54 GMT
RUN apk add --no-cache 		bash
# Sat, 20 Apr 2019 08:30:54 GMT
ENV NODE_ENV=production
# Thu, 25 Apr 2019 07:55:24 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 25 Apr 2019 07:55:56 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 25 Apr 2019 07:55:57 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 25 Apr 2019 07:55:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 25 Apr 2019 07:55:58 GMT
ENV GHOST_VERSION=1.25.7
# Thu, 25 Apr 2019 07:57:30 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 25 Apr 2019 07:57:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 25 Apr 2019 08:01:06 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Thu, 25 Apr 2019 08:01:07 GMT
WORKDIR /var/lib/ghost
# Thu, 25 Apr 2019 08:01:07 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 25 Apr 2019 08:01:07 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Thu, 25 Apr 2019 08:01:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 08:01:08 GMT
EXPOSE 2368
# Thu, 25 Apr 2019 08:01:09 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d93b6a4cc76db697c2b6e80e045abee666c3e1ca2fbb77536681bdf981a1665`  
		Last Modified: Sat, 20 Apr 2019 08:08:44 GMT  
		Size: 17.7 MB (17656795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c272bcadfe5cac98b4441024d2bde1f4c164d0b83a527e778e0deddfca9adda7`  
		Last Modified: Sat, 20 Apr 2019 08:08:37 GMT  
		Size: 1.3 MB (1333868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ff7221d6de71a9e0a9a34651f5452936e39fe831eadbe956b5eb7b3024da60`  
		Last Modified: Sat, 20 Apr 2019 08:37:41 GMT  
		Size: 9.5 KB (9479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ed29bfee03e0d958a083bf69938c5aaf0c8140a1e79de40f4fe8a461b8de8a`  
		Last Modified: Sat, 20 Apr 2019 08:37:40 GMT  
		Size: 1.1 MB (1121965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d4abf6d38bcb20333bd9cbd80f8cc48db696a243b22729d740a3f54f137417`  
		Last Modified: Thu, 25 Apr 2019 08:02:29 GMT  
		Size: 13.7 MB (13674706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65e00830c7cd7736a3e19b1761a6c6307ee9d7313b105eafbb9d75f432efcf6`  
		Last Modified: Thu, 25 Apr 2019 08:03:05 GMT  
		Size: 96.4 MB (96362585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed4d37df8ba0cb6099573e7005b1143f38438b3be4b0d054d8c64da455344806`  
		Last Modified: Thu, 25 Apr 2019 08:02:32 GMT  
		Size: 30.3 MB (30291546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba21909ff24482175c7d9c70c65c338c86128a963b23923cc1ce6a0b1d42434`  
		Last Modified: Thu, 25 Apr 2019 08:02:23 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.7-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:b2c8bd8d4440dbf49171d9689a8dbad9dac928a216c14ad87eadeaf98579996d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.1 MB (168059791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa3c62da4c5e78603ecb7059ef29f736146133fa2dfb56ea21513ccafb80e43d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Sat, 20 Apr 2019 08:17:53 GMT
ENV NODE_VERSION=8.16.0
# Sat, 20 Apr 2019 08:27:12 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 20 Apr 2019 08:27:20 GMT
ENV YARN_VERSION=1.15.2
# Sat, 20 Apr 2019 08:27:50 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 20 Apr 2019 08:27:56 GMT
CMD ["node"]
# Sat, 20 Apr 2019 09:57:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 20 Apr 2019 09:57:09 GMT
RUN apk add --no-cache 		bash
# Sat, 20 Apr 2019 09:57:11 GMT
ENV NODE_ENV=production
# Thu, 25 Apr 2019 08:59:15 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 25 Apr 2019 08:59:56 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 25 Apr 2019 09:00:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 25 Apr 2019 09:00:06 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 25 Apr 2019 09:00:10 GMT
ENV GHOST_VERSION=1.25.7
# Thu, 25 Apr 2019 09:05:42 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 25 Apr 2019 09:06:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 25 Apr 2019 09:09:11 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Thu, 25 Apr 2019 09:09:15 GMT
WORKDIR /var/lib/ghost
# Thu, 25 Apr 2019 09:09:18 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 25 Apr 2019 09:09:19 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Thu, 25 Apr 2019 09:09:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 09:09:25 GMT
EXPOSE 2368
# Thu, 25 Apr 2019 09:09:30 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681d326206a4d9b8ffdf8f63fb498ab1bcf5777861661db896f0429e078b08d6`  
		Last Modified: Sat, 20 Apr 2019 09:18:31 GMT  
		Size: 20.1 MB (20132883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d56de47bf7357c43ed507a44f5f50bd8df88d32d6875a2c8a9e195a664ac1e`  
		Last Modified: Sat, 20 Apr 2019 09:18:15 GMT  
		Size: 1.3 MB (1333917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4bf265618ea3cc6fdeadc117e42306ad5ea092bb7db78e511792fd61ca52b6`  
		Last Modified: Sat, 20 Apr 2019 10:07:59 GMT  
		Size: 10.2 KB (10239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f49bb9785bde3332c6a3b178ec696e1238eeb3cfcf277f7bc86b4ee5a3b9e5f3`  
		Last Modified: Sat, 20 Apr 2019 10:08:02 GMT  
		Size: 1.3 MB (1257930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db9ad41c771cec381d08ab82bca3e9093f6eec5d43bfecc0dcb3cfaf0db5a5c2`  
		Last Modified: Thu, 25 Apr 2019 09:17:27 GMT  
		Size: 13.7 MB (13673242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae751254af13c10e98bc18d7e1441e8ca730ff4f69d12ab88f6a31fbaa117fb4`  
		Last Modified: Thu, 25 Apr 2019 09:18:49 GMT  
		Size: 96.4 MB (96408417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824a058d8bd69bd59f63452e02731c1c7ea76d05038342d5724d753c348a1e25`  
		Last Modified: Thu, 25 Apr 2019 09:17:07 GMT  
		Size: 32.5 MB (32461566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de65ae2df6d495311d31efeeaf698b35a38332c03febbc008524ea5f8187dbb`  
		Last Modified: Thu, 25 Apr 2019 09:16:51 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25-alpine`

```console
$ docker pull ghost@sha256:52dcdb1715102c83817c89f6b2238a3f76f355913d7417eb37592ad9bbe10b41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1.25-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:a9d82ed199b64971eca52351926f71ddaf177cb73590454cba90d04053b1cbd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.0 MB (154998362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bb7da16af472a7caa7abb38054841ae5c5e6c70280499c5e21daa5f82d28284`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Fri, 19 Apr 2019 23:22:42 GMT
ENV NODE_VERSION=8.16.0
# Fri, 19 Apr 2019 23:47:30 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 19 Apr 2019 23:47:30 GMT
ENV YARN_VERSION=1.15.2
# Fri, 19 Apr 2019 23:47:33 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 19 Apr 2019 23:47:33 GMT
CMD ["node"]
# Sat, 20 Apr 2019 01:12:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 20 Apr 2019 01:12:46 GMT
RUN apk add --no-cache 		bash
# Sat, 20 Apr 2019 01:12:46 GMT
ENV NODE_ENV=production
# Thu, 25 Apr 2019 00:23:31 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 25 Apr 2019 00:23:51 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 25 Apr 2019 00:23:52 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 25 Apr 2019 00:23:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 25 Apr 2019 00:23:52 GMT
ENV GHOST_VERSION=1.25.7
# Thu, 25 Apr 2019 00:24:28 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 25 Apr 2019 00:24:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 25 Apr 2019 00:24:39 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Thu, 25 Apr 2019 00:24:39 GMT
WORKDIR /var/lib/ghost
# Thu, 25 Apr 2019 00:24:39 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 25 Apr 2019 00:24:39 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Thu, 25 Apr 2019 00:24:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 00:24:40 GMT
EXPOSE 2368
# Thu, 25 Apr 2019 00:24:40 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28476b858903d0f6bcbdbabbff0fd3d1f77876667b112b17b84e122b6a42ac3f`  
		Last Modified: Sat, 20 Apr 2019 00:53:29 GMT  
		Size: 18.7 MB (18651034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b957d43c01b33294054c23b05593b41b4ec773786ec411143c96a1aa88aaf766`  
		Last Modified: Sat, 20 Apr 2019 00:53:20 GMT  
		Size: 1.3 MB (1333856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1409747fe11d4fbe15a939d8581b0e30d17154465901f7c3699c8271cc0c3897`  
		Last Modified: Sat, 20 Apr 2019 01:15:07 GMT  
		Size: 9.7 KB (9671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ec2aa27f3e254e4f7e022a85100cedb01a0784d6d0e61d2e135f2df0aa00a4`  
		Last Modified: Sat, 20 Apr 2019 01:15:07 GMT  
		Size: 1.2 MB (1176758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95fdfd710d73a2a193de489f0062a3ae6dd9395c5f4ffe119e1b22896f33822`  
		Last Modified: Thu, 25 Apr 2019 00:27:24 GMT  
		Size: 13.7 MB (13672645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf7bb61fca9ef2dfe0e848325a00e2bab3dfb1d161b98b60e6a240f23f943156`  
		Last Modified: Thu, 25 Apr 2019 00:27:54 GMT  
		Size: 104.1 MB (104105069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6bdfe85bb4d15d8683abae8bf6366ac3b8e5bf86aca67826f6831d7244490d`  
		Last Modified: Thu, 25 Apr 2019 00:27:18 GMT  
		Size: 13.3 MB (13291746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081980ee07f36d7a80b536da70e38e54daede79a7d66ce359e36abc8725a1957`  
		Last Modified: Thu, 25 Apr 2019 00:27:15 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:41e4a1fc5ed01dbf79b22720e40d1f9e713f8012814f3ca8acf42283e2953df5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (162994959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e103d7bbc882c837f6fd43da1fa54f8ffb885a32cac5acaa38da59ed328479df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Sat, 20 Apr 2019 07:49:35 GMT
ENV NODE_VERSION=8.16.0
# Sat, 20 Apr 2019 07:53:23 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 20 Apr 2019 07:53:24 GMT
ENV YARN_VERSION=1.15.2
# Sat, 20 Apr 2019 07:53:28 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 20 Apr 2019 07:53:28 GMT
CMD ["node"]
# Sat, 20 Apr 2019 08:30:51 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 20 Apr 2019 08:30:54 GMT
RUN apk add --no-cache 		bash
# Sat, 20 Apr 2019 08:30:54 GMT
ENV NODE_ENV=production
# Thu, 25 Apr 2019 07:55:24 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 25 Apr 2019 07:55:56 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 25 Apr 2019 07:55:57 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 25 Apr 2019 07:55:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 25 Apr 2019 07:55:58 GMT
ENV GHOST_VERSION=1.25.7
# Thu, 25 Apr 2019 07:57:30 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 25 Apr 2019 07:57:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 25 Apr 2019 08:01:06 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Thu, 25 Apr 2019 08:01:07 GMT
WORKDIR /var/lib/ghost
# Thu, 25 Apr 2019 08:01:07 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 25 Apr 2019 08:01:07 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Thu, 25 Apr 2019 08:01:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 08:01:08 GMT
EXPOSE 2368
# Thu, 25 Apr 2019 08:01:09 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d93b6a4cc76db697c2b6e80e045abee666c3e1ca2fbb77536681bdf981a1665`  
		Last Modified: Sat, 20 Apr 2019 08:08:44 GMT  
		Size: 17.7 MB (17656795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c272bcadfe5cac98b4441024d2bde1f4c164d0b83a527e778e0deddfca9adda7`  
		Last Modified: Sat, 20 Apr 2019 08:08:37 GMT  
		Size: 1.3 MB (1333868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ff7221d6de71a9e0a9a34651f5452936e39fe831eadbe956b5eb7b3024da60`  
		Last Modified: Sat, 20 Apr 2019 08:37:41 GMT  
		Size: 9.5 KB (9479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ed29bfee03e0d958a083bf69938c5aaf0c8140a1e79de40f4fe8a461b8de8a`  
		Last Modified: Sat, 20 Apr 2019 08:37:40 GMT  
		Size: 1.1 MB (1121965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d4abf6d38bcb20333bd9cbd80f8cc48db696a243b22729d740a3f54f137417`  
		Last Modified: Thu, 25 Apr 2019 08:02:29 GMT  
		Size: 13.7 MB (13674706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65e00830c7cd7736a3e19b1761a6c6307ee9d7313b105eafbb9d75f432efcf6`  
		Last Modified: Thu, 25 Apr 2019 08:03:05 GMT  
		Size: 96.4 MB (96362585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed4d37df8ba0cb6099573e7005b1143f38438b3be4b0d054d8c64da455344806`  
		Last Modified: Thu, 25 Apr 2019 08:02:32 GMT  
		Size: 30.3 MB (30291546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba21909ff24482175c7d9c70c65c338c86128a963b23923cc1ce6a0b1d42434`  
		Last Modified: Thu, 25 Apr 2019 08:02:23 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:b2c8bd8d4440dbf49171d9689a8dbad9dac928a216c14ad87eadeaf98579996d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.1 MB (168059791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa3c62da4c5e78603ecb7059ef29f736146133fa2dfb56ea21513ccafb80e43d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Sat, 20 Apr 2019 08:17:53 GMT
ENV NODE_VERSION=8.16.0
# Sat, 20 Apr 2019 08:27:12 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 20 Apr 2019 08:27:20 GMT
ENV YARN_VERSION=1.15.2
# Sat, 20 Apr 2019 08:27:50 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 20 Apr 2019 08:27:56 GMT
CMD ["node"]
# Sat, 20 Apr 2019 09:57:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 20 Apr 2019 09:57:09 GMT
RUN apk add --no-cache 		bash
# Sat, 20 Apr 2019 09:57:11 GMT
ENV NODE_ENV=production
# Thu, 25 Apr 2019 08:59:15 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 25 Apr 2019 08:59:56 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 25 Apr 2019 09:00:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 25 Apr 2019 09:00:06 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 25 Apr 2019 09:00:10 GMT
ENV GHOST_VERSION=1.25.7
# Thu, 25 Apr 2019 09:05:42 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 25 Apr 2019 09:06:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 25 Apr 2019 09:09:11 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Thu, 25 Apr 2019 09:09:15 GMT
WORKDIR /var/lib/ghost
# Thu, 25 Apr 2019 09:09:18 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 25 Apr 2019 09:09:19 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Thu, 25 Apr 2019 09:09:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 09:09:25 GMT
EXPOSE 2368
# Thu, 25 Apr 2019 09:09:30 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681d326206a4d9b8ffdf8f63fb498ab1bcf5777861661db896f0429e078b08d6`  
		Last Modified: Sat, 20 Apr 2019 09:18:31 GMT  
		Size: 20.1 MB (20132883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d56de47bf7357c43ed507a44f5f50bd8df88d32d6875a2c8a9e195a664ac1e`  
		Last Modified: Sat, 20 Apr 2019 09:18:15 GMT  
		Size: 1.3 MB (1333917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4bf265618ea3cc6fdeadc117e42306ad5ea092bb7db78e511792fd61ca52b6`  
		Last Modified: Sat, 20 Apr 2019 10:07:59 GMT  
		Size: 10.2 KB (10239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f49bb9785bde3332c6a3b178ec696e1238eeb3cfcf277f7bc86b4ee5a3b9e5f3`  
		Last Modified: Sat, 20 Apr 2019 10:08:02 GMT  
		Size: 1.3 MB (1257930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db9ad41c771cec381d08ab82bca3e9093f6eec5d43bfecc0dcb3cfaf0db5a5c2`  
		Last Modified: Thu, 25 Apr 2019 09:17:27 GMT  
		Size: 13.7 MB (13673242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae751254af13c10e98bc18d7e1441e8ca730ff4f69d12ab88f6a31fbaa117fb4`  
		Last Modified: Thu, 25 Apr 2019 09:18:49 GMT  
		Size: 96.4 MB (96408417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824a058d8bd69bd59f63452e02731c1c7ea76d05038342d5724d753c348a1e25`  
		Last Modified: Thu, 25 Apr 2019 09:17:07 GMT  
		Size: 32.5 MB (32461566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de65ae2df6d495311d31efeeaf698b35a38332c03febbc008524ea5f8187dbb`  
		Last Modified: Thu, 25 Apr 2019 09:16:51 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:52dcdb1715102c83817c89f6b2238a3f76f355913d7417eb37592ad9bbe10b41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:a9d82ed199b64971eca52351926f71ddaf177cb73590454cba90d04053b1cbd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.0 MB (154998362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bb7da16af472a7caa7abb38054841ae5c5e6c70280499c5e21daa5f82d28284`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Fri, 19 Apr 2019 23:22:42 GMT
ENV NODE_VERSION=8.16.0
# Fri, 19 Apr 2019 23:47:30 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 19 Apr 2019 23:47:30 GMT
ENV YARN_VERSION=1.15.2
# Fri, 19 Apr 2019 23:47:33 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 19 Apr 2019 23:47:33 GMT
CMD ["node"]
# Sat, 20 Apr 2019 01:12:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 20 Apr 2019 01:12:46 GMT
RUN apk add --no-cache 		bash
# Sat, 20 Apr 2019 01:12:46 GMT
ENV NODE_ENV=production
# Thu, 25 Apr 2019 00:23:31 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 25 Apr 2019 00:23:51 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 25 Apr 2019 00:23:52 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 25 Apr 2019 00:23:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 25 Apr 2019 00:23:52 GMT
ENV GHOST_VERSION=1.25.7
# Thu, 25 Apr 2019 00:24:28 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 25 Apr 2019 00:24:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 25 Apr 2019 00:24:39 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Thu, 25 Apr 2019 00:24:39 GMT
WORKDIR /var/lib/ghost
# Thu, 25 Apr 2019 00:24:39 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 25 Apr 2019 00:24:39 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Thu, 25 Apr 2019 00:24:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 00:24:40 GMT
EXPOSE 2368
# Thu, 25 Apr 2019 00:24:40 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28476b858903d0f6bcbdbabbff0fd3d1f77876667b112b17b84e122b6a42ac3f`  
		Last Modified: Sat, 20 Apr 2019 00:53:29 GMT  
		Size: 18.7 MB (18651034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b957d43c01b33294054c23b05593b41b4ec773786ec411143c96a1aa88aaf766`  
		Last Modified: Sat, 20 Apr 2019 00:53:20 GMT  
		Size: 1.3 MB (1333856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1409747fe11d4fbe15a939d8581b0e30d17154465901f7c3699c8271cc0c3897`  
		Last Modified: Sat, 20 Apr 2019 01:15:07 GMT  
		Size: 9.7 KB (9671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ec2aa27f3e254e4f7e022a85100cedb01a0784d6d0e61d2e135f2df0aa00a4`  
		Last Modified: Sat, 20 Apr 2019 01:15:07 GMT  
		Size: 1.2 MB (1176758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95fdfd710d73a2a193de489f0062a3ae6dd9395c5f4ffe119e1b22896f33822`  
		Last Modified: Thu, 25 Apr 2019 00:27:24 GMT  
		Size: 13.7 MB (13672645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf7bb61fca9ef2dfe0e848325a00e2bab3dfb1d161b98b60e6a240f23f943156`  
		Last Modified: Thu, 25 Apr 2019 00:27:54 GMT  
		Size: 104.1 MB (104105069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6bdfe85bb4d15d8683abae8bf6366ac3b8e5bf86aca67826f6831d7244490d`  
		Last Modified: Thu, 25 Apr 2019 00:27:18 GMT  
		Size: 13.3 MB (13291746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081980ee07f36d7a80b536da70e38e54daede79a7d66ce359e36abc8725a1957`  
		Last Modified: Thu, 25 Apr 2019 00:27:15 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:41e4a1fc5ed01dbf79b22720e40d1f9e713f8012814f3ca8acf42283e2953df5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (162994959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e103d7bbc882c837f6fd43da1fa54f8ffb885a32cac5acaa38da59ed328479df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Sat, 20 Apr 2019 07:49:35 GMT
ENV NODE_VERSION=8.16.0
# Sat, 20 Apr 2019 07:53:23 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 20 Apr 2019 07:53:24 GMT
ENV YARN_VERSION=1.15.2
# Sat, 20 Apr 2019 07:53:28 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 20 Apr 2019 07:53:28 GMT
CMD ["node"]
# Sat, 20 Apr 2019 08:30:51 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 20 Apr 2019 08:30:54 GMT
RUN apk add --no-cache 		bash
# Sat, 20 Apr 2019 08:30:54 GMT
ENV NODE_ENV=production
# Thu, 25 Apr 2019 07:55:24 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 25 Apr 2019 07:55:56 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 25 Apr 2019 07:55:57 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 25 Apr 2019 07:55:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 25 Apr 2019 07:55:58 GMT
ENV GHOST_VERSION=1.25.7
# Thu, 25 Apr 2019 07:57:30 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 25 Apr 2019 07:57:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 25 Apr 2019 08:01:06 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Thu, 25 Apr 2019 08:01:07 GMT
WORKDIR /var/lib/ghost
# Thu, 25 Apr 2019 08:01:07 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 25 Apr 2019 08:01:07 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Thu, 25 Apr 2019 08:01:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 08:01:08 GMT
EXPOSE 2368
# Thu, 25 Apr 2019 08:01:09 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d93b6a4cc76db697c2b6e80e045abee666c3e1ca2fbb77536681bdf981a1665`  
		Last Modified: Sat, 20 Apr 2019 08:08:44 GMT  
		Size: 17.7 MB (17656795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c272bcadfe5cac98b4441024d2bde1f4c164d0b83a527e778e0deddfca9adda7`  
		Last Modified: Sat, 20 Apr 2019 08:08:37 GMT  
		Size: 1.3 MB (1333868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ff7221d6de71a9e0a9a34651f5452936e39fe831eadbe956b5eb7b3024da60`  
		Last Modified: Sat, 20 Apr 2019 08:37:41 GMT  
		Size: 9.5 KB (9479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ed29bfee03e0d958a083bf69938c5aaf0c8140a1e79de40f4fe8a461b8de8a`  
		Last Modified: Sat, 20 Apr 2019 08:37:40 GMT  
		Size: 1.1 MB (1121965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d4abf6d38bcb20333bd9cbd80f8cc48db696a243b22729d740a3f54f137417`  
		Last Modified: Thu, 25 Apr 2019 08:02:29 GMT  
		Size: 13.7 MB (13674706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65e00830c7cd7736a3e19b1761a6c6307ee9d7313b105eafbb9d75f432efcf6`  
		Last Modified: Thu, 25 Apr 2019 08:03:05 GMT  
		Size: 96.4 MB (96362585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed4d37df8ba0cb6099573e7005b1143f38438b3be4b0d054d8c64da455344806`  
		Last Modified: Thu, 25 Apr 2019 08:02:32 GMT  
		Size: 30.3 MB (30291546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba21909ff24482175c7d9c70c65c338c86128a963b23923cc1ce6a0b1d42434`  
		Last Modified: Thu, 25 Apr 2019 08:02:23 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:b2c8bd8d4440dbf49171d9689a8dbad9dac928a216c14ad87eadeaf98579996d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.1 MB (168059791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa3c62da4c5e78603ecb7059ef29f736146133fa2dfb56ea21513ccafb80e43d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Sat, 20 Apr 2019 08:17:53 GMT
ENV NODE_VERSION=8.16.0
# Sat, 20 Apr 2019 08:27:12 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 20 Apr 2019 08:27:20 GMT
ENV YARN_VERSION=1.15.2
# Sat, 20 Apr 2019 08:27:50 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 20 Apr 2019 08:27:56 GMT
CMD ["node"]
# Sat, 20 Apr 2019 09:57:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 20 Apr 2019 09:57:09 GMT
RUN apk add --no-cache 		bash
# Sat, 20 Apr 2019 09:57:11 GMT
ENV NODE_ENV=production
# Thu, 25 Apr 2019 08:59:15 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 25 Apr 2019 08:59:56 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 25 Apr 2019 09:00:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 25 Apr 2019 09:00:06 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 25 Apr 2019 09:00:10 GMT
ENV GHOST_VERSION=1.25.7
# Thu, 25 Apr 2019 09:05:42 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 25 Apr 2019 09:06:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 25 Apr 2019 09:09:11 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Thu, 25 Apr 2019 09:09:15 GMT
WORKDIR /var/lib/ghost
# Thu, 25 Apr 2019 09:09:18 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 25 Apr 2019 09:09:19 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Thu, 25 Apr 2019 09:09:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 09:09:25 GMT
EXPOSE 2368
# Thu, 25 Apr 2019 09:09:30 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681d326206a4d9b8ffdf8f63fb498ab1bcf5777861661db896f0429e078b08d6`  
		Last Modified: Sat, 20 Apr 2019 09:18:31 GMT  
		Size: 20.1 MB (20132883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d56de47bf7357c43ed507a44f5f50bd8df88d32d6875a2c8a9e195a664ac1e`  
		Last Modified: Sat, 20 Apr 2019 09:18:15 GMT  
		Size: 1.3 MB (1333917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4bf265618ea3cc6fdeadc117e42306ad5ea092bb7db78e511792fd61ca52b6`  
		Last Modified: Sat, 20 Apr 2019 10:07:59 GMT  
		Size: 10.2 KB (10239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f49bb9785bde3332c6a3b178ec696e1238eeb3cfcf277f7bc86b4ee5a3b9e5f3`  
		Last Modified: Sat, 20 Apr 2019 10:08:02 GMT  
		Size: 1.3 MB (1257930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db9ad41c771cec381d08ab82bca3e9093f6eec5d43bfecc0dcb3cfaf0db5a5c2`  
		Last Modified: Thu, 25 Apr 2019 09:17:27 GMT  
		Size: 13.7 MB (13673242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae751254af13c10e98bc18d7e1441e8ca730ff4f69d12ab88f6a31fbaa117fb4`  
		Last Modified: Thu, 25 Apr 2019 09:18:49 GMT  
		Size: 96.4 MB (96408417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824a058d8bd69bd59f63452e02731c1c7ea76d05038342d5724d753c348a1e25`  
		Last Modified: Thu, 25 Apr 2019 09:17:07 GMT  
		Size: 32.5 MB (32461566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de65ae2df6d495311d31efeeaf698b35a38332c03febbc008524ea5f8187dbb`  
		Last Modified: Thu, 25 Apr 2019 09:16:51 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2`

```console
$ docker pull ghost@sha256:c48772bc8b28b25734bcb6c282e79690ce402a5bb425ecff915493271bfe0cee
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
$ docker pull ghost@sha256:8932db121f4e1ba970bcb60ce8ee955b71886bcbd064046aa2cc9b001bfb8290
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.8 MB (185807530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85627cc2535d37b336fbaa6269bd943fc0eb88cbe7819f033d31fb035283c18e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:14:42 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 02:23:04 GMT
ENV NODE_VERSION=10.15.3
# Wed, 08 May 2019 02:23:21 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 02:23:22 GMT
ENV YARN_VERSION=1.13.0
# Wed, 08 May 2019 02:23:25 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 02:23:25 GMT
CMD ["node"]
# Wed, 08 May 2019 08:50:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 08:50:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 08 May 2019 08:50:28 GMT
ENV NODE_ENV=production
# Wed, 08 May 2019 08:50:28 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 08 May 2019 08:50:53 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 08 May 2019 08:50:54 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 08 May 2019 08:50:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 08 May 2019 08:50:55 GMT
ENV GHOST_VERSION=2.22.0
# Wed, 08 May 2019 08:52:07 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 08 May 2019 08:52:24 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 08 May 2019 08:52:24 GMT
WORKDIR /var/lib/ghost
# Wed, 08 May 2019 08:52:25 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 08 May 2019 08:52:25 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 08 May 2019 08:52:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 08:52:25 GMT
EXPOSE 2368
# Wed, 08 May 2019 08:52:26 GMT
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
	-	`sha256:eb3f264e66c2e2988737c427e3c3b391f70867d5653e083a84b908b277fe9159`  
		Last Modified: Wed, 08 May 2019 02:29:08 GMT  
		Size: 29.5 MB (29532610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9669fded0b979f158689cc56df73bf7eddbf65a7e12cf2db11fa272e78a735e8`  
		Last Modified: Wed, 08 May 2019 02:29:00 GMT  
		Size: 1.3 MB (1323189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a4aa819962848d61da9ddc250bd1293e5f078eb3d480e4b1cc8d3c0269e64d9`  
		Last Modified: Wed, 08 May 2019 08:54:23 GMT  
		Size: 500.9 KB (500920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561a347ed74f801eb1332cf47a2521b731812f0fb199a607bdd0be085d43da6a`  
		Last Modified: Wed, 08 May 2019 08:54:34 GMT  
		Size: 13.7 MB (13684590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca49b6c0603b6abeab33c46712221cca3854b6a17b0c3ee345bc343ef230aa8`  
		Last Modified: Wed, 08 May 2019 08:55:11 GMT  
		Size: 116.9 MB (116879816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608a0f1de3c6a846a108563d23adcbc7bd5f2ca0402dfac2cb3fa1f927f31d38`  
		Last Modified: Wed, 08 May 2019 08:54:24 GMT  
		Size: 1.4 MB (1392352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11758ea920913b7ea936d94f7f9d9eab8f0b5166978d2143b178cc504d57ee60`  
		Last Modified: Wed, 08 May 2019 08:54:23 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; arm variant v7

```console
$ docker pull ghost@sha256:34aafa59c51a97e0435fc2eb6e673c484a98a51da02788563b628c21756b31fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.0 MB (181957185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c99d89173140fb027e3959e2d924b67824cb41cec54469c2e32378940af442f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 15:13:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 15:22:56 GMT
ENV NODE_VERSION=10.15.3
# Wed, 08 May 2019 15:23:26 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 15:23:27 GMT
ENV YARN_VERSION=1.13.0
# Wed, 08 May 2019 15:23:32 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 15:23:33 GMT
CMD ["node"]
# Wed, 08 May 2019 18:23:16 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 18:23:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 08 May 2019 18:23:20 GMT
ENV NODE_ENV=production
# Wed, 08 May 2019 18:23:21 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 08 May 2019 18:23:43 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 08 May 2019 18:23:45 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 08 May 2019 18:23:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 08 May 2019 18:23:46 GMT
ENV GHOST_VERSION=2.22.0
# Wed, 08 May 2019 18:25:00 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 08 May 2019 18:28:14 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 08 May 2019 18:28:15 GMT
WORKDIR /var/lib/ghost
# Wed, 08 May 2019 18:28:15 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 08 May 2019 18:28:16 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 08 May 2019 18:28:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 18:28:16 GMT
EXPOSE 2368
# Wed, 08 May 2019 18:28:17 GMT
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
	-	`sha256:14a6538714345afc45960872235607be1c968f97b76baf55764a6fed799a01c5`  
		Last Modified: Wed, 08 May 2019 15:31:08 GMT  
		Size: 26.7 MB (26657806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffef9dafc42c96f448b06d0a3d595ce9f89cfae22bacb3f584e2941f372177a`  
		Last Modified: Wed, 08 May 2019 15:30:59 GMT  
		Size: 1.3 MB (1323223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f637286048b626849eddb82846ee87f6abf3d73d7d118af28f723444e63c74cb`  
		Last Modified: Wed, 08 May 2019 18:34:18 GMT  
		Size: 475.4 KB (475436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2665970a48d20716c044db7d6b5d4170f4f5bb6c0b25a65e25b31288e003cc`  
		Last Modified: Wed, 08 May 2019 18:34:24 GMT  
		Size: 13.7 MB (13684439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f51178cd050e4d07d7d0edc5262e6e37a99830661c24c0ee5228de790fa2520`  
		Last Modified: Wed, 08 May 2019 18:35:01 GMT  
		Size: 101.1 MB (101136157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faf229346c281d2ab2a326cbff64aa480ba30adae7538c271ae3e65a2225dc84`  
		Last Modified: Wed, 08 May 2019 18:34:24 GMT  
		Size: 19.4 MB (19399192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77dab896f309ae713cef374cbd35e1fd80c4b928817530cae33bccd3cfc03499`  
		Last Modified: Wed, 08 May 2019 18:34:18 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:8f45e009d5f7bdb89d490a3ac348f266a540cbd7415c1cbe8cfdcd967baf141b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.7 MB (184678380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca22b8b3035d934137b7b7d219f086e8d10ae3c37fc08a7d7ae50ea4ebb429ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 15:39:28 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 15:50:16 GMT
ENV NODE_VERSION=10.15.3
# Wed, 08 May 2019 15:51:22 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 15:51:23 GMT
ENV YARN_VERSION=1.13.0
# Wed, 08 May 2019 15:51:30 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 15:51:30 GMT
CMD ["node"]
# Thu, 09 May 2019 05:51:48 GMT
ENV GOSU_VERSION=1.10
# Thu, 09 May 2019 05:51:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 09 May 2019 05:51:57 GMT
ENV NODE_ENV=production
# Thu, 09 May 2019 05:51:58 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 09 May 2019 05:53:09 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 09 May 2019 05:53:12 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 09 May 2019 05:53:13 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 09 May 2019 05:53:14 GMT
ENV GHOST_VERSION=2.22.0
# Thu, 09 May 2019 05:56:29 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 09 May 2019 06:05:03 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 09 May 2019 06:05:05 GMT
WORKDIR /var/lib/ghost
# Thu, 09 May 2019 06:05:06 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 09 May 2019 06:05:07 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 09 May 2019 06:05:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 06:05:11 GMT
EXPOSE 2368
# Thu, 09 May 2019 06:05:12 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e813c27fe177b7315d10633afc967f85ef6c341a2f537b60e47d5711d235c092`  
		Last Modified: Wed, 08 May 2019 15:54:06 GMT  
		Size: 4.2 KB (4153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76eb5888c5ba7d516b4ee58a8d53d03b2d6598ab09cf817328cc10e9870cc1d8`  
		Last Modified: Wed, 08 May 2019 15:58:39 GMT  
		Size: 28.3 MB (28344772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d86246a1ba7d2330982b0ef3b1172b6b0c0f599639e60745803b1227c90309c5`  
		Last Modified: Wed, 08 May 2019 15:58:28 GMT  
		Size: 1.3 MB (1323196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d4423579b40084b1440570923c50216f31bb82a9cfa40253b6901e5badad51`  
		Last Modified: Thu, 09 May 2019 06:20:08 GMT  
		Size: 468.9 KB (468941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ac208d9acec874c520347c8de762a10128e84be2b82e170ce2bb11ff216ff8`  
		Last Modified: Thu, 09 May 2019 06:20:29 GMT  
		Size: 13.7 MB (13686284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8200fd91fbd0c5f4c095692a32add8ccaeec3f63970df6700f5c7cf447862e11`  
		Last Modified: Thu, 09 May 2019 06:21:55 GMT  
		Size: 101.0 MB (100991624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d32619bdba0a4667c49d4d9b0570b7f3e38ca5626950ff4420658c76097007`  
		Last Modified: Thu, 09 May 2019 06:20:32 GMT  
		Size: 19.5 MB (19525038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3b24c733b309cb99f9e0476cb3f890ac8f41a047e104d78a08c976c406eb1e`  
		Last Modified: Thu, 09 May 2019 06:20:07 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; ppc64le

```console
$ docker pull ghost@sha256:5eae4d745f9ffd5c1cd830b9509432287ab98bcadca038ea59ac7779735206c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.5 MB (174518081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c289b845717261030a629fa38818fc612cee8aa84417429320dea8f99a67ecc`
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
# Thu, 09 May 2019 00:26:39 GMT
ENV GHOST_VERSION=2.22.0
# Thu, 09 May 2019 00:31:27 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 09 May 2019 00:36:31 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 09 May 2019 00:36:38 GMT
WORKDIR /var/lib/ghost
# Thu, 09 May 2019 00:36:43 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 09 May 2019 00:36:45 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 09 May 2019 00:36:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 00:36:55 GMT
EXPOSE 2368
# Thu, 09 May 2019 00:36:58 GMT
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
	-	`sha256:ba4af4fe4d8a87642e92b90f42496e2088a83043e7c6b7dca161022ec0dec781`  
		Last Modified: Thu, 09 May 2019 00:51:36 GMT  
		Size: 95.0 MB (95012552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be949dcc34677ca01c2fd2761608e544826d5712558d67a7a67cc8b01ae089e`  
		Last Modified: Thu, 09 May 2019 00:50:12 GMT  
		Size: 12.6 MB (12639162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e8a6435e3cb432d40edd4df5086480439dac944d3fd631d5da5711395713ef`  
		Last Modified: Thu, 09 May 2019 00:50:05 GMT  
		Size: 561.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; s390x

```console
$ docker pull ghost@sha256:bdaa76f387512278cf4817e967f7c1ab64787737e6bf0a3d2acff9f2e4d9e290
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.7 MB (174719001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:454893a5df0e6203cc84bfaf4fc1c3e653d60ca63097a433b7d7957686458e68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:12:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 14:21:29 GMT
ENV NODE_VERSION=10.15.3
# Wed, 08 May 2019 14:22:38 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 14:22:39 GMT
ENV YARN_VERSION=1.13.0
# Wed, 08 May 2019 14:22:51 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 14:22:52 GMT
CMD ["node"]
# Thu, 09 May 2019 02:55:32 GMT
ENV GOSU_VERSION=1.10
# Thu, 09 May 2019 02:55:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 09 May 2019 02:55:47 GMT
ENV NODE_ENV=production
# Thu, 09 May 2019 02:55:48 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 09 May 2019 02:57:17 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 09 May 2019 02:57:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 09 May 2019 02:57:19 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 09 May 2019 02:57:20 GMT
ENV GHOST_VERSION=2.22.0
# Thu, 09 May 2019 03:00:00 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 09 May 2019 03:03:56 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 09 May 2019 03:03:58 GMT
WORKDIR /var/lib/ghost
# Thu, 09 May 2019 03:03:59 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 09 May 2019 03:04:01 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 09 May 2019 03:04:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 03:04:03 GMT
EXPOSE 2368
# Thu, 09 May 2019 03:04:04 GMT
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
	-	`sha256:6bb421d6805b14178a44cce991f5d56322e81cf5add5e5a6746fd3268ffd5ccc`  
		Last Modified: Wed, 08 May 2019 14:33:29 GMT  
		Size: 29.2 MB (29244575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17e090a431df53f609ab6fa59e34bac1cc099ad84b0590d46d6982782c17258`  
		Last Modified: Wed, 08 May 2019 14:33:16 GMT  
		Size: 1.3 MB (1323202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1a2a841918de5b32570a4d62b7ff98007d9a666c68e2536feef1103e4f4f02`  
		Last Modified: Thu, 09 May 2019 03:14:44 GMT  
		Size: 487.0 KB (487045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c36144c08c322b6f08fe15c6ce0dfd6507712310052fef67ab0848404e9bdc`  
		Last Modified: Thu, 09 May 2019 03:14:52 GMT  
		Size: 13.7 MB (13686364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d248317f7a9261fbea3439a6f7dde5c4f08dc872385e4f978c8f2b010b67e47e`  
		Last Modified: Thu, 09 May 2019 03:15:43 GMT  
		Size: 95.0 MB (95012120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1da76f119023470e5c7b6ddd812faafc121b4de60c4949a068710c6408e9b50`  
		Last Modified: Thu, 09 May 2019 03:14:52 GMT  
		Size: 12.6 MB (12622111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3288b67fd8502daed83f26d486c42363348d37fbc68c975fe64e48cffef381ab`  
		Last Modified: Thu, 09 May 2019 03:14:44 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.22`

```console
$ docker pull ghost@sha256:c48772bc8b28b25734bcb6c282e79690ce402a5bb425ecff915493271bfe0cee
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
$ docker pull ghost@sha256:8932db121f4e1ba970bcb60ce8ee955b71886bcbd064046aa2cc9b001bfb8290
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.8 MB (185807530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85627cc2535d37b336fbaa6269bd943fc0eb88cbe7819f033d31fb035283c18e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:14:42 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 02:23:04 GMT
ENV NODE_VERSION=10.15.3
# Wed, 08 May 2019 02:23:21 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 02:23:22 GMT
ENV YARN_VERSION=1.13.0
# Wed, 08 May 2019 02:23:25 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 02:23:25 GMT
CMD ["node"]
# Wed, 08 May 2019 08:50:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 08:50:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 08 May 2019 08:50:28 GMT
ENV NODE_ENV=production
# Wed, 08 May 2019 08:50:28 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 08 May 2019 08:50:53 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 08 May 2019 08:50:54 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 08 May 2019 08:50:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 08 May 2019 08:50:55 GMT
ENV GHOST_VERSION=2.22.0
# Wed, 08 May 2019 08:52:07 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 08 May 2019 08:52:24 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 08 May 2019 08:52:24 GMT
WORKDIR /var/lib/ghost
# Wed, 08 May 2019 08:52:25 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 08 May 2019 08:52:25 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 08 May 2019 08:52:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 08:52:25 GMT
EXPOSE 2368
# Wed, 08 May 2019 08:52:26 GMT
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
	-	`sha256:eb3f264e66c2e2988737c427e3c3b391f70867d5653e083a84b908b277fe9159`  
		Last Modified: Wed, 08 May 2019 02:29:08 GMT  
		Size: 29.5 MB (29532610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9669fded0b979f158689cc56df73bf7eddbf65a7e12cf2db11fa272e78a735e8`  
		Last Modified: Wed, 08 May 2019 02:29:00 GMT  
		Size: 1.3 MB (1323189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a4aa819962848d61da9ddc250bd1293e5f078eb3d480e4b1cc8d3c0269e64d9`  
		Last Modified: Wed, 08 May 2019 08:54:23 GMT  
		Size: 500.9 KB (500920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561a347ed74f801eb1332cf47a2521b731812f0fb199a607bdd0be085d43da6a`  
		Last Modified: Wed, 08 May 2019 08:54:34 GMT  
		Size: 13.7 MB (13684590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca49b6c0603b6abeab33c46712221cca3854b6a17b0c3ee345bc343ef230aa8`  
		Last Modified: Wed, 08 May 2019 08:55:11 GMT  
		Size: 116.9 MB (116879816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608a0f1de3c6a846a108563d23adcbc7bd5f2ca0402dfac2cb3fa1f927f31d38`  
		Last Modified: Wed, 08 May 2019 08:54:24 GMT  
		Size: 1.4 MB (1392352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11758ea920913b7ea936d94f7f9d9eab8f0b5166978d2143b178cc504d57ee60`  
		Last Modified: Wed, 08 May 2019 08:54:23 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.22` - linux; arm variant v7

```console
$ docker pull ghost@sha256:34aafa59c51a97e0435fc2eb6e673c484a98a51da02788563b628c21756b31fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.0 MB (181957185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c99d89173140fb027e3959e2d924b67824cb41cec54469c2e32378940af442f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 15:13:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 15:22:56 GMT
ENV NODE_VERSION=10.15.3
# Wed, 08 May 2019 15:23:26 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 15:23:27 GMT
ENV YARN_VERSION=1.13.0
# Wed, 08 May 2019 15:23:32 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 15:23:33 GMT
CMD ["node"]
# Wed, 08 May 2019 18:23:16 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 18:23:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 08 May 2019 18:23:20 GMT
ENV NODE_ENV=production
# Wed, 08 May 2019 18:23:21 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 08 May 2019 18:23:43 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 08 May 2019 18:23:45 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 08 May 2019 18:23:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 08 May 2019 18:23:46 GMT
ENV GHOST_VERSION=2.22.0
# Wed, 08 May 2019 18:25:00 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 08 May 2019 18:28:14 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 08 May 2019 18:28:15 GMT
WORKDIR /var/lib/ghost
# Wed, 08 May 2019 18:28:15 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 08 May 2019 18:28:16 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 08 May 2019 18:28:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 18:28:16 GMT
EXPOSE 2368
# Wed, 08 May 2019 18:28:17 GMT
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
	-	`sha256:14a6538714345afc45960872235607be1c968f97b76baf55764a6fed799a01c5`  
		Last Modified: Wed, 08 May 2019 15:31:08 GMT  
		Size: 26.7 MB (26657806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffef9dafc42c96f448b06d0a3d595ce9f89cfae22bacb3f584e2941f372177a`  
		Last Modified: Wed, 08 May 2019 15:30:59 GMT  
		Size: 1.3 MB (1323223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f637286048b626849eddb82846ee87f6abf3d73d7d118af28f723444e63c74cb`  
		Last Modified: Wed, 08 May 2019 18:34:18 GMT  
		Size: 475.4 KB (475436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2665970a48d20716c044db7d6b5d4170f4f5bb6c0b25a65e25b31288e003cc`  
		Last Modified: Wed, 08 May 2019 18:34:24 GMT  
		Size: 13.7 MB (13684439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f51178cd050e4d07d7d0edc5262e6e37a99830661c24c0ee5228de790fa2520`  
		Last Modified: Wed, 08 May 2019 18:35:01 GMT  
		Size: 101.1 MB (101136157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faf229346c281d2ab2a326cbff64aa480ba30adae7538c271ae3e65a2225dc84`  
		Last Modified: Wed, 08 May 2019 18:34:24 GMT  
		Size: 19.4 MB (19399192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77dab896f309ae713cef374cbd35e1fd80c4b928817530cae33bccd3cfc03499`  
		Last Modified: Wed, 08 May 2019 18:34:18 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.22` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:8f45e009d5f7bdb89d490a3ac348f266a540cbd7415c1cbe8cfdcd967baf141b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.7 MB (184678380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca22b8b3035d934137b7b7d219f086e8d10ae3c37fc08a7d7ae50ea4ebb429ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 15:39:28 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 15:50:16 GMT
ENV NODE_VERSION=10.15.3
# Wed, 08 May 2019 15:51:22 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 15:51:23 GMT
ENV YARN_VERSION=1.13.0
# Wed, 08 May 2019 15:51:30 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 15:51:30 GMT
CMD ["node"]
# Thu, 09 May 2019 05:51:48 GMT
ENV GOSU_VERSION=1.10
# Thu, 09 May 2019 05:51:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 09 May 2019 05:51:57 GMT
ENV NODE_ENV=production
# Thu, 09 May 2019 05:51:58 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 09 May 2019 05:53:09 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 09 May 2019 05:53:12 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 09 May 2019 05:53:13 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 09 May 2019 05:53:14 GMT
ENV GHOST_VERSION=2.22.0
# Thu, 09 May 2019 05:56:29 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 09 May 2019 06:05:03 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 09 May 2019 06:05:05 GMT
WORKDIR /var/lib/ghost
# Thu, 09 May 2019 06:05:06 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 09 May 2019 06:05:07 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 09 May 2019 06:05:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 06:05:11 GMT
EXPOSE 2368
# Thu, 09 May 2019 06:05:12 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e813c27fe177b7315d10633afc967f85ef6c341a2f537b60e47d5711d235c092`  
		Last Modified: Wed, 08 May 2019 15:54:06 GMT  
		Size: 4.2 KB (4153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76eb5888c5ba7d516b4ee58a8d53d03b2d6598ab09cf817328cc10e9870cc1d8`  
		Last Modified: Wed, 08 May 2019 15:58:39 GMT  
		Size: 28.3 MB (28344772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d86246a1ba7d2330982b0ef3b1172b6b0c0f599639e60745803b1227c90309c5`  
		Last Modified: Wed, 08 May 2019 15:58:28 GMT  
		Size: 1.3 MB (1323196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d4423579b40084b1440570923c50216f31bb82a9cfa40253b6901e5badad51`  
		Last Modified: Thu, 09 May 2019 06:20:08 GMT  
		Size: 468.9 KB (468941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ac208d9acec874c520347c8de762a10128e84be2b82e170ce2bb11ff216ff8`  
		Last Modified: Thu, 09 May 2019 06:20:29 GMT  
		Size: 13.7 MB (13686284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8200fd91fbd0c5f4c095692a32add8ccaeec3f63970df6700f5c7cf447862e11`  
		Last Modified: Thu, 09 May 2019 06:21:55 GMT  
		Size: 101.0 MB (100991624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d32619bdba0a4667c49d4d9b0570b7f3e38ca5626950ff4420658c76097007`  
		Last Modified: Thu, 09 May 2019 06:20:32 GMT  
		Size: 19.5 MB (19525038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3b24c733b309cb99f9e0476cb3f890ac8f41a047e104d78a08c976c406eb1e`  
		Last Modified: Thu, 09 May 2019 06:20:07 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.22` - linux; ppc64le

```console
$ docker pull ghost@sha256:5eae4d745f9ffd5c1cd830b9509432287ab98bcadca038ea59ac7779735206c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.5 MB (174518081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c289b845717261030a629fa38818fc612cee8aa84417429320dea8f99a67ecc`
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
# Thu, 09 May 2019 00:26:39 GMT
ENV GHOST_VERSION=2.22.0
# Thu, 09 May 2019 00:31:27 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 09 May 2019 00:36:31 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 09 May 2019 00:36:38 GMT
WORKDIR /var/lib/ghost
# Thu, 09 May 2019 00:36:43 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 09 May 2019 00:36:45 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 09 May 2019 00:36:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 00:36:55 GMT
EXPOSE 2368
# Thu, 09 May 2019 00:36:58 GMT
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
	-	`sha256:ba4af4fe4d8a87642e92b90f42496e2088a83043e7c6b7dca161022ec0dec781`  
		Last Modified: Thu, 09 May 2019 00:51:36 GMT  
		Size: 95.0 MB (95012552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be949dcc34677ca01c2fd2761608e544826d5712558d67a7a67cc8b01ae089e`  
		Last Modified: Thu, 09 May 2019 00:50:12 GMT  
		Size: 12.6 MB (12639162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e8a6435e3cb432d40edd4df5086480439dac944d3fd631d5da5711395713ef`  
		Last Modified: Thu, 09 May 2019 00:50:05 GMT  
		Size: 561.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.22` - linux; s390x

```console
$ docker pull ghost@sha256:bdaa76f387512278cf4817e967f7c1ab64787737e6bf0a3d2acff9f2e4d9e290
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.7 MB (174719001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:454893a5df0e6203cc84bfaf4fc1c3e653d60ca63097a433b7d7957686458e68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:12:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 14:21:29 GMT
ENV NODE_VERSION=10.15.3
# Wed, 08 May 2019 14:22:38 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 14:22:39 GMT
ENV YARN_VERSION=1.13.0
# Wed, 08 May 2019 14:22:51 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 14:22:52 GMT
CMD ["node"]
# Thu, 09 May 2019 02:55:32 GMT
ENV GOSU_VERSION=1.10
# Thu, 09 May 2019 02:55:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 09 May 2019 02:55:47 GMT
ENV NODE_ENV=production
# Thu, 09 May 2019 02:55:48 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 09 May 2019 02:57:17 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 09 May 2019 02:57:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 09 May 2019 02:57:19 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 09 May 2019 02:57:20 GMT
ENV GHOST_VERSION=2.22.0
# Thu, 09 May 2019 03:00:00 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 09 May 2019 03:03:56 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 09 May 2019 03:03:58 GMT
WORKDIR /var/lib/ghost
# Thu, 09 May 2019 03:03:59 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 09 May 2019 03:04:01 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 09 May 2019 03:04:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 03:04:03 GMT
EXPOSE 2368
# Thu, 09 May 2019 03:04:04 GMT
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
	-	`sha256:6bb421d6805b14178a44cce991f5d56322e81cf5add5e5a6746fd3268ffd5ccc`  
		Last Modified: Wed, 08 May 2019 14:33:29 GMT  
		Size: 29.2 MB (29244575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17e090a431df53f609ab6fa59e34bac1cc099ad84b0590d46d6982782c17258`  
		Last Modified: Wed, 08 May 2019 14:33:16 GMT  
		Size: 1.3 MB (1323202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1a2a841918de5b32570a4d62b7ff98007d9a666c68e2536feef1103e4f4f02`  
		Last Modified: Thu, 09 May 2019 03:14:44 GMT  
		Size: 487.0 KB (487045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c36144c08c322b6f08fe15c6ce0dfd6507712310052fef67ab0848404e9bdc`  
		Last Modified: Thu, 09 May 2019 03:14:52 GMT  
		Size: 13.7 MB (13686364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d248317f7a9261fbea3439a6f7dde5c4f08dc872385e4f978c8f2b010b67e47e`  
		Last Modified: Thu, 09 May 2019 03:15:43 GMT  
		Size: 95.0 MB (95012120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1da76f119023470e5c7b6ddd812faafc121b4de60c4949a068710c6408e9b50`  
		Last Modified: Thu, 09 May 2019 03:14:52 GMT  
		Size: 12.6 MB (12622111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3288b67fd8502daed83f26d486c42363348d37fbc68c975fe64e48cffef381ab`  
		Last Modified: Thu, 09 May 2019 03:14:44 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.22.0`

```console
$ docker pull ghost@sha256:c48772bc8b28b25734bcb6c282e79690ce402a5bb425ecff915493271bfe0cee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `ghost:2.22.0` - linux; amd64

```console
$ docker pull ghost@sha256:8932db121f4e1ba970bcb60ce8ee955b71886bcbd064046aa2cc9b001bfb8290
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.8 MB (185807530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85627cc2535d37b336fbaa6269bd943fc0eb88cbe7819f033d31fb035283c18e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:14:42 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 02:23:04 GMT
ENV NODE_VERSION=10.15.3
# Wed, 08 May 2019 02:23:21 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 02:23:22 GMT
ENV YARN_VERSION=1.13.0
# Wed, 08 May 2019 02:23:25 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 02:23:25 GMT
CMD ["node"]
# Wed, 08 May 2019 08:50:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 08:50:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 08 May 2019 08:50:28 GMT
ENV NODE_ENV=production
# Wed, 08 May 2019 08:50:28 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 08 May 2019 08:50:53 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 08 May 2019 08:50:54 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 08 May 2019 08:50:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 08 May 2019 08:50:55 GMT
ENV GHOST_VERSION=2.22.0
# Wed, 08 May 2019 08:52:07 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 08 May 2019 08:52:24 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 08 May 2019 08:52:24 GMT
WORKDIR /var/lib/ghost
# Wed, 08 May 2019 08:52:25 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 08 May 2019 08:52:25 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 08 May 2019 08:52:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 08:52:25 GMT
EXPOSE 2368
# Wed, 08 May 2019 08:52:26 GMT
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
	-	`sha256:eb3f264e66c2e2988737c427e3c3b391f70867d5653e083a84b908b277fe9159`  
		Last Modified: Wed, 08 May 2019 02:29:08 GMT  
		Size: 29.5 MB (29532610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9669fded0b979f158689cc56df73bf7eddbf65a7e12cf2db11fa272e78a735e8`  
		Last Modified: Wed, 08 May 2019 02:29:00 GMT  
		Size: 1.3 MB (1323189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a4aa819962848d61da9ddc250bd1293e5f078eb3d480e4b1cc8d3c0269e64d9`  
		Last Modified: Wed, 08 May 2019 08:54:23 GMT  
		Size: 500.9 KB (500920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561a347ed74f801eb1332cf47a2521b731812f0fb199a607bdd0be085d43da6a`  
		Last Modified: Wed, 08 May 2019 08:54:34 GMT  
		Size: 13.7 MB (13684590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca49b6c0603b6abeab33c46712221cca3854b6a17b0c3ee345bc343ef230aa8`  
		Last Modified: Wed, 08 May 2019 08:55:11 GMT  
		Size: 116.9 MB (116879816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608a0f1de3c6a846a108563d23adcbc7bd5f2ca0402dfac2cb3fa1f927f31d38`  
		Last Modified: Wed, 08 May 2019 08:54:24 GMT  
		Size: 1.4 MB (1392352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11758ea920913b7ea936d94f7f9d9eab8f0b5166978d2143b178cc504d57ee60`  
		Last Modified: Wed, 08 May 2019 08:54:23 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.22.0` - linux; arm variant v7

```console
$ docker pull ghost@sha256:34aafa59c51a97e0435fc2eb6e673c484a98a51da02788563b628c21756b31fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.0 MB (181957185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c99d89173140fb027e3959e2d924b67824cb41cec54469c2e32378940af442f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 15:13:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 15:22:56 GMT
ENV NODE_VERSION=10.15.3
# Wed, 08 May 2019 15:23:26 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 15:23:27 GMT
ENV YARN_VERSION=1.13.0
# Wed, 08 May 2019 15:23:32 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 15:23:33 GMT
CMD ["node"]
# Wed, 08 May 2019 18:23:16 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 18:23:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 08 May 2019 18:23:20 GMT
ENV NODE_ENV=production
# Wed, 08 May 2019 18:23:21 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 08 May 2019 18:23:43 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 08 May 2019 18:23:45 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 08 May 2019 18:23:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 08 May 2019 18:23:46 GMT
ENV GHOST_VERSION=2.22.0
# Wed, 08 May 2019 18:25:00 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 08 May 2019 18:28:14 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 08 May 2019 18:28:15 GMT
WORKDIR /var/lib/ghost
# Wed, 08 May 2019 18:28:15 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 08 May 2019 18:28:16 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 08 May 2019 18:28:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 18:28:16 GMT
EXPOSE 2368
# Wed, 08 May 2019 18:28:17 GMT
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
	-	`sha256:14a6538714345afc45960872235607be1c968f97b76baf55764a6fed799a01c5`  
		Last Modified: Wed, 08 May 2019 15:31:08 GMT  
		Size: 26.7 MB (26657806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffef9dafc42c96f448b06d0a3d595ce9f89cfae22bacb3f584e2941f372177a`  
		Last Modified: Wed, 08 May 2019 15:30:59 GMT  
		Size: 1.3 MB (1323223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f637286048b626849eddb82846ee87f6abf3d73d7d118af28f723444e63c74cb`  
		Last Modified: Wed, 08 May 2019 18:34:18 GMT  
		Size: 475.4 KB (475436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2665970a48d20716c044db7d6b5d4170f4f5bb6c0b25a65e25b31288e003cc`  
		Last Modified: Wed, 08 May 2019 18:34:24 GMT  
		Size: 13.7 MB (13684439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f51178cd050e4d07d7d0edc5262e6e37a99830661c24c0ee5228de790fa2520`  
		Last Modified: Wed, 08 May 2019 18:35:01 GMT  
		Size: 101.1 MB (101136157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faf229346c281d2ab2a326cbff64aa480ba30adae7538c271ae3e65a2225dc84`  
		Last Modified: Wed, 08 May 2019 18:34:24 GMT  
		Size: 19.4 MB (19399192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77dab896f309ae713cef374cbd35e1fd80c4b928817530cae33bccd3cfc03499`  
		Last Modified: Wed, 08 May 2019 18:34:18 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.22.0` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:8f45e009d5f7bdb89d490a3ac348f266a540cbd7415c1cbe8cfdcd967baf141b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.7 MB (184678380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca22b8b3035d934137b7b7d219f086e8d10ae3c37fc08a7d7ae50ea4ebb429ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 15:39:28 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 15:50:16 GMT
ENV NODE_VERSION=10.15.3
# Wed, 08 May 2019 15:51:22 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 15:51:23 GMT
ENV YARN_VERSION=1.13.0
# Wed, 08 May 2019 15:51:30 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 15:51:30 GMT
CMD ["node"]
# Thu, 09 May 2019 05:51:48 GMT
ENV GOSU_VERSION=1.10
# Thu, 09 May 2019 05:51:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 09 May 2019 05:51:57 GMT
ENV NODE_ENV=production
# Thu, 09 May 2019 05:51:58 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 09 May 2019 05:53:09 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 09 May 2019 05:53:12 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 09 May 2019 05:53:13 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 09 May 2019 05:53:14 GMT
ENV GHOST_VERSION=2.22.0
# Thu, 09 May 2019 05:56:29 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 09 May 2019 06:05:03 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 09 May 2019 06:05:05 GMT
WORKDIR /var/lib/ghost
# Thu, 09 May 2019 06:05:06 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 09 May 2019 06:05:07 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 09 May 2019 06:05:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 06:05:11 GMT
EXPOSE 2368
# Thu, 09 May 2019 06:05:12 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e813c27fe177b7315d10633afc967f85ef6c341a2f537b60e47d5711d235c092`  
		Last Modified: Wed, 08 May 2019 15:54:06 GMT  
		Size: 4.2 KB (4153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76eb5888c5ba7d516b4ee58a8d53d03b2d6598ab09cf817328cc10e9870cc1d8`  
		Last Modified: Wed, 08 May 2019 15:58:39 GMT  
		Size: 28.3 MB (28344772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d86246a1ba7d2330982b0ef3b1172b6b0c0f599639e60745803b1227c90309c5`  
		Last Modified: Wed, 08 May 2019 15:58:28 GMT  
		Size: 1.3 MB (1323196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d4423579b40084b1440570923c50216f31bb82a9cfa40253b6901e5badad51`  
		Last Modified: Thu, 09 May 2019 06:20:08 GMT  
		Size: 468.9 KB (468941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ac208d9acec874c520347c8de762a10128e84be2b82e170ce2bb11ff216ff8`  
		Last Modified: Thu, 09 May 2019 06:20:29 GMT  
		Size: 13.7 MB (13686284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8200fd91fbd0c5f4c095692a32add8ccaeec3f63970df6700f5c7cf447862e11`  
		Last Modified: Thu, 09 May 2019 06:21:55 GMT  
		Size: 101.0 MB (100991624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d32619bdba0a4667c49d4d9b0570b7f3e38ca5626950ff4420658c76097007`  
		Last Modified: Thu, 09 May 2019 06:20:32 GMT  
		Size: 19.5 MB (19525038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3b24c733b309cb99f9e0476cb3f890ac8f41a047e104d78a08c976c406eb1e`  
		Last Modified: Thu, 09 May 2019 06:20:07 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.22.0` - linux; ppc64le

```console
$ docker pull ghost@sha256:5eae4d745f9ffd5c1cd830b9509432287ab98bcadca038ea59ac7779735206c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.5 MB (174518081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c289b845717261030a629fa38818fc612cee8aa84417429320dea8f99a67ecc`
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
# Thu, 09 May 2019 00:26:39 GMT
ENV GHOST_VERSION=2.22.0
# Thu, 09 May 2019 00:31:27 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 09 May 2019 00:36:31 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 09 May 2019 00:36:38 GMT
WORKDIR /var/lib/ghost
# Thu, 09 May 2019 00:36:43 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 09 May 2019 00:36:45 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 09 May 2019 00:36:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 00:36:55 GMT
EXPOSE 2368
# Thu, 09 May 2019 00:36:58 GMT
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
	-	`sha256:ba4af4fe4d8a87642e92b90f42496e2088a83043e7c6b7dca161022ec0dec781`  
		Last Modified: Thu, 09 May 2019 00:51:36 GMT  
		Size: 95.0 MB (95012552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be949dcc34677ca01c2fd2761608e544826d5712558d67a7a67cc8b01ae089e`  
		Last Modified: Thu, 09 May 2019 00:50:12 GMT  
		Size: 12.6 MB (12639162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e8a6435e3cb432d40edd4df5086480439dac944d3fd631d5da5711395713ef`  
		Last Modified: Thu, 09 May 2019 00:50:05 GMT  
		Size: 561.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.22.0` - linux; s390x

```console
$ docker pull ghost@sha256:bdaa76f387512278cf4817e967f7c1ab64787737e6bf0a3d2acff9f2e4d9e290
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.7 MB (174719001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:454893a5df0e6203cc84bfaf4fc1c3e653d60ca63097a433b7d7957686458e68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:12:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 14:21:29 GMT
ENV NODE_VERSION=10.15.3
# Wed, 08 May 2019 14:22:38 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 14:22:39 GMT
ENV YARN_VERSION=1.13.0
# Wed, 08 May 2019 14:22:51 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 14:22:52 GMT
CMD ["node"]
# Thu, 09 May 2019 02:55:32 GMT
ENV GOSU_VERSION=1.10
# Thu, 09 May 2019 02:55:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 09 May 2019 02:55:47 GMT
ENV NODE_ENV=production
# Thu, 09 May 2019 02:55:48 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 09 May 2019 02:57:17 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 09 May 2019 02:57:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 09 May 2019 02:57:19 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 09 May 2019 02:57:20 GMT
ENV GHOST_VERSION=2.22.0
# Thu, 09 May 2019 03:00:00 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 09 May 2019 03:03:56 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 09 May 2019 03:03:58 GMT
WORKDIR /var/lib/ghost
# Thu, 09 May 2019 03:03:59 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 09 May 2019 03:04:01 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 09 May 2019 03:04:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 03:04:03 GMT
EXPOSE 2368
# Thu, 09 May 2019 03:04:04 GMT
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
	-	`sha256:6bb421d6805b14178a44cce991f5d56322e81cf5add5e5a6746fd3268ffd5ccc`  
		Last Modified: Wed, 08 May 2019 14:33:29 GMT  
		Size: 29.2 MB (29244575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17e090a431df53f609ab6fa59e34bac1cc099ad84b0590d46d6982782c17258`  
		Last Modified: Wed, 08 May 2019 14:33:16 GMT  
		Size: 1.3 MB (1323202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1a2a841918de5b32570a4d62b7ff98007d9a666c68e2536feef1103e4f4f02`  
		Last Modified: Thu, 09 May 2019 03:14:44 GMT  
		Size: 487.0 KB (487045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c36144c08c322b6f08fe15c6ce0dfd6507712310052fef67ab0848404e9bdc`  
		Last Modified: Thu, 09 May 2019 03:14:52 GMT  
		Size: 13.7 MB (13686364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d248317f7a9261fbea3439a6f7dde5c4f08dc872385e4f978c8f2b010b67e47e`  
		Last Modified: Thu, 09 May 2019 03:15:43 GMT  
		Size: 95.0 MB (95012120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1da76f119023470e5c7b6ddd812faafc121b4de60c4949a068710c6408e9b50`  
		Last Modified: Thu, 09 May 2019 03:14:52 GMT  
		Size: 12.6 MB (12622111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3288b67fd8502daed83f26d486c42363348d37fbc68c975fe64e48cffef381ab`  
		Last Modified: Thu, 09 May 2019 03:14:44 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.22.0-alpine`

```console
$ docker pull ghost@sha256:e80f512e264a1f546075150096810f0d709b71aded20c22cd5a38ff928d60a00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le

### `ghost:2.22.0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:c4f041348fa7c4e7df9df945e326577d3e0ef983f0e2a8226eecd27036b6019f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.6 MB (167608212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a1cae886b3b78cfc40e61e0507178c78358b24dfdaeeace37252d2701824ad1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:00:58 GMT
ENV NODE_VERSION=10.15.3
# Sat, 20 Apr 2019 00:51:37 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 20 Apr 2019 00:51:38 GMT
ENV YARN_VERSION=1.13.0
# Sat, 20 Apr 2019 00:51:40 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 20 Apr 2019 00:51:40 GMT
CMD ["node"]
# Sat, 20 Apr 2019 01:10:03 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 20 Apr 2019 01:10:05 GMT
RUN apk add --no-cache 		bash
# Sat, 20 Apr 2019 01:10:05 GMT
ENV NODE_ENV=production
# Thu, 25 Apr 2019 00:20:49 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 25 Apr 2019 00:21:08 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 25 Apr 2019 00:21:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 25 Apr 2019 00:21:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 07 May 2019 23:20:37 GMT
ENV GHOST_VERSION=2.22.0
# Tue, 07 May 2019 23:21:33 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 07 May 2019 23:21:53 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Tue, 07 May 2019 23:21:53 GMT
WORKDIR /var/lib/ghost
# Tue, 07 May 2019 23:21:53 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 07 May 2019 23:21:54 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Tue, 07 May 2019 23:21:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 23:21:54 GMT
EXPOSE 2368
# Tue, 07 May 2019 23:21:54 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba7d1b491773748ac733092e0b3236c0752bcd87ca13e6c94b307fabd6afa2a`  
		Last Modified: Sat, 20 Apr 2019 00:54:30 GMT  
		Size: 20.1 MB (20059238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17af28038337b5a133f602472ce285b73996171f76657c3ff9310feccaa84f54`  
		Last Modified: Sat, 20 Apr 2019 00:54:27 GMT  
		Size: 1.3 MB (1331863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c397db35b968cc7bd87a51bd9da6460f7047bcaf4a67667142117627e7b60aad`  
		Last Modified: Sat, 20 Apr 2019 01:14:06 GMT  
		Size: 9.7 KB (9681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b16889c1c7b4d829f30af6239e97aabce4ebb39b5f63bf353c45fa84bae9cf`  
		Last Modified: Sat, 20 Apr 2019 01:14:07 GMT  
		Size: 1.2 MB (1176765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f6af6b9be8fb95aeb725bc92419b4808c686c4620a545b1f88ae2155ee162f`  
		Last Modified: Thu, 25 Apr 2019 00:25:50 GMT  
		Size: 13.7 MB (13672680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88ed8ece562262d061162d18cf4412005e55492c8d84e1f3db4bfd0a433d276`  
		Last Modified: Tue, 07 May 2019 23:23:27 GMT  
		Size: 117.8 MB (117783355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b243cdf2c3f5f7337ee9b6736577b081c641491951eb8884ad88b6329b8ab2a`  
		Last Modified: Tue, 07 May 2019 23:23:00 GMT  
		Size: 10.8 MB (10817073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe33fefa9a1cf67bcee59d29c521cf392037451b371cc64d979ad2837dd4796`  
		Last Modified: Tue, 07 May 2019 23:22:57 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.22.0-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:b74bdd771b72e5aa505f909e273128440cdf3a7cb4a6bd892828af6669d2fef3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144981176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9715dc9873c5ddabf0a7e26391345280534048068bda0cf5074958f7026ed587`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:39:21 GMT
ENV NODE_VERSION=10.15.3
# Sat, 20 Apr 2019 08:08:08 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 20 Apr 2019 08:08:09 GMT
ENV YARN_VERSION=1.13.0
# Sat, 20 Apr 2019 08:08:12 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 20 Apr 2019 08:08:13 GMT
CMD ["node"]
# Sat, 20 Apr 2019 08:25:03 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 20 Apr 2019 08:25:06 GMT
RUN apk add --no-cache 		bash
# Sat, 20 Apr 2019 08:25:07 GMT
ENV NODE_ENV=production
# Thu, 25 Apr 2019 07:49:20 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 25 Apr 2019 07:49:48 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 25 Apr 2019 07:49:50 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 25 Apr 2019 07:49:50 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 08 May 2019 07:49:27 GMT
ENV GHOST_VERSION=2.22.0
# Wed, 08 May 2019 07:50:58 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 08 May 2019 07:54:29 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 08 May 2019 07:54:30 GMT
WORKDIR /var/lib/ghost
# Wed, 08 May 2019 07:54:30 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 08 May 2019 07:54:31 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 08 May 2019 07:54:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 07:54:32 GMT
EXPOSE 2368
# Wed, 08 May 2019 07:54:32 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82bf39393e0518f18adcadd9e035ee071601aea13c8564b8708901fe5014f967`  
		Last Modified: Sat, 20 Apr 2019 08:09:37 GMT  
		Size: 19.2 MB (19226493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae877376f59c66417707bc16b5a3f5e0efa88ae8388b2356bf8e3447081a101f`  
		Last Modified: Sat, 20 Apr 2019 08:09:29 GMT  
		Size: 1.3 MB (1331929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5240cd21064ea2a628240164861f777e9897b5a6aa3abc64d5340aee86aa5d`  
		Last Modified: Sat, 20 Apr 2019 08:36:45 GMT  
		Size: 9.5 KB (9479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8203b07653ff52764b4e55f4fd78761fba64755ff09fff22bed2873ec8194b8`  
		Last Modified: Sat, 20 Apr 2019 08:36:44 GMT  
		Size: 1.1 MB (1121976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a987dba05b4304e70ff397b386cc6e25c153b096b950b17f361eab0a8747e58`  
		Last Modified: Thu, 25 Apr 2019 08:01:39 GMT  
		Size: 13.7 MB (13673620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4bcecda873879519860b12f7b3e814d6f36b51c939f52f11df0cf8ca2b7edf`  
		Last Modified: Wed, 08 May 2019 07:55:37 GMT  
		Size: 95.0 MB (94977341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f80fede14c420424be7b673b44fc4f9d8f86d7bc49b644d48361ba8e1890a8`  
		Last Modified: Wed, 08 May 2019 07:54:59 GMT  
		Size: 12.1 MB (12096352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c8cc1d150c2fdc73d97678f4ca06540ef34c54c2bbb594aa736663a21383ea8`  
		Last Modified: Wed, 08 May 2019 07:54:55 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.22.0-alpine` - linux; 386

```console
$ docker pull ghost@sha256:600b70a03f87f7c2c2c6c303a395198526ba3204b9f3e0e07cad5125c12ded33
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.5 MB (146501362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b10d719ed6a74a5d234e42b6a41407d0db950ee4edd4efc3b42590178efcab0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:35:48 GMT
ENV NODE_VERSION=10.15.3
# Sat, 20 Apr 2019 12:09:00 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 20 Apr 2019 12:09:00 GMT
ENV YARN_VERSION=1.13.0
# Sat, 20 Apr 2019 12:09:03 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 20 Apr 2019 12:09:03 GMT
CMD ["node"]
# Sat, 20 Apr 2019 12:39:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 20 Apr 2019 12:39:47 GMT
RUN apk add --no-cache 		bash
# Sat, 20 Apr 2019 12:39:47 GMT
ENV NODE_ENV=production
# Thu, 25 Apr 2019 10:40:19 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 25 Apr 2019 10:41:03 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 25 Apr 2019 10:41:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 25 Apr 2019 10:41:04 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 08 May 2019 13:28:34 GMT
ENV GHOST_VERSION=2.22.0
# Wed, 08 May 2019 13:29:33 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 08 May 2019 13:32:27 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 08 May 2019 13:32:27 GMT
WORKDIR /var/lib/ghost
# Wed, 08 May 2019 13:32:28 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 08 May 2019 13:32:28 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 08 May 2019 13:32:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 13:32:28 GMT
EXPOSE 2368
# Wed, 08 May 2019 13:32:29 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c837b2859f1f23f688abd8522b4a0a437c49f0fbcdcf59f4a82ea4a88763fe18`  
		Last Modified: Sat, 20 Apr 2019 12:11:27 GMT  
		Size: 20.2 MB (20194964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd302fd4e194b18e771c291375f6d8356b7e3e421cd7e3463c74e006f974df24`  
		Last Modified: Sat, 20 Apr 2019 12:11:20 GMT  
		Size: 1.3 MB (1331903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67fed87bc5ae2a1601fdb74710352dddfe893e905700ddfae02b274fde97b516`  
		Last Modified: Sat, 20 Apr 2019 12:46:12 GMT  
		Size: 9.8 KB (9750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ffa78f164ea81226a0bbe2adf468e011ed7867361b8ab9baacf9769f0d5d54`  
		Last Modified: Sat, 20 Apr 2019 12:46:11 GMT  
		Size: 1.2 MB (1223743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae36c107d0d7c4a2ded1edbaa9a90e341a55268a210e9f0c225077ee89e657c`  
		Last Modified: Thu, 25 Apr 2019 10:47:12 GMT  
		Size: 13.7 MB (13675790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191f8a1faa3bd76878626353eb68c40707a6654f43589abb466fc8b6982c9716`  
		Last Modified: Wed, 08 May 2019 13:33:43 GMT  
		Size: 95.0 MB (94975833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fdef6912fdd04ed969b3f1992c7bd9f47a961ae30e7a6753626776d27d723e`  
		Last Modified: Wed, 08 May 2019 13:33:00 GMT  
		Size: 12.3 MB (12336671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae5d13dbc30d6759fc5830e985b1f38d51db575eae2c17e73fc7bc024c54c54`  
		Last Modified: Wed, 08 May 2019 13:32:54 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.22.0-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:7581ad9b0624ff8663dcedeb994a120f8f178ab56af9f0b35109f29be1560750
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.0 MB (148964498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a732889ad326e639ca640d3b265dd2ff28c116693a0c4c78d93fc74780e790d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:04:04 GMT
ENV NODE_VERSION=10.15.3
# Sat, 20 Apr 2019 09:13:37 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 20 Apr 2019 09:13:52 GMT
ENV YARN_VERSION=1.13.0
# Sat, 20 Apr 2019 09:14:17 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 20 Apr 2019 09:14:22 GMT
CMD ["node"]
# Sat, 20 Apr 2019 09:37:53 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 20 Apr 2019 09:38:07 GMT
RUN apk add --no-cache 		bash
# Sat, 20 Apr 2019 09:38:23 GMT
ENV NODE_ENV=production
# Thu, 25 Apr 2019 08:34:29 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 25 Apr 2019 08:35:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 25 Apr 2019 08:35:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 25 Apr 2019 08:35:12 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 08 May 2019 09:31:39 GMT
ENV GHOST_VERSION=2.22.0
# Wed, 08 May 2019 09:36:00 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 08 May 2019 09:38:56 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 08 May 2019 09:39:00 GMT
WORKDIR /var/lib/ghost
# Wed, 08 May 2019 09:39:04 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 08 May 2019 09:39:06 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 08 May 2019 09:39:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 09:39:13 GMT
EXPOSE 2368
# Wed, 08 May 2019 09:39:15 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f8d882623b0c6c6d167c629ce8b38976c6270bc5c401a74c82203d58bde189`  
		Last Modified: Sat, 20 Apr 2019 09:21:12 GMT  
		Size: 21.7 MB (21671372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714dc2a350ffa3d932aa7b5ba2bd13598573f50a3520cc192fd67e406197c0b5`  
		Last Modified: Sat, 20 Apr 2019 09:21:05 GMT  
		Size: 1.3 MB (1332024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752ab9b1e57765d03626dcf77c675243139a1b776fe5fd2ffa80e98f02d50313`  
		Last Modified: Sat, 20 Apr 2019 10:04:15 GMT  
		Size: 10.2 KB (10236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5023de91c8d4367b59ea47f9fa9f48acd14b98299a42a92dc50ab116bf2bc799`  
		Last Modified: Sat, 20 Apr 2019 10:04:19 GMT  
		Size: 1.3 MB (1257931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50eccef37619ebcd3e21d79b9bfee586e1d39d51874e671aca5836838e53c8c7`  
		Last Modified: Thu, 25 Apr 2019 09:12:33 GMT  
		Size: 13.7 MB (13672202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d902b98c8fa3817a78288494dd32796a04c27c96fffeb64c3dfd23d93c468e3`  
		Last Modified: Wed, 08 May 2019 09:45:35 GMT  
		Size: 95.0 MB (95011965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0707ed432938c201b3bd85e379bb61a18b3c75bb2c31de7a8d955f202b9cb1`  
		Last Modified: Wed, 08 May 2019 09:42:54 GMT  
		Size: 13.2 MB (13227201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c245d5e603400d2e41ca3153c08d15ab3b90e691e8a4d294690e53960b3994a1`  
		Last Modified: Wed, 08 May 2019 09:42:46 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.22-alpine`

```console
$ docker pull ghost@sha256:e80f512e264a1f546075150096810f0d709b71aded20c22cd5a38ff928d60a00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le

### `ghost:2.22-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:c4f041348fa7c4e7df9df945e326577d3e0ef983f0e2a8226eecd27036b6019f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.6 MB (167608212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a1cae886b3b78cfc40e61e0507178c78358b24dfdaeeace37252d2701824ad1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:00:58 GMT
ENV NODE_VERSION=10.15.3
# Sat, 20 Apr 2019 00:51:37 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 20 Apr 2019 00:51:38 GMT
ENV YARN_VERSION=1.13.0
# Sat, 20 Apr 2019 00:51:40 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 20 Apr 2019 00:51:40 GMT
CMD ["node"]
# Sat, 20 Apr 2019 01:10:03 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 20 Apr 2019 01:10:05 GMT
RUN apk add --no-cache 		bash
# Sat, 20 Apr 2019 01:10:05 GMT
ENV NODE_ENV=production
# Thu, 25 Apr 2019 00:20:49 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 25 Apr 2019 00:21:08 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 25 Apr 2019 00:21:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 25 Apr 2019 00:21:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 07 May 2019 23:20:37 GMT
ENV GHOST_VERSION=2.22.0
# Tue, 07 May 2019 23:21:33 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 07 May 2019 23:21:53 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Tue, 07 May 2019 23:21:53 GMT
WORKDIR /var/lib/ghost
# Tue, 07 May 2019 23:21:53 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 07 May 2019 23:21:54 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Tue, 07 May 2019 23:21:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 23:21:54 GMT
EXPOSE 2368
# Tue, 07 May 2019 23:21:54 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba7d1b491773748ac733092e0b3236c0752bcd87ca13e6c94b307fabd6afa2a`  
		Last Modified: Sat, 20 Apr 2019 00:54:30 GMT  
		Size: 20.1 MB (20059238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17af28038337b5a133f602472ce285b73996171f76657c3ff9310feccaa84f54`  
		Last Modified: Sat, 20 Apr 2019 00:54:27 GMT  
		Size: 1.3 MB (1331863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c397db35b968cc7bd87a51bd9da6460f7047bcaf4a67667142117627e7b60aad`  
		Last Modified: Sat, 20 Apr 2019 01:14:06 GMT  
		Size: 9.7 KB (9681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b16889c1c7b4d829f30af6239e97aabce4ebb39b5f63bf353c45fa84bae9cf`  
		Last Modified: Sat, 20 Apr 2019 01:14:07 GMT  
		Size: 1.2 MB (1176765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f6af6b9be8fb95aeb725bc92419b4808c686c4620a545b1f88ae2155ee162f`  
		Last Modified: Thu, 25 Apr 2019 00:25:50 GMT  
		Size: 13.7 MB (13672680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88ed8ece562262d061162d18cf4412005e55492c8d84e1f3db4bfd0a433d276`  
		Last Modified: Tue, 07 May 2019 23:23:27 GMT  
		Size: 117.8 MB (117783355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b243cdf2c3f5f7337ee9b6736577b081c641491951eb8884ad88b6329b8ab2a`  
		Last Modified: Tue, 07 May 2019 23:23:00 GMT  
		Size: 10.8 MB (10817073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe33fefa9a1cf67bcee59d29c521cf392037451b371cc64d979ad2837dd4796`  
		Last Modified: Tue, 07 May 2019 23:22:57 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.22-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:b74bdd771b72e5aa505f909e273128440cdf3a7cb4a6bd892828af6669d2fef3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144981176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9715dc9873c5ddabf0a7e26391345280534048068bda0cf5074958f7026ed587`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:39:21 GMT
ENV NODE_VERSION=10.15.3
# Sat, 20 Apr 2019 08:08:08 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 20 Apr 2019 08:08:09 GMT
ENV YARN_VERSION=1.13.0
# Sat, 20 Apr 2019 08:08:12 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 20 Apr 2019 08:08:13 GMT
CMD ["node"]
# Sat, 20 Apr 2019 08:25:03 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 20 Apr 2019 08:25:06 GMT
RUN apk add --no-cache 		bash
# Sat, 20 Apr 2019 08:25:07 GMT
ENV NODE_ENV=production
# Thu, 25 Apr 2019 07:49:20 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 25 Apr 2019 07:49:48 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 25 Apr 2019 07:49:50 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 25 Apr 2019 07:49:50 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 08 May 2019 07:49:27 GMT
ENV GHOST_VERSION=2.22.0
# Wed, 08 May 2019 07:50:58 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 08 May 2019 07:54:29 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 08 May 2019 07:54:30 GMT
WORKDIR /var/lib/ghost
# Wed, 08 May 2019 07:54:30 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 08 May 2019 07:54:31 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 08 May 2019 07:54:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 07:54:32 GMT
EXPOSE 2368
# Wed, 08 May 2019 07:54:32 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82bf39393e0518f18adcadd9e035ee071601aea13c8564b8708901fe5014f967`  
		Last Modified: Sat, 20 Apr 2019 08:09:37 GMT  
		Size: 19.2 MB (19226493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae877376f59c66417707bc16b5a3f5e0efa88ae8388b2356bf8e3447081a101f`  
		Last Modified: Sat, 20 Apr 2019 08:09:29 GMT  
		Size: 1.3 MB (1331929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5240cd21064ea2a628240164861f777e9897b5a6aa3abc64d5340aee86aa5d`  
		Last Modified: Sat, 20 Apr 2019 08:36:45 GMT  
		Size: 9.5 KB (9479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8203b07653ff52764b4e55f4fd78761fba64755ff09fff22bed2873ec8194b8`  
		Last Modified: Sat, 20 Apr 2019 08:36:44 GMT  
		Size: 1.1 MB (1121976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a987dba05b4304e70ff397b386cc6e25c153b096b950b17f361eab0a8747e58`  
		Last Modified: Thu, 25 Apr 2019 08:01:39 GMT  
		Size: 13.7 MB (13673620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4bcecda873879519860b12f7b3e814d6f36b51c939f52f11df0cf8ca2b7edf`  
		Last Modified: Wed, 08 May 2019 07:55:37 GMT  
		Size: 95.0 MB (94977341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f80fede14c420424be7b673b44fc4f9d8f86d7bc49b644d48361ba8e1890a8`  
		Last Modified: Wed, 08 May 2019 07:54:59 GMT  
		Size: 12.1 MB (12096352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c8cc1d150c2fdc73d97678f4ca06540ef34c54c2bbb594aa736663a21383ea8`  
		Last Modified: Wed, 08 May 2019 07:54:55 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.22-alpine` - linux; 386

```console
$ docker pull ghost@sha256:600b70a03f87f7c2c2c6c303a395198526ba3204b9f3e0e07cad5125c12ded33
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.5 MB (146501362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b10d719ed6a74a5d234e42b6a41407d0db950ee4edd4efc3b42590178efcab0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:35:48 GMT
ENV NODE_VERSION=10.15.3
# Sat, 20 Apr 2019 12:09:00 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 20 Apr 2019 12:09:00 GMT
ENV YARN_VERSION=1.13.0
# Sat, 20 Apr 2019 12:09:03 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 20 Apr 2019 12:09:03 GMT
CMD ["node"]
# Sat, 20 Apr 2019 12:39:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 20 Apr 2019 12:39:47 GMT
RUN apk add --no-cache 		bash
# Sat, 20 Apr 2019 12:39:47 GMT
ENV NODE_ENV=production
# Thu, 25 Apr 2019 10:40:19 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 25 Apr 2019 10:41:03 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 25 Apr 2019 10:41:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 25 Apr 2019 10:41:04 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 08 May 2019 13:28:34 GMT
ENV GHOST_VERSION=2.22.0
# Wed, 08 May 2019 13:29:33 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 08 May 2019 13:32:27 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 08 May 2019 13:32:27 GMT
WORKDIR /var/lib/ghost
# Wed, 08 May 2019 13:32:28 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 08 May 2019 13:32:28 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 08 May 2019 13:32:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 13:32:28 GMT
EXPOSE 2368
# Wed, 08 May 2019 13:32:29 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c837b2859f1f23f688abd8522b4a0a437c49f0fbcdcf59f4a82ea4a88763fe18`  
		Last Modified: Sat, 20 Apr 2019 12:11:27 GMT  
		Size: 20.2 MB (20194964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd302fd4e194b18e771c291375f6d8356b7e3e421cd7e3463c74e006f974df24`  
		Last Modified: Sat, 20 Apr 2019 12:11:20 GMT  
		Size: 1.3 MB (1331903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67fed87bc5ae2a1601fdb74710352dddfe893e905700ddfae02b274fde97b516`  
		Last Modified: Sat, 20 Apr 2019 12:46:12 GMT  
		Size: 9.8 KB (9750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ffa78f164ea81226a0bbe2adf468e011ed7867361b8ab9baacf9769f0d5d54`  
		Last Modified: Sat, 20 Apr 2019 12:46:11 GMT  
		Size: 1.2 MB (1223743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae36c107d0d7c4a2ded1edbaa9a90e341a55268a210e9f0c225077ee89e657c`  
		Last Modified: Thu, 25 Apr 2019 10:47:12 GMT  
		Size: 13.7 MB (13675790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191f8a1faa3bd76878626353eb68c40707a6654f43589abb466fc8b6982c9716`  
		Last Modified: Wed, 08 May 2019 13:33:43 GMT  
		Size: 95.0 MB (94975833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fdef6912fdd04ed969b3f1992c7bd9f47a961ae30e7a6753626776d27d723e`  
		Last Modified: Wed, 08 May 2019 13:33:00 GMT  
		Size: 12.3 MB (12336671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae5d13dbc30d6759fc5830e985b1f38d51db575eae2c17e73fc7bc024c54c54`  
		Last Modified: Wed, 08 May 2019 13:32:54 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.22-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:7581ad9b0624ff8663dcedeb994a120f8f178ab56af9f0b35109f29be1560750
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.0 MB (148964498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a732889ad326e639ca640d3b265dd2ff28c116693a0c4c78d93fc74780e790d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:04:04 GMT
ENV NODE_VERSION=10.15.3
# Sat, 20 Apr 2019 09:13:37 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 20 Apr 2019 09:13:52 GMT
ENV YARN_VERSION=1.13.0
# Sat, 20 Apr 2019 09:14:17 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 20 Apr 2019 09:14:22 GMT
CMD ["node"]
# Sat, 20 Apr 2019 09:37:53 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 20 Apr 2019 09:38:07 GMT
RUN apk add --no-cache 		bash
# Sat, 20 Apr 2019 09:38:23 GMT
ENV NODE_ENV=production
# Thu, 25 Apr 2019 08:34:29 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 25 Apr 2019 08:35:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 25 Apr 2019 08:35:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 25 Apr 2019 08:35:12 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 08 May 2019 09:31:39 GMT
ENV GHOST_VERSION=2.22.0
# Wed, 08 May 2019 09:36:00 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 08 May 2019 09:38:56 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 08 May 2019 09:39:00 GMT
WORKDIR /var/lib/ghost
# Wed, 08 May 2019 09:39:04 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 08 May 2019 09:39:06 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 08 May 2019 09:39:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 09:39:13 GMT
EXPOSE 2368
# Wed, 08 May 2019 09:39:15 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f8d882623b0c6c6d167c629ce8b38976c6270bc5c401a74c82203d58bde189`  
		Last Modified: Sat, 20 Apr 2019 09:21:12 GMT  
		Size: 21.7 MB (21671372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714dc2a350ffa3d932aa7b5ba2bd13598573f50a3520cc192fd67e406197c0b5`  
		Last Modified: Sat, 20 Apr 2019 09:21:05 GMT  
		Size: 1.3 MB (1332024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752ab9b1e57765d03626dcf77c675243139a1b776fe5fd2ffa80e98f02d50313`  
		Last Modified: Sat, 20 Apr 2019 10:04:15 GMT  
		Size: 10.2 KB (10236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5023de91c8d4367b59ea47f9fa9f48acd14b98299a42a92dc50ab116bf2bc799`  
		Last Modified: Sat, 20 Apr 2019 10:04:19 GMT  
		Size: 1.3 MB (1257931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50eccef37619ebcd3e21d79b9bfee586e1d39d51874e671aca5836838e53c8c7`  
		Last Modified: Thu, 25 Apr 2019 09:12:33 GMT  
		Size: 13.7 MB (13672202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d902b98c8fa3817a78288494dd32796a04c27c96fffeb64c3dfd23d93c468e3`  
		Last Modified: Wed, 08 May 2019 09:45:35 GMT  
		Size: 95.0 MB (95011965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0707ed432938c201b3bd85e379bb61a18b3c75bb2c31de7a8d955f202b9cb1`  
		Last Modified: Wed, 08 May 2019 09:42:54 GMT  
		Size: 13.2 MB (13227201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c245d5e603400d2e41ca3153c08d15ab3b90e691e8a4d294690e53960b3994a1`  
		Last Modified: Wed, 08 May 2019 09:42:46 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2-alpine`

```console
$ docker pull ghost@sha256:e80f512e264a1f546075150096810f0d709b71aded20c22cd5a38ff928d60a00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le

### `ghost:2-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:c4f041348fa7c4e7df9df945e326577d3e0ef983f0e2a8226eecd27036b6019f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.6 MB (167608212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a1cae886b3b78cfc40e61e0507178c78358b24dfdaeeace37252d2701824ad1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:00:58 GMT
ENV NODE_VERSION=10.15.3
# Sat, 20 Apr 2019 00:51:37 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 20 Apr 2019 00:51:38 GMT
ENV YARN_VERSION=1.13.0
# Sat, 20 Apr 2019 00:51:40 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 20 Apr 2019 00:51:40 GMT
CMD ["node"]
# Sat, 20 Apr 2019 01:10:03 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 20 Apr 2019 01:10:05 GMT
RUN apk add --no-cache 		bash
# Sat, 20 Apr 2019 01:10:05 GMT
ENV NODE_ENV=production
# Thu, 25 Apr 2019 00:20:49 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 25 Apr 2019 00:21:08 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 25 Apr 2019 00:21:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 25 Apr 2019 00:21:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 07 May 2019 23:20:37 GMT
ENV GHOST_VERSION=2.22.0
# Tue, 07 May 2019 23:21:33 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 07 May 2019 23:21:53 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Tue, 07 May 2019 23:21:53 GMT
WORKDIR /var/lib/ghost
# Tue, 07 May 2019 23:21:53 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 07 May 2019 23:21:54 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Tue, 07 May 2019 23:21:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 23:21:54 GMT
EXPOSE 2368
# Tue, 07 May 2019 23:21:54 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba7d1b491773748ac733092e0b3236c0752bcd87ca13e6c94b307fabd6afa2a`  
		Last Modified: Sat, 20 Apr 2019 00:54:30 GMT  
		Size: 20.1 MB (20059238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17af28038337b5a133f602472ce285b73996171f76657c3ff9310feccaa84f54`  
		Last Modified: Sat, 20 Apr 2019 00:54:27 GMT  
		Size: 1.3 MB (1331863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c397db35b968cc7bd87a51bd9da6460f7047bcaf4a67667142117627e7b60aad`  
		Last Modified: Sat, 20 Apr 2019 01:14:06 GMT  
		Size: 9.7 KB (9681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b16889c1c7b4d829f30af6239e97aabce4ebb39b5f63bf353c45fa84bae9cf`  
		Last Modified: Sat, 20 Apr 2019 01:14:07 GMT  
		Size: 1.2 MB (1176765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f6af6b9be8fb95aeb725bc92419b4808c686c4620a545b1f88ae2155ee162f`  
		Last Modified: Thu, 25 Apr 2019 00:25:50 GMT  
		Size: 13.7 MB (13672680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88ed8ece562262d061162d18cf4412005e55492c8d84e1f3db4bfd0a433d276`  
		Last Modified: Tue, 07 May 2019 23:23:27 GMT  
		Size: 117.8 MB (117783355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b243cdf2c3f5f7337ee9b6736577b081c641491951eb8884ad88b6329b8ab2a`  
		Last Modified: Tue, 07 May 2019 23:23:00 GMT  
		Size: 10.8 MB (10817073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe33fefa9a1cf67bcee59d29c521cf392037451b371cc64d979ad2837dd4796`  
		Last Modified: Tue, 07 May 2019 23:22:57 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:b74bdd771b72e5aa505f909e273128440cdf3a7cb4a6bd892828af6669d2fef3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144981176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9715dc9873c5ddabf0a7e26391345280534048068bda0cf5074958f7026ed587`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:39:21 GMT
ENV NODE_VERSION=10.15.3
# Sat, 20 Apr 2019 08:08:08 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 20 Apr 2019 08:08:09 GMT
ENV YARN_VERSION=1.13.0
# Sat, 20 Apr 2019 08:08:12 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 20 Apr 2019 08:08:13 GMT
CMD ["node"]
# Sat, 20 Apr 2019 08:25:03 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 20 Apr 2019 08:25:06 GMT
RUN apk add --no-cache 		bash
# Sat, 20 Apr 2019 08:25:07 GMT
ENV NODE_ENV=production
# Thu, 25 Apr 2019 07:49:20 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 25 Apr 2019 07:49:48 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 25 Apr 2019 07:49:50 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 25 Apr 2019 07:49:50 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 08 May 2019 07:49:27 GMT
ENV GHOST_VERSION=2.22.0
# Wed, 08 May 2019 07:50:58 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 08 May 2019 07:54:29 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 08 May 2019 07:54:30 GMT
WORKDIR /var/lib/ghost
# Wed, 08 May 2019 07:54:30 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 08 May 2019 07:54:31 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 08 May 2019 07:54:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 07:54:32 GMT
EXPOSE 2368
# Wed, 08 May 2019 07:54:32 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82bf39393e0518f18adcadd9e035ee071601aea13c8564b8708901fe5014f967`  
		Last Modified: Sat, 20 Apr 2019 08:09:37 GMT  
		Size: 19.2 MB (19226493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae877376f59c66417707bc16b5a3f5e0efa88ae8388b2356bf8e3447081a101f`  
		Last Modified: Sat, 20 Apr 2019 08:09:29 GMT  
		Size: 1.3 MB (1331929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5240cd21064ea2a628240164861f777e9897b5a6aa3abc64d5340aee86aa5d`  
		Last Modified: Sat, 20 Apr 2019 08:36:45 GMT  
		Size: 9.5 KB (9479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8203b07653ff52764b4e55f4fd78761fba64755ff09fff22bed2873ec8194b8`  
		Last Modified: Sat, 20 Apr 2019 08:36:44 GMT  
		Size: 1.1 MB (1121976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a987dba05b4304e70ff397b386cc6e25c153b096b950b17f361eab0a8747e58`  
		Last Modified: Thu, 25 Apr 2019 08:01:39 GMT  
		Size: 13.7 MB (13673620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4bcecda873879519860b12f7b3e814d6f36b51c939f52f11df0cf8ca2b7edf`  
		Last Modified: Wed, 08 May 2019 07:55:37 GMT  
		Size: 95.0 MB (94977341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f80fede14c420424be7b673b44fc4f9d8f86d7bc49b644d48361ba8e1890a8`  
		Last Modified: Wed, 08 May 2019 07:54:59 GMT  
		Size: 12.1 MB (12096352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c8cc1d150c2fdc73d97678f4ca06540ef34c54c2bbb594aa736663a21383ea8`  
		Last Modified: Wed, 08 May 2019 07:54:55 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; 386

```console
$ docker pull ghost@sha256:600b70a03f87f7c2c2c6c303a395198526ba3204b9f3e0e07cad5125c12ded33
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.5 MB (146501362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b10d719ed6a74a5d234e42b6a41407d0db950ee4edd4efc3b42590178efcab0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:35:48 GMT
ENV NODE_VERSION=10.15.3
# Sat, 20 Apr 2019 12:09:00 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 20 Apr 2019 12:09:00 GMT
ENV YARN_VERSION=1.13.0
# Sat, 20 Apr 2019 12:09:03 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 20 Apr 2019 12:09:03 GMT
CMD ["node"]
# Sat, 20 Apr 2019 12:39:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 20 Apr 2019 12:39:47 GMT
RUN apk add --no-cache 		bash
# Sat, 20 Apr 2019 12:39:47 GMT
ENV NODE_ENV=production
# Thu, 25 Apr 2019 10:40:19 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 25 Apr 2019 10:41:03 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 25 Apr 2019 10:41:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 25 Apr 2019 10:41:04 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 08 May 2019 13:28:34 GMT
ENV GHOST_VERSION=2.22.0
# Wed, 08 May 2019 13:29:33 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 08 May 2019 13:32:27 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 08 May 2019 13:32:27 GMT
WORKDIR /var/lib/ghost
# Wed, 08 May 2019 13:32:28 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 08 May 2019 13:32:28 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 08 May 2019 13:32:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 13:32:28 GMT
EXPOSE 2368
# Wed, 08 May 2019 13:32:29 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c837b2859f1f23f688abd8522b4a0a437c49f0fbcdcf59f4a82ea4a88763fe18`  
		Last Modified: Sat, 20 Apr 2019 12:11:27 GMT  
		Size: 20.2 MB (20194964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd302fd4e194b18e771c291375f6d8356b7e3e421cd7e3463c74e006f974df24`  
		Last Modified: Sat, 20 Apr 2019 12:11:20 GMT  
		Size: 1.3 MB (1331903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67fed87bc5ae2a1601fdb74710352dddfe893e905700ddfae02b274fde97b516`  
		Last Modified: Sat, 20 Apr 2019 12:46:12 GMT  
		Size: 9.8 KB (9750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ffa78f164ea81226a0bbe2adf468e011ed7867361b8ab9baacf9769f0d5d54`  
		Last Modified: Sat, 20 Apr 2019 12:46:11 GMT  
		Size: 1.2 MB (1223743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae36c107d0d7c4a2ded1edbaa9a90e341a55268a210e9f0c225077ee89e657c`  
		Last Modified: Thu, 25 Apr 2019 10:47:12 GMT  
		Size: 13.7 MB (13675790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191f8a1faa3bd76878626353eb68c40707a6654f43589abb466fc8b6982c9716`  
		Last Modified: Wed, 08 May 2019 13:33:43 GMT  
		Size: 95.0 MB (94975833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fdef6912fdd04ed969b3f1992c7bd9f47a961ae30e7a6753626776d27d723e`  
		Last Modified: Wed, 08 May 2019 13:33:00 GMT  
		Size: 12.3 MB (12336671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae5d13dbc30d6759fc5830e985b1f38d51db575eae2c17e73fc7bc024c54c54`  
		Last Modified: Wed, 08 May 2019 13:32:54 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:7581ad9b0624ff8663dcedeb994a120f8f178ab56af9f0b35109f29be1560750
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.0 MB (148964498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a732889ad326e639ca640d3b265dd2ff28c116693a0c4c78d93fc74780e790d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:04:04 GMT
ENV NODE_VERSION=10.15.3
# Sat, 20 Apr 2019 09:13:37 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 20 Apr 2019 09:13:52 GMT
ENV YARN_VERSION=1.13.0
# Sat, 20 Apr 2019 09:14:17 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 20 Apr 2019 09:14:22 GMT
CMD ["node"]
# Sat, 20 Apr 2019 09:37:53 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 20 Apr 2019 09:38:07 GMT
RUN apk add --no-cache 		bash
# Sat, 20 Apr 2019 09:38:23 GMT
ENV NODE_ENV=production
# Thu, 25 Apr 2019 08:34:29 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 25 Apr 2019 08:35:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 25 Apr 2019 08:35:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 25 Apr 2019 08:35:12 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 08 May 2019 09:31:39 GMT
ENV GHOST_VERSION=2.22.0
# Wed, 08 May 2019 09:36:00 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 08 May 2019 09:38:56 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 08 May 2019 09:39:00 GMT
WORKDIR /var/lib/ghost
# Wed, 08 May 2019 09:39:04 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 08 May 2019 09:39:06 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 08 May 2019 09:39:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 09:39:13 GMT
EXPOSE 2368
# Wed, 08 May 2019 09:39:15 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f8d882623b0c6c6d167c629ce8b38976c6270bc5c401a74c82203d58bde189`  
		Last Modified: Sat, 20 Apr 2019 09:21:12 GMT  
		Size: 21.7 MB (21671372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714dc2a350ffa3d932aa7b5ba2bd13598573f50a3520cc192fd67e406197c0b5`  
		Last Modified: Sat, 20 Apr 2019 09:21:05 GMT  
		Size: 1.3 MB (1332024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752ab9b1e57765d03626dcf77c675243139a1b776fe5fd2ffa80e98f02d50313`  
		Last Modified: Sat, 20 Apr 2019 10:04:15 GMT  
		Size: 10.2 KB (10236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5023de91c8d4367b59ea47f9fa9f48acd14b98299a42a92dc50ab116bf2bc799`  
		Last Modified: Sat, 20 Apr 2019 10:04:19 GMT  
		Size: 1.3 MB (1257931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50eccef37619ebcd3e21d79b9bfee586e1d39d51874e671aca5836838e53c8c7`  
		Last Modified: Thu, 25 Apr 2019 09:12:33 GMT  
		Size: 13.7 MB (13672202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d902b98c8fa3817a78288494dd32796a04c27c96fffeb64c3dfd23d93c468e3`  
		Last Modified: Wed, 08 May 2019 09:45:35 GMT  
		Size: 95.0 MB (95011965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0707ed432938c201b3bd85e379bb61a18b3c75bb2c31de7a8d955f202b9cb1`  
		Last Modified: Wed, 08 May 2019 09:42:54 GMT  
		Size: 13.2 MB (13227201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c245d5e603400d2e41ca3153c08d15ab3b90e691e8a4d294690e53960b3994a1`  
		Last Modified: Wed, 08 May 2019 09:42:46 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:e80f512e264a1f546075150096810f0d709b71aded20c22cd5a38ff928d60a00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:c4f041348fa7c4e7df9df945e326577d3e0ef983f0e2a8226eecd27036b6019f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.6 MB (167608212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a1cae886b3b78cfc40e61e0507178c78358b24dfdaeeace37252d2701824ad1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:00:58 GMT
ENV NODE_VERSION=10.15.3
# Sat, 20 Apr 2019 00:51:37 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 20 Apr 2019 00:51:38 GMT
ENV YARN_VERSION=1.13.0
# Sat, 20 Apr 2019 00:51:40 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 20 Apr 2019 00:51:40 GMT
CMD ["node"]
# Sat, 20 Apr 2019 01:10:03 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 20 Apr 2019 01:10:05 GMT
RUN apk add --no-cache 		bash
# Sat, 20 Apr 2019 01:10:05 GMT
ENV NODE_ENV=production
# Thu, 25 Apr 2019 00:20:49 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 25 Apr 2019 00:21:08 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 25 Apr 2019 00:21:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 25 Apr 2019 00:21:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 07 May 2019 23:20:37 GMT
ENV GHOST_VERSION=2.22.0
# Tue, 07 May 2019 23:21:33 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 07 May 2019 23:21:53 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Tue, 07 May 2019 23:21:53 GMT
WORKDIR /var/lib/ghost
# Tue, 07 May 2019 23:21:53 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 07 May 2019 23:21:54 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Tue, 07 May 2019 23:21:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 23:21:54 GMT
EXPOSE 2368
# Tue, 07 May 2019 23:21:54 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba7d1b491773748ac733092e0b3236c0752bcd87ca13e6c94b307fabd6afa2a`  
		Last Modified: Sat, 20 Apr 2019 00:54:30 GMT  
		Size: 20.1 MB (20059238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17af28038337b5a133f602472ce285b73996171f76657c3ff9310feccaa84f54`  
		Last Modified: Sat, 20 Apr 2019 00:54:27 GMT  
		Size: 1.3 MB (1331863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c397db35b968cc7bd87a51bd9da6460f7047bcaf4a67667142117627e7b60aad`  
		Last Modified: Sat, 20 Apr 2019 01:14:06 GMT  
		Size: 9.7 KB (9681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b16889c1c7b4d829f30af6239e97aabce4ebb39b5f63bf353c45fa84bae9cf`  
		Last Modified: Sat, 20 Apr 2019 01:14:07 GMT  
		Size: 1.2 MB (1176765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f6af6b9be8fb95aeb725bc92419b4808c686c4620a545b1f88ae2155ee162f`  
		Last Modified: Thu, 25 Apr 2019 00:25:50 GMT  
		Size: 13.7 MB (13672680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88ed8ece562262d061162d18cf4412005e55492c8d84e1f3db4bfd0a433d276`  
		Last Modified: Tue, 07 May 2019 23:23:27 GMT  
		Size: 117.8 MB (117783355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b243cdf2c3f5f7337ee9b6736577b081c641491951eb8884ad88b6329b8ab2a`  
		Last Modified: Tue, 07 May 2019 23:23:00 GMT  
		Size: 10.8 MB (10817073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe33fefa9a1cf67bcee59d29c521cf392037451b371cc64d979ad2837dd4796`  
		Last Modified: Tue, 07 May 2019 23:22:57 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:b74bdd771b72e5aa505f909e273128440cdf3a7cb4a6bd892828af6669d2fef3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144981176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9715dc9873c5ddabf0a7e26391345280534048068bda0cf5074958f7026ed587`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:39:21 GMT
ENV NODE_VERSION=10.15.3
# Sat, 20 Apr 2019 08:08:08 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 20 Apr 2019 08:08:09 GMT
ENV YARN_VERSION=1.13.0
# Sat, 20 Apr 2019 08:08:12 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 20 Apr 2019 08:08:13 GMT
CMD ["node"]
# Sat, 20 Apr 2019 08:25:03 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 20 Apr 2019 08:25:06 GMT
RUN apk add --no-cache 		bash
# Sat, 20 Apr 2019 08:25:07 GMT
ENV NODE_ENV=production
# Thu, 25 Apr 2019 07:49:20 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 25 Apr 2019 07:49:48 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 25 Apr 2019 07:49:50 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 25 Apr 2019 07:49:50 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 08 May 2019 07:49:27 GMT
ENV GHOST_VERSION=2.22.0
# Wed, 08 May 2019 07:50:58 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 08 May 2019 07:54:29 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 08 May 2019 07:54:30 GMT
WORKDIR /var/lib/ghost
# Wed, 08 May 2019 07:54:30 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 08 May 2019 07:54:31 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 08 May 2019 07:54:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 07:54:32 GMT
EXPOSE 2368
# Wed, 08 May 2019 07:54:32 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82bf39393e0518f18adcadd9e035ee071601aea13c8564b8708901fe5014f967`  
		Last Modified: Sat, 20 Apr 2019 08:09:37 GMT  
		Size: 19.2 MB (19226493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae877376f59c66417707bc16b5a3f5e0efa88ae8388b2356bf8e3447081a101f`  
		Last Modified: Sat, 20 Apr 2019 08:09:29 GMT  
		Size: 1.3 MB (1331929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5240cd21064ea2a628240164861f777e9897b5a6aa3abc64d5340aee86aa5d`  
		Last Modified: Sat, 20 Apr 2019 08:36:45 GMT  
		Size: 9.5 KB (9479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8203b07653ff52764b4e55f4fd78761fba64755ff09fff22bed2873ec8194b8`  
		Last Modified: Sat, 20 Apr 2019 08:36:44 GMT  
		Size: 1.1 MB (1121976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a987dba05b4304e70ff397b386cc6e25c153b096b950b17f361eab0a8747e58`  
		Last Modified: Thu, 25 Apr 2019 08:01:39 GMT  
		Size: 13.7 MB (13673620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4bcecda873879519860b12f7b3e814d6f36b51c939f52f11df0cf8ca2b7edf`  
		Last Modified: Wed, 08 May 2019 07:55:37 GMT  
		Size: 95.0 MB (94977341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f80fede14c420424be7b673b44fc4f9d8f86d7bc49b644d48361ba8e1890a8`  
		Last Modified: Wed, 08 May 2019 07:54:59 GMT  
		Size: 12.1 MB (12096352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c8cc1d150c2fdc73d97678f4ca06540ef34c54c2bbb594aa736663a21383ea8`  
		Last Modified: Wed, 08 May 2019 07:54:55 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; 386

```console
$ docker pull ghost@sha256:600b70a03f87f7c2c2c6c303a395198526ba3204b9f3e0e07cad5125c12ded33
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.5 MB (146501362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b10d719ed6a74a5d234e42b6a41407d0db950ee4edd4efc3b42590178efcab0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:35:48 GMT
ENV NODE_VERSION=10.15.3
# Sat, 20 Apr 2019 12:09:00 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 20 Apr 2019 12:09:00 GMT
ENV YARN_VERSION=1.13.0
# Sat, 20 Apr 2019 12:09:03 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 20 Apr 2019 12:09:03 GMT
CMD ["node"]
# Sat, 20 Apr 2019 12:39:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 20 Apr 2019 12:39:47 GMT
RUN apk add --no-cache 		bash
# Sat, 20 Apr 2019 12:39:47 GMT
ENV NODE_ENV=production
# Thu, 25 Apr 2019 10:40:19 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 25 Apr 2019 10:41:03 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 25 Apr 2019 10:41:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 25 Apr 2019 10:41:04 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 08 May 2019 13:28:34 GMT
ENV GHOST_VERSION=2.22.0
# Wed, 08 May 2019 13:29:33 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 08 May 2019 13:32:27 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 08 May 2019 13:32:27 GMT
WORKDIR /var/lib/ghost
# Wed, 08 May 2019 13:32:28 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 08 May 2019 13:32:28 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 08 May 2019 13:32:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 13:32:28 GMT
EXPOSE 2368
# Wed, 08 May 2019 13:32:29 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c837b2859f1f23f688abd8522b4a0a437c49f0fbcdcf59f4a82ea4a88763fe18`  
		Last Modified: Sat, 20 Apr 2019 12:11:27 GMT  
		Size: 20.2 MB (20194964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd302fd4e194b18e771c291375f6d8356b7e3e421cd7e3463c74e006f974df24`  
		Last Modified: Sat, 20 Apr 2019 12:11:20 GMT  
		Size: 1.3 MB (1331903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67fed87bc5ae2a1601fdb74710352dddfe893e905700ddfae02b274fde97b516`  
		Last Modified: Sat, 20 Apr 2019 12:46:12 GMT  
		Size: 9.8 KB (9750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ffa78f164ea81226a0bbe2adf468e011ed7867361b8ab9baacf9769f0d5d54`  
		Last Modified: Sat, 20 Apr 2019 12:46:11 GMT  
		Size: 1.2 MB (1223743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae36c107d0d7c4a2ded1edbaa9a90e341a55268a210e9f0c225077ee89e657c`  
		Last Modified: Thu, 25 Apr 2019 10:47:12 GMT  
		Size: 13.7 MB (13675790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191f8a1faa3bd76878626353eb68c40707a6654f43589abb466fc8b6982c9716`  
		Last Modified: Wed, 08 May 2019 13:33:43 GMT  
		Size: 95.0 MB (94975833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fdef6912fdd04ed969b3f1992c7bd9f47a961ae30e7a6753626776d27d723e`  
		Last Modified: Wed, 08 May 2019 13:33:00 GMT  
		Size: 12.3 MB (12336671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae5d13dbc30d6759fc5830e985b1f38d51db575eae2c17e73fc7bc024c54c54`  
		Last Modified: Wed, 08 May 2019 13:32:54 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:7581ad9b0624ff8663dcedeb994a120f8f178ab56af9f0b35109f29be1560750
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.0 MB (148964498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a732889ad326e639ca640d3b265dd2ff28c116693a0c4c78d93fc74780e790d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:04:04 GMT
ENV NODE_VERSION=10.15.3
# Sat, 20 Apr 2019 09:13:37 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 20 Apr 2019 09:13:52 GMT
ENV YARN_VERSION=1.13.0
# Sat, 20 Apr 2019 09:14:17 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 20 Apr 2019 09:14:22 GMT
CMD ["node"]
# Sat, 20 Apr 2019 09:37:53 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 20 Apr 2019 09:38:07 GMT
RUN apk add --no-cache 		bash
# Sat, 20 Apr 2019 09:38:23 GMT
ENV NODE_ENV=production
# Thu, 25 Apr 2019 08:34:29 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 25 Apr 2019 08:35:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 25 Apr 2019 08:35:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 25 Apr 2019 08:35:12 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 08 May 2019 09:31:39 GMT
ENV GHOST_VERSION=2.22.0
# Wed, 08 May 2019 09:36:00 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 08 May 2019 09:38:56 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 08 May 2019 09:39:00 GMT
WORKDIR /var/lib/ghost
# Wed, 08 May 2019 09:39:04 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 08 May 2019 09:39:06 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 08 May 2019 09:39:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 09:39:13 GMT
EXPOSE 2368
# Wed, 08 May 2019 09:39:15 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f8d882623b0c6c6d167c629ce8b38976c6270bc5c401a74c82203d58bde189`  
		Last Modified: Sat, 20 Apr 2019 09:21:12 GMT  
		Size: 21.7 MB (21671372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714dc2a350ffa3d932aa7b5ba2bd13598573f50a3520cc192fd67e406197c0b5`  
		Last Modified: Sat, 20 Apr 2019 09:21:05 GMT  
		Size: 1.3 MB (1332024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752ab9b1e57765d03626dcf77c675243139a1b776fe5fd2ffa80e98f02d50313`  
		Last Modified: Sat, 20 Apr 2019 10:04:15 GMT  
		Size: 10.2 KB (10236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5023de91c8d4367b59ea47f9fa9f48acd14b98299a42a92dc50ab116bf2bc799`  
		Last Modified: Sat, 20 Apr 2019 10:04:19 GMT  
		Size: 1.3 MB (1257931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50eccef37619ebcd3e21d79b9bfee586e1d39d51874e671aca5836838e53c8c7`  
		Last Modified: Thu, 25 Apr 2019 09:12:33 GMT  
		Size: 13.7 MB (13672202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d902b98c8fa3817a78288494dd32796a04c27c96fffeb64c3dfd23d93c468e3`  
		Last Modified: Wed, 08 May 2019 09:45:35 GMT  
		Size: 95.0 MB (95011965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0707ed432938c201b3bd85e379bb61a18b3c75bb2c31de7a8d955f202b9cb1`  
		Last Modified: Wed, 08 May 2019 09:42:54 GMT  
		Size: 13.2 MB (13227201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c245d5e603400d2e41ca3153c08d15ab3b90e691e8a4d294690e53960b3994a1`  
		Last Modified: Wed, 08 May 2019 09:42:46 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:c48772bc8b28b25734bcb6c282e79690ce402a5bb425ecff915493271bfe0cee
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
$ docker pull ghost@sha256:8932db121f4e1ba970bcb60ce8ee955b71886bcbd064046aa2cc9b001bfb8290
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.8 MB (185807530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85627cc2535d37b336fbaa6269bd943fc0eb88cbe7819f033d31fb035283c18e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:14:42 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 02:23:04 GMT
ENV NODE_VERSION=10.15.3
# Wed, 08 May 2019 02:23:21 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 02:23:22 GMT
ENV YARN_VERSION=1.13.0
# Wed, 08 May 2019 02:23:25 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 02:23:25 GMT
CMD ["node"]
# Wed, 08 May 2019 08:50:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 08:50:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 08 May 2019 08:50:28 GMT
ENV NODE_ENV=production
# Wed, 08 May 2019 08:50:28 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 08 May 2019 08:50:53 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 08 May 2019 08:50:54 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 08 May 2019 08:50:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 08 May 2019 08:50:55 GMT
ENV GHOST_VERSION=2.22.0
# Wed, 08 May 2019 08:52:07 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 08 May 2019 08:52:24 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 08 May 2019 08:52:24 GMT
WORKDIR /var/lib/ghost
# Wed, 08 May 2019 08:52:25 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 08 May 2019 08:52:25 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 08 May 2019 08:52:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 08:52:25 GMT
EXPOSE 2368
# Wed, 08 May 2019 08:52:26 GMT
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
	-	`sha256:eb3f264e66c2e2988737c427e3c3b391f70867d5653e083a84b908b277fe9159`  
		Last Modified: Wed, 08 May 2019 02:29:08 GMT  
		Size: 29.5 MB (29532610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9669fded0b979f158689cc56df73bf7eddbf65a7e12cf2db11fa272e78a735e8`  
		Last Modified: Wed, 08 May 2019 02:29:00 GMT  
		Size: 1.3 MB (1323189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a4aa819962848d61da9ddc250bd1293e5f078eb3d480e4b1cc8d3c0269e64d9`  
		Last Modified: Wed, 08 May 2019 08:54:23 GMT  
		Size: 500.9 KB (500920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561a347ed74f801eb1332cf47a2521b731812f0fb199a607bdd0be085d43da6a`  
		Last Modified: Wed, 08 May 2019 08:54:34 GMT  
		Size: 13.7 MB (13684590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca49b6c0603b6abeab33c46712221cca3854b6a17b0c3ee345bc343ef230aa8`  
		Last Modified: Wed, 08 May 2019 08:55:11 GMT  
		Size: 116.9 MB (116879816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608a0f1de3c6a846a108563d23adcbc7bd5f2ca0402dfac2cb3fa1f927f31d38`  
		Last Modified: Wed, 08 May 2019 08:54:24 GMT  
		Size: 1.4 MB (1392352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11758ea920913b7ea936d94f7f9d9eab8f0b5166978d2143b178cc504d57ee60`  
		Last Modified: Wed, 08 May 2019 08:54:23 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm variant v7

```console
$ docker pull ghost@sha256:34aafa59c51a97e0435fc2eb6e673c484a98a51da02788563b628c21756b31fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.0 MB (181957185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c99d89173140fb027e3959e2d924b67824cb41cec54469c2e32378940af442f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 15:13:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 15:22:56 GMT
ENV NODE_VERSION=10.15.3
# Wed, 08 May 2019 15:23:26 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 15:23:27 GMT
ENV YARN_VERSION=1.13.0
# Wed, 08 May 2019 15:23:32 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 15:23:33 GMT
CMD ["node"]
# Wed, 08 May 2019 18:23:16 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 18:23:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 08 May 2019 18:23:20 GMT
ENV NODE_ENV=production
# Wed, 08 May 2019 18:23:21 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 08 May 2019 18:23:43 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 08 May 2019 18:23:45 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 08 May 2019 18:23:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 08 May 2019 18:23:46 GMT
ENV GHOST_VERSION=2.22.0
# Wed, 08 May 2019 18:25:00 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 08 May 2019 18:28:14 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 08 May 2019 18:28:15 GMT
WORKDIR /var/lib/ghost
# Wed, 08 May 2019 18:28:15 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 08 May 2019 18:28:16 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 08 May 2019 18:28:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 18:28:16 GMT
EXPOSE 2368
# Wed, 08 May 2019 18:28:17 GMT
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
	-	`sha256:14a6538714345afc45960872235607be1c968f97b76baf55764a6fed799a01c5`  
		Last Modified: Wed, 08 May 2019 15:31:08 GMT  
		Size: 26.7 MB (26657806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffef9dafc42c96f448b06d0a3d595ce9f89cfae22bacb3f584e2941f372177a`  
		Last Modified: Wed, 08 May 2019 15:30:59 GMT  
		Size: 1.3 MB (1323223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f637286048b626849eddb82846ee87f6abf3d73d7d118af28f723444e63c74cb`  
		Last Modified: Wed, 08 May 2019 18:34:18 GMT  
		Size: 475.4 KB (475436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2665970a48d20716c044db7d6b5d4170f4f5bb6c0b25a65e25b31288e003cc`  
		Last Modified: Wed, 08 May 2019 18:34:24 GMT  
		Size: 13.7 MB (13684439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f51178cd050e4d07d7d0edc5262e6e37a99830661c24c0ee5228de790fa2520`  
		Last Modified: Wed, 08 May 2019 18:35:01 GMT  
		Size: 101.1 MB (101136157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faf229346c281d2ab2a326cbff64aa480ba30adae7538c271ae3e65a2225dc84`  
		Last Modified: Wed, 08 May 2019 18:34:24 GMT  
		Size: 19.4 MB (19399192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77dab896f309ae713cef374cbd35e1fd80c4b928817530cae33bccd3cfc03499`  
		Last Modified: Wed, 08 May 2019 18:34:18 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:8f45e009d5f7bdb89d490a3ac348f266a540cbd7415c1cbe8cfdcd967baf141b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.7 MB (184678380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca22b8b3035d934137b7b7d219f086e8d10ae3c37fc08a7d7ae50ea4ebb429ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 15:39:28 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 15:50:16 GMT
ENV NODE_VERSION=10.15.3
# Wed, 08 May 2019 15:51:22 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 15:51:23 GMT
ENV YARN_VERSION=1.13.0
# Wed, 08 May 2019 15:51:30 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 15:51:30 GMT
CMD ["node"]
# Thu, 09 May 2019 05:51:48 GMT
ENV GOSU_VERSION=1.10
# Thu, 09 May 2019 05:51:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 09 May 2019 05:51:57 GMT
ENV NODE_ENV=production
# Thu, 09 May 2019 05:51:58 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 09 May 2019 05:53:09 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 09 May 2019 05:53:12 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 09 May 2019 05:53:13 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 09 May 2019 05:53:14 GMT
ENV GHOST_VERSION=2.22.0
# Thu, 09 May 2019 05:56:29 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 09 May 2019 06:05:03 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 09 May 2019 06:05:05 GMT
WORKDIR /var/lib/ghost
# Thu, 09 May 2019 06:05:06 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 09 May 2019 06:05:07 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 09 May 2019 06:05:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 06:05:11 GMT
EXPOSE 2368
# Thu, 09 May 2019 06:05:12 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e813c27fe177b7315d10633afc967f85ef6c341a2f537b60e47d5711d235c092`  
		Last Modified: Wed, 08 May 2019 15:54:06 GMT  
		Size: 4.2 KB (4153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76eb5888c5ba7d516b4ee58a8d53d03b2d6598ab09cf817328cc10e9870cc1d8`  
		Last Modified: Wed, 08 May 2019 15:58:39 GMT  
		Size: 28.3 MB (28344772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d86246a1ba7d2330982b0ef3b1172b6b0c0f599639e60745803b1227c90309c5`  
		Last Modified: Wed, 08 May 2019 15:58:28 GMT  
		Size: 1.3 MB (1323196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d4423579b40084b1440570923c50216f31bb82a9cfa40253b6901e5badad51`  
		Last Modified: Thu, 09 May 2019 06:20:08 GMT  
		Size: 468.9 KB (468941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ac208d9acec874c520347c8de762a10128e84be2b82e170ce2bb11ff216ff8`  
		Last Modified: Thu, 09 May 2019 06:20:29 GMT  
		Size: 13.7 MB (13686284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8200fd91fbd0c5f4c095692a32add8ccaeec3f63970df6700f5c7cf447862e11`  
		Last Modified: Thu, 09 May 2019 06:21:55 GMT  
		Size: 101.0 MB (100991624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d32619bdba0a4667c49d4d9b0570b7f3e38ca5626950ff4420658c76097007`  
		Last Modified: Thu, 09 May 2019 06:20:32 GMT  
		Size: 19.5 MB (19525038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3b24c733b309cb99f9e0476cb3f890ac8f41a047e104d78a08c976c406eb1e`  
		Last Modified: Thu, 09 May 2019 06:20:07 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; ppc64le

```console
$ docker pull ghost@sha256:5eae4d745f9ffd5c1cd830b9509432287ab98bcadca038ea59ac7779735206c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.5 MB (174518081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c289b845717261030a629fa38818fc612cee8aa84417429320dea8f99a67ecc`
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
# Thu, 09 May 2019 00:26:39 GMT
ENV GHOST_VERSION=2.22.0
# Thu, 09 May 2019 00:31:27 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 09 May 2019 00:36:31 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 09 May 2019 00:36:38 GMT
WORKDIR /var/lib/ghost
# Thu, 09 May 2019 00:36:43 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 09 May 2019 00:36:45 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 09 May 2019 00:36:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 00:36:55 GMT
EXPOSE 2368
# Thu, 09 May 2019 00:36:58 GMT
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
	-	`sha256:ba4af4fe4d8a87642e92b90f42496e2088a83043e7c6b7dca161022ec0dec781`  
		Last Modified: Thu, 09 May 2019 00:51:36 GMT  
		Size: 95.0 MB (95012552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be949dcc34677ca01c2fd2761608e544826d5712558d67a7a67cc8b01ae089e`  
		Last Modified: Thu, 09 May 2019 00:50:12 GMT  
		Size: 12.6 MB (12639162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e8a6435e3cb432d40edd4df5086480439dac944d3fd631d5da5711395713ef`  
		Last Modified: Thu, 09 May 2019 00:50:05 GMT  
		Size: 561.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; s390x

```console
$ docker pull ghost@sha256:bdaa76f387512278cf4817e967f7c1ab64787737e6bf0a3d2acff9f2e4d9e290
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.7 MB (174719001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:454893a5df0e6203cc84bfaf4fc1c3e653d60ca63097a433b7d7957686458e68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:12:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 14:21:29 GMT
ENV NODE_VERSION=10.15.3
# Wed, 08 May 2019 14:22:38 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 14:22:39 GMT
ENV YARN_VERSION=1.13.0
# Wed, 08 May 2019 14:22:51 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 14:22:52 GMT
CMD ["node"]
# Thu, 09 May 2019 02:55:32 GMT
ENV GOSU_VERSION=1.10
# Thu, 09 May 2019 02:55:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 09 May 2019 02:55:47 GMT
ENV NODE_ENV=production
# Thu, 09 May 2019 02:55:48 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 09 May 2019 02:57:17 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 09 May 2019 02:57:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 09 May 2019 02:57:19 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 09 May 2019 02:57:20 GMT
ENV GHOST_VERSION=2.22.0
# Thu, 09 May 2019 03:00:00 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 09 May 2019 03:03:56 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 09 May 2019 03:03:58 GMT
WORKDIR /var/lib/ghost
# Thu, 09 May 2019 03:03:59 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 09 May 2019 03:04:01 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 09 May 2019 03:04:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 03:04:03 GMT
EXPOSE 2368
# Thu, 09 May 2019 03:04:04 GMT
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
	-	`sha256:6bb421d6805b14178a44cce991f5d56322e81cf5add5e5a6746fd3268ffd5ccc`  
		Last Modified: Wed, 08 May 2019 14:33:29 GMT  
		Size: 29.2 MB (29244575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17e090a431df53f609ab6fa59e34bac1cc099ad84b0590d46d6982782c17258`  
		Last Modified: Wed, 08 May 2019 14:33:16 GMT  
		Size: 1.3 MB (1323202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1a2a841918de5b32570a4d62b7ff98007d9a666c68e2536feef1103e4f4f02`  
		Last Modified: Thu, 09 May 2019 03:14:44 GMT  
		Size: 487.0 KB (487045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c36144c08c322b6f08fe15c6ce0dfd6507712310052fef67ab0848404e9bdc`  
		Last Modified: Thu, 09 May 2019 03:14:52 GMT  
		Size: 13.7 MB (13686364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d248317f7a9261fbea3439a6f7dde5c4f08dc872385e4f978c8f2b010b67e47e`  
		Last Modified: Thu, 09 May 2019 03:15:43 GMT  
		Size: 95.0 MB (95012120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1da76f119023470e5c7b6ddd812faafc121b4de60c4949a068710c6408e9b50`  
		Last Modified: Thu, 09 May 2019 03:14:52 GMT  
		Size: 12.6 MB (12622111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3288b67fd8502daed83f26d486c42363348d37fbc68c975fe64e48cffef381ab`  
		Last Modified: Thu, 09 May 2019 03:14:44 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

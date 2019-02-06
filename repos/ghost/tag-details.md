<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:1`](#ghost1)
-	[`ghost:1.25`](#ghost125)
-	[`ghost:1.25.6`](#ghost1256)
-	[`ghost:1.25.6-alpine`](#ghost1256-alpine)
-	[`ghost:1.25-alpine`](#ghost125-alpine)
-	[`ghost:1-alpine`](#ghost1-alpine)
-	[`ghost:2`](#ghost2)
-	[`ghost:2.13`](#ghost213)
-	[`ghost:2.13.2`](#ghost2132)
-	[`ghost:2.13.2-alpine`](#ghost2132-alpine)
-	[`ghost:2.13-alpine`](#ghost213-alpine)
-	[`ghost:2-alpine`](#ghost2-alpine)
-	[`ghost:alpine`](#ghostalpine)
-	[`ghost:latest`](#ghostlatest)

## `ghost:1`

```console
$ docker pull ghost@sha256:fb9eab2b06a04487909f7e3dcda17f3ff7a8fc2c9954daafcb839fe3671e7371
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
$ docker pull ghost@sha256:7a3c07f0e9b518cfdb3b030bb38c6c816780133d76f00c09213845e34eb698e0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.2 MB (185226506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dac9c585bd38f8c4415c0a826d393e65b43b1c31ffa5e8841e915234bf15d974`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 01:40:17 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Jan 2019 01:40:17 GMT
ENV NODE_VERSION=8.15.0
# Wed, 23 Jan 2019 01:40:38 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 23 Jan 2019 01:40:38 GMT
ENV YARN_VERSION=1.12.3
# Wed, 23 Jan 2019 01:40:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 23 Jan 2019 01:40:42 GMT
CMD ["node"]
# Wed, 23 Jan 2019 11:59:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 11:59:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 23 Jan 2019 11:59:57 GMT
ENV NODE_ENV=production
# Wed, 23 Jan 2019 11:59:57 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Wed, 23 Jan 2019 12:00:18 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 23 Jan 2019 12:00:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Jan 2019 12:00:19 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Jan 2019 12:01:39 GMT
ENV GHOST_VERSION=1.25.6
# Wed, 23 Jan 2019 12:02:23 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 23 Jan 2019 12:02:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 23 Jan 2019 12:02:34 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 23 Jan 2019 12:02:35 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Jan 2019 12:02:35 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Jan 2019 12:02:35 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Wed, 23 Jan 2019 12:02:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 12:02:35 GMT
EXPOSE 2368
# Wed, 23 Jan 2019 12:02:36 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe40c2f302dba633d57bef2c4c9d12172f36811251bf361bd47e359d7f71b03c`  
		Last Modified: Wed, 23 Jan 2019 01:50:57 GMT  
		Size: 4.1 KB (4144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624869bdd9d8c6ebd9d476211c1a261e32d8ecb2b0bd3ccde0a2941ab1898a94`  
		Last Modified: Wed, 23 Jan 2019 01:51:10 GMT  
		Size: 28.0 MB (28018539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e38240342a3979ccf1b00df4aea43605ed2fa2a60fea27538d2cdc7877a66e`  
		Last Modified: Wed, 23 Jan 2019 01:50:57 GMT  
		Size: 1.3 MB (1321435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138999c01f1496effab9350af40e285a31424fadd85db3463175c0bce03aa647`  
		Last Modified: Wed, 23 Jan 2019 12:02:54 GMT  
		Size: 500.9 KB (500917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2945c5e7a28219ae62e39fd0242bf80a20430d08f29ce77c1545b3ffa9dd4bf`  
		Last Modified: Wed, 23 Jan 2019 12:03:02 GMT  
		Size: 17.3 MB (17294243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a0ab8de6ede58012a5f7b8ca7b5954debc143c468113c90fc324b6be3aef24e`  
		Last Modified: Wed, 23 Jan 2019 12:03:57 GMT  
		Size: 102.4 MB (102390482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97f2e108699f21ce1e64851569cd6e59178b6a75b09358bf2c56adca0afb408`  
		Last Modified: Wed, 23 Jan 2019 12:03:38 GMT  
		Size: 13.2 MB (13195454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1fa9798745b95102b7665fb5b57d92e648ffb3c5ee63511551e220b7aff30e`  
		Last Modified: Wed, 23 Jan 2019 12:03:36 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; arm variant v7

```console
$ docker pull ghost@sha256:704e0f901f169212ce965018228b5dd6d3ea658686ae5cf2b905c808e7255775
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187950815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8c5d9e5ce2af60c9892fe46c75af673ced03521aa2eae00c55037cc39969033`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:30:42 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Jan 2019 14:30:42 GMT
ENV NODE_VERSION=8.15.0
# Wed, 23 Jan 2019 14:31:09 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 23 Jan 2019 14:31:10 GMT
ENV YARN_VERSION=1.12.3
# Wed, 23 Jan 2019 14:31:15 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 23 Jan 2019 14:31:16 GMT
CMD ["node"]
# Wed, 23 Jan 2019 18:47:01 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 18:47:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 23 Jan 2019 18:47:07 GMT
ENV NODE_ENV=production
# Wed, 23 Jan 2019 18:47:08 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Wed, 23 Jan 2019 18:47:53 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 23 Jan 2019 18:47:55 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Jan 2019 18:47:55 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Jan 2019 18:53:54 GMT
ENV GHOST_VERSION=1.25.6
# Wed, 23 Jan 2019 18:55:20 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 23 Jan 2019 18:55:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 23 Jan 2019 18:58:45 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 23 Jan 2019 18:58:47 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Jan 2019 18:58:47 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Jan 2019 18:58:48 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Wed, 23 Jan 2019 18:58:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 18:58:49 GMT
EXPOSE 2368
# Wed, 23 Jan 2019 18:58:49 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f4692f2fb079485f299b39d614d6d77d41b0d9c83afbae32744cb050cf8f52`  
		Last Modified: Wed, 23 Jan 2019 14:41:47 GMT  
		Size: 4.2 KB (4162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac681316033d603196fd2b01ab13729da30f49471060bc0d9cdaa31c168d90d`  
		Last Modified: Wed, 23 Jan 2019 14:41:56 GMT  
		Size: 25.5 MB (25468487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71de7f9136ba33f6b925f411770a6ee29d34a7380cafaf5c7a1116e5add18fe9`  
		Last Modified: Wed, 23 Jan 2019 14:41:47 GMT  
		Size: 1.3 MB (1321440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce1b87d5f949d4f0f6005eb9fad08483c619997d974fcb397d347388a9ce514`  
		Last Modified: Wed, 23 Jan 2019 18:59:05 GMT  
		Size: 475.4 KB (475433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e9246331a6a27435cb52b42bc42d020456a00fce3a71175a12ecc41668d176`  
		Last Modified: Wed, 23 Jan 2019 18:59:14 GMT  
		Size: 17.3 MB (17299329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5537b91ccc314d80ee6748df9e787e84845ff6c09a8b0ca4f7bc259c77f885b`  
		Last Modified: Wed, 23 Jan 2019 19:00:42 GMT  
		Size: 94.7 MB (94661682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8215781bea1336d7d4fab95cf28ae3859101f580cc28594e31878c4cf236dc1`  
		Last Modified: Wed, 23 Jan 2019 19:00:11 GMT  
		Size: 29.4 MB (29429410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca94b15f74a5f6227b8ca2b27c31b9e918214d49d08ed654ebf552d5336174e`  
		Last Modified: Wed, 23 Jan 2019 19:00:03 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:f40eebaec299fb57b34ccef8ff859e9f19f94bcc0b0425baa114582377eaf7ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.9 MB (190899446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4b4b9fa3e69d990889015504cbbd5a8279edf06915fbe1d6ed7e0c44c55fad8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 02:53:41 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 Jan 2019 02:53:43 GMT
ENV NODE_VERSION=8.15.0
# Fri, 25 Jan 2019 02:59:02 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 Jan 2019 02:59:09 GMT
ENV YARN_VERSION=1.12.3
# Fri, 25 Jan 2019 02:59:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 Jan 2019 02:59:28 GMT
CMD ["node"]
# Fri, 25 Jan 2019 10:39:03 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Jan 2019 10:39:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 Jan 2019 10:39:14 GMT
ENV NODE_ENV=production
# Fri, 25 Jan 2019 10:39:14 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Fri, 25 Jan 2019 10:40:05 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 25 Jan 2019 10:40:06 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 25 Jan 2019 10:40:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 25 Jan 2019 10:47:22 GMT
ENV GHOST_VERSION=1.25.6
# Fri, 25 Jan 2019 10:48:38 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 25 Jan 2019 10:48:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 25 Jan 2019 10:53:27 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 25 Jan 2019 10:53:28 GMT
WORKDIR /var/lib/ghost
# Fri, 25 Jan 2019 10:53:28 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 25 Jan 2019 10:53:29 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Fri, 25 Jan 2019 10:53:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Jan 2019 10:53:30 GMT
EXPOSE 2368
# Fri, 25 Jan 2019 10:53:31 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617fda78caaace4ad1093eef6567038c8b406acd7cde81cf40b41c92c7e44e1e`  
		Last Modified: Fri, 25 Jan 2019 03:08:32 GMT  
		Size: 4.2 KB (4162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8664d5d4d0982592324b149d3f84e4f5fb6f3f5e9c5bd4f80ad32d084c92b5a4`  
		Last Modified: Fri, 25 Jan 2019 03:08:43 GMT  
		Size: 26.7 MB (26701316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eecd0c83edb8974e89cb24d12d1804b1cf04b1f8d2fcdb530a0029827262b34`  
		Last Modified: Fri, 25 Jan 2019 03:08:33 GMT  
		Size: 1.3 MB (1321446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80e991258136c8d0a92a6c3cc4a70a7aa7076b22379409990feaeb8a2036c129`  
		Last Modified: Fri, 25 Jan 2019 10:54:05 GMT  
		Size: 468.9 KB (468939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ef34c5c0d9eb9d3ac0631d78fcd53a372a5df3c44a20206a17fa172a15c346`  
		Last Modified: Fri, 25 Jan 2019 10:54:46 GMT  
		Size: 17.3 MB (17296413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db153e44bfe7e4be16756a929eae28d9033223fa0be25756674864faf78d0526`  
		Last Modified: Fri, 25 Jan 2019 10:56:12 GMT  
		Size: 94.7 MB (94703047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a060cab1ab5328edd2da6991f2bd63b2c883baf25ccfb9584a9a6944e3b3a8a`  
		Last Modified: Fri, 25 Jan 2019 10:55:43 GMT  
		Size: 30.1 MB (30053357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0326c3d27f63ace8048466f30425fdf8091c20587ba650b9e551333cc266c57c`  
		Last Modified: Fri, 25 Jan 2019 10:55:33 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; 386

```console
$ docker pull ghost@sha256:0a00599b0d758f61bd74c3e867bae11f51255fb11fe85a7cb4fe13ccf94dbd00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.6 MB (195550403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bdbf65356f6fe7a93f416fdbd43c9e3e745ab5ec1e2655503de7a57cd724b3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:41:49 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Jan 2019 13:41:49 GMT
ENV NODE_VERSION=8.15.0
# Wed, 23 Jan 2019 13:42:10 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 23 Jan 2019 13:42:11 GMT
ENV YARN_VERSION=1.12.3
# Wed, 23 Jan 2019 13:42:16 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 23 Jan 2019 13:42:16 GMT
CMD ["node"]
# Thu, 24 Jan 2019 00:37:31 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 Jan 2019 00:37:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 24 Jan 2019 00:37:35 GMT
ENV NODE_ENV=production
# Thu, 24 Jan 2019 00:37:36 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Thu, 24 Jan 2019 00:38:00 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 24 Jan 2019 00:38:00 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 24 Jan 2019 00:38:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 24 Jan 2019 00:40:55 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 24 Jan 2019 00:41:37 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 24 Jan 2019 00:41:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 24 Jan 2019 00:43:22 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 24 Jan 2019 00:43:23 GMT
WORKDIR /var/lib/ghost
# Thu, 24 Jan 2019 00:43:23 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 24 Jan 2019 00:43:23 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Thu, 24 Jan 2019 00:43:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Jan 2019 00:43:24 GMT
EXPOSE 2368
# Thu, 24 Jan 2019 00:43:24 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c92eb48bd2ab47527c451fa10548490aecbca01a92bca802bca12db10e6af1`  
		Last Modified: Wed, 23 Jan 2019 13:48:39 GMT  
		Size: 4.1 KB (4129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6668d8db8b6e4252537915f906ace6a26cce9ff32305c8c028e73208c7ac04`  
		Last Modified: Wed, 23 Jan 2019 13:48:47 GMT  
		Size: 27.8 MB (27846086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666e9d0ebc6ffcc9369b869deac894dabfb393149bb438760061c98d70d6ac7a`  
		Last Modified: Wed, 23 Jan 2019 13:48:40 GMT  
		Size: 1.3 MB (1321442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4a705ad0df2c0493288d8ee0130eab891795971fcb3de9e8b79b0198322072`  
		Last Modified: Thu, 24 Jan 2019 00:43:50 GMT  
		Size: 480.8 KB (480827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dee939a6ff703570747b141ce490e51f2bd3aaf81c9ff690b9092d8e0703518`  
		Last Modified: Thu, 24 Jan 2019 00:44:06 GMT  
		Size: 17.3 MB (17296481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11d1c3ce2a6a23b8c716550d74ecf324f4d0acceedbfb2e4a86c18c340e37916`  
		Last Modified: Thu, 24 Jan 2019 00:45:21 GMT  
		Size: 94.6 MB (94649301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ae324fc16d0912fbc966d7fbedb4418de4ea7c0c162477e26bbe02c25c42e3`  
		Last Modified: Thu, 24 Jan 2019 00:44:50 GMT  
		Size: 30.8 MB (30804433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad282d850d9ccb9bf8f08e9eb54e89ed94011530bbe87189070ca1f7937cbb0`  
		Last Modified: Thu, 24 Jan 2019 00:44:42 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; ppc64le

```console
$ docker pull ghost@sha256:ee14ed582858fd88c3d36a120d640d291ae60b97569f5c3d898e61b35ff76951
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.5 MB (194498580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f84014ffb794cb3df9d0e9df252cc52d15ef1222a56659261bba92cb7f12033`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:18:10 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Jan 2019 11:18:11 GMT
ENV NODE_VERSION=8.15.0
# Wed, 23 Jan 2019 11:19:30 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 23 Jan 2019 11:19:33 GMT
ENV YARN_VERSION=1.12.3
# Wed, 23 Jan 2019 11:19:43 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 23 Jan 2019 11:19:46 GMT
CMD ["node"]
# Wed, 23 Jan 2019 16:08:56 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 16:09:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 23 Jan 2019 16:09:12 GMT
ENV NODE_ENV=production
# Wed, 23 Jan 2019 16:09:14 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Wed, 23 Jan 2019 16:09:56 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 23 Jan 2019 16:10:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Jan 2019 16:10:06 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Jan 2019 16:18:07 GMT
ENV GHOST_VERSION=1.25.6
# Wed, 23 Jan 2019 16:20:28 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 23 Jan 2019 16:20:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 23 Jan 2019 16:24:27 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 23 Jan 2019 16:24:33 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Jan 2019 16:24:36 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Jan 2019 16:24:38 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Wed, 23 Jan 2019 16:24:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 16:24:46 GMT
EXPOSE 2368
# Wed, 23 Jan 2019 16:24:50 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a766d1d22112297db33de78132c7073630477ad53e6e92e7cb05122c4b6ccc`  
		Last Modified: Wed, 23 Jan 2019 11:23:20 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c411bd79c2cae58ac4f8c05b5a2964b45017cf2e645ceab50586d4f2d0ebb0e`  
		Last Modified: Wed, 23 Jan 2019 11:23:24 GMT  
		Size: 27.0 MB (26964310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4581b7a99dcfe2412fe9b64b01b8f053bcd9a834833046d0e987c08e792c5c0c`  
		Last Modified: Wed, 23 Jan 2019 11:23:20 GMT  
		Size: 1.3 MB (1321459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e13d521328925462036a70b5b581584da305dd89eb4db4f0c0596e5f37fafda`  
		Last Modified: Wed, 23 Jan 2019 16:25:30 GMT  
		Size: 470.1 KB (470077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e3573221a5bc73c9feb479210bfe47ef60f9f3012bfec01f1c4da967585864`  
		Last Modified: Wed, 23 Jan 2019 16:25:57 GMT  
		Size: 17.3 MB (17294283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95ec95018aa12343ac50bd943b9d600c36a295171b5031b6956866e34c943b1`  
		Last Modified: Wed, 23 Jan 2019 16:28:55 GMT  
		Size: 94.7 MB (94694711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d59d1d84b3b7b9f30ae7ebe9c6c2baa2b893d9d735c31be388f1102542c718e`  
		Last Modified: Wed, 23 Jan 2019 16:27:41 GMT  
		Size: 31.0 MB (30993641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdf9f3bc3eee8d68eb3b0d79d4729bed65a3d1b4fc518a2a82bb117a6799fe6`  
		Last Modified: Wed, 23 Jan 2019 16:27:28 GMT  
		Size: 588.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; s390x

```console
$ docker pull ghost@sha256:41699a85296df02b909af608d7cd97f57a9d4aae5a099eaba915feb9763cf1ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.0 MB (194958582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e2031bd2a2557e985152c49c5f4d7ac940e941fb4ae6f3b45f5b67aef56607b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Jan 2019 13:44:20 GMT
ENV NODE_VERSION=8.15.0
# Wed, 23 Jan 2019 13:44:39 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 23 Jan 2019 13:44:39 GMT
ENV YARN_VERSION=1.12.3
# Wed, 23 Jan 2019 13:44:44 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 23 Jan 2019 13:44:44 GMT
CMD ["node"]
# Wed, 23 Jan 2019 17:04:55 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 17:05:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 23 Jan 2019 17:05:00 GMT
ENV NODE_ENV=production
# Wed, 23 Jan 2019 17:05:00 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Wed, 23 Jan 2019 17:05:31 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 23 Jan 2019 17:05:32 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Jan 2019 17:05:32 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Jan 2019 17:08:44 GMT
ENV GHOST_VERSION=1.25.6
# Wed, 23 Jan 2019 17:09:31 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 23 Jan 2019 17:09:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 23 Jan 2019 17:11:19 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 23 Jan 2019 17:11:19 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Jan 2019 17:11:20 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Jan 2019 17:11:20 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Wed, 23 Jan 2019 17:11:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 17:11:20 GMT
EXPOSE 2368
# Wed, 23 Jan 2019 17:11:21 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:943436c91b5f066c4c7f15b527ecf0d019c4ff13ac400f05465d4c897454f8d9`  
		Last Modified: Wed, 23 Jan 2019 13:47:11 GMT  
		Size: 4.1 KB (4149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:229dbe6e33f226818ddb9f0a0f2b5fe1b709f67344a239e593daf594363c717f`  
		Last Modified: Wed, 23 Jan 2019 13:47:17 GMT  
		Size: 27.9 MB (27860441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebaf089dcd45c396980f1d3143664c4cbdfef06fe2febed9f9ac99a4c292eeb`  
		Last Modified: Wed, 23 Jan 2019 13:47:11 GMT  
		Size: 1.3 MB (1321432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2562bcde35c4aaac3a162606a3d104303d56f55b46df202da142aff45b350c60`  
		Last Modified: Wed, 23 Jan 2019 17:11:57 GMT  
		Size: 487.0 KB (487048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5619ccae1d3eda20c00c2b88388cb8fd3823372864226760a4d2517bfd9c73f3`  
		Last Modified: Wed, 23 Jan 2019 17:12:05 GMT  
		Size: 17.3 MB (17296285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e03ce68553b37be05494d1fa7e78c35f02363507a18fe2a853838c4dc1b8af`  
		Last Modified: Wed, 23 Jan 2019 17:12:58 GMT  
		Size: 94.7 MB (94689948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502c10a77d1fff6f676261d31172157285e81179dfc9776cdb14baac17aa3131`  
		Last Modified: Wed, 23 Jan 2019 17:12:45 GMT  
		Size: 30.9 MB (30945190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b2dda505032ff0957326eec5481f66b85687e84647aa397eabbbda9c0de850`  
		Last Modified: Wed, 23 Jan 2019 17:12:36 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25`

```console
$ docker pull ghost@sha256:fb9eab2b06a04487909f7e3dcda17f3ff7a8fc2c9954daafcb839fe3671e7371
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
$ docker pull ghost@sha256:7a3c07f0e9b518cfdb3b030bb38c6c816780133d76f00c09213845e34eb698e0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.2 MB (185226506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dac9c585bd38f8c4415c0a826d393e65b43b1c31ffa5e8841e915234bf15d974`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 01:40:17 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Jan 2019 01:40:17 GMT
ENV NODE_VERSION=8.15.0
# Wed, 23 Jan 2019 01:40:38 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 23 Jan 2019 01:40:38 GMT
ENV YARN_VERSION=1.12.3
# Wed, 23 Jan 2019 01:40:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 23 Jan 2019 01:40:42 GMT
CMD ["node"]
# Wed, 23 Jan 2019 11:59:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 11:59:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 23 Jan 2019 11:59:57 GMT
ENV NODE_ENV=production
# Wed, 23 Jan 2019 11:59:57 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Wed, 23 Jan 2019 12:00:18 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 23 Jan 2019 12:00:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Jan 2019 12:00:19 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Jan 2019 12:01:39 GMT
ENV GHOST_VERSION=1.25.6
# Wed, 23 Jan 2019 12:02:23 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 23 Jan 2019 12:02:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 23 Jan 2019 12:02:34 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 23 Jan 2019 12:02:35 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Jan 2019 12:02:35 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Jan 2019 12:02:35 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Wed, 23 Jan 2019 12:02:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 12:02:35 GMT
EXPOSE 2368
# Wed, 23 Jan 2019 12:02:36 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe40c2f302dba633d57bef2c4c9d12172f36811251bf361bd47e359d7f71b03c`  
		Last Modified: Wed, 23 Jan 2019 01:50:57 GMT  
		Size: 4.1 KB (4144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624869bdd9d8c6ebd9d476211c1a261e32d8ecb2b0bd3ccde0a2941ab1898a94`  
		Last Modified: Wed, 23 Jan 2019 01:51:10 GMT  
		Size: 28.0 MB (28018539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e38240342a3979ccf1b00df4aea43605ed2fa2a60fea27538d2cdc7877a66e`  
		Last Modified: Wed, 23 Jan 2019 01:50:57 GMT  
		Size: 1.3 MB (1321435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138999c01f1496effab9350af40e285a31424fadd85db3463175c0bce03aa647`  
		Last Modified: Wed, 23 Jan 2019 12:02:54 GMT  
		Size: 500.9 KB (500917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2945c5e7a28219ae62e39fd0242bf80a20430d08f29ce77c1545b3ffa9dd4bf`  
		Last Modified: Wed, 23 Jan 2019 12:03:02 GMT  
		Size: 17.3 MB (17294243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a0ab8de6ede58012a5f7b8ca7b5954debc143c468113c90fc324b6be3aef24e`  
		Last Modified: Wed, 23 Jan 2019 12:03:57 GMT  
		Size: 102.4 MB (102390482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97f2e108699f21ce1e64851569cd6e59178b6a75b09358bf2c56adca0afb408`  
		Last Modified: Wed, 23 Jan 2019 12:03:38 GMT  
		Size: 13.2 MB (13195454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1fa9798745b95102b7665fb5b57d92e648ffb3c5ee63511551e220b7aff30e`  
		Last Modified: Wed, 23 Jan 2019 12:03:36 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; arm variant v7

```console
$ docker pull ghost@sha256:704e0f901f169212ce965018228b5dd6d3ea658686ae5cf2b905c808e7255775
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187950815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8c5d9e5ce2af60c9892fe46c75af673ced03521aa2eae00c55037cc39969033`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:30:42 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Jan 2019 14:30:42 GMT
ENV NODE_VERSION=8.15.0
# Wed, 23 Jan 2019 14:31:09 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 23 Jan 2019 14:31:10 GMT
ENV YARN_VERSION=1.12.3
# Wed, 23 Jan 2019 14:31:15 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 23 Jan 2019 14:31:16 GMT
CMD ["node"]
# Wed, 23 Jan 2019 18:47:01 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 18:47:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 23 Jan 2019 18:47:07 GMT
ENV NODE_ENV=production
# Wed, 23 Jan 2019 18:47:08 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Wed, 23 Jan 2019 18:47:53 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 23 Jan 2019 18:47:55 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Jan 2019 18:47:55 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Jan 2019 18:53:54 GMT
ENV GHOST_VERSION=1.25.6
# Wed, 23 Jan 2019 18:55:20 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 23 Jan 2019 18:55:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 23 Jan 2019 18:58:45 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 23 Jan 2019 18:58:47 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Jan 2019 18:58:47 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Jan 2019 18:58:48 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Wed, 23 Jan 2019 18:58:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 18:58:49 GMT
EXPOSE 2368
# Wed, 23 Jan 2019 18:58:49 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f4692f2fb079485f299b39d614d6d77d41b0d9c83afbae32744cb050cf8f52`  
		Last Modified: Wed, 23 Jan 2019 14:41:47 GMT  
		Size: 4.2 KB (4162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac681316033d603196fd2b01ab13729da30f49471060bc0d9cdaa31c168d90d`  
		Last Modified: Wed, 23 Jan 2019 14:41:56 GMT  
		Size: 25.5 MB (25468487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71de7f9136ba33f6b925f411770a6ee29d34a7380cafaf5c7a1116e5add18fe9`  
		Last Modified: Wed, 23 Jan 2019 14:41:47 GMT  
		Size: 1.3 MB (1321440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce1b87d5f949d4f0f6005eb9fad08483c619997d974fcb397d347388a9ce514`  
		Last Modified: Wed, 23 Jan 2019 18:59:05 GMT  
		Size: 475.4 KB (475433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e9246331a6a27435cb52b42bc42d020456a00fce3a71175a12ecc41668d176`  
		Last Modified: Wed, 23 Jan 2019 18:59:14 GMT  
		Size: 17.3 MB (17299329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5537b91ccc314d80ee6748df9e787e84845ff6c09a8b0ca4f7bc259c77f885b`  
		Last Modified: Wed, 23 Jan 2019 19:00:42 GMT  
		Size: 94.7 MB (94661682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8215781bea1336d7d4fab95cf28ae3859101f580cc28594e31878c4cf236dc1`  
		Last Modified: Wed, 23 Jan 2019 19:00:11 GMT  
		Size: 29.4 MB (29429410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca94b15f74a5f6227b8ca2b27c31b9e918214d49d08ed654ebf552d5336174e`  
		Last Modified: Wed, 23 Jan 2019 19:00:03 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:f40eebaec299fb57b34ccef8ff859e9f19f94bcc0b0425baa114582377eaf7ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.9 MB (190899446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4b4b9fa3e69d990889015504cbbd5a8279edf06915fbe1d6ed7e0c44c55fad8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 02:53:41 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 Jan 2019 02:53:43 GMT
ENV NODE_VERSION=8.15.0
# Fri, 25 Jan 2019 02:59:02 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 Jan 2019 02:59:09 GMT
ENV YARN_VERSION=1.12.3
# Fri, 25 Jan 2019 02:59:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 Jan 2019 02:59:28 GMT
CMD ["node"]
# Fri, 25 Jan 2019 10:39:03 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Jan 2019 10:39:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 Jan 2019 10:39:14 GMT
ENV NODE_ENV=production
# Fri, 25 Jan 2019 10:39:14 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Fri, 25 Jan 2019 10:40:05 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 25 Jan 2019 10:40:06 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 25 Jan 2019 10:40:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 25 Jan 2019 10:47:22 GMT
ENV GHOST_VERSION=1.25.6
# Fri, 25 Jan 2019 10:48:38 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 25 Jan 2019 10:48:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 25 Jan 2019 10:53:27 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 25 Jan 2019 10:53:28 GMT
WORKDIR /var/lib/ghost
# Fri, 25 Jan 2019 10:53:28 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 25 Jan 2019 10:53:29 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Fri, 25 Jan 2019 10:53:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Jan 2019 10:53:30 GMT
EXPOSE 2368
# Fri, 25 Jan 2019 10:53:31 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617fda78caaace4ad1093eef6567038c8b406acd7cde81cf40b41c92c7e44e1e`  
		Last Modified: Fri, 25 Jan 2019 03:08:32 GMT  
		Size: 4.2 KB (4162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8664d5d4d0982592324b149d3f84e4f5fb6f3f5e9c5bd4f80ad32d084c92b5a4`  
		Last Modified: Fri, 25 Jan 2019 03:08:43 GMT  
		Size: 26.7 MB (26701316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eecd0c83edb8974e89cb24d12d1804b1cf04b1f8d2fcdb530a0029827262b34`  
		Last Modified: Fri, 25 Jan 2019 03:08:33 GMT  
		Size: 1.3 MB (1321446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80e991258136c8d0a92a6c3cc4a70a7aa7076b22379409990feaeb8a2036c129`  
		Last Modified: Fri, 25 Jan 2019 10:54:05 GMT  
		Size: 468.9 KB (468939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ef34c5c0d9eb9d3ac0631d78fcd53a372a5df3c44a20206a17fa172a15c346`  
		Last Modified: Fri, 25 Jan 2019 10:54:46 GMT  
		Size: 17.3 MB (17296413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db153e44bfe7e4be16756a929eae28d9033223fa0be25756674864faf78d0526`  
		Last Modified: Fri, 25 Jan 2019 10:56:12 GMT  
		Size: 94.7 MB (94703047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a060cab1ab5328edd2da6991f2bd63b2c883baf25ccfb9584a9a6944e3b3a8a`  
		Last Modified: Fri, 25 Jan 2019 10:55:43 GMT  
		Size: 30.1 MB (30053357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0326c3d27f63ace8048466f30425fdf8091c20587ba650b9e551333cc266c57c`  
		Last Modified: Fri, 25 Jan 2019 10:55:33 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; 386

```console
$ docker pull ghost@sha256:0a00599b0d758f61bd74c3e867bae11f51255fb11fe85a7cb4fe13ccf94dbd00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.6 MB (195550403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bdbf65356f6fe7a93f416fdbd43c9e3e745ab5ec1e2655503de7a57cd724b3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:41:49 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Jan 2019 13:41:49 GMT
ENV NODE_VERSION=8.15.0
# Wed, 23 Jan 2019 13:42:10 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 23 Jan 2019 13:42:11 GMT
ENV YARN_VERSION=1.12.3
# Wed, 23 Jan 2019 13:42:16 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 23 Jan 2019 13:42:16 GMT
CMD ["node"]
# Thu, 24 Jan 2019 00:37:31 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 Jan 2019 00:37:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 24 Jan 2019 00:37:35 GMT
ENV NODE_ENV=production
# Thu, 24 Jan 2019 00:37:36 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Thu, 24 Jan 2019 00:38:00 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 24 Jan 2019 00:38:00 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 24 Jan 2019 00:38:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 24 Jan 2019 00:40:55 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 24 Jan 2019 00:41:37 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 24 Jan 2019 00:41:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 24 Jan 2019 00:43:22 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 24 Jan 2019 00:43:23 GMT
WORKDIR /var/lib/ghost
# Thu, 24 Jan 2019 00:43:23 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 24 Jan 2019 00:43:23 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Thu, 24 Jan 2019 00:43:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Jan 2019 00:43:24 GMT
EXPOSE 2368
# Thu, 24 Jan 2019 00:43:24 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c92eb48bd2ab47527c451fa10548490aecbca01a92bca802bca12db10e6af1`  
		Last Modified: Wed, 23 Jan 2019 13:48:39 GMT  
		Size: 4.1 KB (4129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6668d8db8b6e4252537915f906ace6a26cce9ff32305c8c028e73208c7ac04`  
		Last Modified: Wed, 23 Jan 2019 13:48:47 GMT  
		Size: 27.8 MB (27846086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666e9d0ebc6ffcc9369b869deac894dabfb393149bb438760061c98d70d6ac7a`  
		Last Modified: Wed, 23 Jan 2019 13:48:40 GMT  
		Size: 1.3 MB (1321442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4a705ad0df2c0493288d8ee0130eab891795971fcb3de9e8b79b0198322072`  
		Last Modified: Thu, 24 Jan 2019 00:43:50 GMT  
		Size: 480.8 KB (480827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dee939a6ff703570747b141ce490e51f2bd3aaf81c9ff690b9092d8e0703518`  
		Last Modified: Thu, 24 Jan 2019 00:44:06 GMT  
		Size: 17.3 MB (17296481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11d1c3ce2a6a23b8c716550d74ecf324f4d0acceedbfb2e4a86c18c340e37916`  
		Last Modified: Thu, 24 Jan 2019 00:45:21 GMT  
		Size: 94.6 MB (94649301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ae324fc16d0912fbc966d7fbedb4418de4ea7c0c162477e26bbe02c25c42e3`  
		Last Modified: Thu, 24 Jan 2019 00:44:50 GMT  
		Size: 30.8 MB (30804433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad282d850d9ccb9bf8f08e9eb54e89ed94011530bbe87189070ca1f7937cbb0`  
		Last Modified: Thu, 24 Jan 2019 00:44:42 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; ppc64le

```console
$ docker pull ghost@sha256:ee14ed582858fd88c3d36a120d640d291ae60b97569f5c3d898e61b35ff76951
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.5 MB (194498580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f84014ffb794cb3df9d0e9df252cc52d15ef1222a56659261bba92cb7f12033`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:18:10 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Jan 2019 11:18:11 GMT
ENV NODE_VERSION=8.15.0
# Wed, 23 Jan 2019 11:19:30 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 23 Jan 2019 11:19:33 GMT
ENV YARN_VERSION=1.12.3
# Wed, 23 Jan 2019 11:19:43 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 23 Jan 2019 11:19:46 GMT
CMD ["node"]
# Wed, 23 Jan 2019 16:08:56 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 16:09:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 23 Jan 2019 16:09:12 GMT
ENV NODE_ENV=production
# Wed, 23 Jan 2019 16:09:14 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Wed, 23 Jan 2019 16:09:56 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 23 Jan 2019 16:10:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Jan 2019 16:10:06 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Jan 2019 16:18:07 GMT
ENV GHOST_VERSION=1.25.6
# Wed, 23 Jan 2019 16:20:28 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 23 Jan 2019 16:20:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 23 Jan 2019 16:24:27 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 23 Jan 2019 16:24:33 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Jan 2019 16:24:36 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Jan 2019 16:24:38 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Wed, 23 Jan 2019 16:24:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 16:24:46 GMT
EXPOSE 2368
# Wed, 23 Jan 2019 16:24:50 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a766d1d22112297db33de78132c7073630477ad53e6e92e7cb05122c4b6ccc`  
		Last Modified: Wed, 23 Jan 2019 11:23:20 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c411bd79c2cae58ac4f8c05b5a2964b45017cf2e645ceab50586d4f2d0ebb0e`  
		Last Modified: Wed, 23 Jan 2019 11:23:24 GMT  
		Size: 27.0 MB (26964310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4581b7a99dcfe2412fe9b64b01b8f053bcd9a834833046d0e987c08e792c5c0c`  
		Last Modified: Wed, 23 Jan 2019 11:23:20 GMT  
		Size: 1.3 MB (1321459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e13d521328925462036a70b5b581584da305dd89eb4db4f0c0596e5f37fafda`  
		Last Modified: Wed, 23 Jan 2019 16:25:30 GMT  
		Size: 470.1 KB (470077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e3573221a5bc73c9feb479210bfe47ef60f9f3012bfec01f1c4da967585864`  
		Last Modified: Wed, 23 Jan 2019 16:25:57 GMT  
		Size: 17.3 MB (17294283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95ec95018aa12343ac50bd943b9d600c36a295171b5031b6956866e34c943b1`  
		Last Modified: Wed, 23 Jan 2019 16:28:55 GMT  
		Size: 94.7 MB (94694711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d59d1d84b3b7b9f30ae7ebe9c6c2baa2b893d9d735c31be388f1102542c718e`  
		Last Modified: Wed, 23 Jan 2019 16:27:41 GMT  
		Size: 31.0 MB (30993641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdf9f3bc3eee8d68eb3b0d79d4729bed65a3d1b4fc518a2a82bb117a6799fe6`  
		Last Modified: Wed, 23 Jan 2019 16:27:28 GMT  
		Size: 588.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; s390x

```console
$ docker pull ghost@sha256:41699a85296df02b909af608d7cd97f57a9d4aae5a099eaba915feb9763cf1ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.0 MB (194958582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e2031bd2a2557e985152c49c5f4d7ac940e941fb4ae6f3b45f5b67aef56607b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Jan 2019 13:44:20 GMT
ENV NODE_VERSION=8.15.0
# Wed, 23 Jan 2019 13:44:39 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 23 Jan 2019 13:44:39 GMT
ENV YARN_VERSION=1.12.3
# Wed, 23 Jan 2019 13:44:44 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 23 Jan 2019 13:44:44 GMT
CMD ["node"]
# Wed, 23 Jan 2019 17:04:55 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 17:05:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 23 Jan 2019 17:05:00 GMT
ENV NODE_ENV=production
# Wed, 23 Jan 2019 17:05:00 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Wed, 23 Jan 2019 17:05:31 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 23 Jan 2019 17:05:32 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Jan 2019 17:05:32 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Jan 2019 17:08:44 GMT
ENV GHOST_VERSION=1.25.6
# Wed, 23 Jan 2019 17:09:31 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 23 Jan 2019 17:09:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 23 Jan 2019 17:11:19 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 23 Jan 2019 17:11:19 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Jan 2019 17:11:20 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Jan 2019 17:11:20 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Wed, 23 Jan 2019 17:11:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 17:11:20 GMT
EXPOSE 2368
# Wed, 23 Jan 2019 17:11:21 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:943436c91b5f066c4c7f15b527ecf0d019c4ff13ac400f05465d4c897454f8d9`  
		Last Modified: Wed, 23 Jan 2019 13:47:11 GMT  
		Size: 4.1 KB (4149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:229dbe6e33f226818ddb9f0a0f2b5fe1b709f67344a239e593daf594363c717f`  
		Last Modified: Wed, 23 Jan 2019 13:47:17 GMT  
		Size: 27.9 MB (27860441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebaf089dcd45c396980f1d3143664c4cbdfef06fe2febed9f9ac99a4c292eeb`  
		Last Modified: Wed, 23 Jan 2019 13:47:11 GMT  
		Size: 1.3 MB (1321432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2562bcde35c4aaac3a162606a3d104303d56f55b46df202da142aff45b350c60`  
		Last Modified: Wed, 23 Jan 2019 17:11:57 GMT  
		Size: 487.0 KB (487048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5619ccae1d3eda20c00c2b88388cb8fd3823372864226760a4d2517bfd9c73f3`  
		Last Modified: Wed, 23 Jan 2019 17:12:05 GMT  
		Size: 17.3 MB (17296285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e03ce68553b37be05494d1fa7e78c35f02363507a18fe2a853838c4dc1b8af`  
		Last Modified: Wed, 23 Jan 2019 17:12:58 GMT  
		Size: 94.7 MB (94689948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502c10a77d1fff6f676261d31172157285e81179dfc9776cdb14baac17aa3131`  
		Last Modified: Wed, 23 Jan 2019 17:12:45 GMT  
		Size: 30.9 MB (30945190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b2dda505032ff0957326eec5481f66b85687e84647aa397eabbbda9c0de850`  
		Last Modified: Wed, 23 Jan 2019 17:12:36 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25.6`

```console
$ docker pull ghost@sha256:fb9eab2b06a04487909f7e3dcda17f3ff7a8fc2c9954daafcb839fe3671e7371
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:1.25.6` - linux; amd64

```console
$ docker pull ghost@sha256:7a3c07f0e9b518cfdb3b030bb38c6c816780133d76f00c09213845e34eb698e0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.2 MB (185226506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dac9c585bd38f8c4415c0a826d393e65b43b1c31ffa5e8841e915234bf15d974`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 01:40:17 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Jan 2019 01:40:17 GMT
ENV NODE_VERSION=8.15.0
# Wed, 23 Jan 2019 01:40:38 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 23 Jan 2019 01:40:38 GMT
ENV YARN_VERSION=1.12.3
# Wed, 23 Jan 2019 01:40:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 23 Jan 2019 01:40:42 GMT
CMD ["node"]
# Wed, 23 Jan 2019 11:59:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 11:59:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 23 Jan 2019 11:59:57 GMT
ENV NODE_ENV=production
# Wed, 23 Jan 2019 11:59:57 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Wed, 23 Jan 2019 12:00:18 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 23 Jan 2019 12:00:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Jan 2019 12:00:19 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Jan 2019 12:01:39 GMT
ENV GHOST_VERSION=1.25.6
# Wed, 23 Jan 2019 12:02:23 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 23 Jan 2019 12:02:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 23 Jan 2019 12:02:34 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 23 Jan 2019 12:02:35 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Jan 2019 12:02:35 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Jan 2019 12:02:35 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Wed, 23 Jan 2019 12:02:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 12:02:35 GMT
EXPOSE 2368
# Wed, 23 Jan 2019 12:02:36 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe40c2f302dba633d57bef2c4c9d12172f36811251bf361bd47e359d7f71b03c`  
		Last Modified: Wed, 23 Jan 2019 01:50:57 GMT  
		Size: 4.1 KB (4144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624869bdd9d8c6ebd9d476211c1a261e32d8ecb2b0bd3ccde0a2941ab1898a94`  
		Last Modified: Wed, 23 Jan 2019 01:51:10 GMT  
		Size: 28.0 MB (28018539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e38240342a3979ccf1b00df4aea43605ed2fa2a60fea27538d2cdc7877a66e`  
		Last Modified: Wed, 23 Jan 2019 01:50:57 GMT  
		Size: 1.3 MB (1321435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138999c01f1496effab9350af40e285a31424fadd85db3463175c0bce03aa647`  
		Last Modified: Wed, 23 Jan 2019 12:02:54 GMT  
		Size: 500.9 KB (500917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2945c5e7a28219ae62e39fd0242bf80a20430d08f29ce77c1545b3ffa9dd4bf`  
		Last Modified: Wed, 23 Jan 2019 12:03:02 GMT  
		Size: 17.3 MB (17294243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a0ab8de6ede58012a5f7b8ca7b5954debc143c468113c90fc324b6be3aef24e`  
		Last Modified: Wed, 23 Jan 2019 12:03:57 GMT  
		Size: 102.4 MB (102390482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97f2e108699f21ce1e64851569cd6e59178b6a75b09358bf2c56adca0afb408`  
		Last Modified: Wed, 23 Jan 2019 12:03:38 GMT  
		Size: 13.2 MB (13195454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1fa9798745b95102b7665fb5b57d92e648ffb3c5ee63511551e220b7aff30e`  
		Last Modified: Wed, 23 Jan 2019 12:03:36 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.6` - linux; arm variant v7

```console
$ docker pull ghost@sha256:704e0f901f169212ce965018228b5dd6d3ea658686ae5cf2b905c808e7255775
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187950815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8c5d9e5ce2af60c9892fe46c75af673ced03521aa2eae00c55037cc39969033`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:30:42 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Jan 2019 14:30:42 GMT
ENV NODE_VERSION=8.15.0
# Wed, 23 Jan 2019 14:31:09 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 23 Jan 2019 14:31:10 GMT
ENV YARN_VERSION=1.12.3
# Wed, 23 Jan 2019 14:31:15 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 23 Jan 2019 14:31:16 GMT
CMD ["node"]
# Wed, 23 Jan 2019 18:47:01 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 18:47:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 23 Jan 2019 18:47:07 GMT
ENV NODE_ENV=production
# Wed, 23 Jan 2019 18:47:08 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Wed, 23 Jan 2019 18:47:53 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 23 Jan 2019 18:47:55 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Jan 2019 18:47:55 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Jan 2019 18:53:54 GMT
ENV GHOST_VERSION=1.25.6
# Wed, 23 Jan 2019 18:55:20 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 23 Jan 2019 18:55:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 23 Jan 2019 18:58:45 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 23 Jan 2019 18:58:47 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Jan 2019 18:58:47 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Jan 2019 18:58:48 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Wed, 23 Jan 2019 18:58:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 18:58:49 GMT
EXPOSE 2368
# Wed, 23 Jan 2019 18:58:49 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f4692f2fb079485f299b39d614d6d77d41b0d9c83afbae32744cb050cf8f52`  
		Last Modified: Wed, 23 Jan 2019 14:41:47 GMT  
		Size: 4.2 KB (4162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac681316033d603196fd2b01ab13729da30f49471060bc0d9cdaa31c168d90d`  
		Last Modified: Wed, 23 Jan 2019 14:41:56 GMT  
		Size: 25.5 MB (25468487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71de7f9136ba33f6b925f411770a6ee29d34a7380cafaf5c7a1116e5add18fe9`  
		Last Modified: Wed, 23 Jan 2019 14:41:47 GMT  
		Size: 1.3 MB (1321440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce1b87d5f949d4f0f6005eb9fad08483c619997d974fcb397d347388a9ce514`  
		Last Modified: Wed, 23 Jan 2019 18:59:05 GMT  
		Size: 475.4 KB (475433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e9246331a6a27435cb52b42bc42d020456a00fce3a71175a12ecc41668d176`  
		Last Modified: Wed, 23 Jan 2019 18:59:14 GMT  
		Size: 17.3 MB (17299329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5537b91ccc314d80ee6748df9e787e84845ff6c09a8b0ca4f7bc259c77f885b`  
		Last Modified: Wed, 23 Jan 2019 19:00:42 GMT  
		Size: 94.7 MB (94661682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8215781bea1336d7d4fab95cf28ae3859101f580cc28594e31878c4cf236dc1`  
		Last Modified: Wed, 23 Jan 2019 19:00:11 GMT  
		Size: 29.4 MB (29429410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca94b15f74a5f6227b8ca2b27c31b9e918214d49d08ed654ebf552d5336174e`  
		Last Modified: Wed, 23 Jan 2019 19:00:03 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.6` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:f40eebaec299fb57b34ccef8ff859e9f19f94bcc0b0425baa114582377eaf7ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.9 MB (190899446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4b4b9fa3e69d990889015504cbbd5a8279edf06915fbe1d6ed7e0c44c55fad8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 02:53:41 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 Jan 2019 02:53:43 GMT
ENV NODE_VERSION=8.15.0
# Fri, 25 Jan 2019 02:59:02 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 Jan 2019 02:59:09 GMT
ENV YARN_VERSION=1.12.3
# Fri, 25 Jan 2019 02:59:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 Jan 2019 02:59:28 GMT
CMD ["node"]
# Fri, 25 Jan 2019 10:39:03 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Jan 2019 10:39:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 Jan 2019 10:39:14 GMT
ENV NODE_ENV=production
# Fri, 25 Jan 2019 10:39:14 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Fri, 25 Jan 2019 10:40:05 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 25 Jan 2019 10:40:06 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 25 Jan 2019 10:40:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 25 Jan 2019 10:47:22 GMT
ENV GHOST_VERSION=1.25.6
# Fri, 25 Jan 2019 10:48:38 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 25 Jan 2019 10:48:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 25 Jan 2019 10:53:27 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 25 Jan 2019 10:53:28 GMT
WORKDIR /var/lib/ghost
# Fri, 25 Jan 2019 10:53:28 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 25 Jan 2019 10:53:29 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Fri, 25 Jan 2019 10:53:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Jan 2019 10:53:30 GMT
EXPOSE 2368
# Fri, 25 Jan 2019 10:53:31 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617fda78caaace4ad1093eef6567038c8b406acd7cde81cf40b41c92c7e44e1e`  
		Last Modified: Fri, 25 Jan 2019 03:08:32 GMT  
		Size: 4.2 KB (4162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8664d5d4d0982592324b149d3f84e4f5fb6f3f5e9c5bd4f80ad32d084c92b5a4`  
		Last Modified: Fri, 25 Jan 2019 03:08:43 GMT  
		Size: 26.7 MB (26701316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eecd0c83edb8974e89cb24d12d1804b1cf04b1f8d2fcdb530a0029827262b34`  
		Last Modified: Fri, 25 Jan 2019 03:08:33 GMT  
		Size: 1.3 MB (1321446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80e991258136c8d0a92a6c3cc4a70a7aa7076b22379409990feaeb8a2036c129`  
		Last Modified: Fri, 25 Jan 2019 10:54:05 GMT  
		Size: 468.9 KB (468939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ef34c5c0d9eb9d3ac0631d78fcd53a372a5df3c44a20206a17fa172a15c346`  
		Last Modified: Fri, 25 Jan 2019 10:54:46 GMT  
		Size: 17.3 MB (17296413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db153e44bfe7e4be16756a929eae28d9033223fa0be25756674864faf78d0526`  
		Last Modified: Fri, 25 Jan 2019 10:56:12 GMT  
		Size: 94.7 MB (94703047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a060cab1ab5328edd2da6991f2bd63b2c883baf25ccfb9584a9a6944e3b3a8a`  
		Last Modified: Fri, 25 Jan 2019 10:55:43 GMT  
		Size: 30.1 MB (30053357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0326c3d27f63ace8048466f30425fdf8091c20587ba650b9e551333cc266c57c`  
		Last Modified: Fri, 25 Jan 2019 10:55:33 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.6` - linux; 386

```console
$ docker pull ghost@sha256:0a00599b0d758f61bd74c3e867bae11f51255fb11fe85a7cb4fe13ccf94dbd00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.6 MB (195550403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bdbf65356f6fe7a93f416fdbd43c9e3e745ab5ec1e2655503de7a57cd724b3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:41:49 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Jan 2019 13:41:49 GMT
ENV NODE_VERSION=8.15.0
# Wed, 23 Jan 2019 13:42:10 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 23 Jan 2019 13:42:11 GMT
ENV YARN_VERSION=1.12.3
# Wed, 23 Jan 2019 13:42:16 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 23 Jan 2019 13:42:16 GMT
CMD ["node"]
# Thu, 24 Jan 2019 00:37:31 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 Jan 2019 00:37:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 24 Jan 2019 00:37:35 GMT
ENV NODE_ENV=production
# Thu, 24 Jan 2019 00:37:36 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Thu, 24 Jan 2019 00:38:00 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 24 Jan 2019 00:38:00 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 24 Jan 2019 00:38:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 24 Jan 2019 00:40:55 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 24 Jan 2019 00:41:37 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 24 Jan 2019 00:41:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 24 Jan 2019 00:43:22 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 24 Jan 2019 00:43:23 GMT
WORKDIR /var/lib/ghost
# Thu, 24 Jan 2019 00:43:23 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 24 Jan 2019 00:43:23 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Thu, 24 Jan 2019 00:43:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Jan 2019 00:43:24 GMT
EXPOSE 2368
# Thu, 24 Jan 2019 00:43:24 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c92eb48bd2ab47527c451fa10548490aecbca01a92bca802bca12db10e6af1`  
		Last Modified: Wed, 23 Jan 2019 13:48:39 GMT  
		Size: 4.1 KB (4129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6668d8db8b6e4252537915f906ace6a26cce9ff32305c8c028e73208c7ac04`  
		Last Modified: Wed, 23 Jan 2019 13:48:47 GMT  
		Size: 27.8 MB (27846086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666e9d0ebc6ffcc9369b869deac894dabfb393149bb438760061c98d70d6ac7a`  
		Last Modified: Wed, 23 Jan 2019 13:48:40 GMT  
		Size: 1.3 MB (1321442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4a705ad0df2c0493288d8ee0130eab891795971fcb3de9e8b79b0198322072`  
		Last Modified: Thu, 24 Jan 2019 00:43:50 GMT  
		Size: 480.8 KB (480827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dee939a6ff703570747b141ce490e51f2bd3aaf81c9ff690b9092d8e0703518`  
		Last Modified: Thu, 24 Jan 2019 00:44:06 GMT  
		Size: 17.3 MB (17296481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11d1c3ce2a6a23b8c716550d74ecf324f4d0acceedbfb2e4a86c18c340e37916`  
		Last Modified: Thu, 24 Jan 2019 00:45:21 GMT  
		Size: 94.6 MB (94649301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ae324fc16d0912fbc966d7fbedb4418de4ea7c0c162477e26bbe02c25c42e3`  
		Last Modified: Thu, 24 Jan 2019 00:44:50 GMT  
		Size: 30.8 MB (30804433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad282d850d9ccb9bf8f08e9eb54e89ed94011530bbe87189070ca1f7937cbb0`  
		Last Modified: Thu, 24 Jan 2019 00:44:42 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.6` - linux; ppc64le

```console
$ docker pull ghost@sha256:ee14ed582858fd88c3d36a120d640d291ae60b97569f5c3d898e61b35ff76951
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.5 MB (194498580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f84014ffb794cb3df9d0e9df252cc52d15ef1222a56659261bba92cb7f12033`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:18:10 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Jan 2019 11:18:11 GMT
ENV NODE_VERSION=8.15.0
# Wed, 23 Jan 2019 11:19:30 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 23 Jan 2019 11:19:33 GMT
ENV YARN_VERSION=1.12.3
# Wed, 23 Jan 2019 11:19:43 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 23 Jan 2019 11:19:46 GMT
CMD ["node"]
# Wed, 23 Jan 2019 16:08:56 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 16:09:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 23 Jan 2019 16:09:12 GMT
ENV NODE_ENV=production
# Wed, 23 Jan 2019 16:09:14 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Wed, 23 Jan 2019 16:09:56 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 23 Jan 2019 16:10:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Jan 2019 16:10:06 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Jan 2019 16:18:07 GMT
ENV GHOST_VERSION=1.25.6
# Wed, 23 Jan 2019 16:20:28 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 23 Jan 2019 16:20:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 23 Jan 2019 16:24:27 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 23 Jan 2019 16:24:33 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Jan 2019 16:24:36 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Jan 2019 16:24:38 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Wed, 23 Jan 2019 16:24:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 16:24:46 GMT
EXPOSE 2368
# Wed, 23 Jan 2019 16:24:50 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a766d1d22112297db33de78132c7073630477ad53e6e92e7cb05122c4b6ccc`  
		Last Modified: Wed, 23 Jan 2019 11:23:20 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c411bd79c2cae58ac4f8c05b5a2964b45017cf2e645ceab50586d4f2d0ebb0e`  
		Last Modified: Wed, 23 Jan 2019 11:23:24 GMT  
		Size: 27.0 MB (26964310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4581b7a99dcfe2412fe9b64b01b8f053bcd9a834833046d0e987c08e792c5c0c`  
		Last Modified: Wed, 23 Jan 2019 11:23:20 GMT  
		Size: 1.3 MB (1321459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e13d521328925462036a70b5b581584da305dd89eb4db4f0c0596e5f37fafda`  
		Last Modified: Wed, 23 Jan 2019 16:25:30 GMT  
		Size: 470.1 KB (470077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e3573221a5bc73c9feb479210bfe47ef60f9f3012bfec01f1c4da967585864`  
		Last Modified: Wed, 23 Jan 2019 16:25:57 GMT  
		Size: 17.3 MB (17294283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95ec95018aa12343ac50bd943b9d600c36a295171b5031b6956866e34c943b1`  
		Last Modified: Wed, 23 Jan 2019 16:28:55 GMT  
		Size: 94.7 MB (94694711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d59d1d84b3b7b9f30ae7ebe9c6c2baa2b893d9d735c31be388f1102542c718e`  
		Last Modified: Wed, 23 Jan 2019 16:27:41 GMT  
		Size: 31.0 MB (30993641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdf9f3bc3eee8d68eb3b0d79d4729bed65a3d1b4fc518a2a82bb117a6799fe6`  
		Last Modified: Wed, 23 Jan 2019 16:27:28 GMT  
		Size: 588.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.6` - linux; s390x

```console
$ docker pull ghost@sha256:41699a85296df02b909af608d7cd97f57a9d4aae5a099eaba915feb9763cf1ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.0 MB (194958582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e2031bd2a2557e985152c49c5f4d7ac940e941fb4ae6f3b45f5b67aef56607b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Jan 2019 13:44:20 GMT
ENV NODE_VERSION=8.15.0
# Wed, 23 Jan 2019 13:44:39 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 23 Jan 2019 13:44:39 GMT
ENV YARN_VERSION=1.12.3
# Wed, 23 Jan 2019 13:44:44 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 23 Jan 2019 13:44:44 GMT
CMD ["node"]
# Wed, 23 Jan 2019 17:04:55 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 17:05:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 23 Jan 2019 17:05:00 GMT
ENV NODE_ENV=production
# Wed, 23 Jan 2019 17:05:00 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Wed, 23 Jan 2019 17:05:31 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 23 Jan 2019 17:05:32 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Jan 2019 17:05:32 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Jan 2019 17:08:44 GMT
ENV GHOST_VERSION=1.25.6
# Wed, 23 Jan 2019 17:09:31 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 23 Jan 2019 17:09:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 23 Jan 2019 17:11:19 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 23 Jan 2019 17:11:19 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Jan 2019 17:11:20 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Jan 2019 17:11:20 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Wed, 23 Jan 2019 17:11:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 17:11:20 GMT
EXPOSE 2368
# Wed, 23 Jan 2019 17:11:21 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:943436c91b5f066c4c7f15b527ecf0d019c4ff13ac400f05465d4c897454f8d9`  
		Last Modified: Wed, 23 Jan 2019 13:47:11 GMT  
		Size: 4.1 KB (4149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:229dbe6e33f226818ddb9f0a0f2b5fe1b709f67344a239e593daf594363c717f`  
		Last Modified: Wed, 23 Jan 2019 13:47:17 GMT  
		Size: 27.9 MB (27860441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebaf089dcd45c396980f1d3143664c4cbdfef06fe2febed9f9ac99a4c292eeb`  
		Last Modified: Wed, 23 Jan 2019 13:47:11 GMT  
		Size: 1.3 MB (1321432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2562bcde35c4aaac3a162606a3d104303d56f55b46df202da142aff45b350c60`  
		Last Modified: Wed, 23 Jan 2019 17:11:57 GMT  
		Size: 487.0 KB (487048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5619ccae1d3eda20c00c2b88388cb8fd3823372864226760a4d2517bfd9c73f3`  
		Last Modified: Wed, 23 Jan 2019 17:12:05 GMT  
		Size: 17.3 MB (17296285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e03ce68553b37be05494d1fa7e78c35f02363507a18fe2a853838c4dc1b8af`  
		Last Modified: Wed, 23 Jan 2019 17:12:58 GMT  
		Size: 94.7 MB (94689948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502c10a77d1fff6f676261d31172157285e81179dfc9776cdb14baac17aa3131`  
		Last Modified: Wed, 23 Jan 2019 17:12:45 GMT  
		Size: 30.9 MB (30945190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b2dda505032ff0957326eec5481f66b85687e84647aa397eabbbda9c0de850`  
		Last Modified: Wed, 23 Jan 2019 17:12:36 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25.6-alpine`

```console
$ docker pull ghost@sha256:814dcd703fa6b1081df2b3a757b55f122c8c6180d7669241bb6615eca74a52d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1.25.6-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:e500426c95c2821169bda0b969bf503969aa86bfdf483c6f15b792037a1a7acd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.5 MB (156475780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:212c160ae927b82a5545317ef923201281c7a99372d5a993e0e33a1b460ba9be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:19:53 GMT
ENV NODE_VERSION=8.15.0
# Wed, 30 Jan 2019 22:38:42 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 30 Jan 2019 22:38:42 GMT
ENV YARN_VERSION=1.12.3
# Wed, 30 Jan 2019 22:38:46 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 30 Jan 2019 22:38:47 GMT
CMD ["node"]
# Thu, 31 Jan 2019 02:45:00 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 31 Jan 2019 02:45:02 GMT
RUN apk add --no-cache 		bash
# Thu, 31 Jan 2019 02:45:02 GMT
ENV NODE_ENV=production
# Thu, 31 Jan 2019 02:45:02 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Thu, 31 Jan 2019 02:45:22 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 31 Jan 2019 02:45:23 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 31 Jan 2019 02:45:23 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 31 Jan 2019 02:46:30 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 31 Jan 2019 02:47:06 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 31 Jan 2019 02:47:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 31 Jan 2019 02:47:15 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Thu, 31 Jan 2019 02:47:15 GMT
WORKDIR /var/lib/ghost
# Thu, 31 Jan 2019 02:47:15 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 31 Jan 2019 02:47:16 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Thu, 31 Jan 2019 02:47:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Jan 2019 02:47:16 GMT
EXPOSE 2368
# Thu, 31 Jan 2019 02:47:16 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62154f231947a79f0fa2c21b5b6ea90f191a1012773684fb766bf43139551ff0`  
		Last Modified: Thu, 31 Jan 2019 00:00:35 GMT  
		Size: 18.9 MB (18870481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf10a8404b6ca2d9f9e9d1e18fd89f175148e6bfea6c0b927655f34cd29c9bc`  
		Last Modified: Thu, 31 Jan 2019 00:00:28 GMT  
		Size: 1.3 MB (1328402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111312b8db58c62fdeb0aab4e32ea20e3fb480ea2d21ed246deeb167ea92d8c0`  
		Last Modified: Thu, 31 Jan 2019 02:47:32 GMT  
		Size: 9.4 KB (9400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a8b3dd4622e13269b367c59e999a524d915753622ee783f8b27f01d8032fba5`  
		Last Modified: Thu, 31 Jan 2019 02:47:31 GMT  
		Size: 1.2 MB (1173424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77aff150715c7f4fe42d85baafa9caab39f8c49a5e4a02a4dccae9b2beb7a8a4`  
		Last Modified: Thu, 31 Jan 2019 02:47:36 GMT  
		Size: 17.3 MB (17298726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed25be147f6447fd1aa3b3e5784c0bf0f03f7a902ed401daa8a26cf10fdfb9d`  
		Last Modified: Thu, 31 Jan 2019 02:48:18 GMT  
		Size: 102.4 MB (102392377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c30a9aa2b0b14e1caea46b3bb152539cd6c29038581e2344df982f49912740`  
		Last Modified: Thu, 31 Jan 2019 02:48:01 GMT  
		Size: 13.2 MB (13195360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aa44f665096db0216e3bce49f97aa18e7d9d0515f8b3855d4ad004106452d2d`  
		Last Modified: Thu, 31 Jan 2019 02:47:59 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.6-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:228bf994d946b25b756e14f91b0cbd05d16037d09cd6e2289ea2a4affaaed087
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.1 MB (164090865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71bc49fd82411d0c9682befe6a9242353b289651b3510f93930f228689866628`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 08:49:29 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 08:53:08 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 08:53:09 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 08:53:15 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 08:53:15 GMT
CMD ["node"]
# Thu, 27 Dec 2018 09:20:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 27 Dec 2018 09:20:36 GMT
RUN apk add --no-cache 		bash
# Thu, 27 Dec 2018 09:20:37 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 08:49:47 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 08:50:27 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 08:50:29 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 08:50:29 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 15 Jan 2019 08:52:31 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 15 Jan 2019 08:54:02 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 15 Jan 2019 08:54:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 18 Jan 2019 08:57:24 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 18 Jan 2019 08:57:25 GMT
WORKDIR /var/lib/ghost
# Fri, 18 Jan 2019 08:57:25 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 18 Jan 2019 08:57:26 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Fri, 18 Jan 2019 08:57:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Jan 2019 08:57:27 GMT
EXPOSE 2368
# Fri, 18 Jan 2019 08:57:27 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a33101f563c74e80a756003d7812491bc13ad62b10593df58ccec3a28f40642`  
		Last Modified: Thu, 27 Dec 2018 09:04:36 GMT  
		Size: 17.8 MB (17831628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d15459f81630dbcf79b68a8e15c0300aa17f823bc4df54948fd5204bb7a8ee`  
		Last Modified: Thu, 27 Dec 2018 09:04:30 GMT  
		Size: 1.3 MB (1325196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe110be79516b7582538224302a880e345ea8362e4fdfa61903d08b033225322`  
		Last Modified: Thu, 27 Dec 2018 09:25:08 GMT  
		Size: 9.3 KB (9327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea1104fe603b86955cec7ab3d7312f10ab7cdfdf8fb837694bf767f845e0e7c2`  
		Last Modified: Thu, 27 Dec 2018 09:25:10 GMT  
		Size: 1.1 MB (1127621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5942d7f76e5583d4199ec765d2ac873f0679565d1295a4172cebce3495ef43`  
		Last Modified: Tue, 15 Jan 2019 08:54:30 GMT  
		Size: 17.3 MB (17285857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54158b19c7f8897043104790653861f4da041fd95529f643ade647b15bc157d`  
		Last Modified: Tue, 15 Jan 2019 08:55:57 GMT  
		Size: 94.7 MB (94664104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2295fb2351f27d640a3fe7b804a280075434f5b6a511024d3faa9cc1e958a205`  
		Last Modified: Fri, 18 Jan 2019 08:58:53 GMT  
		Size: 29.7 MB (29700600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e5c4594f7e1176a3d42bec7fd2ef77310795fd20c2662fd774930c1009b432`  
		Last Modified: Fri, 18 Jan 2019 08:58:44 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.6-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:d51c9be33d4f78d35072edf4b2dbaef6e5501456e5f582237c75f533c0007dbb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.7 MB (165671900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:307d88b0d0cbb68b0aab000fa10c82e5fe0fa4978cacf8c8406193cbd36501cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 09:17:29 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 09:26:26 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 09:26:29 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 09:26:40 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 09:26:42 GMT
CMD ["node"]
# Thu, 27 Dec 2018 10:24:08 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 27 Dec 2018 10:24:13 GMT
RUN apk add --no-cache 		bash
# Thu, 27 Dec 2018 10:24:14 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 01:51:30 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 01:52:07 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 01:52:11 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 01:52:12 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 15 Jan 2019 01:57:54 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 15 Jan 2019 01:59:18 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 15 Jan 2019 01:59:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 15 Jan 2019 02:01:33 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Tue, 15 Jan 2019 02:01:37 GMT
WORKDIR /var/lib/ghost
# Tue, 15 Jan 2019 02:01:39 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 18 Jan 2019 09:36:39 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Fri, 18 Jan 2019 09:36:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Jan 2019 09:36:45 GMT
EXPOSE 2368
# Fri, 18 Jan 2019 09:36:48 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f37791ddbc3bf7eb446234fe7ce08914ecd76a3569a127be1576ded5ee8dc15`  
		Last Modified: Thu, 27 Dec 2018 09:56:32 GMT  
		Size: 18.6 MB (18647141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32837a7c41250506279f9130ccfdf4fe7c116588585c998b44ecf39a08efa571`  
		Last Modified: Thu, 27 Dec 2018 09:56:22 GMT  
		Size: 1.3 MB (1325206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f65df539d26d62283ae35c831b4121fcb2873934895434f212762e49ec407c3`  
		Last Modified: Thu, 27 Dec 2018 10:35:26 GMT  
		Size: 9.9 KB (9851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75697fd77251842aeaa611c8bfc3684f84610a28ab60c982bfec8344643baef8`  
		Last Modified: Thu, 27 Dec 2018 10:35:28 GMT  
		Size: 1.2 MB (1188850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c0d253522f16219f0a68e4dc0fbcc4e084b014030fb3c12f8fefa0f62778cb`  
		Last Modified: Tue, 15 Jan 2019 09:32:45 GMT  
		Size: 17.3 MB (17286622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620d502085d174fb6d0eda4b771b7755f94c9ecfa51330e4ea6caee84280a916`  
		Last Modified: Tue, 15 Jan 2019 09:36:40 GMT  
		Size: 94.7 MB (94691622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd51c02007b15cd1ac7a6fdaaf5d107838d12e135e5c8e40c46f6545d155fe4`  
		Last Modified: Fri, 18 Jan 2019 09:40:08 GMT  
		Size: 30.3 MB (30327081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dee9429390c239a06e14736598ea50d3ad27326a83eaabf9dfb1aef4f74fdd`  
		Last Modified: Fri, 18 Jan 2019 09:39:58 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25-alpine`

```console
$ docker pull ghost@sha256:814dcd703fa6b1081df2b3a757b55f122c8c6180d7669241bb6615eca74a52d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1.25-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:e500426c95c2821169bda0b969bf503969aa86bfdf483c6f15b792037a1a7acd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.5 MB (156475780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:212c160ae927b82a5545317ef923201281c7a99372d5a993e0e33a1b460ba9be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:19:53 GMT
ENV NODE_VERSION=8.15.0
# Wed, 30 Jan 2019 22:38:42 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 30 Jan 2019 22:38:42 GMT
ENV YARN_VERSION=1.12.3
# Wed, 30 Jan 2019 22:38:46 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 30 Jan 2019 22:38:47 GMT
CMD ["node"]
# Thu, 31 Jan 2019 02:45:00 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 31 Jan 2019 02:45:02 GMT
RUN apk add --no-cache 		bash
# Thu, 31 Jan 2019 02:45:02 GMT
ENV NODE_ENV=production
# Thu, 31 Jan 2019 02:45:02 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Thu, 31 Jan 2019 02:45:22 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 31 Jan 2019 02:45:23 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 31 Jan 2019 02:45:23 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 31 Jan 2019 02:46:30 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 31 Jan 2019 02:47:06 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 31 Jan 2019 02:47:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 31 Jan 2019 02:47:15 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Thu, 31 Jan 2019 02:47:15 GMT
WORKDIR /var/lib/ghost
# Thu, 31 Jan 2019 02:47:15 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 31 Jan 2019 02:47:16 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Thu, 31 Jan 2019 02:47:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Jan 2019 02:47:16 GMT
EXPOSE 2368
# Thu, 31 Jan 2019 02:47:16 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62154f231947a79f0fa2c21b5b6ea90f191a1012773684fb766bf43139551ff0`  
		Last Modified: Thu, 31 Jan 2019 00:00:35 GMT  
		Size: 18.9 MB (18870481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf10a8404b6ca2d9f9e9d1e18fd89f175148e6bfea6c0b927655f34cd29c9bc`  
		Last Modified: Thu, 31 Jan 2019 00:00:28 GMT  
		Size: 1.3 MB (1328402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111312b8db58c62fdeb0aab4e32ea20e3fb480ea2d21ed246deeb167ea92d8c0`  
		Last Modified: Thu, 31 Jan 2019 02:47:32 GMT  
		Size: 9.4 KB (9400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a8b3dd4622e13269b367c59e999a524d915753622ee783f8b27f01d8032fba5`  
		Last Modified: Thu, 31 Jan 2019 02:47:31 GMT  
		Size: 1.2 MB (1173424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77aff150715c7f4fe42d85baafa9caab39f8c49a5e4a02a4dccae9b2beb7a8a4`  
		Last Modified: Thu, 31 Jan 2019 02:47:36 GMT  
		Size: 17.3 MB (17298726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed25be147f6447fd1aa3b3e5784c0bf0f03f7a902ed401daa8a26cf10fdfb9d`  
		Last Modified: Thu, 31 Jan 2019 02:48:18 GMT  
		Size: 102.4 MB (102392377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c30a9aa2b0b14e1caea46b3bb152539cd6c29038581e2344df982f49912740`  
		Last Modified: Thu, 31 Jan 2019 02:48:01 GMT  
		Size: 13.2 MB (13195360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aa44f665096db0216e3bce49f97aa18e7d9d0515f8b3855d4ad004106452d2d`  
		Last Modified: Thu, 31 Jan 2019 02:47:59 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:228bf994d946b25b756e14f91b0cbd05d16037d09cd6e2289ea2a4affaaed087
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.1 MB (164090865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71bc49fd82411d0c9682befe6a9242353b289651b3510f93930f228689866628`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 08:49:29 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 08:53:08 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 08:53:09 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 08:53:15 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 08:53:15 GMT
CMD ["node"]
# Thu, 27 Dec 2018 09:20:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 27 Dec 2018 09:20:36 GMT
RUN apk add --no-cache 		bash
# Thu, 27 Dec 2018 09:20:37 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 08:49:47 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 08:50:27 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 08:50:29 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 08:50:29 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 15 Jan 2019 08:52:31 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 15 Jan 2019 08:54:02 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 15 Jan 2019 08:54:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 18 Jan 2019 08:57:24 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 18 Jan 2019 08:57:25 GMT
WORKDIR /var/lib/ghost
# Fri, 18 Jan 2019 08:57:25 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 18 Jan 2019 08:57:26 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Fri, 18 Jan 2019 08:57:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Jan 2019 08:57:27 GMT
EXPOSE 2368
# Fri, 18 Jan 2019 08:57:27 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a33101f563c74e80a756003d7812491bc13ad62b10593df58ccec3a28f40642`  
		Last Modified: Thu, 27 Dec 2018 09:04:36 GMT  
		Size: 17.8 MB (17831628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d15459f81630dbcf79b68a8e15c0300aa17f823bc4df54948fd5204bb7a8ee`  
		Last Modified: Thu, 27 Dec 2018 09:04:30 GMT  
		Size: 1.3 MB (1325196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe110be79516b7582538224302a880e345ea8362e4fdfa61903d08b033225322`  
		Last Modified: Thu, 27 Dec 2018 09:25:08 GMT  
		Size: 9.3 KB (9327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea1104fe603b86955cec7ab3d7312f10ab7cdfdf8fb837694bf767f845e0e7c2`  
		Last Modified: Thu, 27 Dec 2018 09:25:10 GMT  
		Size: 1.1 MB (1127621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5942d7f76e5583d4199ec765d2ac873f0679565d1295a4172cebce3495ef43`  
		Last Modified: Tue, 15 Jan 2019 08:54:30 GMT  
		Size: 17.3 MB (17285857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54158b19c7f8897043104790653861f4da041fd95529f643ade647b15bc157d`  
		Last Modified: Tue, 15 Jan 2019 08:55:57 GMT  
		Size: 94.7 MB (94664104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2295fb2351f27d640a3fe7b804a280075434f5b6a511024d3faa9cc1e958a205`  
		Last Modified: Fri, 18 Jan 2019 08:58:53 GMT  
		Size: 29.7 MB (29700600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e5c4594f7e1176a3d42bec7fd2ef77310795fd20c2662fd774930c1009b432`  
		Last Modified: Fri, 18 Jan 2019 08:58:44 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:d51c9be33d4f78d35072edf4b2dbaef6e5501456e5f582237c75f533c0007dbb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.7 MB (165671900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:307d88b0d0cbb68b0aab000fa10c82e5fe0fa4978cacf8c8406193cbd36501cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 09:17:29 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 09:26:26 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 09:26:29 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 09:26:40 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 09:26:42 GMT
CMD ["node"]
# Thu, 27 Dec 2018 10:24:08 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 27 Dec 2018 10:24:13 GMT
RUN apk add --no-cache 		bash
# Thu, 27 Dec 2018 10:24:14 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 01:51:30 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 01:52:07 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 01:52:11 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 01:52:12 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 15 Jan 2019 01:57:54 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 15 Jan 2019 01:59:18 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 15 Jan 2019 01:59:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 15 Jan 2019 02:01:33 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Tue, 15 Jan 2019 02:01:37 GMT
WORKDIR /var/lib/ghost
# Tue, 15 Jan 2019 02:01:39 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 18 Jan 2019 09:36:39 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Fri, 18 Jan 2019 09:36:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Jan 2019 09:36:45 GMT
EXPOSE 2368
# Fri, 18 Jan 2019 09:36:48 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f37791ddbc3bf7eb446234fe7ce08914ecd76a3569a127be1576ded5ee8dc15`  
		Last Modified: Thu, 27 Dec 2018 09:56:32 GMT  
		Size: 18.6 MB (18647141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32837a7c41250506279f9130ccfdf4fe7c116588585c998b44ecf39a08efa571`  
		Last Modified: Thu, 27 Dec 2018 09:56:22 GMT  
		Size: 1.3 MB (1325206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f65df539d26d62283ae35c831b4121fcb2873934895434f212762e49ec407c3`  
		Last Modified: Thu, 27 Dec 2018 10:35:26 GMT  
		Size: 9.9 KB (9851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75697fd77251842aeaa611c8bfc3684f84610a28ab60c982bfec8344643baef8`  
		Last Modified: Thu, 27 Dec 2018 10:35:28 GMT  
		Size: 1.2 MB (1188850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c0d253522f16219f0a68e4dc0fbcc4e084b014030fb3c12f8fefa0f62778cb`  
		Last Modified: Tue, 15 Jan 2019 09:32:45 GMT  
		Size: 17.3 MB (17286622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620d502085d174fb6d0eda4b771b7755f94c9ecfa51330e4ea6caee84280a916`  
		Last Modified: Tue, 15 Jan 2019 09:36:40 GMT  
		Size: 94.7 MB (94691622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd51c02007b15cd1ac7a6fdaaf5d107838d12e135e5c8e40c46f6545d155fe4`  
		Last Modified: Fri, 18 Jan 2019 09:40:08 GMT  
		Size: 30.3 MB (30327081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dee9429390c239a06e14736598ea50d3ad27326a83eaabf9dfb1aef4f74fdd`  
		Last Modified: Fri, 18 Jan 2019 09:39:58 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:814dcd703fa6b1081df2b3a757b55f122c8c6180d7669241bb6615eca74a52d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:e500426c95c2821169bda0b969bf503969aa86bfdf483c6f15b792037a1a7acd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.5 MB (156475780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:212c160ae927b82a5545317ef923201281c7a99372d5a993e0e33a1b460ba9be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:19:53 GMT
ENV NODE_VERSION=8.15.0
# Wed, 30 Jan 2019 22:38:42 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 30 Jan 2019 22:38:42 GMT
ENV YARN_VERSION=1.12.3
# Wed, 30 Jan 2019 22:38:46 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 30 Jan 2019 22:38:47 GMT
CMD ["node"]
# Thu, 31 Jan 2019 02:45:00 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 31 Jan 2019 02:45:02 GMT
RUN apk add --no-cache 		bash
# Thu, 31 Jan 2019 02:45:02 GMT
ENV NODE_ENV=production
# Thu, 31 Jan 2019 02:45:02 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Thu, 31 Jan 2019 02:45:22 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 31 Jan 2019 02:45:23 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 31 Jan 2019 02:45:23 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 31 Jan 2019 02:46:30 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 31 Jan 2019 02:47:06 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 31 Jan 2019 02:47:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 31 Jan 2019 02:47:15 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Thu, 31 Jan 2019 02:47:15 GMT
WORKDIR /var/lib/ghost
# Thu, 31 Jan 2019 02:47:15 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 31 Jan 2019 02:47:16 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Thu, 31 Jan 2019 02:47:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Jan 2019 02:47:16 GMT
EXPOSE 2368
# Thu, 31 Jan 2019 02:47:16 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62154f231947a79f0fa2c21b5b6ea90f191a1012773684fb766bf43139551ff0`  
		Last Modified: Thu, 31 Jan 2019 00:00:35 GMT  
		Size: 18.9 MB (18870481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf10a8404b6ca2d9f9e9d1e18fd89f175148e6bfea6c0b927655f34cd29c9bc`  
		Last Modified: Thu, 31 Jan 2019 00:00:28 GMT  
		Size: 1.3 MB (1328402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111312b8db58c62fdeb0aab4e32ea20e3fb480ea2d21ed246deeb167ea92d8c0`  
		Last Modified: Thu, 31 Jan 2019 02:47:32 GMT  
		Size: 9.4 KB (9400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a8b3dd4622e13269b367c59e999a524d915753622ee783f8b27f01d8032fba5`  
		Last Modified: Thu, 31 Jan 2019 02:47:31 GMT  
		Size: 1.2 MB (1173424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77aff150715c7f4fe42d85baafa9caab39f8c49a5e4a02a4dccae9b2beb7a8a4`  
		Last Modified: Thu, 31 Jan 2019 02:47:36 GMT  
		Size: 17.3 MB (17298726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed25be147f6447fd1aa3b3e5784c0bf0f03f7a902ed401daa8a26cf10fdfb9d`  
		Last Modified: Thu, 31 Jan 2019 02:48:18 GMT  
		Size: 102.4 MB (102392377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c30a9aa2b0b14e1caea46b3bb152539cd6c29038581e2344df982f49912740`  
		Last Modified: Thu, 31 Jan 2019 02:48:01 GMT  
		Size: 13.2 MB (13195360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aa44f665096db0216e3bce49f97aa18e7d9d0515f8b3855d4ad004106452d2d`  
		Last Modified: Thu, 31 Jan 2019 02:47:59 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:228bf994d946b25b756e14f91b0cbd05d16037d09cd6e2289ea2a4affaaed087
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.1 MB (164090865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71bc49fd82411d0c9682befe6a9242353b289651b3510f93930f228689866628`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 08:49:29 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 08:53:08 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 08:53:09 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 08:53:15 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 08:53:15 GMT
CMD ["node"]
# Thu, 27 Dec 2018 09:20:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 27 Dec 2018 09:20:36 GMT
RUN apk add --no-cache 		bash
# Thu, 27 Dec 2018 09:20:37 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 08:49:47 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 08:50:27 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 08:50:29 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 08:50:29 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 15 Jan 2019 08:52:31 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 15 Jan 2019 08:54:02 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 15 Jan 2019 08:54:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 18 Jan 2019 08:57:24 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 18 Jan 2019 08:57:25 GMT
WORKDIR /var/lib/ghost
# Fri, 18 Jan 2019 08:57:25 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 18 Jan 2019 08:57:26 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Fri, 18 Jan 2019 08:57:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Jan 2019 08:57:27 GMT
EXPOSE 2368
# Fri, 18 Jan 2019 08:57:27 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a33101f563c74e80a756003d7812491bc13ad62b10593df58ccec3a28f40642`  
		Last Modified: Thu, 27 Dec 2018 09:04:36 GMT  
		Size: 17.8 MB (17831628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d15459f81630dbcf79b68a8e15c0300aa17f823bc4df54948fd5204bb7a8ee`  
		Last Modified: Thu, 27 Dec 2018 09:04:30 GMT  
		Size: 1.3 MB (1325196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe110be79516b7582538224302a880e345ea8362e4fdfa61903d08b033225322`  
		Last Modified: Thu, 27 Dec 2018 09:25:08 GMT  
		Size: 9.3 KB (9327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea1104fe603b86955cec7ab3d7312f10ab7cdfdf8fb837694bf767f845e0e7c2`  
		Last Modified: Thu, 27 Dec 2018 09:25:10 GMT  
		Size: 1.1 MB (1127621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5942d7f76e5583d4199ec765d2ac873f0679565d1295a4172cebce3495ef43`  
		Last Modified: Tue, 15 Jan 2019 08:54:30 GMT  
		Size: 17.3 MB (17285857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54158b19c7f8897043104790653861f4da041fd95529f643ade647b15bc157d`  
		Last Modified: Tue, 15 Jan 2019 08:55:57 GMT  
		Size: 94.7 MB (94664104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2295fb2351f27d640a3fe7b804a280075434f5b6a511024d3faa9cc1e958a205`  
		Last Modified: Fri, 18 Jan 2019 08:58:53 GMT  
		Size: 29.7 MB (29700600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e5c4594f7e1176a3d42bec7fd2ef77310795fd20c2662fd774930c1009b432`  
		Last Modified: Fri, 18 Jan 2019 08:58:44 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:d51c9be33d4f78d35072edf4b2dbaef6e5501456e5f582237c75f533c0007dbb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.7 MB (165671900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:307d88b0d0cbb68b0aab000fa10c82e5fe0fa4978cacf8c8406193cbd36501cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 09:17:29 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 09:26:26 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 09:26:29 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 09:26:40 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 09:26:42 GMT
CMD ["node"]
# Thu, 27 Dec 2018 10:24:08 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 27 Dec 2018 10:24:13 GMT
RUN apk add --no-cache 		bash
# Thu, 27 Dec 2018 10:24:14 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 01:51:30 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 01:52:07 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 01:52:11 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 01:52:12 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 15 Jan 2019 01:57:54 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 15 Jan 2019 01:59:18 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 15 Jan 2019 01:59:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 15 Jan 2019 02:01:33 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Tue, 15 Jan 2019 02:01:37 GMT
WORKDIR /var/lib/ghost
# Tue, 15 Jan 2019 02:01:39 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 18 Jan 2019 09:36:39 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Fri, 18 Jan 2019 09:36:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Jan 2019 09:36:45 GMT
EXPOSE 2368
# Fri, 18 Jan 2019 09:36:48 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f37791ddbc3bf7eb446234fe7ce08914ecd76a3569a127be1576ded5ee8dc15`  
		Last Modified: Thu, 27 Dec 2018 09:56:32 GMT  
		Size: 18.6 MB (18647141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32837a7c41250506279f9130ccfdf4fe7c116588585c998b44ecf39a08efa571`  
		Last Modified: Thu, 27 Dec 2018 09:56:22 GMT  
		Size: 1.3 MB (1325206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f65df539d26d62283ae35c831b4121fcb2873934895434f212762e49ec407c3`  
		Last Modified: Thu, 27 Dec 2018 10:35:26 GMT  
		Size: 9.9 KB (9851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75697fd77251842aeaa611c8bfc3684f84610a28ab60c982bfec8344643baef8`  
		Last Modified: Thu, 27 Dec 2018 10:35:28 GMT  
		Size: 1.2 MB (1188850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c0d253522f16219f0a68e4dc0fbcc4e084b014030fb3c12f8fefa0f62778cb`  
		Last Modified: Tue, 15 Jan 2019 09:32:45 GMT  
		Size: 17.3 MB (17286622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620d502085d174fb6d0eda4b771b7755f94c9ecfa51330e4ea6caee84280a916`  
		Last Modified: Tue, 15 Jan 2019 09:36:40 GMT  
		Size: 94.7 MB (94691622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd51c02007b15cd1ac7a6fdaaf5d107838d12e135e5c8e40c46f6545d155fe4`  
		Last Modified: Fri, 18 Jan 2019 09:40:08 GMT  
		Size: 30.3 MB (30327081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dee9429390c239a06e14736598ea50d3ad27326a83eaabf9dfb1aef4f74fdd`  
		Last Modified: Fri, 18 Jan 2019 09:39:58 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2`

```console
$ docker pull ghost@sha256:49f5ad6f9f91d72170b27b59a604730d53be7e9d0ba8d51e2bf3aa9db5fcd62b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `ghost:2` - linux; amd64

```console
$ docker pull ghost@sha256:30706bb4561cdcdc37f6d4be24639a6032b40aee381f3ad047ee4ee8368e30c4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.6 MB (182595158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5d8b7b840d4ee4074c666abbd2142a69f0b9490c562f5033c9dd72cdc38b92e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 01:40:17 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Jan 2019 01:40:17 GMT
ENV NODE_VERSION=8.15.0
# Wed, 23 Jan 2019 01:40:38 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 23 Jan 2019 01:40:38 GMT
ENV YARN_VERSION=1.12.3
# Wed, 23 Jan 2019 01:40:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 23 Jan 2019 01:40:42 GMT
CMD ["node"]
# Wed, 23 Jan 2019 11:59:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 11:59:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 23 Jan 2019 11:59:57 GMT
ENV NODE_ENV=production
# Wed, 23 Jan 2019 11:59:57 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Wed, 23 Jan 2019 12:00:18 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 23 Jan 2019 12:00:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Jan 2019 12:00:19 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Feb 2019 01:23:33 GMT
ENV GHOST_VERSION=2.13.2
# Wed, 06 Feb 2019 01:24:19 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 06 Feb 2019 01:24:28 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Feb 2019 01:24:28 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Feb 2019 01:24:29 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Feb 2019 01:24:29 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 06 Feb 2019 01:24:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 01:24:29 GMT
EXPOSE 2368
# Wed, 06 Feb 2019 01:24:29 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe40c2f302dba633d57bef2c4c9d12172f36811251bf361bd47e359d7f71b03c`  
		Last Modified: Wed, 23 Jan 2019 01:50:57 GMT  
		Size: 4.1 KB (4144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624869bdd9d8c6ebd9d476211c1a261e32d8ecb2b0bd3ccde0a2941ab1898a94`  
		Last Modified: Wed, 23 Jan 2019 01:51:10 GMT  
		Size: 28.0 MB (28018539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e38240342a3979ccf1b00df4aea43605ed2fa2a60fea27538d2cdc7877a66e`  
		Last Modified: Wed, 23 Jan 2019 01:50:57 GMT  
		Size: 1.3 MB (1321435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138999c01f1496effab9350af40e285a31424fadd85db3463175c0bce03aa647`  
		Last Modified: Wed, 23 Jan 2019 12:02:54 GMT  
		Size: 500.9 KB (500917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2945c5e7a28219ae62e39fd0242bf80a20430d08f29ce77c1545b3ffa9dd4bf`  
		Last Modified: Wed, 23 Jan 2019 12:03:02 GMT  
		Size: 17.3 MB (17294243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2458b0655d13cb9b3d388caf17ead1398a3cb7080b04a0c7d86e962cc0a732e`  
		Last Modified: Wed, 06 Feb 2019 01:26:38 GMT  
		Size: 111.6 MB (111576880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a894de0948c9c9d1badfda981abedd28283981e5c23fd7eab05322628325d6`  
		Last Modified: Wed, 06 Feb 2019 01:26:02 GMT  
		Size: 1.4 MB (1377735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a8e12ea18aa864647bd8edbc6fcadb9cff4122f1a39d3660d99d546fedf084`  
		Last Modified: Wed, 06 Feb 2019 01:26:02 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:928d20d279fc9717b8bbfab81f99c2db560144cf3126aa325d22c3a5f2f5a27c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.4 MB (181386550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c10a8f432b5eabcc6446b6fd9dbe4396b98dbd92780861ae11222cdff55223a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 02:53:41 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 Jan 2019 02:53:43 GMT
ENV NODE_VERSION=8.15.0
# Fri, 25 Jan 2019 02:59:02 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 Jan 2019 02:59:09 GMT
ENV YARN_VERSION=1.12.3
# Fri, 25 Jan 2019 02:59:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 Jan 2019 02:59:28 GMT
CMD ["node"]
# Fri, 25 Jan 2019 10:39:03 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Jan 2019 10:39:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 Jan 2019 10:39:14 GMT
ENV NODE_ENV=production
# Fri, 25 Jan 2019 10:39:14 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Fri, 25 Jan 2019 10:40:05 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 25 Jan 2019 10:40:06 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 25 Jan 2019 10:40:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Feb 2019 10:20:02 GMT
ENV GHOST_VERSION=2.13.2
# Wed, 06 Feb 2019 10:25:17 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 06 Feb 2019 10:31:44 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Feb 2019 10:31:45 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Feb 2019 10:31:47 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Feb 2019 10:31:50 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 06 Feb 2019 10:31:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 10:31:53 GMT
EXPOSE 2368
# Wed, 06 Feb 2019 10:31:56 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617fda78caaace4ad1093eef6567038c8b406acd7cde81cf40b41c92c7e44e1e`  
		Last Modified: Fri, 25 Jan 2019 03:08:32 GMT  
		Size: 4.2 KB (4162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8664d5d4d0982592324b149d3f84e4f5fb6f3f5e9c5bd4f80ad32d084c92b5a4`  
		Last Modified: Fri, 25 Jan 2019 03:08:43 GMT  
		Size: 26.7 MB (26701316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eecd0c83edb8974e89cb24d12d1804b1cf04b1f8d2fcdb530a0029827262b34`  
		Last Modified: Fri, 25 Jan 2019 03:08:33 GMT  
		Size: 1.3 MB (1321446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80e991258136c8d0a92a6c3cc4a70a7aa7076b22379409990feaeb8a2036c129`  
		Last Modified: Fri, 25 Jan 2019 10:54:05 GMT  
		Size: 468.9 KB (468939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ef34c5c0d9eb9d3ac0631d78fcd53a372a5df3c44a20206a17fa172a15c346`  
		Last Modified: Fri, 25 Jan 2019 10:54:46 GMT  
		Size: 17.3 MB (17296413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde6137ab3ae8deea78ff207d6dcd9dc0fd936557beced8b856198ddf401c1d9`  
		Last Modified: Wed, 06 Feb 2019 10:34:35 GMT  
		Size: 95.7 MB (95686440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deb7b48bdbc8f97ddb48b655c96f505c5b8d0cb92b5b25b50a03aacb55bf9d1`  
		Last Modified: Wed, 06 Feb 2019 10:34:00 GMT  
		Size: 19.6 MB (19557093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a44baae8b4da5c4faf1389d7b4825b518a4647885f58fc30caa09ab16df0e9`  
		Last Modified: Wed, 06 Feb 2019 10:33:52 GMT  
		Size: 561.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; 386

```console
$ docker pull ghost@sha256:99d99b338fd1057de915e80813efc4aa3da540b6c6b624bba13ea5fbbedd77d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.4 MB (172358481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b77d0e8ce709d38c9078aba81240f0bb14ccdfee3e92491c1e1e3b638e5f499f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:41:49 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Jan 2019 13:41:49 GMT
ENV NODE_VERSION=8.15.0
# Wed, 23 Jan 2019 13:42:10 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 23 Jan 2019 13:42:11 GMT
ENV YARN_VERSION=1.12.3
# Wed, 23 Jan 2019 13:42:16 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 23 Jan 2019 13:42:16 GMT
CMD ["node"]
# Thu, 24 Jan 2019 00:37:31 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 Jan 2019 00:37:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 24 Jan 2019 00:37:35 GMT
ENV NODE_ENV=production
# Thu, 24 Jan 2019 00:37:36 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Thu, 24 Jan 2019 00:38:00 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 24 Jan 2019 00:38:00 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 24 Jan 2019 00:38:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Feb 2019 12:10:59 GMT
ENV GHOST_VERSION=2.13.2
# Wed, 06 Feb 2019 12:12:24 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 06 Feb 2019 12:14:31 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Feb 2019 12:14:32 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Feb 2019 12:14:32 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Feb 2019 12:14:32 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 06 Feb 2019 12:14:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 12:14:33 GMT
EXPOSE 2368
# Wed, 06 Feb 2019 12:14:33 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c92eb48bd2ab47527c451fa10548490aecbca01a92bca802bca12db10e6af1`  
		Last Modified: Wed, 23 Jan 2019 13:48:39 GMT  
		Size: 4.1 KB (4129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6668d8db8b6e4252537915f906ace6a26cce9ff32305c8c028e73208c7ac04`  
		Last Modified: Wed, 23 Jan 2019 13:48:47 GMT  
		Size: 27.8 MB (27846086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666e9d0ebc6ffcc9369b869deac894dabfb393149bb438760061c98d70d6ac7a`  
		Last Modified: Wed, 23 Jan 2019 13:48:40 GMT  
		Size: 1.3 MB (1321442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4a705ad0df2c0493288d8ee0130eab891795971fcb3de9e8b79b0198322072`  
		Last Modified: Thu, 24 Jan 2019 00:43:50 GMT  
		Size: 480.8 KB (480827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dee939a6ff703570747b141ce490e51f2bd3aaf81c9ff690b9092d8e0703518`  
		Last Modified: Thu, 24 Jan 2019 00:44:06 GMT  
		Size: 17.3 MB (17296481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337d841dd493d4a04dda4a9016944e836656bf24a4cbb72b3b914b9b28c63268`  
		Last Modified: Wed, 06 Feb 2019 12:15:49 GMT  
		Size: 89.7 MB (89676130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d0e5a2455887a1b0e6cba620338d8e0286655d3902f7e2599218164da9329f2`  
		Last Modified: Wed, 06 Feb 2019 12:15:18 GMT  
		Size: 12.6 MB (12585710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6da8277502a8141701cae7da5e798092d8418169a79b4491a6e798fd747db6`  
		Last Modified: Wed, 06 Feb 2019 12:15:13 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; ppc64le

```console
$ docker pull ghost@sha256:97c71136ddccbd3b90e569d9f2e41be6ad6e10ac2fdcec1eadd38d8aabde6a87
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.2 MB (171190822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ad0953fcf8e618dc54f1d0cf2e9f825e2788df2fb3b3d56b8078e4f583ac29c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:18:10 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Jan 2019 11:18:11 GMT
ENV NODE_VERSION=8.15.0
# Wed, 23 Jan 2019 11:19:30 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 23 Jan 2019 11:19:33 GMT
ENV YARN_VERSION=1.12.3
# Wed, 23 Jan 2019 11:19:43 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 23 Jan 2019 11:19:46 GMT
CMD ["node"]
# Wed, 23 Jan 2019 16:08:56 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 16:09:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 23 Jan 2019 16:09:12 GMT
ENV NODE_ENV=production
# Wed, 23 Jan 2019 16:09:14 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Wed, 23 Jan 2019 16:09:56 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 23 Jan 2019 16:10:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Jan 2019 16:10:06 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Feb 2019 09:42:13 GMT
ENV GHOST_VERSION=2.13.2
# Wed, 06 Feb 2019 09:43:59 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 06 Feb 2019 09:47:11 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Feb 2019 09:47:13 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Feb 2019 09:47:14 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Feb 2019 09:47:15 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 06 Feb 2019 09:47:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:47:17 GMT
EXPOSE 2368
# Wed, 06 Feb 2019 09:47:18 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a766d1d22112297db33de78132c7073630477ad53e6e92e7cb05122c4b6ccc`  
		Last Modified: Wed, 23 Jan 2019 11:23:20 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c411bd79c2cae58ac4f8c05b5a2964b45017cf2e645ceab50586d4f2d0ebb0e`  
		Last Modified: Wed, 23 Jan 2019 11:23:24 GMT  
		Size: 27.0 MB (26964310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4581b7a99dcfe2412fe9b64b01b8f053bcd9a834833046d0e987c08e792c5c0c`  
		Last Modified: Wed, 23 Jan 2019 11:23:20 GMT  
		Size: 1.3 MB (1321459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e13d521328925462036a70b5b581584da305dd89eb4db4f0c0596e5f37fafda`  
		Last Modified: Wed, 23 Jan 2019 16:25:30 GMT  
		Size: 470.1 KB (470077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e3573221a5bc73c9feb479210bfe47ef60f9f3012bfec01f1c4da967585864`  
		Last Modified: Wed, 23 Jan 2019 16:25:57 GMT  
		Size: 17.3 MB (17294283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d623a54886083eebd23e7b07a19cbab08616c4b3308c9c94c09d6477c7983b`  
		Last Modified: Wed, 06 Feb 2019 09:53:14 GMT  
		Size: 89.7 MB (89717080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811f229afc02e941996db6ff28e27c37598e8ae96a5ecefab8221e17dc6b8f17`  
		Last Modified: Wed, 06 Feb 2019 09:52:28 GMT  
		Size: 12.7 MB (12663540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63638bdbd9b6ddd88dc0a29eb205d04f9999d5c88a2fdc3f0715b0b30049108e`  
		Last Modified: Wed, 06 Feb 2019 09:52:24 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.13`

```console
$ docker pull ghost@sha256:49f5ad6f9f91d72170b27b59a604730d53be7e9d0ba8d51e2bf3aa9db5fcd62b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `ghost:2.13` - linux; amd64

```console
$ docker pull ghost@sha256:30706bb4561cdcdc37f6d4be24639a6032b40aee381f3ad047ee4ee8368e30c4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.6 MB (182595158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5d8b7b840d4ee4074c666abbd2142a69f0b9490c562f5033c9dd72cdc38b92e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 01:40:17 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Jan 2019 01:40:17 GMT
ENV NODE_VERSION=8.15.0
# Wed, 23 Jan 2019 01:40:38 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 23 Jan 2019 01:40:38 GMT
ENV YARN_VERSION=1.12.3
# Wed, 23 Jan 2019 01:40:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 23 Jan 2019 01:40:42 GMT
CMD ["node"]
# Wed, 23 Jan 2019 11:59:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 11:59:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 23 Jan 2019 11:59:57 GMT
ENV NODE_ENV=production
# Wed, 23 Jan 2019 11:59:57 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Wed, 23 Jan 2019 12:00:18 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 23 Jan 2019 12:00:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Jan 2019 12:00:19 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Feb 2019 01:23:33 GMT
ENV GHOST_VERSION=2.13.2
# Wed, 06 Feb 2019 01:24:19 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 06 Feb 2019 01:24:28 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Feb 2019 01:24:28 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Feb 2019 01:24:29 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Feb 2019 01:24:29 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 06 Feb 2019 01:24:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 01:24:29 GMT
EXPOSE 2368
# Wed, 06 Feb 2019 01:24:29 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe40c2f302dba633d57bef2c4c9d12172f36811251bf361bd47e359d7f71b03c`  
		Last Modified: Wed, 23 Jan 2019 01:50:57 GMT  
		Size: 4.1 KB (4144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624869bdd9d8c6ebd9d476211c1a261e32d8ecb2b0bd3ccde0a2941ab1898a94`  
		Last Modified: Wed, 23 Jan 2019 01:51:10 GMT  
		Size: 28.0 MB (28018539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e38240342a3979ccf1b00df4aea43605ed2fa2a60fea27538d2cdc7877a66e`  
		Last Modified: Wed, 23 Jan 2019 01:50:57 GMT  
		Size: 1.3 MB (1321435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138999c01f1496effab9350af40e285a31424fadd85db3463175c0bce03aa647`  
		Last Modified: Wed, 23 Jan 2019 12:02:54 GMT  
		Size: 500.9 KB (500917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2945c5e7a28219ae62e39fd0242bf80a20430d08f29ce77c1545b3ffa9dd4bf`  
		Last Modified: Wed, 23 Jan 2019 12:03:02 GMT  
		Size: 17.3 MB (17294243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2458b0655d13cb9b3d388caf17ead1398a3cb7080b04a0c7d86e962cc0a732e`  
		Last Modified: Wed, 06 Feb 2019 01:26:38 GMT  
		Size: 111.6 MB (111576880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a894de0948c9c9d1badfda981abedd28283981e5c23fd7eab05322628325d6`  
		Last Modified: Wed, 06 Feb 2019 01:26:02 GMT  
		Size: 1.4 MB (1377735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a8e12ea18aa864647bd8edbc6fcadb9cff4122f1a39d3660d99d546fedf084`  
		Last Modified: Wed, 06 Feb 2019 01:26:02 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.13` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:928d20d279fc9717b8bbfab81f99c2db560144cf3126aa325d22c3a5f2f5a27c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.4 MB (181386550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c10a8f432b5eabcc6446b6fd9dbe4396b98dbd92780861ae11222cdff55223a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 02:53:41 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 Jan 2019 02:53:43 GMT
ENV NODE_VERSION=8.15.0
# Fri, 25 Jan 2019 02:59:02 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 Jan 2019 02:59:09 GMT
ENV YARN_VERSION=1.12.3
# Fri, 25 Jan 2019 02:59:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 Jan 2019 02:59:28 GMT
CMD ["node"]
# Fri, 25 Jan 2019 10:39:03 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Jan 2019 10:39:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 Jan 2019 10:39:14 GMT
ENV NODE_ENV=production
# Fri, 25 Jan 2019 10:39:14 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Fri, 25 Jan 2019 10:40:05 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 25 Jan 2019 10:40:06 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 25 Jan 2019 10:40:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Feb 2019 10:20:02 GMT
ENV GHOST_VERSION=2.13.2
# Wed, 06 Feb 2019 10:25:17 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 06 Feb 2019 10:31:44 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Feb 2019 10:31:45 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Feb 2019 10:31:47 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Feb 2019 10:31:50 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 06 Feb 2019 10:31:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 10:31:53 GMT
EXPOSE 2368
# Wed, 06 Feb 2019 10:31:56 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617fda78caaace4ad1093eef6567038c8b406acd7cde81cf40b41c92c7e44e1e`  
		Last Modified: Fri, 25 Jan 2019 03:08:32 GMT  
		Size: 4.2 KB (4162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8664d5d4d0982592324b149d3f84e4f5fb6f3f5e9c5bd4f80ad32d084c92b5a4`  
		Last Modified: Fri, 25 Jan 2019 03:08:43 GMT  
		Size: 26.7 MB (26701316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eecd0c83edb8974e89cb24d12d1804b1cf04b1f8d2fcdb530a0029827262b34`  
		Last Modified: Fri, 25 Jan 2019 03:08:33 GMT  
		Size: 1.3 MB (1321446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80e991258136c8d0a92a6c3cc4a70a7aa7076b22379409990feaeb8a2036c129`  
		Last Modified: Fri, 25 Jan 2019 10:54:05 GMT  
		Size: 468.9 KB (468939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ef34c5c0d9eb9d3ac0631d78fcd53a372a5df3c44a20206a17fa172a15c346`  
		Last Modified: Fri, 25 Jan 2019 10:54:46 GMT  
		Size: 17.3 MB (17296413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde6137ab3ae8deea78ff207d6dcd9dc0fd936557beced8b856198ddf401c1d9`  
		Last Modified: Wed, 06 Feb 2019 10:34:35 GMT  
		Size: 95.7 MB (95686440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deb7b48bdbc8f97ddb48b655c96f505c5b8d0cb92b5b25b50a03aacb55bf9d1`  
		Last Modified: Wed, 06 Feb 2019 10:34:00 GMT  
		Size: 19.6 MB (19557093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a44baae8b4da5c4faf1389d7b4825b518a4647885f58fc30caa09ab16df0e9`  
		Last Modified: Wed, 06 Feb 2019 10:33:52 GMT  
		Size: 561.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.13` - linux; 386

```console
$ docker pull ghost@sha256:99d99b338fd1057de915e80813efc4aa3da540b6c6b624bba13ea5fbbedd77d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.4 MB (172358481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b77d0e8ce709d38c9078aba81240f0bb14ccdfee3e92491c1e1e3b638e5f499f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:41:49 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Jan 2019 13:41:49 GMT
ENV NODE_VERSION=8.15.0
# Wed, 23 Jan 2019 13:42:10 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 23 Jan 2019 13:42:11 GMT
ENV YARN_VERSION=1.12.3
# Wed, 23 Jan 2019 13:42:16 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 23 Jan 2019 13:42:16 GMT
CMD ["node"]
# Thu, 24 Jan 2019 00:37:31 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 Jan 2019 00:37:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 24 Jan 2019 00:37:35 GMT
ENV NODE_ENV=production
# Thu, 24 Jan 2019 00:37:36 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Thu, 24 Jan 2019 00:38:00 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 24 Jan 2019 00:38:00 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 24 Jan 2019 00:38:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Feb 2019 12:10:59 GMT
ENV GHOST_VERSION=2.13.2
# Wed, 06 Feb 2019 12:12:24 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 06 Feb 2019 12:14:31 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Feb 2019 12:14:32 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Feb 2019 12:14:32 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Feb 2019 12:14:32 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 06 Feb 2019 12:14:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 12:14:33 GMT
EXPOSE 2368
# Wed, 06 Feb 2019 12:14:33 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c92eb48bd2ab47527c451fa10548490aecbca01a92bca802bca12db10e6af1`  
		Last Modified: Wed, 23 Jan 2019 13:48:39 GMT  
		Size: 4.1 KB (4129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6668d8db8b6e4252537915f906ace6a26cce9ff32305c8c028e73208c7ac04`  
		Last Modified: Wed, 23 Jan 2019 13:48:47 GMT  
		Size: 27.8 MB (27846086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666e9d0ebc6ffcc9369b869deac894dabfb393149bb438760061c98d70d6ac7a`  
		Last Modified: Wed, 23 Jan 2019 13:48:40 GMT  
		Size: 1.3 MB (1321442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4a705ad0df2c0493288d8ee0130eab891795971fcb3de9e8b79b0198322072`  
		Last Modified: Thu, 24 Jan 2019 00:43:50 GMT  
		Size: 480.8 KB (480827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dee939a6ff703570747b141ce490e51f2bd3aaf81c9ff690b9092d8e0703518`  
		Last Modified: Thu, 24 Jan 2019 00:44:06 GMT  
		Size: 17.3 MB (17296481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337d841dd493d4a04dda4a9016944e836656bf24a4cbb72b3b914b9b28c63268`  
		Last Modified: Wed, 06 Feb 2019 12:15:49 GMT  
		Size: 89.7 MB (89676130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d0e5a2455887a1b0e6cba620338d8e0286655d3902f7e2599218164da9329f2`  
		Last Modified: Wed, 06 Feb 2019 12:15:18 GMT  
		Size: 12.6 MB (12585710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6da8277502a8141701cae7da5e798092d8418169a79b4491a6e798fd747db6`  
		Last Modified: Wed, 06 Feb 2019 12:15:13 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.13` - linux; ppc64le

```console
$ docker pull ghost@sha256:97c71136ddccbd3b90e569d9f2e41be6ad6e10ac2fdcec1eadd38d8aabde6a87
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.2 MB (171190822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ad0953fcf8e618dc54f1d0cf2e9f825e2788df2fb3b3d56b8078e4f583ac29c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:18:10 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Jan 2019 11:18:11 GMT
ENV NODE_VERSION=8.15.0
# Wed, 23 Jan 2019 11:19:30 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 23 Jan 2019 11:19:33 GMT
ENV YARN_VERSION=1.12.3
# Wed, 23 Jan 2019 11:19:43 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 23 Jan 2019 11:19:46 GMT
CMD ["node"]
# Wed, 23 Jan 2019 16:08:56 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 16:09:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 23 Jan 2019 16:09:12 GMT
ENV NODE_ENV=production
# Wed, 23 Jan 2019 16:09:14 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Wed, 23 Jan 2019 16:09:56 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 23 Jan 2019 16:10:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Jan 2019 16:10:06 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Feb 2019 09:42:13 GMT
ENV GHOST_VERSION=2.13.2
# Wed, 06 Feb 2019 09:43:59 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 06 Feb 2019 09:47:11 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Feb 2019 09:47:13 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Feb 2019 09:47:14 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Feb 2019 09:47:15 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 06 Feb 2019 09:47:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:47:17 GMT
EXPOSE 2368
# Wed, 06 Feb 2019 09:47:18 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a766d1d22112297db33de78132c7073630477ad53e6e92e7cb05122c4b6ccc`  
		Last Modified: Wed, 23 Jan 2019 11:23:20 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c411bd79c2cae58ac4f8c05b5a2964b45017cf2e645ceab50586d4f2d0ebb0e`  
		Last Modified: Wed, 23 Jan 2019 11:23:24 GMT  
		Size: 27.0 MB (26964310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4581b7a99dcfe2412fe9b64b01b8f053bcd9a834833046d0e987c08e792c5c0c`  
		Last Modified: Wed, 23 Jan 2019 11:23:20 GMT  
		Size: 1.3 MB (1321459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e13d521328925462036a70b5b581584da305dd89eb4db4f0c0596e5f37fafda`  
		Last Modified: Wed, 23 Jan 2019 16:25:30 GMT  
		Size: 470.1 KB (470077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e3573221a5bc73c9feb479210bfe47ef60f9f3012bfec01f1c4da967585864`  
		Last Modified: Wed, 23 Jan 2019 16:25:57 GMT  
		Size: 17.3 MB (17294283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d623a54886083eebd23e7b07a19cbab08616c4b3308c9c94c09d6477c7983b`  
		Last Modified: Wed, 06 Feb 2019 09:53:14 GMT  
		Size: 89.7 MB (89717080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811f229afc02e941996db6ff28e27c37598e8ae96a5ecefab8221e17dc6b8f17`  
		Last Modified: Wed, 06 Feb 2019 09:52:28 GMT  
		Size: 12.7 MB (12663540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63638bdbd9b6ddd88dc0a29eb205d04f9999d5c88a2fdc3f0715b0b30049108e`  
		Last Modified: Wed, 06 Feb 2019 09:52:24 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.13.2`

```console
$ docker pull ghost@sha256:49f5ad6f9f91d72170b27b59a604730d53be7e9d0ba8d51e2bf3aa9db5fcd62b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `ghost:2.13.2` - linux; amd64

```console
$ docker pull ghost@sha256:30706bb4561cdcdc37f6d4be24639a6032b40aee381f3ad047ee4ee8368e30c4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.6 MB (182595158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5d8b7b840d4ee4074c666abbd2142a69f0b9490c562f5033c9dd72cdc38b92e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 01:40:17 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Jan 2019 01:40:17 GMT
ENV NODE_VERSION=8.15.0
# Wed, 23 Jan 2019 01:40:38 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 23 Jan 2019 01:40:38 GMT
ENV YARN_VERSION=1.12.3
# Wed, 23 Jan 2019 01:40:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 23 Jan 2019 01:40:42 GMT
CMD ["node"]
# Wed, 23 Jan 2019 11:59:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 11:59:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 23 Jan 2019 11:59:57 GMT
ENV NODE_ENV=production
# Wed, 23 Jan 2019 11:59:57 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Wed, 23 Jan 2019 12:00:18 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 23 Jan 2019 12:00:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Jan 2019 12:00:19 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Feb 2019 01:23:33 GMT
ENV GHOST_VERSION=2.13.2
# Wed, 06 Feb 2019 01:24:19 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 06 Feb 2019 01:24:28 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Feb 2019 01:24:28 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Feb 2019 01:24:29 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Feb 2019 01:24:29 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 06 Feb 2019 01:24:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 01:24:29 GMT
EXPOSE 2368
# Wed, 06 Feb 2019 01:24:29 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe40c2f302dba633d57bef2c4c9d12172f36811251bf361bd47e359d7f71b03c`  
		Last Modified: Wed, 23 Jan 2019 01:50:57 GMT  
		Size: 4.1 KB (4144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624869bdd9d8c6ebd9d476211c1a261e32d8ecb2b0bd3ccde0a2941ab1898a94`  
		Last Modified: Wed, 23 Jan 2019 01:51:10 GMT  
		Size: 28.0 MB (28018539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e38240342a3979ccf1b00df4aea43605ed2fa2a60fea27538d2cdc7877a66e`  
		Last Modified: Wed, 23 Jan 2019 01:50:57 GMT  
		Size: 1.3 MB (1321435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138999c01f1496effab9350af40e285a31424fadd85db3463175c0bce03aa647`  
		Last Modified: Wed, 23 Jan 2019 12:02:54 GMT  
		Size: 500.9 KB (500917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2945c5e7a28219ae62e39fd0242bf80a20430d08f29ce77c1545b3ffa9dd4bf`  
		Last Modified: Wed, 23 Jan 2019 12:03:02 GMT  
		Size: 17.3 MB (17294243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2458b0655d13cb9b3d388caf17ead1398a3cb7080b04a0c7d86e962cc0a732e`  
		Last Modified: Wed, 06 Feb 2019 01:26:38 GMT  
		Size: 111.6 MB (111576880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a894de0948c9c9d1badfda981abedd28283981e5c23fd7eab05322628325d6`  
		Last Modified: Wed, 06 Feb 2019 01:26:02 GMT  
		Size: 1.4 MB (1377735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a8e12ea18aa864647bd8edbc6fcadb9cff4122f1a39d3660d99d546fedf084`  
		Last Modified: Wed, 06 Feb 2019 01:26:02 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.13.2` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:928d20d279fc9717b8bbfab81f99c2db560144cf3126aa325d22c3a5f2f5a27c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.4 MB (181386550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c10a8f432b5eabcc6446b6fd9dbe4396b98dbd92780861ae11222cdff55223a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 02:53:41 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 Jan 2019 02:53:43 GMT
ENV NODE_VERSION=8.15.0
# Fri, 25 Jan 2019 02:59:02 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 Jan 2019 02:59:09 GMT
ENV YARN_VERSION=1.12.3
# Fri, 25 Jan 2019 02:59:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 Jan 2019 02:59:28 GMT
CMD ["node"]
# Fri, 25 Jan 2019 10:39:03 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Jan 2019 10:39:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 Jan 2019 10:39:14 GMT
ENV NODE_ENV=production
# Fri, 25 Jan 2019 10:39:14 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Fri, 25 Jan 2019 10:40:05 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 25 Jan 2019 10:40:06 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 25 Jan 2019 10:40:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Feb 2019 10:20:02 GMT
ENV GHOST_VERSION=2.13.2
# Wed, 06 Feb 2019 10:25:17 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 06 Feb 2019 10:31:44 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Feb 2019 10:31:45 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Feb 2019 10:31:47 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Feb 2019 10:31:50 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 06 Feb 2019 10:31:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 10:31:53 GMT
EXPOSE 2368
# Wed, 06 Feb 2019 10:31:56 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617fda78caaace4ad1093eef6567038c8b406acd7cde81cf40b41c92c7e44e1e`  
		Last Modified: Fri, 25 Jan 2019 03:08:32 GMT  
		Size: 4.2 KB (4162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8664d5d4d0982592324b149d3f84e4f5fb6f3f5e9c5bd4f80ad32d084c92b5a4`  
		Last Modified: Fri, 25 Jan 2019 03:08:43 GMT  
		Size: 26.7 MB (26701316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eecd0c83edb8974e89cb24d12d1804b1cf04b1f8d2fcdb530a0029827262b34`  
		Last Modified: Fri, 25 Jan 2019 03:08:33 GMT  
		Size: 1.3 MB (1321446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80e991258136c8d0a92a6c3cc4a70a7aa7076b22379409990feaeb8a2036c129`  
		Last Modified: Fri, 25 Jan 2019 10:54:05 GMT  
		Size: 468.9 KB (468939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ef34c5c0d9eb9d3ac0631d78fcd53a372a5df3c44a20206a17fa172a15c346`  
		Last Modified: Fri, 25 Jan 2019 10:54:46 GMT  
		Size: 17.3 MB (17296413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde6137ab3ae8deea78ff207d6dcd9dc0fd936557beced8b856198ddf401c1d9`  
		Last Modified: Wed, 06 Feb 2019 10:34:35 GMT  
		Size: 95.7 MB (95686440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deb7b48bdbc8f97ddb48b655c96f505c5b8d0cb92b5b25b50a03aacb55bf9d1`  
		Last Modified: Wed, 06 Feb 2019 10:34:00 GMT  
		Size: 19.6 MB (19557093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a44baae8b4da5c4faf1389d7b4825b518a4647885f58fc30caa09ab16df0e9`  
		Last Modified: Wed, 06 Feb 2019 10:33:52 GMT  
		Size: 561.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.13.2` - linux; 386

```console
$ docker pull ghost@sha256:99d99b338fd1057de915e80813efc4aa3da540b6c6b624bba13ea5fbbedd77d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.4 MB (172358481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b77d0e8ce709d38c9078aba81240f0bb14ccdfee3e92491c1e1e3b638e5f499f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:41:49 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Jan 2019 13:41:49 GMT
ENV NODE_VERSION=8.15.0
# Wed, 23 Jan 2019 13:42:10 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 23 Jan 2019 13:42:11 GMT
ENV YARN_VERSION=1.12.3
# Wed, 23 Jan 2019 13:42:16 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 23 Jan 2019 13:42:16 GMT
CMD ["node"]
# Thu, 24 Jan 2019 00:37:31 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 Jan 2019 00:37:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 24 Jan 2019 00:37:35 GMT
ENV NODE_ENV=production
# Thu, 24 Jan 2019 00:37:36 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Thu, 24 Jan 2019 00:38:00 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 24 Jan 2019 00:38:00 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 24 Jan 2019 00:38:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Feb 2019 12:10:59 GMT
ENV GHOST_VERSION=2.13.2
# Wed, 06 Feb 2019 12:12:24 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 06 Feb 2019 12:14:31 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Feb 2019 12:14:32 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Feb 2019 12:14:32 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Feb 2019 12:14:32 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 06 Feb 2019 12:14:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 12:14:33 GMT
EXPOSE 2368
# Wed, 06 Feb 2019 12:14:33 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c92eb48bd2ab47527c451fa10548490aecbca01a92bca802bca12db10e6af1`  
		Last Modified: Wed, 23 Jan 2019 13:48:39 GMT  
		Size: 4.1 KB (4129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6668d8db8b6e4252537915f906ace6a26cce9ff32305c8c028e73208c7ac04`  
		Last Modified: Wed, 23 Jan 2019 13:48:47 GMT  
		Size: 27.8 MB (27846086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666e9d0ebc6ffcc9369b869deac894dabfb393149bb438760061c98d70d6ac7a`  
		Last Modified: Wed, 23 Jan 2019 13:48:40 GMT  
		Size: 1.3 MB (1321442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4a705ad0df2c0493288d8ee0130eab891795971fcb3de9e8b79b0198322072`  
		Last Modified: Thu, 24 Jan 2019 00:43:50 GMT  
		Size: 480.8 KB (480827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dee939a6ff703570747b141ce490e51f2bd3aaf81c9ff690b9092d8e0703518`  
		Last Modified: Thu, 24 Jan 2019 00:44:06 GMT  
		Size: 17.3 MB (17296481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337d841dd493d4a04dda4a9016944e836656bf24a4cbb72b3b914b9b28c63268`  
		Last Modified: Wed, 06 Feb 2019 12:15:49 GMT  
		Size: 89.7 MB (89676130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d0e5a2455887a1b0e6cba620338d8e0286655d3902f7e2599218164da9329f2`  
		Last Modified: Wed, 06 Feb 2019 12:15:18 GMT  
		Size: 12.6 MB (12585710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6da8277502a8141701cae7da5e798092d8418169a79b4491a6e798fd747db6`  
		Last Modified: Wed, 06 Feb 2019 12:15:13 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.13.2` - linux; ppc64le

```console
$ docker pull ghost@sha256:97c71136ddccbd3b90e569d9f2e41be6ad6e10ac2fdcec1eadd38d8aabde6a87
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.2 MB (171190822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ad0953fcf8e618dc54f1d0cf2e9f825e2788df2fb3b3d56b8078e4f583ac29c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:18:10 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Jan 2019 11:18:11 GMT
ENV NODE_VERSION=8.15.0
# Wed, 23 Jan 2019 11:19:30 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 23 Jan 2019 11:19:33 GMT
ENV YARN_VERSION=1.12.3
# Wed, 23 Jan 2019 11:19:43 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 23 Jan 2019 11:19:46 GMT
CMD ["node"]
# Wed, 23 Jan 2019 16:08:56 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 16:09:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 23 Jan 2019 16:09:12 GMT
ENV NODE_ENV=production
# Wed, 23 Jan 2019 16:09:14 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Wed, 23 Jan 2019 16:09:56 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 23 Jan 2019 16:10:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Jan 2019 16:10:06 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Feb 2019 09:42:13 GMT
ENV GHOST_VERSION=2.13.2
# Wed, 06 Feb 2019 09:43:59 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 06 Feb 2019 09:47:11 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Feb 2019 09:47:13 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Feb 2019 09:47:14 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Feb 2019 09:47:15 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 06 Feb 2019 09:47:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:47:17 GMT
EXPOSE 2368
# Wed, 06 Feb 2019 09:47:18 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a766d1d22112297db33de78132c7073630477ad53e6e92e7cb05122c4b6ccc`  
		Last Modified: Wed, 23 Jan 2019 11:23:20 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c411bd79c2cae58ac4f8c05b5a2964b45017cf2e645ceab50586d4f2d0ebb0e`  
		Last Modified: Wed, 23 Jan 2019 11:23:24 GMT  
		Size: 27.0 MB (26964310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4581b7a99dcfe2412fe9b64b01b8f053bcd9a834833046d0e987c08e792c5c0c`  
		Last Modified: Wed, 23 Jan 2019 11:23:20 GMT  
		Size: 1.3 MB (1321459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e13d521328925462036a70b5b581584da305dd89eb4db4f0c0596e5f37fafda`  
		Last Modified: Wed, 23 Jan 2019 16:25:30 GMT  
		Size: 470.1 KB (470077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e3573221a5bc73c9feb479210bfe47ef60f9f3012bfec01f1c4da967585864`  
		Last Modified: Wed, 23 Jan 2019 16:25:57 GMT  
		Size: 17.3 MB (17294283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d623a54886083eebd23e7b07a19cbab08616c4b3308c9c94c09d6477c7983b`  
		Last Modified: Wed, 06 Feb 2019 09:53:14 GMT  
		Size: 89.7 MB (89717080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811f229afc02e941996db6ff28e27c37598e8ae96a5ecefab8221e17dc6b8f17`  
		Last Modified: Wed, 06 Feb 2019 09:52:28 GMT  
		Size: 12.7 MB (12663540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63638bdbd9b6ddd88dc0a29eb205d04f9999d5c88a2fdc3f0715b0b30049108e`  
		Last Modified: Wed, 06 Feb 2019 09:52:24 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.13.2-alpine`

```console
$ docker pull ghost@sha256:9877bcc8fdfdb1a70873da0be8b592a4656e8d1480f805e38c0a5ec40e6ec18a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:2.13.2-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:acff2e4f7e71974bf3757444abeff516375d7111e42433cfbb52c96b0dc731f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164179616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7f288fe08260a7b5fdd0969abdb06392804755ca888dd49bd00b41af4988b08`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:19:53 GMT
ENV NODE_VERSION=8.15.0
# Wed, 30 Jan 2019 22:38:42 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 30 Jan 2019 22:38:42 GMT
ENV YARN_VERSION=1.12.3
# Wed, 30 Jan 2019 22:38:46 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 30 Jan 2019 22:38:47 GMT
CMD ["node"]
# Thu, 31 Jan 2019 02:45:00 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 31 Jan 2019 02:45:02 GMT
RUN apk add --no-cache 		bash
# Thu, 31 Jan 2019 02:45:02 GMT
ENV NODE_ENV=production
# Thu, 31 Jan 2019 02:45:02 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Thu, 31 Jan 2019 02:45:22 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 31 Jan 2019 02:45:23 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 31 Jan 2019 02:45:23 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Feb 2019 01:24:35 GMT
ENV GHOST_VERSION=2.13.2
# Wed, 06 Feb 2019 01:25:25 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 06 Feb 2019 01:25:35 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 06 Feb 2019 01:25:35 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Feb 2019 01:25:35 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Feb 2019 01:25:35 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 06 Feb 2019 01:25:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 01:25:36 GMT
EXPOSE 2368
# Wed, 06 Feb 2019 01:25:36 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62154f231947a79f0fa2c21b5b6ea90f191a1012773684fb766bf43139551ff0`  
		Last Modified: Thu, 31 Jan 2019 00:00:35 GMT  
		Size: 18.9 MB (18870481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf10a8404b6ca2d9f9e9d1e18fd89f175148e6bfea6c0b927655f34cd29c9bc`  
		Last Modified: Thu, 31 Jan 2019 00:00:28 GMT  
		Size: 1.3 MB (1328402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111312b8db58c62fdeb0aab4e32ea20e3fb480ea2d21ed246deeb167ea92d8c0`  
		Last Modified: Thu, 31 Jan 2019 02:47:32 GMT  
		Size: 9.4 KB (9400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a8b3dd4622e13269b367c59e999a524d915753622ee783f8b27f01d8032fba5`  
		Last Modified: Thu, 31 Jan 2019 02:47:31 GMT  
		Size: 1.2 MB (1173424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77aff150715c7f4fe42d85baafa9caab39f8c49a5e4a02a4dccae9b2beb7a8a4`  
		Last Modified: Thu, 31 Jan 2019 02:47:36 GMT  
		Size: 17.3 MB (17298726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae9e7233c6b31997716aebb6bf0cc5fca67059ba8ae24211df05031eee638c15`  
		Last Modified: Wed, 06 Feb 2019 01:27:12 GMT  
		Size: 112.5 MB (112485005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac874db375018675de63eb7d2fac2317a53fe503d5ab659226079f60847755a9`  
		Last Modified: Wed, 06 Feb 2019 01:26:48 GMT  
		Size: 10.8 MB (10806594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d4a9dd6b6de3de0c7676e1058eda38e232ec29aeec6c99499452d6a5a3b5dac`  
		Last Modified: Wed, 06 Feb 2019 01:26:45 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.13.2-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:d5810c966ad17636b50514ad9dff1dcc19931c7e3da9ec99dcc8e81f0ff56f02
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.5 MB (141534677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b8461fc73feaa5107ac3aa7673f4cb9f31e95f784d8e1ab07499046fb79136`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 08:49:29 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 08:53:08 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 08:53:09 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 08:53:15 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 08:53:15 GMT
CMD ["node"]
# Thu, 27 Dec 2018 09:20:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 27 Dec 2018 09:20:36 GMT
RUN apk add --no-cache 		bash
# Thu, 27 Dec 2018 09:20:37 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 08:49:47 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 08:50:27 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 08:50:29 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 08:50:29 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Feb 2019 08:50:07 GMT
ENV GHOST_VERSION=2.13.2
# Wed, 06 Feb 2019 08:51:45 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 06 Feb 2019 08:54:55 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 06 Feb 2019 08:54:55 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Feb 2019 08:54:56 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Feb 2019 08:54:56 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 06 Feb 2019 08:54:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 08:54:57 GMT
EXPOSE 2368
# Wed, 06 Feb 2019 08:54:57 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a33101f563c74e80a756003d7812491bc13ad62b10593df58ccec3a28f40642`  
		Last Modified: Thu, 27 Dec 2018 09:04:36 GMT  
		Size: 17.8 MB (17831628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d15459f81630dbcf79b68a8e15c0300aa17f823bc4df54948fd5204bb7a8ee`  
		Last Modified: Thu, 27 Dec 2018 09:04:30 GMT  
		Size: 1.3 MB (1325196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe110be79516b7582538224302a880e345ea8362e4fdfa61903d08b033225322`  
		Last Modified: Thu, 27 Dec 2018 09:25:08 GMT  
		Size: 9.3 KB (9327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea1104fe603b86955cec7ab3d7312f10ab7cdfdf8fb837694bf767f845e0e7c2`  
		Last Modified: Thu, 27 Dec 2018 09:25:10 GMT  
		Size: 1.1 MB (1127621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5942d7f76e5583d4199ec765d2ac873f0679565d1295a4172cebce3495ef43`  
		Last Modified: Tue, 15 Jan 2019 08:54:30 GMT  
		Size: 17.3 MB (17285857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:131be60b9d2ed416cd1894e52df623f833addfd0f6190ba44668930f032d71d7`  
		Last Modified: Wed, 06 Feb 2019 08:55:58 GMT  
		Size: 89.7 MB (89678538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052baf69559dc892dfd7763d5086914c126a0601ed302d17f18ce78f1021312a`  
		Last Modified: Wed, 06 Feb 2019 08:55:21 GMT  
		Size: 12.1 MB (12130006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab06dbdffe0afaed8b62ac1393895fcf88895152e6610b11c2b896951b774e6`  
		Last Modified: Wed, 06 Feb 2019 08:55:17 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.13.2-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:c720feafdbe2183fd4feb81da0d36104c09274d8682c766eb20ddf1b7f0e78d6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.8 MB (142841333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23be120a86a8916a9e25013e55b4e014d7548f5de0adf9e541c60fcbc651e510`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 09:17:29 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 09:26:26 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 09:26:29 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 09:26:40 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 09:26:42 GMT
CMD ["node"]
# Thu, 27 Dec 2018 10:24:08 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 27 Dec 2018 10:24:13 GMT
RUN apk add --no-cache 		bash
# Thu, 27 Dec 2018 10:24:14 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 01:51:30 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 01:52:07 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 01:52:11 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 01:52:12 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Feb 2019 09:47:26 GMT
ENV GHOST_VERSION=2.13.2
# Wed, 06 Feb 2019 09:49:08 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 06 Feb 2019 09:51:36 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 06 Feb 2019 09:51:38 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Feb 2019 09:51:40 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Feb 2019 09:51:42 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 06 Feb 2019 09:51:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:51:45 GMT
EXPOSE 2368
# Wed, 06 Feb 2019 09:51:48 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f37791ddbc3bf7eb446234fe7ce08914ecd76a3569a127be1576ded5ee8dc15`  
		Last Modified: Thu, 27 Dec 2018 09:56:32 GMT  
		Size: 18.6 MB (18647141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32837a7c41250506279f9130ccfdf4fe7c116588585c998b44ecf39a08efa571`  
		Last Modified: Thu, 27 Dec 2018 09:56:22 GMT  
		Size: 1.3 MB (1325206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f65df539d26d62283ae35c831b4121fcb2873934895434f212762e49ec407c3`  
		Last Modified: Thu, 27 Dec 2018 10:35:26 GMT  
		Size: 9.9 KB (9851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75697fd77251842aeaa611c8bfc3684f84610a28ab60c982bfec8344643baef8`  
		Last Modified: Thu, 27 Dec 2018 10:35:28 GMT  
		Size: 1.2 MB (1188850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c0d253522f16219f0a68e4dc0fbcc4e084b014030fb3c12f8fefa0f62778cb`  
		Last Modified: Tue, 15 Jan 2019 09:32:45 GMT  
		Size: 17.3 MB (17286622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b7ab6be912eb31bcd3d55683d9c2e3e7f63447ed5ee2f3f92e7cb16c5904f6`  
		Last Modified: Wed, 06 Feb 2019 09:54:21 GMT  
		Size: 89.7 MB (89716524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:500bcf87b99aa131d9634413904bf4427b08ac5521b1cd2f5eedfa0292165fc0`  
		Last Modified: Wed, 06 Feb 2019 09:53:36 GMT  
		Size: 12.5 MB (12471648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:319152fd9cb9456494116481296e920e4952ff6ad6afe5c03a0c6cd141332b6d`  
		Last Modified: Wed, 06 Feb 2019 09:53:32 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.13-alpine`

```console
$ docker pull ghost@sha256:9877bcc8fdfdb1a70873da0be8b592a4656e8d1480f805e38c0a5ec40e6ec18a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:2.13-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:acff2e4f7e71974bf3757444abeff516375d7111e42433cfbb52c96b0dc731f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164179616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7f288fe08260a7b5fdd0969abdb06392804755ca888dd49bd00b41af4988b08`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:19:53 GMT
ENV NODE_VERSION=8.15.0
# Wed, 30 Jan 2019 22:38:42 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 30 Jan 2019 22:38:42 GMT
ENV YARN_VERSION=1.12.3
# Wed, 30 Jan 2019 22:38:46 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 30 Jan 2019 22:38:47 GMT
CMD ["node"]
# Thu, 31 Jan 2019 02:45:00 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 31 Jan 2019 02:45:02 GMT
RUN apk add --no-cache 		bash
# Thu, 31 Jan 2019 02:45:02 GMT
ENV NODE_ENV=production
# Thu, 31 Jan 2019 02:45:02 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Thu, 31 Jan 2019 02:45:22 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 31 Jan 2019 02:45:23 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 31 Jan 2019 02:45:23 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Feb 2019 01:24:35 GMT
ENV GHOST_VERSION=2.13.2
# Wed, 06 Feb 2019 01:25:25 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 06 Feb 2019 01:25:35 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 06 Feb 2019 01:25:35 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Feb 2019 01:25:35 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Feb 2019 01:25:35 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 06 Feb 2019 01:25:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 01:25:36 GMT
EXPOSE 2368
# Wed, 06 Feb 2019 01:25:36 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62154f231947a79f0fa2c21b5b6ea90f191a1012773684fb766bf43139551ff0`  
		Last Modified: Thu, 31 Jan 2019 00:00:35 GMT  
		Size: 18.9 MB (18870481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf10a8404b6ca2d9f9e9d1e18fd89f175148e6bfea6c0b927655f34cd29c9bc`  
		Last Modified: Thu, 31 Jan 2019 00:00:28 GMT  
		Size: 1.3 MB (1328402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111312b8db58c62fdeb0aab4e32ea20e3fb480ea2d21ed246deeb167ea92d8c0`  
		Last Modified: Thu, 31 Jan 2019 02:47:32 GMT  
		Size: 9.4 KB (9400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a8b3dd4622e13269b367c59e999a524d915753622ee783f8b27f01d8032fba5`  
		Last Modified: Thu, 31 Jan 2019 02:47:31 GMT  
		Size: 1.2 MB (1173424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77aff150715c7f4fe42d85baafa9caab39f8c49a5e4a02a4dccae9b2beb7a8a4`  
		Last Modified: Thu, 31 Jan 2019 02:47:36 GMT  
		Size: 17.3 MB (17298726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae9e7233c6b31997716aebb6bf0cc5fca67059ba8ae24211df05031eee638c15`  
		Last Modified: Wed, 06 Feb 2019 01:27:12 GMT  
		Size: 112.5 MB (112485005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac874db375018675de63eb7d2fac2317a53fe503d5ab659226079f60847755a9`  
		Last Modified: Wed, 06 Feb 2019 01:26:48 GMT  
		Size: 10.8 MB (10806594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d4a9dd6b6de3de0c7676e1058eda38e232ec29aeec6c99499452d6a5a3b5dac`  
		Last Modified: Wed, 06 Feb 2019 01:26:45 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.13-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:d5810c966ad17636b50514ad9dff1dcc19931c7e3da9ec99dcc8e81f0ff56f02
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.5 MB (141534677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b8461fc73feaa5107ac3aa7673f4cb9f31e95f784d8e1ab07499046fb79136`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 08:49:29 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 08:53:08 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 08:53:09 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 08:53:15 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 08:53:15 GMT
CMD ["node"]
# Thu, 27 Dec 2018 09:20:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 27 Dec 2018 09:20:36 GMT
RUN apk add --no-cache 		bash
# Thu, 27 Dec 2018 09:20:37 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 08:49:47 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 08:50:27 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 08:50:29 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 08:50:29 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Feb 2019 08:50:07 GMT
ENV GHOST_VERSION=2.13.2
# Wed, 06 Feb 2019 08:51:45 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 06 Feb 2019 08:54:55 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 06 Feb 2019 08:54:55 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Feb 2019 08:54:56 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Feb 2019 08:54:56 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 06 Feb 2019 08:54:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 08:54:57 GMT
EXPOSE 2368
# Wed, 06 Feb 2019 08:54:57 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a33101f563c74e80a756003d7812491bc13ad62b10593df58ccec3a28f40642`  
		Last Modified: Thu, 27 Dec 2018 09:04:36 GMT  
		Size: 17.8 MB (17831628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d15459f81630dbcf79b68a8e15c0300aa17f823bc4df54948fd5204bb7a8ee`  
		Last Modified: Thu, 27 Dec 2018 09:04:30 GMT  
		Size: 1.3 MB (1325196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe110be79516b7582538224302a880e345ea8362e4fdfa61903d08b033225322`  
		Last Modified: Thu, 27 Dec 2018 09:25:08 GMT  
		Size: 9.3 KB (9327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea1104fe603b86955cec7ab3d7312f10ab7cdfdf8fb837694bf767f845e0e7c2`  
		Last Modified: Thu, 27 Dec 2018 09:25:10 GMT  
		Size: 1.1 MB (1127621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5942d7f76e5583d4199ec765d2ac873f0679565d1295a4172cebce3495ef43`  
		Last Modified: Tue, 15 Jan 2019 08:54:30 GMT  
		Size: 17.3 MB (17285857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:131be60b9d2ed416cd1894e52df623f833addfd0f6190ba44668930f032d71d7`  
		Last Modified: Wed, 06 Feb 2019 08:55:58 GMT  
		Size: 89.7 MB (89678538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052baf69559dc892dfd7763d5086914c126a0601ed302d17f18ce78f1021312a`  
		Last Modified: Wed, 06 Feb 2019 08:55:21 GMT  
		Size: 12.1 MB (12130006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab06dbdffe0afaed8b62ac1393895fcf88895152e6610b11c2b896951b774e6`  
		Last Modified: Wed, 06 Feb 2019 08:55:17 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.13-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:c720feafdbe2183fd4feb81da0d36104c09274d8682c766eb20ddf1b7f0e78d6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.8 MB (142841333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23be120a86a8916a9e25013e55b4e014d7548f5de0adf9e541c60fcbc651e510`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 09:17:29 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 09:26:26 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 09:26:29 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 09:26:40 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 09:26:42 GMT
CMD ["node"]
# Thu, 27 Dec 2018 10:24:08 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 27 Dec 2018 10:24:13 GMT
RUN apk add --no-cache 		bash
# Thu, 27 Dec 2018 10:24:14 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 01:51:30 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 01:52:07 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 01:52:11 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 01:52:12 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Feb 2019 09:47:26 GMT
ENV GHOST_VERSION=2.13.2
# Wed, 06 Feb 2019 09:49:08 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 06 Feb 2019 09:51:36 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 06 Feb 2019 09:51:38 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Feb 2019 09:51:40 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Feb 2019 09:51:42 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 06 Feb 2019 09:51:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:51:45 GMT
EXPOSE 2368
# Wed, 06 Feb 2019 09:51:48 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f37791ddbc3bf7eb446234fe7ce08914ecd76a3569a127be1576ded5ee8dc15`  
		Last Modified: Thu, 27 Dec 2018 09:56:32 GMT  
		Size: 18.6 MB (18647141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32837a7c41250506279f9130ccfdf4fe7c116588585c998b44ecf39a08efa571`  
		Last Modified: Thu, 27 Dec 2018 09:56:22 GMT  
		Size: 1.3 MB (1325206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f65df539d26d62283ae35c831b4121fcb2873934895434f212762e49ec407c3`  
		Last Modified: Thu, 27 Dec 2018 10:35:26 GMT  
		Size: 9.9 KB (9851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75697fd77251842aeaa611c8bfc3684f84610a28ab60c982bfec8344643baef8`  
		Last Modified: Thu, 27 Dec 2018 10:35:28 GMT  
		Size: 1.2 MB (1188850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c0d253522f16219f0a68e4dc0fbcc4e084b014030fb3c12f8fefa0f62778cb`  
		Last Modified: Tue, 15 Jan 2019 09:32:45 GMT  
		Size: 17.3 MB (17286622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b7ab6be912eb31bcd3d55683d9c2e3e7f63447ed5ee2f3f92e7cb16c5904f6`  
		Last Modified: Wed, 06 Feb 2019 09:54:21 GMT  
		Size: 89.7 MB (89716524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:500bcf87b99aa131d9634413904bf4427b08ac5521b1cd2f5eedfa0292165fc0`  
		Last Modified: Wed, 06 Feb 2019 09:53:36 GMT  
		Size: 12.5 MB (12471648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:319152fd9cb9456494116481296e920e4952ff6ad6afe5c03a0c6cd141332b6d`  
		Last Modified: Wed, 06 Feb 2019 09:53:32 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2-alpine`

```console
$ docker pull ghost@sha256:9877bcc8fdfdb1a70873da0be8b592a4656e8d1480f805e38c0a5ec40e6ec18a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:2-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:acff2e4f7e71974bf3757444abeff516375d7111e42433cfbb52c96b0dc731f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164179616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7f288fe08260a7b5fdd0969abdb06392804755ca888dd49bd00b41af4988b08`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:19:53 GMT
ENV NODE_VERSION=8.15.0
# Wed, 30 Jan 2019 22:38:42 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 30 Jan 2019 22:38:42 GMT
ENV YARN_VERSION=1.12.3
# Wed, 30 Jan 2019 22:38:46 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 30 Jan 2019 22:38:47 GMT
CMD ["node"]
# Thu, 31 Jan 2019 02:45:00 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 31 Jan 2019 02:45:02 GMT
RUN apk add --no-cache 		bash
# Thu, 31 Jan 2019 02:45:02 GMT
ENV NODE_ENV=production
# Thu, 31 Jan 2019 02:45:02 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Thu, 31 Jan 2019 02:45:22 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 31 Jan 2019 02:45:23 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 31 Jan 2019 02:45:23 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Feb 2019 01:24:35 GMT
ENV GHOST_VERSION=2.13.2
# Wed, 06 Feb 2019 01:25:25 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 06 Feb 2019 01:25:35 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 06 Feb 2019 01:25:35 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Feb 2019 01:25:35 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Feb 2019 01:25:35 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 06 Feb 2019 01:25:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 01:25:36 GMT
EXPOSE 2368
# Wed, 06 Feb 2019 01:25:36 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62154f231947a79f0fa2c21b5b6ea90f191a1012773684fb766bf43139551ff0`  
		Last Modified: Thu, 31 Jan 2019 00:00:35 GMT  
		Size: 18.9 MB (18870481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf10a8404b6ca2d9f9e9d1e18fd89f175148e6bfea6c0b927655f34cd29c9bc`  
		Last Modified: Thu, 31 Jan 2019 00:00:28 GMT  
		Size: 1.3 MB (1328402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111312b8db58c62fdeb0aab4e32ea20e3fb480ea2d21ed246deeb167ea92d8c0`  
		Last Modified: Thu, 31 Jan 2019 02:47:32 GMT  
		Size: 9.4 KB (9400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a8b3dd4622e13269b367c59e999a524d915753622ee783f8b27f01d8032fba5`  
		Last Modified: Thu, 31 Jan 2019 02:47:31 GMT  
		Size: 1.2 MB (1173424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77aff150715c7f4fe42d85baafa9caab39f8c49a5e4a02a4dccae9b2beb7a8a4`  
		Last Modified: Thu, 31 Jan 2019 02:47:36 GMT  
		Size: 17.3 MB (17298726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae9e7233c6b31997716aebb6bf0cc5fca67059ba8ae24211df05031eee638c15`  
		Last Modified: Wed, 06 Feb 2019 01:27:12 GMT  
		Size: 112.5 MB (112485005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac874db375018675de63eb7d2fac2317a53fe503d5ab659226079f60847755a9`  
		Last Modified: Wed, 06 Feb 2019 01:26:48 GMT  
		Size: 10.8 MB (10806594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d4a9dd6b6de3de0c7676e1058eda38e232ec29aeec6c99499452d6a5a3b5dac`  
		Last Modified: Wed, 06 Feb 2019 01:26:45 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:d5810c966ad17636b50514ad9dff1dcc19931c7e3da9ec99dcc8e81f0ff56f02
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.5 MB (141534677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b8461fc73feaa5107ac3aa7673f4cb9f31e95f784d8e1ab07499046fb79136`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 08:49:29 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 08:53:08 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 08:53:09 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 08:53:15 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 08:53:15 GMT
CMD ["node"]
# Thu, 27 Dec 2018 09:20:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 27 Dec 2018 09:20:36 GMT
RUN apk add --no-cache 		bash
# Thu, 27 Dec 2018 09:20:37 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 08:49:47 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 08:50:27 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 08:50:29 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 08:50:29 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Feb 2019 08:50:07 GMT
ENV GHOST_VERSION=2.13.2
# Wed, 06 Feb 2019 08:51:45 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 06 Feb 2019 08:54:55 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 06 Feb 2019 08:54:55 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Feb 2019 08:54:56 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Feb 2019 08:54:56 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 06 Feb 2019 08:54:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 08:54:57 GMT
EXPOSE 2368
# Wed, 06 Feb 2019 08:54:57 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a33101f563c74e80a756003d7812491bc13ad62b10593df58ccec3a28f40642`  
		Last Modified: Thu, 27 Dec 2018 09:04:36 GMT  
		Size: 17.8 MB (17831628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d15459f81630dbcf79b68a8e15c0300aa17f823bc4df54948fd5204bb7a8ee`  
		Last Modified: Thu, 27 Dec 2018 09:04:30 GMT  
		Size: 1.3 MB (1325196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe110be79516b7582538224302a880e345ea8362e4fdfa61903d08b033225322`  
		Last Modified: Thu, 27 Dec 2018 09:25:08 GMT  
		Size: 9.3 KB (9327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea1104fe603b86955cec7ab3d7312f10ab7cdfdf8fb837694bf767f845e0e7c2`  
		Last Modified: Thu, 27 Dec 2018 09:25:10 GMT  
		Size: 1.1 MB (1127621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5942d7f76e5583d4199ec765d2ac873f0679565d1295a4172cebce3495ef43`  
		Last Modified: Tue, 15 Jan 2019 08:54:30 GMT  
		Size: 17.3 MB (17285857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:131be60b9d2ed416cd1894e52df623f833addfd0f6190ba44668930f032d71d7`  
		Last Modified: Wed, 06 Feb 2019 08:55:58 GMT  
		Size: 89.7 MB (89678538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052baf69559dc892dfd7763d5086914c126a0601ed302d17f18ce78f1021312a`  
		Last Modified: Wed, 06 Feb 2019 08:55:21 GMT  
		Size: 12.1 MB (12130006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab06dbdffe0afaed8b62ac1393895fcf88895152e6610b11c2b896951b774e6`  
		Last Modified: Wed, 06 Feb 2019 08:55:17 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:c720feafdbe2183fd4feb81da0d36104c09274d8682c766eb20ddf1b7f0e78d6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.8 MB (142841333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23be120a86a8916a9e25013e55b4e014d7548f5de0adf9e541c60fcbc651e510`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 09:17:29 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 09:26:26 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 09:26:29 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 09:26:40 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 09:26:42 GMT
CMD ["node"]
# Thu, 27 Dec 2018 10:24:08 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 27 Dec 2018 10:24:13 GMT
RUN apk add --no-cache 		bash
# Thu, 27 Dec 2018 10:24:14 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 01:51:30 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 01:52:07 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 01:52:11 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 01:52:12 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Feb 2019 09:47:26 GMT
ENV GHOST_VERSION=2.13.2
# Wed, 06 Feb 2019 09:49:08 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 06 Feb 2019 09:51:36 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 06 Feb 2019 09:51:38 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Feb 2019 09:51:40 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Feb 2019 09:51:42 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 06 Feb 2019 09:51:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:51:45 GMT
EXPOSE 2368
# Wed, 06 Feb 2019 09:51:48 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f37791ddbc3bf7eb446234fe7ce08914ecd76a3569a127be1576ded5ee8dc15`  
		Last Modified: Thu, 27 Dec 2018 09:56:32 GMT  
		Size: 18.6 MB (18647141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32837a7c41250506279f9130ccfdf4fe7c116588585c998b44ecf39a08efa571`  
		Last Modified: Thu, 27 Dec 2018 09:56:22 GMT  
		Size: 1.3 MB (1325206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f65df539d26d62283ae35c831b4121fcb2873934895434f212762e49ec407c3`  
		Last Modified: Thu, 27 Dec 2018 10:35:26 GMT  
		Size: 9.9 KB (9851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75697fd77251842aeaa611c8bfc3684f84610a28ab60c982bfec8344643baef8`  
		Last Modified: Thu, 27 Dec 2018 10:35:28 GMT  
		Size: 1.2 MB (1188850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c0d253522f16219f0a68e4dc0fbcc4e084b014030fb3c12f8fefa0f62778cb`  
		Last Modified: Tue, 15 Jan 2019 09:32:45 GMT  
		Size: 17.3 MB (17286622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b7ab6be912eb31bcd3d55683d9c2e3e7f63447ed5ee2f3f92e7cb16c5904f6`  
		Last Modified: Wed, 06 Feb 2019 09:54:21 GMT  
		Size: 89.7 MB (89716524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:500bcf87b99aa131d9634413904bf4427b08ac5521b1cd2f5eedfa0292165fc0`  
		Last Modified: Wed, 06 Feb 2019 09:53:36 GMT  
		Size: 12.5 MB (12471648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:319152fd9cb9456494116481296e920e4952ff6ad6afe5c03a0c6cd141332b6d`  
		Last Modified: Wed, 06 Feb 2019 09:53:32 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:9877bcc8fdfdb1a70873da0be8b592a4656e8d1480f805e38c0a5ec40e6ec18a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:acff2e4f7e71974bf3757444abeff516375d7111e42433cfbb52c96b0dc731f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164179616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7f288fe08260a7b5fdd0969abdb06392804755ca888dd49bd00b41af4988b08`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:19:53 GMT
ENV NODE_VERSION=8.15.0
# Wed, 30 Jan 2019 22:38:42 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 30 Jan 2019 22:38:42 GMT
ENV YARN_VERSION=1.12.3
# Wed, 30 Jan 2019 22:38:46 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 30 Jan 2019 22:38:47 GMT
CMD ["node"]
# Thu, 31 Jan 2019 02:45:00 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 31 Jan 2019 02:45:02 GMT
RUN apk add --no-cache 		bash
# Thu, 31 Jan 2019 02:45:02 GMT
ENV NODE_ENV=production
# Thu, 31 Jan 2019 02:45:02 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Thu, 31 Jan 2019 02:45:22 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 31 Jan 2019 02:45:23 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 31 Jan 2019 02:45:23 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Feb 2019 01:24:35 GMT
ENV GHOST_VERSION=2.13.2
# Wed, 06 Feb 2019 01:25:25 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 06 Feb 2019 01:25:35 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 06 Feb 2019 01:25:35 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Feb 2019 01:25:35 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Feb 2019 01:25:35 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 06 Feb 2019 01:25:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 01:25:36 GMT
EXPOSE 2368
# Wed, 06 Feb 2019 01:25:36 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62154f231947a79f0fa2c21b5b6ea90f191a1012773684fb766bf43139551ff0`  
		Last Modified: Thu, 31 Jan 2019 00:00:35 GMT  
		Size: 18.9 MB (18870481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf10a8404b6ca2d9f9e9d1e18fd89f175148e6bfea6c0b927655f34cd29c9bc`  
		Last Modified: Thu, 31 Jan 2019 00:00:28 GMT  
		Size: 1.3 MB (1328402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111312b8db58c62fdeb0aab4e32ea20e3fb480ea2d21ed246deeb167ea92d8c0`  
		Last Modified: Thu, 31 Jan 2019 02:47:32 GMT  
		Size: 9.4 KB (9400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a8b3dd4622e13269b367c59e999a524d915753622ee783f8b27f01d8032fba5`  
		Last Modified: Thu, 31 Jan 2019 02:47:31 GMT  
		Size: 1.2 MB (1173424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77aff150715c7f4fe42d85baafa9caab39f8c49a5e4a02a4dccae9b2beb7a8a4`  
		Last Modified: Thu, 31 Jan 2019 02:47:36 GMT  
		Size: 17.3 MB (17298726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae9e7233c6b31997716aebb6bf0cc5fca67059ba8ae24211df05031eee638c15`  
		Last Modified: Wed, 06 Feb 2019 01:27:12 GMT  
		Size: 112.5 MB (112485005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac874db375018675de63eb7d2fac2317a53fe503d5ab659226079f60847755a9`  
		Last Modified: Wed, 06 Feb 2019 01:26:48 GMT  
		Size: 10.8 MB (10806594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d4a9dd6b6de3de0c7676e1058eda38e232ec29aeec6c99499452d6a5a3b5dac`  
		Last Modified: Wed, 06 Feb 2019 01:26:45 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:d5810c966ad17636b50514ad9dff1dcc19931c7e3da9ec99dcc8e81f0ff56f02
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.5 MB (141534677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b8461fc73feaa5107ac3aa7673f4cb9f31e95f784d8e1ab07499046fb79136`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 08:49:29 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 08:53:08 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 08:53:09 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 08:53:15 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 08:53:15 GMT
CMD ["node"]
# Thu, 27 Dec 2018 09:20:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 27 Dec 2018 09:20:36 GMT
RUN apk add --no-cache 		bash
# Thu, 27 Dec 2018 09:20:37 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 08:49:47 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 08:50:27 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 08:50:29 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 08:50:29 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Feb 2019 08:50:07 GMT
ENV GHOST_VERSION=2.13.2
# Wed, 06 Feb 2019 08:51:45 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 06 Feb 2019 08:54:55 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 06 Feb 2019 08:54:55 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Feb 2019 08:54:56 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Feb 2019 08:54:56 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 06 Feb 2019 08:54:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 08:54:57 GMT
EXPOSE 2368
# Wed, 06 Feb 2019 08:54:57 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a33101f563c74e80a756003d7812491bc13ad62b10593df58ccec3a28f40642`  
		Last Modified: Thu, 27 Dec 2018 09:04:36 GMT  
		Size: 17.8 MB (17831628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d15459f81630dbcf79b68a8e15c0300aa17f823bc4df54948fd5204bb7a8ee`  
		Last Modified: Thu, 27 Dec 2018 09:04:30 GMT  
		Size: 1.3 MB (1325196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe110be79516b7582538224302a880e345ea8362e4fdfa61903d08b033225322`  
		Last Modified: Thu, 27 Dec 2018 09:25:08 GMT  
		Size: 9.3 KB (9327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea1104fe603b86955cec7ab3d7312f10ab7cdfdf8fb837694bf767f845e0e7c2`  
		Last Modified: Thu, 27 Dec 2018 09:25:10 GMT  
		Size: 1.1 MB (1127621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5942d7f76e5583d4199ec765d2ac873f0679565d1295a4172cebce3495ef43`  
		Last Modified: Tue, 15 Jan 2019 08:54:30 GMT  
		Size: 17.3 MB (17285857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:131be60b9d2ed416cd1894e52df623f833addfd0f6190ba44668930f032d71d7`  
		Last Modified: Wed, 06 Feb 2019 08:55:58 GMT  
		Size: 89.7 MB (89678538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052baf69559dc892dfd7763d5086914c126a0601ed302d17f18ce78f1021312a`  
		Last Modified: Wed, 06 Feb 2019 08:55:21 GMT  
		Size: 12.1 MB (12130006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab06dbdffe0afaed8b62ac1393895fcf88895152e6610b11c2b896951b774e6`  
		Last Modified: Wed, 06 Feb 2019 08:55:17 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:c720feafdbe2183fd4feb81da0d36104c09274d8682c766eb20ddf1b7f0e78d6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.8 MB (142841333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23be120a86a8916a9e25013e55b4e014d7548f5de0adf9e541c60fcbc651e510`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 09:17:29 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 09:26:26 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 09:26:29 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 09:26:40 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 09:26:42 GMT
CMD ["node"]
# Thu, 27 Dec 2018 10:24:08 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 27 Dec 2018 10:24:13 GMT
RUN apk add --no-cache 		bash
# Thu, 27 Dec 2018 10:24:14 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 01:51:30 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 01:52:07 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 01:52:11 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 01:52:12 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Feb 2019 09:47:26 GMT
ENV GHOST_VERSION=2.13.2
# Wed, 06 Feb 2019 09:49:08 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 06 Feb 2019 09:51:36 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 06 Feb 2019 09:51:38 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Feb 2019 09:51:40 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Feb 2019 09:51:42 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 06 Feb 2019 09:51:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:51:45 GMT
EXPOSE 2368
# Wed, 06 Feb 2019 09:51:48 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f37791ddbc3bf7eb446234fe7ce08914ecd76a3569a127be1576ded5ee8dc15`  
		Last Modified: Thu, 27 Dec 2018 09:56:32 GMT  
		Size: 18.6 MB (18647141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32837a7c41250506279f9130ccfdf4fe7c116588585c998b44ecf39a08efa571`  
		Last Modified: Thu, 27 Dec 2018 09:56:22 GMT  
		Size: 1.3 MB (1325206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f65df539d26d62283ae35c831b4121fcb2873934895434f212762e49ec407c3`  
		Last Modified: Thu, 27 Dec 2018 10:35:26 GMT  
		Size: 9.9 KB (9851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75697fd77251842aeaa611c8bfc3684f84610a28ab60c982bfec8344643baef8`  
		Last Modified: Thu, 27 Dec 2018 10:35:28 GMT  
		Size: 1.2 MB (1188850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c0d253522f16219f0a68e4dc0fbcc4e084b014030fb3c12f8fefa0f62778cb`  
		Last Modified: Tue, 15 Jan 2019 09:32:45 GMT  
		Size: 17.3 MB (17286622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b7ab6be912eb31bcd3d55683d9c2e3e7f63447ed5ee2f3f92e7cb16c5904f6`  
		Last Modified: Wed, 06 Feb 2019 09:54:21 GMT  
		Size: 89.7 MB (89716524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:500bcf87b99aa131d9634413904bf4427b08ac5521b1cd2f5eedfa0292165fc0`  
		Last Modified: Wed, 06 Feb 2019 09:53:36 GMT  
		Size: 12.5 MB (12471648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:319152fd9cb9456494116481296e920e4952ff6ad6afe5c03a0c6cd141332b6d`  
		Last Modified: Wed, 06 Feb 2019 09:53:32 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:49f5ad6f9f91d72170b27b59a604730d53be7e9d0ba8d51e2bf3aa9db5fcd62b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `ghost:latest` - linux; amd64

```console
$ docker pull ghost@sha256:30706bb4561cdcdc37f6d4be24639a6032b40aee381f3ad047ee4ee8368e30c4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.6 MB (182595158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5d8b7b840d4ee4074c666abbd2142a69f0b9490c562f5033c9dd72cdc38b92e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 01:40:17 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Jan 2019 01:40:17 GMT
ENV NODE_VERSION=8.15.0
# Wed, 23 Jan 2019 01:40:38 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 23 Jan 2019 01:40:38 GMT
ENV YARN_VERSION=1.12.3
# Wed, 23 Jan 2019 01:40:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 23 Jan 2019 01:40:42 GMT
CMD ["node"]
# Wed, 23 Jan 2019 11:59:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 11:59:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 23 Jan 2019 11:59:57 GMT
ENV NODE_ENV=production
# Wed, 23 Jan 2019 11:59:57 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Wed, 23 Jan 2019 12:00:18 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 23 Jan 2019 12:00:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Jan 2019 12:00:19 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Feb 2019 01:23:33 GMT
ENV GHOST_VERSION=2.13.2
# Wed, 06 Feb 2019 01:24:19 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 06 Feb 2019 01:24:28 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Feb 2019 01:24:28 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Feb 2019 01:24:29 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Feb 2019 01:24:29 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 06 Feb 2019 01:24:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 01:24:29 GMT
EXPOSE 2368
# Wed, 06 Feb 2019 01:24:29 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe40c2f302dba633d57bef2c4c9d12172f36811251bf361bd47e359d7f71b03c`  
		Last Modified: Wed, 23 Jan 2019 01:50:57 GMT  
		Size: 4.1 KB (4144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624869bdd9d8c6ebd9d476211c1a261e32d8ecb2b0bd3ccde0a2941ab1898a94`  
		Last Modified: Wed, 23 Jan 2019 01:51:10 GMT  
		Size: 28.0 MB (28018539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e38240342a3979ccf1b00df4aea43605ed2fa2a60fea27538d2cdc7877a66e`  
		Last Modified: Wed, 23 Jan 2019 01:50:57 GMT  
		Size: 1.3 MB (1321435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138999c01f1496effab9350af40e285a31424fadd85db3463175c0bce03aa647`  
		Last Modified: Wed, 23 Jan 2019 12:02:54 GMT  
		Size: 500.9 KB (500917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2945c5e7a28219ae62e39fd0242bf80a20430d08f29ce77c1545b3ffa9dd4bf`  
		Last Modified: Wed, 23 Jan 2019 12:03:02 GMT  
		Size: 17.3 MB (17294243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2458b0655d13cb9b3d388caf17ead1398a3cb7080b04a0c7d86e962cc0a732e`  
		Last Modified: Wed, 06 Feb 2019 01:26:38 GMT  
		Size: 111.6 MB (111576880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a894de0948c9c9d1badfda981abedd28283981e5c23fd7eab05322628325d6`  
		Last Modified: Wed, 06 Feb 2019 01:26:02 GMT  
		Size: 1.4 MB (1377735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a8e12ea18aa864647bd8edbc6fcadb9cff4122f1a39d3660d99d546fedf084`  
		Last Modified: Wed, 06 Feb 2019 01:26:02 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:928d20d279fc9717b8bbfab81f99c2db560144cf3126aa325d22c3a5f2f5a27c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.4 MB (181386550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c10a8f432b5eabcc6446b6fd9dbe4396b98dbd92780861ae11222cdff55223a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 02:53:41 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 Jan 2019 02:53:43 GMT
ENV NODE_VERSION=8.15.0
# Fri, 25 Jan 2019 02:59:02 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 Jan 2019 02:59:09 GMT
ENV YARN_VERSION=1.12.3
# Fri, 25 Jan 2019 02:59:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 Jan 2019 02:59:28 GMT
CMD ["node"]
# Fri, 25 Jan 2019 10:39:03 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Jan 2019 10:39:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 Jan 2019 10:39:14 GMT
ENV NODE_ENV=production
# Fri, 25 Jan 2019 10:39:14 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Fri, 25 Jan 2019 10:40:05 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 25 Jan 2019 10:40:06 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 25 Jan 2019 10:40:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Feb 2019 10:20:02 GMT
ENV GHOST_VERSION=2.13.2
# Wed, 06 Feb 2019 10:25:17 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 06 Feb 2019 10:31:44 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Feb 2019 10:31:45 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Feb 2019 10:31:47 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Feb 2019 10:31:50 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 06 Feb 2019 10:31:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 10:31:53 GMT
EXPOSE 2368
# Wed, 06 Feb 2019 10:31:56 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617fda78caaace4ad1093eef6567038c8b406acd7cde81cf40b41c92c7e44e1e`  
		Last Modified: Fri, 25 Jan 2019 03:08:32 GMT  
		Size: 4.2 KB (4162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8664d5d4d0982592324b149d3f84e4f5fb6f3f5e9c5bd4f80ad32d084c92b5a4`  
		Last Modified: Fri, 25 Jan 2019 03:08:43 GMT  
		Size: 26.7 MB (26701316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eecd0c83edb8974e89cb24d12d1804b1cf04b1f8d2fcdb530a0029827262b34`  
		Last Modified: Fri, 25 Jan 2019 03:08:33 GMT  
		Size: 1.3 MB (1321446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80e991258136c8d0a92a6c3cc4a70a7aa7076b22379409990feaeb8a2036c129`  
		Last Modified: Fri, 25 Jan 2019 10:54:05 GMT  
		Size: 468.9 KB (468939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ef34c5c0d9eb9d3ac0631d78fcd53a372a5df3c44a20206a17fa172a15c346`  
		Last Modified: Fri, 25 Jan 2019 10:54:46 GMT  
		Size: 17.3 MB (17296413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde6137ab3ae8deea78ff207d6dcd9dc0fd936557beced8b856198ddf401c1d9`  
		Last Modified: Wed, 06 Feb 2019 10:34:35 GMT  
		Size: 95.7 MB (95686440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deb7b48bdbc8f97ddb48b655c96f505c5b8d0cb92b5b25b50a03aacb55bf9d1`  
		Last Modified: Wed, 06 Feb 2019 10:34:00 GMT  
		Size: 19.6 MB (19557093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a44baae8b4da5c4faf1389d7b4825b518a4647885f58fc30caa09ab16df0e9`  
		Last Modified: Wed, 06 Feb 2019 10:33:52 GMT  
		Size: 561.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; 386

```console
$ docker pull ghost@sha256:99d99b338fd1057de915e80813efc4aa3da540b6c6b624bba13ea5fbbedd77d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.4 MB (172358481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b77d0e8ce709d38c9078aba81240f0bb14ccdfee3e92491c1e1e3b638e5f499f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:41:49 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Jan 2019 13:41:49 GMT
ENV NODE_VERSION=8.15.0
# Wed, 23 Jan 2019 13:42:10 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 23 Jan 2019 13:42:11 GMT
ENV YARN_VERSION=1.12.3
# Wed, 23 Jan 2019 13:42:16 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 23 Jan 2019 13:42:16 GMT
CMD ["node"]
# Thu, 24 Jan 2019 00:37:31 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 Jan 2019 00:37:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 24 Jan 2019 00:37:35 GMT
ENV NODE_ENV=production
# Thu, 24 Jan 2019 00:37:36 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Thu, 24 Jan 2019 00:38:00 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 24 Jan 2019 00:38:00 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 24 Jan 2019 00:38:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Feb 2019 12:10:59 GMT
ENV GHOST_VERSION=2.13.2
# Wed, 06 Feb 2019 12:12:24 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 06 Feb 2019 12:14:31 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Feb 2019 12:14:32 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Feb 2019 12:14:32 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Feb 2019 12:14:32 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 06 Feb 2019 12:14:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 12:14:33 GMT
EXPOSE 2368
# Wed, 06 Feb 2019 12:14:33 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c92eb48bd2ab47527c451fa10548490aecbca01a92bca802bca12db10e6af1`  
		Last Modified: Wed, 23 Jan 2019 13:48:39 GMT  
		Size: 4.1 KB (4129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6668d8db8b6e4252537915f906ace6a26cce9ff32305c8c028e73208c7ac04`  
		Last Modified: Wed, 23 Jan 2019 13:48:47 GMT  
		Size: 27.8 MB (27846086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666e9d0ebc6ffcc9369b869deac894dabfb393149bb438760061c98d70d6ac7a`  
		Last Modified: Wed, 23 Jan 2019 13:48:40 GMT  
		Size: 1.3 MB (1321442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4a705ad0df2c0493288d8ee0130eab891795971fcb3de9e8b79b0198322072`  
		Last Modified: Thu, 24 Jan 2019 00:43:50 GMT  
		Size: 480.8 KB (480827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dee939a6ff703570747b141ce490e51f2bd3aaf81c9ff690b9092d8e0703518`  
		Last Modified: Thu, 24 Jan 2019 00:44:06 GMT  
		Size: 17.3 MB (17296481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337d841dd493d4a04dda4a9016944e836656bf24a4cbb72b3b914b9b28c63268`  
		Last Modified: Wed, 06 Feb 2019 12:15:49 GMT  
		Size: 89.7 MB (89676130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d0e5a2455887a1b0e6cba620338d8e0286655d3902f7e2599218164da9329f2`  
		Last Modified: Wed, 06 Feb 2019 12:15:18 GMT  
		Size: 12.6 MB (12585710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6da8277502a8141701cae7da5e798092d8418169a79b4491a6e798fd747db6`  
		Last Modified: Wed, 06 Feb 2019 12:15:13 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; ppc64le

```console
$ docker pull ghost@sha256:97c71136ddccbd3b90e569d9f2e41be6ad6e10ac2fdcec1eadd38d8aabde6a87
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.2 MB (171190822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ad0953fcf8e618dc54f1d0cf2e9f825e2788df2fb3b3d56b8078e4f583ac29c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:18:10 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Jan 2019 11:18:11 GMT
ENV NODE_VERSION=8.15.0
# Wed, 23 Jan 2019 11:19:30 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 23 Jan 2019 11:19:33 GMT
ENV YARN_VERSION=1.12.3
# Wed, 23 Jan 2019 11:19:43 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 23 Jan 2019 11:19:46 GMT
CMD ["node"]
# Wed, 23 Jan 2019 16:08:56 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 16:09:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 23 Jan 2019 16:09:12 GMT
ENV NODE_ENV=production
# Wed, 23 Jan 2019 16:09:14 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Wed, 23 Jan 2019 16:09:56 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 23 Jan 2019 16:10:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Jan 2019 16:10:06 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Feb 2019 09:42:13 GMT
ENV GHOST_VERSION=2.13.2
# Wed, 06 Feb 2019 09:43:59 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 06 Feb 2019 09:47:11 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Feb 2019 09:47:13 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Feb 2019 09:47:14 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Feb 2019 09:47:15 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 06 Feb 2019 09:47:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:47:17 GMT
EXPOSE 2368
# Wed, 06 Feb 2019 09:47:18 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a766d1d22112297db33de78132c7073630477ad53e6e92e7cb05122c4b6ccc`  
		Last Modified: Wed, 23 Jan 2019 11:23:20 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c411bd79c2cae58ac4f8c05b5a2964b45017cf2e645ceab50586d4f2d0ebb0e`  
		Last Modified: Wed, 23 Jan 2019 11:23:24 GMT  
		Size: 27.0 MB (26964310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4581b7a99dcfe2412fe9b64b01b8f053bcd9a834833046d0e987c08e792c5c0c`  
		Last Modified: Wed, 23 Jan 2019 11:23:20 GMT  
		Size: 1.3 MB (1321459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e13d521328925462036a70b5b581584da305dd89eb4db4f0c0596e5f37fafda`  
		Last Modified: Wed, 23 Jan 2019 16:25:30 GMT  
		Size: 470.1 KB (470077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e3573221a5bc73c9feb479210bfe47ef60f9f3012bfec01f1c4da967585864`  
		Last Modified: Wed, 23 Jan 2019 16:25:57 GMT  
		Size: 17.3 MB (17294283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d623a54886083eebd23e7b07a19cbab08616c4b3308c9c94c09d6477c7983b`  
		Last Modified: Wed, 06 Feb 2019 09:53:14 GMT  
		Size: 89.7 MB (89717080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811f229afc02e941996db6ff28e27c37598e8ae96a5ecefab8221e17dc6b8f17`  
		Last Modified: Wed, 06 Feb 2019 09:52:28 GMT  
		Size: 12.7 MB (12663540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63638bdbd9b6ddd88dc0a29eb205d04f9999d5c88a2fdc3f0715b0b30049108e`  
		Last Modified: Wed, 06 Feb 2019 09:52:24 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

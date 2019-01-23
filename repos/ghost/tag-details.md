<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:1`](#ghost1)
-	[`ghost:1.25`](#ghost125)
-	[`ghost:1.25.6`](#ghost1256)
-	[`ghost:1.25.6-alpine`](#ghost1256-alpine)
-	[`ghost:1.25-alpine`](#ghost125-alpine)
-	[`ghost:1-alpine`](#ghost1-alpine)
-	[`ghost:2`](#ghost2)
-	[`ghost:2.11`](#ghost211)
-	[`ghost:2.11.1`](#ghost2111)
-	[`ghost:2.11.1-alpine`](#ghost2111-alpine)
-	[`ghost:2.11-alpine`](#ghost211-alpine)
-	[`ghost:2-alpine`](#ghost2-alpine)
-	[`ghost:alpine`](#ghostalpine)
-	[`ghost:latest`](#ghostlatest)

## `ghost:1`

```console
$ docker pull ghost@sha256:96065eb18747ef679a963a81cb9ea3432fb0dd33e8450710aa8d32ef7806afca
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
$ docker pull ghost@sha256:8826c2bba7df4b063edae49eeeb40c1164cfefefd07834814d0174e7924d76c5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.4 MB (187428365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61dbdfd4257655a5cde49afde871a08997bb7c4fa7895b38c50222ebb3802818`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:15:30 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 14:15:30 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 14:15:58 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 14:16:00 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 14:16:06 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 14:16:06 GMT
CMD ["node"]
# Wed, 09 Jan 2019 12:57:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 09 Jan 2019 12:57:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 09 Jan 2019 12:57:49 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 12:58:28 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 12:59:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 12:59:08 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 12:59:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 15 Jan 2019 13:04:31 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 15 Jan 2019 13:05:58 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 15 Jan 2019 13:06:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 15 Jan 2019 13:09:14 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 15 Jan 2019 13:09:15 GMT
WORKDIR /var/lib/ghost
# Tue, 15 Jan 2019 13:09:16 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 15 Jan 2019 13:09:16 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Tue, 15 Jan 2019 13:09:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Jan 2019 13:09:17 GMT
EXPOSE 2368
# Tue, 15 Jan 2019 13:09:17 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff754dc7b1a17993efd664e943c530a0182f1a01a3908f3199242d9200363283`  
		Last Modified: Sat, 29 Dec 2018 14:26:05 GMT  
		Size: 4.2 KB (4167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c80511c449b6d403e55b3e7d476decb67876f78bc9d82dafba393b4c7debde`  
		Last Modified: Sat, 29 Dec 2018 14:26:13 GMT  
		Size: 25.5 MB (25468444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31872e78463853fb4b17f9330366c5d7429d8c15126dea9b9a3b8cdb414e41ac`  
		Last Modified: Sat, 29 Dec 2018 14:26:06 GMT  
		Size: 1.3 MB (1318218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050c8801ed1bd3d1590218c6ea6f69084bfab42699791a03036e2d4809602ba0`  
		Last Modified: Wed, 09 Jan 2019 13:10:56 GMT  
		Size: 475.4 KB (475432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11731524fdb74753a93df15c5311499ee5ec47aea04ea40244f8971cd8e8f8ec`  
		Last Modified: Tue, 15 Jan 2019 13:09:48 GMT  
		Size: 17.3 MB (17286039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a514b3988a7b275d7a40193b0d16595c695fbebe3d8e1859898dde9add406643`  
		Last Modified: Tue, 15 Jan 2019 13:11:09 GMT  
		Size: 94.7 MB (94665678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066f357c03ef95a32621c394621cd0e35231213e74a4264f354ec3f01fc5b42b`  
		Last Modified: Tue, 15 Jan 2019 13:10:38 GMT  
		Size: 28.9 MB (28932046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c665843a9f3dd1f71c88a3ce74ac359929f6ff11c42f56fec121f970c2f90232`  
		Last Modified: Tue, 15 Jan 2019 13:10:30 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:e31918e168abe25090891853f0e5138789cba3fcb0b3994d12b986bc94dd6cdd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.4 MB (190364526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b410ccfa852ef3de27c6f91b948979eb2ca8ab4d7a9eeb32a6aa0b5267fb433b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 17:58:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 17:58:32 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 17:59:33 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 17:59:34 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 17:59:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 17:59:42 GMT
CMD ["node"]
# Sun, 30 Dec 2018 05:08:26 GMT
ENV GOSU_VERSION=1.10
# Sun, 30 Dec 2018 05:08:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 30 Dec 2018 05:08:39 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 09:40:21 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 09:41:09 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 09:41:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 09:41:11 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 15 Jan 2019 09:49:47 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 15 Jan 2019 09:51:14 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 15 Jan 2019 09:51:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 15 Jan 2019 09:56:00 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 15 Jan 2019 09:56:01 GMT
WORKDIR /var/lib/ghost
# Tue, 15 Jan 2019 09:56:02 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 15 Jan 2019 09:56:03 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Tue, 15 Jan 2019 09:56:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Jan 2019 09:56:04 GMT
EXPOSE 2368
# Tue, 15 Jan 2019 09:56:05 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215b1d1716040331cb6bcee14dca0128f9c3c33d31a4b5344981342d170735f5`  
		Last Modified: Sat, 29 Dec 2018 18:04:42 GMT  
		Size: 4.2 KB (4159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383aea228065e79be898695615936b1322aa3fe292860e19b8cc78ec1ed8f153`  
		Last Modified: Sat, 29 Dec 2018 18:04:54 GMT  
		Size: 26.7 MB (26700751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659a972601d83dcea81dc32925bf08aab47633903e237e8e732e3131978ab292`  
		Last Modified: Sat, 29 Dec 2018 18:04:43 GMT  
		Size: 1.3 MB (1318215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41bddf97ff415f8c037a0ca819a65b609fde90e6c2dc3bb18b48a95f497634a4`  
		Last Modified: Sun, 30 Dec 2018 05:28:06 GMT  
		Size: 468.9 KB (468936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20ea9dc0929e9ac0942d9bf5036be97bfb8f6c6df0c6fe01af87b1f8fa4cf53`  
		Last Modified: Tue, 15 Jan 2019 09:56:52 GMT  
		Size: 17.3 MB (17286407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e5ba72a7dcd13759ffe7d3ba281fcedcd7243c629cca7fd42a76d03ae41b49b`  
		Last Modified: Tue, 15 Jan 2019 09:58:26 GMT  
		Size: 94.7 MB (94706115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca4e2a78658e733e203328e6c3a58532588714d89630a0df6f34eaa1ba758c5`  
		Last Modified: Tue, 15 Jan 2019 09:57:56 GMT  
		Size: 29.5 MB (29541848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37bc176340a2073a3a31c4facbc083be86cf007541b1ff1899e126c299d7196f`  
		Last Modified: Tue, 15 Jan 2019 09:57:45 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; 386

```console
$ docker pull ghost@sha256:3768c63230667184a7cfedb66af319b991e5221ed4f302fb1dbc04bc3098f153
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.0 MB (194993042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57c817978cdf3f1342c1d7a9f2f7f2974bb7959820209db1f6901e1955251b59`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:45:06 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 13:45:06 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 13:45:32 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 13:45:32 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 13:45:36 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 13:45:37 GMT
CMD ["node"]
# Sun, 30 Dec 2018 04:39:16 GMT
ENV GOSU_VERSION=1.10
# Sun, 30 Dec 2018 04:39:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 30 Dec 2018 04:39:20 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 11:38:48 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 11:39:08 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 11:39:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 11:39:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 15 Jan 2019 11:42:08 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 15 Jan 2019 11:42:47 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 15 Jan 2019 11:42:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 15 Jan 2019 11:44:18 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 15 Jan 2019 11:44:19 GMT
WORKDIR /var/lib/ghost
# Tue, 15 Jan 2019 11:44:19 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 15 Jan 2019 11:44:19 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Tue, 15 Jan 2019 11:44:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Jan 2019 11:44:19 GMT
EXPOSE 2368
# Tue, 15 Jan 2019 11:44:20 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864b1c8b35709465623558c333e84a894532af4cec82c28455558e6b2df69fd4`  
		Last Modified: Sat, 29 Dec 2018 13:54:20 GMT  
		Size: 4.1 KB (4136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b35d3a521bbb3879f91506b613374abfc6ba3297e3520f8096742be36c3b6c`  
		Last Modified: Sat, 29 Dec 2018 13:54:35 GMT  
		Size: 27.8 MB (27846386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b05a73a347ee0cbfc8ee467ad70b72787be1fa54f858efe6d5808c42615ec1c`  
		Last Modified: Sat, 29 Dec 2018 13:54:21 GMT  
		Size: 1.3 MB (1318202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1397d2f67ee5b92fb7b2a5ef9dd676f4b715cfd9e61b77b1e894346816eeaf`  
		Last Modified: Sun, 30 Dec 2018 04:45:48 GMT  
		Size: 480.8 KB (480826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e533ea12c7e81fd86426ab9462a8d215620cf974df8762438df160dc46843e`  
		Last Modified: Tue, 15 Jan 2019 11:44:58 GMT  
		Size: 17.3 MB (17285455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1cf00f8382109afe306dcd05623acddd921e743f8d2f15be0a48c5161b1f071`  
		Last Modified: Tue, 15 Jan 2019 11:45:51 GMT  
		Size: 94.7 MB (94650517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4784457162641cec2d88030527273d6f7908a48ef16c90c54bf27d0fa94471`  
		Last Modified: Tue, 15 Jan 2019 11:45:33 GMT  
		Size: 30.3 MB (30273781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea9023a744c7aa687038a73b2117367b40866b3392b5ff2edc00d3e862b843e`  
		Last Modified: Tue, 15 Jan 2019 11:45:26 GMT  
		Size: 584.0 B  
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
$ docker pull ghost@sha256:96065eb18747ef679a963a81cb9ea3432fb0dd33e8450710aa8d32ef7806afca
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
$ docker pull ghost@sha256:8826c2bba7df4b063edae49eeeb40c1164cfefefd07834814d0174e7924d76c5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.4 MB (187428365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61dbdfd4257655a5cde49afde871a08997bb7c4fa7895b38c50222ebb3802818`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:15:30 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 14:15:30 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 14:15:58 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 14:16:00 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 14:16:06 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 14:16:06 GMT
CMD ["node"]
# Wed, 09 Jan 2019 12:57:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 09 Jan 2019 12:57:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 09 Jan 2019 12:57:49 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 12:58:28 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 12:59:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 12:59:08 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 12:59:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 15 Jan 2019 13:04:31 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 15 Jan 2019 13:05:58 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 15 Jan 2019 13:06:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 15 Jan 2019 13:09:14 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 15 Jan 2019 13:09:15 GMT
WORKDIR /var/lib/ghost
# Tue, 15 Jan 2019 13:09:16 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 15 Jan 2019 13:09:16 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Tue, 15 Jan 2019 13:09:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Jan 2019 13:09:17 GMT
EXPOSE 2368
# Tue, 15 Jan 2019 13:09:17 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff754dc7b1a17993efd664e943c530a0182f1a01a3908f3199242d9200363283`  
		Last Modified: Sat, 29 Dec 2018 14:26:05 GMT  
		Size: 4.2 KB (4167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c80511c449b6d403e55b3e7d476decb67876f78bc9d82dafba393b4c7debde`  
		Last Modified: Sat, 29 Dec 2018 14:26:13 GMT  
		Size: 25.5 MB (25468444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31872e78463853fb4b17f9330366c5d7429d8c15126dea9b9a3b8cdb414e41ac`  
		Last Modified: Sat, 29 Dec 2018 14:26:06 GMT  
		Size: 1.3 MB (1318218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050c8801ed1bd3d1590218c6ea6f69084bfab42699791a03036e2d4809602ba0`  
		Last Modified: Wed, 09 Jan 2019 13:10:56 GMT  
		Size: 475.4 KB (475432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11731524fdb74753a93df15c5311499ee5ec47aea04ea40244f8971cd8e8f8ec`  
		Last Modified: Tue, 15 Jan 2019 13:09:48 GMT  
		Size: 17.3 MB (17286039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a514b3988a7b275d7a40193b0d16595c695fbebe3d8e1859898dde9add406643`  
		Last Modified: Tue, 15 Jan 2019 13:11:09 GMT  
		Size: 94.7 MB (94665678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066f357c03ef95a32621c394621cd0e35231213e74a4264f354ec3f01fc5b42b`  
		Last Modified: Tue, 15 Jan 2019 13:10:38 GMT  
		Size: 28.9 MB (28932046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c665843a9f3dd1f71c88a3ce74ac359929f6ff11c42f56fec121f970c2f90232`  
		Last Modified: Tue, 15 Jan 2019 13:10:30 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:e31918e168abe25090891853f0e5138789cba3fcb0b3994d12b986bc94dd6cdd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.4 MB (190364526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b410ccfa852ef3de27c6f91b948979eb2ca8ab4d7a9eeb32a6aa0b5267fb433b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 17:58:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 17:58:32 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 17:59:33 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 17:59:34 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 17:59:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 17:59:42 GMT
CMD ["node"]
# Sun, 30 Dec 2018 05:08:26 GMT
ENV GOSU_VERSION=1.10
# Sun, 30 Dec 2018 05:08:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 30 Dec 2018 05:08:39 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 09:40:21 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 09:41:09 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 09:41:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 09:41:11 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 15 Jan 2019 09:49:47 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 15 Jan 2019 09:51:14 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 15 Jan 2019 09:51:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 15 Jan 2019 09:56:00 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 15 Jan 2019 09:56:01 GMT
WORKDIR /var/lib/ghost
# Tue, 15 Jan 2019 09:56:02 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 15 Jan 2019 09:56:03 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Tue, 15 Jan 2019 09:56:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Jan 2019 09:56:04 GMT
EXPOSE 2368
# Tue, 15 Jan 2019 09:56:05 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215b1d1716040331cb6bcee14dca0128f9c3c33d31a4b5344981342d170735f5`  
		Last Modified: Sat, 29 Dec 2018 18:04:42 GMT  
		Size: 4.2 KB (4159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383aea228065e79be898695615936b1322aa3fe292860e19b8cc78ec1ed8f153`  
		Last Modified: Sat, 29 Dec 2018 18:04:54 GMT  
		Size: 26.7 MB (26700751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659a972601d83dcea81dc32925bf08aab47633903e237e8e732e3131978ab292`  
		Last Modified: Sat, 29 Dec 2018 18:04:43 GMT  
		Size: 1.3 MB (1318215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41bddf97ff415f8c037a0ca819a65b609fde90e6c2dc3bb18b48a95f497634a4`  
		Last Modified: Sun, 30 Dec 2018 05:28:06 GMT  
		Size: 468.9 KB (468936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20ea9dc0929e9ac0942d9bf5036be97bfb8f6c6df0c6fe01af87b1f8fa4cf53`  
		Last Modified: Tue, 15 Jan 2019 09:56:52 GMT  
		Size: 17.3 MB (17286407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e5ba72a7dcd13759ffe7d3ba281fcedcd7243c629cca7fd42a76d03ae41b49b`  
		Last Modified: Tue, 15 Jan 2019 09:58:26 GMT  
		Size: 94.7 MB (94706115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca4e2a78658e733e203328e6c3a58532588714d89630a0df6f34eaa1ba758c5`  
		Last Modified: Tue, 15 Jan 2019 09:57:56 GMT  
		Size: 29.5 MB (29541848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37bc176340a2073a3a31c4facbc083be86cf007541b1ff1899e126c299d7196f`  
		Last Modified: Tue, 15 Jan 2019 09:57:45 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; 386

```console
$ docker pull ghost@sha256:3768c63230667184a7cfedb66af319b991e5221ed4f302fb1dbc04bc3098f153
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.0 MB (194993042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57c817978cdf3f1342c1d7a9f2f7f2974bb7959820209db1f6901e1955251b59`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:45:06 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 13:45:06 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 13:45:32 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 13:45:32 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 13:45:36 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 13:45:37 GMT
CMD ["node"]
# Sun, 30 Dec 2018 04:39:16 GMT
ENV GOSU_VERSION=1.10
# Sun, 30 Dec 2018 04:39:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 30 Dec 2018 04:39:20 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 11:38:48 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 11:39:08 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 11:39:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 11:39:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 15 Jan 2019 11:42:08 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 15 Jan 2019 11:42:47 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 15 Jan 2019 11:42:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 15 Jan 2019 11:44:18 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 15 Jan 2019 11:44:19 GMT
WORKDIR /var/lib/ghost
# Tue, 15 Jan 2019 11:44:19 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 15 Jan 2019 11:44:19 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Tue, 15 Jan 2019 11:44:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Jan 2019 11:44:19 GMT
EXPOSE 2368
# Tue, 15 Jan 2019 11:44:20 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864b1c8b35709465623558c333e84a894532af4cec82c28455558e6b2df69fd4`  
		Last Modified: Sat, 29 Dec 2018 13:54:20 GMT  
		Size: 4.1 KB (4136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b35d3a521bbb3879f91506b613374abfc6ba3297e3520f8096742be36c3b6c`  
		Last Modified: Sat, 29 Dec 2018 13:54:35 GMT  
		Size: 27.8 MB (27846386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b05a73a347ee0cbfc8ee467ad70b72787be1fa54f858efe6d5808c42615ec1c`  
		Last Modified: Sat, 29 Dec 2018 13:54:21 GMT  
		Size: 1.3 MB (1318202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1397d2f67ee5b92fb7b2a5ef9dd676f4b715cfd9e61b77b1e894346816eeaf`  
		Last Modified: Sun, 30 Dec 2018 04:45:48 GMT  
		Size: 480.8 KB (480826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e533ea12c7e81fd86426ab9462a8d215620cf974df8762438df160dc46843e`  
		Last Modified: Tue, 15 Jan 2019 11:44:58 GMT  
		Size: 17.3 MB (17285455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1cf00f8382109afe306dcd05623acddd921e743f8d2f15be0a48c5161b1f071`  
		Last Modified: Tue, 15 Jan 2019 11:45:51 GMT  
		Size: 94.7 MB (94650517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4784457162641cec2d88030527273d6f7908a48ef16c90c54bf27d0fa94471`  
		Last Modified: Tue, 15 Jan 2019 11:45:33 GMT  
		Size: 30.3 MB (30273781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea9023a744c7aa687038a73b2117367b40866b3392b5ff2edc00d3e862b843e`  
		Last Modified: Tue, 15 Jan 2019 11:45:26 GMT  
		Size: 584.0 B  
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
$ docker pull ghost@sha256:96065eb18747ef679a963a81cb9ea3432fb0dd33e8450710aa8d32ef7806afca
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
$ docker pull ghost@sha256:8826c2bba7df4b063edae49eeeb40c1164cfefefd07834814d0174e7924d76c5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.4 MB (187428365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61dbdfd4257655a5cde49afde871a08997bb7c4fa7895b38c50222ebb3802818`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:15:30 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 14:15:30 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 14:15:58 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 14:16:00 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 14:16:06 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 14:16:06 GMT
CMD ["node"]
# Wed, 09 Jan 2019 12:57:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 09 Jan 2019 12:57:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 09 Jan 2019 12:57:49 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 12:58:28 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 12:59:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 12:59:08 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 12:59:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 15 Jan 2019 13:04:31 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 15 Jan 2019 13:05:58 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 15 Jan 2019 13:06:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 15 Jan 2019 13:09:14 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 15 Jan 2019 13:09:15 GMT
WORKDIR /var/lib/ghost
# Tue, 15 Jan 2019 13:09:16 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 15 Jan 2019 13:09:16 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Tue, 15 Jan 2019 13:09:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Jan 2019 13:09:17 GMT
EXPOSE 2368
# Tue, 15 Jan 2019 13:09:17 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff754dc7b1a17993efd664e943c530a0182f1a01a3908f3199242d9200363283`  
		Last Modified: Sat, 29 Dec 2018 14:26:05 GMT  
		Size: 4.2 KB (4167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c80511c449b6d403e55b3e7d476decb67876f78bc9d82dafba393b4c7debde`  
		Last Modified: Sat, 29 Dec 2018 14:26:13 GMT  
		Size: 25.5 MB (25468444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31872e78463853fb4b17f9330366c5d7429d8c15126dea9b9a3b8cdb414e41ac`  
		Last Modified: Sat, 29 Dec 2018 14:26:06 GMT  
		Size: 1.3 MB (1318218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050c8801ed1bd3d1590218c6ea6f69084bfab42699791a03036e2d4809602ba0`  
		Last Modified: Wed, 09 Jan 2019 13:10:56 GMT  
		Size: 475.4 KB (475432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11731524fdb74753a93df15c5311499ee5ec47aea04ea40244f8971cd8e8f8ec`  
		Last Modified: Tue, 15 Jan 2019 13:09:48 GMT  
		Size: 17.3 MB (17286039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a514b3988a7b275d7a40193b0d16595c695fbebe3d8e1859898dde9add406643`  
		Last Modified: Tue, 15 Jan 2019 13:11:09 GMT  
		Size: 94.7 MB (94665678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066f357c03ef95a32621c394621cd0e35231213e74a4264f354ec3f01fc5b42b`  
		Last Modified: Tue, 15 Jan 2019 13:10:38 GMT  
		Size: 28.9 MB (28932046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c665843a9f3dd1f71c88a3ce74ac359929f6ff11c42f56fec121f970c2f90232`  
		Last Modified: Tue, 15 Jan 2019 13:10:30 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.6` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:e31918e168abe25090891853f0e5138789cba3fcb0b3994d12b986bc94dd6cdd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.4 MB (190364526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b410ccfa852ef3de27c6f91b948979eb2ca8ab4d7a9eeb32a6aa0b5267fb433b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 17:58:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 17:58:32 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 17:59:33 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 17:59:34 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 17:59:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 17:59:42 GMT
CMD ["node"]
# Sun, 30 Dec 2018 05:08:26 GMT
ENV GOSU_VERSION=1.10
# Sun, 30 Dec 2018 05:08:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 30 Dec 2018 05:08:39 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 09:40:21 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 09:41:09 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 09:41:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 09:41:11 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 15 Jan 2019 09:49:47 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 15 Jan 2019 09:51:14 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 15 Jan 2019 09:51:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 15 Jan 2019 09:56:00 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 15 Jan 2019 09:56:01 GMT
WORKDIR /var/lib/ghost
# Tue, 15 Jan 2019 09:56:02 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 15 Jan 2019 09:56:03 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Tue, 15 Jan 2019 09:56:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Jan 2019 09:56:04 GMT
EXPOSE 2368
# Tue, 15 Jan 2019 09:56:05 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215b1d1716040331cb6bcee14dca0128f9c3c33d31a4b5344981342d170735f5`  
		Last Modified: Sat, 29 Dec 2018 18:04:42 GMT  
		Size: 4.2 KB (4159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383aea228065e79be898695615936b1322aa3fe292860e19b8cc78ec1ed8f153`  
		Last Modified: Sat, 29 Dec 2018 18:04:54 GMT  
		Size: 26.7 MB (26700751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659a972601d83dcea81dc32925bf08aab47633903e237e8e732e3131978ab292`  
		Last Modified: Sat, 29 Dec 2018 18:04:43 GMT  
		Size: 1.3 MB (1318215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41bddf97ff415f8c037a0ca819a65b609fde90e6c2dc3bb18b48a95f497634a4`  
		Last Modified: Sun, 30 Dec 2018 05:28:06 GMT  
		Size: 468.9 KB (468936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20ea9dc0929e9ac0942d9bf5036be97bfb8f6c6df0c6fe01af87b1f8fa4cf53`  
		Last Modified: Tue, 15 Jan 2019 09:56:52 GMT  
		Size: 17.3 MB (17286407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e5ba72a7dcd13759ffe7d3ba281fcedcd7243c629cca7fd42a76d03ae41b49b`  
		Last Modified: Tue, 15 Jan 2019 09:58:26 GMT  
		Size: 94.7 MB (94706115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca4e2a78658e733e203328e6c3a58532588714d89630a0df6f34eaa1ba758c5`  
		Last Modified: Tue, 15 Jan 2019 09:57:56 GMT  
		Size: 29.5 MB (29541848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37bc176340a2073a3a31c4facbc083be86cf007541b1ff1899e126c299d7196f`  
		Last Modified: Tue, 15 Jan 2019 09:57:45 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.6` - linux; 386

```console
$ docker pull ghost@sha256:3768c63230667184a7cfedb66af319b991e5221ed4f302fb1dbc04bc3098f153
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.0 MB (194993042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57c817978cdf3f1342c1d7a9f2f7f2974bb7959820209db1f6901e1955251b59`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:45:06 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 13:45:06 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 13:45:32 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 13:45:32 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 13:45:36 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 13:45:37 GMT
CMD ["node"]
# Sun, 30 Dec 2018 04:39:16 GMT
ENV GOSU_VERSION=1.10
# Sun, 30 Dec 2018 04:39:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 30 Dec 2018 04:39:20 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 11:38:48 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 11:39:08 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 11:39:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 11:39:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 15 Jan 2019 11:42:08 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 15 Jan 2019 11:42:47 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 15 Jan 2019 11:42:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 15 Jan 2019 11:44:18 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 15 Jan 2019 11:44:19 GMT
WORKDIR /var/lib/ghost
# Tue, 15 Jan 2019 11:44:19 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 15 Jan 2019 11:44:19 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Tue, 15 Jan 2019 11:44:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Jan 2019 11:44:19 GMT
EXPOSE 2368
# Tue, 15 Jan 2019 11:44:20 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864b1c8b35709465623558c333e84a894532af4cec82c28455558e6b2df69fd4`  
		Last Modified: Sat, 29 Dec 2018 13:54:20 GMT  
		Size: 4.1 KB (4136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b35d3a521bbb3879f91506b613374abfc6ba3297e3520f8096742be36c3b6c`  
		Last Modified: Sat, 29 Dec 2018 13:54:35 GMT  
		Size: 27.8 MB (27846386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b05a73a347ee0cbfc8ee467ad70b72787be1fa54f858efe6d5808c42615ec1c`  
		Last Modified: Sat, 29 Dec 2018 13:54:21 GMT  
		Size: 1.3 MB (1318202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1397d2f67ee5b92fb7b2a5ef9dd676f4b715cfd9e61b77b1e894346816eeaf`  
		Last Modified: Sun, 30 Dec 2018 04:45:48 GMT  
		Size: 480.8 KB (480826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e533ea12c7e81fd86426ab9462a8d215620cf974df8762438df160dc46843e`  
		Last Modified: Tue, 15 Jan 2019 11:44:58 GMT  
		Size: 17.3 MB (17285455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1cf00f8382109afe306dcd05623acddd921e743f8d2f15be0a48c5161b1f071`  
		Last Modified: Tue, 15 Jan 2019 11:45:51 GMT  
		Size: 94.7 MB (94650517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4784457162641cec2d88030527273d6f7908a48ef16c90c54bf27d0fa94471`  
		Last Modified: Tue, 15 Jan 2019 11:45:33 GMT  
		Size: 30.3 MB (30273781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea9023a744c7aa687038a73b2117367b40866b3392b5ff2edc00d3e862b843e`  
		Last Modified: Tue, 15 Jan 2019 11:45:26 GMT  
		Size: 584.0 B  
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
$ docker pull ghost@sha256:f214ed57413b540fa0b28b94b91cd1d2d4c7564dc8b870a15200639041b5342c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1.25.6-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:22dc259420f23a8a84a23f8040d33f48b25631c8c636c014ffbb5bc523a96a48
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.2 MB (156176570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da11d6e758f80d78131aedad72441db0f885c758568e49e34a19870d9c70a17c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 01:22:27 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 01:40:46 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 01:40:46 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 01:40:51 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 01:40:51 GMT
CMD ["node"]
# Thu, 27 Dec 2018 03:09:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 27 Dec 2018 03:09:35 GMT
RUN apk add --no-cache 		bash
# Thu, 27 Dec 2018 03:09:35 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 02:20:55 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 02:21:21 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 02:21:22 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 02:21:22 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 15 Jan 2019 02:23:16 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 15 Jan 2019 02:23:53 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 15 Jan 2019 02:23:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 18 Jan 2019 00:26:59 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 18 Jan 2019 00:26:59 GMT
WORKDIR /var/lib/ghost
# Fri, 18 Jan 2019 00:26:59 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 18 Jan 2019 00:27:00 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Fri, 18 Jan 2019 00:27:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Jan 2019 00:27:00 GMT
EXPOSE 2368
# Fri, 18 Jan 2019 00:27:01 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6268ae5d1d7bedece5f65f36723304879063e13f205431cea73abea4fa89646`  
		Last Modified: Thu, 27 Dec 2018 02:48:55 GMT  
		Size: 18.9 MB (18870715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97eb9028b14bfd2dee6c78f631e9d83fac380a7ff52fe5ae834d4a13e88241b6`  
		Last Modified: Thu, 27 Dec 2018 02:48:52 GMT  
		Size: 1.3 MB (1325188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05da853e25f62140ff104e26d62e13ebd9761c78ac8438952218331091233589`  
		Last Modified: Thu, 27 Dec 2018 03:13:31 GMT  
		Size: 9.4 KB (9395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88631e2d93af183938f9aacd67119808869c9789687af2fefa4dbcaaedf30eb1`  
		Last Modified: Thu, 27 Dec 2018 03:13:32 GMT  
		Size: 1.2 MB (1173431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385cdfcb2e2473111e930279dff82386af117a0b0ac57edc890357fdf0c13a1f`  
		Last Modified: Tue, 15 Jan 2019 02:25:04 GMT  
		Size: 17.3 MB (17285277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525f894681f11cdfac1072028eacd82a664be3245f02eb8d112a69acf6d5e8a6`  
		Last Modified: Tue, 15 Jan 2019 02:26:22 GMT  
		Size: 102.4 MB (102390942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0afff6a05e6e20c1587973f8dd2ab6d41ea465e26b6acf7b53052120cdd2570`  
		Last Modified: Fri, 18 Jan 2019 00:28:40 GMT  
		Size: 12.9 MB (12914022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b69db8496fe8952224a3be387c4e1a5c752bbbb8a2084240fd1ffdeb131dc84`  
		Last Modified: Fri, 18 Jan 2019 00:28:38 GMT  
		Size: 575.0 B  
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
$ docker pull ghost@sha256:f214ed57413b540fa0b28b94b91cd1d2d4c7564dc8b870a15200639041b5342c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1.25-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:22dc259420f23a8a84a23f8040d33f48b25631c8c636c014ffbb5bc523a96a48
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.2 MB (156176570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da11d6e758f80d78131aedad72441db0f885c758568e49e34a19870d9c70a17c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 01:22:27 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 01:40:46 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 01:40:46 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 01:40:51 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 01:40:51 GMT
CMD ["node"]
# Thu, 27 Dec 2018 03:09:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 27 Dec 2018 03:09:35 GMT
RUN apk add --no-cache 		bash
# Thu, 27 Dec 2018 03:09:35 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 02:20:55 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 02:21:21 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 02:21:22 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 02:21:22 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 15 Jan 2019 02:23:16 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 15 Jan 2019 02:23:53 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 15 Jan 2019 02:23:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 18 Jan 2019 00:26:59 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 18 Jan 2019 00:26:59 GMT
WORKDIR /var/lib/ghost
# Fri, 18 Jan 2019 00:26:59 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 18 Jan 2019 00:27:00 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Fri, 18 Jan 2019 00:27:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Jan 2019 00:27:00 GMT
EXPOSE 2368
# Fri, 18 Jan 2019 00:27:01 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6268ae5d1d7bedece5f65f36723304879063e13f205431cea73abea4fa89646`  
		Last Modified: Thu, 27 Dec 2018 02:48:55 GMT  
		Size: 18.9 MB (18870715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97eb9028b14bfd2dee6c78f631e9d83fac380a7ff52fe5ae834d4a13e88241b6`  
		Last Modified: Thu, 27 Dec 2018 02:48:52 GMT  
		Size: 1.3 MB (1325188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05da853e25f62140ff104e26d62e13ebd9761c78ac8438952218331091233589`  
		Last Modified: Thu, 27 Dec 2018 03:13:31 GMT  
		Size: 9.4 KB (9395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88631e2d93af183938f9aacd67119808869c9789687af2fefa4dbcaaedf30eb1`  
		Last Modified: Thu, 27 Dec 2018 03:13:32 GMT  
		Size: 1.2 MB (1173431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385cdfcb2e2473111e930279dff82386af117a0b0ac57edc890357fdf0c13a1f`  
		Last Modified: Tue, 15 Jan 2019 02:25:04 GMT  
		Size: 17.3 MB (17285277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525f894681f11cdfac1072028eacd82a664be3245f02eb8d112a69acf6d5e8a6`  
		Last Modified: Tue, 15 Jan 2019 02:26:22 GMT  
		Size: 102.4 MB (102390942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0afff6a05e6e20c1587973f8dd2ab6d41ea465e26b6acf7b53052120cdd2570`  
		Last Modified: Fri, 18 Jan 2019 00:28:40 GMT  
		Size: 12.9 MB (12914022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b69db8496fe8952224a3be387c4e1a5c752bbbb8a2084240fd1ffdeb131dc84`  
		Last Modified: Fri, 18 Jan 2019 00:28:38 GMT  
		Size: 575.0 B  
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
$ docker pull ghost@sha256:f214ed57413b540fa0b28b94b91cd1d2d4c7564dc8b870a15200639041b5342c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:22dc259420f23a8a84a23f8040d33f48b25631c8c636c014ffbb5bc523a96a48
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.2 MB (156176570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da11d6e758f80d78131aedad72441db0f885c758568e49e34a19870d9c70a17c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 01:22:27 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 01:40:46 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 01:40:46 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 01:40:51 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 01:40:51 GMT
CMD ["node"]
# Thu, 27 Dec 2018 03:09:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 27 Dec 2018 03:09:35 GMT
RUN apk add --no-cache 		bash
# Thu, 27 Dec 2018 03:09:35 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 02:20:55 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 02:21:21 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 02:21:22 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 02:21:22 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 15 Jan 2019 02:23:16 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 15 Jan 2019 02:23:53 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 15 Jan 2019 02:23:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 18 Jan 2019 00:26:59 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 18 Jan 2019 00:26:59 GMT
WORKDIR /var/lib/ghost
# Fri, 18 Jan 2019 00:26:59 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 18 Jan 2019 00:27:00 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Fri, 18 Jan 2019 00:27:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Jan 2019 00:27:00 GMT
EXPOSE 2368
# Fri, 18 Jan 2019 00:27:01 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6268ae5d1d7bedece5f65f36723304879063e13f205431cea73abea4fa89646`  
		Last Modified: Thu, 27 Dec 2018 02:48:55 GMT  
		Size: 18.9 MB (18870715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97eb9028b14bfd2dee6c78f631e9d83fac380a7ff52fe5ae834d4a13e88241b6`  
		Last Modified: Thu, 27 Dec 2018 02:48:52 GMT  
		Size: 1.3 MB (1325188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05da853e25f62140ff104e26d62e13ebd9761c78ac8438952218331091233589`  
		Last Modified: Thu, 27 Dec 2018 03:13:31 GMT  
		Size: 9.4 KB (9395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88631e2d93af183938f9aacd67119808869c9789687af2fefa4dbcaaedf30eb1`  
		Last Modified: Thu, 27 Dec 2018 03:13:32 GMT  
		Size: 1.2 MB (1173431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385cdfcb2e2473111e930279dff82386af117a0b0ac57edc890357fdf0c13a1f`  
		Last Modified: Tue, 15 Jan 2019 02:25:04 GMT  
		Size: 17.3 MB (17285277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525f894681f11cdfac1072028eacd82a664be3245f02eb8d112a69acf6d5e8a6`  
		Last Modified: Tue, 15 Jan 2019 02:26:22 GMT  
		Size: 102.4 MB (102390942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0afff6a05e6e20c1587973f8dd2ab6d41ea465e26b6acf7b53052120cdd2570`  
		Last Modified: Fri, 18 Jan 2019 00:28:40 GMT  
		Size: 12.9 MB (12914022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b69db8496fe8952224a3be387c4e1a5c752bbbb8a2084240fd1ffdeb131dc84`  
		Last Modified: Fri, 18 Jan 2019 00:28:38 GMT  
		Size: 575.0 B  
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
$ docker pull ghost@sha256:e549f4a7dbcb3ba6486c4c0b20a6cff340f475f42382706bd24869eda1f5cf74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:2` - linux; amd64

```console
$ docker pull ghost@sha256:df704b17757fdcdfba783badeb317dd514e86d77fba731973a4381142ef9850c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.2 MB (207155749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14eb3598a9b53dd1e27d4acbb992319240750fb6cfc1b4c4d25dca69756a4f32`
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
# Wed, 23 Jan 2019 12:00:19 GMT
ENV GHOST_VERSION=2.11.1
# Wed, 23 Jan 2019 12:01:12 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 23 Jan 2019 12:01:24 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 23 Jan 2019 12:01:24 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Jan 2019 12:01:24 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Jan 2019 12:01:25 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 23 Jan 2019 12:01:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 12:01:25 GMT
EXPOSE 2368
# Wed, 23 Jan 2019 12:01:25 GMT
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
	-	`sha256:fd0e65c420551759a9e8239ad8c18c487410c026897994c04febb14575ecb438`  
		Last Modified: Wed, 23 Jan 2019 12:03:25 GMT  
		Size: 126.6 MB (126554128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ce62588c3ef4a3b3e13ae0451b277818c73988b51006a8fce62ac46621155e`  
		Last Modified: Wed, 23 Jan 2019 12:02:56 GMT  
		Size: 11.0 MB (10961079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9d945b72a9c9971b3e90c822d9a5dc339cc23cb7ee50abaa176a7a5f81d4c9`  
		Last Modified: Wed, 23 Jan 2019 12:02:54 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; arm variant v7

```console
$ docker pull ghost@sha256:14d874af07a2cdbaf3cbee96138d49cfc676d76bb96ed984bfe1ba5a71566a45
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.1 MB (201139848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2821db0c3e5a1cb1ff0c024621dd09867bbfb21d4516068ee3ec87896c8593ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:15:30 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 14:15:30 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 14:15:58 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 14:16:00 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 14:16:06 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 14:16:06 GMT
CMD ["node"]
# Wed, 09 Jan 2019 12:57:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 09 Jan 2019 12:57:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 09 Jan 2019 12:57:49 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 12:58:28 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 12:59:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 12:59:08 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 12:59:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 18 Jan 2019 12:58:52 GMT
ENV GHOST_VERSION=2.11.1
# Fri, 18 Jan 2019 13:00:32 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 18 Jan 2019 13:04:03 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 18 Jan 2019 13:04:04 GMT
WORKDIR /var/lib/ghost
# Fri, 18 Jan 2019 13:04:04 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 18 Jan 2019 13:04:05 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Fri, 18 Jan 2019 13:04:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Jan 2019 13:04:05 GMT
EXPOSE 2368
# Fri, 18 Jan 2019 13:04:06 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff754dc7b1a17993efd664e943c530a0182f1a01a3908f3199242d9200363283`  
		Last Modified: Sat, 29 Dec 2018 14:26:05 GMT  
		Size: 4.2 KB (4167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c80511c449b6d403e55b3e7d476decb67876f78bc9d82dafba393b4c7debde`  
		Last Modified: Sat, 29 Dec 2018 14:26:13 GMT  
		Size: 25.5 MB (25468444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31872e78463853fb4b17f9330366c5d7429d8c15126dea9b9a3b8cdb414e41ac`  
		Last Modified: Sat, 29 Dec 2018 14:26:06 GMT  
		Size: 1.3 MB (1318218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050c8801ed1bd3d1590218c6ea6f69084bfab42699791a03036e2d4809602ba0`  
		Last Modified: Wed, 09 Jan 2019 13:10:56 GMT  
		Size: 475.4 KB (475432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11731524fdb74753a93df15c5311499ee5ec47aea04ea40244f8971cd8e8f8ec`  
		Last Modified: Tue, 15 Jan 2019 13:09:48 GMT  
		Size: 17.3 MB (17286039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041f25b31d661d1ea58eab1812c75173a2b15f159ebeae99ff6b046f75e8b060`  
		Last Modified: Fri, 18 Jan 2019 13:05:17 GMT  
		Size: 108.0 MB (108016344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e978cdf9fa75592e6d5ae4eb12e65b5e3ec4a39003a47da78ba243c6b1acc453`  
		Last Modified: Fri, 18 Jan 2019 13:04:43 GMT  
		Size: 29.3 MB (29292890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2087106408a4e0bf752ee93079668e8cb2221075f0cb14ff99b585b040c5e388`  
		Last Modified: Fri, 18 Jan 2019 13:04:33 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:8fc97f41082fc3cf129af0669a13381af64d538d74c2ddb163f171b720b2ce18
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.1 MB (202134558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:790efe10e1e65dc4211e71966be931f7f50a1b8b92ef4d086e9376cf14d92f44`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 17:58:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 17:58:32 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 17:59:33 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 17:59:34 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 17:59:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 17:59:42 GMT
CMD ["node"]
# Sun, 30 Dec 2018 05:08:26 GMT
ENV GOSU_VERSION=1.10
# Sun, 30 Dec 2018 05:08:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 30 Dec 2018 05:08:39 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 09:40:21 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 09:41:09 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 09:41:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 09:41:11 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 18 Jan 2019 09:46:59 GMT
ENV GHOST_VERSION=2.11.1
# Fri, 18 Jan 2019 09:48:49 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 18 Jan 2019 09:53:57 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 18 Jan 2019 09:53:57 GMT
WORKDIR /var/lib/ghost
# Fri, 18 Jan 2019 09:53:58 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 18 Jan 2019 09:53:59 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Fri, 18 Jan 2019 09:54:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Jan 2019 09:54:00 GMT
EXPOSE 2368
# Fri, 18 Jan 2019 09:54:01 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215b1d1716040331cb6bcee14dca0128f9c3c33d31a4b5344981342d170735f5`  
		Last Modified: Sat, 29 Dec 2018 18:04:42 GMT  
		Size: 4.2 KB (4159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383aea228065e79be898695615936b1322aa3fe292860e19b8cc78ec1ed8f153`  
		Last Modified: Sat, 29 Dec 2018 18:04:54 GMT  
		Size: 26.7 MB (26700751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659a972601d83dcea81dc32925bf08aab47633903e237e8e732e3131978ab292`  
		Last Modified: Sat, 29 Dec 2018 18:04:43 GMT  
		Size: 1.3 MB (1318215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41bddf97ff415f8c037a0ca819a65b609fde90e6c2dc3bb18b48a95f497634a4`  
		Last Modified: Sun, 30 Dec 2018 05:28:06 GMT  
		Size: 468.9 KB (468936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20ea9dc0929e9ac0942d9bf5036be97bfb8f6c6df0c6fe01af87b1f8fa4cf53`  
		Last Modified: Tue, 15 Jan 2019 09:56:52 GMT  
		Size: 17.3 MB (17286407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4b27937bb68b349eda1cb5d50e7a53d5a3e5c6187896c372e74aeae0ecfcb7`  
		Last Modified: Fri, 18 Jan 2019 09:55:54 GMT  
		Size: 107.1 MB (107131542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ac6e4a534c972f1d1bb05371a69a9229e84fe39862df0b2fdcae843f6df1fe`  
		Last Modified: Fri, 18 Jan 2019 09:55:14 GMT  
		Size: 28.9 MB (28886478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec0fedf8286b057f7b2f661d6b660fd6c1ed6dbcba42c6197bf011049a8093dc`  
		Last Modified: Fri, 18 Jan 2019 09:55:00 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; 386

```console
$ docker pull ghost@sha256:aa3082fa3d7b346dedf052aa8b6e659ad4defd9f70c3ac0e763d0b2c3bf1baac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.5 MB (193521473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72c816d5b3bc0b7cde1fc8b63657a3c4a6463eb1b7ead15df4b7c0c943abf6ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:45:06 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 13:45:06 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 13:45:32 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 13:45:32 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 13:45:36 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 13:45:37 GMT
CMD ["node"]
# Sun, 30 Dec 2018 04:39:16 GMT
ENV GOSU_VERSION=1.10
# Sun, 30 Dec 2018 04:39:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 30 Dec 2018 04:39:20 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 11:38:48 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 11:39:08 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 11:39:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 11:39:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 18 Jan 2019 12:22:50 GMT
ENV GHOST_VERSION=2.11.1
# Fri, 18 Jan 2019 12:23:35 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 18 Jan 2019 12:25:12 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 18 Jan 2019 12:25:12 GMT
WORKDIR /var/lib/ghost
# Fri, 18 Jan 2019 12:25:13 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 18 Jan 2019 12:25:13 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Fri, 18 Jan 2019 12:25:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Jan 2019 12:25:13 GMT
EXPOSE 2368
# Fri, 18 Jan 2019 12:25:13 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864b1c8b35709465623558c333e84a894532af4cec82c28455558e6b2df69fd4`  
		Last Modified: Sat, 29 Dec 2018 13:54:20 GMT  
		Size: 4.1 KB (4136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b35d3a521bbb3879f91506b613374abfc6ba3297e3520f8096742be36c3b6c`  
		Last Modified: Sat, 29 Dec 2018 13:54:35 GMT  
		Size: 27.8 MB (27846386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b05a73a347ee0cbfc8ee467ad70b72787be1fa54f858efe6d5808c42615ec1c`  
		Last Modified: Sat, 29 Dec 2018 13:54:21 GMT  
		Size: 1.3 MB (1318202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1397d2f67ee5b92fb7b2a5ef9dd676f4b715cfd9e61b77b1e894346816eeaf`  
		Last Modified: Sun, 30 Dec 2018 04:45:48 GMT  
		Size: 480.8 KB (480826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e533ea12c7e81fd86426ab9462a8d215620cf974df8762438df160dc46843e`  
		Last Modified: Tue, 15 Jan 2019 11:44:58 GMT  
		Size: 17.3 MB (17285455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8c115856bbdce95413715ba3fc24425a572bf82d2e631613d675dcd2a8c5a5`  
		Last Modified: Fri, 18 Jan 2019 12:26:09 GMT  
		Size: 101.1 MB (101120572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac69851a9fe62a1f929d3ff955689ad05fcfd4f6f1dd8548fcc99880f3a6ac4`  
		Last Modified: Fri, 18 Jan 2019 12:25:47 GMT  
		Size: 22.3 MB (22332182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed475596d4e69013627228eafaf639202cbc86a43b90d988f9f41e2273a9a08`  
		Last Modified: Fri, 18 Jan 2019 12:25:41 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; ppc64le

```console
$ docker pull ghost@sha256:f11160e1afe4075db123d34b27a6787d46d6a715dccf4d44b3a16403b225c254
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.6 MB (198594964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2ba567fea93b00851cc63132e6ff9b37473ed87172df0f66cc26adf0b7dec23`
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
# Wed, 23 Jan 2019 16:10:07 GMT
ENV GHOST_VERSION=2.11.1
# Wed, 23 Jan 2019 16:13:26 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 23 Jan 2019 16:17:36 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 23 Jan 2019 16:17:42 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Jan 2019 16:17:44 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Jan 2019 16:17:46 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 23 Jan 2019 16:17:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 16:17:51 GMT
EXPOSE 2368
# Wed, 23 Jan 2019 16:17:53 GMT
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
	-	`sha256:7cb78b7d2c1f436e3b3a04a50444b2c8373e65fa36b4522a6950b9e7c0d69844`  
		Last Modified: Wed, 23 Jan 2019 16:27:07 GMT  
		Size: 101.2 MB (101161381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fca97e40c53cfd655070aae73b76ea273488ae641a1a1dc6e038fce1190dd907`  
		Last Modified: Wed, 23 Jan 2019 16:25:30 GMT  
		Size: 28.6 MB (28623383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4067be82d4d8439d08927a58d80b717d162be93a151537f76252a54c9bc3229c`  
		Last Modified: Wed, 23 Jan 2019 16:25:21 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; s390x

```console
$ docker pull ghost@sha256:72fc7e67ecf07bd16b4f419cc2cc79273dfef3792883fc1c11778dc8ca8300ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.1 MB (199078792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fef29c2ad37479cc896cbea2f1d5464592c33b734986e202f2f8b01cd69a407`
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
# Wed, 23 Jan 2019 17:05:32 GMT
ENV GHOST_VERSION=2.11.1
# Wed, 23 Jan 2019 17:06:30 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 23 Jan 2019 17:08:22 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 23 Jan 2019 17:08:23 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Jan 2019 17:08:23 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Jan 2019 17:08:23 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 23 Jan 2019 17:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 17:08:24 GMT
EXPOSE 2368
# Wed, 23 Jan 2019 17:08:24 GMT
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
	-	`sha256:c84861cf8abe084ab822fd5e5cc48487c0c56edfae527b8072146c2bf32deb56`  
		Last Modified: Wed, 23 Jan 2019 17:12:26 GMT  
		Size: 101.2 MB (101156201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7886d4dff94e74c02a51147edde5afe06687a9997499546ee8ff9f0ae222c23c`  
		Last Modified: Wed, 23 Jan 2019 17:12:06 GMT  
		Size: 28.6 MB (28599179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe612260a77320e32f235fadceeb6828ad7a0cedeac884161ba209a6bbe0345d`  
		Last Modified: Wed, 23 Jan 2019 17:11:57 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.11`

```console
$ docker pull ghost@sha256:e549f4a7dbcb3ba6486c4c0b20a6cff340f475f42382706bd24869eda1f5cf74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:2.11` - linux; amd64

```console
$ docker pull ghost@sha256:df704b17757fdcdfba783badeb317dd514e86d77fba731973a4381142ef9850c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.2 MB (207155749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14eb3598a9b53dd1e27d4acbb992319240750fb6cfc1b4c4d25dca69756a4f32`
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
# Wed, 23 Jan 2019 12:00:19 GMT
ENV GHOST_VERSION=2.11.1
# Wed, 23 Jan 2019 12:01:12 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 23 Jan 2019 12:01:24 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 23 Jan 2019 12:01:24 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Jan 2019 12:01:24 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Jan 2019 12:01:25 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 23 Jan 2019 12:01:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 12:01:25 GMT
EXPOSE 2368
# Wed, 23 Jan 2019 12:01:25 GMT
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
	-	`sha256:fd0e65c420551759a9e8239ad8c18c487410c026897994c04febb14575ecb438`  
		Last Modified: Wed, 23 Jan 2019 12:03:25 GMT  
		Size: 126.6 MB (126554128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ce62588c3ef4a3b3e13ae0451b277818c73988b51006a8fce62ac46621155e`  
		Last Modified: Wed, 23 Jan 2019 12:02:56 GMT  
		Size: 11.0 MB (10961079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9d945b72a9c9971b3e90c822d9a5dc339cc23cb7ee50abaa176a7a5f81d4c9`  
		Last Modified: Wed, 23 Jan 2019 12:02:54 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.11` - linux; arm variant v7

```console
$ docker pull ghost@sha256:14d874af07a2cdbaf3cbee96138d49cfc676d76bb96ed984bfe1ba5a71566a45
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.1 MB (201139848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2821db0c3e5a1cb1ff0c024621dd09867bbfb21d4516068ee3ec87896c8593ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:15:30 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 14:15:30 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 14:15:58 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 14:16:00 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 14:16:06 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 14:16:06 GMT
CMD ["node"]
# Wed, 09 Jan 2019 12:57:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 09 Jan 2019 12:57:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 09 Jan 2019 12:57:49 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 12:58:28 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 12:59:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 12:59:08 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 12:59:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 18 Jan 2019 12:58:52 GMT
ENV GHOST_VERSION=2.11.1
# Fri, 18 Jan 2019 13:00:32 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 18 Jan 2019 13:04:03 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 18 Jan 2019 13:04:04 GMT
WORKDIR /var/lib/ghost
# Fri, 18 Jan 2019 13:04:04 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 18 Jan 2019 13:04:05 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Fri, 18 Jan 2019 13:04:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Jan 2019 13:04:05 GMT
EXPOSE 2368
# Fri, 18 Jan 2019 13:04:06 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff754dc7b1a17993efd664e943c530a0182f1a01a3908f3199242d9200363283`  
		Last Modified: Sat, 29 Dec 2018 14:26:05 GMT  
		Size: 4.2 KB (4167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c80511c449b6d403e55b3e7d476decb67876f78bc9d82dafba393b4c7debde`  
		Last Modified: Sat, 29 Dec 2018 14:26:13 GMT  
		Size: 25.5 MB (25468444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31872e78463853fb4b17f9330366c5d7429d8c15126dea9b9a3b8cdb414e41ac`  
		Last Modified: Sat, 29 Dec 2018 14:26:06 GMT  
		Size: 1.3 MB (1318218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050c8801ed1bd3d1590218c6ea6f69084bfab42699791a03036e2d4809602ba0`  
		Last Modified: Wed, 09 Jan 2019 13:10:56 GMT  
		Size: 475.4 KB (475432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11731524fdb74753a93df15c5311499ee5ec47aea04ea40244f8971cd8e8f8ec`  
		Last Modified: Tue, 15 Jan 2019 13:09:48 GMT  
		Size: 17.3 MB (17286039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041f25b31d661d1ea58eab1812c75173a2b15f159ebeae99ff6b046f75e8b060`  
		Last Modified: Fri, 18 Jan 2019 13:05:17 GMT  
		Size: 108.0 MB (108016344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e978cdf9fa75592e6d5ae4eb12e65b5e3ec4a39003a47da78ba243c6b1acc453`  
		Last Modified: Fri, 18 Jan 2019 13:04:43 GMT  
		Size: 29.3 MB (29292890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2087106408a4e0bf752ee93079668e8cb2221075f0cb14ff99b585b040c5e388`  
		Last Modified: Fri, 18 Jan 2019 13:04:33 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.11` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:8fc97f41082fc3cf129af0669a13381af64d538d74c2ddb163f171b720b2ce18
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.1 MB (202134558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:790efe10e1e65dc4211e71966be931f7f50a1b8b92ef4d086e9376cf14d92f44`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 17:58:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 17:58:32 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 17:59:33 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 17:59:34 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 17:59:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 17:59:42 GMT
CMD ["node"]
# Sun, 30 Dec 2018 05:08:26 GMT
ENV GOSU_VERSION=1.10
# Sun, 30 Dec 2018 05:08:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 30 Dec 2018 05:08:39 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 09:40:21 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 09:41:09 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 09:41:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 09:41:11 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 18 Jan 2019 09:46:59 GMT
ENV GHOST_VERSION=2.11.1
# Fri, 18 Jan 2019 09:48:49 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 18 Jan 2019 09:53:57 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 18 Jan 2019 09:53:57 GMT
WORKDIR /var/lib/ghost
# Fri, 18 Jan 2019 09:53:58 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 18 Jan 2019 09:53:59 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Fri, 18 Jan 2019 09:54:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Jan 2019 09:54:00 GMT
EXPOSE 2368
# Fri, 18 Jan 2019 09:54:01 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215b1d1716040331cb6bcee14dca0128f9c3c33d31a4b5344981342d170735f5`  
		Last Modified: Sat, 29 Dec 2018 18:04:42 GMT  
		Size: 4.2 KB (4159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383aea228065e79be898695615936b1322aa3fe292860e19b8cc78ec1ed8f153`  
		Last Modified: Sat, 29 Dec 2018 18:04:54 GMT  
		Size: 26.7 MB (26700751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659a972601d83dcea81dc32925bf08aab47633903e237e8e732e3131978ab292`  
		Last Modified: Sat, 29 Dec 2018 18:04:43 GMT  
		Size: 1.3 MB (1318215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41bddf97ff415f8c037a0ca819a65b609fde90e6c2dc3bb18b48a95f497634a4`  
		Last Modified: Sun, 30 Dec 2018 05:28:06 GMT  
		Size: 468.9 KB (468936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20ea9dc0929e9ac0942d9bf5036be97bfb8f6c6df0c6fe01af87b1f8fa4cf53`  
		Last Modified: Tue, 15 Jan 2019 09:56:52 GMT  
		Size: 17.3 MB (17286407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4b27937bb68b349eda1cb5d50e7a53d5a3e5c6187896c372e74aeae0ecfcb7`  
		Last Modified: Fri, 18 Jan 2019 09:55:54 GMT  
		Size: 107.1 MB (107131542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ac6e4a534c972f1d1bb05371a69a9229e84fe39862df0b2fdcae843f6df1fe`  
		Last Modified: Fri, 18 Jan 2019 09:55:14 GMT  
		Size: 28.9 MB (28886478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec0fedf8286b057f7b2f661d6b660fd6c1ed6dbcba42c6197bf011049a8093dc`  
		Last Modified: Fri, 18 Jan 2019 09:55:00 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.11` - linux; 386

```console
$ docker pull ghost@sha256:aa3082fa3d7b346dedf052aa8b6e659ad4defd9f70c3ac0e763d0b2c3bf1baac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.5 MB (193521473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72c816d5b3bc0b7cde1fc8b63657a3c4a6463eb1b7ead15df4b7c0c943abf6ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:45:06 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 13:45:06 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 13:45:32 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 13:45:32 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 13:45:36 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 13:45:37 GMT
CMD ["node"]
# Sun, 30 Dec 2018 04:39:16 GMT
ENV GOSU_VERSION=1.10
# Sun, 30 Dec 2018 04:39:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 30 Dec 2018 04:39:20 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 11:38:48 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 11:39:08 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 11:39:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 11:39:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 18 Jan 2019 12:22:50 GMT
ENV GHOST_VERSION=2.11.1
# Fri, 18 Jan 2019 12:23:35 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 18 Jan 2019 12:25:12 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 18 Jan 2019 12:25:12 GMT
WORKDIR /var/lib/ghost
# Fri, 18 Jan 2019 12:25:13 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 18 Jan 2019 12:25:13 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Fri, 18 Jan 2019 12:25:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Jan 2019 12:25:13 GMT
EXPOSE 2368
# Fri, 18 Jan 2019 12:25:13 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864b1c8b35709465623558c333e84a894532af4cec82c28455558e6b2df69fd4`  
		Last Modified: Sat, 29 Dec 2018 13:54:20 GMT  
		Size: 4.1 KB (4136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b35d3a521bbb3879f91506b613374abfc6ba3297e3520f8096742be36c3b6c`  
		Last Modified: Sat, 29 Dec 2018 13:54:35 GMT  
		Size: 27.8 MB (27846386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b05a73a347ee0cbfc8ee467ad70b72787be1fa54f858efe6d5808c42615ec1c`  
		Last Modified: Sat, 29 Dec 2018 13:54:21 GMT  
		Size: 1.3 MB (1318202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1397d2f67ee5b92fb7b2a5ef9dd676f4b715cfd9e61b77b1e894346816eeaf`  
		Last Modified: Sun, 30 Dec 2018 04:45:48 GMT  
		Size: 480.8 KB (480826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e533ea12c7e81fd86426ab9462a8d215620cf974df8762438df160dc46843e`  
		Last Modified: Tue, 15 Jan 2019 11:44:58 GMT  
		Size: 17.3 MB (17285455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8c115856bbdce95413715ba3fc24425a572bf82d2e631613d675dcd2a8c5a5`  
		Last Modified: Fri, 18 Jan 2019 12:26:09 GMT  
		Size: 101.1 MB (101120572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac69851a9fe62a1f929d3ff955689ad05fcfd4f6f1dd8548fcc99880f3a6ac4`  
		Last Modified: Fri, 18 Jan 2019 12:25:47 GMT  
		Size: 22.3 MB (22332182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed475596d4e69013627228eafaf639202cbc86a43b90d988f9f41e2273a9a08`  
		Last Modified: Fri, 18 Jan 2019 12:25:41 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.11` - linux; ppc64le

```console
$ docker pull ghost@sha256:f11160e1afe4075db123d34b27a6787d46d6a715dccf4d44b3a16403b225c254
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.6 MB (198594964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2ba567fea93b00851cc63132e6ff9b37473ed87172df0f66cc26adf0b7dec23`
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
# Wed, 23 Jan 2019 16:10:07 GMT
ENV GHOST_VERSION=2.11.1
# Wed, 23 Jan 2019 16:13:26 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 23 Jan 2019 16:17:36 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 23 Jan 2019 16:17:42 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Jan 2019 16:17:44 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Jan 2019 16:17:46 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 23 Jan 2019 16:17:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 16:17:51 GMT
EXPOSE 2368
# Wed, 23 Jan 2019 16:17:53 GMT
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
	-	`sha256:7cb78b7d2c1f436e3b3a04a50444b2c8373e65fa36b4522a6950b9e7c0d69844`  
		Last Modified: Wed, 23 Jan 2019 16:27:07 GMT  
		Size: 101.2 MB (101161381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fca97e40c53cfd655070aae73b76ea273488ae641a1a1dc6e038fce1190dd907`  
		Last Modified: Wed, 23 Jan 2019 16:25:30 GMT  
		Size: 28.6 MB (28623383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4067be82d4d8439d08927a58d80b717d162be93a151537f76252a54c9bc3229c`  
		Last Modified: Wed, 23 Jan 2019 16:25:21 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.11` - linux; s390x

```console
$ docker pull ghost@sha256:72fc7e67ecf07bd16b4f419cc2cc79273dfef3792883fc1c11778dc8ca8300ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.1 MB (199078792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fef29c2ad37479cc896cbea2f1d5464592c33b734986e202f2f8b01cd69a407`
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
# Wed, 23 Jan 2019 17:05:32 GMT
ENV GHOST_VERSION=2.11.1
# Wed, 23 Jan 2019 17:06:30 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 23 Jan 2019 17:08:22 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 23 Jan 2019 17:08:23 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Jan 2019 17:08:23 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Jan 2019 17:08:23 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 23 Jan 2019 17:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 17:08:24 GMT
EXPOSE 2368
# Wed, 23 Jan 2019 17:08:24 GMT
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
	-	`sha256:c84861cf8abe084ab822fd5e5cc48487c0c56edfae527b8072146c2bf32deb56`  
		Last Modified: Wed, 23 Jan 2019 17:12:26 GMT  
		Size: 101.2 MB (101156201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7886d4dff94e74c02a51147edde5afe06687a9997499546ee8ff9f0ae222c23c`  
		Last Modified: Wed, 23 Jan 2019 17:12:06 GMT  
		Size: 28.6 MB (28599179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe612260a77320e32f235fadceeb6828ad7a0cedeac884161ba209a6bbe0345d`  
		Last Modified: Wed, 23 Jan 2019 17:11:57 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.11.1`

```console
$ docker pull ghost@sha256:e549f4a7dbcb3ba6486c4c0b20a6cff340f475f42382706bd24869eda1f5cf74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:2.11.1` - linux; amd64

```console
$ docker pull ghost@sha256:df704b17757fdcdfba783badeb317dd514e86d77fba731973a4381142ef9850c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.2 MB (207155749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14eb3598a9b53dd1e27d4acbb992319240750fb6cfc1b4c4d25dca69756a4f32`
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
# Wed, 23 Jan 2019 12:00:19 GMT
ENV GHOST_VERSION=2.11.1
# Wed, 23 Jan 2019 12:01:12 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 23 Jan 2019 12:01:24 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 23 Jan 2019 12:01:24 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Jan 2019 12:01:24 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Jan 2019 12:01:25 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 23 Jan 2019 12:01:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 12:01:25 GMT
EXPOSE 2368
# Wed, 23 Jan 2019 12:01:25 GMT
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
	-	`sha256:fd0e65c420551759a9e8239ad8c18c487410c026897994c04febb14575ecb438`  
		Last Modified: Wed, 23 Jan 2019 12:03:25 GMT  
		Size: 126.6 MB (126554128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ce62588c3ef4a3b3e13ae0451b277818c73988b51006a8fce62ac46621155e`  
		Last Modified: Wed, 23 Jan 2019 12:02:56 GMT  
		Size: 11.0 MB (10961079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9d945b72a9c9971b3e90c822d9a5dc339cc23cb7ee50abaa176a7a5f81d4c9`  
		Last Modified: Wed, 23 Jan 2019 12:02:54 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.11.1` - linux; arm variant v7

```console
$ docker pull ghost@sha256:14d874af07a2cdbaf3cbee96138d49cfc676d76bb96ed984bfe1ba5a71566a45
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.1 MB (201139848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2821db0c3e5a1cb1ff0c024621dd09867bbfb21d4516068ee3ec87896c8593ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:15:30 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 14:15:30 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 14:15:58 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 14:16:00 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 14:16:06 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 14:16:06 GMT
CMD ["node"]
# Wed, 09 Jan 2019 12:57:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 09 Jan 2019 12:57:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 09 Jan 2019 12:57:49 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 12:58:28 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 12:59:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 12:59:08 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 12:59:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 18 Jan 2019 12:58:52 GMT
ENV GHOST_VERSION=2.11.1
# Fri, 18 Jan 2019 13:00:32 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 18 Jan 2019 13:04:03 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 18 Jan 2019 13:04:04 GMT
WORKDIR /var/lib/ghost
# Fri, 18 Jan 2019 13:04:04 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 18 Jan 2019 13:04:05 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Fri, 18 Jan 2019 13:04:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Jan 2019 13:04:05 GMT
EXPOSE 2368
# Fri, 18 Jan 2019 13:04:06 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff754dc7b1a17993efd664e943c530a0182f1a01a3908f3199242d9200363283`  
		Last Modified: Sat, 29 Dec 2018 14:26:05 GMT  
		Size: 4.2 KB (4167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c80511c449b6d403e55b3e7d476decb67876f78bc9d82dafba393b4c7debde`  
		Last Modified: Sat, 29 Dec 2018 14:26:13 GMT  
		Size: 25.5 MB (25468444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31872e78463853fb4b17f9330366c5d7429d8c15126dea9b9a3b8cdb414e41ac`  
		Last Modified: Sat, 29 Dec 2018 14:26:06 GMT  
		Size: 1.3 MB (1318218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050c8801ed1bd3d1590218c6ea6f69084bfab42699791a03036e2d4809602ba0`  
		Last Modified: Wed, 09 Jan 2019 13:10:56 GMT  
		Size: 475.4 KB (475432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11731524fdb74753a93df15c5311499ee5ec47aea04ea40244f8971cd8e8f8ec`  
		Last Modified: Tue, 15 Jan 2019 13:09:48 GMT  
		Size: 17.3 MB (17286039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041f25b31d661d1ea58eab1812c75173a2b15f159ebeae99ff6b046f75e8b060`  
		Last Modified: Fri, 18 Jan 2019 13:05:17 GMT  
		Size: 108.0 MB (108016344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e978cdf9fa75592e6d5ae4eb12e65b5e3ec4a39003a47da78ba243c6b1acc453`  
		Last Modified: Fri, 18 Jan 2019 13:04:43 GMT  
		Size: 29.3 MB (29292890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2087106408a4e0bf752ee93079668e8cb2221075f0cb14ff99b585b040c5e388`  
		Last Modified: Fri, 18 Jan 2019 13:04:33 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.11.1` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:8fc97f41082fc3cf129af0669a13381af64d538d74c2ddb163f171b720b2ce18
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.1 MB (202134558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:790efe10e1e65dc4211e71966be931f7f50a1b8b92ef4d086e9376cf14d92f44`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 17:58:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 17:58:32 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 17:59:33 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 17:59:34 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 17:59:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 17:59:42 GMT
CMD ["node"]
# Sun, 30 Dec 2018 05:08:26 GMT
ENV GOSU_VERSION=1.10
# Sun, 30 Dec 2018 05:08:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 30 Dec 2018 05:08:39 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 09:40:21 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 09:41:09 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 09:41:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 09:41:11 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 18 Jan 2019 09:46:59 GMT
ENV GHOST_VERSION=2.11.1
# Fri, 18 Jan 2019 09:48:49 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 18 Jan 2019 09:53:57 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 18 Jan 2019 09:53:57 GMT
WORKDIR /var/lib/ghost
# Fri, 18 Jan 2019 09:53:58 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 18 Jan 2019 09:53:59 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Fri, 18 Jan 2019 09:54:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Jan 2019 09:54:00 GMT
EXPOSE 2368
# Fri, 18 Jan 2019 09:54:01 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215b1d1716040331cb6bcee14dca0128f9c3c33d31a4b5344981342d170735f5`  
		Last Modified: Sat, 29 Dec 2018 18:04:42 GMT  
		Size: 4.2 KB (4159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383aea228065e79be898695615936b1322aa3fe292860e19b8cc78ec1ed8f153`  
		Last Modified: Sat, 29 Dec 2018 18:04:54 GMT  
		Size: 26.7 MB (26700751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659a972601d83dcea81dc32925bf08aab47633903e237e8e732e3131978ab292`  
		Last Modified: Sat, 29 Dec 2018 18:04:43 GMT  
		Size: 1.3 MB (1318215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41bddf97ff415f8c037a0ca819a65b609fde90e6c2dc3bb18b48a95f497634a4`  
		Last Modified: Sun, 30 Dec 2018 05:28:06 GMT  
		Size: 468.9 KB (468936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20ea9dc0929e9ac0942d9bf5036be97bfb8f6c6df0c6fe01af87b1f8fa4cf53`  
		Last Modified: Tue, 15 Jan 2019 09:56:52 GMT  
		Size: 17.3 MB (17286407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4b27937bb68b349eda1cb5d50e7a53d5a3e5c6187896c372e74aeae0ecfcb7`  
		Last Modified: Fri, 18 Jan 2019 09:55:54 GMT  
		Size: 107.1 MB (107131542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ac6e4a534c972f1d1bb05371a69a9229e84fe39862df0b2fdcae843f6df1fe`  
		Last Modified: Fri, 18 Jan 2019 09:55:14 GMT  
		Size: 28.9 MB (28886478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec0fedf8286b057f7b2f661d6b660fd6c1ed6dbcba42c6197bf011049a8093dc`  
		Last Modified: Fri, 18 Jan 2019 09:55:00 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.11.1` - linux; 386

```console
$ docker pull ghost@sha256:aa3082fa3d7b346dedf052aa8b6e659ad4defd9f70c3ac0e763d0b2c3bf1baac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.5 MB (193521473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72c816d5b3bc0b7cde1fc8b63657a3c4a6463eb1b7ead15df4b7c0c943abf6ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:45:06 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 13:45:06 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 13:45:32 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 13:45:32 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 13:45:36 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 13:45:37 GMT
CMD ["node"]
# Sun, 30 Dec 2018 04:39:16 GMT
ENV GOSU_VERSION=1.10
# Sun, 30 Dec 2018 04:39:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 30 Dec 2018 04:39:20 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 11:38:48 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 11:39:08 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 11:39:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 11:39:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 18 Jan 2019 12:22:50 GMT
ENV GHOST_VERSION=2.11.1
# Fri, 18 Jan 2019 12:23:35 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 18 Jan 2019 12:25:12 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 18 Jan 2019 12:25:12 GMT
WORKDIR /var/lib/ghost
# Fri, 18 Jan 2019 12:25:13 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 18 Jan 2019 12:25:13 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Fri, 18 Jan 2019 12:25:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Jan 2019 12:25:13 GMT
EXPOSE 2368
# Fri, 18 Jan 2019 12:25:13 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864b1c8b35709465623558c333e84a894532af4cec82c28455558e6b2df69fd4`  
		Last Modified: Sat, 29 Dec 2018 13:54:20 GMT  
		Size: 4.1 KB (4136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b35d3a521bbb3879f91506b613374abfc6ba3297e3520f8096742be36c3b6c`  
		Last Modified: Sat, 29 Dec 2018 13:54:35 GMT  
		Size: 27.8 MB (27846386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b05a73a347ee0cbfc8ee467ad70b72787be1fa54f858efe6d5808c42615ec1c`  
		Last Modified: Sat, 29 Dec 2018 13:54:21 GMT  
		Size: 1.3 MB (1318202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1397d2f67ee5b92fb7b2a5ef9dd676f4b715cfd9e61b77b1e894346816eeaf`  
		Last Modified: Sun, 30 Dec 2018 04:45:48 GMT  
		Size: 480.8 KB (480826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e533ea12c7e81fd86426ab9462a8d215620cf974df8762438df160dc46843e`  
		Last Modified: Tue, 15 Jan 2019 11:44:58 GMT  
		Size: 17.3 MB (17285455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8c115856bbdce95413715ba3fc24425a572bf82d2e631613d675dcd2a8c5a5`  
		Last Modified: Fri, 18 Jan 2019 12:26:09 GMT  
		Size: 101.1 MB (101120572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac69851a9fe62a1f929d3ff955689ad05fcfd4f6f1dd8548fcc99880f3a6ac4`  
		Last Modified: Fri, 18 Jan 2019 12:25:47 GMT  
		Size: 22.3 MB (22332182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed475596d4e69013627228eafaf639202cbc86a43b90d988f9f41e2273a9a08`  
		Last Modified: Fri, 18 Jan 2019 12:25:41 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.11.1` - linux; ppc64le

```console
$ docker pull ghost@sha256:f11160e1afe4075db123d34b27a6787d46d6a715dccf4d44b3a16403b225c254
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.6 MB (198594964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2ba567fea93b00851cc63132e6ff9b37473ed87172df0f66cc26adf0b7dec23`
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
# Wed, 23 Jan 2019 16:10:07 GMT
ENV GHOST_VERSION=2.11.1
# Wed, 23 Jan 2019 16:13:26 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 23 Jan 2019 16:17:36 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 23 Jan 2019 16:17:42 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Jan 2019 16:17:44 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Jan 2019 16:17:46 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 23 Jan 2019 16:17:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 16:17:51 GMT
EXPOSE 2368
# Wed, 23 Jan 2019 16:17:53 GMT
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
	-	`sha256:7cb78b7d2c1f436e3b3a04a50444b2c8373e65fa36b4522a6950b9e7c0d69844`  
		Last Modified: Wed, 23 Jan 2019 16:27:07 GMT  
		Size: 101.2 MB (101161381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fca97e40c53cfd655070aae73b76ea273488ae641a1a1dc6e038fce1190dd907`  
		Last Modified: Wed, 23 Jan 2019 16:25:30 GMT  
		Size: 28.6 MB (28623383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4067be82d4d8439d08927a58d80b717d162be93a151537f76252a54c9bc3229c`  
		Last Modified: Wed, 23 Jan 2019 16:25:21 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.11.1` - linux; s390x

```console
$ docker pull ghost@sha256:72fc7e67ecf07bd16b4f419cc2cc79273dfef3792883fc1c11778dc8ca8300ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.1 MB (199078792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fef29c2ad37479cc896cbea2f1d5464592c33b734986e202f2f8b01cd69a407`
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
# Wed, 23 Jan 2019 17:05:32 GMT
ENV GHOST_VERSION=2.11.1
# Wed, 23 Jan 2019 17:06:30 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 23 Jan 2019 17:08:22 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 23 Jan 2019 17:08:23 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Jan 2019 17:08:23 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Jan 2019 17:08:23 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 23 Jan 2019 17:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 17:08:24 GMT
EXPOSE 2368
# Wed, 23 Jan 2019 17:08:24 GMT
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
	-	`sha256:c84861cf8abe084ab822fd5e5cc48487c0c56edfae527b8072146c2bf32deb56`  
		Last Modified: Wed, 23 Jan 2019 17:12:26 GMT  
		Size: 101.2 MB (101156201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7886d4dff94e74c02a51147edde5afe06687a9997499546ee8ff9f0ae222c23c`  
		Last Modified: Wed, 23 Jan 2019 17:12:06 GMT  
		Size: 28.6 MB (28599179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe612260a77320e32f235fadceeb6828ad7a0cedeac884161ba209a6bbe0345d`  
		Last Modified: Wed, 23 Jan 2019 17:11:57 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.11.1-alpine`

```console
$ docker pull ghost@sha256:3be6e0a66f53790bd6231d8621e4660029b7148140be005aa88857c66b214f2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:2.11.1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:ebd3a119d6267da042a9b69098db0e6e3f579f7d401c1ddbcd56aed604094a45
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.1 MB (179148682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acecc95425aa61aabee47519eba58aeb9b9c558aa79374da6e7a5668a23378be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 01:22:27 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 01:40:46 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 01:40:46 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 01:40:51 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 01:40:51 GMT
CMD ["node"]
# Thu, 27 Dec 2018 03:09:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 27 Dec 2018 03:09:35 GMT
RUN apk add --no-cache 		bash
# Thu, 27 Dec 2018 03:09:35 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 02:20:55 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 02:21:21 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 02:21:22 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 02:21:22 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 18 Jan 2019 00:25:14 GMT
ENV GHOST_VERSION=2.11.1
# Fri, 18 Jan 2019 00:26:19 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 18 Jan 2019 00:26:35 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 18 Jan 2019 00:26:35 GMT
WORKDIR /var/lib/ghost
# Fri, 18 Jan 2019 00:26:35 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 18 Jan 2019 00:26:36 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Fri, 18 Jan 2019 00:26:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Jan 2019 00:26:36 GMT
EXPOSE 2368
# Fri, 18 Jan 2019 00:26:36 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6268ae5d1d7bedece5f65f36723304879063e13f205431cea73abea4fa89646`  
		Last Modified: Thu, 27 Dec 2018 02:48:55 GMT  
		Size: 18.9 MB (18870715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97eb9028b14bfd2dee6c78f631e9d83fac380a7ff52fe5ae834d4a13e88241b6`  
		Last Modified: Thu, 27 Dec 2018 02:48:52 GMT  
		Size: 1.3 MB (1325188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05da853e25f62140ff104e26d62e13ebd9761c78ac8438952218331091233589`  
		Last Modified: Thu, 27 Dec 2018 03:13:31 GMT  
		Size: 9.4 KB (9395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88631e2d93af183938f9aacd67119808869c9789687af2fefa4dbcaaedf30eb1`  
		Last Modified: Thu, 27 Dec 2018 03:13:32 GMT  
		Size: 1.2 MB (1173431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385cdfcb2e2473111e930279dff82386af117a0b0ac57edc890357fdf0c13a1f`  
		Last Modified: Tue, 15 Jan 2019 02:25:04 GMT  
		Size: 17.3 MB (17285277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124dc7812921576183e2aeedc8b1dbdf02163f988e81eb51bb52373980e2856e`  
		Last Modified: Fri, 18 Jan 2019 00:28:30 GMT  
		Size: 127.5 MB (127468263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92685cc329752c07c496480574050a33cd7d52fe963b2e654af711e60ac6ea88`  
		Last Modified: Fri, 18 Jan 2019 00:28:01 GMT  
		Size: 10.8 MB (10808840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab53bcf3b2627af54fb50ba85a380e5dd88011bf576bda985104e9bb96189b1b`  
		Last Modified: Fri, 18 Jan 2019 00:27:58 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.11.1-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:aa3622a9852239f26de6839c76237b6e2354ed85af6e43f9bfcb5cd55f37a505
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.6 MB (162564687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa6e6a0003af8336e7804b4aabf4a109434df4712e3773b7d36c6f44465c680e`
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
# Fri, 18 Jan 2019 08:49:21 GMT
ENV GHOST_VERSION=2.11.1
# Fri, 18 Jan 2019 08:51:02 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 18 Jan 2019 08:54:13 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 18 Jan 2019 08:54:14 GMT
WORKDIR /var/lib/ghost
# Fri, 18 Jan 2019 08:54:14 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 18 Jan 2019 08:54:15 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Fri, 18 Jan 2019 08:54:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Jan 2019 08:54:15 GMT
EXPOSE 2368
# Fri, 18 Jan 2019 08:54:16 GMT
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
	-	`sha256:b944c553623fdb70b7e6f24bb33e17b01b40ddebc70a449a9bda8ca6a1a582fc`  
		Last Modified: Fri, 18 Jan 2019 08:58:28 GMT  
		Size: 101.1 MB (101123235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b1a1cf175031fb646b4c7f76d8e230534a0d09f3fbd0e2b69e9932ab05907e`  
		Last Modified: Fri, 18 Jan 2019 08:57:52 GMT  
		Size: 21.7 MB (21715322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e61785480af8737d5ea013308fdfc298a0172f5ace3a48d81dfdfe13ce8e9d`  
		Last Modified: Fri, 18 Jan 2019 08:57:45 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.11.1-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:5e1f4d11d6db410c9c981ed6e38f4dd52790b042dbbb2579a0a7dee7e0a19426
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.1 MB (164129496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1216084b7d8f33c7a4e434f1fa4fd6462ee7ee19b582dd5fa7e1ca8429262cc`
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
# Fri, 18 Jan 2019 09:31:59 GMT
ENV GHOST_VERSION=2.11.1
# Fri, 18 Jan 2019 09:33:47 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 18 Jan 2019 09:36:11 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 18 Jan 2019 09:36:14 GMT
WORKDIR /var/lib/ghost
# Fri, 18 Jan 2019 09:36:15 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 18 Jan 2019 09:36:16 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Fri, 18 Jan 2019 09:36:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Jan 2019 09:36:19 GMT
EXPOSE 2368
# Fri, 18 Jan 2019 09:36:20 GMT
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
	-	`sha256:4168c6d269126a59d4ca7146e8f2df24630c7647e584e654708c868cd677e018`  
		Last Modified: Fri, 18 Jan 2019 09:39:40 GMT  
		Size: 101.2 MB (101162142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca31dfd1e28113a25561d6e5a6cd659b920bdb739a1d7955a62aaad8f96e34e0`  
		Last Modified: Fri, 18 Jan 2019 09:38:41 GMT  
		Size: 22.3 MB (22314189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a856ca9dee67a12855f65ba76a5b572467e669f9980ae933f5db2487103b5162`  
		Last Modified: Fri, 18 Jan 2019 09:38:36 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.11-alpine`

```console
$ docker pull ghost@sha256:3be6e0a66f53790bd6231d8621e4660029b7148140be005aa88857c66b214f2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:2.11-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:ebd3a119d6267da042a9b69098db0e6e3f579f7d401c1ddbcd56aed604094a45
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.1 MB (179148682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acecc95425aa61aabee47519eba58aeb9b9c558aa79374da6e7a5668a23378be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 01:22:27 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 01:40:46 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 01:40:46 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 01:40:51 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 01:40:51 GMT
CMD ["node"]
# Thu, 27 Dec 2018 03:09:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 27 Dec 2018 03:09:35 GMT
RUN apk add --no-cache 		bash
# Thu, 27 Dec 2018 03:09:35 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 02:20:55 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 02:21:21 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 02:21:22 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 02:21:22 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 18 Jan 2019 00:25:14 GMT
ENV GHOST_VERSION=2.11.1
# Fri, 18 Jan 2019 00:26:19 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 18 Jan 2019 00:26:35 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 18 Jan 2019 00:26:35 GMT
WORKDIR /var/lib/ghost
# Fri, 18 Jan 2019 00:26:35 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 18 Jan 2019 00:26:36 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Fri, 18 Jan 2019 00:26:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Jan 2019 00:26:36 GMT
EXPOSE 2368
# Fri, 18 Jan 2019 00:26:36 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6268ae5d1d7bedece5f65f36723304879063e13f205431cea73abea4fa89646`  
		Last Modified: Thu, 27 Dec 2018 02:48:55 GMT  
		Size: 18.9 MB (18870715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97eb9028b14bfd2dee6c78f631e9d83fac380a7ff52fe5ae834d4a13e88241b6`  
		Last Modified: Thu, 27 Dec 2018 02:48:52 GMT  
		Size: 1.3 MB (1325188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05da853e25f62140ff104e26d62e13ebd9761c78ac8438952218331091233589`  
		Last Modified: Thu, 27 Dec 2018 03:13:31 GMT  
		Size: 9.4 KB (9395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88631e2d93af183938f9aacd67119808869c9789687af2fefa4dbcaaedf30eb1`  
		Last Modified: Thu, 27 Dec 2018 03:13:32 GMT  
		Size: 1.2 MB (1173431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385cdfcb2e2473111e930279dff82386af117a0b0ac57edc890357fdf0c13a1f`  
		Last Modified: Tue, 15 Jan 2019 02:25:04 GMT  
		Size: 17.3 MB (17285277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124dc7812921576183e2aeedc8b1dbdf02163f988e81eb51bb52373980e2856e`  
		Last Modified: Fri, 18 Jan 2019 00:28:30 GMT  
		Size: 127.5 MB (127468263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92685cc329752c07c496480574050a33cd7d52fe963b2e654af711e60ac6ea88`  
		Last Modified: Fri, 18 Jan 2019 00:28:01 GMT  
		Size: 10.8 MB (10808840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab53bcf3b2627af54fb50ba85a380e5dd88011bf576bda985104e9bb96189b1b`  
		Last Modified: Fri, 18 Jan 2019 00:27:58 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.11-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:aa3622a9852239f26de6839c76237b6e2354ed85af6e43f9bfcb5cd55f37a505
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.6 MB (162564687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa6e6a0003af8336e7804b4aabf4a109434df4712e3773b7d36c6f44465c680e`
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
# Fri, 18 Jan 2019 08:49:21 GMT
ENV GHOST_VERSION=2.11.1
# Fri, 18 Jan 2019 08:51:02 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 18 Jan 2019 08:54:13 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 18 Jan 2019 08:54:14 GMT
WORKDIR /var/lib/ghost
# Fri, 18 Jan 2019 08:54:14 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 18 Jan 2019 08:54:15 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Fri, 18 Jan 2019 08:54:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Jan 2019 08:54:15 GMT
EXPOSE 2368
# Fri, 18 Jan 2019 08:54:16 GMT
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
	-	`sha256:b944c553623fdb70b7e6f24bb33e17b01b40ddebc70a449a9bda8ca6a1a582fc`  
		Last Modified: Fri, 18 Jan 2019 08:58:28 GMT  
		Size: 101.1 MB (101123235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b1a1cf175031fb646b4c7f76d8e230534a0d09f3fbd0e2b69e9932ab05907e`  
		Last Modified: Fri, 18 Jan 2019 08:57:52 GMT  
		Size: 21.7 MB (21715322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e61785480af8737d5ea013308fdfc298a0172f5ace3a48d81dfdfe13ce8e9d`  
		Last Modified: Fri, 18 Jan 2019 08:57:45 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.11-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:5e1f4d11d6db410c9c981ed6e38f4dd52790b042dbbb2579a0a7dee7e0a19426
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.1 MB (164129496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1216084b7d8f33c7a4e434f1fa4fd6462ee7ee19b582dd5fa7e1ca8429262cc`
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
# Fri, 18 Jan 2019 09:31:59 GMT
ENV GHOST_VERSION=2.11.1
# Fri, 18 Jan 2019 09:33:47 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 18 Jan 2019 09:36:11 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 18 Jan 2019 09:36:14 GMT
WORKDIR /var/lib/ghost
# Fri, 18 Jan 2019 09:36:15 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 18 Jan 2019 09:36:16 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Fri, 18 Jan 2019 09:36:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Jan 2019 09:36:19 GMT
EXPOSE 2368
# Fri, 18 Jan 2019 09:36:20 GMT
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
	-	`sha256:4168c6d269126a59d4ca7146e8f2df24630c7647e584e654708c868cd677e018`  
		Last Modified: Fri, 18 Jan 2019 09:39:40 GMT  
		Size: 101.2 MB (101162142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca31dfd1e28113a25561d6e5a6cd659b920bdb739a1d7955a62aaad8f96e34e0`  
		Last Modified: Fri, 18 Jan 2019 09:38:41 GMT  
		Size: 22.3 MB (22314189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a856ca9dee67a12855f65ba76a5b572467e669f9980ae933f5db2487103b5162`  
		Last Modified: Fri, 18 Jan 2019 09:38:36 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2-alpine`

```console
$ docker pull ghost@sha256:3be6e0a66f53790bd6231d8621e4660029b7148140be005aa88857c66b214f2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:2-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:ebd3a119d6267da042a9b69098db0e6e3f579f7d401c1ddbcd56aed604094a45
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.1 MB (179148682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acecc95425aa61aabee47519eba58aeb9b9c558aa79374da6e7a5668a23378be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 01:22:27 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 01:40:46 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 01:40:46 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 01:40:51 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 01:40:51 GMT
CMD ["node"]
# Thu, 27 Dec 2018 03:09:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 27 Dec 2018 03:09:35 GMT
RUN apk add --no-cache 		bash
# Thu, 27 Dec 2018 03:09:35 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 02:20:55 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 02:21:21 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 02:21:22 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 02:21:22 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 18 Jan 2019 00:25:14 GMT
ENV GHOST_VERSION=2.11.1
# Fri, 18 Jan 2019 00:26:19 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 18 Jan 2019 00:26:35 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 18 Jan 2019 00:26:35 GMT
WORKDIR /var/lib/ghost
# Fri, 18 Jan 2019 00:26:35 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 18 Jan 2019 00:26:36 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Fri, 18 Jan 2019 00:26:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Jan 2019 00:26:36 GMT
EXPOSE 2368
# Fri, 18 Jan 2019 00:26:36 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6268ae5d1d7bedece5f65f36723304879063e13f205431cea73abea4fa89646`  
		Last Modified: Thu, 27 Dec 2018 02:48:55 GMT  
		Size: 18.9 MB (18870715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97eb9028b14bfd2dee6c78f631e9d83fac380a7ff52fe5ae834d4a13e88241b6`  
		Last Modified: Thu, 27 Dec 2018 02:48:52 GMT  
		Size: 1.3 MB (1325188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05da853e25f62140ff104e26d62e13ebd9761c78ac8438952218331091233589`  
		Last Modified: Thu, 27 Dec 2018 03:13:31 GMT  
		Size: 9.4 KB (9395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88631e2d93af183938f9aacd67119808869c9789687af2fefa4dbcaaedf30eb1`  
		Last Modified: Thu, 27 Dec 2018 03:13:32 GMT  
		Size: 1.2 MB (1173431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385cdfcb2e2473111e930279dff82386af117a0b0ac57edc890357fdf0c13a1f`  
		Last Modified: Tue, 15 Jan 2019 02:25:04 GMT  
		Size: 17.3 MB (17285277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124dc7812921576183e2aeedc8b1dbdf02163f988e81eb51bb52373980e2856e`  
		Last Modified: Fri, 18 Jan 2019 00:28:30 GMT  
		Size: 127.5 MB (127468263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92685cc329752c07c496480574050a33cd7d52fe963b2e654af711e60ac6ea88`  
		Last Modified: Fri, 18 Jan 2019 00:28:01 GMT  
		Size: 10.8 MB (10808840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab53bcf3b2627af54fb50ba85a380e5dd88011bf576bda985104e9bb96189b1b`  
		Last Modified: Fri, 18 Jan 2019 00:27:58 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:aa3622a9852239f26de6839c76237b6e2354ed85af6e43f9bfcb5cd55f37a505
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.6 MB (162564687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa6e6a0003af8336e7804b4aabf4a109434df4712e3773b7d36c6f44465c680e`
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
# Fri, 18 Jan 2019 08:49:21 GMT
ENV GHOST_VERSION=2.11.1
# Fri, 18 Jan 2019 08:51:02 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 18 Jan 2019 08:54:13 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 18 Jan 2019 08:54:14 GMT
WORKDIR /var/lib/ghost
# Fri, 18 Jan 2019 08:54:14 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 18 Jan 2019 08:54:15 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Fri, 18 Jan 2019 08:54:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Jan 2019 08:54:15 GMT
EXPOSE 2368
# Fri, 18 Jan 2019 08:54:16 GMT
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
	-	`sha256:b944c553623fdb70b7e6f24bb33e17b01b40ddebc70a449a9bda8ca6a1a582fc`  
		Last Modified: Fri, 18 Jan 2019 08:58:28 GMT  
		Size: 101.1 MB (101123235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b1a1cf175031fb646b4c7f76d8e230534a0d09f3fbd0e2b69e9932ab05907e`  
		Last Modified: Fri, 18 Jan 2019 08:57:52 GMT  
		Size: 21.7 MB (21715322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e61785480af8737d5ea013308fdfc298a0172f5ace3a48d81dfdfe13ce8e9d`  
		Last Modified: Fri, 18 Jan 2019 08:57:45 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:5e1f4d11d6db410c9c981ed6e38f4dd52790b042dbbb2579a0a7dee7e0a19426
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.1 MB (164129496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1216084b7d8f33c7a4e434f1fa4fd6462ee7ee19b582dd5fa7e1ca8429262cc`
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
# Fri, 18 Jan 2019 09:31:59 GMT
ENV GHOST_VERSION=2.11.1
# Fri, 18 Jan 2019 09:33:47 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 18 Jan 2019 09:36:11 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 18 Jan 2019 09:36:14 GMT
WORKDIR /var/lib/ghost
# Fri, 18 Jan 2019 09:36:15 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 18 Jan 2019 09:36:16 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Fri, 18 Jan 2019 09:36:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Jan 2019 09:36:19 GMT
EXPOSE 2368
# Fri, 18 Jan 2019 09:36:20 GMT
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
	-	`sha256:4168c6d269126a59d4ca7146e8f2df24630c7647e584e654708c868cd677e018`  
		Last Modified: Fri, 18 Jan 2019 09:39:40 GMT  
		Size: 101.2 MB (101162142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca31dfd1e28113a25561d6e5a6cd659b920bdb739a1d7955a62aaad8f96e34e0`  
		Last Modified: Fri, 18 Jan 2019 09:38:41 GMT  
		Size: 22.3 MB (22314189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a856ca9dee67a12855f65ba76a5b572467e669f9980ae933f5db2487103b5162`  
		Last Modified: Fri, 18 Jan 2019 09:38:36 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:3be6e0a66f53790bd6231d8621e4660029b7148140be005aa88857c66b214f2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:ebd3a119d6267da042a9b69098db0e6e3f579f7d401c1ddbcd56aed604094a45
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.1 MB (179148682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acecc95425aa61aabee47519eba58aeb9b9c558aa79374da6e7a5668a23378be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 01:22:27 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 01:40:46 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 01:40:46 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 01:40:51 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 01:40:51 GMT
CMD ["node"]
# Thu, 27 Dec 2018 03:09:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 27 Dec 2018 03:09:35 GMT
RUN apk add --no-cache 		bash
# Thu, 27 Dec 2018 03:09:35 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 02:20:55 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 02:21:21 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 02:21:22 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 02:21:22 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 18 Jan 2019 00:25:14 GMT
ENV GHOST_VERSION=2.11.1
# Fri, 18 Jan 2019 00:26:19 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 18 Jan 2019 00:26:35 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 18 Jan 2019 00:26:35 GMT
WORKDIR /var/lib/ghost
# Fri, 18 Jan 2019 00:26:35 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 18 Jan 2019 00:26:36 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Fri, 18 Jan 2019 00:26:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Jan 2019 00:26:36 GMT
EXPOSE 2368
# Fri, 18 Jan 2019 00:26:36 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6268ae5d1d7bedece5f65f36723304879063e13f205431cea73abea4fa89646`  
		Last Modified: Thu, 27 Dec 2018 02:48:55 GMT  
		Size: 18.9 MB (18870715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97eb9028b14bfd2dee6c78f631e9d83fac380a7ff52fe5ae834d4a13e88241b6`  
		Last Modified: Thu, 27 Dec 2018 02:48:52 GMT  
		Size: 1.3 MB (1325188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05da853e25f62140ff104e26d62e13ebd9761c78ac8438952218331091233589`  
		Last Modified: Thu, 27 Dec 2018 03:13:31 GMT  
		Size: 9.4 KB (9395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88631e2d93af183938f9aacd67119808869c9789687af2fefa4dbcaaedf30eb1`  
		Last Modified: Thu, 27 Dec 2018 03:13:32 GMT  
		Size: 1.2 MB (1173431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385cdfcb2e2473111e930279dff82386af117a0b0ac57edc890357fdf0c13a1f`  
		Last Modified: Tue, 15 Jan 2019 02:25:04 GMT  
		Size: 17.3 MB (17285277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124dc7812921576183e2aeedc8b1dbdf02163f988e81eb51bb52373980e2856e`  
		Last Modified: Fri, 18 Jan 2019 00:28:30 GMT  
		Size: 127.5 MB (127468263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92685cc329752c07c496480574050a33cd7d52fe963b2e654af711e60ac6ea88`  
		Last Modified: Fri, 18 Jan 2019 00:28:01 GMT  
		Size: 10.8 MB (10808840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab53bcf3b2627af54fb50ba85a380e5dd88011bf576bda985104e9bb96189b1b`  
		Last Modified: Fri, 18 Jan 2019 00:27:58 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:aa3622a9852239f26de6839c76237b6e2354ed85af6e43f9bfcb5cd55f37a505
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.6 MB (162564687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa6e6a0003af8336e7804b4aabf4a109434df4712e3773b7d36c6f44465c680e`
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
# Fri, 18 Jan 2019 08:49:21 GMT
ENV GHOST_VERSION=2.11.1
# Fri, 18 Jan 2019 08:51:02 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 18 Jan 2019 08:54:13 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 18 Jan 2019 08:54:14 GMT
WORKDIR /var/lib/ghost
# Fri, 18 Jan 2019 08:54:14 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 18 Jan 2019 08:54:15 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Fri, 18 Jan 2019 08:54:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Jan 2019 08:54:15 GMT
EXPOSE 2368
# Fri, 18 Jan 2019 08:54:16 GMT
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
	-	`sha256:b944c553623fdb70b7e6f24bb33e17b01b40ddebc70a449a9bda8ca6a1a582fc`  
		Last Modified: Fri, 18 Jan 2019 08:58:28 GMT  
		Size: 101.1 MB (101123235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b1a1cf175031fb646b4c7f76d8e230534a0d09f3fbd0e2b69e9932ab05907e`  
		Last Modified: Fri, 18 Jan 2019 08:57:52 GMT  
		Size: 21.7 MB (21715322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e61785480af8737d5ea013308fdfc298a0172f5ace3a48d81dfdfe13ce8e9d`  
		Last Modified: Fri, 18 Jan 2019 08:57:45 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:5e1f4d11d6db410c9c981ed6e38f4dd52790b042dbbb2579a0a7dee7e0a19426
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.1 MB (164129496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1216084b7d8f33c7a4e434f1fa4fd6462ee7ee19b582dd5fa7e1ca8429262cc`
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
# Fri, 18 Jan 2019 09:31:59 GMT
ENV GHOST_VERSION=2.11.1
# Fri, 18 Jan 2019 09:33:47 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 18 Jan 2019 09:36:11 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 18 Jan 2019 09:36:14 GMT
WORKDIR /var/lib/ghost
# Fri, 18 Jan 2019 09:36:15 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 18 Jan 2019 09:36:16 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Fri, 18 Jan 2019 09:36:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Jan 2019 09:36:19 GMT
EXPOSE 2368
# Fri, 18 Jan 2019 09:36:20 GMT
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
	-	`sha256:4168c6d269126a59d4ca7146e8f2df24630c7647e584e654708c868cd677e018`  
		Last Modified: Fri, 18 Jan 2019 09:39:40 GMT  
		Size: 101.2 MB (101162142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca31dfd1e28113a25561d6e5a6cd659b920bdb739a1d7955a62aaad8f96e34e0`  
		Last Modified: Fri, 18 Jan 2019 09:38:41 GMT  
		Size: 22.3 MB (22314189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a856ca9dee67a12855f65ba76a5b572467e669f9980ae933f5db2487103b5162`  
		Last Modified: Fri, 18 Jan 2019 09:38:36 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:e549f4a7dbcb3ba6486c4c0b20a6cff340f475f42382706bd24869eda1f5cf74
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
$ docker pull ghost@sha256:df704b17757fdcdfba783badeb317dd514e86d77fba731973a4381142ef9850c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.2 MB (207155749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14eb3598a9b53dd1e27d4acbb992319240750fb6cfc1b4c4d25dca69756a4f32`
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
# Wed, 23 Jan 2019 12:00:19 GMT
ENV GHOST_VERSION=2.11.1
# Wed, 23 Jan 2019 12:01:12 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 23 Jan 2019 12:01:24 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 23 Jan 2019 12:01:24 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Jan 2019 12:01:24 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Jan 2019 12:01:25 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 23 Jan 2019 12:01:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 12:01:25 GMT
EXPOSE 2368
# Wed, 23 Jan 2019 12:01:25 GMT
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
	-	`sha256:fd0e65c420551759a9e8239ad8c18c487410c026897994c04febb14575ecb438`  
		Last Modified: Wed, 23 Jan 2019 12:03:25 GMT  
		Size: 126.6 MB (126554128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ce62588c3ef4a3b3e13ae0451b277818c73988b51006a8fce62ac46621155e`  
		Last Modified: Wed, 23 Jan 2019 12:02:56 GMT  
		Size: 11.0 MB (10961079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9d945b72a9c9971b3e90c822d9a5dc339cc23cb7ee50abaa176a7a5f81d4c9`  
		Last Modified: Wed, 23 Jan 2019 12:02:54 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm variant v7

```console
$ docker pull ghost@sha256:14d874af07a2cdbaf3cbee96138d49cfc676d76bb96ed984bfe1ba5a71566a45
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.1 MB (201139848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2821db0c3e5a1cb1ff0c024621dd09867bbfb21d4516068ee3ec87896c8593ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:15:30 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 14:15:30 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 14:15:58 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 14:16:00 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 14:16:06 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 14:16:06 GMT
CMD ["node"]
# Wed, 09 Jan 2019 12:57:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 09 Jan 2019 12:57:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 09 Jan 2019 12:57:49 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 12:58:28 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 12:59:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 12:59:08 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 12:59:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 18 Jan 2019 12:58:52 GMT
ENV GHOST_VERSION=2.11.1
# Fri, 18 Jan 2019 13:00:32 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 18 Jan 2019 13:04:03 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 18 Jan 2019 13:04:04 GMT
WORKDIR /var/lib/ghost
# Fri, 18 Jan 2019 13:04:04 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 18 Jan 2019 13:04:05 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Fri, 18 Jan 2019 13:04:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Jan 2019 13:04:05 GMT
EXPOSE 2368
# Fri, 18 Jan 2019 13:04:06 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff754dc7b1a17993efd664e943c530a0182f1a01a3908f3199242d9200363283`  
		Last Modified: Sat, 29 Dec 2018 14:26:05 GMT  
		Size: 4.2 KB (4167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c80511c449b6d403e55b3e7d476decb67876f78bc9d82dafba393b4c7debde`  
		Last Modified: Sat, 29 Dec 2018 14:26:13 GMT  
		Size: 25.5 MB (25468444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31872e78463853fb4b17f9330366c5d7429d8c15126dea9b9a3b8cdb414e41ac`  
		Last Modified: Sat, 29 Dec 2018 14:26:06 GMT  
		Size: 1.3 MB (1318218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050c8801ed1bd3d1590218c6ea6f69084bfab42699791a03036e2d4809602ba0`  
		Last Modified: Wed, 09 Jan 2019 13:10:56 GMT  
		Size: 475.4 KB (475432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11731524fdb74753a93df15c5311499ee5ec47aea04ea40244f8971cd8e8f8ec`  
		Last Modified: Tue, 15 Jan 2019 13:09:48 GMT  
		Size: 17.3 MB (17286039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041f25b31d661d1ea58eab1812c75173a2b15f159ebeae99ff6b046f75e8b060`  
		Last Modified: Fri, 18 Jan 2019 13:05:17 GMT  
		Size: 108.0 MB (108016344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e978cdf9fa75592e6d5ae4eb12e65b5e3ec4a39003a47da78ba243c6b1acc453`  
		Last Modified: Fri, 18 Jan 2019 13:04:43 GMT  
		Size: 29.3 MB (29292890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2087106408a4e0bf752ee93079668e8cb2221075f0cb14ff99b585b040c5e388`  
		Last Modified: Fri, 18 Jan 2019 13:04:33 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:8fc97f41082fc3cf129af0669a13381af64d538d74c2ddb163f171b720b2ce18
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.1 MB (202134558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:790efe10e1e65dc4211e71966be931f7f50a1b8b92ef4d086e9376cf14d92f44`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 17:58:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 17:58:32 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 17:59:33 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 17:59:34 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 17:59:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 17:59:42 GMT
CMD ["node"]
# Sun, 30 Dec 2018 05:08:26 GMT
ENV GOSU_VERSION=1.10
# Sun, 30 Dec 2018 05:08:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 30 Dec 2018 05:08:39 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 09:40:21 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 09:41:09 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 09:41:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 09:41:11 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 18 Jan 2019 09:46:59 GMT
ENV GHOST_VERSION=2.11.1
# Fri, 18 Jan 2019 09:48:49 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 18 Jan 2019 09:53:57 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 18 Jan 2019 09:53:57 GMT
WORKDIR /var/lib/ghost
# Fri, 18 Jan 2019 09:53:58 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 18 Jan 2019 09:53:59 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Fri, 18 Jan 2019 09:54:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Jan 2019 09:54:00 GMT
EXPOSE 2368
# Fri, 18 Jan 2019 09:54:01 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215b1d1716040331cb6bcee14dca0128f9c3c33d31a4b5344981342d170735f5`  
		Last Modified: Sat, 29 Dec 2018 18:04:42 GMT  
		Size: 4.2 KB (4159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383aea228065e79be898695615936b1322aa3fe292860e19b8cc78ec1ed8f153`  
		Last Modified: Sat, 29 Dec 2018 18:04:54 GMT  
		Size: 26.7 MB (26700751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659a972601d83dcea81dc32925bf08aab47633903e237e8e732e3131978ab292`  
		Last Modified: Sat, 29 Dec 2018 18:04:43 GMT  
		Size: 1.3 MB (1318215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41bddf97ff415f8c037a0ca819a65b609fde90e6c2dc3bb18b48a95f497634a4`  
		Last Modified: Sun, 30 Dec 2018 05:28:06 GMT  
		Size: 468.9 KB (468936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20ea9dc0929e9ac0942d9bf5036be97bfb8f6c6df0c6fe01af87b1f8fa4cf53`  
		Last Modified: Tue, 15 Jan 2019 09:56:52 GMT  
		Size: 17.3 MB (17286407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4b27937bb68b349eda1cb5d50e7a53d5a3e5c6187896c372e74aeae0ecfcb7`  
		Last Modified: Fri, 18 Jan 2019 09:55:54 GMT  
		Size: 107.1 MB (107131542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ac6e4a534c972f1d1bb05371a69a9229e84fe39862df0b2fdcae843f6df1fe`  
		Last Modified: Fri, 18 Jan 2019 09:55:14 GMT  
		Size: 28.9 MB (28886478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec0fedf8286b057f7b2f661d6b660fd6c1ed6dbcba42c6197bf011049a8093dc`  
		Last Modified: Fri, 18 Jan 2019 09:55:00 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; 386

```console
$ docker pull ghost@sha256:aa3082fa3d7b346dedf052aa8b6e659ad4defd9f70c3ac0e763d0b2c3bf1baac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.5 MB (193521473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72c816d5b3bc0b7cde1fc8b63657a3c4a6463eb1b7ead15df4b7c0c943abf6ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:45:06 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 13:45:06 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 13:45:32 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 13:45:32 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 13:45:36 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 13:45:37 GMT
CMD ["node"]
# Sun, 30 Dec 2018 04:39:16 GMT
ENV GOSU_VERSION=1.10
# Sun, 30 Dec 2018 04:39:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 30 Dec 2018 04:39:20 GMT
ENV NODE_ENV=production
# Tue, 15 Jan 2019 11:38:48 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 15 Jan 2019 11:39:08 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 15 Jan 2019 11:39:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Jan 2019 11:39:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 18 Jan 2019 12:22:50 GMT
ENV GHOST_VERSION=2.11.1
# Fri, 18 Jan 2019 12:23:35 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 18 Jan 2019 12:25:12 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 18 Jan 2019 12:25:12 GMT
WORKDIR /var/lib/ghost
# Fri, 18 Jan 2019 12:25:13 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 18 Jan 2019 12:25:13 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Fri, 18 Jan 2019 12:25:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Jan 2019 12:25:13 GMT
EXPOSE 2368
# Fri, 18 Jan 2019 12:25:13 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864b1c8b35709465623558c333e84a894532af4cec82c28455558e6b2df69fd4`  
		Last Modified: Sat, 29 Dec 2018 13:54:20 GMT  
		Size: 4.1 KB (4136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b35d3a521bbb3879f91506b613374abfc6ba3297e3520f8096742be36c3b6c`  
		Last Modified: Sat, 29 Dec 2018 13:54:35 GMT  
		Size: 27.8 MB (27846386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b05a73a347ee0cbfc8ee467ad70b72787be1fa54f858efe6d5808c42615ec1c`  
		Last Modified: Sat, 29 Dec 2018 13:54:21 GMT  
		Size: 1.3 MB (1318202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1397d2f67ee5b92fb7b2a5ef9dd676f4b715cfd9e61b77b1e894346816eeaf`  
		Last Modified: Sun, 30 Dec 2018 04:45:48 GMT  
		Size: 480.8 KB (480826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e533ea12c7e81fd86426ab9462a8d215620cf974df8762438df160dc46843e`  
		Last Modified: Tue, 15 Jan 2019 11:44:58 GMT  
		Size: 17.3 MB (17285455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8c115856bbdce95413715ba3fc24425a572bf82d2e631613d675dcd2a8c5a5`  
		Last Modified: Fri, 18 Jan 2019 12:26:09 GMT  
		Size: 101.1 MB (101120572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac69851a9fe62a1f929d3ff955689ad05fcfd4f6f1dd8548fcc99880f3a6ac4`  
		Last Modified: Fri, 18 Jan 2019 12:25:47 GMT  
		Size: 22.3 MB (22332182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed475596d4e69013627228eafaf639202cbc86a43b90d988f9f41e2273a9a08`  
		Last Modified: Fri, 18 Jan 2019 12:25:41 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; ppc64le

```console
$ docker pull ghost@sha256:f11160e1afe4075db123d34b27a6787d46d6a715dccf4d44b3a16403b225c254
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.6 MB (198594964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2ba567fea93b00851cc63132e6ff9b37473ed87172df0f66cc26adf0b7dec23`
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
# Wed, 23 Jan 2019 16:10:07 GMT
ENV GHOST_VERSION=2.11.1
# Wed, 23 Jan 2019 16:13:26 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 23 Jan 2019 16:17:36 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 23 Jan 2019 16:17:42 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Jan 2019 16:17:44 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Jan 2019 16:17:46 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 23 Jan 2019 16:17:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 16:17:51 GMT
EXPOSE 2368
# Wed, 23 Jan 2019 16:17:53 GMT
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
	-	`sha256:7cb78b7d2c1f436e3b3a04a50444b2c8373e65fa36b4522a6950b9e7c0d69844`  
		Last Modified: Wed, 23 Jan 2019 16:27:07 GMT  
		Size: 101.2 MB (101161381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fca97e40c53cfd655070aae73b76ea273488ae641a1a1dc6e038fce1190dd907`  
		Last Modified: Wed, 23 Jan 2019 16:25:30 GMT  
		Size: 28.6 MB (28623383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4067be82d4d8439d08927a58d80b717d162be93a151537f76252a54c9bc3229c`  
		Last Modified: Wed, 23 Jan 2019 16:25:21 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; s390x

```console
$ docker pull ghost@sha256:72fc7e67ecf07bd16b4f419cc2cc79273dfef3792883fc1c11778dc8ca8300ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.1 MB (199078792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fef29c2ad37479cc896cbea2f1d5464592c33b734986e202f2f8b01cd69a407`
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
# Wed, 23 Jan 2019 17:05:32 GMT
ENV GHOST_VERSION=2.11.1
# Wed, 23 Jan 2019 17:06:30 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 23 Jan 2019 17:08:22 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 23 Jan 2019 17:08:23 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Jan 2019 17:08:23 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Jan 2019 17:08:23 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 23 Jan 2019 17:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 17:08:24 GMT
EXPOSE 2368
# Wed, 23 Jan 2019 17:08:24 GMT
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
	-	`sha256:c84861cf8abe084ab822fd5e5cc48487c0c56edfae527b8072146c2bf32deb56`  
		Last Modified: Wed, 23 Jan 2019 17:12:26 GMT  
		Size: 101.2 MB (101156201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7886d4dff94e74c02a51147edde5afe06687a9997499546ee8ff9f0ae222c23c`  
		Last Modified: Wed, 23 Jan 2019 17:12:06 GMT  
		Size: 28.6 MB (28599179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe612260a77320e32f235fadceeb6828ad7a0cedeac884161ba209a6bbe0345d`  
		Last Modified: Wed, 23 Jan 2019 17:11:57 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

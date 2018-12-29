<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:1`](#ghost1)
-	[`ghost:1.25`](#ghost125)
-	[`ghost:1.25.6`](#ghost1256)
-	[`ghost:1.25.6-alpine`](#ghost1256-alpine)
-	[`ghost:1.25-alpine`](#ghost125-alpine)
-	[`ghost:1-alpine`](#ghost1-alpine)
-	[`ghost:2`](#ghost2)
-	[`ghost:2.9`](#ghost29)
-	[`ghost:2.9.1`](#ghost291)
-	[`ghost:2.9.1-alpine`](#ghost291-alpine)
-	[`ghost:2.9-alpine`](#ghost29-alpine)
-	[`ghost:2-alpine`](#ghost2-alpine)
-	[`ghost:alpine`](#ghostalpine)
-	[`ghost:latest`](#ghostlatest)

## `ghost:1`

```console
$ docker pull ghost@sha256:06be1fe2e509218ac9c250cc093fad1b2895a90314a383b9be87d78c60c4b5c3
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
$ docker pull ghost@sha256:c73445204de41087a2bab4c84b71fb32d541ea7b39c0a3e648203510ffe31ac1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272649162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bda5d2d721f4aea1bb7177c9aa71fb8f7a14f55b82a9e8b7f4afb1dcdd130cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:39:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 03:39:05 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 03:39:22 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 03:39:22 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 03:39:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 03:39:26 GMT
CMD ["node"]
# Sat, 29 Dec 2018 12:53:32 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 12:53:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 29 Dec 2018 12:53:37 GMT
ENV NODE_ENV=production
# Sat, 29 Dec 2018 12:53:37 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Sat, 29 Dec 2018 12:54:08 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 29 Dec 2018 12:54:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 29 Dec 2018 12:54:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 29 Dec 2018 12:57:06 GMT
ENV GHOST_VERSION=1.25.6
# Sat, 29 Dec 2018 12:58:11 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 29 Dec 2018 12:58:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 29 Dec 2018 12:59:20 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 29 Dec 2018 12:59:23 GMT
WORKDIR /var/lib/ghost
# Sat, 29 Dec 2018 12:59:23 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 29 Dec 2018 12:59:24 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Sat, 29 Dec 2018 12:59:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 12:59:24 GMT
EXPOSE 2368
# Sat, 29 Dec 2018 12:59:24 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:604501ee7a0d3f42660098f7202c5d216210983bed82ae753be16558e2e8bf6e`  
		Last Modified: Sat, 29 Dec 2018 03:50:38 GMT  
		Size: 4.1 KB (4149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0e991e8d451d9ea6532cd01b681c678722f34ab3e107161d412f2cfb425313`  
		Last Modified: Sat, 29 Dec 2018 03:50:45 GMT  
		Size: 28.0 MB (28018658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada960f0a400d19b3322e0a6a13af27edc8aa3a56c0e9be7d36b598c9ae65866`  
		Last Modified: Sat, 29 Dec 2018 03:50:39 GMT  
		Size: 1.3 MB (1318192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e956782ba2c25ae089483f96f3f15bc79a1c517c9717a5abb0893acf34dd996`  
		Last Modified: Sat, 29 Dec 2018 12:59:54 GMT  
		Size: 500.9 KB (500917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54512d80554351cdcfb4fcd45b15421997933dfc7ba96d97f62ac82a2059e94`  
		Last Modified: Sat, 29 Dec 2018 13:00:13 GMT  
		Size: 17.2 MB (17196858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98ca609665fe32cc7e7271eb2d93abaf9dbe3be2fefeb2f1487d85ff0484308d`  
		Last Modified: Sat, 29 Dec 2018 13:01:36 GMT  
		Size: 101.3 MB (101263829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876a5bbf55c4a07aacbf9bd06af609c2f175cae7ef9a4713e0b1da7c6b9e411b`  
		Last Modified: Sat, 29 Dec 2018 13:01:37 GMT  
		Size: 101.9 MB (101853059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4829f8048b0f2a1a365a74494b70f3ada8e598eb0af5b4c8664bc29779b33fab`  
		Last Modified: Sat, 29 Dec 2018 13:01:04 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; arm variant v7

```console
$ docker pull ghost@sha256:7408bdf1848ff326a1e6c1997cababe7ce22d0e43ef71f2f6bd587ccd798d519
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (272007671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bc9a61bbae262dc5f642b78800915c56b10df4bd7bef2845d9634acd3fa8b2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:54:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 27 Dec 2018 12:59:58 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 13:00:57 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 27 Dec 2018 13:00:57 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 13:01:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 27 Dec 2018 13:01:03 GMT
CMD ["node"]
# Thu, 27 Dec 2018 13:29:44 GMT
ENV GOSU_VERSION=1.10
# Thu, 27 Dec 2018 13:29:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 27 Dec 2018 13:29:49 GMT
ENV NODE_ENV=production
# Thu, 27 Dec 2018 13:29:49 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 13:30:27 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 13:30:29 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 13:30:30 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 13:36:48 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 27 Dec 2018 13:38:12 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 27 Dec 2018 13:38:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 27 Dec 2018 13:42:12 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 27 Dec 2018 13:42:17 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 13:42:17 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 13:42:17 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Thu, 27 Dec 2018 13:42:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 13:42:18 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 13:42:19 GMT
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
	-	`sha256:1073f47161d7cf09b47970f54a05030f88aceb41bf5f2501d173ec102d593dc2`  
		Last Modified: Thu, 27 Dec 2018 13:10:21 GMT  
		Size: 25.5 MB (25468465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ec3ccb7c505ea7caa59e73d4f4f35ea0749d14ea5a3f36458eae409f9bca0c`  
		Last Modified: Thu, 27 Dec 2018 13:10:13 GMT  
		Size: 1.3 MB (1318235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91953b777f7b7d69d1ecc74457d8e4762ee7d8dfec084e580a71af3bfc4e84b2`  
		Last Modified: Thu, 27 Dec 2018 13:42:41 GMT  
		Size: 475.4 KB (475435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a4241c7c3fd1179499d2f2039d5d57b97da604263561d93fd0c1d66593a839`  
		Last Modified: Thu, 27 Dec 2018 13:42:51 GMT  
		Size: 17.2 MB (17194740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce351117a380fcb6e963456e79f364123901cd2d4e38088afab655f32d79088e`  
		Last Modified: Thu, 27 Dec 2018 13:44:17 GMT  
		Size: 93.6 MB (93569747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40849fcc874e5f6e24406e763781a1d76651ab124c4ea6fa1a91ee0e552bbfa`  
		Last Modified: Thu, 27 Dec 2018 13:44:21 GMT  
		Size: 114.7 MB (114706237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e639b1754bb1e70aa729cfb6a4fc9da498c456c0b8d94dc9b55f7f6169034791`  
		Last Modified: Thu, 27 Dec 2018 13:43:39 GMT  
		Size: 588.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:7c02a88966f1586dcd6c5eb7533588bd01f24b4dbd1b5abc6baecb0f20eeb261
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.9 MB (274893017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ddcf5abddfd33efcac6226a0acee04453e6f92f094df6fd920e1cd99d918a7c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 03:05:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 27 Dec 2018 10:07:13 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 10:08:15 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 27 Dec 2018 10:08:16 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 10:08:24 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 27 Dec 2018 10:08:25 GMT
CMD ["node"]
# Thu, 27 Dec 2018 11:38:26 GMT
ENV GOSU_VERSION=1.10
# Thu, 27 Dec 2018 11:38:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 27 Dec 2018 11:38:34 GMT
ENV NODE_ENV=production
# Thu, 27 Dec 2018 11:38:34 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 11:39:11 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 11:39:13 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 11:39:14 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 11:46:54 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 27 Dec 2018 11:48:08 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 27 Dec 2018 11:48:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 27 Dec 2018 11:53:22 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 27 Dec 2018 11:53:26 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 11:53:26 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 11:53:27 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Thu, 27 Dec 2018 11:53:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 11:53:28 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 11:53:29 GMT
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
	-	`sha256:0755c9e8b0b71c78aba689bd3cdcbc7762f46e5463b72bde09a69b4e56426d4d`  
		Last Modified: Thu, 27 Dec 2018 11:19:46 GMT  
		Size: 26.7 MB (26700724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64529d3a0f09a51575a77a56517a2bdf663b4414c972f64c9ba0e06049d2d62e`  
		Last Modified: Thu, 27 Dec 2018 11:19:36 GMT  
		Size: 1.3 MB (1318207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fabda61b3b7fe02e0d30f15ebcc7f1b06b3ff8827afb302bf0a97036f497549`  
		Last Modified: Thu, 27 Dec 2018 11:54:07 GMT  
		Size: 468.9 KB (468937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f489fae8bc8306344f0e09911341bc10bcaa0d55d3dae6157f92a72d8fb2ab`  
		Last Modified: Thu, 27 Dec 2018 11:54:16 GMT  
		Size: 17.2 MB (17196072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011d3c0ada1c585da020884f517acffc39612ec64599528ff95ee6263504633e`  
		Last Modified: Thu, 27 Dec 2018 11:55:53 GMT  
		Size: 93.6 MB (93568410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14232c6554459ece8150bf5e1435c07a82bcb9d22527bc14e2aad3bf289376d7`  
		Last Modified: Thu, 27 Dec 2018 11:55:59 GMT  
		Size: 115.3 MB (115304606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:388c933fc7fd8fe5d464361066e042fa5fd5b4ac8c747e6239c528d70e298b05`  
		Last Modified: Thu, 27 Dec 2018 11:55:14 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; 386

```console
$ docker pull ghost@sha256:9aeb7a99487c9dd16aadc0825f2959296cebc9bd1767a0c3068147172596bc13
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.6 MB (279571120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4d836bab1d4845ceb035d03adcf974c1b497eb5667bb467d1069fbf48c0a6ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Tue, 27 Nov 2018 14:20:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 27 Dec 2018 12:01:59 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 12:02:22 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 27 Dec 2018 12:02:23 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 12:02:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 27 Dec 2018 12:02:27 GMT
CMD ["node"]
# Thu, 27 Dec 2018 13:13:11 GMT
ENV GOSU_VERSION=1.10
# Thu, 27 Dec 2018 13:13:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 27 Dec 2018 13:13:16 GMT
ENV NODE_ENV=production
# Thu, 27 Dec 2018 13:13:16 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 13:13:35 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 13:13:36 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 13:13:36 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 13:16:49 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 27 Dec 2018 13:17:26 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 27 Dec 2018 13:17:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 27 Dec 2018 13:19:23 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 27 Dec 2018 13:19:24 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 13:19:25 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 13:19:25 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Thu, 27 Dec 2018 13:19:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 13:19:25 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 13:19:25 GMT
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
	-	`sha256:cd2be92da289c6a7146a129dd797865fcc4486ab275febdeee242dd5f93eba09`  
		Last Modified: Thu, 27 Dec 2018 12:56:20 GMT  
		Size: 27.8 MB (27846046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ba8327e64a8e6c4cb29e1d224d002137f775e6fa051f000532ebb30fc50697`  
		Last Modified: Thu, 27 Dec 2018 12:56:13 GMT  
		Size: 1.3 MB (1318187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1778291ff553608714f94bd8d95aad94fa9cdc661cca75c334cf122f1528e9e7`  
		Last Modified: Thu, 27 Dec 2018 13:19:44 GMT  
		Size: 480.8 KB (480830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:610b5061cfbad8f59b81d9f157faf4e7f4ec291affb0284cb9b4328d5aed134a`  
		Last Modified: Thu, 27 Dec 2018 13:19:52 GMT  
		Size: 17.2 MB (17190252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afffec53989c69aeef784b3d64c21b3a665af9b24f5cd57fbcc250c918921766`  
		Last Modified: Thu, 27 Dec 2018 13:20:59 GMT  
		Size: 93.6 MB (93564695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16fe6b22d36d51e655a4263ef11d35f23becc7157a91a4919e339582bc71e24`  
		Last Modified: Thu, 27 Dec 2018 13:21:04 GMT  
		Size: 116.0 MB (116039613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1371b8a63de42e3adc4c02e854ddc62c639ba10dbdf83af85071872081f962d3`  
		Last Modified: Thu, 27 Dec 2018 13:20:31 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; ppc64le

```console
$ docker pull ghost@sha256:bac00cc99a202f3a2cf7c5c1ff73a05dc506cab31e4a6d72c4b1cb64d2d510b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.5 MB (278513245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:153236e2ef96852f74954c6039ed64351277b8c3947c283c6a1c1dd90d2635b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:08:39 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 12:08:41 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 12:09:51 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 12:09:54 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 12:10:04 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 12:10:06 GMT
CMD ["node"]
# Sat, 29 Dec 2018 17:19:27 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 17:19:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 29 Dec 2018 17:19:45 GMT
ENV NODE_ENV=production
# Sat, 29 Dec 2018 17:19:48 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Sat, 29 Dec 2018 17:20:42 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 29 Dec 2018 17:20:46 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 29 Dec 2018 17:20:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 29 Dec 2018 17:28:58 GMT
ENV GHOST_VERSION=1.25.6
# Sat, 29 Dec 2018 17:31:02 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 29 Dec 2018 17:31:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 29 Dec 2018 17:35:17 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 29 Dec 2018 17:35:23 GMT
WORKDIR /var/lib/ghost
# Sat, 29 Dec 2018 17:35:25 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 29 Dec 2018 17:35:27 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Sat, 29 Dec 2018 17:35:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:35:31 GMT
EXPOSE 2368
# Sat, 29 Dec 2018 17:35:34 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d4874e270588da8c76182e39e8e58854c181fdfbfab716619b6acad4d7ea0c`  
		Last Modified: Sat, 29 Dec 2018 12:15:21 GMT  
		Size: 4.2 KB (4177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9f4a6ed2d44cdcae53a6bff0b6166811bfce3f12741330f8377eca61ba1877`  
		Last Modified: Sat, 29 Dec 2018 12:15:27 GMT  
		Size: 27.0 MB (26964238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13bea5d680fac40885ade9d7e8fe6d98f40c2b5834542fc0ed27adf448d50406`  
		Last Modified: Sat, 29 Dec 2018 12:15:22 GMT  
		Size: 1.3 MB (1318210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1e85b915c64aa3ca8780451245d2c88606973aa4dad1130902be5c09a3f05b`  
		Last Modified: Sat, 29 Dec 2018 17:36:24 GMT  
		Size: 470.1 KB (470077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cfd7e684d5b0c0e736b1d32ea48a02d2890cf3f1e91ddc11a37031ae8f83e3d`  
		Last Modified: Sat, 29 Dec 2018 17:37:01 GMT  
		Size: 17.2 MB (17197317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df3c517baf69c25b07421ec2151ddd41d64a514e4d1f6806c88b2543779bc05`  
		Last Modified: Sat, 29 Dec 2018 17:40:18 GMT  
		Size: 93.6 MB (93567296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90748d832310b22c499d10bc48e61d992834a5f10905351da10211ddc4f14950`  
		Last Modified: Sat, 29 Dec 2018 17:40:14 GMT  
		Size: 116.2 MB (116244519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45eff3225062bcac0a4d0e8161704af9fd803c8602e88c2f0f2089959821d718`  
		Last Modified: Sat, 29 Dec 2018 17:38:33 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; s390x

```console
$ docker pull ghost@sha256:39f89f046b309d8c4b3ef24e58deeb1e5496aeb9e036987905c4f3adc5d5b9d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.0 MB (278964321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca7b1f876d87a942b3af455854757cfca3fbbaf0667c20936d0b7c2ab8628933`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:39:43 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 27 Dec 2018 13:05:49 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 13:06:10 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 27 Dec 2018 13:06:11 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 13:06:15 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 27 Dec 2018 13:06:15 GMT
CMD ["node"]
# Thu, 27 Dec 2018 13:51:51 GMT
ENV GOSU_VERSION=1.10
# Thu, 27 Dec 2018 13:51:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 27 Dec 2018 13:51:55 GMT
ENV NODE_ENV=production
# Thu, 27 Dec 2018 13:51:55 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 13:52:10 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 13:52:11 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 13:52:11 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 13:54:54 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 27 Dec 2018 13:55:14 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 27 Dec 2018 13:55:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 27 Dec 2018 13:56:38 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 27 Dec 2018 13:56:40 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 13:56:40 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 13:56:40 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Thu, 27 Dec 2018 13:56:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 13:56:40 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 13:56:41 GMT
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
	-	`sha256:ffa67e6f86f2a9a0de4bf3c649a86143b0fbdb39862945123798af4098e31053`  
		Last Modified: Thu, 27 Dec 2018 13:34:47 GMT  
		Size: 27.9 MB (27860339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7335cea647fbe88990ffd862ef80071958c5d406d3dc5eba1d84538218b4abb`  
		Last Modified: Thu, 27 Dec 2018 13:34:42 GMT  
		Size: 1.3 MB (1318193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a2ad31a8e5213f84bd039e26bcff4e77dccfa682de4f257362117c6ff01dc90`  
		Last Modified: Thu, 27 Dec 2018 13:57:10 GMT  
		Size: 487.0 KB (487040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561aa77eae029aa9da9b40a69a398913fd4228077c5ce5de66d76f9872c88eb3`  
		Last Modified: Thu, 27 Dec 2018 13:57:14 GMT  
		Size: 17.2 MB (17188001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948a7e2e694ac0eac4cc7eb1d4c2d263bde59845fae88ca9c60b33034333b2af`  
		Last Modified: Thu, 27 Dec 2018 13:57:52 GMT  
		Size: 93.6 MB (93563494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc24ddff2119cd75352bc0d5e4c559bb7ecf107b711ae1d96dddef3c49e18fd`  
		Last Modified: Thu, 27 Dec 2018 13:57:55 GMT  
		Size: 116.2 MB (116207805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f78dbd7fb1b29c455c880722f156aa38f4ae903fd393c2749c3e65348b3130`  
		Last Modified: Thu, 27 Dec 2018 13:57:37 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25`

```console
$ docker pull ghost@sha256:06be1fe2e509218ac9c250cc093fad1b2895a90314a383b9be87d78c60c4b5c3
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
$ docker pull ghost@sha256:c73445204de41087a2bab4c84b71fb32d541ea7b39c0a3e648203510ffe31ac1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272649162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bda5d2d721f4aea1bb7177c9aa71fb8f7a14f55b82a9e8b7f4afb1dcdd130cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:39:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 03:39:05 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 03:39:22 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 03:39:22 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 03:39:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 03:39:26 GMT
CMD ["node"]
# Sat, 29 Dec 2018 12:53:32 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 12:53:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 29 Dec 2018 12:53:37 GMT
ENV NODE_ENV=production
# Sat, 29 Dec 2018 12:53:37 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Sat, 29 Dec 2018 12:54:08 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 29 Dec 2018 12:54:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 29 Dec 2018 12:54:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 29 Dec 2018 12:57:06 GMT
ENV GHOST_VERSION=1.25.6
# Sat, 29 Dec 2018 12:58:11 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 29 Dec 2018 12:58:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 29 Dec 2018 12:59:20 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 29 Dec 2018 12:59:23 GMT
WORKDIR /var/lib/ghost
# Sat, 29 Dec 2018 12:59:23 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 29 Dec 2018 12:59:24 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Sat, 29 Dec 2018 12:59:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 12:59:24 GMT
EXPOSE 2368
# Sat, 29 Dec 2018 12:59:24 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:604501ee7a0d3f42660098f7202c5d216210983bed82ae753be16558e2e8bf6e`  
		Last Modified: Sat, 29 Dec 2018 03:50:38 GMT  
		Size: 4.1 KB (4149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0e991e8d451d9ea6532cd01b681c678722f34ab3e107161d412f2cfb425313`  
		Last Modified: Sat, 29 Dec 2018 03:50:45 GMT  
		Size: 28.0 MB (28018658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada960f0a400d19b3322e0a6a13af27edc8aa3a56c0e9be7d36b598c9ae65866`  
		Last Modified: Sat, 29 Dec 2018 03:50:39 GMT  
		Size: 1.3 MB (1318192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e956782ba2c25ae089483f96f3f15bc79a1c517c9717a5abb0893acf34dd996`  
		Last Modified: Sat, 29 Dec 2018 12:59:54 GMT  
		Size: 500.9 KB (500917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54512d80554351cdcfb4fcd45b15421997933dfc7ba96d97f62ac82a2059e94`  
		Last Modified: Sat, 29 Dec 2018 13:00:13 GMT  
		Size: 17.2 MB (17196858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98ca609665fe32cc7e7271eb2d93abaf9dbe3be2fefeb2f1487d85ff0484308d`  
		Last Modified: Sat, 29 Dec 2018 13:01:36 GMT  
		Size: 101.3 MB (101263829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876a5bbf55c4a07aacbf9bd06af609c2f175cae7ef9a4713e0b1da7c6b9e411b`  
		Last Modified: Sat, 29 Dec 2018 13:01:37 GMT  
		Size: 101.9 MB (101853059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4829f8048b0f2a1a365a74494b70f3ada8e598eb0af5b4c8664bc29779b33fab`  
		Last Modified: Sat, 29 Dec 2018 13:01:04 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; arm variant v7

```console
$ docker pull ghost@sha256:7408bdf1848ff326a1e6c1997cababe7ce22d0e43ef71f2f6bd587ccd798d519
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (272007671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bc9a61bbae262dc5f642b78800915c56b10df4bd7bef2845d9634acd3fa8b2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:54:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 27 Dec 2018 12:59:58 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 13:00:57 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 27 Dec 2018 13:00:57 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 13:01:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 27 Dec 2018 13:01:03 GMT
CMD ["node"]
# Thu, 27 Dec 2018 13:29:44 GMT
ENV GOSU_VERSION=1.10
# Thu, 27 Dec 2018 13:29:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 27 Dec 2018 13:29:49 GMT
ENV NODE_ENV=production
# Thu, 27 Dec 2018 13:29:49 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 13:30:27 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 13:30:29 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 13:30:30 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 13:36:48 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 27 Dec 2018 13:38:12 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 27 Dec 2018 13:38:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 27 Dec 2018 13:42:12 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 27 Dec 2018 13:42:17 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 13:42:17 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 13:42:17 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Thu, 27 Dec 2018 13:42:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 13:42:18 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 13:42:19 GMT
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
	-	`sha256:1073f47161d7cf09b47970f54a05030f88aceb41bf5f2501d173ec102d593dc2`  
		Last Modified: Thu, 27 Dec 2018 13:10:21 GMT  
		Size: 25.5 MB (25468465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ec3ccb7c505ea7caa59e73d4f4f35ea0749d14ea5a3f36458eae409f9bca0c`  
		Last Modified: Thu, 27 Dec 2018 13:10:13 GMT  
		Size: 1.3 MB (1318235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91953b777f7b7d69d1ecc74457d8e4762ee7d8dfec084e580a71af3bfc4e84b2`  
		Last Modified: Thu, 27 Dec 2018 13:42:41 GMT  
		Size: 475.4 KB (475435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a4241c7c3fd1179499d2f2039d5d57b97da604263561d93fd0c1d66593a839`  
		Last Modified: Thu, 27 Dec 2018 13:42:51 GMT  
		Size: 17.2 MB (17194740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce351117a380fcb6e963456e79f364123901cd2d4e38088afab655f32d79088e`  
		Last Modified: Thu, 27 Dec 2018 13:44:17 GMT  
		Size: 93.6 MB (93569747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40849fcc874e5f6e24406e763781a1d76651ab124c4ea6fa1a91ee0e552bbfa`  
		Last Modified: Thu, 27 Dec 2018 13:44:21 GMT  
		Size: 114.7 MB (114706237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e639b1754bb1e70aa729cfb6a4fc9da498c456c0b8d94dc9b55f7f6169034791`  
		Last Modified: Thu, 27 Dec 2018 13:43:39 GMT  
		Size: 588.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:7c02a88966f1586dcd6c5eb7533588bd01f24b4dbd1b5abc6baecb0f20eeb261
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.9 MB (274893017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ddcf5abddfd33efcac6226a0acee04453e6f92f094df6fd920e1cd99d918a7c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 03:05:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 27 Dec 2018 10:07:13 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 10:08:15 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 27 Dec 2018 10:08:16 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 10:08:24 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 27 Dec 2018 10:08:25 GMT
CMD ["node"]
# Thu, 27 Dec 2018 11:38:26 GMT
ENV GOSU_VERSION=1.10
# Thu, 27 Dec 2018 11:38:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 27 Dec 2018 11:38:34 GMT
ENV NODE_ENV=production
# Thu, 27 Dec 2018 11:38:34 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 11:39:11 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 11:39:13 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 11:39:14 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 11:46:54 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 27 Dec 2018 11:48:08 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 27 Dec 2018 11:48:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 27 Dec 2018 11:53:22 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 27 Dec 2018 11:53:26 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 11:53:26 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 11:53:27 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Thu, 27 Dec 2018 11:53:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 11:53:28 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 11:53:29 GMT
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
	-	`sha256:0755c9e8b0b71c78aba689bd3cdcbc7762f46e5463b72bde09a69b4e56426d4d`  
		Last Modified: Thu, 27 Dec 2018 11:19:46 GMT  
		Size: 26.7 MB (26700724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64529d3a0f09a51575a77a56517a2bdf663b4414c972f64c9ba0e06049d2d62e`  
		Last Modified: Thu, 27 Dec 2018 11:19:36 GMT  
		Size: 1.3 MB (1318207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fabda61b3b7fe02e0d30f15ebcc7f1b06b3ff8827afb302bf0a97036f497549`  
		Last Modified: Thu, 27 Dec 2018 11:54:07 GMT  
		Size: 468.9 KB (468937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f489fae8bc8306344f0e09911341bc10bcaa0d55d3dae6157f92a72d8fb2ab`  
		Last Modified: Thu, 27 Dec 2018 11:54:16 GMT  
		Size: 17.2 MB (17196072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011d3c0ada1c585da020884f517acffc39612ec64599528ff95ee6263504633e`  
		Last Modified: Thu, 27 Dec 2018 11:55:53 GMT  
		Size: 93.6 MB (93568410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14232c6554459ece8150bf5e1435c07a82bcb9d22527bc14e2aad3bf289376d7`  
		Last Modified: Thu, 27 Dec 2018 11:55:59 GMT  
		Size: 115.3 MB (115304606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:388c933fc7fd8fe5d464361066e042fa5fd5b4ac8c747e6239c528d70e298b05`  
		Last Modified: Thu, 27 Dec 2018 11:55:14 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; 386

```console
$ docker pull ghost@sha256:9aeb7a99487c9dd16aadc0825f2959296cebc9bd1767a0c3068147172596bc13
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.6 MB (279571120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4d836bab1d4845ceb035d03adcf974c1b497eb5667bb467d1069fbf48c0a6ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Tue, 27 Nov 2018 14:20:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 27 Dec 2018 12:01:59 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 12:02:22 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 27 Dec 2018 12:02:23 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 12:02:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 27 Dec 2018 12:02:27 GMT
CMD ["node"]
# Thu, 27 Dec 2018 13:13:11 GMT
ENV GOSU_VERSION=1.10
# Thu, 27 Dec 2018 13:13:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 27 Dec 2018 13:13:16 GMT
ENV NODE_ENV=production
# Thu, 27 Dec 2018 13:13:16 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 13:13:35 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 13:13:36 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 13:13:36 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 13:16:49 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 27 Dec 2018 13:17:26 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 27 Dec 2018 13:17:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 27 Dec 2018 13:19:23 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 27 Dec 2018 13:19:24 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 13:19:25 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 13:19:25 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Thu, 27 Dec 2018 13:19:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 13:19:25 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 13:19:25 GMT
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
	-	`sha256:cd2be92da289c6a7146a129dd797865fcc4486ab275febdeee242dd5f93eba09`  
		Last Modified: Thu, 27 Dec 2018 12:56:20 GMT  
		Size: 27.8 MB (27846046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ba8327e64a8e6c4cb29e1d224d002137f775e6fa051f000532ebb30fc50697`  
		Last Modified: Thu, 27 Dec 2018 12:56:13 GMT  
		Size: 1.3 MB (1318187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1778291ff553608714f94bd8d95aad94fa9cdc661cca75c334cf122f1528e9e7`  
		Last Modified: Thu, 27 Dec 2018 13:19:44 GMT  
		Size: 480.8 KB (480830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:610b5061cfbad8f59b81d9f157faf4e7f4ec291affb0284cb9b4328d5aed134a`  
		Last Modified: Thu, 27 Dec 2018 13:19:52 GMT  
		Size: 17.2 MB (17190252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afffec53989c69aeef784b3d64c21b3a665af9b24f5cd57fbcc250c918921766`  
		Last Modified: Thu, 27 Dec 2018 13:20:59 GMT  
		Size: 93.6 MB (93564695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16fe6b22d36d51e655a4263ef11d35f23becc7157a91a4919e339582bc71e24`  
		Last Modified: Thu, 27 Dec 2018 13:21:04 GMT  
		Size: 116.0 MB (116039613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1371b8a63de42e3adc4c02e854ddc62c639ba10dbdf83af85071872081f962d3`  
		Last Modified: Thu, 27 Dec 2018 13:20:31 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; ppc64le

```console
$ docker pull ghost@sha256:bac00cc99a202f3a2cf7c5c1ff73a05dc506cab31e4a6d72c4b1cb64d2d510b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.5 MB (278513245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:153236e2ef96852f74954c6039ed64351277b8c3947c283c6a1c1dd90d2635b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:08:39 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 12:08:41 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 12:09:51 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 12:09:54 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 12:10:04 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 12:10:06 GMT
CMD ["node"]
# Sat, 29 Dec 2018 17:19:27 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 17:19:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 29 Dec 2018 17:19:45 GMT
ENV NODE_ENV=production
# Sat, 29 Dec 2018 17:19:48 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Sat, 29 Dec 2018 17:20:42 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 29 Dec 2018 17:20:46 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 29 Dec 2018 17:20:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 29 Dec 2018 17:28:58 GMT
ENV GHOST_VERSION=1.25.6
# Sat, 29 Dec 2018 17:31:02 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 29 Dec 2018 17:31:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 29 Dec 2018 17:35:17 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 29 Dec 2018 17:35:23 GMT
WORKDIR /var/lib/ghost
# Sat, 29 Dec 2018 17:35:25 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 29 Dec 2018 17:35:27 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Sat, 29 Dec 2018 17:35:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:35:31 GMT
EXPOSE 2368
# Sat, 29 Dec 2018 17:35:34 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d4874e270588da8c76182e39e8e58854c181fdfbfab716619b6acad4d7ea0c`  
		Last Modified: Sat, 29 Dec 2018 12:15:21 GMT  
		Size: 4.2 KB (4177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9f4a6ed2d44cdcae53a6bff0b6166811bfce3f12741330f8377eca61ba1877`  
		Last Modified: Sat, 29 Dec 2018 12:15:27 GMT  
		Size: 27.0 MB (26964238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13bea5d680fac40885ade9d7e8fe6d98f40c2b5834542fc0ed27adf448d50406`  
		Last Modified: Sat, 29 Dec 2018 12:15:22 GMT  
		Size: 1.3 MB (1318210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1e85b915c64aa3ca8780451245d2c88606973aa4dad1130902be5c09a3f05b`  
		Last Modified: Sat, 29 Dec 2018 17:36:24 GMT  
		Size: 470.1 KB (470077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cfd7e684d5b0c0e736b1d32ea48a02d2890cf3f1e91ddc11a37031ae8f83e3d`  
		Last Modified: Sat, 29 Dec 2018 17:37:01 GMT  
		Size: 17.2 MB (17197317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df3c517baf69c25b07421ec2151ddd41d64a514e4d1f6806c88b2543779bc05`  
		Last Modified: Sat, 29 Dec 2018 17:40:18 GMT  
		Size: 93.6 MB (93567296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90748d832310b22c499d10bc48e61d992834a5f10905351da10211ddc4f14950`  
		Last Modified: Sat, 29 Dec 2018 17:40:14 GMT  
		Size: 116.2 MB (116244519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45eff3225062bcac0a4d0e8161704af9fd803c8602e88c2f0f2089959821d718`  
		Last Modified: Sat, 29 Dec 2018 17:38:33 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; s390x

```console
$ docker pull ghost@sha256:39f89f046b309d8c4b3ef24e58deeb1e5496aeb9e036987905c4f3adc5d5b9d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.0 MB (278964321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca7b1f876d87a942b3af455854757cfca3fbbaf0667c20936d0b7c2ab8628933`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:39:43 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 27 Dec 2018 13:05:49 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 13:06:10 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 27 Dec 2018 13:06:11 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 13:06:15 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 27 Dec 2018 13:06:15 GMT
CMD ["node"]
# Thu, 27 Dec 2018 13:51:51 GMT
ENV GOSU_VERSION=1.10
# Thu, 27 Dec 2018 13:51:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 27 Dec 2018 13:51:55 GMT
ENV NODE_ENV=production
# Thu, 27 Dec 2018 13:51:55 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 13:52:10 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 13:52:11 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 13:52:11 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 13:54:54 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 27 Dec 2018 13:55:14 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 27 Dec 2018 13:55:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 27 Dec 2018 13:56:38 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 27 Dec 2018 13:56:40 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 13:56:40 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 13:56:40 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Thu, 27 Dec 2018 13:56:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 13:56:40 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 13:56:41 GMT
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
	-	`sha256:ffa67e6f86f2a9a0de4bf3c649a86143b0fbdb39862945123798af4098e31053`  
		Last Modified: Thu, 27 Dec 2018 13:34:47 GMT  
		Size: 27.9 MB (27860339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7335cea647fbe88990ffd862ef80071958c5d406d3dc5eba1d84538218b4abb`  
		Last Modified: Thu, 27 Dec 2018 13:34:42 GMT  
		Size: 1.3 MB (1318193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a2ad31a8e5213f84bd039e26bcff4e77dccfa682de4f257362117c6ff01dc90`  
		Last Modified: Thu, 27 Dec 2018 13:57:10 GMT  
		Size: 487.0 KB (487040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561aa77eae029aa9da9b40a69a398913fd4228077c5ce5de66d76f9872c88eb3`  
		Last Modified: Thu, 27 Dec 2018 13:57:14 GMT  
		Size: 17.2 MB (17188001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948a7e2e694ac0eac4cc7eb1d4c2d263bde59845fae88ca9c60b33034333b2af`  
		Last Modified: Thu, 27 Dec 2018 13:57:52 GMT  
		Size: 93.6 MB (93563494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc24ddff2119cd75352bc0d5e4c559bb7ecf107b711ae1d96dddef3c49e18fd`  
		Last Modified: Thu, 27 Dec 2018 13:57:55 GMT  
		Size: 116.2 MB (116207805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f78dbd7fb1b29c455c880722f156aa38f4ae903fd393c2749c3e65348b3130`  
		Last Modified: Thu, 27 Dec 2018 13:57:37 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25.6`

```console
$ docker pull ghost@sha256:06be1fe2e509218ac9c250cc093fad1b2895a90314a383b9be87d78c60c4b5c3
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
$ docker pull ghost@sha256:c73445204de41087a2bab4c84b71fb32d541ea7b39c0a3e648203510ffe31ac1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272649162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bda5d2d721f4aea1bb7177c9aa71fb8f7a14f55b82a9e8b7f4afb1dcdd130cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:39:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 03:39:05 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 03:39:22 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 03:39:22 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 03:39:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 03:39:26 GMT
CMD ["node"]
# Sat, 29 Dec 2018 12:53:32 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 12:53:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 29 Dec 2018 12:53:37 GMT
ENV NODE_ENV=production
# Sat, 29 Dec 2018 12:53:37 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Sat, 29 Dec 2018 12:54:08 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 29 Dec 2018 12:54:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 29 Dec 2018 12:54:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 29 Dec 2018 12:57:06 GMT
ENV GHOST_VERSION=1.25.6
# Sat, 29 Dec 2018 12:58:11 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 29 Dec 2018 12:58:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 29 Dec 2018 12:59:20 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 29 Dec 2018 12:59:23 GMT
WORKDIR /var/lib/ghost
# Sat, 29 Dec 2018 12:59:23 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 29 Dec 2018 12:59:24 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Sat, 29 Dec 2018 12:59:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 12:59:24 GMT
EXPOSE 2368
# Sat, 29 Dec 2018 12:59:24 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:604501ee7a0d3f42660098f7202c5d216210983bed82ae753be16558e2e8bf6e`  
		Last Modified: Sat, 29 Dec 2018 03:50:38 GMT  
		Size: 4.1 KB (4149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0e991e8d451d9ea6532cd01b681c678722f34ab3e107161d412f2cfb425313`  
		Last Modified: Sat, 29 Dec 2018 03:50:45 GMT  
		Size: 28.0 MB (28018658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada960f0a400d19b3322e0a6a13af27edc8aa3a56c0e9be7d36b598c9ae65866`  
		Last Modified: Sat, 29 Dec 2018 03:50:39 GMT  
		Size: 1.3 MB (1318192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e956782ba2c25ae089483f96f3f15bc79a1c517c9717a5abb0893acf34dd996`  
		Last Modified: Sat, 29 Dec 2018 12:59:54 GMT  
		Size: 500.9 KB (500917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54512d80554351cdcfb4fcd45b15421997933dfc7ba96d97f62ac82a2059e94`  
		Last Modified: Sat, 29 Dec 2018 13:00:13 GMT  
		Size: 17.2 MB (17196858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98ca609665fe32cc7e7271eb2d93abaf9dbe3be2fefeb2f1487d85ff0484308d`  
		Last Modified: Sat, 29 Dec 2018 13:01:36 GMT  
		Size: 101.3 MB (101263829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876a5bbf55c4a07aacbf9bd06af609c2f175cae7ef9a4713e0b1da7c6b9e411b`  
		Last Modified: Sat, 29 Dec 2018 13:01:37 GMT  
		Size: 101.9 MB (101853059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4829f8048b0f2a1a365a74494b70f3ada8e598eb0af5b4c8664bc29779b33fab`  
		Last Modified: Sat, 29 Dec 2018 13:01:04 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.6` - linux; arm variant v7

```console
$ docker pull ghost@sha256:7408bdf1848ff326a1e6c1997cababe7ce22d0e43ef71f2f6bd587ccd798d519
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (272007671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bc9a61bbae262dc5f642b78800915c56b10df4bd7bef2845d9634acd3fa8b2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:54:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 27 Dec 2018 12:59:58 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 13:00:57 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 27 Dec 2018 13:00:57 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 13:01:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 27 Dec 2018 13:01:03 GMT
CMD ["node"]
# Thu, 27 Dec 2018 13:29:44 GMT
ENV GOSU_VERSION=1.10
# Thu, 27 Dec 2018 13:29:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 27 Dec 2018 13:29:49 GMT
ENV NODE_ENV=production
# Thu, 27 Dec 2018 13:29:49 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 13:30:27 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 13:30:29 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 13:30:30 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 13:36:48 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 27 Dec 2018 13:38:12 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 27 Dec 2018 13:38:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 27 Dec 2018 13:42:12 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 27 Dec 2018 13:42:17 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 13:42:17 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 13:42:17 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Thu, 27 Dec 2018 13:42:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 13:42:18 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 13:42:19 GMT
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
	-	`sha256:1073f47161d7cf09b47970f54a05030f88aceb41bf5f2501d173ec102d593dc2`  
		Last Modified: Thu, 27 Dec 2018 13:10:21 GMT  
		Size: 25.5 MB (25468465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ec3ccb7c505ea7caa59e73d4f4f35ea0749d14ea5a3f36458eae409f9bca0c`  
		Last Modified: Thu, 27 Dec 2018 13:10:13 GMT  
		Size: 1.3 MB (1318235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91953b777f7b7d69d1ecc74457d8e4762ee7d8dfec084e580a71af3bfc4e84b2`  
		Last Modified: Thu, 27 Dec 2018 13:42:41 GMT  
		Size: 475.4 KB (475435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a4241c7c3fd1179499d2f2039d5d57b97da604263561d93fd0c1d66593a839`  
		Last Modified: Thu, 27 Dec 2018 13:42:51 GMT  
		Size: 17.2 MB (17194740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce351117a380fcb6e963456e79f364123901cd2d4e38088afab655f32d79088e`  
		Last Modified: Thu, 27 Dec 2018 13:44:17 GMT  
		Size: 93.6 MB (93569747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40849fcc874e5f6e24406e763781a1d76651ab124c4ea6fa1a91ee0e552bbfa`  
		Last Modified: Thu, 27 Dec 2018 13:44:21 GMT  
		Size: 114.7 MB (114706237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e639b1754bb1e70aa729cfb6a4fc9da498c456c0b8d94dc9b55f7f6169034791`  
		Last Modified: Thu, 27 Dec 2018 13:43:39 GMT  
		Size: 588.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.6` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:7c02a88966f1586dcd6c5eb7533588bd01f24b4dbd1b5abc6baecb0f20eeb261
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.9 MB (274893017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ddcf5abddfd33efcac6226a0acee04453e6f92f094df6fd920e1cd99d918a7c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 03:05:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 27 Dec 2018 10:07:13 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 10:08:15 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 27 Dec 2018 10:08:16 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 10:08:24 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 27 Dec 2018 10:08:25 GMT
CMD ["node"]
# Thu, 27 Dec 2018 11:38:26 GMT
ENV GOSU_VERSION=1.10
# Thu, 27 Dec 2018 11:38:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 27 Dec 2018 11:38:34 GMT
ENV NODE_ENV=production
# Thu, 27 Dec 2018 11:38:34 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 11:39:11 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 11:39:13 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 11:39:14 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 11:46:54 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 27 Dec 2018 11:48:08 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 27 Dec 2018 11:48:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 27 Dec 2018 11:53:22 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 27 Dec 2018 11:53:26 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 11:53:26 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 11:53:27 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Thu, 27 Dec 2018 11:53:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 11:53:28 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 11:53:29 GMT
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
	-	`sha256:0755c9e8b0b71c78aba689bd3cdcbc7762f46e5463b72bde09a69b4e56426d4d`  
		Last Modified: Thu, 27 Dec 2018 11:19:46 GMT  
		Size: 26.7 MB (26700724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64529d3a0f09a51575a77a56517a2bdf663b4414c972f64c9ba0e06049d2d62e`  
		Last Modified: Thu, 27 Dec 2018 11:19:36 GMT  
		Size: 1.3 MB (1318207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fabda61b3b7fe02e0d30f15ebcc7f1b06b3ff8827afb302bf0a97036f497549`  
		Last Modified: Thu, 27 Dec 2018 11:54:07 GMT  
		Size: 468.9 KB (468937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f489fae8bc8306344f0e09911341bc10bcaa0d55d3dae6157f92a72d8fb2ab`  
		Last Modified: Thu, 27 Dec 2018 11:54:16 GMT  
		Size: 17.2 MB (17196072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011d3c0ada1c585da020884f517acffc39612ec64599528ff95ee6263504633e`  
		Last Modified: Thu, 27 Dec 2018 11:55:53 GMT  
		Size: 93.6 MB (93568410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14232c6554459ece8150bf5e1435c07a82bcb9d22527bc14e2aad3bf289376d7`  
		Last Modified: Thu, 27 Dec 2018 11:55:59 GMT  
		Size: 115.3 MB (115304606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:388c933fc7fd8fe5d464361066e042fa5fd5b4ac8c747e6239c528d70e298b05`  
		Last Modified: Thu, 27 Dec 2018 11:55:14 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.6` - linux; 386

```console
$ docker pull ghost@sha256:9aeb7a99487c9dd16aadc0825f2959296cebc9bd1767a0c3068147172596bc13
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.6 MB (279571120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4d836bab1d4845ceb035d03adcf974c1b497eb5667bb467d1069fbf48c0a6ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Tue, 27 Nov 2018 14:20:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 27 Dec 2018 12:01:59 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 12:02:22 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 27 Dec 2018 12:02:23 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 12:02:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 27 Dec 2018 12:02:27 GMT
CMD ["node"]
# Thu, 27 Dec 2018 13:13:11 GMT
ENV GOSU_VERSION=1.10
# Thu, 27 Dec 2018 13:13:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 27 Dec 2018 13:13:16 GMT
ENV NODE_ENV=production
# Thu, 27 Dec 2018 13:13:16 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 13:13:35 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 13:13:36 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 13:13:36 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 13:16:49 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 27 Dec 2018 13:17:26 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 27 Dec 2018 13:17:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 27 Dec 2018 13:19:23 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 27 Dec 2018 13:19:24 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 13:19:25 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 13:19:25 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Thu, 27 Dec 2018 13:19:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 13:19:25 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 13:19:25 GMT
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
	-	`sha256:cd2be92da289c6a7146a129dd797865fcc4486ab275febdeee242dd5f93eba09`  
		Last Modified: Thu, 27 Dec 2018 12:56:20 GMT  
		Size: 27.8 MB (27846046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ba8327e64a8e6c4cb29e1d224d002137f775e6fa051f000532ebb30fc50697`  
		Last Modified: Thu, 27 Dec 2018 12:56:13 GMT  
		Size: 1.3 MB (1318187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1778291ff553608714f94bd8d95aad94fa9cdc661cca75c334cf122f1528e9e7`  
		Last Modified: Thu, 27 Dec 2018 13:19:44 GMT  
		Size: 480.8 KB (480830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:610b5061cfbad8f59b81d9f157faf4e7f4ec291affb0284cb9b4328d5aed134a`  
		Last Modified: Thu, 27 Dec 2018 13:19:52 GMT  
		Size: 17.2 MB (17190252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afffec53989c69aeef784b3d64c21b3a665af9b24f5cd57fbcc250c918921766`  
		Last Modified: Thu, 27 Dec 2018 13:20:59 GMT  
		Size: 93.6 MB (93564695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16fe6b22d36d51e655a4263ef11d35f23becc7157a91a4919e339582bc71e24`  
		Last Modified: Thu, 27 Dec 2018 13:21:04 GMT  
		Size: 116.0 MB (116039613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1371b8a63de42e3adc4c02e854ddc62c639ba10dbdf83af85071872081f962d3`  
		Last Modified: Thu, 27 Dec 2018 13:20:31 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.6` - linux; ppc64le

```console
$ docker pull ghost@sha256:bac00cc99a202f3a2cf7c5c1ff73a05dc506cab31e4a6d72c4b1cb64d2d510b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.5 MB (278513245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:153236e2ef96852f74954c6039ed64351277b8c3947c283c6a1c1dd90d2635b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:08:39 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 12:08:41 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 12:09:51 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 12:09:54 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 12:10:04 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 12:10:06 GMT
CMD ["node"]
# Sat, 29 Dec 2018 17:19:27 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 17:19:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 29 Dec 2018 17:19:45 GMT
ENV NODE_ENV=production
# Sat, 29 Dec 2018 17:19:48 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Sat, 29 Dec 2018 17:20:42 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 29 Dec 2018 17:20:46 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 29 Dec 2018 17:20:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 29 Dec 2018 17:28:58 GMT
ENV GHOST_VERSION=1.25.6
# Sat, 29 Dec 2018 17:31:02 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 29 Dec 2018 17:31:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 29 Dec 2018 17:35:17 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 29 Dec 2018 17:35:23 GMT
WORKDIR /var/lib/ghost
# Sat, 29 Dec 2018 17:35:25 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 29 Dec 2018 17:35:27 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Sat, 29 Dec 2018 17:35:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:35:31 GMT
EXPOSE 2368
# Sat, 29 Dec 2018 17:35:34 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d4874e270588da8c76182e39e8e58854c181fdfbfab716619b6acad4d7ea0c`  
		Last Modified: Sat, 29 Dec 2018 12:15:21 GMT  
		Size: 4.2 KB (4177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9f4a6ed2d44cdcae53a6bff0b6166811bfce3f12741330f8377eca61ba1877`  
		Last Modified: Sat, 29 Dec 2018 12:15:27 GMT  
		Size: 27.0 MB (26964238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13bea5d680fac40885ade9d7e8fe6d98f40c2b5834542fc0ed27adf448d50406`  
		Last Modified: Sat, 29 Dec 2018 12:15:22 GMT  
		Size: 1.3 MB (1318210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1e85b915c64aa3ca8780451245d2c88606973aa4dad1130902be5c09a3f05b`  
		Last Modified: Sat, 29 Dec 2018 17:36:24 GMT  
		Size: 470.1 KB (470077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cfd7e684d5b0c0e736b1d32ea48a02d2890cf3f1e91ddc11a37031ae8f83e3d`  
		Last Modified: Sat, 29 Dec 2018 17:37:01 GMT  
		Size: 17.2 MB (17197317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df3c517baf69c25b07421ec2151ddd41d64a514e4d1f6806c88b2543779bc05`  
		Last Modified: Sat, 29 Dec 2018 17:40:18 GMT  
		Size: 93.6 MB (93567296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90748d832310b22c499d10bc48e61d992834a5f10905351da10211ddc4f14950`  
		Last Modified: Sat, 29 Dec 2018 17:40:14 GMT  
		Size: 116.2 MB (116244519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45eff3225062bcac0a4d0e8161704af9fd803c8602e88c2f0f2089959821d718`  
		Last Modified: Sat, 29 Dec 2018 17:38:33 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.6` - linux; s390x

```console
$ docker pull ghost@sha256:39f89f046b309d8c4b3ef24e58deeb1e5496aeb9e036987905c4f3adc5d5b9d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.0 MB (278964321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca7b1f876d87a942b3af455854757cfca3fbbaf0667c20936d0b7c2ab8628933`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:39:43 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 27 Dec 2018 13:05:49 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 13:06:10 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 27 Dec 2018 13:06:11 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 13:06:15 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 27 Dec 2018 13:06:15 GMT
CMD ["node"]
# Thu, 27 Dec 2018 13:51:51 GMT
ENV GOSU_VERSION=1.10
# Thu, 27 Dec 2018 13:51:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 27 Dec 2018 13:51:55 GMT
ENV NODE_ENV=production
# Thu, 27 Dec 2018 13:51:55 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 13:52:10 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 13:52:11 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 13:52:11 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 13:54:54 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 27 Dec 2018 13:55:14 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 27 Dec 2018 13:55:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 27 Dec 2018 13:56:38 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 27 Dec 2018 13:56:40 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 13:56:40 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 13:56:40 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Thu, 27 Dec 2018 13:56:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 13:56:40 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 13:56:41 GMT
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
	-	`sha256:ffa67e6f86f2a9a0de4bf3c649a86143b0fbdb39862945123798af4098e31053`  
		Last Modified: Thu, 27 Dec 2018 13:34:47 GMT  
		Size: 27.9 MB (27860339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7335cea647fbe88990ffd862ef80071958c5d406d3dc5eba1d84538218b4abb`  
		Last Modified: Thu, 27 Dec 2018 13:34:42 GMT  
		Size: 1.3 MB (1318193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a2ad31a8e5213f84bd039e26bcff4e77dccfa682de4f257362117c6ff01dc90`  
		Last Modified: Thu, 27 Dec 2018 13:57:10 GMT  
		Size: 487.0 KB (487040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561aa77eae029aa9da9b40a69a398913fd4228077c5ce5de66d76f9872c88eb3`  
		Last Modified: Thu, 27 Dec 2018 13:57:14 GMT  
		Size: 17.2 MB (17188001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948a7e2e694ac0eac4cc7eb1d4c2d263bde59845fae88ca9c60b33034333b2af`  
		Last Modified: Thu, 27 Dec 2018 13:57:52 GMT  
		Size: 93.6 MB (93563494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc24ddff2119cd75352bc0d5e4c559bb7ecf107b711ae1d96dddef3c49e18fd`  
		Last Modified: Thu, 27 Dec 2018 13:57:55 GMT  
		Size: 116.2 MB (116207805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f78dbd7fb1b29c455c880722f156aa38f4ae903fd393c2749c3e65348b3130`  
		Last Modified: Thu, 27 Dec 2018 13:57:37 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25.6-alpine`

```console
$ docker pull ghost@sha256:db1895fd2e231a2c3b798a2f313c9970586d2ad32e02d6e9ff191d9ccf0b392c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1.25.6-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:c3e35ebdfcdbf8db4a5592a3ae0350a3f3d3c9d4bcd33b367f152b4fe8182652
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.0 MB (142038230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e0695e2d30488d896aa94babab85e20da8929fe2131c35042536b18b3b6d50`
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
# Thu, 27 Dec 2018 03:09:35 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 03:09:54 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 03:09:54 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 03:09:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 03:12:14 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 27 Dec 2018 03:12:47 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 27 Dec 2018 03:12:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 27 Dec 2018 03:12:48 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 03:12:48 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 03:12:49 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Thu, 27 Dec 2018 03:12:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 03:12:49 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 03:12:49 GMT
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
	-	`sha256:40e9de1b77796697c3fee0b698f09ffae0d2aaee301a7cd52f307aa822e0e815`  
		Last Modified: Thu, 27 Dec 2018 03:13:36 GMT  
		Size: 17.2 MB (17189369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facf984f7687c55b362d44f6d448f9da0e0ac2c6985128b74f216b733286c5a8`  
		Last Modified: Thu, 27 Dec 2018 03:14:46 GMT  
		Size: 101.3 MB (101262534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e13dbbb15945531e1a0a51b4cf6de6e41262db2689b888c883aea6a26c7d1fa`  
		Last Modified: Thu, 27 Dec 2018 03:14:29 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.6-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:9fb210d228c23034244e23456dff8f29ad2902159c033e8b330980b5561eef52
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133202441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f693823799b3d902827f95c91969d4b6edbfa866758b1d6dfa6684003f748ea`
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
# Thu, 27 Dec 2018 09:20:37 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 09:21:17 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 09:21:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 09:21:19 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 09:23:17 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 27 Dec 2018 09:24:41 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 27 Dec 2018 09:24:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 27 Dec 2018 09:24:45 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 09:24:45 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 09:24:46 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Thu, 27 Dec 2018 09:24:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 09:24:46 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 09:24:47 GMT
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
	-	`sha256:4977251ac3df3cf974035f103425aa1733b1ae407a9b77b01b1273d06a4d8e8e`  
		Last Modified: Thu, 27 Dec 2018 09:25:18 GMT  
		Size: 17.2 MB (17194043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77cba2cb34100036ff07b4d8b623feda6b0eb36b3d1adae8d263797b119c25e2`  
		Last Modified: Thu, 27 Dec 2018 09:26:34 GMT  
		Size: 93.6 MB (93568098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b97f6fd92a9ef4169d9f0cb1234c80b6a92d5b2d106918167bb9a3ce98da27`  
		Last Modified: Thu, 27 Dec 2018 09:25:58 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.6-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:828da05fdf6a2adda7722d460dc0e233da21de0fefa70ad0cad3205f92509363
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.1 MB (134121474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e75dacc01d1775e12fde42a1dda9ceab25e85e3b58e551cac8d81420fa3ad2c`
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
# Thu, 27 Dec 2018 10:24:16 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 10:24:45 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 10:24:48 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 10:24:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 10:31:55 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 27 Dec 2018 10:33:19 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 27 Dec 2018 10:33:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 27 Dec 2018 10:33:25 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 10:33:27 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 10:33:27 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Thu, 27 Dec 2018 10:33:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 10:33:30 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 10:33:32 GMT
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
	-	`sha256:9656ab452bab69d55a53614ef852ebaadf997d2fbe225259cc1dfc0d71bc5290`  
		Last Modified: Thu, 27 Dec 2018 10:35:46 GMT  
		Size: 17.2 MB (17189852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7ca48331d5239685f274bcc0eddd787e7c634bb8eb6bf1911776df7ccc8fb8`  
		Last Modified: Thu, 27 Dec 2018 10:38:40 GMT  
		Size: 93.6 MB (93565050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aa9bbbc69b6eb792d34b10bbeb038d7f8e34ca7cb717ee9ea26afe8c33074c8`  
		Last Modified: Thu, 27 Dec 2018 10:37:48 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25-alpine`

```console
$ docker pull ghost@sha256:db1895fd2e231a2c3b798a2f313c9970586d2ad32e02d6e9ff191d9ccf0b392c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1.25-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:c3e35ebdfcdbf8db4a5592a3ae0350a3f3d3c9d4bcd33b367f152b4fe8182652
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.0 MB (142038230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e0695e2d30488d896aa94babab85e20da8929fe2131c35042536b18b3b6d50`
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
# Thu, 27 Dec 2018 03:09:35 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 03:09:54 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 03:09:54 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 03:09:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 03:12:14 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 27 Dec 2018 03:12:47 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 27 Dec 2018 03:12:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 27 Dec 2018 03:12:48 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 03:12:48 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 03:12:49 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Thu, 27 Dec 2018 03:12:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 03:12:49 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 03:12:49 GMT
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
	-	`sha256:40e9de1b77796697c3fee0b698f09ffae0d2aaee301a7cd52f307aa822e0e815`  
		Last Modified: Thu, 27 Dec 2018 03:13:36 GMT  
		Size: 17.2 MB (17189369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facf984f7687c55b362d44f6d448f9da0e0ac2c6985128b74f216b733286c5a8`  
		Last Modified: Thu, 27 Dec 2018 03:14:46 GMT  
		Size: 101.3 MB (101262534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e13dbbb15945531e1a0a51b4cf6de6e41262db2689b888c883aea6a26c7d1fa`  
		Last Modified: Thu, 27 Dec 2018 03:14:29 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:9fb210d228c23034244e23456dff8f29ad2902159c033e8b330980b5561eef52
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133202441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f693823799b3d902827f95c91969d4b6edbfa866758b1d6dfa6684003f748ea`
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
# Thu, 27 Dec 2018 09:20:37 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 09:21:17 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 09:21:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 09:21:19 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 09:23:17 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 27 Dec 2018 09:24:41 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 27 Dec 2018 09:24:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 27 Dec 2018 09:24:45 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 09:24:45 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 09:24:46 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Thu, 27 Dec 2018 09:24:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 09:24:46 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 09:24:47 GMT
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
	-	`sha256:4977251ac3df3cf974035f103425aa1733b1ae407a9b77b01b1273d06a4d8e8e`  
		Last Modified: Thu, 27 Dec 2018 09:25:18 GMT  
		Size: 17.2 MB (17194043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77cba2cb34100036ff07b4d8b623feda6b0eb36b3d1adae8d263797b119c25e2`  
		Last Modified: Thu, 27 Dec 2018 09:26:34 GMT  
		Size: 93.6 MB (93568098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b97f6fd92a9ef4169d9f0cb1234c80b6a92d5b2d106918167bb9a3ce98da27`  
		Last Modified: Thu, 27 Dec 2018 09:25:58 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:828da05fdf6a2adda7722d460dc0e233da21de0fefa70ad0cad3205f92509363
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.1 MB (134121474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e75dacc01d1775e12fde42a1dda9ceab25e85e3b58e551cac8d81420fa3ad2c`
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
# Thu, 27 Dec 2018 10:24:16 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 10:24:45 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 10:24:48 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 10:24:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 10:31:55 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 27 Dec 2018 10:33:19 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 27 Dec 2018 10:33:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 27 Dec 2018 10:33:25 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 10:33:27 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 10:33:27 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Thu, 27 Dec 2018 10:33:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 10:33:30 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 10:33:32 GMT
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
	-	`sha256:9656ab452bab69d55a53614ef852ebaadf997d2fbe225259cc1dfc0d71bc5290`  
		Last Modified: Thu, 27 Dec 2018 10:35:46 GMT  
		Size: 17.2 MB (17189852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7ca48331d5239685f274bcc0eddd787e7c634bb8eb6bf1911776df7ccc8fb8`  
		Last Modified: Thu, 27 Dec 2018 10:38:40 GMT  
		Size: 93.6 MB (93565050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aa9bbbc69b6eb792d34b10bbeb038d7f8e34ca7cb717ee9ea26afe8c33074c8`  
		Last Modified: Thu, 27 Dec 2018 10:37:48 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:db1895fd2e231a2c3b798a2f313c9970586d2ad32e02d6e9ff191d9ccf0b392c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:c3e35ebdfcdbf8db4a5592a3ae0350a3f3d3c9d4bcd33b367f152b4fe8182652
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.0 MB (142038230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e0695e2d30488d896aa94babab85e20da8929fe2131c35042536b18b3b6d50`
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
# Thu, 27 Dec 2018 03:09:35 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 03:09:54 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 03:09:54 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 03:09:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 03:12:14 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 27 Dec 2018 03:12:47 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 27 Dec 2018 03:12:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 27 Dec 2018 03:12:48 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 03:12:48 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 03:12:49 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Thu, 27 Dec 2018 03:12:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 03:12:49 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 03:12:49 GMT
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
	-	`sha256:40e9de1b77796697c3fee0b698f09ffae0d2aaee301a7cd52f307aa822e0e815`  
		Last Modified: Thu, 27 Dec 2018 03:13:36 GMT  
		Size: 17.2 MB (17189369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facf984f7687c55b362d44f6d448f9da0e0ac2c6985128b74f216b733286c5a8`  
		Last Modified: Thu, 27 Dec 2018 03:14:46 GMT  
		Size: 101.3 MB (101262534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e13dbbb15945531e1a0a51b4cf6de6e41262db2689b888c883aea6a26c7d1fa`  
		Last Modified: Thu, 27 Dec 2018 03:14:29 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:9fb210d228c23034244e23456dff8f29ad2902159c033e8b330980b5561eef52
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133202441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f693823799b3d902827f95c91969d4b6edbfa866758b1d6dfa6684003f748ea`
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
# Thu, 27 Dec 2018 09:20:37 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 09:21:17 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 09:21:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 09:21:19 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 09:23:17 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 27 Dec 2018 09:24:41 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 27 Dec 2018 09:24:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 27 Dec 2018 09:24:45 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 09:24:45 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 09:24:46 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Thu, 27 Dec 2018 09:24:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 09:24:46 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 09:24:47 GMT
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
	-	`sha256:4977251ac3df3cf974035f103425aa1733b1ae407a9b77b01b1273d06a4d8e8e`  
		Last Modified: Thu, 27 Dec 2018 09:25:18 GMT  
		Size: 17.2 MB (17194043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77cba2cb34100036ff07b4d8b623feda6b0eb36b3d1adae8d263797b119c25e2`  
		Last Modified: Thu, 27 Dec 2018 09:26:34 GMT  
		Size: 93.6 MB (93568098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b97f6fd92a9ef4169d9f0cb1234c80b6a92d5b2d106918167bb9a3ce98da27`  
		Last Modified: Thu, 27 Dec 2018 09:25:58 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:828da05fdf6a2adda7722d460dc0e233da21de0fefa70ad0cad3205f92509363
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.1 MB (134121474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e75dacc01d1775e12fde42a1dda9ceab25e85e3b58e551cac8d81420fa3ad2c`
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
# Thu, 27 Dec 2018 10:24:16 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 10:24:45 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 10:24:48 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 10:24:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 10:31:55 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 27 Dec 2018 10:33:19 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 27 Dec 2018 10:33:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 27 Dec 2018 10:33:25 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 10:33:27 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 10:33:27 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Thu, 27 Dec 2018 10:33:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 10:33:30 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 10:33:32 GMT
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
	-	`sha256:9656ab452bab69d55a53614ef852ebaadf997d2fbe225259cc1dfc0d71bc5290`  
		Last Modified: Thu, 27 Dec 2018 10:35:46 GMT  
		Size: 17.2 MB (17189852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7ca48331d5239685f274bcc0eddd787e7c634bb8eb6bf1911776df7ccc8fb8`  
		Last Modified: Thu, 27 Dec 2018 10:38:40 GMT  
		Size: 93.6 MB (93565050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aa9bbbc69b6eb792d34b10bbeb038d7f8e34ca7cb717ee9ea26afe8c33074c8`  
		Last Modified: Thu, 27 Dec 2018 10:37:48 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2`

```console
$ docker pull ghost@sha256:1865252c8acea9ec2368d1e1ee90cdc313614b28f0c66c023f660c24618bc126
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
$ docker pull ghost@sha256:c7eef0b7919d5336b981cad58ff24ea49db951ca4a57c02308cfc773c6438206
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299070156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53a6a1e4afc0bfabceaf5b3d3a41f3ecf42ba2be0de5e6037cae68bb4af5d9c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:39:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 03:39:05 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 03:39:22 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 03:39:22 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 03:39:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 03:39:26 GMT
CMD ["node"]
# Sat, 29 Dec 2018 12:53:32 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 12:53:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 29 Dec 2018 12:53:37 GMT
ENV NODE_ENV=production
# Sat, 29 Dec 2018 12:53:37 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Sat, 29 Dec 2018 12:54:08 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 29 Dec 2018 12:54:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 29 Dec 2018 12:54:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 29 Dec 2018 12:54:10 GMT
ENV GHOST_VERSION=2.9.1
# Sat, 29 Dec 2018 12:55:26 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Sat, 29 Dec 2018 12:56:42 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 29 Dec 2018 12:56:44 GMT
WORKDIR /var/lib/ghost
# Sat, 29 Dec 2018 12:56:45 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 29 Dec 2018 12:56:45 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Sat, 29 Dec 2018 12:56:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 12:56:46 GMT
EXPOSE 2368
# Sat, 29 Dec 2018 12:56:47 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:604501ee7a0d3f42660098f7202c5d216210983bed82ae753be16558e2e8bf6e`  
		Last Modified: Sat, 29 Dec 2018 03:50:38 GMT  
		Size: 4.1 KB (4149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0e991e8d451d9ea6532cd01b681c678722f34ab3e107161d412f2cfb425313`  
		Last Modified: Sat, 29 Dec 2018 03:50:45 GMT  
		Size: 28.0 MB (28018658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada960f0a400d19b3322e0a6a13af27edc8aa3a56c0e9be7d36b598c9ae65866`  
		Last Modified: Sat, 29 Dec 2018 03:50:39 GMT  
		Size: 1.3 MB (1318192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e956782ba2c25ae089483f96f3f15bc79a1c517c9717a5abb0893acf34dd996`  
		Last Modified: Sat, 29 Dec 2018 12:59:54 GMT  
		Size: 500.9 KB (500917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54512d80554351cdcfb4fcd45b15421997933dfc7ba96d97f62ac82a2059e94`  
		Last Modified: Sat, 29 Dec 2018 13:00:13 GMT  
		Size: 17.2 MB (17196858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88194288c5b57f5cc16d5af69af8981dfe95c668cc8aee091a62f459a03aa78`  
		Last Modified: Sat, 29 Dec 2018 13:00:56 GMT  
		Size: 125.1 MB (125141116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba5720c4b679d17004441991d566e133827ee66424e447445249a07e47ff9c1`  
		Last Modified: Sat, 29 Dec 2018 13:00:33 GMT  
		Size: 104.4 MB (104396793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6247b0eeca8377228a36223e3af0ab541efef955b7a883ede6a02d758a64b5b3`  
		Last Modified: Sat, 29 Dec 2018 12:59:54 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; arm variant v7

```console
$ docker pull ghost@sha256:29e9aab2351013e74b13f7b8a76cf67706bc452dae92a0f44faff419dba76794
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.6 MB (296611691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e28df600fa7cd51df63c8de301afe56d830a5befc121822ee08cc573f5cea62`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:54:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 27 Dec 2018 12:59:58 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 13:00:57 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 27 Dec 2018 13:00:57 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 13:01:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 27 Dec 2018 13:01:03 GMT
CMD ["node"]
# Thu, 27 Dec 2018 13:29:44 GMT
ENV GOSU_VERSION=1.10
# Thu, 27 Dec 2018 13:29:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 27 Dec 2018 13:29:49 GMT
ENV NODE_ENV=production
# Thu, 27 Dec 2018 13:29:49 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 13:30:27 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 13:30:29 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 13:30:30 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 13:30:30 GMT
ENV GHOST_VERSION=2.9.1
# Thu, 27 Dec 2018 13:32:08 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 27 Dec 2018 13:36:26 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 27 Dec 2018 13:36:31 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 13:36:31 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 13:36:32 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 27 Dec 2018 13:36:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 13:36:32 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 13:36:33 GMT
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
	-	`sha256:1073f47161d7cf09b47970f54a05030f88aceb41bf5f2501d173ec102d593dc2`  
		Last Modified: Thu, 27 Dec 2018 13:10:21 GMT  
		Size: 25.5 MB (25468465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ec3ccb7c505ea7caa59e73d4f4f35ea0749d14ea5a3f36458eae409f9bca0c`  
		Last Modified: Thu, 27 Dec 2018 13:10:13 GMT  
		Size: 1.3 MB (1318235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91953b777f7b7d69d1ecc74457d8e4762ee7d8dfec084e580a71af3bfc4e84b2`  
		Last Modified: Thu, 27 Dec 2018 13:42:41 GMT  
		Size: 475.4 KB (475435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a4241c7c3fd1179499d2f2039d5d57b97da604263561d93fd0c1d66593a839`  
		Last Modified: Thu, 27 Dec 2018 13:42:51 GMT  
		Size: 17.2 MB (17194740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5700558e37c35b15d5bc8bd73114a7599ca5f3a6ae8de39cbca2164dc9c26087`  
		Last Modified: Thu, 27 Dec 2018 13:43:24 GMT  
		Size: 106.6 MB (106638499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c50358fd223d4d98b71f4309362de1e9a515d965cc8f13b58d4544cb0aa2a61`  
		Last Modified: Thu, 27 Dec 2018 13:43:30 GMT  
		Size: 126.2 MB (126241532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e755898497d1d1adabb56092d2adc0c946ef7fd33629e5949b479a350c30cb83`  
		Last Modified: Thu, 27 Dec 2018 13:42:41 GMT  
		Size: 561.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:829b4845ca9ea67c83e96e02fc4eb977abb38671c24b43c48d63e635d118d3c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.6 MB (297578734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c4f3efa26ad191ef8969d73c63977648804a22f9d0d7648fedbdb176723d571`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 03:05:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 27 Dec 2018 10:07:13 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 10:08:15 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 27 Dec 2018 10:08:16 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 10:08:24 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 27 Dec 2018 10:08:25 GMT
CMD ["node"]
# Thu, 27 Dec 2018 11:38:26 GMT
ENV GOSU_VERSION=1.10
# Thu, 27 Dec 2018 11:38:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 27 Dec 2018 11:38:34 GMT
ENV NODE_ENV=production
# Thu, 27 Dec 2018 11:38:34 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 11:39:11 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 11:39:13 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 11:39:14 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 11:39:14 GMT
ENV GHOST_VERSION=2.9.1
# Thu, 27 Dec 2018 11:40:39 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 27 Dec 2018 11:46:05 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 27 Dec 2018 11:46:09 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 11:46:10 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 11:46:10 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 27 Dec 2018 11:46:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 11:46:11 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 11:46:12 GMT
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
	-	`sha256:0755c9e8b0b71c78aba689bd3cdcbc7762f46e5463b72bde09a69b4e56426d4d`  
		Last Modified: Thu, 27 Dec 2018 11:19:46 GMT  
		Size: 26.7 MB (26700724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64529d3a0f09a51575a77a56517a2bdf663b4414c972f64c9ba0e06049d2d62e`  
		Last Modified: Thu, 27 Dec 2018 11:19:36 GMT  
		Size: 1.3 MB (1318207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fabda61b3b7fe02e0d30f15ebcc7f1b06b3ff8827afb302bf0a97036f497549`  
		Last Modified: Thu, 27 Dec 2018 11:54:07 GMT  
		Size: 468.9 KB (468937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f489fae8bc8306344f0e09911341bc10bcaa0d55d3dae6157f92a72d8fb2ab`  
		Last Modified: Thu, 27 Dec 2018 11:54:16 GMT  
		Size: 17.2 MB (17196072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ea0191cd920510525e16043c59ab29c34c395cc0c96dc02e3a3946ace3f6ca`  
		Last Modified: Thu, 27 Dec 2018 11:54:51 GMT  
		Size: 105.7 MB (105715267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ee00f19cc379828100c7c9b8e940530e609b16d8fa4ba20c1acd13b8bdc03c`  
		Last Modified: Thu, 27 Dec 2018 11:54:59 GMT  
		Size: 125.8 MB (125843494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39f3a0e6b1cd7560c76eea4b56fd4256f80b7be6acf3274c47ef0c46a707220`  
		Last Modified: Thu, 27 Dec 2018 11:54:06 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; 386

```console
$ docker pull ghost@sha256:7ecab6538fd3f54ac8482122e1d19d3d91655d3dd3b22ba092fb3d7ed3a1b805
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.0 MB (288996832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a16577397b5d27b6492f73fdeb19582e35d1b46a2934408cebf54531a3b8687`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Tue, 27 Nov 2018 14:20:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 27 Dec 2018 12:01:59 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 12:02:22 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 27 Dec 2018 12:02:23 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 12:02:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 27 Dec 2018 12:02:27 GMT
CMD ["node"]
# Thu, 27 Dec 2018 13:13:11 GMT
ENV GOSU_VERSION=1.10
# Thu, 27 Dec 2018 13:13:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 27 Dec 2018 13:13:16 GMT
ENV NODE_ENV=production
# Thu, 27 Dec 2018 13:13:16 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 13:13:35 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 13:13:36 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 13:13:36 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 13:13:36 GMT
ENV GHOST_VERSION=2.9.1
# Thu, 27 Dec 2018 13:14:17 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 27 Dec 2018 13:16:23 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 27 Dec 2018 13:16:25 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 13:16:25 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 13:16:25 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 27 Dec 2018 13:16:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 13:16:25 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 13:16:26 GMT
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
	-	`sha256:cd2be92da289c6a7146a129dd797865fcc4486ab275febdeee242dd5f93eba09`  
		Last Modified: Thu, 27 Dec 2018 12:56:20 GMT  
		Size: 27.8 MB (27846046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ba8327e64a8e6c4cb29e1d224d002137f775e6fa051f000532ebb30fc50697`  
		Last Modified: Thu, 27 Dec 2018 12:56:13 GMT  
		Size: 1.3 MB (1318187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1778291ff553608714f94bd8d95aad94fa9cdc661cca75c334cf122f1528e9e7`  
		Last Modified: Thu, 27 Dec 2018 13:19:44 GMT  
		Size: 480.8 KB (480830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:610b5061cfbad8f59b81d9f157faf4e7f4ec291affb0284cb9b4328d5aed134a`  
		Last Modified: Thu, 27 Dec 2018 13:19:52 GMT  
		Size: 17.2 MB (17190252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca4a2e9469e2f911076c5b8a8ecc14400f2adb0e34f174babcb2c0d74b1038e`  
		Last Modified: Thu, 27 Dec 2018 13:20:17 GMT  
		Size: 99.7 MB (99744206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:267bb39112c1c40e8482c04c5283afd742b374c06a4d535d1e52ab5674d10aad`  
		Last Modified: Thu, 27 Dec 2018 13:20:22 GMT  
		Size: 119.3 MB (119285842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b4a8750b60317002e04296af5e7ec93be172d0c5d4101f47155bacb8d05d78`  
		Last Modified: Thu, 27 Dec 2018 13:19:44 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; ppc64le

```console
$ docker pull ghost@sha256:af1566a50896f713abec5e2df8ec2b9f806be16b0aaf14cce9cbb2a1a70abe00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.9 MB (287873981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2662789356a81bc3dacd933abd25a16627ac90e1d765f0d724493847883c89ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:08:39 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 12:08:41 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 12:09:51 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 12:09:54 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 12:10:04 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 12:10:06 GMT
CMD ["node"]
# Sat, 29 Dec 2018 17:19:27 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 17:19:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 29 Dec 2018 17:19:45 GMT
ENV NODE_ENV=production
# Sat, 29 Dec 2018 17:19:48 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Sat, 29 Dec 2018 17:20:42 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 29 Dec 2018 17:20:46 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 29 Dec 2018 17:20:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 29 Dec 2018 17:20:52 GMT
ENV GHOST_VERSION=2.9.1
# Sat, 29 Dec 2018 17:22:59 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Sat, 29 Dec 2018 17:28:13 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 29 Dec 2018 17:28:19 GMT
WORKDIR /var/lib/ghost
# Sat, 29 Dec 2018 17:28:21 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 29 Dec 2018 17:28:24 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Sat, 29 Dec 2018 17:28:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:28:31 GMT
EXPOSE 2368
# Sat, 29 Dec 2018 17:28:34 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d4874e270588da8c76182e39e8e58854c181fdfbfab716619b6acad4d7ea0c`  
		Last Modified: Sat, 29 Dec 2018 12:15:21 GMT  
		Size: 4.2 KB (4177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9f4a6ed2d44cdcae53a6bff0b6166811bfce3f12741330f8377eca61ba1877`  
		Last Modified: Sat, 29 Dec 2018 12:15:27 GMT  
		Size: 27.0 MB (26964238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13bea5d680fac40885ade9d7e8fe6d98f40c2b5834542fc0ed27adf448d50406`  
		Last Modified: Sat, 29 Dec 2018 12:15:22 GMT  
		Size: 1.3 MB (1318210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1e85b915c64aa3ca8780451245d2c88606973aa4dad1130902be5c09a3f05b`  
		Last Modified: Sat, 29 Dec 2018 17:36:24 GMT  
		Size: 470.1 KB (470077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cfd7e684d5b0c0e736b1d32ea48a02d2890cf3f1e91ddc11a37031ae8f83e3d`  
		Last Modified: Sat, 29 Dec 2018 17:37:01 GMT  
		Size: 17.2 MB (17197317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e7b944c43436b0d99b5517202718024f19c92d2fc9bd554a63eae18ce6b7a9`  
		Last Modified: Sat, 29 Dec 2018 17:38:05 GMT  
		Size: 99.7 MB (99745602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293aa491bfc3fd01f7ee79781188ef29e081ba03b1c8eaac1589ee13bc2b1892`  
		Last Modified: Sat, 29 Dec 2018 17:38:10 GMT  
		Size: 119.4 MB (119426976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a49fe23bba9116a026f043ac0e7319cbb3bc6154c9d869a6e862b27e3e67d8d`  
		Last Modified: Sat, 29 Dec 2018 17:36:24 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; s390x

```console
$ docker pull ghost@sha256:cc4174a9e5b1b7b8dc76824aa7774de65d8cc36a3c4277911b049e91df9dd946
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.3 MB (288347204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b82e5cdbda09e88945fea75d20f7e122622a3ebf25665d7bb48ea99c755f5c8c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:39:43 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 27 Dec 2018 13:05:49 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 13:06:10 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 27 Dec 2018 13:06:11 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 13:06:15 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 27 Dec 2018 13:06:15 GMT
CMD ["node"]
# Thu, 27 Dec 2018 13:51:51 GMT
ENV GOSU_VERSION=1.10
# Thu, 27 Dec 2018 13:51:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 27 Dec 2018 13:51:55 GMT
ENV NODE_ENV=production
# Thu, 27 Dec 2018 13:51:55 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 13:52:10 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 13:52:11 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 13:52:11 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 13:52:11 GMT
ENV GHOST_VERSION=2.9.1
# Thu, 27 Dec 2018 13:52:35 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 27 Dec 2018 13:54:17 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 27 Dec 2018 13:54:19 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 13:54:19 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 13:54:19 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 27 Dec 2018 13:54:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 13:54:20 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 13:54:20 GMT
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
	-	`sha256:ffa67e6f86f2a9a0de4bf3c649a86143b0fbdb39862945123798af4098e31053`  
		Last Modified: Thu, 27 Dec 2018 13:34:47 GMT  
		Size: 27.9 MB (27860339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7335cea647fbe88990ffd862ef80071958c5d406d3dc5eba1d84538218b4abb`  
		Last Modified: Thu, 27 Dec 2018 13:34:42 GMT  
		Size: 1.3 MB (1318193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a2ad31a8e5213f84bd039e26bcff4e77dccfa682de4f257362117c6ff01dc90`  
		Last Modified: Thu, 27 Dec 2018 13:57:10 GMT  
		Size: 487.0 KB (487040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561aa77eae029aa9da9b40a69a398913fd4228077c5ce5de66d76f9872c88eb3`  
		Last Modified: Thu, 27 Dec 2018 13:57:14 GMT  
		Size: 17.2 MB (17188001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb39d90e191354bad12331f4b3b59660ff29bce5b2071a59c13de24922a2b2c`  
		Last Modified: Thu, 27 Dec 2018 13:57:27 GMT  
		Size: 99.7 MB (99742408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2aa1a7adb76d4d6360a37fc6ccffb701eef7b2547a8c1875fd611d8684a995b`  
		Last Modified: Thu, 27 Dec 2018 13:57:30 GMT  
		Size: 119.4 MB (119411802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42067c392b6b88ee4577780038f0bc5da682194678cd2011fcac0882a87a603`  
		Last Modified: Thu, 27 Dec 2018 13:57:10 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.9`

```console
$ docker pull ghost@sha256:1865252c8acea9ec2368d1e1ee90cdc313614b28f0c66c023f660c24618bc126
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:2.9` - linux; amd64

```console
$ docker pull ghost@sha256:c7eef0b7919d5336b981cad58ff24ea49db951ca4a57c02308cfc773c6438206
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299070156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53a6a1e4afc0bfabceaf5b3d3a41f3ecf42ba2be0de5e6037cae68bb4af5d9c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:39:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 03:39:05 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 03:39:22 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 03:39:22 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 03:39:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 03:39:26 GMT
CMD ["node"]
# Sat, 29 Dec 2018 12:53:32 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 12:53:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 29 Dec 2018 12:53:37 GMT
ENV NODE_ENV=production
# Sat, 29 Dec 2018 12:53:37 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Sat, 29 Dec 2018 12:54:08 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 29 Dec 2018 12:54:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 29 Dec 2018 12:54:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 29 Dec 2018 12:54:10 GMT
ENV GHOST_VERSION=2.9.1
# Sat, 29 Dec 2018 12:55:26 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Sat, 29 Dec 2018 12:56:42 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 29 Dec 2018 12:56:44 GMT
WORKDIR /var/lib/ghost
# Sat, 29 Dec 2018 12:56:45 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 29 Dec 2018 12:56:45 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Sat, 29 Dec 2018 12:56:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 12:56:46 GMT
EXPOSE 2368
# Sat, 29 Dec 2018 12:56:47 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:604501ee7a0d3f42660098f7202c5d216210983bed82ae753be16558e2e8bf6e`  
		Last Modified: Sat, 29 Dec 2018 03:50:38 GMT  
		Size: 4.1 KB (4149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0e991e8d451d9ea6532cd01b681c678722f34ab3e107161d412f2cfb425313`  
		Last Modified: Sat, 29 Dec 2018 03:50:45 GMT  
		Size: 28.0 MB (28018658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada960f0a400d19b3322e0a6a13af27edc8aa3a56c0e9be7d36b598c9ae65866`  
		Last Modified: Sat, 29 Dec 2018 03:50:39 GMT  
		Size: 1.3 MB (1318192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e956782ba2c25ae089483f96f3f15bc79a1c517c9717a5abb0893acf34dd996`  
		Last Modified: Sat, 29 Dec 2018 12:59:54 GMT  
		Size: 500.9 KB (500917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54512d80554351cdcfb4fcd45b15421997933dfc7ba96d97f62ac82a2059e94`  
		Last Modified: Sat, 29 Dec 2018 13:00:13 GMT  
		Size: 17.2 MB (17196858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88194288c5b57f5cc16d5af69af8981dfe95c668cc8aee091a62f459a03aa78`  
		Last Modified: Sat, 29 Dec 2018 13:00:56 GMT  
		Size: 125.1 MB (125141116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba5720c4b679d17004441991d566e133827ee66424e447445249a07e47ff9c1`  
		Last Modified: Sat, 29 Dec 2018 13:00:33 GMT  
		Size: 104.4 MB (104396793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6247b0eeca8377228a36223e3af0ab541efef955b7a883ede6a02d758a64b5b3`  
		Last Modified: Sat, 29 Dec 2018 12:59:54 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.9` - linux; arm variant v7

```console
$ docker pull ghost@sha256:29e9aab2351013e74b13f7b8a76cf67706bc452dae92a0f44faff419dba76794
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.6 MB (296611691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e28df600fa7cd51df63c8de301afe56d830a5befc121822ee08cc573f5cea62`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:54:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 27 Dec 2018 12:59:58 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 13:00:57 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 27 Dec 2018 13:00:57 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 13:01:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 27 Dec 2018 13:01:03 GMT
CMD ["node"]
# Thu, 27 Dec 2018 13:29:44 GMT
ENV GOSU_VERSION=1.10
# Thu, 27 Dec 2018 13:29:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 27 Dec 2018 13:29:49 GMT
ENV NODE_ENV=production
# Thu, 27 Dec 2018 13:29:49 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 13:30:27 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 13:30:29 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 13:30:30 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 13:30:30 GMT
ENV GHOST_VERSION=2.9.1
# Thu, 27 Dec 2018 13:32:08 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 27 Dec 2018 13:36:26 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 27 Dec 2018 13:36:31 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 13:36:31 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 13:36:32 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 27 Dec 2018 13:36:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 13:36:32 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 13:36:33 GMT
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
	-	`sha256:1073f47161d7cf09b47970f54a05030f88aceb41bf5f2501d173ec102d593dc2`  
		Last Modified: Thu, 27 Dec 2018 13:10:21 GMT  
		Size: 25.5 MB (25468465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ec3ccb7c505ea7caa59e73d4f4f35ea0749d14ea5a3f36458eae409f9bca0c`  
		Last Modified: Thu, 27 Dec 2018 13:10:13 GMT  
		Size: 1.3 MB (1318235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91953b777f7b7d69d1ecc74457d8e4762ee7d8dfec084e580a71af3bfc4e84b2`  
		Last Modified: Thu, 27 Dec 2018 13:42:41 GMT  
		Size: 475.4 KB (475435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a4241c7c3fd1179499d2f2039d5d57b97da604263561d93fd0c1d66593a839`  
		Last Modified: Thu, 27 Dec 2018 13:42:51 GMT  
		Size: 17.2 MB (17194740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5700558e37c35b15d5bc8bd73114a7599ca5f3a6ae8de39cbca2164dc9c26087`  
		Last Modified: Thu, 27 Dec 2018 13:43:24 GMT  
		Size: 106.6 MB (106638499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c50358fd223d4d98b71f4309362de1e9a515d965cc8f13b58d4544cb0aa2a61`  
		Last Modified: Thu, 27 Dec 2018 13:43:30 GMT  
		Size: 126.2 MB (126241532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e755898497d1d1adabb56092d2adc0c946ef7fd33629e5949b479a350c30cb83`  
		Last Modified: Thu, 27 Dec 2018 13:42:41 GMT  
		Size: 561.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.9` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:829b4845ca9ea67c83e96e02fc4eb977abb38671c24b43c48d63e635d118d3c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.6 MB (297578734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c4f3efa26ad191ef8969d73c63977648804a22f9d0d7648fedbdb176723d571`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 03:05:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 27 Dec 2018 10:07:13 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 10:08:15 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 27 Dec 2018 10:08:16 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 10:08:24 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 27 Dec 2018 10:08:25 GMT
CMD ["node"]
# Thu, 27 Dec 2018 11:38:26 GMT
ENV GOSU_VERSION=1.10
# Thu, 27 Dec 2018 11:38:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 27 Dec 2018 11:38:34 GMT
ENV NODE_ENV=production
# Thu, 27 Dec 2018 11:38:34 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 11:39:11 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 11:39:13 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 11:39:14 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 11:39:14 GMT
ENV GHOST_VERSION=2.9.1
# Thu, 27 Dec 2018 11:40:39 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 27 Dec 2018 11:46:05 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 27 Dec 2018 11:46:09 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 11:46:10 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 11:46:10 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 27 Dec 2018 11:46:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 11:46:11 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 11:46:12 GMT
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
	-	`sha256:0755c9e8b0b71c78aba689bd3cdcbc7762f46e5463b72bde09a69b4e56426d4d`  
		Last Modified: Thu, 27 Dec 2018 11:19:46 GMT  
		Size: 26.7 MB (26700724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64529d3a0f09a51575a77a56517a2bdf663b4414c972f64c9ba0e06049d2d62e`  
		Last Modified: Thu, 27 Dec 2018 11:19:36 GMT  
		Size: 1.3 MB (1318207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fabda61b3b7fe02e0d30f15ebcc7f1b06b3ff8827afb302bf0a97036f497549`  
		Last Modified: Thu, 27 Dec 2018 11:54:07 GMT  
		Size: 468.9 KB (468937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f489fae8bc8306344f0e09911341bc10bcaa0d55d3dae6157f92a72d8fb2ab`  
		Last Modified: Thu, 27 Dec 2018 11:54:16 GMT  
		Size: 17.2 MB (17196072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ea0191cd920510525e16043c59ab29c34c395cc0c96dc02e3a3946ace3f6ca`  
		Last Modified: Thu, 27 Dec 2018 11:54:51 GMT  
		Size: 105.7 MB (105715267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ee00f19cc379828100c7c9b8e940530e609b16d8fa4ba20c1acd13b8bdc03c`  
		Last Modified: Thu, 27 Dec 2018 11:54:59 GMT  
		Size: 125.8 MB (125843494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39f3a0e6b1cd7560c76eea4b56fd4256f80b7be6acf3274c47ef0c46a707220`  
		Last Modified: Thu, 27 Dec 2018 11:54:06 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.9` - linux; 386

```console
$ docker pull ghost@sha256:7ecab6538fd3f54ac8482122e1d19d3d91655d3dd3b22ba092fb3d7ed3a1b805
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.0 MB (288996832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a16577397b5d27b6492f73fdeb19582e35d1b46a2934408cebf54531a3b8687`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Tue, 27 Nov 2018 14:20:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 27 Dec 2018 12:01:59 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 12:02:22 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 27 Dec 2018 12:02:23 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 12:02:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 27 Dec 2018 12:02:27 GMT
CMD ["node"]
# Thu, 27 Dec 2018 13:13:11 GMT
ENV GOSU_VERSION=1.10
# Thu, 27 Dec 2018 13:13:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 27 Dec 2018 13:13:16 GMT
ENV NODE_ENV=production
# Thu, 27 Dec 2018 13:13:16 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 13:13:35 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 13:13:36 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 13:13:36 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 13:13:36 GMT
ENV GHOST_VERSION=2.9.1
# Thu, 27 Dec 2018 13:14:17 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 27 Dec 2018 13:16:23 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 27 Dec 2018 13:16:25 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 13:16:25 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 13:16:25 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 27 Dec 2018 13:16:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 13:16:25 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 13:16:26 GMT
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
	-	`sha256:cd2be92da289c6a7146a129dd797865fcc4486ab275febdeee242dd5f93eba09`  
		Last Modified: Thu, 27 Dec 2018 12:56:20 GMT  
		Size: 27.8 MB (27846046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ba8327e64a8e6c4cb29e1d224d002137f775e6fa051f000532ebb30fc50697`  
		Last Modified: Thu, 27 Dec 2018 12:56:13 GMT  
		Size: 1.3 MB (1318187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1778291ff553608714f94bd8d95aad94fa9cdc661cca75c334cf122f1528e9e7`  
		Last Modified: Thu, 27 Dec 2018 13:19:44 GMT  
		Size: 480.8 KB (480830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:610b5061cfbad8f59b81d9f157faf4e7f4ec291affb0284cb9b4328d5aed134a`  
		Last Modified: Thu, 27 Dec 2018 13:19:52 GMT  
		Size: 17.2 MB (17190252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca4a2e9469e2f911076c5b8a8ecc14400f2adb0e34f174babcb2c0d74b1038e`  
		Last Modified: Thu, 27 Dec 2018 13:20:17 GMT  
		Size: 99.7 MB (99744206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:267bb39112c1c40e8482c04c5283afd742b374c06a4d535d1e52ab5674d10aad`  
		Last Modified: Thu, 27 Dec 2018 13:20:22 GMT  
		Size: 119.3 MB (119285842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b4a8750b60317002e04296af5e7ec93be172d0c5d4101f47155bacb8d05d78`  
		Last Modified: Thu, 27 Dec 2018 13:19:44 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.9` - linux; ppc64le

```console
$ docker pull ghost@sha256:af1566a50896f713abec5e2df8ec2b9f806be16b0aaf14cce9cbb2a1a70abe00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.9 MB (287873981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2662789356a81bc3dacd933abd25a16627ac90e1d765f0d724493847883c89ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:08:39 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 12:08:41 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 12:09:51 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 12:09:54 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 12:10:04 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 12:10:06 GMT
CMD ["node"]
# Sat, 29 Dec 2018 17:19:27 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 17:19:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 29 Dec 2018 17:19:45 GMT
ENV NODE_ENV=production
# Sat, 29 Dec 2018 17:19:48 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Sat, 29 Dec 2018 17:20:42 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 29 Dec 2018 17:20:46 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 29 Dec 2018 17:20:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 29 Dec 2018 17:20:52 GMT
ENV GHOST_VERSION=2.9.1
# Sat, 29 Dec 2018 17:22:59 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Sat, 29 Dec 2018 17:28:13 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 29 Dec 2018 17:28:19 GMT
WORKDIR /var/lib/ghost
# Sat, 29 Dec 2018 17:28:21 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 29 Dec 2018 17:28:24 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Sat, 29 Dec 2018 17:28:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:28:31 GMT
EXPOSE 2368
# Sat, 29 Dec 2018 17:28:34 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d4874e270588da8c76182e39e8e58854c181fdfbfab716619b6acad4d7ea0c`  
		Last Modified: Sat, 29 Dec 2018 12:15:21 GMT  
		Size: 4.2 KB (4177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9f4a6ed2d44cdcae53a6bff0b6166811bfce3f12741330f8377eca61ba1877`  
		Last Modified: Sat, 29 Dec 2018 12:15:27 GMT  
		Size: 27.0 MB (26964238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13bea5d680fac40885ade9d7e8fe6d98f40c2b5834542fc0ed27adf448d50406`  
		Last Modified: Sat, 29 Dec 2018 12:15:22 GMT  
		Size: 1.3 MB (1318210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1e85b915c64aa3ca8780451245d2c88606973aa4dad1130902be5c09a3f05b`  
		Last Modified: Sat, 29 Dec 2018 17:36:24 GMT  
		Size: 470.1 KB (470077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cfd7e684d5b0c0e736b1d32ea48a02d2890cf3f1e91ddc11a37031ae8f83e3d`  
		Last Modified: Sat, 29 Dec 2018 17:37:01 GMT  
		Size: 17.2 MB (17197317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e7b944c43436b0d99b5517202718024f19c92d2fc9bd554a63eae18ce6b7a9`  
		Last Modified: Sat, 29 Dec 2018 17:38:05 GMT  
		Size: 99.7 MB (99745602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293aa491bfc3fd01f7ee79781188ef29e081ba03b1c8eaac1589ee13bc2b1892`  
		Last Modified: Sat, 29 Dec 2018 17:38:10 GMT  
		Size: 119.4 MB (119426976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a49fe23bba9116a026f043ac0e7319cbb3bc6154c9d869a6e862b27e3e67d8d`  
		Last Modified: Sat, 29 Dec 2018 17:36:24 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.9` - linux; s390x

```console
$ docker pull ghost@sha256:cc4174a9e5b1b7b8dc76824aa7774de65d8cc36a3c4277911b049e91df9dd946
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.3 MB (288347204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b82e5cdbda09e88945fea75d20f7e122622a3ebf25665d7bb48ea99c755f5c8c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:39:43 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 27 Dec 2018 13:05:49 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 13:06:10 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 27 Dec 2018 13:06:11 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 13:06:15 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 27 Dec 2018 13:06:15 GMT
CMD ["node"]
# Thu, 27 Dec 2018 13:51:51 GMT
ENV GOSU_VERSION=1.10
# Thu, 27 Dec 2018 13:51:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 27 Dec 2018 13:51:55 GMT
ENV NODE_ENV=production
# Thu, 27 Dec 2018 13:51:55 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 13:52:10 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 13:52:11 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 13:52:11 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 13:52:11 GMT
ENV GHOST_VERSION=2.9.1
# Thu, 27 Dec 2018 13:52:35 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 27 Dec 2018 13:54:17 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 27 Dec 2018 13:54:19 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 13:54:19 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 13:54:19 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 27 Dec 2018 13:54:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 13:54:20 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 13:54:20 GMT
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
	-	`sha256:ffa67e6f86f2a9a0de4bf3c649a86143b0fbdb39862945123798af4098e31053`  
		Last Modified: Thu, 27 Dec 2018 13:34:47 GMT  
		Size: 27.9 MB (27860339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7335cea647fbe88990ffd862ef80071958c5d406d3dc5eba1d84538218b4abb`  
		Last Modified: Thu, 27 Dec 2018 13:34:42 GMT  
		Size: 1.3 MB (1318193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a2ad31a8e5213f84bd039e26bcff4e77dccfa682de4f257362117c6ff01dc90`  
		Last Modified: Thu, 27 Dec 2018 13:57:10 GMT  
		Size: 487.0 KB (487040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561aa77eae029aa9da9b40a69a398913fd4228077c5ce5de66d76f9872c88eb3`  
		Last Modified: Thu, 27 Dec 2018 13:57:14 GMT  
		Size: 17.2 MB (17188001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb39d90e191354bad12331f4b3b59660ff29bce5b2071a59c13de24922a2b2c`  
		Last Modified: Thu, 27 Dec 2018 13:57:27 GMT  
		Size: 99.7 MB (99742408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2aa1a7adb76d4d6360a37fc6ccffb701eef7b2547a8c1875fd611d8684a995b`  
		Last Modified: Thu, 27 Dec 2018 13:57:30 GMT  
		Size: 119.4 MB (119411802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42067c392b6b88ee4577780038f0bc5da682194678cd2011fcac0882a87a603`  
		Last Modified: Thu, 27 Dec 2018 13:57:10 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.9.1`

```console
$ docker pull ghost@sha256:1865252c8acea9ec2368d1e1ee90cdc313614b28f0c66c023f660c24618bc126
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:2.9.1` - linux; amd64

```console
$ docker pull ghost@sha256:c7eef0b7919d5336b981cad58ff24ea49db951ca4a57c02308cfc773c6438206
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299070156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53a6a1e4afc0bfabceaf5b3d3a41f3ecf42ba2be0de5e6037cae68bb4af5d9c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:39:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 03:39:05 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 03:39:22 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 03:39:22 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 03:39:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 03:39:26 GMT
CMD ["node"]
# Sat, 29 Dec 2018 12:53:32 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 12:53:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 29 Dec 2018 12:53:37 GMT
ENV NODE_ENV=production
# Sat, 29 Dec 2018 12:53:37 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Sat, 29 Dec 2018 12:54:08 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 29 Dec 2018 12:54:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 29 Dec 2018 12:54:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 29 Dec 2018 12:54:10 GMT
ENV GHOST_VERSION=2.9.1
# Sat, 29 Dec 2018 12:55:26 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Sat, 29 Dec 2018 12:56:42 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 29 Dec 2018 12:56:44 GMT
WORKDIR /var/lib/ghost
# Sat, 29 Dec 2018 12:56:45 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 29 Dec 2018 12:56:45 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Sat, 29 Dec 2018 12:56:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 12:56:46 GMT
EXPOSE 2368
# Sat, 29 Dec 2018 12:56:47 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:604501ee7a0d3f42660098f7202c5d216210983bed82ae753be16558e2e8bf6e`  
		Last Modified: Sat, 29 Dec 2018 03:50:38 GMT  
		Size: 4.1 KB (4149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0e991e8d451d9ea6532cd01b681c678722f34ab3e107161d412f2cfb425313`  
		Last Modified: Sat, 29 Dec 2018 03:50:45 GMT  
		Size: 28.0 MB (28018658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada960f0a400d19b3322e0a6a13af27edc8aa3a56c0e9be7d36b598c9ae65866`  
		Last Modified: Sat, 29 Dec 2018 03:50:39 GMT  
		Size: 1.3 MB (1318192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e956782ba2c25ae089483f96f3f15bc79a1c517c9717a5abb0893acf34dd996`  
		Last Modified: Sat, 29 Dec 2018 12:59:54 GMT  
		Size: 500.9 KB (500917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54512d80554351cdcfb4fcd45b15421997933dfc7ba96d97f62ac82a2059e94`  
		Last Modified: Sat, 29 Dec 2018 13:00:13 GMT  
		Size: 17.2 MB (17196858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88194288c5b57f5cc16d5af69af8981dfe95c668cc8aee091a62f459a03aa78`  
		Last Modified: Sat, 29 Dec 2018 13:00:56 GMT  
		Size: 125.1 MB (125141116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba5720c4b679d17004441991d566e133827ee66424e447445249a07e47ff9c1`  
		Last Modified: Sat, 29 Dec 2018 13:00:33 GMT  
		Size: 104.4 MB (104396793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6247b0eeca8377228a36223e3af0ab541efef955b7a883ede6a02d758a64b5b3`  
		Last Modified: Sat, 29 Dec 2018 12:59:54 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.9.1` - linux; arm variant v7

```console
$ docker pull ghost@sha256:29e9aab2351013e74b13f7b8a76cf67706bc452dae92a0f44faff419dba76794
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.6 MB (296611691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e28df600fa7cd51df63c8de301afe56d830a5befc121822ee08cc573f5cea62`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:54:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 27 Dec 2018 12:59:58 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 13:00:57 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 27 Dec 2018 13:00:57 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 13:01:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 27 Dec 2018 13:01:03 GMT
CMD ["node"]
# Thu, 27 Dec 2018 13:29:44 GMT
ENV GOSU_VERSION=1.10
# Thu, 27 Dec 2018 13:29:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 27 Dec 2018 13:29:49 GMT
ENV NODE_ENV=production
# Thu, 27 Dec 2018 13:29:49 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 13:30:27 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 13:30:29 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 13:30:30 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 13:30:30 GMT
ENV GHOST_VERSION=2.9.1
# Thu, 27 Dec 2018 13:32:08 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 27 Dec 2018 13:36:26 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 27 Dec 2018 13:36:31 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 13:36:31 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 13:36:32 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 27 Dec 2018 13:36:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 13:36:32 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 13:36:33 GMT
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
	-	`sha256:1073f47161d7cf09b47970f54a05030f88aceb41bf5f2501d173ec102d593dc2`  
		Last Modified: Thu, 27 Dec 2018 13:10:21 GMT  
		Size: 25.5 MB (25468465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ec3ccb7c505ea7caa59e73d4f4f35ea0749d14ea5a3f36458eae409f9bca0c`  
		Last Modified: Thu, 27 Dec 2018 13:10:13 GMT  
		Size: 1.3 MB (1318235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91953b777f7b7d69d1ecc74457d8e4762ee7d8dfec084e580a71af3bfc4e84b2`  
		Last Modified: Thu, 27 Dec 2018 13:42:41 GMT  
		Size: 475.4 KB (475435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a4241c7c3fd1179499d2f2039d5d57b97da604263561d93fd0c1d66593a839`  
		Last Modified: Thu, 27 Dec 2018 13:42:51 GMT  
		Size: 17.2 MB (17194740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5700558e37c35b15d5bc8bd73114a7599ca5f3a6ae8de39cbca2164dc9c26087`  
		Last Modified: Thu, 27 Dec 2018 13:43:24 GMT  
		Size: 106.6 MB (106638499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c50358fd223d4d98b71f4309362de1e9a515d965cc8f13b58d4544cb0aa2a61`  
		Last Modified: Thu, 27 Dec 2018 13:43:30 GMT  
		Size: 126.2 MB (126241532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e755898497d1d1adabb56092d2adc0c946ef7fd33629e5949b479a350c30cb83`  
		Last Modified: Thu, 27 Dec 2018 13:42:41 GMT  
		Size: 561.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.9.1` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:829b4845ca9ea67c83e96e02fc4eb977abb38671c24b43c48d63e635d118d3c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.6 MB (297578734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c4f3efa26ad191ef8969d73c63977648804a22f9d0d7648fedbdb176723d571`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 03:05:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 27 Dec 2018 10:07:13 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 10:08:15 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 27 Dec 2018 10:08:16 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 10:08:24 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 27 Dec 2018 10:08:25 GMT
CMD ["node"]
# Thu, 27 Dec 2018 11:38:26 GMT
ENV GOSU_VERSION=1.10
# Thu, 27 Dec 2018 11:38:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 27 Dec 2018 11:38:34 GMT
ENV NODE_ENV=production
# Thu, 27 Dec 2018 11:38:34 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 11:39:11 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 11:39:13 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 11:39:14 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 11:39:14 GMT
ENV GHOST_VERSION=2.9.1
# Thu, 27 Dec 2018 11:40:39 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 27 Dec 2018 11:46:05 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 27 Dec 2018 11:46:09 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 11:46:10 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 11:46:10 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 27 Dec 2018 11:46:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 11:46:11 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 11:46:12 GMT
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
	-	`sha256:0755c9e8b0b71c78aba689bd3cdcbc7762f46e5463b72bde09a69b4e56426d4d`  
		Last Modified: Thu, 27 Dec 2018 11:19:46 GMT  
		Size: 26.7 MB (26700724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64529d3a0f09a51575a77a56517a2bdf663b4414c972f64c9ba0e06049d2d62e`  
		Last Modified: Thu, 27 Dec 2018 11:19:36 GMT  
		Size: 1.3 MB (1318207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fabda61b3b7fe02e0d30f15ebcc7f1b06b3ff8827afb302bf0a97036f497549`  
		Last Modified: Thu, 27 Dec 2018 11:54:07 GMT  
		Size: 468.9 KB (468937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f489fae8bc8306344f0e09911341bc10bcaa0d55d3dae6157f92a72d8fb2ab`  
		Last Modified: Thu, 27 Dec 2018 11:54:16 GMT  
		Size: 17.2 MB (17196072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ea0191cd920510525e16043c59ab29c34c395cc0c96dc02e3a3946ace3f6ca`  
		Last Modified: Thu, 27 Dec 2018 11:54:51 GMT  
		Size: 105.7 MB (105715267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ee00f19cc379828100c7c9b8e940530e609b16d8fa4ba20c1acd13b8bdc03c`  
		Last Modified: Thu, 27 Dec 2018 11:54:59 GMT  
		Size: 125.8 MB (125843494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39f3a0e6b1cd7560c76eea4b56fd4256f80b7be6acf3274c47ef0c46a707220`  
		Last Modified: Thu, 27 Dec 2018 11:54:06 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.9.1` - linux; 386

```console
$ docker pull ghost@sha256:7ecab6538fd3f54ac8482122e1d19d3d91655d3dd3b22ba092fb3d7ed3a1b805
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.0 MB (288996832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a16577397b5d27b6492f73fdeb19582e35d1b46a2934408cebf54531a3b8687`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Tue, 27 Nov 2018 14:20:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 27 Dec 2018 12:01:59 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 12:02:22 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 27 Dec 2018 12:02:23 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 12:02:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 27 Dec 2018 12:02:27 GMT
CMD ["node"]
# Thu, 27 Dec 2018 13:13:11 GMT
ENV GOSU_VERSION=1.10
# Thu, 27 Dec 2018 13:13:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 27 Dec 2018 13:13:16 GMT
ENV NODE_ENV=production
# Thu, 27 Dec 2018 13:13:16 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 13:13:35 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 13:13:36 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 13:13:36 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 13:13:36 GMT
ENV GHOST_VERSION=2.9.1
# Thu, 27 Dec 2018 13:14:17 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 27 Dec 2018 13:16:23 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 27 Dec 2018 13:16:25 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 13:16:25 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 13:16:25 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 27 Dec 2018 13:16:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 13:16:25 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 13:16:26 GMT
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
	-	`sha256:cd2be92da289c6a7146a129dd797865fcc4486ab275febdeee242dd5f93eba09`  
		Last Modified: Thu, 27 Dec 2018 12:56:20 GMT  
		Size: 27.8 MB (27846046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ba8327e64a8e6c4cb29e1d224d002137f775e6fa051f000532ebb30fc50697`  
		Last Modified: Thu, 27 Dec 2018 12:56:13 GMT  
		Size: 1.3 MB (1318187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1778291ff553608714f94bd8d95aad94fa9cdc661cca75c334cf122f1528e9e7`  
		Last Modified: Thu, 27 Dec 2018 13:19:44 GMT  
		Size: 480.8 KB (480830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:610b5061cfbad8f59b81d9f157faf4e7f4ec291affb0284cb9b4328d5aed134a`  
		Last Modified: Thu, 27 Dec 2018 13:19:52 GMT  
		Size: 17.2 MB (17190252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca4a2e9469e2f911076c5b8a8ecc14400f2adb0e34f174babcb2c0d74b1038e`  
		Last Modified: Thu, 27 Dec 2018 13:20:17 GMT  
		Size: 99.7 MB (99744206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:267bb39112c1c40e8482c04c5283afd742b374c06a4d535d1e52ab5674d10aad`  
		Last Modified: Thu, 27 Dec 2018 13:20:22 GMT  
		Size: 119.3 MB (119285842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b4a8750b60317002e04296af5e7ec93be172d0c5d4101f47155bacb8d05d78`  
		Last Modified: Thu, 27 Dec 2018 13:19:44 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.9.1` - linux; ppc64le

```console
$ docker pull ghost@sha256:af1566a50896f713abec5e2df8ec2b9f806be16b0aaf14cce9cbb2a1a70abe00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.9 MB (287873981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2662789356a81bc3dacd933abd25a16627ac90e1d765f0d724493847883c89ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:08:39 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 12:08:41 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 12:09:51 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 12:09:54 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 12:10:04 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 12:10:06 GMT
CMD ["node"]
# Sat, 29 Dec 2018 17:19:27 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 17:19:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 29 Dec 2018 17:19:45 GMT
ENV NODE_ENV=production
# Sat, 29 Dec 2018 17:19:48 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Sat, 29 Dec 2018 17:20:42 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 29 Dec 2018 17:20:46 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 29 Dec 2018 17:20:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 29 Dec 2018 17:20:52 GMT
ENV GHOST_VERSION=2.9.1
# Sat, 29 Dec 2018 17:22:59 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Sat, 29 Dec 2018 17:28:13 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 29 Dec 2018 17:28:19 GMT
WORKDIR /var/lib/ghost
# Sat, 29 Dec 2018 17:28:21 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 29 Dec 2018 17:28:24 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Sat, 29 Dec 2018 17:28:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:28:31 GMT
EXPOSE 2368
# Sat, 29 Dec 2018 17:28:34 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d4874e270588da8c76182e39e8e58854c181fdfbfab716619b6acad4d7ea0c`  
		Last Modified: Sat, 29 Dec 2018 12:15:21 GMT  
		Size: 4.2 KB (4177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9f4a6ed2d44cdcae53a6bff0b6166811bfce3f12741330f8377eca61ba1877`  
		Last Modified: Sat, 29 Dec 2018 12:15:27 GMT  
		Size: 27.0 MB (26964238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13bea5d680fac40885ade9d7e8fe6d98f40c2b5834542fc0ed27adf448d50406`  
		Last Modified: Sat, 29 Dec 2018 12:15:22 GMT  
		Size: 1.3 MB (1318210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1e85b915c64aa3ca8780451245d2c88606973aa4dad1130902be5c09a3f05b`  
		Last Modified: Sat, 29 Dec 2018 17:36:24 GMT  
		Size: 470.1 KB (470077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cfd7e684d5b0c0e736b1d32ea48a02d2890cf3f1e91ddc11a37031ae8f83e3d`  
		Last Modified: Sat, 29 Dec 2018 17:37:01 GMT  
		Size: 17.2 MB (17197317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e7b944c43436b0d99b5517202718024f19c92d2fc9bd554a63eae18ce6b7a9`  
		Last Modified: Sat, 29 Dec 2018 17:38:05 GMT  
		Size: 99.7 MB (99745602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293aa491bfc3fd01f7ee79781188ef29e081ba03b1c8eaac1589ee13bc2b1892`  
		Last Modified: Sat, 29 Dec 2018 17:38:10 GMT  
		Size: 119.4 MB (119426976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a49fe23bba9116a026f043ac0e7319cbb3bc6154c9d869a6e862b27e3e67d8d`  
		Last Modified: Sat, 29 Dec 2018 17:36:24 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.9.1` - linux; s390x

```console
$ docker pull ghost@sha256:cc4174a9e5b1b7b8dc76824aa7774de65d8cc36a3c4277911b049e91df9dd946
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.3 MB (288347204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b82e5cdbda09e88945fea75d20f7e122622a3ebf25665d7bb48ea99c755f5c8c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:39:43 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 27 Dec 2018 13:05:49 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 13:06:10 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 27 Dec 2018 13:06:11 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 13:06:15 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 27 Dec 2018 13:06:15 GMT
CMD ["node"]
# Thu, 27 Dec 2018 13:51:51 GMT
ENV GOSU_VERSION=1.10
# Thu, 27 Dec 2018 13:51:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 27 Dec 2018 13:51:55 GMT
ENV NODE_ENV=production
# Thu, 27 Dec 2018 13:51:55 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 13:52:10 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 13:52:11 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 13:52:11 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 13:52:11 GMT
ENV GHOST_VERSION=2.9.1
# Thu, 27 Dec 2018 13:52:35 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 27 Dec 2018 13:54:17 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 27 Dec 2018 13:54:19 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 13:54:19 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 13:54:19 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 27 Dec 2018 13:54:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 13:54:20 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 13:54:20 GMT
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
	-	`sha256:ffa67e6f86f2a9a0de4bf3c649a86143b0fbdb39862945123798af4098e31053`  
		Last Modified: Thu, 27 Dec 2018 13:34:47 GMT  
		Size: 27.9 MB (27860339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7335cea647fbe88990ffd862ef80071958c5d406d3dc5eba1d84538218b4abb`  
		Last Modified: Thu, 27 Dec 2018 13:34:42 GMT  
		Size: 1.3 MB (1318193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a2ad31a8e5213f84bd039e26bcff4e77dccfa682de4f257362117c6ff01dc90`  
		Last Modified: Thu, 27 Dec 2018 13:57:10 GMT  
		Size: 487.0 KB (487040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561aa77eae029aa9da9b40a69a398913fd4228077c5ce5de66d76f9872c88eb3`  
		Last Modified: Thu, 27 Dec 2018 13:57:14 GMT  
		Size: 17.2 MB (17188001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb39d90e191354bad12331f4b3b59660ff29bce5b2071a59c13de24922a2b2c`  
		Last Modified: Thu, 27 Dec 2018 13:57:27 GMT  
		Size: 99.7 MB (99742408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2aa1a7adb76d4d6360a37fc6ccffb701eef7b2547a8c1875fd611d8684a995b`  
		Last Modified: Thu, 27 Dec 2018 13:57:30 GMT  
		Size: 119.4 MB (119411802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42067c392b6b88ee4577780038f0bc5da682194678cd2011fcac0882a87a603`  
		Last Modified: Thu, 27 Dec 2018 13:57:10 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.9.1-alpine`

```console
$ docker pull ghost@sha256:2f53b06447d74b8ed298931dbe8a9cbbf4abb0b1888df620855599d76dd3a2f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:2.9.1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:09bb33b5059add6e630bc445ac384209b42594d3bf7b21fd816b83cc2738d517
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.8 MB (166825275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dea007897a1126bbcec70d5d831e42bfeed2be32697b8912bcca4099bdaf62fa`
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
# Thu, 27 Dec 2018 03:09:35 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 03:09:54 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 03:09:54 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 03:09:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 03:09:54 GMT
ENV GHOST_VERSION=2.9.1
# Thu, 27 Dec 2018 03:10:33 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 27 Dec 2018 03:10:34 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 03:10:34 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 03:10:35 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Thu, 27 Dec 2018 03:10:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 03:10:35 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 03:10:35 GMT
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
	-	`sha256:40e9de1b77796697c3fee0b698f09ffae0d2aaee301a7cd52f307aa822e0e815`  
		Last Modified: Thu, 27 Dec 2018 03:13:36 GMT  
		Size: 17.2 MB (17189369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a033f0a00052f1799ef25055022d30f56645e142d2f92f05c764771debd2bd`  
		Last Modified: Thu, 27 Dec 2018 03:13:53 GMT  
		Size: 126.0 MB (126049607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc15a6c28f5b311b8a4914e99650a9b9360e01c993acfbf5bb1d457622e2767`  
		Last Modified: Thu, 27 Dec 2018 03:13:31 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.9.1-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:f6dc00801106e5d5c9309324b743265e87343f2223e078a25ac597ec4282c33c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.4 MB (139380500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87616c1c08c2af60249a47b0af536704e6af964ae411b1f79d41f71b07935c16`
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
# Thu, 27 Dec 2018 09:20:37 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 09:21:17 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 09:21:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 09:21:19 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 09:21:19 GMT
ENV GHOST_VERSION=2.9.1
# Thu, 27 Dec 2018 09:22:55 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 27 Dec 2018 09:22:59 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 09:23:00 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 09:23:00 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Thu, 27 Dec 2018 09:23:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 09:23:01 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 09:23:01 GMT
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
	-	`sha256:4977251ac3df3cf974035f103425aa1733b1ae407a9b77b01b1273d06a4d8e8e`  
		Last Modified: Thu, 27 Dec 2018 09:25:18 GMT  
		Size: 17.2 MB (17194043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5691ee3ccae6f31c9b08bccf8dd7137d6da783d6965b5046692c13ba639513`  
		Last Modified: Thu, 27 Dec 2018 09:25:49 GMT  
		Size: 99.7 MB (99746187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:410c11310f622da513e030ec3b3e795400bfd075ea9145e5308009f7269b7dcf`  
		Last Modified: Thu, 27 Dec 2018 09:25:08 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.9.1-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:39b79b13d0fd06dc4863a329311463a2bf41b6c9253189b4efa28941d4bbfa48
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.3 MB (140301043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8936f3c687bbe98041fa309d5c19f96fbb2fab7b4e3307c7a17078df9614259`
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
# Thu, 27 Dec 2018 10:24:16 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 10:24:45 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 10:24:48 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 10:24:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 10:24:51 GMT
ENV GHOST_VERSION=2.9.1
# Thu, 27 Dec 2018 10:26:26 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 27 Dec 2018 10:26:33 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 10:26:35 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 10:26:36 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Thu, 27 Dec 2018 10:26:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 10:26:39 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 10:26:40 GMT
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
	-	`sha256:9656ab452bab69d55a53614ef852ebaadf997d2fbe225259cc1dfc0d71bc5290`  
		Last Modified: Thu, 27 Dec 2018 10:35:46 GMT  
		Size: 17.2 MB (17189852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85564d61030ceadd2030a78faf32517627865c7f75109385dcdeab930948f2b8`  
		Last Modified: Thu, 27 Dec 2018 10:36:23 GMT  
		Size: 99.7 MB (99744652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eaaa51e51285cdab308c43bddd9b98ccc02264402e9bdf4216f4bc1c2bc5182`  
		Last Modified: Thu, 27 Dec 2018 10:35:26 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.9-alpine`

```console
$ docker pull ghost@sha256:2f53b06447d74b8ed298931dbe8a9cbbf4abb0b1888df620855599d76dd3a2f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:2.9-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:09bb33b5059add6e630bc445ac384209b42594d3bf7b21fd816b83cc2738d517
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.8 MB (166825275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dea007897a1126bbcec70d5d831e42bfeed2be32697b8912bcca4099bdaf62fa`
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
# Thu, 27 Dec 2018 03:09:35 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 03:09:54 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 03:09:54 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 03:09:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 03:09:54 GMT
ENV GHOST_VERSION=2.9.1
# Thu, 27 Dec 2018 03:10:33 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 27 Dec 2018 03:10:34 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 03:10:34 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 03:10:35 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Thu, 27 Dec 2018 03:10:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 03:10:35 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 03:10:35 GMT
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
	-	`sha256:40e9de1b77796697c3fee0b698f09ffae0d2aaee301a7cd52f307aa822e0e815`  
		Last Modified: Thu, 27 Dec 2018 03:13:36 GMT  
		Size: 17.2 MB (17189369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a033f0a00052f1799ef25055022d30f56645e142d2f92f05c764771debd2bd`  
		Last Modified: Thu, 27 Dec 2018 03:13:53 GMT  
		Size: 126.0 MB (126049607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc15a6c28f5b311b8a4914e99650a9b9360e01c993acfbf5bb1d457622e2767`  
		Last Modified: Thu, 27 Dec 2018 03:13:31 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.9-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:f6dc00801106e5d5c9309324b743265e87343f2223e078a25ac597ec4282c33c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.4 MB (139380500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87616c1c08c2af60249a47b0af536704e6af964ae411b1f79d41f71b07935c16`
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
# Thu, 27 Dec 2018 09:20:37 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 09:21:17 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 09:21:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 09:21:19 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 09:21:19 GMT
ENV GHOST_VERSION=2.9.1
# Thu, 27 Dec 2018 09:22:55 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 27 Dec 2018 09:22:59 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 09:23:00 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 09:23:00 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Thu, 27 Dec 2018 09:23:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 09:23:01 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 09:23:01 GMT
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
	-	`sha256:4977251ac3df3cf974035f103425aa1733b1ae407a9b77b01b1273d06a4d8e8e`  
		Last Modified: Thu, 27 Dec 2018 09:25:18 GMT  
		Size: 17.2 MB (17194043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5691ee3ccae6f31c9b08bccf8dd7137d6da783d6965b5046692c13ba639513`  
		Last Modified: Thu, 27 Dec 2018 09:25:49 GMT  
		Size: 99.7 MB (99746187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:410c11310f622da513e030ec3b3e795400bfd075ea9145e5308009f7269b7dcf`  
		Last Modified: Thu, 27 Dec 2018 09:25:08 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.9-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:39b79b13d0fd06dc4863a329311463a2bf41b6c9253189b4efa28941d4bbfa48
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.3 MB (140301043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8936f3c687bbe98041fa309d5c19f96fbb2fab7b4e3307c7a17078df9614259`
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
# Thu, 27 Dec 2018 10:24:16 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 10:24:45 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 10:24:48 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 10:24:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 10:24:51 GMT
ENV GHOST_VERSION=2.9.1
# Thu, 27 Dec 2018 10:26:26 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 27 Dec 2018 10:26:33 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 10:26:35 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 10:26:36 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Thu, 27 Dec 2018 10:26:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 10:26:39 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 10:26:40 GMT
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
	-	`sha256:9656ab452bab69d55a53614ef852ebaadf997d2fbe225259cc1dfc0d71bc5290`  
		Last Modified: Thu, 27 Dec 2018 10:35:46 GMT  
		Size: 17.2 MB (17189852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85564d61030ceadd2030a78faf32517627865c7f75109385dcdeab930948f2b8`  
		Last Modified: Thu, 27 Dec 2018 10:36:23 GMT  
		Size: 99.7 MB (99744652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eaaa51e51285cdab308c43bddd9b98ccc02264402e9bdf4216f4bc1c2bc5182`  
		Last Modified: Thu, 27 Dec 2018 10:35:26 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2-alpine`

```console
$ docker pull ghost@sha256:2f53b06447d74b8ed298931dbe8a9cbbf4abb0b1888df620855599d76dd3a2f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:2-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:09bb33b5059add6e630bc445ac384209b42594d3bf7b21fd816b83cc2738d517
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.8 MB (166825275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dea007897a1126bbcec70d5d831e42bfeed2be32697b8912bcca4099bdaf62fa`
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
# Thu, 27 Dec 2018 03:09:35 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 03:09:54 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 03:09:54 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 03:09:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 03:09:54 GMT
ENV GHOST_VERSION=2.9.1
# Thu, 27 Dec 2018 03:10:33 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 27 Dec 2018 03:10:34 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 03:10:34 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 03:10:35 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Thu, 27 Dec 2018 03:10:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 03:10:35 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 03:10:35 GMT
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
	-	`sha256:40e9de1b77796697c3fee0b698f09ffae0d2aaee301a7cd52f307aa822e0e815`  
		Last Modified: Thu, 27 Dec 2018 03:13:36 GMT  
		Size: 17.2 MB (17189369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a033f0a00052f1799ef25055022d30f56645e142d2f92f05c764771debd2bd`  
		Last Modified: Thu, 27 Dec 2018 03:13:53 GMT  
		Size: 126.0 MB (126049607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc15a6c28f5b311b8a4914e99650a9b9360e01c993acfbf5bb1d457622e2767`  
		Last Modified: Thu, 27 Dec 2018 03:13:31 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:f6dc00801106e5d5c9309324b743265e87343f2223e078a25ac597ec4282c33c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.4 MB (139380500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87616c1c08c2af60249a47b0af536704e6af964ae411b1f79d41f71b07935c16`
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
# Thu, 27 Dec 2018 09:20:37 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 09:21:17 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 09:21:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 09:21:19 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 09:21:19 GMT
ENV GHOST_VERSION=2.9.1
# Thu, 27 Dec 2018 09:22:55 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 27 Dec 2018 09:22:59 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 09:23:00 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 09:23:00 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Thu, 27 Dec 2018 09:23:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 09:23:01 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 09:23:01 GMT
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
	-	`sha256:4977251ac3df3cf974035f103425aa1733b1ae407a9b77b01b1273d06a4d8e8e`  
		Last Modified: Thu, 27 Dec 2018 09:25:18 GMT  
		Size: 17.2 MB (17194043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5691ee3ccae6f31c9b08bccf8dd7137d6da783d6965b5046692c13ba639513`  
		Last Modified: Thu, 27 Dec 2018 09:25:49 GMT  
		Size: 99.7 MB (99746187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:410c11310f622da513e030ec3b3e795400bfd075ea9145e5308009f7269b7dcf`  
		Last Modified: Thu, 27 Dec 2018 09:25:08 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:39b79b13d0fd06dc4863a329311463a2bf41b6c9253189b4efa28941d4bbfa48
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.3 MB (140301043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8936f3c687bbe98041fa309d5c19f96fbb2fab7b4e3307c7a17078df9614259`
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
# Thu, 27 Dec 2018 10:24:16 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 10:24:45 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 10:24:48 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 10:24:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 10:24:51 GMT
ENV GHOST_VERSION=2.9.1
# Thu, 27 Dec 2018 10:26:26 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 27 Dec 2018 10:26:33 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 10:26:35 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 10:26:36 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Thu, 27 Dec 2018 10:26:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 10:26:39 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 10:26:40 GMT
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
	-	`sha256:9656ab452bab69d55a53614ef852ebaadf997d2fbe225259cc1dfc0d71bc5290`  
		Last Modified: Thu, 27 Dec 2018 10:35:46 GMT  
		Size: 17.2 MB (17189852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85564d61030ceadd2030a78faf32517627865c7f75109385dcdeab930948f2b8`  
		Last Modified: Thu, 27 Dec 2018 10:36:23 GMT  
		Size: 99.7 MB (99744652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eaaa51e51285cdab308c43bddd9b98ccc02264402e9bdf4216f4bc1c2bc5182`  
		Last Modified: Thu, 27 Dec 2018 10:35:26 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:2f53b06447d74b8ed298931dbe8a9cbbf4abb0b1888df620855599d76dd3a2f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:09bb33b5059add6e630bc445ac384209b42594d3bf7b21fd816b83cc2738d517
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.8 MB (166825275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dea007897a1126bbcec70d5d831e42bfeed2be32697b8912bcca4099bdaf62fa`
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
# Thu, 27 Dec 2018 03:09:35 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 03:09:54 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 03:09:54 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 03:09:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 03:09:54 GMT
ENV GHOST_VERSION=2.9.1
# Thu, 27 Dec 2018 03:10:33 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 27 Dec 2018 03:10:34 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 03:10:34 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 03:10:35 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Thu, 27 Dec 2018 03:10:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 03:10:35 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 03:10:35 GMT
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
	-	`sha256:40e9de1b77796697c3fee0b698f09ffae0d2aaee301a7cd52f307aa822e0e815`  
		Last Modified: Thu, 27 Dec 2018 03:13:36 GMT  
		Size: 17.2 MB (17189369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a033f0a00052f1799ef25055022d30f56645e142d2f92f05c764771debd2bd`  
		Last Modified: Thu, 27 Dec 2018 03:13:53 GMT  
		Size: 126.0 MB (126049607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc15a6c28f5b311b8a4914e99650a9b9360e01c993acfbf5bb1d457622e2767`  
		Last Modified: Thu, 27 Dec 2018 03:13:31 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:f6dc00801106e5d5c9309324b743265e87343f2223e078a25ac597ec4282c33c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.4 MB (139380500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87616c1c08c2af60249a47b0af536704e6af964ae411b1f79d41f71b07935c16`
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
# Thu, 27 Dec 2018 09:20:37 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 09:21:17 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 09:21:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 09:21:19 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 09:21:19 GMT
ENV GHOST_VERSION=2.9.1
# Thu, 27 Dec 2018 09:22:55 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 27 Dec 2018 09:22:59 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 09:23:00 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 09:23:00 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Thu, 27 Dec 2018 09:23:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 09:23:01 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 09:23:01 GMT
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
	-	`sha256:4977251ac3df3cf974035f103425aa1733b1ae407a9b77b01b1273d06a4d8e8e`  
		Last Modified: Thu, 27 Dec 2018 09:25:18 GMT  
		Size: 17.2 MB (17194043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5691ee3ccae6f31c9b08bccf8dd7137d6da783d6965b5046692c13ba639513`  
		Last Modified: Thu, 27 Dec 2018 09:25:49 GMT  
		Size: 99.7 MB (99746187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:410c11310f622da513e030ec3b3e795400bfd075ea9145e5308009f7269b7dcf`  
		Last Modified: Thu, 27 Dec 2018 09:25:08 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:39b79b13d0fd06dc4863a329311463a2bf41b6c9253189b4efa28941d4bbfa48
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.3 MB (140301043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8936f3c687bbe98041fa309d5c19f96fbb2fab7b4e3307c7a17078df9614259`
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
# Thu, 27 Dec 2018 10:24:16 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 10:24:45 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 10:24:48 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 10:24:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 10:24:51 GMT
ENV GHOST_VERSION=2.9.1
# Thu, 27 Dec 2018 10:26:26 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 27 Dec 2018 10:26:33 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 10:26:35 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 10:26:36 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Thu, 27 Dec 2018 10:26:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 10:26:39 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 10:26:40 GMT
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
	-	`sha256:9656ab452bab69d55a53614ef852ebaadf997d2fbe225259cc1dfc0d71bc5290`  
		Last Modified: Thu, 27 Dec 2018 10:35:46 GMT  
		Size: 17.2 MB (17189852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85564d61030ceadd2030a78faf32517627865c7f75109385dcdeab930948f2b8`  
		Last Modified: Thu, 27 Dec 2018 10:36:23 GMT  
		Size: 99.7 MB (99744652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eaaa51e51285cdab308c43bddd9b98ccc02264402e9bdf4216f4bc1c2bc5182`  
		Last Modified: Thu, 27 Dec 2018 10:35:26 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:1865252c8acea9ec2368d1e1ee90cdc313614b28f0c66c023f660c24618bc126
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
$ docker pull ghost@sha256:c7eef0b7919d5336b981cad58ff24ea49db951ca4a57c02308cfc773c6438206
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299070156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53a6a1e4afc0bfabceaf5b3d3a41f3ecf42ba2be0de5e6037cae68bb4af5d9c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:39:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 03:39:05 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 03:39:22 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 03:39:22 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 03:39:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 03:39:26 GMT
CMD ["node"]
# Sat, 29 Dec 2018 12:53:32 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 12:53:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 29 Dec 2018 12:53:37 GMT
ENV NODE_ENV=production
# Sat, 29 Dec 2018 12:53:37 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Sat, 29 Dec 2018 12:54:08 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 29 Dec 2018 12:54:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 29 Dec 2018 12:54:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 29 Dec 2018 12:54:10 GMT
ENV GHOST_VERSION=2.9.1
# Sat, 29 Dec 2018 12:55:26 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Sat, 29 Dec 2018 12:56:42 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 29 Dec 2018 12:56:44 GMT
WORKDIR /var/lib/ghost
# Sat, 29 Dec 2018 12:56:45 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 29 Dec 2018 12:56:45 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Sat, 29 Dec 2018 12:56:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 12:56:46 GMT
EXPOSE 2368
# Sat, 29 Dec 2018 12:56:47 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:604501ee7a0d3f42660098f7202c5d216210983bed82ae753be16558e2e8bf6e`  
		Last Modified: Sat, 29 Dec 2018 03:50:38 GMT  
		Size: 4.1 KB (4149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0e991e8d451d9ea6532cd01b681c678722f34ab3e107161d412f2cfb425313`  
		Last Modified: Sat, 29 Dec 2018 03:50:45 GMT  
		Size: 28.0 MB (28018658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada960f0a400d19b3322e0a6a13af27edc8aa3a56c0e9be7d36b598c9ae65866`  
		Last Modified: Sat, 29 Dec 2018 03:50:39 GMT  
		Size: 1.3 MB (1318192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e956782ba2c25ae089483f96f3f15bc79a1c517c9717a5abb0893acf34dd996`  
		Last Modified: Sat, 29 Dec 2018 12:59:54 GMT  
		Size: 500.9 KB (500917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54512d80554351cdcfb4fcd45b15421997933dfc7ba96d97f62ac82a2059e94`  
		Last Modified: Sat, 29 Dec 2018 13:00:13 GMT  
		Size: 17.2 MB (17196858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88194288c5b57f5cc16d5af69af8981dfe95c668cc8aee091a62f459a03aa78`  
		Last Modified: Sat, 29 Dec 2018 13:00:56 GMT  
		Size: 125.1 MB (125141116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba5720c4b679d17004441991d566e133827ee66424e447445249a07e47ff9c1`  
		Last Modified: Sat, 29 Dec 2018 13:00:33 GMT  
		Size: 104.4 MB (104396793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6247b0eeca8377228a36223e3af0ab541efef955b7a883ede6a02d758a64b5b3`  
		Last Modified: Sat, 29 Dec 2018 12:59:54 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm variant v7

```console
$ docker pull ghost@sha256:29e9aab2351013e74b13f7b8a76cf67706bc452dae92a0f44faff419dba76794
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.6 MB (296611691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e28df600fa7cd51df63c8de301afe56d830a5befc121822ee08cc573f5cea62`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:54:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 27 Dec 2018 12:59:58 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 13:00:57 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 27 Dec 2018 13:00:57 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 13:01:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 27 Dec 2018 13:01:03 GMT
CMD ["node"]
# Thu, 27 Dec 2018 13:29:44 GMT
ENV GOSU_VERSION=1.10
# Thu, 27 Dec 2018 13:29:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 27 Dec 2018 13:29:49 GMT
ENV NODE_ENV=production
# Thu, 27 Dec 2018 13:29:49 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 13:30:27 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 13:30:29 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 13:30:30 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 13:30:30 GMT
ENV GHOST_VERSION=2.9.1
# Thu, 27 Dec 2018 13:32:08 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 27 Dec 2018 13:36:26 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 27 Dec 2018 13:36:31 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 13:36:31 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 13:36:32 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 27 Dec 2018 13:36:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 13:36:32 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 13:36:33 GMT
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
	-	`sha256:1073f47161d7cf09b47970f54a05030f88aceb41bf5f2501d173ec102d593dc2`  
		Last Modified: Thu, 27 Dec 2018 13:10:21 GMT  
		Size: 25.5 MB (25468465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ec3ccb7c505ea7caa59e73d4f4f35ea0749d14ea5a3f36458eae409f9bca0c`  
		Last Modified: Thu, 27 Dec 2018 13:10:13 GMT  
		Size: 1.3 MB (1318235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91953b777f7b7d69d1ecc74457d8e4762ee7d8dfec084e580a71af3bfc4e84b2`  
		Last Modified: Thu, 27 Dec 2018 13:42:41 GMT  
		Size: 475.4 KB (475435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a4241c7c3fd1179499d2f2039d5d57b97da604263561d93fd0c1d66593a839`  
		Last Modified: Thu, 27 Dec 2018 13:42:51 GMT  
		Size: 17.2 MB (17194740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5700558e37c35b15d5bc8bd73114a7599ca5f3a6ae8de39cbca2164dc9c26087`  
		Last Modified: Thu, 27 Dec 2018 13:43:24 GMT  
		Size: 106.6 MB (106638499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c50358fd223d4d98b71f4309362de1e9a515d965cc8f13b58d4544cb0aa2a61`  
		Last Modified: Thu, 27 Dec 2018 13:43:30 GMT  
		Size: 126.2 MB (126241532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e755898497d1d1adabb56092d2adc0c946ef7fd33629e5949b479a350c30cb83`  
		Last Modified: Thu, 27 Dec 2018 13:42:41 GMT  
		Size: 561.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:829b4845ca9ea67c83e96e02fc4eb977abb38671c24b43c48d63e635d118d3c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.6 MB (297578734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c4f3efa26ad191ef8969d73c63977648804a22f9d0d7648fedbdb176723d571`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 03:05:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 27 Dec 2018 10:07:13 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 10:08:15 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 27 Dec 2018 10:08:16 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 10:08:24 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 27 Dec 2018 10:08:25 GMT
CMD ["node"]
# Thu, 27 Dec 2018 11:38:26 GMT
ENV GOSU_VERSION=1.10
# Thu, 27 Dec 2018 11:38:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 27 Dec 2018 11:38:34 GMT
ENV NODE_ENV=production
# Thu, 27 Dec 2018 11:38:34 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 11:39:11 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 11:39:13 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 11:39:14 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 11:39:14 GMT
ENV GHOST_VERSION=2.9.1
# Thu, 27 Dec 2018 11:40:39 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 27 Dec 2018 11:46:05 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 27 Dec 2018 11:46:09 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 11:46:10 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 11:46:10 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 27 Dec 2018 11:46:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 11:46:11 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 11:46:12 GMT
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
	-	`sha256:0755c9e8b0b71c78aba689bd3cdcbc7762f46e5463b72bde09a69b4e56426d4d`  
		Last Modified: Thu, 27 Dec 2018 11:19:46 GMT  
		Size: 26.7 MB (26700724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64529d3a0f09a51575a77a56517a2bdf663b4414c972f64c9ba0e06049d2d62e`  
		Last Modified: Thu, 27 Dec 2018 11:19:36 GMT  
		Size: 1.3 MB (1318207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fabda61b3b7fe02e0d30f15ebcc7f1b06b3ff8827afb302bf0a97036f497549`  
		Last Modified: Thu, 27 Dec 2018 11:54:07 GMT  
		Size: 468.9 KB (468937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f489fae8bc8306344f0e09911341bc10bcaa0d55d3dae6157f92a72d8fb2ab`  
		Last Modified: Thu, 27 Dec 2018 11:54:16 GMT  
		Size: 17.2 MB (17196072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ea0191cd920510525e16043c59ab29c34c395cc0c96dc02e3a3946ace3f6ca`  
		Last Modified: Thu, 27 Dec 2018 11:54:51 GMT  
		Size: 105.7 MB (105715267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ee00f19cc379828100c7c9b8e940530e609b16d8fa4ba20c1acd13b8bdc03c`  
		Last Modified: Thu, 27 Dec 2018 11:54:59 GMT  
		Size: 125.8 MB (125843494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39f3a0e6b1cd7560c76eea4b56fd4256f80b7be6acf3274c47ef0c46a707220`  
		Last Modified: Thu, 27 Dec 2018 11:54:06 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; 386

```console
$ docker pull ghost@sha256:7ecab6538fd3f54ac8482122e1d19d3d91655d3dd3b22ba092fb3d7ed3a1b805
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.0 MB (288996832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a16577397b5d27b6492f73fdeb19582e35d1b46a2934408cebf54531a3b8687`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Tue, 27 Nov 2018 14:20:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 27 Dec 2018 12:01:59 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 12:02:22 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 27 Dec 2018 12:02:23 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 12:02:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 27 Dec 2018 12:02:27 GMT
CMD ["node"]
# Thu, 27 Dec 2018 13:13:11 GMT
ENV GOSU_VERSION=1.10
# Thu, 27 Dec 2018 13:13:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 27 Dec 2018 13:13:16 GMT
ENV NODE_ENV=production
# Thu, 27 Dec 2018 13:13:16 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 13:13:35 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 13:13:36 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 13:13:36 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 13:13:36 GMT
ENV GHOST_VERSION=2.9.1
# Thu, 27 Dec 2018 13:14:17 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 27 Dec 2018 13:16:23 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 27 Dec 2018 13:16:25 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 13:16:25 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 13:16:25 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 27 Dec 2018 13:16:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 13:16:25 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 13:16:26 GMT
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
	-	`sha256:cd2be92da289c6a7146a129dd797865fcc4486ab275febdeee242dd5f93eba09`  
		Last Modified: Thu, 27 Dec 2018 12:56:20 GMT  
		Size: 27.8 MB (27846046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ba8327e64a8e6c4cb29e1d224d002137f775e6fa051f000532ebb30fc50697`  
		Last Modified: Thu, 27 Dec 2018 12:56:13 GMT  
		Size: 1.3 MB (1318187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1778291ff553608714f94bd8d95aad94fa9cdc661cca75c334cf122f1528e9e7`  
		Last Modified: Thu, 27 Dec 2018 13:19:44 GMT  
		Size: 480.8 KB (480830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:610b5061cfbad8f59b81d9f157faf4e7f4ec291affb0284cb9b4328d5aed134a`  
		Last Modified: Thu, 27 Dec 2018 13:19:52 GMT  
		Size: 17.2 MB (17190252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca4a2e9469e2f911076c5b8a8ecc14400f2adb0e34f174babcb2c0d74b1038e`  
		Last Modified: Thu, 27 Dec 2018 13:20:17 GMT  
		Size: 99.7 MB (99744206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:267bb39112c1c40e8482c04c5283afd742b374c06a4d535d1e52ab5674d10aad`  
		Last Modified: Thu, 27 Dec 2018 13:20:22 GMT  
		Size: 119.3 MB (119285842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b4a8750b60317002e04296af5e7ec93be172d0c5d4101f47155bacb8d05d78`  
		Last Modified: Thu, 27 Dec 2018 13:19:44 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; ppc64le

```console
$ docker pull ghost@sha256:af1566a50896f713abec5e2df8ec2b9f806be16b0aaf14cce9cbb2a1a70abe00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.9 MB (287873981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2662789356a81bc3dacd933abd25a16627ac90e1d765f0d724493847883c89ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:08:39 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 29 Dec 2018 12:08:41 GMT
ENV NODE_VERSION=8.15.0
# Sat, 29 Dec 2018 12:09:51 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 29 Dec 2018 12:09:54 GMT
ENV YARN_VERSION=1.12.3
# Sat, 29 Dec 2018 12:10:04 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 29 Dec 2018 12:10:06 GMT
CMD ["node"]
# Sat, 29 Dec 2018 17:19:27 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 17:19:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 29 Dec 2018 17:19:45 GMT
ENV NODE_ENV=production
# Sat, 29 Dec 2018 17:19:48 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Sat, 29 Dec 2018 17:20:42 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 29 Dec 2018 17:20:46 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 29 Dec 2018 17:20:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 29 Dec 2018 17:20:52 GMT
ENV GHOST_VERSION=2.9.1
# Sat, 29 Dec 2018 17:22:59 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Sat, 29 Dec 2018 17:28:13 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 29 Dec 2018 17:28:19 GMT
WORKDIR /var/lib/ghost
# Sat, 29 Dec 2018 17:28:21 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 29 Dec 2018 17:28:24 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Sat, 29 Dec 2018 17:28:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:28:31 GMT
EXPOSE 2368
# Sat, 29 Dec 2018 17:28:34 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d4874e270588da8c76182e39e8e58854c181fdfbfab716619b6acad4d7ea0c`  
		Last Modified: Sat, 29 Dec 2018 12:15:21 GMT  
		Size: 4.2 KB (4177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9f4a6ed2d44cdcae53a6bff0b6166811bfce3f12741330f8377eca61ba1877`  
		Last Modified: Sat, 29 Dec 2018 12:15:27 GMT  
		Size: 27.0 MB (26964238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13bea5d680fac40885ade9d7e8fe6d98f40c2b5834542fc0ed27adf448d50406`  
		Last Modified: Sat, 29 Dec 2018 12:15:22 GMT  
		Size: 1.3 MB (1318210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1e85b915c64aa3ca8780451245d2c88606973aa4dad1130902be5c09a3f05b`  
		Last Modified: Sat, 29 Dec 2018 17:36:24 GMT  
		Size: 470.1 KB (470077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cfd7e684d5b0c0e736b1d32ea48a02d2890cf3f1e91ddc11a37031ae8f83e3d`  
		Last Modified: Sat, 29 Dec 2018 17:37:01 GMT  
		Size: 17.2 MB (17197317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e7b944c43436b0d99b5517202718024f19c92d2fc9bd554a63eae18ce6b7a9`  
		Last Modified: Sat, 29 Dec 2018 17:38:05 GMT  
		Size: 99.7 MB (99745602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293aa491bfc3fd01f7ee79781188ef29e081ba03b1c8eaac1589ee13bc2b1892`  
		Last Modified: Sat, 29 Dec 2018 17:38:10 GMT  
		Size: 119.4 MB (119426976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a49fe23bba9116a026f043ac0e7319cbb3bc6154c9d869a6e862b27e3e67d8d`  
		Last Modified: Sat, 29 Dec 2018 17:36:24 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; s390x

```console
$ docker pull ghost@sha256:cc4174a9e5b1b7b8dc76824aa7774de65d8cc36a3c4277911b049e91df9dd946
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.3 MB (288347204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b82e5cdbda09e88945fea75d20f7e122622a3ebf25665d7bb48ea99c755f5c8c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:39:43 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 27 Dec 2018 13:05:49 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 13:06:10 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 27 Dec 2018 13:06:11 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 13:06:15 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 27 Dec 2018 13:06:15 GMT
CMD ["node"]
# Thu, 27 Dec 2018 13:51:51 GMT
ENV GOSU_VERSION=1.10
# Thu, 27 Dec 2018 13:51:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 27 Dec 2018 13:51:55 GMT
ENV NODE_ENV=production
# Thu, 27 Dec 2018 13:51:55 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 27 Dec 2018 13:52:10 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 27 Dec 2018 13:52:11 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 27 Dec 2018 13:52:11 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 27 Dec 2018 13:52:11 GMT
ENV GHOST_VERSION=2.9.1
# Thu, 27 Dec 2018 13:52:35 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 27 Dec 2018 13:54:17 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 27 Dec 2018 13:54:19 GMT
WORKDIR /var/lib/ghost
# Thu, 27 Dec 2018 13:54:19 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 27 Dec 2018 13:54:19 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Thu, 27 Dec 2018 13:54:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 13:54:20 GMT
EXPOSE 2368
# Thu, 27 Dec 2018 13:54:20 GMT
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
	-	`sha256:ffa67e6f86f2a9a0de4bf3c649a86143b0fbdb39862945123798af4098e31053`  
		Last Modified: Thu, 27 Dec 2018 13:34:47 GMT  
		Size: 27.9 MB (27860339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7335cea647fbe88990ffd862ef80071958c5d406d3dc5eba1d84538218b4abb`  
		Last Modified: Thu, 27 Dec 2018 13:34:42 GMT  
		Size: 1.3 MB (1318193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a2ad31a8e5213f84bd039e26bcff4e77dccfa682de4f257362117c6ff01dc90`  
		Last Modified: Thu, 27 Dec 2018 13:57:10 GMT  
		Size: 487.0 KB (487040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561aa77eae029aa9da9b40a69a398913fd4228077c5ce5de66d76f9872c88eb3`  
		Last Modified: Thu, 27 Dec 2018 13:57:14 GMT  
		Size: 17.2 MB (17188001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb39d90e191354bad12331f4b3b59660ff29bce5b2071a59c13de24922a2b2c`  
		Last Modified: Thu, 27 Dec 2018 13:57:27 GMT  
		Size: 99.7 MB (99742408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2aa1a7adb76d4d6360a37fc6ccffb701eef7b2547a8c1875fd611d8684a995b`  
		Last Modified: Thu, 27 Dec 2018 13:57:30 GMT  
		Size: 119.4 MB (119411802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42067c392b6b88ee4577780038f0bc5da682194678cd2011fcac0882a87a603`  
		Last Modified: Thu, 27 Dec 2018 13:57:10 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

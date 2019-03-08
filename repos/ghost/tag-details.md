<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:1`](#ghost1)
-	[`ghost:1.25`](#ghost125)
-	[`ghost:1.25.7`](#ghost1257)
-	[`ghost:1.25.7-alpine`](#ghost1257-alpine)
-	[`ghost:1.25-alpine`](#ghost125-alpine)
-	[`ghost:1-alpine`](#ghost1-alpine)
-	[`ghost:2`](#ghost2)
-	[`ghost:2.16`](#ghost216)
-	[`ghost:2.16.4`](#ghost2164)
-	[`ghost:2.16.4-alpine`](#ghost2164-alpine)
-	[`ghost:2.16-alpine`](#ghost216-alpine)
-	[`ghost:2-alpine`](#ghost2-alpine)
-	[`ghost:alpine`](#ghostalpine)
-	[`ghost:latest`](#ghostlatest)

## `ghost:1`

```console
$ docker pull ghost@sha256:6dd80eca38ebf2a622038dfe693bc754e2210beb2f64b96ec5856e2d8c035d6f
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
$ docker pull ghost@sha256:c80bd5d8ba2562b284adc1fc8c2754875e0e7315e07750b969f104a641961e48
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.1 MB (187059451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c051597338c737877b0217bc8cd38e3f7cf3ad21fa23fcb7d2c8b468161f07d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:39:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 05 Mar 2019 03:39:21 GMT
ENV NODE_VERSION=8.15.1
# Tue, 05 Mar 2019 03:39:41 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Mar 2019 03:39:41 GMT
ENV YARN_VERSION=1.12.3
# Tue, 05 Mar 2019 03:39:44 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Mar 2019 03:39:44 GMT
CMD ["node"]
# Tue, 05 Mar 2019 12:34:47 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 12:34:51 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Mar 2019 12:34:52 GMT
ENV NODE_ENV=production
# Tue, 05 Mar 2019 12:34:52 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 05 Mar 2019 12:35:24 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 05 Mar 2019 12:35:25 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 05 Mar 2019 12:35:26 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 05 Mar 2019 12:37:20 GMT
ENV GHOST_VERSION=1.25.7
# Tue, 05 Mar 2019 12:38:29 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 05 Mar 2019 12:38:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 05 Mar 2019 12:38:48 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 05 Mar 2019 12:38:48 GMT
WORKDIR /var/lib/ghost
# Tue, 05 Mar 2019 12:38:49 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 05 Mar 2019 12:38:49 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Tue, 05 Mar 2019 12:38:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 12:38:50 GMT
EXPOSE 2368
# Tue, 05 Mar 2019 12:38:50 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19dd238db8995f783250a0dd30f6c127d9f2e1b4702e417d3a34b4693022cab8`  
		Last Modified: Tue, 05 Mar 2019 03:49:28 GMT  
		Size: 4.1 KB (4144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da38310bbd9763801810f8793a564eab36805e429586bb0f653a3cc0702742a3`  
		Last Modified: Tue, 05 Mar 2019 03:49:35 GMT  
		Size: 28.0 MB (28017497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25422d96e287e9b9967dac86926d6763609cbd09207d45acffc094bc6043847`  
		Last Modified: Tue, 05 Mar 2019 03:49:27 GMT  
		Size: 1.3 MB (1321438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cec8e97cfc6fef48429e81db9779580f6de77e8ae16c0da64f972832eab2ea1`  
		Last Modified: Tue, 05 Mar 2019 12:39:21 GMT  
		Size: 500.9 KB (500920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7900078ee90c4dd169c5c35ad68f7d9d78fdf94b77daf9aad48b234ab80ded95`  
		Last Modified: Tue, 05 Mar 2019 12:39:28 GMT  
		Size: 17.4 MB (17412256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b5bd5feda4cf8241ba1ce59d6c87c0490ec964c72bc381faf0196345f563a4`  
		Last Modified: Tue, 05 Mar 2019 12:40:35 GMT  
		Size: 104.1 MB (104099271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6517fb0f073342ea9af5b63bdadd0513959ec8912c512fbd807510cf2f509e46`  
		Last Modified: Tue, 05 Mar 2019 12:40:09 GMT  
		Size: 13.2 MB (13207305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ddf8eb1f63bfdcb923a141611dd65363f5f5a720ded112015cd8b9c6497f49`  
		Last Modified: Tue, 05 Mar 2019 12:40:04 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; arm variant v7

```console
$ docker pull ghost@sha256:fff0a1d917e25d5a79020c072f08a9b08204216bd2b0342cc7d919afa361f9f4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.8 MB (189780707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fb90709fc991108448c87799be99fe76147acad7f8ff6f7fc273c160b5befd3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:04:04 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 05 Mar 2019 14:04:04 GMT
ENV NODE_VERSION=8.15.1
# Tue, 05 Mar 2019 14:04:34 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Mar 2019 14:04:35 GMT
ENV YARN_VERSION=1.12.3
# Tue, 05 Mar 2019 14:04:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Mar 2019 14:04:42 GMT
CMD ["node"]
# Tue, 05 Mar 2019 17:15:52 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 17:15:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Mar 2019 17:15:57 GMT
ENV NODE_ENV=production
# Tue, 05 Mar 2019 17:15:57 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 05 Mar 2019 17:16:38 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 05 Mar 2019 17:16:41 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 05 Mar 2019 17:16:41 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 05 Mar 2019 17:22:11 GMT
ENV GHOST_VERSION=1.25.7
# Tue, 05 Mar 2019 17:23:44 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 05 Mar 2019 17:23:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 05 Mar 2019 17:27:11 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 05 Mar 2019 17:27:11 GMT
WORKDIR /var/lib/ghost
# Tue, 05 Mar 2019 17:27:12 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 05 Mar 2019 17:27:12 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Tue, 05 Mar 2019 17:27:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 17:27:13 GMT
EXPOSE 2368
# Tue, 05 Mar 2019 17:27:14 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0ec74be39414de5fbb3c3c6d581fe9f01c5fe455a62141eff10d3c2b48a32c`  
		Last Modified: Tue, 05 Mar 2019 14:13:24 GMT  
		Size: 4.2 KB (4171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65a5c9d2267b657be520c54ec762c1a6e3837df47ca086a53fe7f3991e0d1fa`  
		Last Modified: Tue, 05 Mar 2019 14:13:33 GMT  
		Size: 25.5 MB (25472745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935cec4e970287eba460f49bc5a9f1a5bfc50af8c5392444bc16efbb92b4aa0f`  
		Last Modified: Tue, 05 Mar 2019 14:13:25 GMT  
		Size: 1.3 MB (1321447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f6de281e0194a45a36fef43c2d259dcb5de801e148c2d9ff8b91ca2282dfac`  
		Last Modified: Tue, 05 Mar 2019 17:27:35 GMT  
		Size: 475.4 KB (475431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3976554702f9bf6cedf7d4ace917931fbf47b943ebef3a4f91a3940244d9eeca`  
		Last Modified: Tue, 05 Mar 2019 17:27:45 GMT  
		Size: 17.4 MB (17411216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c57b6cdf5e20f69820385cc49d90f606f2547ef4e7af2b1a6fff33d228d823`  
		Last Modified: Tue, 05 Mar 2019 17:29:02 GMT  
		Size: 96.4 MB (96357247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:804e926a5f548138429ee0c930fd9252137f680b56d38d9f2db97a240d8b3232`  
		Last Modified: Tue, 05 Mar 2019 17:28:32 GMT  
		Size: 29.5 MB (29455368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba8fc75dcd711613958ee11dad67f237a16d6f148f3f90c00d291e0ef86221e`  
		Last Modified: Tue, 05 Mar 2019 17:28:24 GMT  
		Size: 588.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:06a775da17d9066ee52fdfa02d0e290fe2a09e443ce5f45bd35518cf5f135b98
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.0 MB (197028132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bfbf83721f0e9a07806778ae999b4e157b6e3e0d24c5a11b34d1b67770b2c6c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 00:55:30 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 01 Mar 2019 10:10:44 GMT
ENV NODE_VERSION=8.15.1
# Fri, 01 Mar 2019 10:12:06 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 01 Mar 2019 10:12:07 GMT
ENV YARN_VERSION=1.12.3
# Fri, 01 Mar 2019 10:12:15 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 01 Mar 2019 10:12:16 GMT
CMD ["node"]
# Fri, 01 Mar 2019 11:41:40 GMT
ENV GOSU_VERSION=1.10
# Fri, 01 Mar 2019 11:41:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 01 Mar 2019 11:41:47 GMT
ENV NODE_ENV=production
# Fri, 01 Mar 2019 11:41:48 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Fri, 01 Mar 2019 11:42:26 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 01 Mar 2019 11:42:27 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 01 Mar 2019 11:42:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 01 Mar 2019 11:49:22 GMT
ENV GHOST_VERSION=1.25.7
# Fri, 01 Mar 2019 11:50:40 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 01 Mar 2019 11:50:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 01 Mar 2019 11:55:22 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 01 Mar 2019 11:55:23 GMT
WORKDIR /var/lib/ghost
# Fri, 01 Mar 2019 11:55:23 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 01 Mar 2019 11:55:24 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Fri, 01 Mar 2019 11:55:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Mar 2019 11:55:25 GMT
EXPOSE 2368
# Fri, 01 Mar 2019 11:55:26 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cde3cb8d6c0e984b84c0cb58e131df0c9cf333683af998db5e0cfcaf12b7393`  
		Last Modified: Thu, 07 Feb 2019 01:05:20 GMT  
		Size: 4.2 KB (4150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:953b766fdf579ba8a497d21838004a0d221083949f2523b0e872c57b6870e3da`  
		Last Modified: Fri, 01 Mar 2019 11:22:49 GMT  
		Size: 26.7 MB (26700656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd39b68f82af7807c06398e865c1d436c12e76629ed0d271856e7a01aaeb5a48`  
		Last Modified: Fri, 01 Mar 2019 11:22:37 GMT  
		Size: 1.3 MB (1321438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ced6cca8c8873b9dc061765fc36024a7b69a14318b6f49af60115cc6b7da9a5`  
		Last Modified: Fri, 01 Mar 2019 11:56:04 GMT  
		Size: 468.9 KB (468939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76849c2b5ae6d78bb9bf4bbdaf75447c1a1d4bb64fcb16eeb4c413f4a2555e45`  
		Last Modified: Fri, 01 Mar 2019 11:56:14 GMT  
		Size: 17.4 MB (17399341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407f56e576b4ee8066f95d50500802c3c64c63f895e6d380a8c65216ece721bd`  
		Last Modified: Fri, 01 Mar 2019 11:57:40 GMT  
		Size: 96.4 MB (96405183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d114e92fb0adb964454d78d9ffe8f62d460ce5aeb313d1512774eb36a1d1d565`  
		Last Modified: Fri, 01 Mar 2019 11:57:14 GMT  
		Size: 34.4 MB (34377678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db56387622601a67a861cdb37b60d33f15e237f34f9c7e23d85592c66d7861f9`  
		Last Modified: Fri, 01 Mar 2019 11:57:00 GMT  
		Size: 588.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; 386

```console
$ docker pull ghost@sha256:a28085daff35d24e3383870afcbceb339d3357ac6b1aecc663d4183961c446a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 MB (197378246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6110272f4811a066015d6d97e92bb9e3ce4ff2d6a7f7931c3519a01ae723ade0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 16:08:15 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 05 Mar 2019 16:08:15 GMT
ENV NODE_VERSION=8.15.1
# Tue, 05 Mar 2019 16:08:34 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Mar 2019 16:08:34 GMT
ENV YARN_VERSION=1.12.3
# Tue, 05 Mar 2019 16:08:37 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Mar 2019 16:08:38 GMT
CMD ["node"]
# Wed, 06 Mar 2019 00:14:17 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Mar 2019 00:14:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Mar 2019 00:14:21 GMT
ENV NODE_ENV=production
# Wed, 06 Mar 2019 00:14:21 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Wed, 06 Mar 2019 00:14:43 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Mar 2019 00:14:43 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Mar 2019 00:14:43 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Mar 2019 00:17:22 GMT
ENV GHOST_VERSION=1.25.7
# Wed, 06 Mar 2019 00:18:02 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 06 Mar 2019 00:18:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 06 Mar 2019 00:19:37 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Mar 2019 00:19:37 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Mar 2019 00:19:37 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Mar 2019 00:19:37 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Wed, 06 Mar 2019 00:19:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Mar 2019 00:19:38 GMT
EXPOSE 2368
# Wed, 06 Mar 2019 00:19:38 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b42aa871f86bceea09dc73ea6e00cd2eb8b2532a1d4cbdcf7af8ed86e0f02e`  
		Last Modified: Tue, 05 Mar 2019 16:14:00 GMT  
		Size: 4.1 KB (4135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f66dda9b1a76e28608400319c4054d5c5bc0adb643072c71cd319915e63f49e`  
		Last Modified: Tue, 05 Mar 2019 16:14:10 GMT  
		Size: 27.8 MB (27849482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76027775c669bf1beab618f9faf82efba1362d4b2f9c5964fd4509d20ab35c0e`  
		Last Modified: Tue, 05 Mar 2019 16:14:01 GMT  
		Size: 1.3 MB (1321442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532e0ab66a10fc74fcabf309a152db3e52341163f62e1712700b5b0103645582`  
		Last Modified: Wed, 06 Mar 2019 00:20:02 GMT  
		Size: 480.8 KB (480829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f60b76bf5b061e75b87bac430d5a6bb599679c8e41bde84787e5f591ac9dc45`  
		Last Modified: Wed, 06 Mar 2019 00:20:09 GMT  
		Size: 17.4 MB (17412683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1df7a1c2fdada017ee160965e276b959bee017176bf86bc483a21feb4a488b`  
		Last Modified: Wed, 06 Mar 2019 00:21:02 GMT  
		Size: 96.4 MB (96361840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8411244b1e3fea8fcfcf6e2d926691375568d9765af5a543dcce64d9ef499e2`  
		Last Modified: Wed, 06 Mar 2019 00:20:44 GMT  
		Size: 30.8 MB (30821568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0246a8f60e755ca965bde6a494f92967f44ebe3e9bf99c0575620f42cad7c90`  
		Last Modified: Wed, 06 Mar 2019 00:20:36 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; ppc64le

```console
$ docker pull ghost@sha256:1a360f3caaf694afb056439e770217402452991c1ffed89667a4db26061acc6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.4 MB (196351698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c20f0167f9024c3b2e099e3d6da693fb7a00999d80aaabbf7657a09ab9528e3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:38:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 05 Mar 2019 11:38:20 GMT
ENV NODE_VERSION=8.15.1
# Tue, 05 Mar 2019 11:39:47 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Mar 2019 11:39:51 GMT
ENV YARN_VERSION=1.12.3
# Tue, 05 Mar 2019 11:40:00 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Mar 2019 11:40:03 GMT
CMD ["node"]
# Tue, 05 Mar 2019 17:12:55 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 17:13:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Mar 2019 17:13:06 GMT
ENV NODE_ENV=production
# Tue, 05 Mar 2019 17:13:10 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 05 Mar 2019 17:13:48 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 05 Mar 2019 17:13:54 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 05 Mar 2019 17:13:56 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 05 Mar 2019 17:21:55 GMT
ENV GHOST_VERSION=1.25.7
# Tue, 05 Mar 2019 17:25:26 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 05 Mar 2019 17:25:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 05 Mar 2019 17:29:29 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 05 Mar 2019 17:29:33 GMT
WORKDIR /var/lib/ghost
# Tue, 05 Mar 2019 17:29:35 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 05 Mar 2019 17:29:36 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Tue, 05 Mar 2019 17:29:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 17:29:42 GMT
EXPOSE 2368
# Tue, 05 Mar 2019 17:29:44 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7146b59d4f68f2ab05830fe018c20d50c6af1bc7e59dd6222e557003294b7de`  
		Last Modified: Tue, 05 Mar 2019 11:43:34 GMT  
		Size: 4.2 KB (4171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb865b0db5c9451360b58b81eb5c75d86f218324f5ffc653590fb49400a4056`  
		Last Modified: Tue, 05 Mar 2019 11:43:41 GMT  
		Size: 27.0 MB (26969108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b65f1ce016ac02f0e4180eecb0bf6536c48e1323d8c131b6f21d1431399c56`  
		Last Modified: Tue, 05 Mar 2019 11:43:34 GMT  
		Size: 1.3 MB (1321459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2876c660201fba48fb93964ec070c1b61d6a892181c3f24e21265248a66cd0be`  
		Last Modified: Tue, 05 Mar 2019 17:30:24 GMT  
		Size: 470.1 KB (470077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8998686f907bc120037e34fed178f04fefdda5834860fd8d72cfd5e2661373f8`  
		Last Modified: Tue, 05 Mar 2019 17:30:53 GMT  
		Size: 17.4 MB (17412061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:822d05e2a3359a9688acc837b08669711c2b21a175d78cff75ea1cfecd0ea56d`  
		Last Modified: Tue, 05 Mar 2019 17:33:43 GMT  
		Size: 96.4 MB (96404244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e58c6dd2c0ffd569add79f003fb5fe63b8bbb87d78ff395c46e510b780321fc`  
		Last Modified: Tue, 05 Mar 2019 17:32:45 GMT  
		Size: 31.0 MB (31018495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1b1c41fa4e4874b2793c71ada47871468a4e6333e40036d256e087ca988403`  
		Last Modified: Tue, 05 Mar 2019 17:32:32 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; s390x

```console
$ docker pull ghost@sha256:b1e7b80ffd18482a3e8864b51e07318688269f28a14c21648707d64c08cf389e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.8 MB (196802064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:540e6fd59e9b224c8a3ddd0b871436a1a818f45d2ba9c39f9d3990e57ebf7e3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:27:33 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 05 Mar 2019 15:27:33 GMT
ENV NODE_VERSION=8.15.1
# Tue, 05 Mar 2019 15:27:52 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Mar 2019 15:27:52 GMT
ENV YARN_VERSION=1.12.3
# Tue, 05 Mar 2019 15:27:56 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Mar 2019 15:27:57 GMT
CMD ["node"]
# Tue, 05 Mar 2019 19:27:16 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 19:27:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Mar 2019 19:27:21 GMT
ENV NODE_ENV=production
# Tue, 05 Mar 2019 19:27:23 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 05 Mar 2019 19:27:48 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 05 Mar 2019 19:27:49 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 05 Mar 2019 19:27:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 05 Mar 2019 19:30:48 GMT
ENV GHOST_VERSION=1.25.7
# Tue, 05 Mar 2019 19:31:42 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 05 Mar 2019 19:31:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 05 Mar 2019 19:33:47 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 05 Mar 2019 19:33:48 GMT
WORKDIR /var/lib/ghost
# Tue, 05 Mar 2019 19:33:48 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 05 Mar 2019 19:33:49 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Tue, 05 Mar 2019 19:33:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 19:33:50 GMT
EXPOSE 2368
# Tue, 05 Mar 2019 19:33:51 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:2c9e1401ee6b0131741b02fed745b7f1d34bf29b0bc59f41e08dc969a710fc58`  
		Last Modified: Tue, 05 Mar 2019 12:45:42 GMT  
		Size: 22.3 MB (22345383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a69bf5a87f6ca372cf532eac6f88650232f774c7127c6bd9fe82cf04846490`  
		Last Modified: Tue, 05 Mar 2019 15:30:23 GMT  
		Size: 4.2 KB (4151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8247e2fb2aa9fd4d18ea49fdbe3fd5e70c8716c98ee7d445b3531693aac851`  
		Last Modified: Tue, 05 Mar 2019 15:30:29 GMT  
		Size: 27.9 MB (27862343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3f1e837f6496a2972d53f392257b74407520e1276c08957314ce29bafe98b14`  
		Last Modified: Tue, 05 Mar 2019 15:30:23 GMT  
		Size: 1.3 MB (1321441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a64ba830e16748d30745eeea9cc9ace200cf44f72f85b66607aa12ced01b9ae`  
		Last Modified: Tue, 05 Mar 2019 19:34:32 GMT  
		Size: 487.0 KB (487046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d50692248351b00eea736e3dcf763d2e79a57654d8798a9fef7a9b29f12f4a8`  
		Last Modified: Tue, 05 Mar 2019 19:34:39 GMT  
		Size: 17.4 MB (17412692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d227eddde9ec550aa1b757df34b4a323149219a8cea0c03ffc93757b1a1537`  
		Last Modified: Tue, 05 Mar 2019 19:35:33 GMT  
		Size: 96.4 MB (96400986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0dbabbea7dfb7290e05333be7a6d6c5d41461cb8586942c8c76ce182e608a5`  
		Last Modified: Tue, 05 Mar 2019 19:35:15 GMT  
		Size: 31.0 MB (30967434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2594690415c008a24e783893d66489d67aca626322b6e6f04d6d923ec22edd5e`  
		Last Modified: Tue, 05 Mar 2019 19:35:07 GMT  
		Size: 588.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25`

```console
$ docker pull ghost@sha256:6dd80eca38ebf2a622038dfe693bc754e2210beb2f64b96ec5856e2d8c035d6f
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
$ docker pull ghost@sha256:c80bd5d8ba2562b284adc1fc8c2754875e0e7315e07750b969f104a641961e48
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.1 MB (187059451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c051597338c737877b0217bc8cd38e3f7cf3ad21fa23fcb7d2c8b468161f07d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:39:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 05 Mar 2019 03:39:21 GMT
ENV NODE_VERSION=8.15.1
# Tue, 05 Mar 2019 03:39:41 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Mar 2019 03:39:41 GMT
ENV YARN_VERSION=1.12.3
# Tue, 05 Mar 2019 03:39:44 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Mar 2019 03:39:44 GMT
CMD ["node"]
# Tue, 05 Mar 2019 12:34:47 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 12:34:51 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Mar 2019 12:34:52 GMT
ENV NODE_ENV=production
# Tue, 05 Mar 2019 12:34:52 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 05 Mar 2019 12:35:24 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 05 Mar 2019 12:35:25 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 05 Mar 2019 12:35:26 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 05 Mar 2019 12:37:20 GMT
ENV GHOST_VERSION=1.25.7
# Tue, 05 Mar 2019 12:38:29 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 05 Mar 2019 12:38:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 05 Mar 2019 12:38:48 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 05 Mar 2019 12:38:48 GMT
WORKDIR /var/lib/ghost
# Tue, 05 Mar 2019 12:38:49 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 05 Mar 2019 12:38:49 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Tue, 05 Mar 2019 12:38:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 12:38:50 GMT
EXPOSE 2368
# Tue, 05 Mar 2019 12:38:50 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19dd238db8995f783250a0dd30f6c127d9f2e1b4702e417d3a34b4693022cab8`  
		Last Modified: Tue, 05 Mar 2019 03:49:28 GMT  
		Size: 4.1 KB (4144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da38310bbd9763801810f8793a564eab36805e429586bb0f653a3cc0702742a3`  
		Last Modified: Tue, 05 Mar 2019 03:49:35 GMT  
		Size: 28.0 MB (28017497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25422d96e287e9b9967dac86926d6763609cbd09207d45acffc094bc6043847`  
		Last Modified: Tue, 05 Mar 2019 03:49:27 GMT  
		Size: 1.3 MB (1321438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cec8e97cfc6fef48429e81db9779580f6de77e8ae16c0da64f972832eab2ea1`  
		Last Modified: Tue, 05 Mar 2019 12:39:21 GMT  
		Size: 500.9 KB (500920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7900078ee90c4dd169c5c35ad68f7d9d78fdf94b77daf9aad48b234ab80ded95`  
		Last Modified: Tue, 05 Mar 2019 12:39:28 GMT  
		Size: 17.4 MB (17412256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b5bd5feda4cf8241ba1ce59d6c87c0490ec964c72bc381faf0196345f563a4`  
		Last Modified: Tue, 05 Mar 2019 12:40:35 GMT  
		Size: 104.1 MB (104099271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6517fb0f073342ea9af5b63bdadd0513959ec8912c512fbd807510cf2f509e46`  
		Last Modified: Tue, 05 Mar 2019 12:40:09 GMT  
		Size: 13.2 MB (13207305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ddf8eb1f63bfdcb923a141611dd65363f5f5a720ded112015cd8b9c6497f49`  
		Last Modified: Tue, 05 Mar 2019 12:40:04 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; arm variant v7

```console
$ docker pull ghost@sha256:fff0a1d917e25d5a79020c072f08a9b08204216bd2b0342cc7d919afa361f9f4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.8 MB (189780707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fb90709fc991108448c87799be99fe76147acad7f8ff6f7fc273c160b5befd3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:04:04 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 05 Mar 2019 14:04:04 GMT
ENV NODE_VERSION=8.15.1
# Tue, 05 Mar 2019 14:04:34 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Mar 2019 14:04:35 GMT
ENV YARN_VERSION=1.12.3
# Tue, 05 Mar 2019 14:04:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Mar 2019 14:04:42 GMT
CMD ["node"]
# Tue, 05 Mar 2019 17:15:52 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 17:15:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Mar 2019 17:15:57 GMT
ENV NODE_ENV=production
# Tue, 05 Mar 2019 17:15:57 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 05 Mar 2019 17:16:38 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 05 Mar 2019 17:16:41 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 05 Mar 2019 17:16:41 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 05 Mar 2019 17:22:11 GMT
ENV GHOST_VERSION=1.25.7
# Tue, 05 Mar 2019 17:23:44 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 05 Mar 2019 17:23:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 05 Mar 2019 17:27:11 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 05 Mar 2019 17:27:11 GMT
WORKDIR /var/lib/ghost
# Tue, 05 Mar 2019 17:27:12 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 05 Mar 2019 17:27:12 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Tue, 05 Mar 2019 17:27:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 17:27:13 GMT
EXPOSE 2368
# Tue, 05 Mar 2019 17:27:14 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0ec74be39414de5fbb3c3c6d581fe9f01c5fe455a62141eff10d3c2b48a32c`  
		Last Modified: Tue, 05 Mar 2019 14:13:24 GMT  
		Size: 4.2 KB (4171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65a5c9d2267b657be520c54ec762c1a6e3837df47ca086a53fe7f3991e0d1fa`  
		Last Modified: Tue, 05 Mar 2019 14:13:33 GMT  
		Size: 25.5 MB (25472745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935cec4e970287eba460f49bc5a9f1a5bfc50af8c5392444bc16efbb92b4aa0f`  
		Last Modified: Tue, 05 Mar 2019 14:13:25 GMT  
		Size: 1.3 MB (1321447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f6de281e0194a45a36fef43c2d259dcb5de801e148c2d9ff8b91ca2282dfac`  
		Last Modified: Tue, 05 Mar 2019 17:27:35 GMT  
		Size: 475.4 KB (475431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3976554702f9bf6cedf7d4ace917931fbf47b943ebef3a4f91a3940244d9eeca`  
		Last Modified: Tue, 05 Mar 2019 17:27:45 GMT  
		Size: 17.4 MB (17411216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c57b6cdf5e20f69820385cc49d90f606f2547ef4e7af2b1a6fff33d228d823`  
		Last Modified: Tue, 05 Mar 2019 17:29:02 GMT  
		Size: 96.4 MB (96357247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:804e926a5f548138429ee0c930fd9252137f680b56d38d9f2db97a240d8b3232`  
		Last Modified: Tue, 05 Mar 2019 17:28:32 GMT  
		Size: 29.5 MB (29455368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba8fc75dcd711613958ee11dad67f237a16d6f148f3f90c00d291e0ef86221e`  
		Last Modified: Tue, 05 Mar 2019 17:28:24 GMT  
		Size: 588.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:06a775da17d9066ee52fdfa02d0e290fe2a09e443ce5f45bd35518cf5f135b98
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.0 MB (197028132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bfbf83721f0e9a07806778ae999b4e157b6e3e0d24c5a11b34d1b67770b2c6c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 00:55:30 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 01 Mar 2019 10:10:44 GMT
ENV NODE_VERSION=8.15.1
# Fri, 01 Mar 2019 10:12:06 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 01 Mar 2019 10:12:07 GMT
ENV YARN_VERSION=1.12.3
# Fri, 01 Mar 2019 10:12:15 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 01 Mar 2019 10:12:16 GMT
CMD ["node"]
# Fri, 01 Mar 2019 11:41:40 GMT
ENV GOSU_VERSION=1.10
# Fri, 01 Mar 2019 11:41:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 01 Mar 2019 11:41:47 GMT
ENV NODE_ENV=production
# Fri, 01 Mar 2019 11:41:48 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Fri, 01 Mar 2019 11:42:26 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 01 Mar 2019 11:42:27 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 01 Mar 2019 11:42:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 01 Mar 2019 11:49:22 GMT
ENV GHOST_VERSION=1.25.7
# Fri, 01 Mar 2019 11:50:40 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 01 Mar 2019 11:50:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 01 Mar 2019 11:55:22 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 01 Mar 2019 11:55:23 GMT
WORKDIR /var/lib/ghost
# Fri, 01 Mar 2019 11:55:23 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 01 Mar 2019 11:55:24 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Fri, 01 Mar 2019 11:55:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Mar 2019 11:55:25 GMT
EXPOSE 2368
# Fri, 01 Mar 2019 11:55:26 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cde3cb8d6c0e984b84c0cb58e131df0c9cf333683af998db5e0cfcaf12b7393`  
		Last Modified: Thu, 07 Feb 2019 01:05:20 GMT  
		Size: 4.2 KB (4150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:953b766fdf579ba8a497d21838004a0d221083949f2523b0e872c57b6870e3da`  
		Last Modified: Fri, 01 Mar 2019 11:22:49 GMT  
		Size: 26.7 MB (26700656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd39b68f82af7807c06398e865c1d436c12e76629ed0d271856e7a01aaeb5a48`  
		Last Modified: Fri, 01 Mar 2019 11:22:37 GMT  
		Size: 1.3 MB (1321438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ced6cca8c8873b9dc061765fc36024a7b69a14318b6f49af60115cc6b7da9a5`  
		Last Modified: Fri, 01 Mar 2019 11:56:04 GMT  
		Size: 468.9 KB (468939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76849c2b5ae6d78bb9bf4bbdaf75447c1a1d4bb64fcb16eeb4c413f4a2555e45`  
		Last Modified: Fri, 01 Mar 2019 11:56:14 GMT  
		Size: 17.4 MB (17399341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407f56e576b4ee8066f95d50500802c3c64c63f895e6d380a8c65216ece721bd`  
		Last Modified: Fri, 01 Mar 2019 11:57:40 GMT  
		Size: 96.4 MB (96405183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d114e92fb0adb964454d78d9ffe8f62d460ce5aeb313d1512774eb36a1d1d565`  
		Last Modified: Fri, 01 Mar 2019 11:57:14 GMT  
		Size: 34.4 MB (34377678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db56387622601a67a861cdb37b60d33f15e237f34f9c7e23d85592c66d7861f9`  
		Last Modified: Fri, 01 Mar 2019 11:57:00 GMT  
		Size: 588.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; 386

```console
$ docker pull ghost@sha256:a28085daff35d24e3383870afcbceb339d3357ac6b1aecc663d4183961c446a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 MB (197378246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6110272f4811a066015d6d97e92bb9e3ce4ff2d6a7f7931c3519a01ae723ade0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 16:08:15 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 05 Mar 2019 16:08:15 GMT
ENV NODE_VERSION=8.15.1
# Tue, 05 Mar 2019 16:08:34 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Mar 2019 16:08:34 GMT
ENV YARN_VERSION=1.12.3
# Tue, 05 Mar 2019 16:08:37 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Mar 2019 16:08:38 GMT
CMD ["node"]
# Wed, 06 Mar 2019 00:14:17 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Mar 2019 00:14:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Mar 2019 00:14:21 GMT
ENV NODE_ENV=production
# Wed, 06 Mar 2019 00:14:21 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Wed, 06 Mar 2019 00:14:43 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Mar 2019 00:14:43 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Mar 2019 00:14:43 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Mar 2019 00:17:22 GMT
ENV GHOST_VERSION=1.25.7
# Wed, 06 Mar 2019 00:18:02 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 06 Mar 2019 00:18:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 06 Mar 2019 00:19:37 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Mar 2019 00:19:37 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Mar 2019 00:19:37 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Mar 2019 00:19:37 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Wed, 06 Mar 2019 00:19:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Mar 2019 00:19:38 GMT
EXPOSE 2368
# Wed, 06 Mar 2019 00:19:38 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b42aa871f86bceea09dc73ea6e00cd2eb8b2532a1d4cbdcf7af8ed86e0f02e`  
		Last Modified: Tue, 05 Mar 2019 16:14:00 GMT  
		Size: 4.1 KB (4135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f66dda9b1a76e28608400319c4054d5c5bc0adb643072c71cd319915e63f49e`  
		Last Modified: Tue, 05 Mar 2019 16:14:10 GMT  
		Size: 27.8 MB (27849482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76027775c669bf1beab618f9faf82efba1362d4b2f9c5964fd4509d20ab35c0e`  
		Last Modified: Tue, 05 Mar 2019 16:14:01 GMT  
		Size: 1.3 MB (1321442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532e0ab66a10fc74fcabf309a152db3e52341163f62e1712700b5b0103645582`  
		Last Modified: Wed, 06 Mar 2019 00:20:02 GMT  
		Size: 480.8 KB (480829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f60b76bf5b061e75b87bac430d5a6bb599679c8e41bde84787e5f591ac9dc45`  
		Last Modified: Wed, 06 Mar 2019 00:20:09 GMT  
		Size: 17.4 MB (17412683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1df7a1c2fdada017ee160965e276b959bee017176bf86bc483a21feb4a488b`  
		Last Modified: Wed, 06 Mar 2019 00:21:02 GMT  
		Size: 96.4 MB (96361840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8411244b1e3fea8fcfcf6e2d926691375568d9765af5a543dcce64d9ef499e2`  
		Last Modified: Wed, 06 Mar 2019 00:20:44 GMT  
		Size: 30.8 MB (30821568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0246a8f60e755ca965bde6a494f92967f44ebe3e9bf99c0575620f42cad7c90`  
		Last Modified: Wed, 06 Mar 2019 00:20:36 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; ppc64le

```console
$ docker pull ghost@sha256:1a360f3caaf694afb056439e770217402452991c1ffed89667a4db26061acc6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.4 MB (196351698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c20f0167f9024c3b2e099e3d6da693fb7a00999d80aaabbf7657a09ab9528e3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:38:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 05 Mar 2019 11:38:20 GMT
ENV NODE_VERSION=8.15.1
# Tue, 05 Mar 2019 11:39:47 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Mar 2019 11:39:51 GMT
ENV YARN_VERSION=1.12.3
# Tue, 05 Mar 2019 11:40:00 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Mar 2019 11:40:03 GMT
CMD ["node"]
# Tue, 05 Mar 2019 17:12:55 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 17:13:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Mar 2019 17:13:06 GMT
ENV NODE_ENV=production
# Tue, 05 Mar 2019 17:13:10 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 05 Mar 2019 17:13:48 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 05 Mar 2019 17:13:54 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 05 Mar 2019 17:13:56 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 05 Mar 2019 17:21:55 GMT
ENV GHOST_VERSION=1.25.7
# Tue, 05 Mar 2019 17:25:26 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 05 Mar 2019 17:25:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 05 Mar 2019 17:29:29 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 05 Mar 2019 17:29:33 GMT
WORKDIR /var/lib/ghost
# Tue, 05 Mar 2019 17:29:35 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 05 Mar 2019 17:29:36 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Tue, 05 Mar 2019 17:29:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 17:29:42 GMT
EXPOSE 2368
# Tue, 05 Mar 2019 17:29:44 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7146b59d4f68f2ab05830fe018c20d50c6af1bc7e59dd6222e557003294b7de`  
		Last Modified: Tue, 05 Mar 2019 11:43:34 GMT  
		Size: 4.2 KB (4171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb865b0db5c9451360b58b81eb5c75d86f218324f5ffc653590fb49400a4056`  
		Last Modified: Tue, 05 Mar 2019 11:43:41 GMT  
		Size: 27.0 MB (26969108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b65f1ce016ac02f0e4180eecb0bf6536c48e1323d8c131b6f21d1431399c56`  
		Last Modified: Tue, 05 Mar 2019 11:43:34 GMT  
		Size: 1.3 MB (1321459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2876c660201fba48fb93964ec070c1b61d6a892181c3f24e21265248a66cd0be`  
		Last Modified: Tue, 05 Mar 2019 17:30:24 GMT  
		Size: 470.1 KB (470077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8998686f907bc120037e34fed178f04fefdda5834860fd8d72cfd5e2661373f8`  
		Last Modified: Tue, 05 Mar 2019 17:30:53 GMT  
		Size: 17.4 MB (17412061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:822d05e2a3359a9688acc837b08669711c2b21a175d78cff75ea1cfecd0ea56d`  
		Last Modified: Tue, 05 Mar 2019 17:33:43 GMT  
		Size: 96.4 MB (96404244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e58c6dd2c0ffd569add79f003fb5fe63b8bbb87d78ff395c46e510b780321fc`  
		Last Modified: Tue, 05 Mar 2019 17:32:45 GMT  
		Size: 31.0 MB (31018495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1b1c41fa4e4874b2793c71ada47871468a4e6333e40036d256e087ca988403`  
		Last Modified: Tue, 05 Mar 2019 17:32:32 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; s390x

```console
$ docker pull ghost@sha256:b1e7b80ffd18482a3e8864b51e07318688269f28a14c21648707d64c08cf389e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.8 MB (196802064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:540e6fd59e9b224c8a3ddd0b871436a1a818f45d2ba9c39f9d3990e57ebf7e3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:27:33 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 05 Mar 2019 15:27:33 GMT
ENV NODE_VERSION=8.15.1
# Tue, 05 Mar 2019 15:27:52 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Mar 2019 15:27:52 GMT
ENV YARN_VERSION=1.12.3
# Tue, 05 Mar 2019 15:27:56 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Mar 2019 15:27:57 GMT
CMD ["node"]
# Tue, 05 Mar 2019 19:27:16 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 19:27:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Mar 2019 19:27:21 GMT
ENV NODE_ENV=production
# Tue, 05 Mar 2019 19:27:23 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 05 Mar 2019 19:27:48 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 05 Mar 2019 19:27:49 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 05 Mar 2019 19:27:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 05 Mar 2019 19:30:48 GMT
ENV GHOST_VERSION=1.25.7
# Tue, 05 Mar 2019 19:31:42 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 05 Mar 2019 19:31:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 05 Mar 2019 19:33:47 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 05 Mar 2019 19:33:48 GMT
WORKDIR /var/lib/ghost
# Tue, 05 Mar 2019 19:33:48 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 05 Mar 2019 19:33:49 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Tue, 05 Mar 2019 19:33:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 19:33:50 GMT
EXPOSE 2368
# Tue, 05 Mar 2019 19:33:51 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:2c9e1401ee6b0131741b02fed745b7f1d34bf29b0bc59f41e08dc969a710fc58`  
		Last Modified: Tue, 05 Mar 2019 12:45:42 GMT  
		Size: 22.3 MB (22345383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a69bf5a87f6ca372cf532eac6f88650232f774c7127c6bd9fe82cf04846490`  
		Last Modified: Tue, 05 Mar 2019 15:30:23 GMT  
		Size: 4.2 KB (4151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8247e2fb2aa9fd4d18ea49fdbe3fd5e70c8716c98ee7d445b3531693aac851`  
		Last Modified: Tue, 05 Mar 2019 15:30:29 GMT  
		Size: 27.9 MB (27862343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3f1e837f6496a2972d53f392257b74407520e1276c08957314ce29bafe98b14`  
		Last Modified: Tue, 05 Mar 2019 15:30:23 GMT  
		Size: 1.3 MB (1321441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a64ba830e16748d30745eeea9cc9ace200cf44f72f85b66607aa12ced01b9ae`  
		Last Modified: Tue, 05 Mar 2019 19:34:32 GMT  
		Size: 487.0 KB (487046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d50692248351b00eea736e3dcf763d2e79a57654d8798a9fef7a9b29f12f4a8`  
		Last Modified: Tue, 05 Mar 2019 19:34:39 GMT  
		Size: 17.4 MB (17412692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d227eddde9ec550aa1b757df34b4a323149219a8cea0c03ffc93757b1a1537`  
		Last Modified: Tue, 05 Mar 2019 19:35:33 GMT  
		Size: 96.4 MB (96400986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0dbabbea7dfb7290e05333be7a6d6c5d41461cb8586942c8c76ce182e608a5`  
		Last Modified: Tue, 05 Mar 2019 19:35:15 GMT  
		Size: 31.0 MB (30967434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2594690415c008a24e783893d66489d67aca626322b6e6f04d6d923ec22edd5e`  
		Last Modified: Tue, 05 Mar 2019 19:35:07 GMT  
		Size: 588.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25.7`

```console
$ docker pull ghost@sha256:6dd80eca38ebf2a622038dfe693bc754e2210beb2f64b96ec5856e2d8c035d6f
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
$ docker pull ghost@sha256:c80bd5d8ba2562b284adc1fc8c2754875e0e7315e07750b969f104a641961e48
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.1 MB (187059451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c051597338c737877b0217bc8cd38e3f7cf3ad21fa23fcb7d2c8b468161f07d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:39:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 05 Mar 2019 03:39:21 GMT
ENV NODE_VERSION=8.15.1
# Tue, 05 Mar 2019 03:39:41 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Mar 2019 03:39:41 GMT
ENV YARN_VERSION=1.12.3
# Tue, 05 Mar 2019 03:39:44 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Mar 2019 03:39:44 GMT
CMD ["node"]
# Tue, 05 Mar 2019 12:34:47 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 12:34:51 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Mar 2019 12:34:52 GMT
ENV NODE_ENV=production
# Tue, 05 Mar 2019 12:34:52 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 05 Mar 2019 12:35:24 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 05 Mar 2019 12:35:25 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 05 Mar 2019 12:35:26 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 05 Mar 2019 12:37:20 GMT
ENV GHOST_VERSION=1.25.7
# Tue, 05 Mar 2019 12:38:29 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 05 Mar 2019 12:38:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 05 Mar 2019 12:38:48 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 05 Mar 2019 12:38:48 GMT
WORKDIR /var/lib/ghost
# Tue, 05 Mar 2019 12:38:49 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 05 Mar 2019 12:38:49 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Tue, 05 Mar 2019 12:38:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 12:38:50 GMT
EXPOSE 2368
# Tue, 05 Mar 2019 12:38:50 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19dd238db8995f783250a0dd30f6c127d9f2e1b4702e417d3a34b4693022cab8`  
		Last Modified: Tue, 05 Mar 2019 03:49:28 GMT  
		Size: 4.1 KB (4144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da38310bbd9763801810f8793a564eab36805e429586bb0f653a3cc0702742a3`  
		Last Modified: Tue, 05 Mar 2019 03:49:35 GMT  
		Size: 28.0 MB (28017497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25422d96e287e9b9967dac86926d6763609cbd09207d45acffc094bc6043847`  
		Last Modified: Tue, 05 Mar 2019 03:49:27 GMT  
		Size: 1.3 MB (1321438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cec8e97cfc6fef48429e81db9779580f6de77e8ae16c0da64f972832eab2ea1`  
		Last Modified: Tue, 05 Mar 2019 12:39:21 GMT  
		Size: 500.9 KB (500920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7900078ee90c4dd169c5c35ad68f7d9d78fdf94b77daf9aad48b234ab80ded95`  
		Last Modified: Tue, 05 Mar 2019 12:39:28 GMT  
		Size: 17.4 MB (17412256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b5bd5feda4cf8241ba1ce59d6c87c0490ec964c72bc381faf0196345f563a4`  
		Last Modified: Tue, 05 Mar 2019 12:40:35 GMT  
		Size: 104.1 MB (104099271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6517fb0f073342ea9af5b63bdadd0513959ec8912c512fbd807510cf2f509e46`  
		Last Modified: Tue, 05 Mar 2019 12:40:09 GMT  
		Size: 13.2 MB (13207305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ddf8eb1f63bfdcb923a141611dd65363f5f5a720ded112015cd8b9c6497f49`  
		Last Modified: Tue, 05 Mar 2019 12:40:04 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.7` - linux; arm variant v7

```console
$ docker pull ghost@sha256:fff0a1d917e25d5a79020c072f08a9b08204216bd2b0342cc7d919afa361f9f4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.8 MB (189780707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fb90709fc991108448c87799be99fe76147acad7f8ff6f7fc273c160b5befd3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:04:04 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 05 Mar 2019 14:04:04 GMT
ENV NODE_VERSION=8.15.1
# Tue, 05 Mar 2019 14:04:34 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Mar 2019 14:04:35 GMT
ENV YARN_VERSION=1.12.3
# Tue, 05 Mar 2019 14:04:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Mar 2019 14:04:42 GMT
CMD ["node"]
# Tue, 05 Mar 2019 17:15:52 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 17:15:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Mar 2019 17:15:57 GMT
ENV NODE_ENV=production
# Tue, 05 Mar 2019 17:15:57 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 05 Mar 2019 17:16:38 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 05 Mar 2019 17:16:41 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 05 Mar 2019 17:16:41 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 05 Mar 2019 17:22:11 GMT
ENV GHOST_VERSION=1.25.7
# Tue, 05 Mar 2019 17:23:44 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 05 Mar 2019 17:23:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 05 Mar 2019 17:27:11 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 05 Mar 2019 17:27:11 GMT
WORKDIR /var/lib/ghost
# Tue, 05 Mar 2019 17:27:12 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 05 Mar 2019 17:27:12 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Tue, 05 Mar 2019 17:27:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 17:27:13 GMT
EXPOSE 2368
# Tue, 05 Mar 2019 17:27:14 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0ec74be39414de5fbb3c3c6d581fe9f01c5fe455a62141eff10d3c2b48a32c`  
		Last Modified: Tue, 05 Mar 2019 14:13:24 GMT  
		Size: 4.2 KB (4171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65a5c9d2267b657be520c54ec762c1a6e3837df47ca086a53fe7f3991e0d1fa`  
		Last Modified: Tue, 05 Mar 2019 14:13:33 GMT  
		Size: 25.5 MB (25472745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935cec4e970287eba460f49bc5a9f1a5bfc50af8c5392444bc16efbb92b4aa0f`  
		Last Modified: Tue, 05 Mar 2019 14:13:25 GMT  
		Size: 1.3 MB (1321447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f6de281e0194a45a36fef43c2d259dcb5de801e148c2d9ff8b91ca2282dfac`  
		Last Modified: Tue, 05 Mar 2019 17:27:35 GMT  
		Size: 475.4 KB (475431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3976554702f9bf6cedf7d4ace917931fbf47b943ebef3a4f91a3940244d9eeca`  
		Last Modified: Tue, 05 Mar 2019 17:27:45 GMT  
		Size: 17.4 MB (17411216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c57b6cdf5e20f69820385cc49d90f606f2547ef4e7af2b1a6fff33d228d823`  
		Last Modified: Tue, 05 Mar 2019 17:29:02 GMT  
		Size: 96.4 MB (96357247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:804e926a5f548138429ee0c930fd9252137f680b56d38d9f2db97a240d8b3232`  
		Last Modified: Tue, 05 Mar 2019 17:28:32 GMT  
		Size: 29.5 MB (29455368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba8fc75dcd711613958ee11dad67f237a16d6f148f3f90c00d291e0ef86221e`  
		Last Modified: Tue, 05 Mar 2019 17:28:24 GMT  
		Size: 588.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.7` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:06a775da17d9066ee52fdfa02d0e290fe2a09e443ce5f45bd35518cf5f135b98
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.0 MB (197028132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bfbf83721f0e9a07806778ae999b4e157b6e3e0d24c5a11b34d1b67770b2c6c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 00:55:30 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 01 Mar 2019 10:10:44 GMT
ENV NODE_VERSION=8.15.1
# Fri, 01 Mar 2019 10:12:06 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 01 Mar 2019 10:12:07 GMT
ENV YARN_VERSION=1.12.3
# Fri, 01 Mar 2019 10:12:15 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 01 Mar 2019 10:12:16 GMT
CMD ["node"]
# Fri, 01 Mar 2019 11:41:40 GMT
ENV GOSU_VERSION=1.10
# Fri, 01 Mar 2019 11:41:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 01 Mar 2019 11:41:47 GMT
ENV NODE_ENV=production
# Fri, 01 Mar 2019 11:41:48 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Fri, 01 Mar 2019 11:42:26 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 01 Mar 2019 11:42:27 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 01 Mar 2019 11:42:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 01 Mar 2019 11:49:22 GMT
ENV GHOST_VERSION=1.25.7
# Fri, 01 Mar 2019 11:50:40 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 01 Mar 2019 11:50:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 01 Mar 2019 11:55:22 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 01 Mar 2019 11:55:23 GMT
WORKDIR /var/lib/ghost
# Fri, 01 Mar 2019 11:55:23 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 01 Mar 2019 11:55:24 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Fri, 01 Mar 2019 11:55:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Mar 2019 11:55:25 GMT
EXPOSE 2368
# Fri, 01 Mar 2019 11:55:26 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cde3cb8d6c0e984b84c0cb58e131df0c9cf333683af998db5e0cfcaf12b7393`  
		Last Modified: Thu, 07 Feb 2019 01:05:20 GMT  
		Size: 4.2 KB (4150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:953b766fdf579ba8a497d21838004a0d221083949f2523b0e872c57b6870e3da`  
		Last Modified: Fri, 01 Mar 2019 11:22:49 GMT  
		Size: 26.7 MB (26700656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd39b68f82af7807c06398e865c1d436c12e76629ed0d271856e7a01aaeb5a48`  
		Last Modified: Fri, 01 Mar 2019 11:22:37 GMT  
		Size: 1.3 MB (1321438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ced6cca8c8873b9dc061765fc36024a7b69a14318b6f49af60115cc6b7da9a5`  
		Last Modified: Fri, 01 Mar 2019 11:56:04 GMT  
		Size: 468.9 KB (468939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76849c2b5ae6d78bb9bf4bbdaf75447c1a1d4bb64fcb16eeb4c413f4a2555e45`  
		Last Modified: Fri, 01 Mar 2019 11:56:14 GMT  
		Size: 17.4 MB (17399341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407f56e576b4ee8066f95d50500802c3c64c63f895e6d380a8c65216ece721bd`  
		Last Modified: Fri, 01 Mar 2019 11:57:40 GMT  
		Size: 96.4 MB (96405183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d114e92fb0adb964454d78d9ffe8f62d460ce5aeb313d1512774eb36a1d1d565`  
		Last Modified: Fri, 01 Mar 2019 11:57:14 GMT  
		Size: 34.4 MB (34377678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db56387622601a67a861cdb37b60d33f15e237f34f9c7e23d85592c66d7861f9`  
		Last Modified: Fri, 01 Mar 2019 11:57:00 GMT  
		Size: 588.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.7` - linux; 386

```console
$ docker pull ghost@sha256:a28085daff35d24e3383870afcbceb339d3357ac6b1aecc663d4183961c446a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 MB (197378246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6110272f4811a066015d6d97e92bb9e3ce4ff2d6a7f7931c3519a01ae723ade0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 16:08:15 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 05 Mar 2019 16:08:15 GMT
ENV NODE_VERSION=8.15.1
# Tue, 05 Mar 2019 16:08:34 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Mar 2019 16:08:34 GMT
ENV YARN_VERSION=1.12.3
# Tue, 05 Mar 2019 16:08:37 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Mar 2019 16:08:38 GMT
CMD ["node"]
# Wed, 06 Mar 2019 00:14:17 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Mar 2019 00:14:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Mar 2019 00:14:21 GMT
ENV NODE_ENV=production
# Wed, 06 Mar 2019 00:14:21 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Wed, 06 Mar 2019 00:14:43 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Mar 2019 00:14:43 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Mar 2019 00:14:43 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Mar 2019 00:17:22 GMT
ENV GHOST_VERSION=1.25.7
# Wed, 06 Mar 2019 00:18:02 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 06 Mar 2019 00:18:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 06 Mar 2019 00:19:37 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Mar 2019 00:19:37 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Mar 2019 00:19:37 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Mar 2019 00:19:37 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Wed, 06 Mar 2019 00:19:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Mar 2019 00:19:38 GMT
EXPOSE 2368
# Wed, 06 Mar 2019 00:19:38 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b42aa871f86bceea09dc73ea6e00cd2eb8b2532a1d4cbdcf7af8ed86e0f02e`  
		Last Modified: Tue, 05 Mar 2019 16:14:00 GMT  
		Size: 4.1 KB (4135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f66dda9b1a76e28608400319c4054d5c5bc0adb643072c71cd319915e63f49e`  
		Last Modified: Tue, 05 Mar 2019 16:14:10 GMT  
		Size: 27.8 MB (27849482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76027775c669bf1beab618f9faf82efba1362d4b2f9c5964fd4509d20ab35c0e`  
		Last Modified: Tue, 05 Mar 2019 16:14:01 GMT  
		Size: 1.3 MB (1321442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532e0ab66a10fc74fcabf309a152db3e52341163f62e1712700b5b0103645582`  
		Last Modified: Wed, 06 Mar 2019 00:20:02 GMT  
		Size: 480.8 KB (480829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f60b76bf5b061e75b87bac430d5a6bb599679c8e41bde84787e5f591ac9dc45`  
		Last Modified: Wed, 06 Mar 2019 00:20:09 GMT  
		Size: 17.4 MB (17412683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1df7a1c2fdada017ee160965e276b959bee017176bf86bc483a21feb4a488b`  
		Last Modified: Wed, 06 Mar 2019 00:21:02 GMT  
		Size: 96.4 MB (96361840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8411244b1e3fea8fcfcf6e2d926691375568d9765af5a543dcce64d9ef499e2`  
		Last Modified: Wed, 06 Mar 2019 00:20:44 GMT  
		Size: 30.8 MB (30821568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0246a8f60e755ca965bde6a494f92967f44ebe3e9bf99c0575620f42cad7c90`  
		Last Modified: Wed, 06 Mar 2019 00:20:36 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.7` - linux; ppc64le

```console
$ docker pull ghost@sha256:1a360f3caaf694afb056439e770217402452991c1ffed89667a4db26061acc6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.4 MB (196351698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c20f0167f9024c3b2e099e3d6da693fb7a00999d80aaabbf7657a09ab9528e3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:38:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 05 Mar 2019 11:38:20 GMT
ENV NODE_VERSION=8.15.1
# Tue, 05 Mar 2019 11:39:47 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Mar 2019 11:39:51 GMT
ENV YARN_VERSION=1.12.3
# Tue, 05 Mar 2019 11:40:00 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Mar 2019 11:40:03 GMT
CMD ["node"]
# Tue, 05 Mar 2019 17:12:55 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 17:13:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Mar 2019 17:13:06 GMT
ENV NODE_ENV=production
# Tue, 05 Mar 2019 17:13:10 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 05 Mar 2019 17:13:48 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 05 Mar 2019 17:13:54 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 05 Mar 2019 17:13:56 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 05 Mar 2019 17:21:55 GMT
ENV GHOST_VERSION=1.25.7
# Tue, 05 Mar 2019 17:25:26 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 05 Mar 2019 17:25:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 05 Mar 2019 17:29:29 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 05 Mar 2019 17:29:33 GMT
WORKDIR /var/lib/ghost
# Tue, 05 Mar 2019 17:29:35 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 05 Mar 2019 17:29:36 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Tue, 05 Mar 2019 17:29:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 17:29:42 GMT
EXPOSE 2368
# Tue, 05 Mar 2019 17:29:44 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7146b59d4f68f2ab05830fe018c20d50c6af1bc7e59dd6222e557003294b7de`  
		Last Modified: Tue, 05 Mar 2019 11:43:34 GMT  
		Size: 4.2 KB (4171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb865b0db5c9451360b58b81eb5c75d86f218324f5ffc653590fb49400a4056`  
		Last Modified: Tue, 05 Mar 2019 11:43:41 GMT  
		Size: 27.0 MB (26969108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b65f1ce016ac02f0e4180eecb0bf6536c48e1323d8c131b6f21d1431399c56`  
		Last Modified: Tue, 05 Mar 2019 11:43:34 GMT  
		Size: 1.3 MB (1321459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2876c660201fba48fb93964ec070c1b61d6a892181c3f24e21265248a66cd0be`  
		Last Modified: Tue, 05 Mar 2019 17:30:24 GMT  
		Size: 470.1 KB (470077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8998686f907bc120037e34fed178f04fefdda5834860fd8d72cfd5e2661373f8`  
		Last Modified: Tue, 05 Mar 2019 17:30:53 GMT  
		Size: 17.4 MB (17412061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:822d05e2a3359a9688acc837b08669711c2b21a175d78cff75ea1cfecd0ea56d`  
		Last Modified: Tue, 05 Mar 2019 17:33:43 GMT  
		Size: 96.4 MB (96404244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e58c6dd2c0ffd569add79f003fb5fe63b8bbb87d78ff395c46e510b780321fc`  
		Last Modified: Tue, 05 Mar 2019 17:32:45 GMT  
		Size: 31.0 MB (31018495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1b1c41fa4e4874b2793c71ada47871468a4e6333e40036d256e087ca988403`  
		Last Modified: Tue, 05 Mar 2019 17:32:32 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.7` - linux; s390x

```console
$ docker pull ghost@sha256:b1e7b80ffd18482a3e8864b51e07318688269f28a14c21648707d64c08cf389e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.8 MB (196802064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:540e6fd59e9b224c8a3ddd0b871436a1a818f45d2ba9c39f9d3990e57ebf7e3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:27:33 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 05 Mar 2019 15:27:33 GMT
ENV NODE_VERSION=8.15.1
# Tue, 05 Mar 2019 15:27:52 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Mar 2019 15:27:52 GMT
ENV YARN_VERSION=1.12.3
# Tue, 05 Mar 2019 15:27:56 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Mar 2019 15:27:57 GMT
CMD ["node"]
# Tue, 05 Mar 2019 19:27:16 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 19:27:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Mar 2019 19:27:21 GMT
ENV NODE_ENV=production
# Tue, 05 Mar 2019 19:27:23 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 05 Mar 2019 19:27:48 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 05 Mar 2019 19:27:49 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 05 Mar 2019 19:27:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 05 Mar 2019 19:30:48 GMT
ENV GHOST_VERSION=1.25.7
# Tue, 05 Mar 2019 19:31:42 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 05 Mar 2019 19:31:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 05 Mar 2019 19:33:47 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 05 Mar 2019 19:33:48 GMT
WORKDIR /var/lib/ghost
# Tue, 05 Mar 2019 19:33:48 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 05 Mar 2019 19:33:49 GMT
COPY file:c545e8089623a88c16a70df0d5725af6d1c0ece9c80b2db5ccdac3908fc9c758 in /usr/local/bin 
# Tue, 05 Mar 2019 19:33:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 19:33:50 GMT
EXPOSE 2368
# Tue, 05 Mar 2019 19:33:51 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:2c9e1401ee6b0131741b02fed745b7f1d34bf29b0bc59f41e08dc969a710fc58`  
		Last Modified: Tue, 05 Mar 2019 12:45:42 GMT  
		Size: 22.3 MB (22345383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a69bf5a87f6ca372cf532eac6f88650232f774c7127c6bd9fe82cf04846490`  
		Last Modified: Tue, 05 Mar 2019 15:30:23 GMT  
		Size: 4.2 KB (4151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8247e2fb2aa9fd4d18ea49fdbe3fd5e70c8716c98ee7d445b3531693aac851`  
		Last Modified: Tue, 05 Mar 2019 15:30:29 GMT  
		Size: 27.9 MB (27862343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3f1e837f6496a2972d53f392257b74407520e1276c08957314ce29bafe98b14`  
		Last Modified: Tue, 05 Mar 2019 15:30:23 GMT  
		Size: 1.3 MB (1321441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a64ba830e16748d30745eeea9cc9ace200cf44f72f85b66607aa12ced01b9ae`  
		Last Modified: Tue, 05 Mar 2019 19:34:32 GMT  
		Size: 487.0 KB (487046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d50692248351b00eea736e3dcf763d2e79a57654d8798a9fef7a9b29f12f4a8`  
		Last Modified: Tue, 05 Mar 2019 19:34:39 GMT  
		Size: 17.4 MB (17412692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d227eddde9ec550aa1b757df34b4a323149219a8cea0c03ffc93757b1a1537`  
		Last Modified: Tue, 05 Mar 2019 19:35:33 GMT  
		Size: 96.4 MB (96400986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0dbabbea7dfb7290e05333be7a6d6c5d41461cb8586942c8c76ce182e608a5`  
		Last Modified: Tue, 05 Mar 2019 19:35:15 GMT  
		Size: 31.0 MB (30967434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2594690415c008a24e783893d66489d67aca626322b6e6f04d6d923ec22edd5e`  
		Last Modified: Tue, 05 Mar 2019 19:35:07 GMT  
		Size: 588.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25.7-alpine`

```console
$ docker pull ghost@sha256:fb2ca40c4cdf691b8992379f5ba1616696fc4a957e972be8cec0a29bcada11e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1.25.7-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:3456a2fc264fa43d1690037b20eb2cae71ab155abbb57076c7790589c4e25783
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.3 MB (158304650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ba1e34fd5a1dd053e4797af4363bfacbe504cfcafd4960cf16673b8047da32`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 00:48:28 GMT
ENV NODE_VERSION=8.15.1
# Fri, 08 Mar 2019 01:19:02 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 08 Mar 2019 01:19:02 GMT
ENV YARN_VERSION=1.12.3
# Fri, 08 Mar 2019 01:19:06 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 08 Mar 2019 01:19:07 GMT
CMD ["node"]
# Fri, 08 Mar 2019 05:14:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 08 Mar 2019 05:15:01 GMT
RUN apk add --no-cache 		bash
# Fri, 08 Mar 2019 05:15:01 GMT
ENV NODE_ENV=production
# Fri, 08 Mar 2019 05:15:01 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Fri, 08 Mar 2019 05:15:21 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 08 Mar 2019 05:15:22 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 08 Mar 2019 05:15:22 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 08 Mar 2019 05:17:47 GMT
ENV GHOST_VERSION=1.25.7
# Fri, 08 Mar 2019 05:19:10 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 08 Mar 2019 05:19:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 08 Mar 2019 05:19:31 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 08 Mar 2019 05:19:31 GMT
WORKDIR /var/lib/ghost
# Fri, 08 Mar 2019 05:19:31 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 08 Mar 2019 05:19:32 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Fri, 08 Mar 2019 05:19:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:19:32 GMT
EXPOSE 2368
# Fri, 08 Mar 2019 05:19:33 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d566d24cf388bd16d96a8e5e6ae33a5a47916f36e8744d3d4b78c3ea7bcec9`  
		Last Modified: Fri, 08 Mar 2019 02:58:02 GMT  
		Size: 18.9 MB (18871091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd3a030a46142ea43b86902821374f95626b699f43bca04218f3d21b38f27b4`  
		Last Modified: Fri, 08 Mar 2019 02:57:57 GMT  
		Size: 1.3 MB (1328418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebaa7ccf73aa7e7a6ebd65916a58c61420960f78622c95129d3f1b3c3b20f72`  
		Last Modified: Fri, 08 Mar 2019 05:20:01 GMT  
		Size: 9.4 KB (9413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62938127832ddd653ec7c8d95bb16ed5276f215beb663d0f70642ad7e870de84`  
		Last Modified: Fri, 08 Mar 2019 05:20:05 GMT  
		Size: 1.2 MB (1173443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfe12eae0eda336c272d07e4bcb4eebc112ba82b819ab82f9448da00304b213`  
		Last Modified: Fri, 08 Mar 2019 05:20:28 GMT  
		Size: 17.4 MB (17408304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf8818b36264d206cb7f1bd6b0ebfbf7306d34007acbb76cba24a9a47980cf0`  
		Last Modified: Fri, 08 Mar 2019 05:21:40 GMT  
		Size: 104.1 MB (104098883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b518dad61447ca82e6776517c2a3788550063db6bab5cca1cf45f206858fce00`  
		Last Modified: Fri, 08 Mar 2019 05:21:07 GMT  
		Size: 13.2 MB (13207349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd9615cf43072dc44ead8e254a43c119a97b37a8f368f0880640a7e660ced77`  
		Last Modified: Fri, 08 Mar 2019 05:21:04 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.7-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:c078d6b77bfbd21b183cc7193775715a33b99497175abeda600f095e22e0694d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.4 MB (166435705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5167f4688a5dae779851f42ee7fad4d266e884556420ccfbcd0460f190382a91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:12 GMT
ADD file:12f605067cb5bbeacec221bac51e31824953cb25bb6660ef15bb4bb4141906ba in / 
# Fri, 08 Mar 2019 03:36:13 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:17:25 GMT
ENV NODE_VERSION=8.15.1
# Fri, 08 Mar 2019 04:21:05 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 08 Mar 2019 04:21:06 GMT
ENV YARN_VERSION=1.12.3
# Fri, 08 Mar 2019 04:21:12 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 08 Mar 2019 04:21:12 GMT
CMD ["node"]
# Fri, 08 Mar 2019 05:42:24 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 08 Mar 2019 05:42:27 GMT
RUN apk add --no-cache 		bash
# Fri, 08 Mar 2019 05:42:27 GMT
ENV NODE_ENV=production
# Fri, 08 Mar 2019 05:42:28 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Fri, 08 Mar 2019 05:43:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 08 Mar 2019 05:43:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 08 Mar 2019 05:43:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 08 Mar 2019 05:48:10 GMT
ENV GHOST_VERSION=1.25.7
# Fri, 08 Mar 2019 05:49:47 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 08 Mar 2019 05:49:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 08 Mar 2019 05:53:02 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 08 Mar 2019 05:53:03 GMT
WORKDIR /var/lib/ghost
# Fri, 08 Mar 2019 05:53:03 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 08 Mar 2019 05:53:03 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Fri, 08 Mar 2019 05:53:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:53:04 GMT
EXPOSE 2368
# Fri, 08 Mar 2019 05:53:04 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8394d8058172005229043bb0bda2cd7a5c4f934cf4c1beeb9a73c40c4edccd8`  
		Last Modified: Fri, 08 Mar 2019 04:37:35 GMT  
		Size: 17.8 MB (17832750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3475b68310e995c23407be0630cb1f49eff51180768b3f288f69ebfd7136368e`  
		Last Modified: Fri, 08 Mar 2019 04:37:29 GMT  
		Size: 1.3 MB (1328472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7da5f74865732f383e8992ebf7fa4cfa5f740db45ee4563dbe4a475eb7b6866`  
		Last Modified: Fri, 08 Mar 2019 05:53:19 GMT  
		Size: 9.3 KB (9338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1974303ef6790ee692ac75b0cb27800cfffbc5bbd8bd67b4a586391ec36a973`  
		Last Modified: Fri, 08 Mar 2019 05:53:19 GMT  
		Size: 1.1 MB (1127600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f06c72d8f464e14487485de6a3f7aabe86a75f2d7d25994e403c1a81204b2f`  
		Last Modified: Fri, 08 Mar 2019 05:53:29 GMT  
		Size: 17.4 MB (17411646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e328427629d6d672e354506a5588d89507b6ea8961bf8569ae0758944f7a1c`  
		Last Modified: Fri, 08 Mar 2019 05:54:48 GMT  
		Size: 96.4 MB (96360680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1887aebc9a37077ec237b7be92a8e7360b67a646ae799fe358023f523040bde0`  
		Last Modified: Fri, 08 Mar 2019 05:54:19 GMT  
		Size: 30.2 MB (30218521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb77a8e74948c39fd5d4ad8ea017553086e7411e58e415ea6f0694fc46458ff6`  
		Last Modified: Fri, 08 Mar 2019 05:54:11 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.7-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:f1cb477ba5a61b7f2aaa1ef4ef8398a4824c5bb38fce893081fc8f3f0683d246
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.1 MB (168057521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ee607810fbafa2d12444796e8b299d30aa7077e92e6344f31723c7bd278d0c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:43 GMT
ADD file:a0b688c2ad4ec9d0535b05f0f63ecc15d1af3e496ad8fcf29809af582add17f0 in / 
# Fri, 08 Mar 2019 03:37:45 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:00:13 GMT
ENV NODE_VERSION=8.15.1
# Fri, 08 Mar 2019 05:10:27 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 08 Mar 2019 05:10:33 GMT
ENV YARN_VERSION=1.12.3
# Fri, 08 Mar 2019 05:10:47 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 08 Mar 2019 05:10:49 GMT
CMD ["node"]
# Fri, 08 Mar 2019 08:46:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 08 Mar 2019 08:46:24 GMT
RUN apk add --no-cache 		bash
# Fri, 08 Mar 2019 08:46:25 GMT
ENV NODE_ENV=production
# Fri, 08 Mar 2019 08:46:27 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Fri, 08 Mar 2019 08:47:08 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 08 Mar 2019 08:47:12 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 08 Mar 2019 08:47:17 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 08 Mar 2019 08:52:44 GMT
ENV GHOST_VERSION=1.25.7
# Fri, 08 Mar 2019 08:53:56 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 08 Mar 2019 08:54:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 08 Mar 2019 08:56:20 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 08 Mar 2019 08:56:23 GMT
WORKDIR /var/lib/ghost
# Fri, 08 Mar 2019 08:56:26 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 08 Mar 2019 08:56:28 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Fri, 08 Mar 2019 08:56:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 08:56:31 GMT
EXPOSE 2368
# Fri, 08 Mar 2019 08:56:33 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:0c6396bb25a488a80e061dc7e486b5fee792a25d36fbafa08c0b0f31ef402eac`  
		Last Modified: Fri, 08 Mar 2019 03:38:44 GMT  
		Size: 2.2 MB (2194926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54b94b204eb1456bcb60e57433eebb8ff746477ffd2ffd426b7e6556c51e556`  
		Last Modified: Fri, 08 Mar 2019 06:04:20 GMT  
		Size: 18.6 MB (18647112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13e54023987856b7b5e1dc5e439a25362de2b0c052d9e68394c10fd66ec51e1`  
		Last Modified: Fri, 08 Mar 2019 06:04:08 GMT  
		Size: 1.3 MB (1328454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89112a5c7a13c3819dd790476e6f8211e3c725c74228b2d94a6e36ea27fd959f`  
		Last Modified: Fri, 08 Mar 2019 08:56:57 GMT  
		Size: 9.9 KB (9866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744d4cdf5ae1062bbba82f25f9252048d7efa314483f3ef4b55b5580e9e77930`  
		Last Modified: Fri, 08 Mar 2019 08:56:54 GMT  
		Size: 1.2 MB (1188859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b624075e7b00f817e8374f26b343fe91f6aa10509301f889b7e23ff3e467fb7`  
		Last Modified: Fri, 08 Mar 2019 08:57:11 GMT  
		Size: 17.4 MB (17419550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360f4d81feeff9566ebd26611f1252249d10d947b91dbfe70b8be354fde41b21`  
		Last Modified: Fri, 08 Mar 2019 08:58:43 GMT  
		Size: 96.4 MB (96403414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c0b006b8039b9f118d8d1549686f3e5ef52492538fa58243a5c46b9d12fb4f6`  
		Last Modified: Fri, 08 Mar 2019 08:58:21 GMT  
		Size: 30.9 MB (30864765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8c10e2f84568dccdf6faa3f9f4b5366a279f29a9601f4979a1c4880d15e953`  
		Last Modified: Fri, 08 Mar 2019 08:58:15 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25-alpine`

```console
$ docker pull ghost@sha256:fb2ca40c4cdf691b8992379f5ba1616696fc4a957e972be8cec0a29bcada11e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1.25-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:3456a2fc264fa43d1690037b20eb2cae71ab155abbb57076c7790589c4e25783
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.3 MB (158304650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ba1e34fd5a1dd053e4797af4363bfacbe504cfcafd4960cf16673b8047da32`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 00:48:28 GMT
ENV NODE_VERSION=8.15.1
# Fri, 08 Mar 2019 01:19:02 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 08 Mar 2019 01:19:02 GMT
ENV YARN_VERSION=1.12.3
# Fri, 08 Mar 2019 01:19:06 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 08 Mar 2019 01:19:07 GMT
CMD ["node"]
# Fri, 08 Mar 2019 05:14:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 08 Mar 2019 05:15:01 GMT
RUN apk add --no-cache 		bash
# Fri, 08 Mar 2019 05:15:01 GMT
ENV NODE_ENV=production
# Fri, 08 Mar 2019 05:15:01 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Fri, 08 Mar 2019 05:15:21 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 08 Mar 2019 05:15:22 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 08 Mar 2019 05:15:22 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 08 Mar 2019 05:17:47 GMT
ENV GHOST_VERSION=1.25.7
# Fri, 08 Mar 2019 05:19:10 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 08 Mar 2019 05:19:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 08 Mar 2019 05:19:31 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 08 Mar 2019 05:19:31 GMT
WORKDIR /var/lib/ghost
# Fri, 08 Mar 2019 05:19:31 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 08 Mar 2019 05:19:32 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Fri, 08 Mar 2019 05:19:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:19:32 GMT
EXPOSE 2368
# Fri, 08 Mar 2019 05:19:33 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d566d24cf388bd16d96a8e5e6ae33a5a47916f36e8744d3d4b78c3ea7bcec9`  
		Last Modified: Fri, 08 Mar 2019 02:58:02 GMT  
		Size: 18.9 MB (18871091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd3a030a46142ea43b86902821374f95626b699f43bca04218f3d21b38f27b4`  
		Last Modified: Fri, 08 Mar 2019 02:57:57 GMT  
		Size: 1.3 MB (1328418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebaa7ccf73aa7e7a6ebd65916a58c61420960f78622c95129d3f1b3c3b20f72`  
		Last Modified: Fri, 08 Mar 2019 05:20:01 GMT  
		Size: 9.4 KB (9413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62938127832ddd653ec7c8d95bb16ed5276f215beb663d0f70642ad7e870de84`  
		Last Modified: Fri, 08 Mar 2019 05:20:05 GMT  
		Size: 1.2 MB (1173443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfe12eae0eda336c272d07e4bcb4eebc112ba82b819ab82f9448da00304b213`  
		Last Modified: Fri, 08 Mar 2019 05:20:28 GMT  
		Size: 17.4 MB (17408304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf8818b36264d206cb7f1bd6b0ebfbf7306d34007acbb76cba24a9a47980cf0`  
		Last Modified: Fri, 08 Mar 2019 05:21:40 GMT  
		Size: 104.1 MB (104098883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b518dad61447ca82e6776517c2a3788550063db6bab5cca1cf45f206858fce00`  
		Last Modified: Fri, 08 Mar 2019 05:21:07 GMT  
		Size: 13.2 MB (13207349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd9615cf43072dc44ead8e254a43c119a97b37a8f368f0880640a7e660ced77`  
		Last Modified: Fri, 08 Mar 2019 05:21:04 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:c078d6b77bfbd21b183cc7193775715a33b99497175abeda600f095e22e0694d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.4 MB (166435705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5167f4688a5dae779851f42ee7fad4d266e884556420ccfbcd0460f190382a91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:12 GMT
ADD file:12f605067cb5bbeacec221bac51e31824953cb25bb6660ef15bb4bb4141906ba in / 
# Fri, 08 Mar 2019 03:36:13 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:17:25 GMT
ENV NODE_VERSION=8.15.1
# Fri, 08 Mar 2019 04:21:05 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 08 Mar 2019 04:21:06 GMT
ENV YARN_VERSION=1.12.3
# Fri, 08 Mar 2019 04:21:12 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 08 Mar 2019 04:21:12 GMT
CMD ["node"]
# Fri, 08 Mar 2019 05:42:24 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 08 Mar 2019 05:42:27 GMT
RUN apk add --no-cache 		bash
# Fri, 08 Mar 2019 05:42:27 GMT
ENV NODE_ENV=production
# Fri, 08 Mar 2019 05:42:28 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Fri, 08 Mar 2019 05:43:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 08 Mar 2019 05:43:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 08 Mar 2019 05:43:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 08 Mar 2019 05:48:10 GMT
ENV GHOST_VERSION=1.25.7
# Fri, 08 Mar 2019 05:49:47 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 08 Mar 2019 05:49:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 08 Mar 2019 05:53:02 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 08 Mar 2019 05:53:03 GMT
WORKDIR /var/lib/ghost
# Fri, 08 Mar 2019 05:53:03 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 08 Mar 2019 05:53:03 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Fri, 08 Mar 2019 05:53:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:53:04 GMT
EXPOSE 2368
# Fri, 08 Mar 2019 05:53:04 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8394d8058172005229043bb0bda2cd7a5c4f934cf4c1beeb9a73c40c4edccd8`  
		Last Modified: Fri, 08 Mar 2019 04:37:35 GMT  
		Size: 17.8 MB (17832750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3475b68310e995c23407be0630cb1f49eff51180768b3f288f69ebfd7136368e`  
		Last Modified: Fri, 08 Mar 2019 04:37:29 GMT  
		Size: 1.3 MB (1328472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7da5f74865732f383e8992ebf7fa4cfa5f740db45ee4563dbe4a475eb7b6866`  
		Last Modified: Fri, 08 Mar 2019 05:53:19 GMT  
		Size: 9.3 KB (9338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1974303ef6790ee692ac75b0cb27800cfffbc5bbd8bd67b4a586391ec36a973`  
		Last Modified: Fri, 08 Mar 2019 05:53:19 GMT  
		Size: 1.1 MB (1127600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f06c72d8f464e14487485de6a3f7aabe86a75f2d7d25994e403c1a81204b2f`  
		Last Modified: Fri, 08 Mar 2019 05:53:29 GMT  
		Size: 17.4 MB (17411646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e328427629d6d672e354506a5588d89507b6ea8961bf8569ae0758944f7a1c`  
		Last Modified: Fri, 08 Mar 2019 05:54:48 GMT  
		Size: 96.4 MB (96360680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1887aebc9a37077ec237b7be92a8e7360b67a646ae799fe358023f523040bde0`  
		Last Modified: Fri, 08 Mar 2019 05:54:19 GMT  
		Size: 30.2 MB (30218521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb77a8e74948c39fd5d4ad8ea017553086e7411e58e415ea6f0694fc46458ff6`  
		Last Modified: Fri, 08 Mar 2019 05:54:11 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:f1cb477ba5a61b7f2aaa1ef4ef8398a4824c5bb38fce893081fc8f3f0683d246
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.1 MB (168057521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ee607810fbafa2d12444796e8b299d30aa7077e92e6344f31723c7bd278d0c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:43 GMT
ADD file:a0b688c2ad4ec9d0535b05f0f63ecc15d1af3e496ad8fcf29809af582add17f0 in / 
# Fri, 08 Mar 2019 03:37:45 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:00:13 GMT
ENV NODE_VERSION=8.15.1
# Fri, 08 Mar 2019 05:10:27 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 08 Mar 2019 05:10:33 GMT
ENV YARN_VERSION=1.12.3
# Fri, 08 Mar 2019 05:10:47 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 08 Mar 2019 05:10:49 GMT
CMD ["node"]
# Fri, 08 Mar 2019 08:46:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 08 Mar 2019 08:46:24 GMT
RUN apk add --no-cache 		bash
# Fri, 08 Mar 2019 08:46:25 GMT
ENV NODE_ENV=production
# Fri, 08 Mar 2019 08:46:27 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Fri, 08 Mar 2019 08:47:08 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 08 Mar 2019 08:47:12 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 08 Mar 2019 08:47:17 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 08 Mar 2019 08:52:44 GMT
ENV GHOST_VERSION=1.25.7
# Fri, 08 Mar 2019 08:53:56 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 08 Mar 2019 08:54:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 08 Mar 2019 08:56:20 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 08 Mar 2019 08:56:23 GMT
WORKDIR /var/lib/ghost
# Fri, 08 Mar 2019 08:56:26 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 08 Mar 2019 08:56:28 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Fri, 08 Mar 2019 08:56:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 08:56:31 GMT
EXPOSE 2368
# Fri, 08 Mar 2019 08:56:33 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:0c6396bb25a488a80e061dc7e486b5fee792a25d36fbafa08c0b0f31ef402eac`  
		Last Modified: Fri, 08 Mar 2019 03:38:44 GMT  
		Size: 2.2 MB (2194926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54b94b204eb1456bcb60e57433eebb8ff746477ffd2ffd426b7e6556c51e556`  
		Last Modified: Fri, 08 Mar 2019 06:04:20 GMT  
		Size: 18.6 MB (18647112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13e54023987856b7b5e1dc5e439a25362de2b0c052d9e68394c10fd66ec51e1`  
		Last Modified: Fri, 08 Mar 2019 06:04:08 GMT  
		Size: 1.3 MB (1328454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89112a5c7a13c3819dd790476e6f8211e3c725c74228b2d94a6e36ea27fd959f`  
		Last Modified: Fri, 08 Mar 2019 08:56:57 GMT  
		Size: 9.9 KB (9866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744d4cdf5ae1062bbba82f25f9252048d7efa314483f3ef4b55b5580e9e77930`  
		Last Modified: Fri, 08 Mar 2019 08:56:54 GMT  
		Size: 1.2 MB (1188859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b624075e7b00f817e8374f26b343fe91f6aa10509301f889b7e23ff3e467fb7`  
		Last Modified: Fri, 08 Mar 2019 08:57:11 GMT  
		Size: 17.4 MB (17419550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360f4d81feeff9566ebd26611f1252249d10d947b91dbfe70b8be354fde41b21`  
		Last Modified: Fri, 08 Mar 2019 08:58:43 GMT  
		Size: 96.4 MB (96403414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c0b006b8039b9f118d8d1549686f3e5ef52492538fa58243a5c46b9d12fb4f6`  
		Last Modified: Fri, 08 Mar 2019 08:58:21 GMT  
		Size: 30.9 MB (30864765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8c10e2f84568dccdf6faa3f9f4b5366a279f29a9601f4979a1c4880d15e953`  
		Last Modified: Fri, 08 Mar 2019 08:58:15 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:fb2ca40c4cdf691b8992379f5ba1616696fc4a957e972be8cec0a29bcada11e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:3456a2fc264fa43d1690037b20eb2cae71ab155abbb57076c7790589c4e25783
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.3 MB (158304650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ba1e34fd5a1dd053e4797af4363bfacbe504cfcafd4960cf16673b8047da32`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 00:48:28 GMT
ENV NODE_VERSION=8.15.1
# Fri, 08 Mar 2019 01:19:02 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 08 Mar 2019 01:19:02 GMT
ENV YARN_VERSION=1.12.3
# Fri, 08 Mar 2019 01:19:06 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 08 Mar 2019 01:19:07 GMT
CMD ["node"]
# Fri, 08 Mar 2019 05:14:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 08 Mar 2019 05:15:01 GMT
RUN apk add --no-cache 		bash
# Fri, 08 Mar 2019 05:15:01 GMT
ENV NODE_ENV=production
# Fri, 08 Mar 2019 05:15:01 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Fri, 08 Mar 2019 05:15:21 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 08 Mar 2019 05:15:22 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 08 Mar 2019 05:15:22 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 08 Mar 2019 05:17:47 GMT
ENV GHOST_VERSION=1.25.7
# Fri, 08 Mar 2019 05:19:10 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 08 Mar 2019 05:19:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 08 Mar 2019 05:19:31 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 08 Mar 2019 05:19:31 GMT
WORKDIR /var/lib/ghost
# Fri, 08 Mar 2019 05:19:31 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 08 Mar 2019 05:19:32 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Fri, 08 Mar 2019 05:19:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:19:32 GMT
EXPOSE 2368
# Fri, 08 Mar 2019 05:19:33 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d566d24cf388bd16d96a8e5e6ae33a5a47916f36e8744d3d4b78c3ea7bcec9`  
		Last Modified: Fri, 08 Mar 2019 02:58:02 GMT  
		Size: 18.9 MB (18871091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd3a030a46142ea43b86902821374f95626b699f43bca04218f3d21b38f27b4`  
		Last Modified: Fri, 08 Mar 2019 02:57:57 GMT  
		Size: 1.3 MB (1328418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebaa7ccf73aa7e7a6ebd65916a58c61420960f78622c95129d3f1b3c3b20f72`  
		Last Modified: Fri, 08 Mar 2019 05:20:01 GMT  
		Size: 9.4 KB (9413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62938127832ddd653ec7c8d95bb16ed5276f215beb663d0f70642ad7e870de84`  
		Last Modified: Fri, 08 Mar 2019 05:20:05 GMT  
		Size: 1.2 MB (1173443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfe12eae0eda336c272d07e4bcb4eebc112ba82b819ab82f9448da00304b213`  
		Last Modified: Fri, 08 Mar 2019 05:20:28 GMT  
		Size: 17.4 MB (17408304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf8818b36264d206cb7f1bd6b0ebfbf7306d34007acbb76cba24a9a47980cf0`  
		Last Modified: Fri, 08 Mar 2019 05:21:40 GMT  
		Size: 104.1 MB (104098883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b518dad61447ca82e6776517c2a3788550063db6bab5cca1cf45f206858fce00`  
		Last Modified: Fri, 08 Mar 2019 05:21:07 GMT  
		Size: 13.2 MB (13207349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd9615cf43072dc44ead8e254a43c119a97b37a8f368f0880640a7e660ced77`  
		Last Modified: Fri, 08 Mar 2019 05:21:04 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:c078d6b77bfbd21b183cc7193775715a33b99497175abeda600f095e22e0694d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.4 MB (166435705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5167f4688a5dae779851f42ee7fad4d266e884556420ccfbcd0460f190382a91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:12 GMT
ADD file:12f605067cb5bbeacec221bac51e31824953cb25bb6660ef15bb4bb4141906ba in / 
# Fri, 08 Mar 2019 03:36:13 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:17:25 GMT
ENV NODE_VERSION=8.15.1
# Fri, 08 Mar 2019 04:21:05 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 08 Mar 2019 04:21:06 GMT
ENV YARN_VERSION=1.12.3
# Fri, 08 Mar 2019 04:21:12 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 08 Mar 2019 04:21:12 GMT
CMD ["node"]
# Fri, 08 Mar 2019 05:42:24 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 08 Mar 2019 05:42:27 GMT
RUN apk add --no-cache 		bash
# Fri, 08 Mar 2019 05:42:27 GMT
ENV NODE_ENV=production
# Fri, 08 Mar 2019 05:42:28 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Fri, 08 Mar 2019 05:43:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 08 Mar 2019 05:43:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 08 Mar 2019 05:43:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 08 Mar 2019 05:48:10 GMT
ENV GHOST_VERSION=1.25.7
# Fri, 08 Mar 2019 05:49:47 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 08 Mar 2019 05:49:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 08 Mar 2019 05:53:02 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 08 Mar 2019 05:53:03 GMT
WORKDIR /var/lib/ghost
# Fri, 08 Mar 2019 05:53:03 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 08 Mar 2019 05:53:03 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Fri, 08 Mar 2019 05:53:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:53:04 GMT
EXPOSE 2368
# Fri, 08 Mar 2019 05:53:04 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8394d8058172005229043bb0bda2cd7a5c4f934cf4c1beeb9a73c40c4edccd8`  
		Last Modified: Fri, 08 Mar 2019 04:37:35 GMT  
		Size: 17.8 MB (17832750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3475b68310e995c23407be0630cb1f49eff51180768b3f288f69ebfd7136368e`  
		Last Modified: Fri, 08 Mar 2019 04:37:29 GMT  
		Size: 1.3 MB (1328472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7da5f74865732f383e8992ebf7fa4cfa5f740db45ee4563dbe4a475eb7b6866`  
		Last Modified: Fri, 08 Mar 2019 05:53:19 GMT  
		Size: 9.3 KB (9338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1974303ef6790ee692ac75b0cb27800cfffbc5bbd8bd67b4a586391ec36a973`  
		Last Modified: Fri, 08 Mar 2019 05:53:19 GMT  
		Size: 1.1 MB (1127600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f06c72d8f464e14487485de6a3f7aabe86a75f2d7d25994e403c1a81204b2f`  
		Last Modified: Fri, 08 Mar 2019 05:53:29 GMT  
		Size: 17.4 MB (17411646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e328427629d6d672e354506a5588d89507b6ea8961bf8569ae0758944f7a1c`  
		Last Modified: Fri, 08 Mar 2019 05:54:48 GMT  
		Size: 96.4 MB (96360680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1887aebc9a37077ec237b7be92a8e7360b67a646ae799fe358023f523040bde0`  
		Last Modified: Fri, 08 Mar 2019 05:54:19 GMT  
		Size: 30.2 MB (30218521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb77a8e74948c39fd5d4ad8ea017553086e7411e58e415ea6f0694fc46458ff6`  
		Last Modified: Fri, 08 Mar 2019 05:54:11 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:f1cb477ba5a61b7f2aaa1ef4ef8398a4824c5bb38fce893081fc8f3f0683d246
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.1 MB (168057521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ee607810fbafa2d12444796e8b299d30aa7077e92e6344f31723c7bd278d0c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:43 GMT
ADD file:a0b688c2ad4ec9d0535b05f0f63ecc15d1af3e496ad8fcf29809af582add17f0 in / 
# Fri, 08 Mar 2019 03:37:45 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:00:13 GMT
ENV NODE_VERSION=8.15.1
# Fri, 08 Mar 2019 05:10:27 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 08 Mar 2019 05:10:33 GMT
ENV YARN_VERSION=1.12.3
# Fri, 08 Mar 2019 05:10:47 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 08 Mar 2019 05:10:49 GMT
CMD ["node"]
# Fri, 08 Mar 2019 08:46:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 08 Mar 2019 08:46:24 GMT
RUN apk add --no-cache 		bash
# Fri, 08 Mar 2019 08:46:25 GMT
ENV NODE_ENV=production
# Fri, 08 Mar 2019 08:46:27 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Fri, 08 Mar 2019 08:47:08 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 08 Mar 2019 08:47:12 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 08 Mar 2019 08:47:17 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 08 Mar 2019 08:52:44 GMT
ENV GHOST_VERSION=1.25.7
# Fri, 08 Mar 2019 08:53:56 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 08 Mar 2019 08:54:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 08 Mar 2019 08:56:20 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 08 Mar 2019 08:56:23 GMT
WORKDIR /var/lib/ghost
# Fri, 08 Mar 2019 08:56:26 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 08 Mar 2019 08:56:28 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Fri, 08 Mar 2019 08:56:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 08:56:31 GMT
EXPOSE 2368
# Fri, 08 Mar 2019 08:56:33 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:0c6396bb25a488a80e061dc7e486b5fee792a25d36fbafa08c0b0f31ef402eac`  
		Last Modified: Fri, 08 Mar 2019 03:38:44 GMT  
		Size: 2.2 MB (2194926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54b94b204eb1456bcb60e57433eebb8ff746477ffd2ffd426b7e6556c51e556`  
		Last Modified: Fri, 08 Mar 2019 06:04:20 GMT  
		Size: 18.6 MB (18647112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13e54023987856b7b5e1dc5e439a25362de2b0c052d9e68394c10fd66ec51e1`  
		Last Modified: Fri, 08 Mar 2019 06:04:08 GMT  
		Size: 1.3 MB (1328454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89112a5c7a13c3819dd790476e6f8211e3c725c74228b2d94a6e36ea27fd959f`  
		Last Modified: Fri, 08 Mar 2019 08:56:57 GMT  
		Size: 9.9 KB (9866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744d4cdf5ae1062bbba82f25f9252048d7efa314483f3ef4b55b5580e9e77930`  
		Last Modified: Fri, 08 Mar 2019 08:56:54 GMT  
		Size: 1.2 MB (1188859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b624075e7b00f817e8374f26b343fe91f6aa10509301f889b7e23ff3e467fb7`  
		Last Modified: Fri, 08 Mar 2019 08:57:11 GMT  
		Size: 17.4 MB (17419550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360f4d81feeff9566ebd26611f1252249d10d947b91dbfe70b8be354fde41b21`  
		Last Modified: Fri, 08 Mar 2019 08:58:43 GMT  
		Size: 96.4 MB (96403414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c0b006b8039b9f118d8d1549686f3e5ef52492538fa58243a5c46b9d12fb4f6`  
		Last Modified: Fri, 08 Mar 2019 08:58:21 GMT  
		Size: 30.9 MB (30864765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8c10e2f84568dccdf6faa3f9f4b5366a279f29a9601f4979a1c4880d15e953`  
		Last Modified: Fri, 08 Mar 2019 08:58:15 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2`

```console
$ docker pull ghost@sha256:9b72e71d787c4af2be7ac041f8b09f12265bcaf1a4465e7de03ac5d1d01dc2e1
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
$ docker pull ghost@sha256:816847c98dde69e586ea9dd5f8b003dde676ffbf0ce5a752b74b5e1a11014c03
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.9 MB (187885114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:161877d261ab2fa42fe023817ec4c815dd897dc2174ff3127c460b9657dae81f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:39:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 05 Mar 2019 03:39:21 GMT
ENV NODE_VERSION=8.15.1
# Tue, 05 Mar 2019 03:39:41 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Mar 2019 03:39:41 GMT
ENV YARN_VERSION=1.12.3
# Tue, 05 Mar 2019 03:39:44 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Mar 2019 03:39:44 GMT
CMD ["node"]
# Tue, 05 Mar 2019 12:34:47 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 12:34:51 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Mar 2019 12:34:52 GMT
ENV NODE_ENV=production
# Tue, 05 Mar 2019 12:34:52 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 05 Mar 2019 12:35:24 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 05 Mar 2019 12:35:25 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 05 Mar 2019 12:35:26 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 05 Mar 2019 12:35:26 GMT
ENV GHOST_VERSION=2.16.2
# Tue, 05 Mar 2019 12:36:47 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 05 Mar 2019 12:37:05 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 05 Mar 2019 12:37:06 GMT
WORKDIR /var/lib/ghost
# Tue, 05 Mar 2019 12:37:06 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 05 Mar 2019 12:37:06 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Tue, 05 Mar 2019 12:37:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 12:37:07 GMT
EXPOSE 2368
# Tue, 05 Mar 2019 12:37:07 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19dd238db8995f783250a0dd30f6c127d9f2e1b4702e417d3a34b4693022cab8`  
		Last Modified: Tue, 05 Mar 2019 03:49:28 GMT  
		Size: 4.1 KB (4144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da38310bbd9763801810f8793a564eab36805e429586bb0f653a3cc0702742a3`  
		Last Modified: Tue, 05 Mar 2019 03:49:35 GMT  
		Size: 28.0 MB (28017497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25422d96e287e9b9967dac86926d6763609cbd09207d45acffc094bc6043847`  
		Last Modified: Tue, 05 Mar 2019 03:49:27 GMT  
		Size: 1.3 MB (1321438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cec8e97cfc6fef48429e81db9779580f6de77e8ae16c0da64f972832eab2ea1`  
		Last Modified: Tue, 05 Mar 2019 12:39:21 GMT  
		Size: 500.9 KB (500920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7900078ee90c4dd169c5c35ad68f7d9d78fdf94b77daf9aad48b234ab80ded95`  
		Last Modified: Tue, 05 Mar 2019 12:39:28 GMT  
		Size: 17.4 MB (17412256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b16cceeb30a00eca8ffca8d3fc48fe8b9eb154156100fd8909e3f0a8c380545`  
		Last Modified: Tue, 05 Mar 2019 12:39:57 GMT  
		Size: 116.7 MB (116749725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511973989b90262e3a882cabfec899a79eb184b7c1a75cf8598d12040df4d595`  
		Last Modified: Tue, 05 Mar 2019 12:39:21 GMT  
		Size: 1.4 MB (1382542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faee9923a130b1c532e1da274f07818d480f0e4a240055e0e8529b7b7b7730e3`  
		Last Modified: Tue, 05 Mar 2019 12:39:20 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; arm variant v7

```console
$ docker pull ghost@sha256:18f151dc34a65f9a9dbfc97fa183b78821beb053dbdbbc057f3669ac64b237c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.9 MB (185944880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b5188d123d0174a6553cf41dc7d8c6c245c36c33f5a60ffb854b5670c1d95ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:04:04 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 05 Mar 2019 14:04:04 GMT
ENV NODE_VERSION=8.15.1
# Tue, 05 Mar 2019 14:04:34 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Mar 2019 14:04:35 GMT
ENV YARN_VERSION=1.12.3
# Tue, 05 Mar 2019 14:04:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Mar 2019 14:04:42 GMT
CMD ["node"]
# Tue, 05 Mar 2019 17:15:52 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 17:15:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Mar 2019 17:15:57 GMT
ENV NODE_ENV=production
# Tue, 05 Mar 2019 17:15:57 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 05 Mar 2019 17:16:38 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 05 Mar 2019 17:16:41 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 05 Mar 2019 17:16:41 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 05 Mar 2019 17:16:42 GMT
ENV GHOST_VERSION=2.16.2
# Tue, 05 Mar 2019 17:18:24 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 05 Mar 2019 17:21:50 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 05 Mar 2019 17:21:51 GMT
WORKDIR /var/lib/ghost
# Tue, 05 Mar 2019 17:21:51 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 05 Mar 2019 17:21:52 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Tue, 05 Mar 2019 17:21:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 17:21:53 GMT
EXPOSE 2368
# Tue, 05 Mar 2019 17:21:54 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0ec74be39414de5fbb3c3c6d581fe9f01c5fe455a62141eff10d3c2b48a32c`  
		Last Modified: Tue, 05 Mar 2019 14:13:24 GMT  
		Size: 4.2 KB (4171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65a5c9d2267b657be520c54ec762c1a6e3837df47ca086a53fe7f3991e0d1fa`  
		Last Modified: Tue, 05 Mar 2019 14:13:33 GMT  
		Size: 25.5 MB (25472745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935cec4e970287eba460f49bc5a9f1a5bfc50af8c5392444bc16efbb92b4aa0f`  
		Last Modified: Tue, 05 Mar 2019 14:13:25 GMT  
		Size: 1.3 MB (1321447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f6de281e0194a45a36fef43c2d259dcb5de801e148c2d9ff8b91ca2282dfac`  
		Last Modified: Tue, 05 Mar 2019 17:27:35 GMT  
		Size: 475.4 KB (475431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3976554702f9bf6cedf7d4ace917931fbf47b943ebef3a4f91a3940244d9eeca`  
		Last Modified: Tue, 05 Mar 2019 17:27:45 GMT  
		Size: 17.4 MB (17411216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7579053a4c4894a6f54b9380363ce1f3964ccd691e556b2f2c14100c037143`  
		Last Modified: Tue, 05 Mar 2019 17:28:15 GMT  
		Size: 101.7 MB (101742086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a964578ad5f32a5f2adb08be6a00563c722fb93aa697c99dd11da8f9fb7836`  
		Last Modified: Tue, 05 Mar 2019 17:27:43 GMT  
		Size: 20.2 MB (20234730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0be2a62fc0b63617a2e5e82d676b06fe743dbe73eb9bd525e470df9a360b2f2c`  
		Last Modified: Tue, 05 Mar 2019 17:27:35 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:8fd7d361d946844211cc8f58b59aae40e0888fd6ee18c4a887c4a66a302ebc75
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.0 MB (190969090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eade8037dcb8e0266dbca00899850781c160d7831815143b46093f04cdc983a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 00:55:30 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 01 Mar 2019 10:10:44 GMT
ENV NODE_VERSION=8.15.1
# Fri, 01 Mar 2019 10:12:06 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 01 Mar 2019 10:12:07 GMT
ENV YARN_VERSION=1.12.3
# Fri, 01 Mar 2019 10:12:15 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 01 Mar 2019 10:12:16 GMT
CMD ["node"]
# Fri, 01 Mar 2019 11:41:40 GMT
ENV GOSU_VERSION=1.10
# Fri, 01 Mar 2019 11:41:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 01 Mar 2019 11:41:47 GMT
ENV NODE_ENV=production
# Fri, 01 Mar 2019 11:41:48 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Fri, 01 Mar 2019 11:42:26 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 01 Mar 2019 11:42:27 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 01 Mar 2019 11:42:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 02 Mar 2019 09:59:39 GMT
ENV GHOST_VERSION=2.16.2
# Sat, 02 Mar 2019 10:05:22 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Sat, 02 Mar 2019 10:11:52 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 02 Mar 2019 10:11:53 GMT
WORKDIR /var/lib/ghost
# Sat, 02 Mar 2019 10:11:54 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 02 Mar 2019 10:11:55 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Sat, 02 Mar 2019 10:11:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 10:11:57 GMT
EXPOSE 2368
# Sat, 02 Mar 2019 10:11:58 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cde3cb8d6c0e984b84c0cb58e131df0c9cf333683af998db5e0cfcaf12b7393`  
		Last Modified: Thu, 07 Feb 2019 01:05:20 GMT  
		Size: 4.2 KB (4150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:953b766fdf579ba8a497d21838004a0d221083949f2523b0e872c57b6870e3da`  
		Last Modified: Fri, 01 Mar 2019 11:22:49 GMT  
		Size: 26.7 MB (26700656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd39b68f82af7807c06398e865c1d436c12e76629ed0d271856e7a01aaeb5a48`  
		Last Modified: Fri, 01 Mar 2019 11:22:37 GMT  
		Size: 1.3 MB (1321438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ced6cca8c8873b9dc061765fc36024a7b69a14318b6f49af60115cc6b7da9a5`  
		Last Modified: Fri, 01 Mar 2019 11:56:04 GMT  
		Size: 468.9 KB (468939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76849c2b5ae6d78bb9bf4bbdaf75447c1a1d4bb64fcb16eeb4c413f4a2555e45`  
		Last Modified: Fri, 01 Mar 2019 11:56:14 GMT  
		Size: 17.4 MB (17399341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919ca94293db55c6f05acf29945ef9c5785e6ff7614db297324e8fccad068e6a`  
		Last Modified: Sat, 02 Mar 2019 10:13:45 GMT  
		Size: 100.9 MB (100855612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d873086dca3733a73dc8b0adf51993d347b4e5553b29ea802d464cc3cece9a5`  
		Last Modified: Sat, 02 Mar 2019 10:13:10 GMT  
		Size: 23.9 MB (23868234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b69598977e196951a450573cb726d1a46cb0a425db3aa582adf015df64630b9`  
		Last Modified: Sat, 02 Mar 2019 10:13:01 GMT  
		Size: 561.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; 386

```console
$ docker pull ghost@sha256:66569dac8529bec781789ac6c99260914593699288deaf8a4a57685fa3be4227
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.6 MB (177631104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acf9c2d7c3c4554268b3116766d4e90da4983db753c89f81336cce7cff8bf514`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 16:08:15 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 05 Mar 2019 16:08:15 GMT
ENV NODE_VERSION=8.15.1
# Tue, 05 Mar 2019 16:08:34 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Mar 2019 16:08:34 GMT
ENV YARN_VERSION=1.12.3
# Tue, 05 Mar 2019 16:08:37 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Mar 2019 16:08:38 GMT
CMD ["node"]
# Wed, 06 Mar 2019 00:14:17 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Mar 2019 00:14:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Mar 2019 00:14:21 GMT
ENV NODE_ENV=production
# Wed, 06 Mar 2019 00:14:21 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Wed, 06 Mar 2019 00:14:43 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Mar 2019 00:14:43 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Mar 2019 00:14:43 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Mar 2019 00:14:44 GMT
ENV GHOST_VERSION=2.16.2
# Wed, 06 Mar 2019 00:15:29 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 06 Mar 2019 00:17:01 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Mar 2019 00:17:02 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Mar 2019 00:17:02 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Mar 2019 00:17:02 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 06 Mar 2019 00:17:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Mar 2019 00:17:02 GMT
EXPOSE 2368
# Wed, 06 Mar 2019 00:17:03 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b42aa871f86bceea09dc73ea6e00cd2eb8b2532a1d4cbdcf7af8ed86e0f02e`  
		Last Modified: Tue, 05 Mar 2019 16:14:00 GMT  
		Size: 4.1 KB (4135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f66dda9b1a76e28608400319c4054d5c5bc0adb643072c71cd319915e63f49e`  
		Last Modified: Tue, 05 Mar 2019 16:14:10 GMT  
		Size: 27.8 MB (27849482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76027775c669bf1beab618f9faf82efba1362d4b2f9c5964fd4509d20ab35c0e`  
		Last Modified: Tue, 05 Mar 2019 16:14:01 GMT  
		Size: 1.3 MB (1321442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532e0ab66a10fc74fcabf309a152db3e52341163f62e1712700b5b0103645582`  
		Last Modified: Wed, 06 Mar 2019 00:20:02 GMT  
		Size: 480.8 KB (480829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f60b76bf5b061e75b87bac430d5a6bb599679c8e41bde84787e5f591ac9dc45`  
		Last Modified: Wed, 06 Mar 2019 00:20:09 GMT  
		Size: 17.4 MB (17412683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a24124d6200408ac76932d9c1a29c083a69ba5557d3756146738a19d891bd0`  
		Last Modified: Wed, 06 Mar 2019 00:20:30 GMT  
		Size: 94.8 MB (94845541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697b80c88f26876ee62d980068f86483bd7476845c7d5aec752baf8f52593444`  
		Last Modified: Wed, 06 Mar 2019 00:20:07 GMT  
		Size: 12.6 MB (12590753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61409e22002b2c73015de97085b035f3afceb1ccdebdde84bbcebde488b61825`  
		Last Modified: Wed, 06 Mar 2019 00:20:02 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; ppc64le

```console
$ docker pull ghost@sha256:3d8539dc2794dc4ce11964f5e9d37484fe5c2c13b37521cbcc0ac19467bb2fa1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.5 MB (176480400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85756e75a70a93803f2b5a1edc4b65890be674c1500cb1a399e73b3a41e14cd3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:38:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 05 Mar 2019 11:38:20 GMT
ENV NODE_VERSION=8.15.1
# Tue, 05 Mar 2019 11:39:47 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Mar 2019 11:39:51 GMT
ENV YARN_VERSION=1.12.3
# Tue, 05 Mar 2019 11:40:00 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Mar 2019 11:40:03 GMT
CMD ["node"]
# Tue, 05 Mar 2019 17:12:55 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 17:13:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Mar 2019 17:13:06 GMT
ENV NODE_ENV=production
# Tue, 05 Mar 2019 17:13:10 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 05 Mar 2019 17:13:48 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 05 Mar 2019 17:13:54 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 05 Mar 2019 17:13:56 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 05 Mar 2019 17:14:00 GMT
ENV GHOST_VERSION=2.16.2
# Tue, 05 Mar 2019 17:16:37 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 05 Mar 2019 17:20:54 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 05 Mar 2019 17:21:00 GMT
WORKDIR /var/lib/ghost
# Tue, 05 Mar 2019 17:21:04 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 05 Mar 2019 17:21:07 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Tue, 05 Mar 2019 17:21:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 17:21:17 GMT
EXPOSE 2368
# Tue, 05 Mar 2019 17:21:24 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7146b59d4f68f2ab05830fe018c20d50c6af1bc7e59dd6222e557003294b7de`  
		Last Modified: Tue, 05 Mar 2019 11:43:34 GMT  
		Size: 4.2 KB (4171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb865b0db5c9451360b58b81eb5c75d86f218324f5ffc653590fb49400a4056`  
		Last Modified: Tue, 05 Mar 2019 11:43:41 GMT  
		Size: 27.0 MB (26969108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b65f1ce016ac02f0e4180eecb0bf6536c48e1323d8c131b6f21d1431399c56`  
		Last Modified: Tue, 05 Mar 2019 11:43:34 GMT  
		Size: 1.3 MB (1321459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2876c660201fba48fb93964ec070c1b61d6a892181c3f24e21265248a66cd0be`  
		Last Modified: Tue, 05 Mar 2019 17:30:24 GMT  
		Size: 470.1 KB (470077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8998686f907bc120037e34fed178f04fefdda5834860fd8d72cfd5e2661373f8`  
		Last Modified: Tue, 05 Mar 2019 17:30:53 GMT  
		Size: 17.4 MB (17412061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70eb17bd6bfaf64393326419a2eb14ebac0976ec42beadb8ab6defb26720e9cf`  
		Last Modified: Tue, 05 Mar 2019 17:32:13 GMT  
		Size: 94.9 MB (94882669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73cf39fdc87a2c5ae058450c6ed7a725f669643d360557e37115731499f0ef33`  
		Last Modified: Tue, 05 Mar 2019 17:30:28 GMT  
		Size: 12.7 MB (12668797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9017c538e04213a3c210c67d79944a6a18447de28d5f114817d74bd290bcad`  
		Last Modified: Tue, 05 Mar 2019 17:30:24 GMT  
		Size: 561.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; s390x

```console
$ docker pull ghost@sha256:767e94801b71f1f04099cf57d1e48eaa5429b00dc94da0b16aca8c298e2364ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176963808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a10c21793ff17b3bdf39b8e289b76d468abe25881427c03b8e7b4b92c9bd4b37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:27:33 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 05 Mar 2019 15:27:33 GMT
ENV NODE_VERSION=8.15.1
# Tue, 05 Mar 2019 15:27:52 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Mar 2019 15:27:52 GMT
ENV YARN_VERSION=1.12.3
# Tue, 05 Mar 2019 15:27:56 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Mar 2019 15:27:57 GMT
CMD ["node"]
# Tue, 05 Mar 2019 19:27:16 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 19:27:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Mar 2019 19:27:21 GMT
ENV NODE_ENV=production
# Tue, 05 Mar 2019 19:27:23 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 05 Mar 2019 19:27:48 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 05 Mar 2019 19:27:49 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 05 Mar 2019 19:27:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 05 Mar 2019 19:27:49 GMT
ENV GHOST_VERSION=2.16.2
# Tue, 05 Mar 2019 19:28:31 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 05 Mar 2019 19:30:15 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 05 Mar 2019 19:30:16 GMT
WORKDIR /var/lib/ghost
# Tue, 05 Mar 2019 19:30:16 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 05 Mar 2019 19:30:16 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Tue, 05 Mar 2019 19:30:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 19:30:17 GMT
EXPOSE 2368
# Tue, 05 Mar 2019 19:30:17 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:2c9e1401ee6b0131741b02fed745b7f1d34bf29b0bc59f41e08dc969a710fc58`  
		Last Modified: Tue, 05 Mar 2019 12:45:42 GMT  
		Size: 22.3 MB (22345383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a69bf5a87f6ca372cf532eac6f88650232f774c7127c6bd9fe82cf04846490`  
		Last Modified: Tue, 05 Mar 2019 15:30:23 GMT  
		Size: 4.2 KB (4151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8247e2fb2aa9fd4d18ea49fdbe3fd5e70c8716c98ee7d445b3531693aac851`  
		Last Modified: Tue, 05 Mar 2019 15:30:29 GMT  
		Size: 27.9 MB (27862343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3f1e837f6496a2972d53f392257b74407520e1276c08957314ce29bafe98b14`  
		Last Modified: Tue, 05 Mar 2019 15:30:23 GMT  
		Size: 1.3 MB (1321441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a64ba830e16748d30745eeea9cc9ace200cf44f72f85b66607aa12ced01b9ae`  
		Last Modified: Tue, 05 Mar 2019 19:34:32 GMT  
		Size: 487.0 KB (487046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d50692248351b00eea736e3dcf763d2e79a57654d8798a9fef7a9b29f12f4a8`  
		Last Modified: Tue, 05 Mar 2019 19:34:39 GMT  
		Size: 17.4 MB (17412692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07213e3caa3427c35ff6164cd1d613192bc07b144f4911aac8f6ce97dc5436f0`  
		Last Modified: Tue, 05 Mar 2019 19:34:57 GMT  
		Size: 94.9 MB (94881130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c788a3562df3bc5fb47667c4df0113326e21392186f5e474b94046d570818f86`  
		Last Modified: Tue, 05 Mar 2019 19:34:36 GMT  
		Size: 12.6 MB (12649064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af48d4efa98583f03f0adb9141e1eb3a69c514dc8b62441e383c322e4cee1118`  
		Last Modified: Tue, 05 Mar 2019 19:34:31 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.16`

```console
$ docker pull ghost@sha256:9b72e71d787c4af2be7ac041f8b09f12265bcaf1a4465e7de03ac5d1d01dc2e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:2.16` - linux; amd64

```console
$ docker pull ghost@sha256:816847c98dde69e586ea9dd5f8b003dde676ffbf0ce5a752b74b5e1a11014c03
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.9 MB (187885114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:161877d261ab2fa42fe023817ec4c815dd897dc2174ff3127c460b9657dae81f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:39:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 05 Mar 2019 03:39:21 GMT
ENV NODE_VERSION=8.15.1
# Tue, 05 Mar 2019 03:39:41 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Mar 2019 03:39:41 GMT
ENV YARN_VERSION=1.12.3
# Tue, 05 Mar 2019 03:39:44 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Mar 2019 03:39:44 GMT
CMD ["node"]
# Tue, 05 Mar 2019 12:34:47 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 12:34:51 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Mar 2019 12:34:52 GMT
ENV NODE_ENV=production
# Tue, 05 Mar 2019 12:34:52 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 05 Mar 2019 12:35:24 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 05 Mar 2019 12:35:25 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 05 Mar 2019 12:35:26 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 05 Mar 2019 12:35:26 GMT
ENV GHOST_VERSION=2.16.2
# Tue, 05 Mar 2019 12:36:47 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 05 Mar 2019 12:37:05 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 05 Mar 2019 12:37:06 GMT
WORKDIR /var/lib/ghost
# Tue, 05 Mar 2019 12:37:06 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 05 Mar 2019 12:37:06 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Tue, 05 Mar 2019 12:37:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 12:37:07 GMT
EXPOSE 2368
# Tue, 05 Mar 2019 12:37:07 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19dd238db8995f783250a0dd30f6c127d9f2e1b4702e417d3a34b4693022cab8`  
		Last Modified: Tue, 05 Mar 2019 03:49:28 GMT  
		Size: 4.1 KB (4144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da38310bbd9763801810f8793a564eab36805e429586bb0f653a3cc0702742a3`  
		Last Modified: Tue, 05 Mar 2019 03:49:35 GMT  
		Size: 28.0 MB (28017497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25422d96e287e9b9967dac86926d6763609cbd09207d45acffc094bc6043847`  
		Last Modified: Tue, 05 Mar 2019 03:49:27 GMT  
		Size: 1.3 MB (1321438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cec8e97cfc6fef48429e81db9779580f6de77e8ae16c0da64f972832eab2ea1`  
		Last Modified: Tue, 05 Mar 2019 12:39:21 GMT  
		Size: 500.9 KB (500920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7900078ee90c4dd169c5c35ad68f7d9d78fdf94b77daf9aad48b234ab80ded95`  
		Last Modified: Tue, 05 Mar 2019 12:39:28 GMT  
		Size: 17.4 MB (17412256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b16cceeb30a00eca8ffca8d3fc48fe8b9eb154156100fd8909e3f0a8c380545`  
		Last Modified: Tue, 05 Mar 2019 12:39:57 GMT  
		Size: 116.7 MB (116749725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511973989b90262e3a882cabfec899a79eb184b7c1a75cf8598d12040df4d595`  
		Last Modified: Tue, 05 Mar 2019 12:39:21 GMT  
		Size: 1.4 MB (1382542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faee9923a130b1c532e1da274f07818d480f0e4a240055e0e8529b7b7b7730e3`  
		Last Modified: Tue, 05 Mar 2019 12:39:20 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.16` - linux; arm variant v7

```console
$ docker pull ghost@sha256:18f151dc34a65f9a9dbfc97fa183b78821beb053dbdbbc057f3669ac64b237c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.9 MB (185944880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b5188d123d0174a6553cf41dc7d8c6c245c36c33f5a60ffb854b5670c1d95ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:04:04 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 05 Mar 2019 14:04:04 GMT
ENV NODE_VERSION=8.15.1
# Tue, 05 Mar 2019 14:04:34 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Mar 2019 14:04:35 GMT
ENV YARN_VERSION=1.12.3
# Tue, 05 Mar 2019 14:04:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Mar 2019 14:04:42 GMT
CMD ["node"]
# Tue, 05 Mar 2019 17:15:52 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 17:15:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Mar 2019 17:15:57 GMT
ENV NODE_ENV=production
# Tue, 05 Mar 2019 17:15:57 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 05 Mar 2019 17:16:38 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 05 Mar 2019 17:16:41 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 05 Mar 2019 17:16:41 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 05 Mar 2019 17:16:42 GMT
ENV GHOST_VERSION=2.16.2
# Tue, 05 Mar 2019 17:18:24 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 05 Mar 2019 17:21:50 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 05 Mar 2019 17:21:51 GMT
WORKDIR /var/lib/ghost
# Tue, 05 Mar 2019 17:21:51 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 05 Mar 2019 17:21:52 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Tue, 05 Mar 2019 17:21:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 17:21:53 GMT
EXPOSE 2368
# Tue, 05 Mar 2019 17:21:54 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0ec74be39414de5fbb3c3c6d581fe9f01c5fe455a62141eff10d3c2b48a32c`  
		Last Modified: Tue, 05 Mar 2019 14:13:24 GMT  
		Size: 4.2 KB (4171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65a5c9d2267b657be520c54ec762c1a6e3837df47ca086a53fe7f3991e0d1fa`  
		Last Modified: Tue, 05 Mar 2019 14:13:33 GMT  
		Size: 25.5 MB (25472745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935cec4e970287eba460f49bc5a9f1a5bfc50af8c5392444bc16efbb92b4aa0f`  
		Last Modified: Tue, 05 Mar 2019 14:13:25 GMT  
		Size: 1.3 MB (1321447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f6de281e0194a45a36fef43c2d259dcb5de801e148c2d9ff8b91ca2282dfac`  
		Last Modified: Tue, 05 Mar 2019 17:27:35 GMT  
		Size: 475.4 KB (475431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3976554702f9bf6cedf7d4ace917931fbf47b943ebef3a4f91a3940244d9eeca`  
		Last Modified: Tue, 05 Mar 2019 17:27:45 GMT  
		Size: 17.4 MB (17411216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7579053a4c4894a6f54b9380363ce1f3964ccd691e556b2f2c14100c037143`  
		Last Modified: Tue, 05 Mar 2019 17:28:15 GMT  
		Size: 101.7 MB (101742086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a964578ad5f32a5f2adb08be6a00563c722fb93aa697c99dd11da8f9fb7836`  
		Last Modified: Tue, 05 Mar 2019 17:27:43 GMT  
		Size: 20.2 MB (20234730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0be2a62fc0b63617a2e5e82d676b06fe743dbe73eb9bd525e470df9a360b2f2c`  
		Last Modified: Tue, 05 Mar 2019 17:27:35 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.16` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:8fd7d361d946844211cc8f58b59aae40e0888fd6ee18c4a887c4a66a302ebc75
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.0 MB (190969090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eade8037dcb8e0266dbca00899850781c160d7831815143b46093f04cdc983a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 00:55:30 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 01 Mar 2019 10:10:44 GMT
ENV NODE_VERSION=8.15.1
# Fri, 01 Mar 2019 10:12:06 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 01 Mar 2019 10:12:07 GMT
ENV YARN_VERSION=1.12.3
# Fri, 01 Mar 2019 10:12:15 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 01 Mar 2019 10:12:16 GMT
CMD ["node"]
# Fri, 01 Mar 2019 11:41:40 GMT
ENV GOSU_VERSION=1.10
# Fri, 01 Mar 2019 11:41:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 01 Mar 2019 11:41:47 GMT
ENV NODE_ENV=production
# Fri, 01 Mar 2019 11:41:48 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Fri, 01 Mar 2019 11:42:26 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 01 Mar 2019 11:42:27 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 01 Mar 2019 11:42:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 02 Mar 2019 09:59:39 GMT
ENV GHOST_VERSION=2.16.2
# Sat, 02 Mar 2019 10:05:22 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Sat, 02 Mar 2019 10:11:52 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 02 Mar 2019 10:11:53 GMT
WORKDIR /var/lib/ghost
# Sat, 02 Mar 2019 10:11:54 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 02 Mar 2019 10:11:55 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Sat, 02 Mar 2019 10:11:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 10:11:57 GMT
EXPOSE 2368
# Sat, 02 Mar 2019 10:11:58 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cde3cb8d6c0e984b84c0cb58e131df0c9cf333683af998db5e0cfcaf12b7393`  
		Last Modified: Thu, 07 Feb 2019 01:05:20 GMT  
		Size: 4.2 KB (4150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:953b766fdf579ba8a497d21838004a0d221083949f2523b0e872c57b6870e3da`  
		Last Modified: Fri, 01 Mar 2019 11:22:49 GMT  
		Size: 26.7 MB (26700656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd39b68f82af7807c06398e865c1d436c12e76629ed0d271856e7a01aaeb5a48`  
		Last Modified: Fri, 01 Mar 2019 11:22:37 GMT  
		Size: 1.3 MB (1321438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ced6cca8c8873b9dc061765fc36024a7b69a14318b6f49af60115cc6b7da9a5`  
		Last Modified: Fri, 01 Mar 2019 11:56:04 GMT  
		Size: 468.9 KB (468939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76849c2b5ae6d78bb9bf4bbdaf75447c1a1d4bb64fcb16eeb4c413f4a2555e45`  
		Last Modified: Fri, 01 Mar 2019 11:56:14 GMT  
		Size: 17.4 MB (17399341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919ca94293db55c6f05acf29945ef9c5785e6ff7614db297324e8fccad068e6a`  
		Last Modified: Sat, 02 Mar 2019 10:13:45 GMT  
		Size: 100.9 MB (100855612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d873086dca3733a73dc8b0adf51993d347b4e5553b29ea802d464cc3cece9a5`  
		Last Modified: Sat, 02 Mar 2019 10:13:10 GMT  
		Size: 23.9 MB (23868234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b69598977e196951a450573cb726d1a46cb0a425db3aa582adf015df64630b9`  
		Last Modified: Sat, 02 Mar 2019 10:13:01 GMT  
		Size: 561.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.16` - linux; 386

```console
$ docker pull ghost@sha256:66569dac8529bec781789ac6c99260914593699288deaf8a4a57685fa3be4227
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.6 MB (177631104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acf9c2d7c3c4554268b3116766d4e90da4983db753c89f81336cce7cff8bf514`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 16:08:15 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 05 Mar 2019 16:08:15 GMT
ENV NODE_VERSION=8.15.1
# Tue, 05 Mar 2019 16:08:34 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Mar 2019 16:08:34 GMT
ENV YARN_VERSION=1.12.3
# Tue, 05 Mar 2019 16:08:37 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Mar 2019 16:08:38 GMT
CMD ["node"]
# Wed, 06 Mar 2019 00:14:17 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Mar 2019 00:14:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Mar 2019 00:14:21 GMT
ENV NODE_ENV=production
# Wed, 06 Mar 2019 00:14:21 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Wed, 06 Mar 2019 00:14:43 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Mar 2019 00:14:43 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Mar 2019 00:14:43 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Mar 2019 00:14:44 GMT
ENV GHOST_VERSION=2.16.2
# Wed, 06 Mar 2019 00:15:29 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 06 Mar 2019 00:17:01 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Mar 2019 00:17:02 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Mar 2019 00:17:02 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Mar 2019 00:17:02 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 06 Mar 2019 00:17:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Mar 2019 00:17:02 GMT
EXPOSE 2368
# Wed, 06 Mar 2019 00:17:03 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b42aa871f86bceea09dc73ea6e00cd2eb8b2532a1d4cbdcf7af8ed86e0f02e`  
		Last Modified: Tue, 05 Mar 2019 16:14:00 GMT  
		Size: 4.1 KB (4135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f66dda9b1a76e28608400319c4054d5c5bc0adb643072c71cd319915e63f49e`  
		Last Modified: Tue, 05 Mar 2019 16:14:10 GMT  
		Size: 27.8 MB (27849482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76027775c669bf1beab618f9faf82efba1362d4b2f9c5964fd4509d20ab35c0e`  
		Last Modified: Tue, 05 Mar 2019 16:14:01 GMT  
		Size: 1.3 MB (1321442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532e0ab66a10fc74fcabf309a152db3e52341163f62e1712700b5b0103645582`  
		Last Modified: Wed, 06 Mar 2019 00:20:02 GMT  
		Size: 480.8 KB (480829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f60b76bf5b061e75b87bac430d5a6bb599679c8e41bde84787e5f591ac9dc45`  
		Last Modified: Wed, 06 Mar 2019 00:20:09 GMT  
		Size: 17.4 MB (17412683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a24124d6200408ac76932d9c1a29c083a69ba5557d3756146738a19d891bd0`  
		Last Modified: Wed, 06 Mar 2019 00:20:30 GMT  
		Size: 94.8 MB (94845541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697b80c88f26876ee62d980068f86483bd7476845c7d5aec752baf8f52593444`  
		Last Modified: Wed, 06 Mar 2019 00:20:07 GMT  
		Size: 12.6 MB (12590753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61409e22002b2c73015de97085b035f3afceb1ccdebdde84bbcebde488b61825`  
		Last Modified: Wed, 06 Mar 2019 00:20:02 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.16` - linux; ppc64le

```console
$ docker pull ghost@sha256:3d8539dc2794dc4ce11964f5e9d37484fe5c2c13b37521cbcc0ac19467bb2fa1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.5 MB (176480400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85756e75a70a93803f2b5a1edc4b65890be674c1500cb1a399e73b3a41e14cd3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:38:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 05 Mar 2019 11:38:20 GMT
ENV NODE_VERSION=8.15.1
# Tue, 05 Mar 2019 11:39:47 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Mar 2019 11:39:51 GMT
ENV YARN_VERSION=1.12.3
# Tue, 05 Mar 2019 11:40:00 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Mar 2019 11:40:03 GMT
CMD ["node"]
# Tue, 05 Mar 2019 17:12:55 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 17:13:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Mar 2019 17:13:06 GMT
ENV NODE_ENV=production
# Tue, 05 Mar 2019 17:13:10 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 05 Mar 2019 17:13:48 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 05 Mar 2019 17:13:54 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 05 Mar 2019 17:13:56 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 05 Mar 2019 17:14:00 GMT
ENV GHOST_VERSION=2.16.2
# Tue, 05 Mar 2019 17:16:37 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 05 Mar 2019 17:20:54 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 05 Mar 2019 17:21:00 GMT
WORKDIR /var/lib/ghost
# Tue, 05 Mar 2019 17:21:04 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 05 Mar 2019 17:21:07 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Tue, 05 Mar 2019 17:21:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 17:21:17 GMT
EXPOSE 2368
# Tue, 05 Mar 2019 17:21:24 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7146b59d4f68f2ab05830fe018c20d50c6af1bc7e59dd6222e557003294b7de`  
		Last Modified: Tue, 05 Mar 2019 11:43:34 GMT  
		Size: 4.2 KB (4171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb865b0db5c9451360b58b81eb5c75d86f218324f5ffc653590fb49400a4056`  
		Last Modified: Tue, 05 Mar 2019 11:43:41 GMT  
		Size: 27.0 MB (26969108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b65f1ce016ac02f0e4180eecb0bf6536c48e1323d8c131b6f21d1431399c56`  
		Last Modified: Tue, 05 Mar 2019 11:43:34 GMT  
		Size: 1.3 MB (1321459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2876c660201fba48fb93964ec070c1b61d6a892181c3f24e21265248a66cd0be`  
		Last Modified: Tue, 05 Mar 2019 17:30:24 GMT  
		Size: 470.1 KB (470077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8998686f907bc120037e34fed178f04fefdda5834860fd8d72cfd5e2661373f8`  
		Last Modified: Tue, 05 Mar 2019 17:30:53 GMT  
		Size: 17.4 MB (17412061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70eb17bd6bfaf64393326419a2eb14ebac0976ec42beadb8ab6defb26720e9cf`  
		Last Modified: Tue, 05 Mar 2019 17:32:13 GMT  
		Size: 94.9 MB (94882669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73cf39fdc87a2c5ae058450c6ed7a725f669643d360557e37115731499f0ef33`  
		Last Modified: Tue, 05 Mar 2019 17:30:28 GMT  
		Size: 12.7 MB (12668797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9017c538e04213a3c210c67d79944a6a18447de28d5f114817d74bd290bcad`  
		Last Modified: Tue, 05 Mar 2019 17:30:24 GMT  
		Size: 561.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.16` - linux; s390x

```console
$ docker pull ghost@sha256:767e94801b71f1f04099cf57d1e48eaa5429b00dc94da0b16aca8c298e2364ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176963808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a10c21793ff17b3bdf39b8e289b76d468abe25881427c03b8e7b4b92c9bd4b37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:27:33 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 05 Mar 2019 15:27:33 GMT
ENV NODE_VERSION=8.15.1
# Tue, 05 Mar 2019 15:27:52 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Mar 2019 15:27:52 GMT
ENV YARN_VERSION=1.12.3
# Tue, 05 Mar 2019 15:27:56 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Mar 2019 15:27:57 GMT
CMD ["node"]
# Tue, 05 Mar 2019 19:27:16 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 19:27:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Mar 2019 19:27:21 GMT
ENV NODE_ENV=production
# Tue, 05 Mar 2019 19:27:23 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 05 Mar 2019 19:27:48 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 05 Mar 2019 19:27:49 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 05 Mar 2019 19:27:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 05 Mar 2019 19:27:49 GMT
ENV GHOST_VERSION=2.16.2
# Tue, 05 Mar 2019 19:28:31 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 05 Mar 2019 19:30:15 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 05 Mar 2019 19:30:16 GMT
WORKDIR /var/lib/ghost
# Tue, 05 Mar 2019 19:30:16 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 05 Mar 2019 19:30:16 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Tue, 05 Mar 2019 19:30:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 19:30:17 GMT
EXPOSE 2368
# Tue, 05 Mar 2019 19:30:17 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:2c9e1401ee6b0131741b02fed745b7f1d34bf29b0bc59f41e08dc969a710fc58`  
		Last Modified: Tue, 05 Mar 2019 12:45:42 GMT  
		Size: 22.3 MB (22345383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a69bf5a87f6ca372cf532eac6f88650232f774c7127c6bd9fe82cf04846490`  
		Last Modified: Tue, 05 Mar 2019 15:30:23 GMT  
		Size: 4.2 KB (4151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8247e2fb2aa9fd4d18ea49fdbe3fd5e70c8716c98ee7d445b3531693aac851`  
		Last Modified: Tue, 05 Mar 2019 15:30:29 GMT  
		Size: 27.9 MB (27862343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3f1e837f6496a2972d53f392257b74407520e1276c08957314ce29bafe98b14`  
		Last Modified: Tue, 05 Mar 2019 15:30:23 GMT  
		Size: 1.3 MB (1321441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a64ba830e16748d30745eeea9cc9ace200cf44f72f85b66607aa12ced01b9ae`  
		Last Modified: Tue, 05 Mar 2019 19:34:32 GMT  
		Size: 487.0 KB (487046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d50692248351b00eea736e3dcf763d2e79a57654d8798a9fef7a9b29f12f4a8`  
		Last Modified: Tue, 05 Mar 2019 19:34:39 GMT  
		Size: 17.4 MB (17412692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07213e3caa3427c35ff6164cd1d613192bc07b144f4911aac8f6ce97dc5436f0`  
		Last Modified: Tue, 05 Mar 2019 19:34:57 GMT  
		Size: 94.9 MB (94881130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c788a3562df3bc5fb47667c4df0113326e21392186f5e474b94046d570818f86`  
		Last Modified: Tue, 05 Mar 2019 19:34:36 GMT  
		Size: 12.6 MB (12649064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af48d4efa98583f03f0adb9141e1eb3a69c514dc8b62441e383c322e4cee1118`  
		Last Modified: Tue, 05 Mar 2019 19:34:31 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.16.4`

**does not exist** (yet?)

## `ghost:2.16.4-alpine`

**does not exist** (yet?)

## `ghost:2.16-alpine`

```console
$ docker pull ghost@sha256:2d418214f7bbdff970c630079d833cd86c1575c73a5bbd6f71f2a301f5c479fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:2.16-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:406dff905a9bf4462e12b72c486c8b3c5d940fedf2fabf7c62e683669612f2bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.5 MB (169464027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6fec93fd606e9feebc8758a73f5cabdc3780d1dea42cd8740477a9dd79344ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 00:48:28 GMT
ENV NODE_VERSION=8.15.1
# Fri, 08 Mar 2019 01:19:02 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 08 Mar 2019 01:19:02 GMT
ENV YARN_VERSION=1.12.3
# Fri, 08 Mar 2019 01:19:06 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 08 Mar 2019 01:19:07 GMT
CMD ["node"]
# Fri, 08 Mar 2019 05:14:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 08 Mar 2019 05:15:01 GMT
RUN apk add --no-cache 		bash
# Fri, 08 Mar 2019 05:15:01 GMT
ENV NODE_ENV=production
# Fri, 08 Mar 2019 05:15:01 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Fri, 08 Mar 2019 05:15:21 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 08 Mar 2019 05:15:22 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 08 Mar 2019 05:15:22 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 08 Mar 2019 05:15:22 GMT
ENV GHOST_VERSION=2.16.2
# Fri, 08 Mar 2019 05:16:56 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 08 Mar 2019 05:17:23 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 08 Mar 2019 05:17:23 GMT
WORKDIR /var/lib/ghost
# Fri, 08 Mar 2019 05:17:23 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 08 Mar 2019 05:17:24 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Fri, 08 Mar 2019 05:17:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:17:24 GMT
EXPOSE 2368
# Fri, 08 Mar 2019 05:17:25 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d566d24cf388bd16d96a8e5e6ae33a5a47916f36e8744d3d4b78c3ea7bcec9`  
		Last Modified: Fri, 08 Mar 2019 02:58:02 GMT  
		Size: 18.9 MB (18871091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd3a030a46142ea43b86902821374f95626b699f43bca04218f3d21b38f27b4`  
		Last Modified: Fri, 08 Mar 2019 02:57:57 GMT  
		Size: 1.3 MB (1328418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebaa7ccf73aa7e7a6ebd65916a58c61420960f78622c95129d3f1b3c3b20f72`  
		Last Modified: Fri, 08 Mar 2019 05:20:01 GMT  
		Size: 9.4 KB (9413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62938127832ddd653ec7c8d95bb16ed5276f215beb663d0f70642ad7e870de84`  
		Last Modified: Fri, 08 Mar 2019 05:20:05 GMT  
		Size: 1.2 MB (1173443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfe12eae0eda336c272d07e4bcb4eebc112ba82b819ab82f9448da00304b213`  
		Last Modified: Fri, 08 Mar 2019 05:20:28 GMT  
		Size: 17.4 MB (17408304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30c536e2b3b7cdf2d39f03ffceebf3cbc49860c7c825aaa69d29c1424eea812`  
		Last Modified: Fri, 08 Mar 2019 05:20:56 GMT  
		Size: 117.7 MB (117653521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fecea829a6b315acac2f75b814d84ddd1d572e2534cd9c32dd669c517b6a08d`  
		Last Modified: Fri, 08 Mar 2019 05:20:08 GMT  
		Size: 10.8 MB (10812117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192038d99a2949a8866096bd150ce6889d0284b168d19444a71eaadb73783dab`  
		Last Modified: Fri, 08 Mar 2019 05:20:01 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.16-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:2317064f7a6e905b32b7793be8dd501d9277f73f8edf8f8ad272b4d9d35f976c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.8 MB (146837287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d66c5ffa77233c1858d6a984909f51853cc8fdf93ece9869646fab0f32dfbf1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:12 GMT
ADD file:12f605067cb5bbeacec221bac51e31824953cb25bb6660ef15bb4bb4141906ba in / 
# Fri, 08 Mar 2019 03:36:13 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:17:25 GMT
ENV NODE_VERSION=8.15.1
# Fri, 08 Mar 2019 04:21:05 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 08 Mar 2019 04:21:06 GMT
ENV YARN_VERSION=1.12.3
# Fri, 08 Mar 2019 04:21:12 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 08 Mar 2019 04:21:12 GMT
CMD ["node"]
# Fri, 08 Mar 2019 05:42:24 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 08 Mar 2019 05:42:27 GMT
RUN apk add --no-cache 		bash
# Fri, 08 Mar 2019 05:42:27 GMT
ENV NODE_ENV=production
# Fri, 08 Mar 2019 05:42:28 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Fri, 08 Mar 2019 05:43:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 08 Mar 2019 05:43:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 08 Mar 2019 05:43:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 08 Mar 2019 05:43:09 GMT
ENV GHOST_VERSION=2.16.2
# Fri, 08 Mar 2019 05:44:53 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 08 Mar 2019 05:48:03 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 08 Mar 2019 05:48:03 GMT
WORKDIR /var/lib/ghost
# Fri, 08 Mar 2019 05:48:04 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 08 Mar 2019 05:48:04 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Fri, 08 Mar 2019 05:48:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:48:05 GMT
EXPOSE 2368
# Fri, 08 Mar 2019 05:48:05 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8394d8058172005229043bb0bda2cd7a5c4f934cf4c1beeb9a73c40c4edccd8`  
		Last Modified: Fri, 08 Mar 2019 04:37:35 GMT  
		Size: 17.8 MB (17832750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3475b68310e995c23407be0630cb1f49eff51180768b3f288f69ebfd7136368e`  
		Last Modified: Fri, 08 Mar 2019 04:37:29 GMT  
		Size: 1.3 MB (1328472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7da5f74865732f383e8992ebf7fa4cfa5f740db45ee4563dbe4a475eb7b6866`  
		Last Modified: Fri, 08 Mar 2019 05:53:19 GMT  
		Size: 9.3 KB (9338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1974303ef6790ee692ac75b0cb27800cfffbc5bbd8bd67b4a586391ec36a973`  
		Last Modified: Fri, 08 Mar 2019 05:53:19 GMT  
		Size: 1.1 MB (1127600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f06c72d8f464e14487485de6a3f7aabe86a75f2d7d25994e403c1a81204b2f`  
		Last Modified: Fri, 08 Mar 2019 05:53:29 GMT  
		Size: 17.4 MB (17411646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac64722801a5ed4e041ccb1c4f13f851efe46d327da3606259e1d01620bea7c6`  
		Last Modified: Fri, 08 Mar 2019 05:54:00 GMT  
		Size: 94.8 MB (94845715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd65f8291dc798339f03b8072d3f1d38e6c3486cae9fa4fcdf1762cff29da11`  
		Last Modified: Fri, 08 Mar 2019 05:53:22 GMT  
		Size: 12.1 MB (12135100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e26f93b3b6a518e7f2fff776cf06e401e694c41852ec4d7aa2da26678ee2205`  
		Last Modified: Fri, 08 Mar 2019 05:53:18 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.16-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:0c912dad4f9a32f3002ff2f5423b52b5fae3cb6af7d0a53d1335619adc00bf91
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v1+json`
-	Total Size: **148.1 MB (148148078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `eee547178dc20dc768cb88c2dea61c2517e99b45f132b578e597077fe5dc49ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:43 GMT
ADD file:a0b688c2ad4ec9d0535b05f0f63ecc15d1af3e496ad8fcf29809af582add17f0 in / 
# Fri, 08 Mar 2019 03:37:45 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:00:13 GMT
ENV NODE_VERSION=8.15.1
# Fri, 08 Mar 2019 05:10:27 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 08 Mar 2019 05:10:33 GMT
ENV YARN_VERSION=1.12.3
# Fri, 08 Mar 2019 05:10:47 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 08 Mar 2019 05:10:49 GMT
CMD ["node"]
# Fri, 08 Mar 2019 08:46:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 08 Mar 2019 08:46:24 GMT
RUN apk add --no-cache 		bash
# Fri, 08 Mar 2019 08:46:25 GMT
ENV NODE_ENV=production
# Fri, 08 Mar 2019 08:46:27 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Fri, 08 Mar 2019 08:47:08 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 08 Mar 2019 08:47:12 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 08 Mar 2019 08:47:17 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 08 Mar 2019 08:47:20 GMT
ENV GHOST_VERSION=2.16.2
# Fri, 08 Mar 2019 08:49:51 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 08 Mar 2019 08:52:19 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 08 Mar 2019 08:52:23 GMT
WORKDIR /var/lib/ghost
# Fri, 08 Mar 2019 08:52:26 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 08 Mar 2019 08:52:28 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Fri, 08 Mar 2019 08:52:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 08:52:33 GMT
EXPOSE 2368
# Fri, 08 Mar 2019 08:52:35 GMT
RUN ["\/bin\/sh","-c","#(nop) ","CMD [\"node\" \"current\/index.js\"]"]
```

-	Layers:
	-	`sha256:a3ed95caeb02ffe68cdd9fd84406680ae93d633cb16422d00e8a7c22955b46d4`  
		Last Modified: Sat, 14 Nov 2015 09:09:44 GMT  
		Size: 32.0 B  
		MIME: application/octet-stream
	-	`sha256:9ef0580ca17372116f318264e259f4351758e215e77bb3a68a91072f9e37c594`  
		Last Modified: Fri, 08 Mar 2019 08:56:51 GMT  
		Size: 545.0 B  
		MIME: application/octet-stream
	-	`sha256:efa21bb5ac985ad8e0b14c91c5be21d9ad2ab0e2016d20cc299afbc1b79c327b`  
		Last Modified: Fri, 08 Mar 2019 08:56:54 GMT  
		Size: 12.5 MB (12476129 bytes)  
		MIME: application/octet-stream
	-	`sha256:7c6ad58705e6f52634042a8feb85ad9ce4e5b549c2c882470d685731c18589fe`  
		Last Modified: Fri, 08 Mar 2019 08:57:52 GMT  
		Size: 94.9 MB (94882605 bytes)  
		MIME: application/octet-stream
	-	`sha256:7b624075e7b00f817e8374f26b343fe91f6aa10509301f889b7e23ff3e467fb7`  
		Last Modified: Fri, 08 Mar 2019 08:57:11 GMT  
		Size: 17.4 MB (17419550 bytes)  
		MIME: application/octet-stream
	-	`sha256:744d4cdf5ae1062bbba82f25f9252048d7efa314483f3ef4b55b5580e9e77930`  
		Last Modified: Fri, 08 Mar 2019 08:56:54 GMT  
		Size: 1.2 MB (1188859 bytes)  
		MIME: application/octet-stream
	-	`sha256:89112a5c7a13c3819dd790476e6f8211e3c725c74228b2d94a6e36ea27fd959f`  
		Last Modified: Fri, 08 Mar 2019 08:56:57 GMT  
		Size: 9.9 KB (9866 bytes)  
		MIME: application/octet-stream
	-	`sha256:b13e54023987856b7b5e1dc5e439a25362de2b0c052d9e68394c10fd66ec51e1`  
		Last Modified: Fri, 08 Mar 2019 06:04:08 GMT  
		Size: 1.3 MB (1328454 bytes)  
		MIME: application/octet-stream
	-	`sha256:f54b94b204eb1456bcb60e57433eebb8ff746477ffd2ffd426b7e6556c51e556`  
		Last Modified: Fri, 08 Mar 2019 06:04:20 GMT  
		Size: 18.6 MB (18647112 bytes)  
		MIME: application/octet-stream
	-	`sha256:0c6396bb25a488a80e061dc7e486b5fee792a25d36fbafa08c0b0f31ef402eac`  
		Last Modified: Fri, 08 Mar 2019 03:38:44 GMT  
		Size: 2.2 MB (2194926 bytes)  
		MIME: application/octet-stream

## `ghost:2-alpine`

```console
$ docker pull ghost@sha256:2d418214f7bbdff970c630079d833cd86c1575c73a5bbd6f71f2a301f5c479fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:2-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:406dff905a9bf4462e12b72c486c8b3c5d940fedf2fabf7c62e683669612f2bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.5 MB (169464027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6fec93fd606e9feebc8758a73f5cabdc3780d1dea42cd8740477a9dd79344ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 00:48:28 GMT
ENV NODE_VERSION=8.15.1
# Fri, 08 Mar 2019 01:19:02 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 08 Mar 2019 01:19:02 GMT
ENV YARN_VERSION=1.12.3
# Fri, 08 Mar 2019 01:19:06 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 08 Mar 2019 01:19:07 GMT
CMD ["node"]
# Fri, 08 Mar 2019 05:14:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 08 Mar 2019 05:15:01 GMT
RUN apk add --no-cache 		bash
# Fri, 08 Mar 2019 05:15:01 GMT
ENV NODE_ENV=production
# Fri, 08 Mar 2019 05:15:01 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Fri, 08 Mar 2019 05:15:21 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 08 Mar 2019 05:15:22 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 08 Mar 2019 05:15:22 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 08 Mar 2019 05:15:22 GMT
ENV GHOST_VERSION=2.16.2
# Fri, 08 Mar 2019 05:16:56 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 08 Mar 2019 05:17:23 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 08 Mar 2019 05:17:23 GMT
WORKDIR /var/lib/ghost
# Fri, 08 Mar 2019 05:17:23 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 08 Mar 2019 05:17:24 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Fri, 08 Mar 2019 05:17:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:17:24 GMT
EXPOSE 2368
# Fri, 08 Mar 2019 05:17:25 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d566d24cf388bd16d96a8e5e6ae33a5a47916f36e8744d3d4b78c3ea7bcec9`  
		Last Modified: Fri, 08 Mar 2019 02:58:02 GMT  
		Size: 18.9 MB (18871091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd3a030a46142ea43b86902821374f95626b699f43bca04218f3d21b38f27b4`  
		Last Modified: Fri, 08 Mar 2019 02:57:57 GMT  
		Size: 1.3 MB (1328418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebaa7ccf73aa7e7a6ebd65916a58c61420960f78622c95129d3f1b3c3b20f72`  
		Last Modified: Fri, 08 Mar 2019 05:20:01 GMT  
		Size: 9.4 KB (9413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62938127832ddd653ec7c8d95bb16ed5276f215beb663d0f70642ad7e870de84`  
		Last Modified: Fri, 08 Mar 2019 05:20:05 GMT  
		Size: 1.2 MB (1173443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfe12eae0eda336c272d07e4bcb4eebc112ba82b819ab82f9448da00304b213`  
		Last Modified: Fri, 08 Mar 2019 05:20:28 GMT  
		Size: 17.4 MB (17408304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30c536e2b3b7cdf2d39f03ffceebf3cbc49860c7c825aaa69d29c1424eea812`  
		Last Modified: Fri, 08 Mar 2019 05:20:56 GMT  
		Size: 117.7 MB (117653521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fecea829a6b315acac2f75b814d84ddd1d572e2534cd9c32dd669c517b6a08d`  
		Last Modified: Fri, 08 Mar 2019 05:20:08 GMT  
		Size: 10.8 MB (10812117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192038d99a2949a8866096bd150ce6889d0284b168d19444a71eaadb73783dab`  
		Last Modified: Fri, 08 Mar 2019 05:20:01 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:2317064f7a6e905b32b7793be8dd501d9277f73f8edf8f8ad272b4d9d35f976c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.8 MB (146837287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d66c5ffa77233c1858d6a984909f51853cc8fdf93ece9869646fab0f32dfbf1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:12 GMT
ADD file:12f605067cb5bbeacec221bac51e31824953cb25bb6660ef15bb4bb4141906ba in / 
# Fri, 08 Mar 2019 03:36:13 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:17:25 GMT
ENV NODE_VERSION=8.15.1
# Fri, 08 Mar 2019 04:21:05 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 08 Mar 2019 04:21:06 GMT
ENV YARN_VERSION=1.12.3
# Fri, 08 Mar 2019 04:21:12 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 08 Mar 2019 04:21:12 GMT
CMD ["node"]
# Fri, 08 Mar 2019 05:42:24 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 08 Mar 2019 05:42:27 GMT
RUN apk add --no-cache 		bash
# Fri, 08 Mar 2019 05:42:27 GMT
ENV NODE_ENV=production
# Fri, 08 Mar 2019 05:42:28 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Fri, 08 Mar 2019 05:43:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 08 Mar 2019 05:43:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 08 Mar 2019 05:43:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 08 Mar 2019 05:43:09 GMT
ENV GHOST_VERSION=2.16.2
# Fri, 08 Mar 2019 05:44:53 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 08 Mar 2019 05:48:03 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 08 Mar 2019 05:48:03 GMT
WORKDIR /var/lib/ghost
# Fri, 08 Mar 2019 05:48:04 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 08 Mar 2019 05:48:04 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Fri, 08 Mar 2019 05:48:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:48:05 GMT
EXPOSE 2368
# Fri, 08 Mar 2019 05:48:05 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8394d8058172005229043bb0bda2cd7a5c4f934cf4c1beeb9a73c40c4edccd8`  
		Last Modified: Fri, 08 Mar 2019 04:37:35 GMT  
		Size: 17.8 MB (17832750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3475b68310e995c23407be0630cb1f49eff51180768b3f288f69ebfd7136368e`  
		Last Modified: Fri, 08 Mar 2019 04:37:29 GMT  
		Size: 1.3 MB (1328472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7da5f74865732f383e8992ebf7fa4cfa5f740db45ee4563dbe4a475eb7b6866`  
		Last Modified: Fri, 08 Mar 2019 05:53:19 GMT  
		Size: 9.3 KB (9338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1974303ef6790ee692ac75b0cb27800cfffbc5bbd8bd67b4a586391ec36a973`  
		Last Modified: Fri, 08 Mar 2019 05:53:19 GMT  
		Size: 1.1 MB (1127600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f06c72d8f464e14487485de6a3f7aabe86a75f2d7d25994e403c1a81204b2f`  
		Last Modified: Fri, 08 Mar 2019 05:53:29 GMT  
		Size: 17.4 MB (17411646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac64722801a5ed4e041ccb1c4f13f851efe46d327da3606259e1d01620bea7c6`  
		Last Modified: Fri, 08 Mar 2019 05:54:00 GMT  
		Size: 94.8 MB (94845715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd65f8291dc798339f03b8072d3f1d38e6c3486cae9fa4fcdf1762cff29da11`  
		Last Modified: Fri, 08 Mar 2019 05:53:22 GMT  
		Size: 12.1 MB (12135100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e26f93b3b6a518e7f2fff776cf06e401e694c41852ec4d7aa2da26678ee2205`  
		Last Modified: Fri, 08 Mar 2019 05:53:18 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:0c912dad4f9a32f3002ff2f5423b52b5fae3cb6af7d0a53d1335619adc00bf91
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v1+json`
-	Total Size: **148.1 MB (148148078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `eee547178dc20dc768cb88c2dea61c2517e99b45f132b578e597077fe5dc49ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:43 GMT
ADD file:a0b688c2ad4ec9d0535b05f0f63ecc15d1af3e496ad8fcf29809af582add17f0 in / 
# Fri, 08 Mar 2019 03:37:45 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:00:13 GMT
ENV NODE_VERSION=8.15.1
# Fri, 08 Mar 2019 05:10:27 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 08 Mar 2019 05:10:33 GMT
ENV YARN_VERSION=1.12.3
# Fri, 08 Mar 2019 05:10:47 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 08 Mar 2019 05:10:49 GMT
CMD ["node"]
# Fri, 08 Mar 2019 08:46:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 08 Mar 2019 08:46:24 GMT
RUN apk add --no-cache 		bash
# Fri, 08 Mar 2019 08:46:25 GMT
ENV NODE_ENV=production
# Fri, 08 Mar 2019 08:46:27 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Fri, 08 Mar 2019 08:47:08 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 08 Mar 2019 08:47:12 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 08 Mar 2019 08:47:17 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 08 Mar 2019 08:47:20 GMT
ENV GHOST_VERSION=2.16.2
# Fri, 08 Mar 2019 08:49:51 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 08 Mar 2019 08:52:19 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 08 Mar 2019 08:52:23 GMT
WORKDIR /var/lib/ghost
# Fri, 08 Mar 2019 08:52:26 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 08 Mar 2019 08:52:28 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Fri, 08 Mar 2019 08:52:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 08:52:33 GMT
EXPOSE 2368
# Fri, 08 Mar 2019 08:52:35 GMT
RUN ["\/bin\/sh","-c","#(nop) ","CMD [\"node\" \"current\/index.js\"]"]
```

-	Layers:
	-	`sha256:a3ed95caeb02ffe68cdd9fd84406680ae93d633cb16422d00e8a7c22955b46d4`  
		Last Modified: Sat, 14 Nov 2015 09:09:44 GMT  
		Size: 32.0 B  
		MIME: application/octet-stream
	-	`sha256:9ef0580ca17372116f318264e259f4351758e215e77bb3a68a91072f9e37c594`  
		Last Modified: Fri, 08 Mar 2019 08:56:51 GMT  
		Size: 545.0 B  
		MIME: application/octet-stream
	-	`sha256:efa21bb5ac985ad8e0b14c91c5be21d9ad2ab0e2016d20cc299afbc1b79c327b`  
		Last Modified: Fri, 08 Mar 2019 08:56:54 GMT  
		Size: 12.5 MB (12476129 bytes)  
		MIME: application/octet-stream
	-	`sha256:7c6ad58705e6f52634042a8feb85ad9ce4e5b549c2c882470d685731c18589fe`  
		Last Modified: Fri, 08 Mar 2019 08:57:52 GMT  
		Size: 94.9 MB (94882605 bytes)  
		MIME: application/octet-stream
	-	`sha256:7b624075e7b00f817e8374f26b343fe91f6aa10509301f889b7e23ff3e467fb7`  
		Last Modified: Fri, 08 Mar 2019 08:57:11 GMT  
		Size: 17.4 MB (17419550 bytes)  
		MIME: application/octet-stream
	-	`sha256:744d4cdf5ae1062bbba82f25f9252048d7efa314483f3ef4b55b5580e9e77930`  
		Last Modified: Fri, 08 Mar 2019 08:56:54 GMT  
		Size: 1.2 MB (1188859 bytes)  
		MIME: application/octet-stream
	-	`sha256:89112a5c7a13c3819dd790476e6f8211e3c725c74228b2d94a6e36ea27fd959f`  
		Last Modified: Fri, 08 Mar 2019 08:56:57 GMT  
		Size: 9.9 KB (9866 bytes)  
		MIME: application/octet-stream
	-	`sha256:b13e54023987856b7b5e1dc5e439a25362de2b0c052d9e68394c10fd66ec51e1`  
		Last Modified: Fri, 08 Mar 2019 06:04:08 GMT  
		Size: 1.3 MB (1328454 bytes)  
		MIME: application/octet-stream
	-	`sha256:f54b94b204eb1456bcb60e57433eebb8ff746477ffd2ffd426b7e6556c51e556`  
		Last Modified: Fri, 08 Mar 2019 06:04:20 GMT  
		Size: 18.6 MB (18647112 bytes)  
		MIME: application/octet-stream
	-	`sha256:0c6396bb25a488a80e061dc7e486b5fee792a25d36fbafa08c0b0f31ef402eac`  
		Last Modified: Fri, 08 Mar 2019 03:38:44 GMT  
		Size: 2.2 MB (2194926 bytes)  
		MIME: application/octet-stream

## `ghost:alpine`

```console
$ docker pull ghost@sha256:2d418214f7bbdff970c630079d833cd86c1575c73a5bbd6f71f2a301f5c479fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:406dff905a9bf4462e12b72c486c8b3c5d940fedf2fabf7c62e683669612f2bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.5 MB (169464027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6fec93fd606e9feebc8758a73f5cabdc3780d1dea42cd8740477a9dd79344ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 00:48:28 GMT
ENV NODE_VERSION=8.15.1
# Fri, 08 Mar 2019 01:19:02 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 08 Mar 2019 01:19:02 GMT
ENV YARN_VERSION=1.12.3
# Fri, 08 Mar 2019 01:19:06 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 08 Mar 2019 01:19:07 GMT
CMD ["node"]
# Fri, 08 Mar 2019 05:14:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 08 Mar 2019 05:15:01 GMT
RUN apk add --no-cache 		bash
# Fri, 08 Mar 2019 05:15:01 GMT
ENV NODE_ENV=production
# Fri, 08 Mar 2019 05:15:01 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Fri, 08 Mar 2019 05:15:21 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 08 Mar 2019 05:15:22 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 08 Mar 2019 05:15:22 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 08 Mar 2019 05:15:22 GMT
ENV GHOST_VERSION=2.16.2
# Fri, 08 Mar 2019 05:16:56 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 08 Mar 2019 05:17:23 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 08 Mar 2019 05:17:23 GMT
WORKDIR /var/lib/ghost
# Fri, 08 Mar 2019 05:17:23 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 08 Mar 2019 05:17:24 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Fri, 08 Mar 2019 05:17:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:17:24 GMT
EXPOSE 2368
# Fri, 08 Mar 2019 05:17:25 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d566d24cf388bd16d96a8e5e6ae33a5a47916f36e8744d3d4b78c3ea7bcec9`  
		Last Modified: Fri, 08 Mar 2019 02:58:02 GMT  
		Size: 18.9 MB (18871091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd3a030a46142ea43b86902821374f95626b699f43bca04218f3d21b38f27b4`  
		Last Modified: Fri, 08 Mar 2019 02:57:57 GMT  
		Size: 1.3 MB (1328418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebaa7ccf73aa7e7a6ebd65916a58c61420960f78622c95129d3f1b3c3b20f72`  
		Last Modified: Fri, 08 Mar 2019 05:20:01 GMT  
		Size: 9.4 KB (9413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62938127832ddd653ec7c8d95bb16ed5276f215beb663d0f70642ad7e870de84`  
		Last Modified: Fri, 08 Mar 2019 05:20:05 GMT  
		Size: 1.2 MB (1173443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfe12eae0eda336c272d07e4bcb4eebc112ba82b819ab82f9448da00304b213`  
		Last Modified: Fri, 08 Mar 2019 05:20:28 GMT  
		Size: 17.4 MB (17408304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30c536e2b3b7cdf2d39f03ffceebf3cbc49860c7c825aaa69d29c1424eea812`  
		Last Modified: Fri, 08 Mar 2019 05:20:56 GMT  
		Size: 117.7 MB (117653521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fecea829a6b315acac2f75b814d84ddd1d572e2534cd9c32dd669c517b6a08d`  
		Last Modified: Fri, 08 Mar 2019 05:20:08 GMT  
		Size: 10.8 MB (10812117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192038d99a2949a8866096bd150ce6889d0284b168d19444a71eaadb73783dab`  
		Last Modified: Fri, 08 Mar 2019 05:20:01 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:2317064f7a6e905b32b7793be8dd501d9277f73f8edf8f8ad272b4d9d35f976c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.8 MB (146837287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d66c5ffa77233c1858d6a984909f51853cc8fdf93ece9869646fab0f32dfbf1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:12 GMT
ADD file:12f605067cb5bbeacec221bac51e31824953cb25bb6660ef15bb4bb4141906ba in / 
# Fri, 08 Mar 2019 03:36:13 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:17:25 GMT
ENV NODE_VERSION=8.15.1
# Fri, 08 Mar 2019 04:21:05 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 08 Mar 2019 04:21:06 GMT
ENV YARN_VERSION=1.12.3
# Fri, 08 Mar 2019 04:21:12 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 08 Mar 2019 04:21:12 GMT
CMD ["node"]
# Fri, 08 Mar 2019 05:42:24 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 08 Mar 2019 05:42:27 GMT
RUN apk add --no-cache 		bash
# Fri, 08 Mar 2019 05:42:27 GMT
ENV NODE_ENV=production
# Fri, 08 Mar 2019 05:42:28 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Fri, 08 Mar 2019 05:43:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 08 Mar 2019 05:43:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 08 Mar 2019 05:43:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 08 Mar 2019 05:43:09 GMT
ENV GHOST_VERSION=2.16.2
# Fri, 08 Mar 2019 05:44:53 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 08 Mar 2019 05:48:03 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 08 Mar 2019 05:48:03 GMT
WORKDIR /var/lib/ghost
# Fri, 08 Mar 2019 05:48:04 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 08 Mar 2019 05:48:04 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Fri, 08 Mar 2019 05:48:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:48:05 GMT
EXPOSE 2368
# Fri, 08 Mar 2019 05:48:05 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8394d8058172005229043bb0bda2cd7a5c4f934cf4c1beeb9a73c40c4edccd8`  
		Last Modified: Fri, 08 Mar 2019 04:37:35 GMT  
		Size: 17.8 MB (17832750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3475b68310e995c23407be0630cb1f49eff51180768b3f288f69ebfd7136368e`  
		Last Modified: Fri, 08 Mar 2019 04:37:29 GMT  
		Size: 1.3 MB (1328472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7da5f74865732f383e8992ebf7fa4cfa5f740db45ee4563dbe4a475eb7b6866`  
		Last Modified: Fri, 08 Mar 2019 05:53:19 GMT  
		Size: 9.3 KB (9338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1974303ef6790ee692ac75b0cb27800cfffbc5bbd8bd67b4a586391ec36a973`  
		Last Modified: Fri, 08 Mar 2019 05:53:19 GMT  
		Size: 1.1 MB (1127600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f06c72d8f464e14487485de6a3f7aabe86a75f2d7d25994e403c1a81204b2f`  
		Last Modified: Fri, 08 Mar 2019 05:53:29 GMT  
		Size: 17.4 MB (17411646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac64722801a5ed4e041ccb1c4f13f851efe46d327da3606259e1d01620bea7c6`  
		Last Modified: Fri, 08 Mar 2019 05:54:00 GMT  
		Size: 94.8 MB (94845715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd65f8291dc798339f03b8072d3f1d38e6c3486cae9fa4fcdf1762cff29da11`  
		Last Modified: Fri, 08 Mar 2019 05:53:22 GMT  
		Size: 12.1 MB (12135100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e26f93b3b6a518e7f2fff776cf06e401e694c41852ec4d7aa2da26678ee2205`  
		Last Modified: Fri, 08 Mar 2019 05:53:18 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:0c912dad4f9a32f3002ff2f5423b52b5fae3cb6af7d0a53d1335619adc00bf91
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v1+json`
-	Total Size: **148.1 MB (148148078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `eee547178dc20dc768cb88c2dea61c2517e99b45f132b578e597077fe5dc49ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:43 GMT
ADD file:a0b688c2ad4ec9d0535b05f0f63ecc15d1af3e496ad8fcf29809af582add17f0 in / 
# Fri, 08 Mar 2019 03:37:45 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:00:13 GMT
ENV NODE_VERSION=8.15.1
# Fri, 08 Mar 2019 05:10:27 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 08 Mar 2019 05:10:33 GMT
ENV YARN_VERSION=1.12.3
# Fri, 08 Mar 2019 05:10:47 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 08 Mar 2019 05:10:49 GMT
CMD ["node"]
# Fri, 08 Mar 2019 08:46:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 08 Mar 2019 08:46:24 GMT
RUN apk add --no-cache 		bash
# Fri, 08 Mar 2019 08:46:25 GMT
ENV NODE_ENV=production
# Fri, 08 Mar 2019 08:46:27 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Fri, 08 Mar 2019 08:47:08 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 08 Mar 2019 08:47:12 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 08 Mar 2019 08:47:17 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 08 Mar 2019 08:47:20 GMT
ENV GHOST_VERSION=2.16.2
# Fri, 08 Mar 2019 08:49:51 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 08 Mar 2019 08:52:19 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 08 Mar 2019 08:52:23 GMT
WORKDIR /var/lib/ghost
# Fri, 08 Mar 2019 08:52:26 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 08 Mar 2019 08:52:28 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Fri, 08 Mar 2019 08:52:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 08:52:33 GMT
EXPOSE 2368
# Fri, 08 Mar 2019 08:52:35 GMT
RUN ["\/bin\/sh","-c","#(nop) ","CMD [\"node\" \"current\/index.js\"]"]
```

-	Layers:
	-	`sha256:a3ed95caeb02ffe68cdd9fd84406680ae93d633cb16422d00e8a7c22955b46d4`  
		Last Modified: Sat, 14 Nov 2015 09:09:44 GMT  
		Size: 32.0 B  
		MIME: application/octet-stream
	-	`sha256:9ef0580ca17372116f318264e259f4351758e215e77bb3a68a91072f9e37c594`  
		Last Modified: Fri, 08 Mar 2019 08:56:51 GMT  
		Size: 545.0 B  
		MIME: application/octet-stream
	-	`sha256:efa21bb5ac985ad8e0b14c91c5be21d9ad2ab0e2016d20cc299afbc1b79c327b`  
		Last Modified: Fri, 08 Mar 2019 08:56:54 GMT  
		Size: 12.5 MB (12476129 bytes)  
		MIME: application/octet-stream
	-	`sha256:7c6ad58705e6f52634042a8feb85ad9ce4e5b549c2c882470d685731c18589fe`  
		Last Modified: Fri, 08 Mar 2019 08:57:52 GMT  
		Size: 94.9 MB (94882605 bytes)  
		MIME: application/octet-stream
	-	`sha256:7b624075e7b00f817e8374f26b343fe91f6aa10509301f889b7e23ff3e467fb7`  
		Last Modified: Fri, 08 Mar 2019 08:57:11 GMT  
		Size: 17.4 MB (17419550 bytes)  
		MIME: application/octet-stream
	-	`sha256:744d4cdf5ae1062bbba82f25f9252048d7efa314483f3ef4b55b5580e9e77930`  
		Last Modified: Fri, 08 Mar 2019 08:56:54 GMT  
		Size: 1.2 MB (1188859 bytes)  
		MIME: application/octet-stream
	-	`sha256:89112a5c7a13c3819dd790476e6f8211e3c725c74228b2d94a6e36ea27fd959f`  
		Last Modified: Fri, 08 Mar 2019 08:56:57 GMT  
		Size: 9.9 KB (9866 bytes)  
		MIME: application/octet-stream
	-	`sha256:b13e54023987856b7b5e1dc5e439a25362de2b0c052d9e68394c10fd66ec51e1`  
		Last Modified: Fri, 08 Mar 2019 06:04:08 GMT  
		Size: 1.3 MB (1328454 bytes)  
		MIME: application/octet-stream
	-	`sha256:f54b94b204eb1456bcb60e57433eebb8ff746477ffd2ffd426b7e6556c51e556`  
		Last Modified: Fri, 08 Mar 2019 06:04:20 GMT  
		Size: 18.6 MB (18647112 bytes)  
		MIME: application/octet-stream
	-	`sha256:0c6396bb25a488a80e061dc7e486b5fee792a25d36fbafa08c0b0f31ef402eac`  
		Last Modified: Fri, 08 Mar 2019 03:38:44 GMT  
		Size: 2.2 MB (2194926 bytes)  
		MIME: application/octet-stream

## `ghost:latest`

```console
$ docker pull ghost@sha256:9b72e71d787c4af2be7ac041f8b09f12265bcaf1a4465e7de03ac5d1d01dc2e1
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
$ docker pull ghost@sha256:816847c98dde69e586ea9dd5f8b003dde676ffbf0ce5a752b74b5e1a11014c03
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.9 MB (187885114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:161877d261ab2fa42fe023817ec4c815dd897dc2174ff3127c460b9657dae81f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:39:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 05 Mar 2019 03:39:21 GMT
ENV NODE_VERSION=8.15.1
# Tue, 05 Mar 2019 03:39:41 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Mar 2019 03:39:41 GMT
ENV YARN_VERSION=1.12.3
# Tue, 05 Mar 2019 03:39:44 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Mar 2019 03:39:44 GMT
CMD ["node"]
# Tue, 05 Mar 2019 12:34:47 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 12:34:51 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Mar 2019 12:34:52 GMT
ENV NODE_ENV=production
# Tue, 05 Mar 2019 12:34:52 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 05 Mar 2019 12:35:24 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 05 Mar 2019 12:35:25 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 05 Mar 2019 12:35:26 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 05 Mar 2019 12:35:26 GMT
ENV GHOST_VERSION=2.16.2
# Tue, 05 Mar 2019 12:36:47 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 05 Mar 2019 12:37:05 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 05 Mar 2019 12:37:06 GMT
WORKDIR /var/lib/ghost
# Tue, 05 Mar 2019 12:37:06 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 05 Mar 2019 12:37:06 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Tue, 05 Mar 2019 12:37:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 12:37:07 GMT
EXPOSE 2368
# Tue, 05 Mar 2019 12:37:07 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19dd238db8995f783250a0dd30f6c127d9f2e1b4702e417d3a34b4693022cab8`  
		Last Modified: Tue, 05 Mar 2019 03:49:28 GMT  
		Size: 4.1 KB (4144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da38310bbd9763801810f8793a564eab36805e429586bb0f653a3cc0702742a3`  
		Last Modified: Tue, 05 Mar 2019 03:49:35 GMT  
		Size: 28.0 MB (28017497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25422d96e287e9b9967dac86926d6763609cbd09207d45acffc094bc6043847`  
		Last Modified: Tue, 05 Mar 2019 03:49:27 GMT  
		Size: 1.3 MB (1321438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cec8e97cfc6fef48429e81db9779580f6de77e8ae16c0da64f972832eab2ea1`  
		Last Modified: Tue, 05 Mar 2019 12:39:21 GMT  
		Size: 500.9 KB (500920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7900078ee90c4dd169c5c35ad68f7d9d78fdf94b77daf9aad48b234ab80ded95`  
		Last Modified: Tue, 05 Mar 2019 12:39:28 GMT  
		Size: 17.4 MB (17412256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b16cceeb30a00eca8ffca8d3fc48fe8b9eb154156100fd8909e3f0a8c380545`  
		Last Modified: Tue, 05 Mar 2019 12:39:57 GMT  
		Size: 116.7 MB (116749725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511973989b90262e3a882cabfec899a79eb184b7c1a75cf8598d12040df4d595`  
		Last Modified: Tue, 05 Mar 2019 12:39:21 GMT  
		Size: 1.4 MB (1382542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faee9923a130b1c532e1da274f07818d480f0e4a240055e0e8529b7b7b7730e3`  
		Last Modified: Tue, 05 Mar 2019 12:39:20 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm variant v7

```console
$ docker pull ghost@sha256:18f151dc34a65f9a9dbfc97fa183b78821beb053dbdbbc057f3669ac64b237c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.9 MB (185944880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b5188d123d0174a6553cf41dc7d8c6c245c36c33f5a60ffb854b5670c1d95ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:04:04 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 05 Mar 2019 14:04:04 GMT
ENV NODE_VERSION=8.15.1
# Tue, 05 Mar 2019 14:04:34 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Mar 2019 14:04:35 GMT
ENV YARN_VERSION=1.12.3
# Tue, 05 Mar 2019 14:04:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Mar 2019 14:04:42 GMT
CMD ["node"]
# Tue, 05 Mar 2019 17:15:52 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 17:15:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Mar 2019 17:15:57 GMT
ENV NODE_ENV=production
# Tue, 05 Mar 2019 17:15:57 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 05 Mar 2019 17:16:38 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 05 Mar 2019 17:16:41 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 05 Mar 2019 17:16:41 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 05 Mar 2019 17:16:42 GMT
ENV GHOST_VERSION=2.16.2
# Tue, 05 Mar 2019 17:18:24 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 05 Mar 2019 17:21:50 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 05 Mar 2019 17:21:51 GMT
WORKDIR /var/lib/ghost
# Tue, 05 Mar 2019 17:21:51 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 05 Mar 2019 17:21:52 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Tue, 05 Mar 2019 17:21:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 17:21:53 GMT
EXPOSE 2368
# Tue, 05 Mar 2019 17:21:54 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0ec74be39414de5fbb3c3c6d581fe9f01c5fe455a62141eff10d3c2b48a32c`  
		Last Modified: Tue, 05 Mar 2019 14:13:24 GMT  
		Size: 4.2 KB (4171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65a5c9d2267b657be520c54ec762c1a6e3837df47ca086a53fe7f3991e0d1fa`  
		Last Modified: Tue, 05 Mar 2019 14:13:33 GMT  
		Size: 25.5 MB (25472745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935cec4e970287eba460f49bc5a9f1a5bfc50af8c5392444bc16efbb92b4aa0f`  
		Last Modified: Tue, 05 Mar 2019 14:13:25 GMT  
		Size: 1.3 MB (1321447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f6de281e0194a45a36fef43c2d259dcb5de801e148c2d9ff8b91ca2282dfac`  
		Last Modified: Tue, 05 Mar 2019 17:27:35 GMT  
		Size: 475.4 KB (475431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3976554702f9bf6cedf7d4ace917931fbf47b943ebef3a4f91a3940244d9eeca`  
		Last Modified: Tue, 05 Mar 2019 17:27:45 GMT  
		Size: 17.4 MB (17411216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7579053a4c4894a6f54b9380363ce1f3964ccd691e556b2f2c14100c037143`  
		Last Modified: Tue, 05 Mar 2019 17:28:15 GMT  
		Size: 101.7 MB (101742086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a964578ad5f32a5f2adb08be6a00563c722fb93aa697c99dd11da8f9fb7836`  
		Last Modified: Tue, 05 Mar 2019 17:27:43 GMT  
		Size: 20.2 MB (20234730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0be2a62fc0b63617a2e5e82d676b06fe743dbe73eb9bd525e470df9a360b2f2c`  
		Last Modified: Tue, 05 Mar 2019 17:27:35 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:8fd7d361d946844211cc8f58b59aae40e0888fd6ee18c4a887c4a66a302ebc75
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.0 MB (190969090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eade8037dcb8e0266dbca00899850781c160d7831815143b46093f04cdc983a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 00:55:30 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 01 Mar 2019 10:10:44 GMT
ENV NODE_VERSION=8.15.1
# Fri, 01 Mar 2019 10:12:06 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 01 Mar 2019 10:12:07 GMT
ENV YARN_VERSION=1.12.3
# Fri, 01 Mar 2019 10:12:15 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 01 Mar 2019 10:12:16 GMT
CMD ["node"]
# Fri, 01 Mar 2019 11:41:40 GMT
ENV GOSU_VERSION=1.10
# Fri, 01 Mar 2019 11:41:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 01 Mar 2019 11:41:47 GMT
ENV NODE_ENV=production
# Fri, 01 Mar 2019 11:41:48 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Fri, 01 Mar 2019 11:42:26 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 01 Mar 2019 11:42:27 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 01 Mar 2019 11:42:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 02 Mar 2019 09:59:39 GMT
ENV GHOST_VERSION=2.16.2
# Sat, 02 Mar 2019 10:05:22 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Sat, 02 Mar 2019 10:11:52 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 02 Mar 2019 10:11:53 GMT
WORKDIR /var/lib/ghost
# Sat, 02 Mar 2019 10:11:54 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 02 Mar 2019 10:11:55 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Sat, 02 Mar 2019 10:11:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 10:11:57 GMT
EXPOSE 2368
# Sat, 02 Mar 2019 10:11:58 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cde3cb8d6c0e984b84c0cb58e131df0c9cf333683af998db5e0cfcaf12b7393`  
		Last Modified: Thu, 07 Feb 2019 01:05:20 GMT  
		Size: 4.2 KB (4150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:953b766fdf579ba8a497d21838004a0d221083949f2523b0e872c57b6870e3da`  
		Last Modified: Fri, 01 Mar 2019 11:22:49 GMT  
		Size: 26.7 MB (26700656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd39b68f82af7807c06398e865c1d436c12e76629ed0d271856e7a01aaeb5a48`  
		Last Modified: Fri, 01 Mar 2019 11:22:37 GMT  
		Size: 1.3 MB (1321438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ced6cca8c8873b9dc061765fc36024a7b69a14318b6f49af60115cc6b7da9a5`  
		Last Modified: Fri, 01 Mar 2019 11:56:04 GMT  
		Size: 468.9 KB (468939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76849c2b5ae6d78bb9bf4bbdaf75447c1a1d4bb64fcb16eeb4c413f4a2555e45`  
		Last Modified: Fri, 01 Mar 2019 11:56:14 GMT  
		Size: 17.4 MB (17399341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919ca94293db55c6f05acf29945ef9c5785e6ff7614db297324e8fccad068e6a`  
		Last Modified: Sat, 02 Mar 2019 10:13:45 GMT  
		Size: 100.9 MB (100855612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d873086dca3733a73dc8b0adf51993d347b4e5553b29ea802d464cc3cece9a5`  
		Last Modified: Sat, 02 Mar 2019 10:13:10 GMT  
		Size: 23.9 MB (23868234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b69598977e196951a450573cb726d1a46cb0a425db3aa582adf015df64630b9`  
		Last Modified: Sat, 02 Mar 2019 10:13:01 GMT  
		Size: 561.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; 386

```console
$ docker pull ghost@sha256:66569dac8529bec781789ac6c99260914593699288deaf8a4a57685fa3be4227
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.6 MB (177631104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acf9c2d7c3c4554268b3116766d4e90da4983db753c89f81336cce7cff8bf514`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 16:08:15 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 05 Mar 2019 16:08:15 GMT
ENV NODE_VERSION=8.15.1
# Tue, 05 Mar 2019 16:08:34 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Mar 2019 16:08:34 GMT
ENV YARN_VERSION=1.12.3
# Tue, 05 Mar 2019 16:08:37 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Mar 2019 16:08:38 GMT
CMD ["node"]
# Wed, 06 Mar 2019 00:14:17 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Mar 2019 00:14:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Mar 2019 00:14:21 GMT
ENV NODE_ENV=production
# Wed, 06 Mar 2019 00:14:21 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Wed, 06 Mar 2019 00:14:43 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Mar 2019 00:14:43 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Mar 2019 00:14:43 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Mar 2019 00:14:44 GMT
ENV GHOST_VERSION=2.16.2
# Wed, 06 Mar 2019 00:15:29 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 06 Mar 2019 00:17:01 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Mar 2019 00:17:02 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Mar 2019 00:17:02 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Mar 2019 00:17:02 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Wed, 06 Mar 2019 00:17:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Mar 2019 00:17:02 GMT
EXPOSE 2368
# Wed, 06 Mar 2019 00:17:03 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b42aa871f86bceea09dc73ea6e00cd2eb8b2532a1d4cbdcf7af8ed86e0f02e`  
		Last Modified: Tue, 05 Mar 2019 16:14:00 GMT  
		Size: 4.1 KB (4135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f66dda9b1a76e28608400319c4054d5c5bc0adb643072c71cd319915e63f49e`  
		Last Modified: Tue, 05 Mar 2019 16:14:10 GMT  
		Size: 27.8 MB (27849482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76027775c669bf1beab618f9faf82efba1362d4b2f9c5964fd4509d20ab35c0e`  
		Last Modified: Tue, 05 Mar 2019 16:14:01 GMT  
		Size: 1.3 MB (1321442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532e0ab66a10fc74fcabf309a152db3e52341163f62e1712700b5b0103645582`  
		Last Modified: Wed, 06 Mar 2019 00:20:02 GMT  
		Size: 480.8 KB (480829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f60b76bf5b061e75b87bac430d5a6bb599679c8e41bde84787e5f591ac9dc45`  
		Last Modified: Wed, 06 Mar 2019 00:20:09 GMT  
		Size: 17.4 MB (17412683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a24124d6200408ac76932d9c1a29c083a69ba5557d3756146738a19d891bd0`  
		Last Modified: Wed, 06 Mar 2019 00:20:30 GMT  
		Size: 94.8 MB (94845541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697b80c88f26876ee62d980068f86483bd7476845c7d5aec752baf8f52593444`  
		Last Modified: Wed, 06 Mar 2019 00:20:07 GMT  
		Size: 12.6 MB (12590753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61409e22002b2c73015de97085b035f3afceb1ccdebdde84bbcebde488b61825`  
		Last Modified: Wed, 06 Mar 2019 00:20:02 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; ppc64le

```console
$ docker pull ghost@sha256:3d8539dc2794dc4ce11964f5e9d37484fe5c2c13b37521cbcc0ac19467bb2fa1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.5 MB (176480400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85756e75a70a93803f2b5a1edc4b65890be674c1500cb1a399e73b3a41e14cd3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:38:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 05 Mar 2019 11:38:20 GMT
ENV NODE_VERSION=8.15.1
# Tue, 05 Mar 2019 11:39:47 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Mar 2019 11:39:51 GMT
ENV YARN_VERSION=1.12.3
# Tue, 05 Mar 2019 11:40:00 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Mar 2019 11:40:03 GMT
CMD ["node"]
# Tue, 05 Mar 2019 17:12:55 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 17:13:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Mar 2019 17:13:06 GMT
ENV NODE_ENV=production
# Tue, 05 Mar 2019 17:13:10 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 05 Mar 2019 17:13:48 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 05 Mar 2019 17:13:54 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 05 Mar 2019 17:13:56 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 05 Mar 2019 17:14:00 GMT
ENV GHOST_VERSION=2.16.2
# Tue, 05 Mar 2019 17:16:37 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 05 Mar 2019 17:20:54 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 05 Mar 2019 17:21:00 GMT
WORKDIR /var/lib/ghost
# Tue, 05 Mar 2019 17:21:04 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 05 Mar 2019 17:21:07 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Tue, 05 Mar 2019 17:21:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 17:21:17 GMT
EXPOSE 2368
# Tue, 05 Mar 2019 17:21:24 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7146b59d4f68f2ab05830fe018c20d50c6af1bc7e59dd6222e557003294b7de`  
		Last Modified: Tue, 05 Mar 2019 11:43:34 GMT  
		Size: 4.2 KB (4171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb865b0db5c9451360b58b81eb5c75d86f218324f5ffc653590fb49400a4056`  
		Last Modified: Tue, 05 Mar 2019 11:43:41 GMT  
		Size: 27.0 MB (26969108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b65f1ce016ac02f0e4180eecb0bf6536c48e1323d8c131b6f21d1431399c56`  
		Last Modified: Tue, 05 Mar 2019 11:43:34 GMT  
		Size: 1.3 MB (1321459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2876c660201fba48fb93964ec070c1b61d6a892181c3f24e21265248a66cd0be`  
		Last Modified: Tue, 05 Mar 2019 17:30:24 GMT  
		Size: 470.1 KB (470077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8998686f907bc120037e34fed178f04fefdda5834860fd8d72cfd5e2661373f8`  
		Last Modified: Tue, 05 Mar 2019 17:30:53 GMT  
		Size: 17.4 MB (17412061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70eb17bd6bfaf64393326419a2eb14ebac0976ec42beadb8ab6defb26720e9cf`  
		Last Modified: Tue, 05 Mar 2019 17:32:13 GMT  
		Size: 94.9 MB (94882669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73cf39fdc87a2c5ae058450c6ed7a725f669643d360557e37115731499f0ef33`  
		Last Modified: Tue, 05 Mar 2019 17:30:28 GMT  
		Size: 12.7 MB (12668797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9017c538e04213a3c210c67d79944a6a18447de28d5f114817d74bd290bcad`  
		Last Modified: Tue, 05 Mar 2019 17:30:24 GMT  
		Size: 561.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; s390x

```console
$ docker pull ghost@sha256:767e94801b71f1f04099cf57d1e48eaa5429b00dc94da0b16aca8c298e2364ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176963808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a10c21793ff17b3bdf39b8e289b76d468abe25881427c03b8e7b4b92c9bd4b37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:27:33 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 05 Mar 2019 15:27:33 GMT
ENV NODE_VERSION=8.15.1
# Tue, 05 Mar 2019 15:27:52 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Mar 2019 15:27:52 GMT
ENV YARN_VERSION=1.12.3
# Tue, 05 Mar 2019 15:27:56 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Mar 2019 15:27:57 GMT
CMD ["node"]
# Tue, 05 Mar 2019 19:27:16 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 19:27:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Mar 2019 19:27:21 GMT
ENV NODE_ENV=production
# Tue, 05 Mar 2019 19:27:23 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Tue, 05 Mar 2019 19:27:48 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 05 Mar 2019 19:27:49 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 05 Mar 2019 19:27:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 05 Mar 2019 19:27:49 GMT
ENV GHOST_VERSION=2.16.2
# Tue, 05 Mar 2019 19:28:31 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 05 Mar 2019 19:30:15 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 05 Mar 2019 19:30:16 GMT
WORKDIR /var/lib/ghost
# Tue, 05 Mar 2019 19:30:16 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 05 Mar 2019 19:30:16 GMT
COPY file:303989b132b5193e832753e2c7236a4050fdc0fe60a54dc1f0c4a44422a2d1ca in /usr/local/bin 
# Tue, 05 Mar 2019 19:30:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 19:30:17 GMT
EXPOSE 2368
# Tue, 05 Mar 2019 19:30:17 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:2c9e1401ee6b0131741b02fed745b7f1d34bf29b0bc59f41e08dc969a710fc58`  
		Last Modified: Tue, 05 Mar 2019 12:45:42 GMT  
		Size: 22.3 MB (22345383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a69bf5a87f6ca372cf532eac6f88650232f774c7127c6bd9fe82cf04846490`  
		Last Modified: Tue, 05 Mar 2019 15:30:23 GMT  
		Size: 4.2 KB (4151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8247e2fb2aa9fd4d18ea49fdbe3fd5e70c8716c98ee7d445b3531693aac851`  
		Last Modified: Tue, 05 Mar 2019 15:30:29 GMT  
		Size: 27.9 MB (27862343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3f1e837f6496a2972d53f392257b74407520e1276c08957314ce29bafe98b14`  
		Last Modified: Tue, 05 Mar 2019 15:30:23 GMT  
		Size: 1.3 MB (1321441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a64ba830e16748d30745eeea9cc9ace200cf44f72f85b66607aa12ced01b9ae`  
		Last Modified: Tue, 05 Mar 2019 19:34:32 GMT  
		Size: 487.0 KB (487046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d50692248351b00eea736e3dcf763d2e79a57654d8798a9fef7a9b29f12f4a8`  
		Last Modified: Tue, 05 Mar 2019 19:34:39 GMT  
		Size: 17.4 MB (17412692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07213e3caa3427c35ff6164cd1d613192bc07b144f4911aac8f6ce97dc5436f0`  
		Last Modified: Tue, 05 Mar 2019 19:34:57 GMT  
		Size: 94.9 MB (94881130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c788a3562df3bc5fb47667c4df0113326e21392186f5e474b94046d570818f86`  
		Last Modified: Tue, 05 Mar 2019 19:34:36 GMT  
		Size: 12.6 MB (12649064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af48d4efa98583f03f0adb9141e1eb3a69c514dc8b62441e383c322e4cee1118`  
		Last Modified: Tue, 05 Mar 2019 19:34:31 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

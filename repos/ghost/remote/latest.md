## `ghost:latest`

```console
$ docker pull ghost@sha256:28c14d7daad14598dbb0fe3fdb2af8cdd16602463a7681f07a1b8b03d6fbc9b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:latest` - linux; amd64

```console
$ docker pull ghost@sha256:4712491a9dcc29ddab8d38a64709b4a66755e7cc6f9ee67514792e40b82552b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.4 MB (212443877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec140a715a170b3075148540332d30e309d8fd9055c9c95272a0655aa7b3fec1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:01:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:01:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Feb 2018 15:37:54 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 17 Feb 2018 15:37:57 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Sat, 17 Feb 2018 15:41:38 GMT
ENV NODE_VERSION=6.13.0
# Sat, 17 Feb 2018 15:41:52 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 17 Feb 2018 15:41:52 GMT
ENV YARN_VERSION=1.3.2
# Sat, 17 Feb 2018 15:41:56 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 17 Feb 2018 15:41:57 GMT
CMD ["node"]
# Sat, 17 Feb 2018 22:11:08 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Feb 2018 22:11:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 17 Feb 2018 22:11:13 GMT
ENV NODE_ENV=production
# Sat, 17 Feb 2018 22:11:14 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Sat, 17 Feb 2018 22:11:41 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 17 Feb 2018 22:11:42 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 17 Feb 2018 22:11:42 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 22 Feb 2018 20:11:01 GMT
ENV GHOST_VERSION=1.21.3
# Thu, 22 Feb 2018 20:11:45 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 22 Feb 2018 20:11:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 22 Feb 2018 20:11:58 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 22 Feb 2018 20:11:58 GMT
WORKDIR /var/lib/ghost
# Thu, 22 Feb 2018 20:11:58 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 22 Feb 2018 20:11:58 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 22 Feb 2018 20:11:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Feb 2018 20:11:59 GMT
EXPOSE 2368/tcp
# Thu, 22 Feb 2018 20:11:59 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851356ecf618f41550b3b8696fb9aad7925f72929c8345453107cce510437608`  
		Last Modified: Sat, 17 Feb 2018 07:15:16 GMT  
		Size: 19.3 MB (19266391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb492416b9f4f2bd1af663d5226ecf80d681762041ccb5d76988655b9ee802d4`  
		Last Modified: Sat, 17 Feb 2018 15:50:22 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c188a47fbe667aa0070347aeb8ccef1e1f7f488a51ce9975942a88c0f8bf14e4`  
		Last Modified: Sat, 17 Feb 2018 15:50:22 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b150b07b7e1a7551f5e310a67960814de62229410dc5b7804956754ce5efd6`  
		Last Modified: Sat, 17 Feb 2018 16:00:01 GMT  
		Size: 14.8 MB (14775283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599d78299041bba51883fdc6b8468f6752ca0a4c754d80ed3fea32043e6575dc`  
		Last Modified: Sat, 17 Feb 2018 15:59:56 GMT  
		Size: 1.0 MB (1010351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d94985b47101ad4fd021e4a3223481ad7846b48beb1818e4edc43d00ba71869`  
		Last Modified: Sat, 17 Feb 2018 22:44:50 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fdffaf42c0fdf0908067614e3c8d31d305f76fac5d6905007e6813498e753e8`  
		Last Modified: Sat, 17 Feb 2018 22:45:17 GMT  
		Size: 19.4 MB (19406594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16d8ebfb6b05cd0169a029c5c4c54fa71ce90280e677d31efeaf96f1e0075f4`  
		Last Modified: Thu, 22 Feb 2018 20:16:22 GMT  
		Size: 96.9 MB (96938280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ae05b26281dbc1b56d32bfb62e2924389be2bbc4d744a159e2110bbe88e884`  
		Last Modified: Thu, 22 Feb 2018 20:15:58 GMT  
		Size: 7.8 MB (7815427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a7c021a511cc24abb855f71fa0a0661737e2bc3b2f246af3d100836ad4d0b19`  
		Last Modified: Thu, 22 Feb 2018 20:15:56 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:8c9389b7b761dae5bf05b51372dd23a7284f0de1cb7844759ece5149114aef30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:85c049d6cdaecfefa3b417aa6988509f3aae5d103bfd47779aa86829b8c1c0fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.8 MB (141812367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e3758b69d8789cdb4252368f9a61f948c9b68740f080da0dc830c150cd83fa0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:08:38 GMT
ENV NODE_VERSION=8.12.0
# Wed, 12 Sep 2018 00:37:06 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 12 Sep 2018 00:37:06 GMT
ENV YARN_VERSION=1.9.4
# Wed, 12 Sep 2018 00:37:10 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 12 Sep 2018 00:37:10 GMT
CMD ["node"]
# Wed, 12 Sep 2018 05:07:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 05:07:06 GMT
RUN apk add --no-cache 		bash
# Wed, 12 Sep 2018 05:07:06 GMT
ENV NODE_ENV=production
# Wed, 03 Oct 2018 21:20:49 GMT
ENV GHOST_CLI_VERSION=1.9.6
# Wed, 03 Oct 2018 21:21:07 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 03 Oct 2018 21:21:08 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 03 Oct 2018 21:21:08 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 19 Oct 2018 00:28:05 GMT
ENV GHOST_VERSION=2.2.4
# Fri, 19 Oct 2018 00:28:41 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 19 Oct 2018 00:28:42 GMT
WORKDIR /var/lib/ghost
# Fri, 19 Oct 2018 00:28:42 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 19 Oct 2018 00:28:43 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Fri, 19 Oct 2018 00:28:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 00:28:43 GMT
EXPOSE 2368/tcp
# Fri, 19 Oct 2018 00:28:43 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb7d76f44e71e809d68e84491576534c80dea0b607501e1f476b6949124d646`  
		Last Modified: Wed, 12 Sep 2018 01:36:03 GMT  
		Size: 18.8 MB (18818175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e35f88fcc25962e9894d7e7da2b79ec9ce1b503ef2fe0e800bad87bcb2438319`  
		Last Modified: Wed, 12 Sep 2018 01:36:00 GMT  
		Size: 1.1 MB (1079425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d59ef07366235739b9e1de791c9b05d5e81b3acf00ceda58b2a231390e2e64`  
		Last Modified: Wed, 12 Sep 2018 05:10:13 GMT  
		Size: 9.4 KB (9397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcee404d51ae0147be19bdb882ea440e01625e195902df6145bea1e33e1fc105`  
		Last Modified: Wed, 12 Sep 2018 05:10:13 GMT  
		Size: 1.2 MB (1173370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d410cf00d332283f7e38658213ee9dd0d74a5c60bc7d767f0f9eeac5bc176e1`  
		Last Modified: Wed, 03 Oct 2018 21:24:30 GMT  
		Size: 17.2 MB (17212834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5f5821c221e56b6889e3c7fb4721fb1855400e4c1d50f39ead5cdb69287ca4`  
		Last Modified: Fri, 19 Oct 2018 00:30:47 GMT  
		Size: 101.3 MB (101311691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5bf90f06b6eda987a082670b08a7bee747286a3ee64ba895a96b31c1eb47215`  
		Last Modified: Fri, 19 Oct 2018 00:30:25 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:d00c16dfbf3e212ba7c16fc0c72ecaf323613c6fde0cae5371a8b5663231d23e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132972507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c4f3105b33dc5a2336fe1e9b361a0c834073bb27135d4cf621e8e7dcc034e50`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:03:42 GMT
ENV NODE_VERSION=8.12.0
# Sat, 15 Sep 2018 08:20:35 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 15 Sep 2018 08:20:36 GMT
ENV YARN_VERSION=1.9.4
# Sat, 15 Sep 2018 08:20:42 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 15 Sep 2018 08:20:42 GMT
CMD ["node"]
# Sat, 15 Sep 2018 10:23:53 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 15 Sep 2018 10:23:56 GMT
RUN apk add --no-cache 		bash
# Sat, 15 Sep 2018 10:23:56 GMT
ENV NODE_ENV=production
# Thu, 04 Oct 2018 07:49:26 GMT
ENV GHOST_CLI_VERSION=1.9.6
# Thu, 04 Oct 2018 07:50:05 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 04 Oct 2018 07:50:08 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 04 Oct 2018 07:50:11 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 19 Oct 2018 07:49:34 GMT
ENV GHOST_VERSION=2.2.4
# Fri, 19 Oct 2018 07:51:13 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 19 Oct 2018 07:51:17 GMT
WORKDIR /var/lib/ghost
# Fri, 19 Oct 2018 07:51:17 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 19 Oct 2018 07:51:18 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Fri, 19 Oct 2018 07:51:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 07:51:18 GMT
EXPOSE 2368/tcp
# Fri, 19 Oct 2018 07:51:19 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd91bbcae2e4283c22ba4368fbdd1455ba723f6ae0e66f32e10dff72d45e906e`  
		Last Modified: Sat, 15 Sep 2018 08:25:56 GMT  
		Size: 17.8 MB (17792595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5305323c5f1bf2c45c385f697cc459ad755c6be4c5302b96e5058cce1efbe7`  
		Last Modified: Sat, 15 Sep 2018 08:25:49 GMT  
		Size: 1.1 MB (1079496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4356cfa3b793a242a43e9c990c3d9a6bb6ff515578eda5ce5ce7bb9b1936179`  
		Last Modified: Sat, 15 Sep 2018 10:28:15 GMT  
		Size: 9.3 KB (9330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24d84ee039d1ad329572d8a35f9fb7fd29423842b663fc22f2f00bb1eeb5c820`  
		Last Modified: Sat, 15 Sep 2018 10:28:16 GMT  
		Size: 1.1 MB (1127568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:951448aff5d10f276871af3ceaf3fb199c89360b95715a110fe74ee55d651c0b`  
		Last Modified: Thu, 04 Oct 2018 07:53:50 GMT  
		Size: 17.2 MB (17216090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d5cd743adeb1e909274930ee66708db307ea2b0e984628a204347c24858662`  
		Last Modified: Fri, 19 Oct 2018 07:52:17 GMT  
		Size: 93.6 MB (93600252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80aadc2281b81e3bc4b90b23f8c7cbe0f630ea6111b6f35111c9c72859d839b3`  
		Last Modified: Fri, 19 Oct 2018 07:51:39 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:bc353273a1072292df1f204b04945274d76dae2318018d3b25a409712d13e576
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.9 MB (133886875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eabbaabca1fd1124524b2bf1b454dbf92914a1e879c813501d73fd2cb90f1076`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:18:42 GMT
ENV NODE_VERSION=8.12.0
# Wed, 12 Sep 2018 08:30:52 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 12 Sep 2018 08:30:53 GMT
ENV YARN_VERSION=1.9.4
# Wed, 12 Sep 2018 08:31:05 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 12 Sep 2018 08:31:06 GMT
CMD ["node"]
# Wed, 12 Sep 2018 13:09:05 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 13:09:08 GMT
RUN apk add --no-cache 		bash
# Wed, 12 Sep 2018 13:09:10 GMT
ENV NODE_ENV=production
# Thu, 04 Oct 2018 08:45:27 GMT
ENV GHOST_CLI_VERSION=1.9.6
# Thu, 04 Oct 2018 08:46:02 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 04 Oct 2018 08:46:05 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 04 Oct 2018 08:46:06 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 19 Oct 2018 08:27:58 GMT
ENV GHOST_VERSION=2.2.4
# Fri, 19 Oct 2018 08:30:43 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 19 Oct 2018 08:32:35 GMT
WORKDIR /var/lib/ghost
# Fri, 19 Oct 2018 08:32:36 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 19 Oct 2018 08:32:37 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Fri, 19 Oct 2018 08:32:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 08:32:44 GMT
EXPOSE 2368/tcp
# Fri, 19 Oct 2018 08:32:46 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfaf7416f07699b28dfe1a6a9d52799ef3af5375367a24191340fe18cfee2d8f`  
		Last Modified: Wed, 12 Sep 2018 08:51:29 GMT  
		Size: 18.6 MB (18605643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b817f480bf17afb87d8d25c93488dc3e9bc215bb7eb31e53f2ff63cdb47d96`  
		Last Modified: Wed, 12 Sep 2018 08:51:19 GMT  
		Size: 1.1 MB (1079514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807f0f7d3501abb585fa12b211baa26ab62b1c7cf60bfa99acfd91570fb49c75`  
		Last Modified: Wed, 12 Sep 2018 13:37:31 GMT  
		Size: 9.8 KB (9844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4787ea52da9eaeb5c03e50021d377682524c0c2095debba0bde4bc6ef1d5bcd2`  
		Last Modified: Wed, 12 Sep 2018 13:37:38 GMT  
		Size: 1.2 MB (1188778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69358a7871e3a854064615693fde38c7a0c32575342bedd89fa9c3eecad5b30`  
		Last Modified: Thu, 04 Oct 2018 09:30:38 GMT  
		Size: 17.2 MB (17214980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b668bc9c4169dfb7dfa40a6e3192d6d31927737f46455d964b1ecfeeb072476`  
		Last Modified: Fri, 19 Oct 2018 08:37:46 GMT  
		Size: 93.6 MB (93592166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c556e74aceb3213c558c624200d2f18157ace7312fb61250ae43f97a2c87b1a`  
		Last Modified: Fri, 19 Oct 2018 08:36:55 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

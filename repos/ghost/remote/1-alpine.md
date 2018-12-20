## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:88a1f03ca36f726d4f959c905ce1579d3dd68f0b94e8dd964cf80e8508f98ec0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:5972977c5ad063f7e3daf093b5365fc7509b025f265c3ac34d6d136d5173d57f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.0 MB (142027920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5047e264f377b21aef36b1881fad81f7d811e6c4b2e8ed0d6e5c53e2852010e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Thu, 20 Dec 2018 00:22:52 GMT
ENV NODE_VERSION=8.14.1
# Thu, 20 Dec 2018 00:43:43 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 20 Dec 2018 00:43:43 GMT
ENV YARN_VERSION=1.12.3
# Thu, 20 Dec 2018 00:43:48 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 20 Dec 2018 00:43:48 GMT
CMD ["node"]
# Thu, 20 Dec 2018 01:30:48 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 20 Dec 2018 01:30:50 GMT
RUN apk add --no-cache 		bash
# Thu, 20 Dec 2018 01:30:50 GMT
ENV NODE_ENV=production
# Thu, 20 Dec 2018 01:30:50 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 20 Dec 2018 01:31:09 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 20 Dec 2018 01:31:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 20 Dec 2018 01:31:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 20 Dec 2018 01:33:15 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 20 Dec 2018 01:33:49 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 20 Dec 2018 01:33:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 20 Dec 2018 01:33:50 GMT
WORKDIR /var/lib/ghost
# Thu, 20 Dec 2018 01:33:50 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 20 Dec 2018 01:33:50 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Thu, 20 Dec 2018 01:33:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 20 Dec 2018 01:33:51 GMT
EXPOSE 2368
# Thu, 20 Dec 2018 01:33:51 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3d7694b52f113e24045cffd1f118a527b1e2fa92f980be40058250f9c931a2`  
		Last Modified: Thu, 20 Dec 2018 01:12:08 GMT  
		Size: 18.9 MB (18869890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf7827385200d598ae671ddf89d84895ab9d973d2a474f21962211faa211990`  
		Last Modified: Thu, 20 Dec 2018 01:12:04 GMT  
		Size: 1.3 MB (1325160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2bf289e36b48ded2c3abe52995a0b9cf13731bf9e817c1d62e5d6c5ca7543b`  
		Last Modified: Thu, 20 Dec 2018 01:34:43 GMT  
		Size: 9.4 KB (9404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb8cf89f096b017dfbd67b91885cf8b9a761ffb89037a59a7ab15b2596a4b7e`  
		Last Modified: Thu, 20 Dec 2018 01:34:44 GMT  
		Size: 1.2 MB (1173416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d434f9c6a3431b3a5d1bd26c3210fb44e7fb3221f3d188295b9c61d484ecd0d4`  
		Last Modified: Thu, 20 Dec 2018 01:34:47 GMT  
		Size: 17.2 MB (17179681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:538603eef46ab19ade96115bdcca624e9b9d14dfbc48d67a68b546d4bf64aa6c`  
		Last Modified: Thu, 20 Dec 2018 01:35:59 GMT  
		Size: 101.3 MB (101262865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ee181b5c9f07ae1ae603b631ab5200cd1e6afbae6e386a863a27bd9f455149`  
		Last Modified: Thu, 20 Dec 2018 01:35:42 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:c6d7b0b649e02d459200aeff459189f3b2cb198fa754bde6edf15919ced3f626
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133190655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45e0f457ee6b8d22d7f666153a9ac5e4b627b999a8420605fa39c48725a8e057`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Thu, 20 Dec 2018 08:51:00 GMT
ENV NODE_VERSION=8.14.1
# Thu, 20 Dec 2018 08:54:41 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 20 Dec 2018 08:54:42 GMT
ENV YARN_VERSION=1.12.3
# Thu, 20 Dec 2018 08:54:48 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 20 Dec 2018 08:54:48 GMT
CMD ["node"]
# Thu, 20 Dec 2018 09:17:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 20 Dec 2018 09:17:24 GMT
RUN apk add --no-cache 		bash
# Thu, 20 Dec 2018 09:17:24 GMT
ENV NODE_ENV=production
# Thu, 20 Dec 2018 09:17:24 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 20 Dec 2018 09:18:04 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 20 Dec 2018 09:18:06 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 20 Dec 2018 09:18:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 20 Dec 2018 09:19:50 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 20 Dec 2018 09:21:14 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 20 Dec 2018 09:21:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 20 Dec 2018 09:21:18 GMT
WORKDIR /var/lib/ghost
# Thu, 20 Dec 2018 09:21:18 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 20 Dec 2018 09:21:18 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Thu, 20 Dec 2018 09:21:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 20 Dec 2018 09:21:19 GMT
EXPOSE 2368
# Thu, 20 Dec 2018 09:21:19 GMT
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
	-	`sha256:0e880d181d446abe3556f5cca4c2a3a3c06a4e38b184a21b034486876ccf5591`  
		Last Modified: Thu, 20 Dec 2018 09:01:39 GMT  
		Size: 17.8 MB (17831167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dffbcd791627b0c6899a38e16d46620ea814c758108a2c7474635fbf9a640fd`  
		Last Modified: Thu, 20 Dec 2018 09:01:33 GMT  
		Size: 1.3 MB (1325245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0578dc3f6e5c2641e1adf4be1e3d1d4d00a716215322d0e3a6c00ad9a4e83fe5`  
		Last Modified: Thu, 20 Dec 2018 09:21:40 GMT  
		Size: 9.3 KB (9328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ddc4ded7b3ac96d25aa3f45d646f1fdb319d4b70cd526a7fc7dc8cf226d07a`  
		Last Modified: Thu, 20 Dec 2018 09:21:41 GMT  
		Size: 1.1 MB (1127600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845aee8ee16c199dab707a5e8fc26cc315bcdf038c14b6b314fb6b0f54d6bff9`  
		Last Modified: Thu, 20 Dec 2018 09:21:50 GMT  
		Size: 17.2 MB (17182268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63032ac8e647509a5897e93fc1307e4517d2533d576eadff8f36ee949992eaab`  
		Last Modified: Thu, 20 Dec 2018 09:23:01 GMT  
		Size: 93.6 MB (93567844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b26985ad369c12d7ec4b06ac294b1110b317fad1d17ead45617f459b5d728e27`  
		Last Modified: Thu, 20 Dec 2018 09:22:26 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:ab00d3c5ff502b016077e240091615d3c8fe65de6abb81a6f5fea359d5798634
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.8 MB (134756458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03ed56a9d52b62bdd329c55591edab79b13d7148a9b7145d9ba9840d2e10a077`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 16:30:31 GMT
ENV NODE_VERSION=8.14.0
# Tue, 04 Dec 2018 10:47:12 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 04 Dec 2018 10:47:15 GMT
ENV YARN_VERSION=1.12.3
# Tue, 04 Dec 2018 10:47:29 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Dec 2018 10:47:32 GMT
CMD ["node"]
# Tue, 04 Dec 2018 12:12:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 04 Dec 2018 12:12:50 GMT
RUN apk add --no-cache 		bash
# Tue, 04 Dec 2018 12:13:00 GMT
ENV NODE_ENV=production
# Tue, 04 Dec 2018 12:13:04 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 04 Dec 2018 12:14:01 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 04 Dec 2018 12:14:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 04 Dec 2018 12:14:08 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 04 Dec 2018 12:27:56 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 04 Dec 2018 12:30:10 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 04 Dec 2018 12:30:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 04 Dec 2018 12:30:24 GMT
WORKDIR /var/lib/ghost
# Tue, 04 Dec 2018 12:30:25 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 04 Dec 2018 12:30:26 GMT
COPY file:ec5f0dc0340c44f728261188497016ebbb720b84d4de7a293d7d96e1d7c20c56 in /usr/local/bin 
# Tue, 04 Dec 2018 12:30:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Dec 2018 12:30:30 GMT
EXPOSE 2368/tcp
# Tue, 04 Dec 2018 12:30:31 GMT
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
	-	`sha256:2ba36ac455767381bba38455ce88713153037b3580b29103615675c6e75251e2`  
		Last Modified: Tue, 04 Dec 2018 11:19:41 GMT  
		Size: 18.6 MB (18643492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a3c154921196337927cf1295c00a75a854d3a10f8949055d5b1f8838759a9a`  
		Last Modified: Tue, 04 Dec 2018 11:19:30 GMT  
		Size: 1.3 MB (1319676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05cf9a9ad04c4b25da5029b58cc0a318c5235f5bc1e88cb9f6830e0d1acc6624`  
		Last Modified: Tue, 04 Dec 2018 12:37:58 GMT  
		Size: 9.8 KB (9850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c913b7ed1155b8eb8bf22c30c46eb4ad2ff386fc63d6e69f8f9638521ff88b5`  
		Last Modified: Tue, 04 Dec 2018 12:38:01 GMT  
		Size: 1.2 MB (1188815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a902d76e84b9baf29cce1677a2d1aaaacc3a4e5daf0426c83489ba2734c649a`  
		Last Modified: Tue, 04 Dec 2018 12:38:38 GMT  
		Size: 17.3 MB (17292772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fca14961f38be293c2e195e32879cb14ef2a2e9c9ec2fcc7c226e3a6fae23f50`  
		Last Modified: Tue, 04 Dec 2018 12:46:04 GMT  
		Size: 94.1 MB (94105877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b033a56e7d8de7b531217d40e55e3c7b9d1177e4ab834ae89234f38598f429`  
		Last Modified: Tue, 04 Dec 2018 12:44:43 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

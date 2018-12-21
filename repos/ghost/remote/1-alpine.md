## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:08847f67693fac8868e8c0996cdd752cf2865495f01d43fe5a5adfd538be05c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:11f72066aa8e81b83883f2a6f61293f851501a182719c45528dd8970cd4c6825
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.0 MB (142031827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d4ddb6e697c0d3e7d14a098a2cfe45939a2d7ac656f3190b5e702fe6e4b9ed0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:19:39 GMT
ENV NODE_VERSION=8.14.1
# Fri, 21 Dec 2018 01:48:05 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 21 Dec 2018 01:48:05 GMT
ENV YARN_VERSION=1.12.3
# Fri, 21 Dec 2018 01:48:10 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 21 Dec 2018 01:48:11 GMT
CMD ["node"]
# Fri, 21 Dec 2018 06:06:27 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 21 Dec 2018 06:06:28 GMT
RUN apk add --no-cache 		bash
# Fri, 21 Dec 2018 06:06:28 GMT
ENV NODE_ENV=production
# Fri, 21 Dec 2018 06:06:28 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Fri, 21 Dec 2018 06:06:47 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 21 Dec 2018 06:06:47 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 21 Dec 2018 06:06:47 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 21 Dec 2018 06:07:42 GMT
ENV GHOST_VERSION=1.25.6
# Fri, 21 Dec 2018 06:08:16 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 21 Dec 2018 06:08:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 21 Dec 2018 06:08:17 GMT
WORKDIR /var/lib/ghost
# Fri, 21 Dec 2018 06:08:17 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 21 Dec 2018 06:08:18 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Fri, 21 Dec 2018 06:08:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 06:08:18 GMT
EXPOSE 2368
# Fri, 21 Dec 2018 06:08:18 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5cdc0df0c41993ce1a9614e4527ab0fb3ff2af463c4411ca320d204d6c3765`  
		Last Modified: Fri, 21 Dec 2018 03:18:51 GMT  
		Size: 18.9 MB (18869761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f789259667da7b274a53720a0a89df06073f0fa2e02372323d165d98362107a7`  
		Last Modified: Fri, 21 Dec 2018 03:18:47 GMT  
		Size: 1.3 MB (1325176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37872420d418af5efd7d294345bb3b4491a4bd7c36fe102fe8b1648bd74ce237`  
		Last Modified: Fri, 21 Dec 2018 06:12:45 GMT  
		Size: 9.4 KB (9395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3ca9b9afbd118c03de174327bdd32ff1283c60b44fcf3b9571bf301c3f9cba`  
		Last Modified: Fri, 21 Dec 2018 06:12:45 GMT  
		Size: 1.2 MB (1173434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b95ac100b8dd4e178f66a07ae5ae88d71f3fc74bda493bc4df1ebd6ac873198`  
		Last Modified: Fri, 21 Dec 2018 06:12:53 GMT  
		Size: 17.2 MB (17183412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93eb2ee5cfe0cff69feb57cd511be74d47cddac69f69f68f75ef4f2ad0da6ea`  
		Last Modified: Fri, 21 Dec 2018 06:13:34 GMT  
		Size: 101.3 MB (101263051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b28ca344c09b50e038eeccf4777f8e5ec00afa80dd2e862056f5fc174fbbb9d3`  
		Last Modified: Fri, 21 Dec 2018 06:13:14 GMT  
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
$ docker pull ghost@sha256:2747fc615e7861ad28efbc865bf31aae347e9c4d0510e979e5d3b744e315b20b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.1 MB (134109996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e725e2ebb4cc9e2340acce4f3a42c690498e3973d955392580244402a7fc18a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Thu, 20 Dec 2018 09:31:30 GMT
ENV NODE_VERSION=8.14.1
# Thu, 20 Dec 2018 09:40:09 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 20 Dec 2018 09:40:24 GMT
ENV YARN_VERSION=1.12.3
# Thu, 20 Dec 2018 09:40:53 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 20 Dec 2018 09:40:57 GMT
CMD ["node"]
# Thu, 20 Dec 2018 10:31:53 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 20 Dec 2018 10:32:01 GMT
RUN apk add --no-cache 		bash
# Thu, 20 Dec 2018 10:32:05 GMT
ENV NODE_ENV=production
# Thu, 20 Dec 2018 10:32:10 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 20 Dec 2018 10:32:46 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 20 Dec 2018 10:32:52 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 20 Dec 2018 10:32:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 20 Dec 2018 10:40:37 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 20 Dec 2018 10:41:47 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 20 Dec 2018 10:41:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 20 Dec 2018 10:41:53 GMT
WORKDIR /var/lib/ghost
# Thu, 20 Dec 2018 10:41:56 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 20 Dec 2018 10:41:56 GMT
COPY file:f1f79dab1b0ea9368239b43e3c806a8db315a341a8f204dd7b9a889f2526129f in /usr/local/bin 
# Thu, 20 Dec 2018 10:41:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 20 Dec 2018 10:42:00 GMT
EXPOSE 2368
# Thu, 20 Dec 2018 10:42:02 GMT
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
	-	`sha256:8c5acf9d452a94a2620b6ef4a020bd3914930b8a5715cad52c66ebf4a68108f0`  
		Last Modified: Thu, 20 Dec 2018 10:01:45 GMT  
		Size: 18.6 MB (18645628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f25625d889c9e9455fa2dad5f76d0d5f44b9ff731570fde700a958822c15dfc`  
		Last Modified: Thu, 20 Dec 2018 10:01:41 GMT  
		Size: 1.3 MB (1325173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570b77b07a8f267aae91a41389bdc69fb58e06d85ec027c8a2acd6a867677b54`  
		Last Modified: Thu, 20 Dec 2018 10:43:56 GMT  
		Size: 9.8 KB (9849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c2b41e5cb5a0e3292c919cf3bf1fbba1864196863cf564a82d56af02250764`  
		Last Modified: Thu, 20 Dec 2018 10:44:00 GMT  
		Size: 1.2 MB (1188867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a2284988217a20558b696f1f5bcec54e0ba723d98995aaf3eefc1dd67447f7`  
		Last Modified: Thu, 20 Dec 2018 10:44:16 GMT  
		Size: 17.2 MB (17180398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74db9732dc7bcf77b10961c3814c8bd5e1b141c45607f61f71944e0b82a15803`  
		Last Modified: Thu, 20 Dec 2018 10:47:07 GMT  
		Size: 93.6 MB (93564107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4b36527c4dd2e902672d59ab975986e7c3719edca9cb9c94d5c6f4748f36d9`  
		Last Modified: Thu, 20 Dec 2018 10:46:23 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

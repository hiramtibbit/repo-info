## `ghost:alpine`

```console
$ docker pull ghost@sha256:76be12468adc7702ab3e524a2b1ccbc2e2284d64fe3b264fd5a9965903ab5f29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:21bfb64f9ba639644d6ed1e38de927a2664a8b6e1c03b44f21ac85b0bec855d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.7 MB (152675690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac9290a926e8fa72275ed194e5f880761d2e885cc0b16ace404a0a7d9f3a4696`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 11:39:13 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 12:08:04 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 28 Nov 2018 12:08:04 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 12:08:09 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 28 Nov 2018 12:08:09 GMT
CMD ["node"]
# Wed, 28 Nov 2018 14:38:22 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Nov 2018 14:38:25 GMT
RUN apk add --no-cache 		bash
# Wed, 28 Nov 2018 14:38:25 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 14:38:25 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 14:38:44 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 14:38:45 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 14:38:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 28 Nov 2018 14:38:45 GMT
ENV GHOST_VERSION=2.6.1
# Wed, 28 Nov 2018 14:39:20 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 28 Nov 2018 14:39:21 GMT
WORKDIR /var/lib/ghost
# Wed, 28 Nov 2018 14:39:21 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 28 Nov 2018 14:39:21 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Wed, 28 Nov 2018 14:39:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 14:39:22 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 14:39:22 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c94b1665db914ebb8891bac4827866afab60f591d4daac509a7835f6737ad0c`  
		Last Modified: Wed, 28 Nov 2018 13:55:31 GMT  
		Size: 18.9 MB (18866675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b413d1ce95e31d6d84931b0e90047fc35a08e27666a4a49215beb348e8a6e72`  
		Last Modified: Wed, 28 Nov 2018 13:55:26 GMT  
		Size: 1.3 MB (1317204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f98855f60604696ba7a2fd012036f34c419bfb9698bd0e3cae659f0e69ee6c`  
		Last Modified: Wed, 28 Nov 2018 14:47:19 GMT  
		Size: 9.4 KB (9398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c6562885fbc90200594692442efc4b2cb4e34986cff012ddfda476f2ca82e8`  
		Last Modified: Wed, 28 Nov 2018 14:47:20 GMT  
		Size: 1.2 MB (1173407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a9dca7362f42889f5dcca32a9c38065458c1534be16ad230c34c12286d0a9a`  
		Last Modified: Wed, 28 Nov 2018 14:47:30 GMT  
		Size: 17.3 MB (17287230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6dc5dacfd56481a33eb23b0520354d4c5213bda4e05ab272ed31dd4ac59c67`  
		Last Modified: Wed, 28 Nov 2018 14:47:54 GMT  
		Size: 111.8 MB (111814300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65792c0012568fe197e05ff3fcf7c48cb3a02427b4a1cd539a7bf415729c5a2c`  
		Last Modified: Wed, 28 Nov 2018 14:47:19 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:ef5f28e4bc5e828e9c86a40a5bf8ed22053b04e61d51877dddaa3ebccd157507
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128894242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:928094c88d9c859c97cd00a74f81a0bca49c309e662b28df23b793233acd08c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 16:29:37 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 16:33:09 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 28 Nov 2018 16:33:10 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 16:33:15 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 28 Nov 2018 16:33:15 GMT
CMD ["node"]
# Wed, 28 Nov 2018 17:01:01 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Nov 2018 17:01:03 GMT
RUN apk add --no-cache 		bash
# Wed, 28 Nov 2018 17:01:04 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 17:01:04 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 17:01:47 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 17:01:49 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 17:01:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 28 Nov 2018 17:01:49 GMT
ENV GHOST_VERSION=2.6.1
# Wed, 28 Nov 2018 17:03:24 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 28 Nov 2018 17:03:29 GMT
WORKDIR /var/lib/ghost
# Wed, 28 Nov 2018 17:03:29 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 28 Nov 2018 17:03:29 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Wed, 28 Nov 2018 17:03:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 17:03:30 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 17:03:30 GMT
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
	-	`sha256:c4ec439a39e3b0fdbea3cf8896d20d924e40704d176ba240730deacc80f57392`  
		Last Modified: Wed, 28 Nov 2018 16:44:21 GMT  
		Size: 17.8 MB (17825471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3eed698e36754e32a9463e4e72da1989d5b8229aba48c7a102857aebfd1347a`  
		Last Modified: Wed, 28 Nov 2018 16:44:15 GMT  
		Size: 1.3 MB (1317224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd90f22e6b7454bf07dad9010673ab5e4d2b0302d349d4d4664494daccbd5a61`  
		Last Modified: Wed, 28 Nov 2018 17:05:44 GMT  
		Size: 9.3 KB (9327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135797a263e53ea3965a78af7317b822730798a808125de2f64db89578e45f84`  
		Last Modified: Wed, 28 Nov 2018 17:05:45 GMT  
		Size: 1.1 MB (1127583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628c3e9fab37932d472ea6c5f437ae66aa7ea0e2bb0e755788493156641c3b7c`  
		Last Modified: Wed, 28 Nov 2018 17:05:49 GMT  
		Size: 17.3 MB (17292386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca28e9797a2c3774a66be85d11ddb668a741eaa161eecc1ca68472a9d2406d8`  
		Last Modified: Wed, 28 Nov 2018 17:06:22 GMT  
		Size: 89.2 MB (89175081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292e09fccdda9cca9e1f91b8c4f6e80f66a8656da575676373da340c077e8b1d`  
		Last Modified: Wed, 28 Nov 2018 17:05:44 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:ccf6903c7360378b04500964300a64dba13debb77f587c3b44514a70b26b0e27
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129812925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18eddd36e7b55074793f6a58fee7f9d38ee43213cbe0bff3137ce6443c6acdd2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Tue, 27 Nov 2018 10:55:43 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 11:04:35 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 27 Nov 2018 11:09:04 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 11:09:18 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 27 Nov 2018 11:09:19 GMT
CMD ["node"]
# Tue, 27 Nov 2018 13:13:58 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Nov 2018 13:14:13 GMT
RUN apk add --no-cache 		bash
# Tue, 27 Nov 2018 13:14:26 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 13:14:28 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 13:15:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 13:15:30 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 13:17:32 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 13:17:33 GMT
ENV GHOST_VERSION=2.6.1
# Tue, 27 Nov 2018 13:19:25 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 27 Nov 2018 13:23:21 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 13:29:01 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 13:29:02 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Tue, 27 Nov 2018 13:29:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 13:29:05 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 13:29:06 GMT
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
	-	`sha256:4fd15e708d9e2073708b80a7d6c70f1a79bb0cc818f695e7957447abc9003baf`  
		Last Modified: Tue, 27 Nov 2018 12:08:52 GMT  
		Size: 18.6 MB (18632830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ff065c37e8d99ec92a0db2f5598173c637c5bb488365a24f9f544eedc3a530`  
		Last Modified: Tue, 27 Nov 2018 12:08:40 GMT  
		Size: 1.3 MB (1317249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8234ae08c21afae51c5103bdc9d6a30e220869b3a791f0af4f507586122a758`  
		Last Modified: Tue, 27 Nov 2018 13:42:20 GMT  
		Size: 9.8 KB (9847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09330e47f232232ae2117dc7514be962764254707ebadd789d638b1c29b3c54f`  
		Last Modified: Tue, 27 Nov 2018 13:42:23 GMT  
		Size: 1.2 MB (1188827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c132f3581a4a470ce55a281a2fb73f8a7cb5b13247d65fdbed585d237143b30`  
		Last Modified: Tue, 27 Nov 2018 13:42:45 GMT  
		Size: 17.3 MB (17290736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011b92db2bc4ccf8b364c635c3832f10d0c6ad08db36987139c0febcd561465d`  
		Last Modified: Tue, 27 Nov 2018 13:43:28 GMT  
		Size: 89.2 MB (89177490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bcbc61adf97e3331ac87231c110573caafd1e10a36327e1f81a5291a92b84f`  
		Last Modified: Tue, 27 Nov 2018 13:42:20 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

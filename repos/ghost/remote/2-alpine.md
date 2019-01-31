## `ghost:2-alpine`

```console
$ docker pull ghost@sha256:f1da291744a92f723a62eb85b92dbf840c21844f74c253096fadb6ce1bf6fcf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:2-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:f80ebe04f8c0558d30ff630a15b4accb90745a8d935c6825fb8047919cd7eede
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.9 MB (164872421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ccffd6a27ce84a595d43e916e897e03fbf1a54feefa3a208315ba87a3b90f15`
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
# Thu, 31 Jan 2019 02:45:23 GMT
ENV GHOST_VERSION=2.13.1
# Thu, 31 Jan 2019 02:46:08 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 31 Jan 2019 02:46:19 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Thu, 31 Jan 2019 02:46:19 GMT
WORKDIR /var/lib/ghost
# Thu, 31 Jan 2019 02:46:19 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 31 Jan 2019 02:46:19 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Thu, 31 Jan 2019 02:46:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Jan 2019 02:46:20 GMT
EXPOSE 2368
# Thu, 31 Jan 2019 02:46:20 GMT
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
	-	`sha256:bc69b49a19daf47640b781f2851709fe0b09ddad4e03c982cba7fc259b19f870`  
		Last Modified: Thu, 31 Jan 2019 02:47:53 GMT  
		Size: 113.2 MB (113177864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4a459a5897d3c83ff5fb24fa7a6b503464763bfbe457f07f5809b99ce99e5b`  
		Last Modified: Thu, 31 Jan 2019 02:47:33 GMT  
		Size: 10.8 MB (10806542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e780f45edd5ccdb6b5dad48884bb8b53798cde3476bf1a7279de29879935e6b`  
		Last Modified: Thu, 31 Jan 2019 02:47:30 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:6d040e636851247ec6b60f1d233f9e5d003a691ff46fe5a7a44484ab25b13667
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.2 MB (142223838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43a5b50b95e920f201e823fe2309f824e694685cb330269432328548ce790a56`
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
# Thu, 31 Jan 2019 08:50:03 GMT
ENV GHOST_VERSION=2.13.1
# Thu, 31 Jan 2019 08:51:49 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 31 Jan 2019 08:55:16 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Thu, 31 Jan 2019 08:55:17 GMT
WORKDIR /var/lib/ghost
# Thu, 31 Jan 2019 08:55:18 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 31 Jan 2019 08:55:19 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Thu, 31 Jan 2019 08:55:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Jan 2019 08:55:20 GMT
EXPOSE 2368
# Thu, 31 Jan 2019 08:55:20 GMT
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
	-	`sha256:04798c84dad2fdd5b8eec01045f57bd141fab96583de09588aa6528fa3a6d940`  
		Last Modified: Thu, 31 Jan 2019 08:56:23 GMT  
		Size: 90.4 MB (90367744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72735504e8e5ad0a8b6d4f52d7f79686a354ffe0a4c4ad165c3fbe359c75ca59`  
		Last Modified: Thu, 31 Jan 2019 08:55:49 GMT  
		Size: 12.1 MB (12129964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab62d291a2231d7c0666fd9e33345ae8e29f825869dcf47f018272edb42e0ab8`  
		Last Modified: Thu, 31 Jan 2019 08:55:45 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:0810ccd39a37b4458e7896f9e2beff7e57b6359d7ac7083248911ed8fd4f7fbe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.5 MB (143531327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:608982a7741494f4b634c4b8f392ec397da98ace079c5fdd2958570c148e77d3`
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
# Thu, 31 Jan 2019 09:29:09 GMT
ENV GHOST_VERSION=2.13.1
# Thu, 31 Jan 2019 09:30:17 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 31 Jan 2019 09:32:40 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Thu, 31 Jan 2019 09:32:43 GMT
WORKDIR /var/lib/ghost
# Thu, 31 Jan 2019 09:32:45 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 31 Jan 2019 09:32:46 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Thu, 31 Jan 2019 09:32:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Jan 2019 09:32:53 GMT
EXPOSE 2368
# Thu, 31 Jan 2019 09:32:54 GMT
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
	-	`sha256:0e53c6edfcd44a37cf2affde7cc021f8646cf8f73c20c0786f7068b742cb341b`  
		Last Modified: Thu, 31 Jan 2019 09:35:20 GMT  
		Size: 90.4 MB (90406922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3bac9930b058e23657f4eda2751a352da670aed776537e7f1c4e731f0b6346`  
		Last Modified: Thu, 31 Jan 2019 09:34:57 GMT  
		Size: 12.5 MB (12471238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf5004f99fdbcca3bfc70cace855a02b04fe7918d47d8150d17afcaf3518b8b`  
		Last Modified: Thu, 31 Jan 2019 09:34:54 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

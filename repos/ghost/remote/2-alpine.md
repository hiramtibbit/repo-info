## `ghost:2-alpine`

```console
$ docker pull ghost@sha256:453ef90a6ece5a77e082c30dc61d28c9be32909d48142d2a5c964ab0d8bbc141
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:2-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:1960c7883c625bc0f1e2e2826b602e0a20095502b9fa2a871b0e91e5e79aa9ab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152376440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e109ec179ed7dce5c4c3a990714ed3ef054871b003400ad3154ff39b287d5758`
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
# Fri, 21 Dec 2018 06:06:48 GMT
ENV GHOST_VERSION=2.7.1
# Fri, 21 Dec 2018 06:07:27 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 21 Dec 2018 06:07:29 GMT
WORKDIR /var/lib/ghost
# Fri, 21 Dec 2018 06:07:29 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 21 Dec 2018 06:07:29 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Fri, 21 Dec 2018 06:07:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 06:07:29 GMT
EXPOSE 2368
# Fri, 21 Dec 2018 06:07:30 GMT
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
	-	`sha256:d25a7cdfd8cc81534499f1d37a257a1627c85ed216bc809fcc34c517dce7301f`  
		Last Modified: Fri, 21 Dec 2018 06:13:08 GMT  
		Size: 111.6 MB (111607695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63f3650c5ae79a932fa1991e9edf35403f8ed3d0fe88fc4dd0dec1488b9ccba`  
		Last Modified: Fri, 21 Dec 2018 06:12:45 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:9158eee8e16529e5f48a7724efbe30527d049b84ddd52a87877e31f5ac0bf3d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128594842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a3c5700c9c29c5eaee63f264714187dd232e5cd5ebb4792f80513249bba18fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:26:06 GMT
ENV NODE_VERSION=8.14.1
# Fri, 21 Dec 2018 09:29:59 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 21 Dec 2018 09:30:00 GMT
ENV YARN_VERSION=1.12.3
# Fri, 21 Dec 2018 09:30:05 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 21 Dec 2018 09:30:06 GMT
CMD ["node"]
# Fri, 21 Dec 2018 10:42:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 21 Dec 2018 10:42:15 GMT
RUN apk add --no-cache 		bash
# Fri, 21 Dec 2018 10:42:15 GMT
ENV NODE_ENV=production
# Fri, 21 Dec 2018 10:42:16 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Fri, 21 Dec 2018 10:42:54 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 21 Dec 2018 10:42:56 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 21 Dec 2018 10:42:56 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 21 Dec 2018 10:42:56 GMT
ENV GHOST_VERSION=2.7.1
# Fri, 21 Dec 2018 10:44:31 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 21 Dec 2018 10:44:36 GMT
WORKDIR /var/lib/ghost
# Fri, 21 Dec 2018 10:44:36 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 21 Dec 2018 10:44:36 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Fri, 21 Dec 2018 10:44:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 10:44:37 GMT
EXPOSE 2368
# Fri, 21 Dec 2018 10:44:38 GMT
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
	-	`sha256:ade930275c9d0874b0db5baef1adbea49ee35070e27274c631a42b094db979c4`  
		Last Modified: Fri, 21 Dec 2018 09:41:58 GMT  
		Size: 17.8 MB (17831035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8791055c5d2b06f18083f945b470decd60aa4bd5d6756bcddd0ecfed6757522e`  
		Last Modified: Fri, 21 Dec 2018 09:41:51 GMT  
		Size: 1.3 MB (1325231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c010dd5e48d6d696b8fb7d02467e60ff4c27cfcbcd5b377f9e874484e871cb89`  
		Last Modified: Fri, 21 Dec 2018 10:46:45 GMT  
		Size: 9.3 KB (9323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12a768a84ebc4924192d3d1bc8a8dc6283b275409e7755f08f4a1beba81887c0`  
		Last Modified: Fri, 21 Dec 2018 10:46:46 GMT  
		Size: 1.1 MB (1127595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5831d09e9fd6ce53b8bdeaed68c3f81b2ffeae3788ed14f8d0a861f722009ce`  
		Last Modified: Fri, 21 Dec 2018 10:46:55 GMT  
		Size: 17.2 MB (17186600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55dc2e5b7415f0cd2686e11729301e76e5ca7b19ef2d8da45e7c74661372f415`  
		Last Modified: Fri, 21 Dec 2018 10:47:22 GMT  
		Size: 89.0 MB (88968557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040080d7ecedfb7bd8caf073727a7ad3197a41508fccb4b5d1d5009d20507d3b`  
		Last Modified: Fri, 21 Dec 2018 10:46:45 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:12a65939c5fe07cb98205fc1d6f8e2389095e6e8c80c7ffb6982b67063ff57e6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.5 MB (129525702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d9c000e8b743fd364431a11b99135d9a4c33cd74896ded121f43901c0d9eba6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:19:30 GMT
ENV NODE_VERSION=8.14.1
# Fri, 21 Dec 2018 12:29:00 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 21 Dec 2018 12:29:03 GMT
ENV YARN_VERSION=1.12.3
# Fri, 21 Dec 2018 12:29:12 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 21 Dec 2018 12:29:14 GMT
CMD ["node"]
# Fri, 21 Dec 2018 15:04:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 21 Dec 2018 15:04:26 GMT
RUN apk add --no-cache 		bash
# Fri, 21 Dec 2018 15:04:29 GMT
ENV NODE_ENV=production
# Fri, 21 Dec 2018 15:04:31 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Fri, 21 Dec 2018 15:05:09 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 21 Dec 2018 15:05:13 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 21 Dec 2018 15:05:15 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 21 Dec 2018 15:05:18 GMT
ENV GHOST_VERSION=2.7.1
# Fri, 21 Dec 2018 15:07:06 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 21 Dec 2018 15:07:18 GMT
WORKDIR /var/lib/ghost
# Fri, 21 Dec 2018 15:07:20 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 21 Dec 2018 15:07:20 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Fri, 21 Dec 2018 15:07:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:07:23 GMT
EXPOSE 2368
# Fri, 21 Dec 2018 15:07:24 GMT
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
	-	`sha256:13888c0c686a20c4b286b6137db36e16a5f15e73eedc589993609d7ba0ccc8a7`  
		Last Modified: Fri, 21 Dec 2018 12:53:55 GMT  
		Size: 18.6 MB (18645572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ed956ac81043ab3e5cace779e36c58d22d7128b216d7989b517921e514de0c`  
		Last Modified: Fri, 21 Dec 2018 12:53:42 GMT  
		Size: 1.3 MB (1325189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6642d2bebf783ce42b40e93339c5dd2195a9fda91a1aea1fd345b3059cb29b7e`  
		Last Modified: Fri, 21 Dec 2018 15:10:56 GMT  
		Size: 9.8 KB (9846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7f4a9e1dc53bef8bcab2a7a2004a9daeba4ed4c2df4381901e5686c0dfd94f`  
		Last Modified: Fri, 21 Dec 2018 15:11:01 GMT  
		Size: 1.2 MB (1188844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e46d1a8736b5e8785f90d750231927e4196d5d5a28b0892bf8c50c112cb2e1`  
		Last Modified: Fri, 21 Dec 2018 15:11:24 GMT  
		Size: 17.2 MB (17187316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f386d635b94b6dc0a140679b38a6c5f75fbb3168dd3f332e0a4468a18fc7005`  
		Last Modified: Fri, 21 Dec 2018 15:12:05 GMT  
		Size: 89.0 MB (88973443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8243976af71386730451c1ec9bb1a2f5ddb325884975df836d32bf66678e1371`  
		Last Modified: Fri, 21 Dec 2018 15:10:56 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

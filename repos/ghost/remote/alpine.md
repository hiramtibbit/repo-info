## `ghost:alpine`

```console
$ docker pull ghost@sha256:46b8d0e2437c46af0c2579a4a717a20c4253da2b75bb4dd4875b7686aaa9ca8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:c73d746471953e007053bbd5e20f4c6c528ac33c19a2907c057aaa1b04ac2437
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.5 MB (180484446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fac73f90e5ed32d8d84418d9ff211d8e07741188b9e1b2a68ae24b06fd44de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Thu, 03 May 2018 23:45:34 GMT
ENV NODE_VERSION=6.14.2
# Thu, 24 May 2018 20:20:16 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 24 May 2018 20:20:17 GMT
ENV YARN_VERSION=1.6.0
# Thu, 24 May 2018 20:20:25 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 24 May 2018 20:20:25 GMT
CMD ["node"]
# Thu, 24 May 2018 22:28:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 24 May 2018 22:28:13 GMT
RUN apk add --no-cache 		bash
# Thu, 24 May 2018 22:28:13 GMT
ENV NODE_ENV=production
# Thu, 24 May 2018 22:28:14 GMT
ENV GHOST_CLI_VERSION=1.7.3
# Thu, 24 May 2018 22:28:37 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 24 May 2018 22:28:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 24 May 2018 22:28:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 24 May 2018 22:28:38 GMT
ENV GHOST_VERSION=1.23.0
# Thu, 24 May 2018 22:29:12 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 24 May 2018 22:29:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 24 May 2018 22:29:14 GMT
WORKDIR /var/lib/ghost
# Thu, 24 May 2018 22:29:14 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 24 May 2018 22:29:14 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Thu, 24 May 2018 22:29:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 May 2018 22:29:15 GMT
EXPOSE 2368/tcp
# Thu, 24 May 2018 22:29:15 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf1ad53299f29e45eb1fabb6165902e53c02da8b3ce9f0a30513b64f67ac088`  
		Last Modified: Thu, 24 May 2018 20:59:31 GMT  
		Size: 15.5 MB (15512047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c67eb3c047648acb84bdadbba46d9aca5b2b8fb1ea1c3d9af37ce0839c21a8`  
		Last Modified: Thu, 24 May 2018 20:59:27 GMT  
		Size: 1.1 MB (1072940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cfa1966b48fc8804d1d38a42347e7bf1cdea6a6e174af78a70be99dcbef293`  
		Last Modified: Thu, 24 May 2018 22:38:22 GMT  
		Size: 8.4 KB (8364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7dd041263d1be4b1904328454b67bd2af864dbeae95ecf25ee4e35a71a22ce6`  
		Last Modified: Thu, 24 May 2018 22:38:25 GMT  
		Size: 1.1 MB (1119123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac95ceb57e356b35603dbbf537ff82923a136686a771d855cb793943cad29605`  
		Last Modified: Thu, 24 May 2018 22:38:46 GMT  
		Size: 18.8 MB (18772114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f03ca787270f5bab0a9831955a48efec8c8ef591e1161a20760a98677ee7891`  
		Last Modified: Thu, 24 May 2018 22:39:13 GMT  
		Size: 141.6 MB (141611733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415321e094cba1d165464c0186022f2c5df062f4ff6d4fda9793dbd19c531996`  
		Last Modified: Thu, 24 May 2018 22:38:21 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

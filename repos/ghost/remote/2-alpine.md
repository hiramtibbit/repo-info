## `ghost:2-alpine`

```console
$ docker pull ghost@sha256:21beac1b61f87ac28fb4169709bef14fd4ad15d19788f2217c4cf253e4bb75f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:2-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:b0d162d5438cc0a97ff811f144194d5a59faecf4cf56af4cce853adca8765ac1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.1 MB (153091870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3747c12ff84131b6015f61bee35731b67ad665c933551b6c88a402c172ff6cd3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 11:39:13 GMT
ENV NODE_VERSION=8.14.0
# Mon, 03 Dec 2018 21:39:31 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Mon, 03 Dec 2018 21:39:31 GMT
ENV YARN_VERSION=1.12.3
# Mon, 03 Dec 2018 21:39:35 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Mon, 03 Dec 2018 21:39:35 GMT
CMD ["node"]
# Mon, 03 Dec 2018 23:42:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 03 Dec 2018 23:42:03 GMT
RUN apk add --no-cache 		bash
# Mon, 03 Dec 2018 23:42:03 GMT
ENV NODE_ENV=production
# Mon, 03 Dec 2018 23:42:04 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Mon, 03 Dec 2018 23:42:24 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Dec 2018 23:42:24 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Dec 2018 23:42:25 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 08 Dec 2018 01:02:54 GMT
ENV GHOST_VERSION=2.7.1
# Sat, 08 Dec 2018 01:03:55 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Sat, 08 Dec 2018 01:03:57 GMT
WORKDIR /var/lib/ghost
# Sat, 08 Dec 2018 01:03:58 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 08 Dec 2018 01:03:58 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Sat, 08 Dec 2018 01:03:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 08 Dec 2018 01:03:59 GMT
EXPOSE 2368/tcp
# Sat, 08 Dec 2018 01:03:59 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ade4f5bae45b5678fab08368d912c93f22e2374f768e856a982f261f0822dbc`  
		Last Modified: Mon, 03 Dec 2018 22:50:36 GMT  
		Size: 18.9 MB (18869555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd1dceaf77f3a20e552ba30e8aa5b37fcf8805b5f85573833da022c23a6604fd`  
		Last Modified: Mon, 03 Dec 2018 22:50:31 GMT  
		Size: 1.3 MB (1319666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853685485e0b8deccb97259912b7f17a78c709a3aecb1cb896d661fca5f10c73`  
		Last Modified: Mon, 03 Dec 2018 23:51:24 GMT  
		Size: 9.4 KB (9397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368c1984e1970203331bad9080ce378135f54a4ad57c2d200507d3fd733c0f4b`  
		Last Modified: Mon, 03 Dec 2018 23:51:25 GMT  
		Size: 1.2 MB (1173429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d855f482ee4802de70fc113e840bb0c7f33197bbd573dc90a70e5d7cd96b0f22`  
		Last Modified: Mon, 03 Dec 2018 23:51:34 GMT  
		Size: 17.3 MB (17291335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e906fb8a2fcf5cff448b2c61a80ab775f43c263350094ba6465e99271bbe7a35`  
		Last Modified: Sat, 08 Dec 2018 01:09:35 GMT  
		Size: 112.2 MB (112221013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec50f06962121c8478df616f2518ea013dea6df572b8986f6d19ac2a56383b9e`  
		Last Modified: Sat, 08 Dec 2018 01:08:52 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

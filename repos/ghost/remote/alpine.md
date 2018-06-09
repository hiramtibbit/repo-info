## `ghost:alpine`

```console
$ docker pull ghost@sha256:8aff8c8e36ef5daab06a07d7b3800298d083250ff394e60e6c19945b18d5a677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:7cde75fd10ab53f769a03b75c828a2144b934de4c560361fb67d8eeb241f700a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.4 MB (179391107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba842ffa8e4a0629604d7d20fbdf0fcf55b494e1b86fbc2ed3b80226e74ed112`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 01:51:15 GMT
ENV NODE_VERSION=6.14.2
# Wed, 06 Jun 2018 01:56:41 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 06 Jun 2018 01:56:41 GMT
ENV YARN_VERSION=1.6.0
# Wed, 06 Jun 2018 01:56:49 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 06 Jun 2018 01:56:49 GMT
CMD ["node"]
# Wed, 06 Jun 2018 18:21:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 06 Jun 2018 18:21:48 GMT
RUN apk add --no-cache 		bash
# Wed, 06 Jun 2018 18:21:48 GMT
ENV NODE_ENV=production
# Wed, 06 Jun 2018 18:21:49 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Wed, 06 Jun 2018 18:22:27 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Jun 2018 18:22:28 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Jun 2018 18:22:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Jun 2018 00:21:01 GMT
ENV GHOST_VERSION=1.24.1
# Sat, 09 Jun 2018 00:22:02 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Jun 2018 00:22:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Jun 2018 00:22:07 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Jun 2018 00:22:07 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Jun 2018 00:22:07 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Sat, 09 Jun 2018 00:22:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 00:22:07 GMT
EXPOSE 2368/tcp
# Sat, 09 Jun 2018 00:22:08 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e47121b945848dbf6e6800a9e52806a46f6d7185aae5b47743e1655310ac3b`  
		Last Modified: Wed, 06 Jun 2018 02:14:34 GMT  
		Size: 15.5 MB (15513525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a05c4ca1a2431622b7e997f0c71d6ccd9e67855c627146459c53e7ddea3af4`  
		Last Modified: Wed, 06 Jun 2018 02:14:28 GMT  
		Size: 1.1 MB (1072911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1491072ee98b2eeadd5bf4725f926d52629e30de502918a33e4fe914f1af5c03`  
		Last Modified: Wed, 06 Jun 2018 18:29:34 GMT  
		Size: 8.4 KB (8362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644fd988dcaf30c03bc0bccb1f8b5ada2877a81321552c7b8bb5d721b3211c7c`  
		Last Modified: Wed, 06 Jun 2018 18:29:32 GMT  
		Size: 1.1 MB (1119132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b80695a4820d277c199e752517e81890896cfcad7a4ac4086dbdb6a0635a14`  
		Last Modified: Wed, 06 Jun 2018 18:29:41 GMT  
		Size: 18.4 MB (18431444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0acdc94e8f4b911b140caab89ee70262bdc98c84560afd43c48a0f9e993cc8b`  
		Last Modified: Sat, 09 Jun 2018 00:24:28 GMT  
		Size: 140.9 MB (140857603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7df0f3f3cdb3abf0cdc537d5cbc560403d042cbbb17d239750ca60592bd8cda`  
		Last Modified: Sat, 09 Jun 2018 00:23:40 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

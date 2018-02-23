## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:daca00b38e2df5fc07c9f2a61c9c55e6eac4084c829ecdd3e84e1e38ed3f3047
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:438f0c2fadad7d1e12bf51092b7e05537150b81f375474a88c7bce9dfedd93e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.4 MB (136394407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c7938927e2e3955019dc466c5cfd078c3ac8d5cd50283895f399b4276898a89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 14 Feb 2018 22:32:45 GMT
ENV NODE_VERSION=6.13.0
# Thu, 22 Feb 2018 22:39:32 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 22 Feb 2018 22:39:32 GMT
ENV YARN_VERSION=1.3.2
# Thu, 22 Feb 2018 22:39:48 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 22 Feb 2018 22:39:48 GMT
CMD ["node"]
# Fri, 23 Feb 2018 01:31:48 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 23 Feb 2018 01:31:52 GMT
RUN apk add --no-cache 		bash
# Fri, 23 Feb 2018 01:31:53 GMT
ENV NODE_ENV=production
# Fri, 23 Feb 2018 01:31:53 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Fri, 23 Feb 2018 01:32:16 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 23 Feb 2018 01:32:17 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 23 Feb 2018 01:32:17 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 23 Feb 2018 01:32:17 GMT
ENV GHOST_VERSION=1.21.3
# Fri, 23 Feb 2018 01:32:53 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 23 Feb 2018 01:32:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 23 Feb 2018 01:32:54 GMT
WORKDIR /var/lib/ghost
# Fri, 23 Feb 2018 01:32:54 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 23 Feb 2018 01:32:55 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Fri, 23 Feb 2018 01:32:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Feb 2018 01:32:55 GMT
EXPOSE 2368/tcp
# Fri, 23 Feb 2018 01:32:55 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d51d20360fd2bb2db9354ed93023fa66150851e4777df4d75a7590e19c2c01`  
		Last Modified: Thu, 22 Feb 2018 23:45:37 GMT  
		Size: 15.5 MB (15505920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a6a440f4241b4c29ba6b0bc52f4dce1c9c0fa66ca45013171db64ce05ca478`  
		Last Modified: Thu, 22 Feb 2018 23:45:32 GMT  
		Size: 1.0 MB (1017605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0511b8cbb29e54c5967b7cb0f168498553b0ffa520f9b52dd4d4148eae43bdb5`  
		Last Modified: Fri, 23 Feb 2018 01:46:35 GMT  
		Size: 8.4 KB (8365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ff1e9b8b09a28b985bbea9b970c6f64e1cd8252b27784a0605c540739d01a1`  
		Last Modified: Fri, 23 Feb 2018 01:46:42 GMT  
		Size: 1.1 MB (1119107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ac84db9313a3f0a797e76557770dd68d3ebdbe9db65ac07274b0af3a085c20`  
		Last Modified: Fri, 23 Feb 2018 01:46:58 GMT  
		Size: 19.4 MB (19415063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4e1800c0884aa41cc85739d268b8d7323c073939c06f7ca0cf368ec07a12a1`  
		Last Modified: Fri, 23 Feb 2018 01:47:27 GMT  
		Size: 96.9 MB (96940220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937234dbf2184be5e803156ec32ccaa7c0659d60f646babf320da63fea208b19`  
		Last Modified: Fri, 23 Feb 2018 01:46:35 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

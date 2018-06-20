## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:329810120100267dcb22c66075f5a64045356d06d37caafc613b97d887f95500
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:d04d61d6fae23027b11d4ba0b249f98abe1ef98d6f6d0b0f25ec704de68be916
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.0 MB (179044208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0543287bf94a5fec46b771ab44730df582ceda8c59d836a6ab110cd8d592362d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 13 Jun 2018 01:18:00 GMT
ENV NODE_VERSION=6.14.3
# Wed, 13 Jun 2018 01:22:58 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 13 Jun 2018 01:22:58 GMT
ENV YARN_VERSION=1.6.0
# Wed, 13 Jun 2018 01:23:06 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 13 Jun 2018 01:23:06 GMT
CMD ["node"]
# Wed, 13 Jun 2018 02:05:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Jun 2018 02:05:05 GMT
RUN apk add --no-cache 		bash
# Wed, 13 Jun 2018 02:05:05 GMT
ENV NODE_ENV=production
# Wed, 13 Jun 2018 02:05:05 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Wed, 13 Jun 2018 02:05:26 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 13 Jun 2018 02:05:26 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 13 Jun 2018 02:05:27 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 20 Jun 2018 21:22:39 GMT
ENV GHOST_VERSION=1.24.5
# Wed, 20 Jun 2018 21:23:20 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 20 Jun 2018 21:23:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 20 Jun 2018 21:23:22 GMT
WORKDIR /var/lib/ghost
# Wed, 20 Jun 2018 21:23:22 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 20 Jun 2018 21:23:22 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Wed, 20 Jun 2018 21:23:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Jun 2018 21:23:23 GMT
EXPOSE 2368/tcp
# Wed, 20 Jun 2018 21:23:23 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b8379060df14b33080834f1f56f781f6f15c1f9e792b1fd0c8d558345f11a0`  
		Last Modified: Wed, 13 Jun 2018 01:41:43 GMT  
		Size: 15.5 MB (15514911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b23ecfab85a0a32d9cbe53fa12211a05dd90985a802b02f971182666f35819`  
		Last Modified: Wed, 13 Jun 2018 01:41:37 GMT  
		Size: 1.1 MB (1078988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4956c2a564590cea924dae0332ba9d04c3f64ed608267d2d87ec41be6f37e5c2`  
		Last Modified: Wed, 13 Jun 2018 02:10:42 GMT  
		Size: 8.4 KB (8364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360abd7ef13ffe6e19c3e6a48df635f57b2779bc1e2a6bbe2cd092566c97b048`  
		Last Modified: Wed, 13 Jun 2018 02:10:49 GMT  
		Size: 1.1 MB (1119120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba497dfe0b919646c917a06d2df68c5ecf628779181b43fa0dce2793eb80a0a2`  
		Last Modified: Wed, 13 Jun 2018 02:11:11 GMT  
		Size: 17.8 MB (17820836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fcce22fa935bb2ffc2d4facf4816ba14b1f5fe451f721188d1d7b8f36063b7c`  
		Last Modified: Wed, 20 Jun 2018 21:26:07 GMT  
		Size: 141.1 MB (141113861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4d985d88b991d031aeee393325182cc1ca0543c7b367b141b8928fb34b7397`  
		Last Modified: Wed, 20 Jun 2018 21:25:50 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:5e9e44651a7534b0f3fd9c41e6200c393afecf71e6e77aaae2942399f338cbd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:05e7a9feb6a7ee01cc012fdaf7eba5a93745cd9e5e51016c537b9e309fa01d39
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.4 MB (136437719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52ec4264e6981476a75642acb6edd418ad8bc61bf8698fa9159cd871cbbcbf47`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 07 Mar 2018 19:50:17 GMT
ENV NODE_VERSION=6.13.1
# Wed, 07 Mar 2018 20:02:16 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 07 Mar 2018 20:02:16 GMT
ENV YARN_VERSION=1.5.1
# Wed, 07 Mar 2018 20:02:33 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 07 Mar 2018 20:02:33 GMT
CMD ["node"]
# Wed, 07 Mar 2018 21:01:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 07 Mar 2018 21:01:24 GMT
RUN apk add --no-cache 		bash
# Wed, 07 Mar 2018 21:01:24 GMT
ENV NODE_ENV=production
# Wed, 07 Mar 2018 21:01:24 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Wed, 07 Mar 2018 21:01:48 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 07 Mar 2018 21:01:49 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 07 Mar 2018 21:01:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 07 Mar 2018 21:01:49 GMT
ENV GHOST_VERSION=1.21.3
# Wed, 07 Mar 2018 21:02:24 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 07 Mar 2018 21:02:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 07 Mar 2018 21:02:25 GMT
WORKDIR /var/lib/ghost
# Wed, 07 Mar 2018 21:02:26 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 07 Mar 2018 21:02:26 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Wed, 07 Mar 2018 21:02:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Mar 2018 21:02:27 GMT
EXPOSE 2368/tcp
# Wed, 07 Mar 2018 21:02:27 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f477172e31073346486b31dc1a9b36876b824665ccfb691e0a3f3c6bce9fbf3a`  
		Last Modified: Wed, 07 Mar 2018 20:26:57 GMT  
		Size: 15.5 MB (15506590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d3682e4cae97976274590f1a8dbc9f0a41ca2f97a12479d99ba2df9e50f37d8`  
		Last Modified: Wed, 07 Mar 2018 20:26:52 GMT  
		Size: 1.1 MB (1067450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13f487cfe1a73e7739431442fa2dfd1e9c71a64e45afcb1de029d48dbd221cc7`  
		Last Modified: Wed, 07 Mar 2018 21:26:36 GMT  
		Size: 8.4 KB (8363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bdcf1a3ce906fa99699a6ee0b09498667bba4f01521594146c5459ac6c707c`  
		Last Modified: Wed, 07 Mar 2018 21:26:40 GMT  
		Size: 1.1 MB (1119100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3010b236642e0a3d0d68c4f90383ff717e919c7c56db7170572519d2e913123`  
		Last Modified: Wed, 07 Mar 2018 21:26:56 GMT  
		Size: 19.4 MB (19408507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b2f288b5e8d45757b839132f922c218cdea688a8db60de3218f7f71774106a`  
		Last Modified: Wed, 07 Mar 2018 21:27:26 GMT  
		Size: 96.9 MB (96939583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e37324442e7575f67da417e8bab7ddaffb35c0516780ceb1d727662f43ed16a`  
		Last Modified: Wed, 07 Mar 2018 21:26:35 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:f1f412cd3b0650fcd6f9147f59fcee1172fee2bbb59e00752cf0b137879c71f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:fade854b01b9b925f807536e0c36cbbc7ed5e5afbe0308d660feb17f02e78591
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.1 MB (179055578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6512321f80b07a14d781cee7e2fb8d33f729781126c3cd2caa53fbc88a58c4c6`
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
# Mon, 18 Jun 2018 23:32:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 18 Jun 2018 23:32:13 GMT
RUN apk add --no-cache 		bash
# Mon, 18 Jun 2018 23:32:14 GMT
ENV NODE_ENV=production
# Mon, 18 Jun 2018 23:32:14 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Mon, 18 Jun 2018 23:32:41 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 18 Jun 2018 23:32:42 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 18 Jun 2018 23:32:42 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 18 Jun 2018 23:32:42 GMT
ENV GHOST_VERSION=1.24.4
# Mon, 18 Jun 2018 23:33:24 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 18 Jun 2018 23:33:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 18 Jun 2018 23:33:25 GMT
WORKDIR /var/lib/ghost
# Mon, 18 Jun 2018 23:33:26 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 18 Jun 2018 23:33:26 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Mon, 18 Jun 2018 23:33:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Jun 2018 23:33:26 GMT
EXPOSE 2368/tcp
# Mon, 18 Jun 2018 23:33:27 GMT
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
	-	`sha256:b57dfab18c6534181d4ef41fb755ffb73ff49230b80ff2c639f060aaf3a5a5e8`  
		Last Modified: Mon, 18 Jun 2018 23:38:43 GMT  
		Size: 8.4 KB (8356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49332050ffa43233f207ab3ae1cf70b43a80d62d7df418867907cfa414671c76`  
		Last Modified: Mon, 18 Jun 2018 23:38:43 GMT  
		Size: 1.1 MB (1119149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41dd34611ce0118e1e4a520cd35305e28a4e925507244f030182e9b5ef26ef9`  
		Last Modified: Mon, 18 Jun 2018 23:38:53 GMT  
		Size: 17.8 MB (17831113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e429a3758ad413103630f2c4217972796aa89e759374106d9bf3ce04e05d2c`  
		Last Modified: Mon, 18 Jun 2018 23:39:22 GMT  
		Size: 141.1 MB (141114934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfccd812f4f75ccd63c1bd9c4272d5a6a860b4467b650b8f2b98f2d1aee0e6b4`  
		Last Modified: Mon, 18 Jun 2018 23:38:42 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:0078e645794188d4d1d6c63455bce697a8eaf3a14435323b150a8b40ed2e03a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:158c21200b5e1ebbdf41e8cfb35535e96a1258878bf6ce26c88f5be30b07896c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.9 MB (139931784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b6ae1e6a0e88e2ac051791824a65bba8a87b0944aae1cd7f0b47ef6b1fea42d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 06 Jul 2018 14:15:48 GMT
ADD file:3861bd6a79d134647f9f78098d7f8a3612e6e848284806eea9b3ca4ca23d8686 in / 
# Fri, 06 Jul 2018 14:15:49 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 16:04:52 GMT
ENV NODE_VERSION=6.14.3
# Fri, 06 Jul 2018 16:10:35 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 06 Jul 2018 16:10:35 GMT
ENV YARN_VERSION=1.6.0
# Fri, 06 Jul 2018 16:10:41 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 06 Jul 2018 16:10:41 GMT
CMD ["node"]
# Fri, 06 Jul 2018 20:33:10 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 06 Jul 2018 20:33:12 GMT
RUN apk add --no-cache 		bash
# Fri, 06 Jul 2018 20:33:12 GMT
ENV NODE_ENV=production
# Fri, 06 Jul 2018 20:33:12 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Fri, 06 Jul 2018 20:33:46 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 06 Jul 2018 20:33:58 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 06 Jul 2018 20:33:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 11 Jul 2018 23:21:35 GMT
ENV GHOST_VERSION=1.24.8
# Wed, 11 Jul 2018 23:22:33 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 11 Jul 2018 23:22:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 11 Jul 2018 23:22:35 GMT
WORKDIR /var/lib/ghost
# Wed, 11 Jul 2018 23:22:35 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 11 Jul 2018 23:22:35 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Wed, 11 Jul 2018 23:22:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 23:22:36 GMT
EXPOSE 2368/tcp
# Wed, 11 Jul 2018 23:22:36 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4064ffdc82fe2f815e6146dcdb37e8ca22376aea17a5ec58d123fe7070377fb6`  
		Last Modified: Fri, 06 Jul 2018 14:18:31 GMT  
		Size: 2.4 MB (2387548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbf5885bde94407fd0356217829c5950cc1faf2fb3e2b1edef08569663e6edc`  
		Last Modified: Fri, 06 Jul 2018 16:37:33 GMT  
		Size: 15.5 MB (15514928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a820cc9b106d44e9e9fc9c92edd8dbe1ea985f24b97b47c54484784a398df1`  
		Last Modified: Fri, 06 Jul 2018 16:37:29 GMT  
		Size: 1.1 MB (1079007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9da9cada8ab8fa7d2b53c139db6e0f84f207843436b04f10eae2c874cf3269`  
		Last Modified: Fri, 06 Jul 2018 20:41:54 GMT  
		Size: 8.4 KB (8354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9378b517daec962f8ffb66c97c0188666bbbe8652c24a1bf331b37ea8caf44c3`  
		Last Modified: Fri, 06 Jul 2018 20:41:55 GMT  
		Size: 1.1 MB (1119108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e304d724c8b130be32c9989ee54287b25d0b9a6a2e7f9dfca513e2b2871f5e7f`  
		Last Modified: Fri, 06 Jul 2018 20:42:03 GMT  
		Size: 17.9 MB (17854369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc052ca93719d1492472f0f2f78d9f744db5bc1cae60cd4dd3ec55a3636880e`  
		Last Modified: Wed, 11 Jul 2018 23:25:18 GMT  
		Size: 102.0 MB (101967913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ad7b45dc22b8708ee885fec00f6b50ff4f36ed0fc04974bf1765ccdbf9dfb9`  
		Last Modified: Wed, 11 Jul 2018 23:24:44 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

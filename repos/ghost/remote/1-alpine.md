## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:19a837ba10a95d30154c4aacbac98583d4724e12b21d48131494a2e0c16b3736
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:95ff22f4c9b401dfc50932bcd50bc2dfae5da6e76e8b54a3f66081b3110cf9aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.4 MB (136429517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f89af9d7a3374d56e2255e48b404089f920a5f38e2e88f3e57f8b6279fbc73a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 14 Feb 2018 22:32:45 GMT
ENV NODE_VERSION=6.13.0
# Wed, 14 Feb 2018 22:44:56 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 14 Feb 2018 22:45:17 GMT
ENV YARN_VERSION=1.3.2
# Wed, 14 Feb 2018 22:45:25 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 14 Feb 2018 22:45:26 GMT
CMD ["node"]
# Wed, 14 Feb 2018 23:33:01 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 14 Feb 2018 23:33:04 GMT
RUN apk add --no-cache 		bash
# Wed, 14 Feb 2018 23:33:04 GMT
ENV NODE_ENV=production
# Wed, 14 Feb 2018 23:33:05 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Wed, 14 Feb 2018 23:33:32 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 14 Feb 2018 23:33:37 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 14 Feb 2018 23:33:37 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 22 Feb 2018 20:12:25 GMT
ENV GHOST_VERSION=1.21.3
# Thu, 22 Feb 2018 20:13:12 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 22 Feb 2018 20:13:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 22 Feb 2018 20:13:13 GMT
WORKDIR /var/lib/ghost
# Thu, 22 Feb 2018 20:13:13 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 22 Feb 2018 20:13:14 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Thu, 22 Feb 2018 20:13:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Feb 2018 20:13:14 GMT
EXPOSE 2368/tcp
# Thu, 22 Feb 2018 20:13:15 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d048a060ac1159afe54b6e56ee0fcfd13181f22dad7fd1933dcf429bc0d0a9`  
		Last Modified: Wed, 14 Feb 2018 23:04:58 GMT  
		Size: 15.5 MB (15505787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de2c120ca6ee406577b5773dac679594d5e645e75a5f014d4d207ba798d9c94`  
		Last Modified: Wed, 14 Feb 2018 23:04:52 GMT  
		Size: 1.0 MB (1017581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177783ca219420ed6c755293c27b22ccb508acbe34c4175b0a10d3f7be3a8de7`  
		Last Modified: Thu, 15 Feb 2018 00:05:55 GMT  
		Size: 8.4 KB (8366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878dddaa7ad291ccbc89b436be60aaf76c0dcca5c721c06cf9617aa753285ca6`  
		Last Modified: Thu, 15 Feb 2018 00:06:02 GMT  
		Size: 1.1 MB (1119096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19a0cf29c8d02cb3b7b6f7e222c436d6cfac760d42b9aa2205276e1b4e45403`  
		Last Modified: Thu, 15 Feb 2018 00:06:21 GMT  
		Size: 19.5 MB (19450308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace313a51162e74f5d06bd8b3281b3d2d7005a61161a675e54c1b349390a6468`  
		Last Modified: Thu, 22 Feb 2018 20:17:43 GMT  
		Size: 96.9 MB (96940248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c3476ee7da2984955781d1d7c720c5ae5316b4ea0dcf1fe7340665e131446b`  
		Last Modified: Thu, 22 Feb 2018 20:17:29 GMT  
		Size: 561.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

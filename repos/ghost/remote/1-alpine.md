## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:166f6d78c15b248aa3d238901c68e33b3698acadb545d2f6b96d12289a2538f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:a6d07d0cd823fd4964f2fdd5d6bdf06cd02b28de3ad0bec7cc4700641566dc5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.9 MB (127936361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:facfe4166aecb2f93c760c4a2886c3c1aaee5be2f2873b250f12307bac6abb31`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Tue, 03 Apr 2018 00:59:06 GMT
ENV NODE_VERSION=6.14.1
# Tue, 03 Apr 2018 01:11:15 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 03 Apr 2018 01:11:15 GMT
ENV YARN_VERSION=1.5.1
# Tue, 03 Apr 2018 01:11:28 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 03 Apr 2018 01:11:28 GMT
CMD ["node"]
# Tue, 03 Apr 2018 03:30:23 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 03 Apr 2018 03:30:26 GMT
RUN apk add --no-cache 		bash
# Tue, 03 Apr 2018 03:30:27 GMT
ENV NODE_ENV=production
# Tue, 03 Apr 2018 03:30:27 GMT
ENV GHOST_CLI_VERSION=1.6.0
# Tue, 03 Apr 2018 03:30:48 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 03 Apr 2018 03:30:49 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 03 Apr 2018 03:30:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 03 Apr 2018 03:30:50 GMT
ENV GHOST_VERSION=1.22.0
# Tue, 03 Apr 2018 03:31:24 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 03 Apr 2018 03:31:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 03 Apr 2018 03:31:25 GMT
WORKDIR /var/lib/ghost
# Tue, 03 Apr 2018 03:31:26 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 03 Apr 2018 03:31:26 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Tue, 03 Apr 2018 03:31:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Apr 2018 03:31:27 GMT
EXPOSE 2368/tcp
# Tue, 03 Apr 2018 03:31:27 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209940bfc9f474ff72013592d16fc0ac86f853491445f1bf606be599b1dbcb00`  
		Last Modified: Tue, 03 Apr 2018 02:24:08 GMT  
		Size: 15.5 MB (15474763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa77586de2de2644543aefeb4063f73eada8e9f8a796defd6f52b933113ab498`  
		Last Modified: Tue, 03 Apr 2018 02:24:03 GMT  
		Size: 1.1 MB (1067448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f63a91c1a5067bc9ab0a4de592d46c41d6362a6197ff98c476a68c48e2d293`  
		Last Modified: Tue, 03 Apr 2018 04:22:20 GMT  
		Size: 8.4 KB (8365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e354ff75e983303ad1aaee1b5251e9bca04803485927e18f5db013f84c27484c`  
		Last Modified: Tue, 03 Apr 2018 04:22:26 GMT  
		Size: 1.1 MB (1119103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b26c040e5503c29d51f9bc410b6b5fa2fc0277eb409ddc448bbd7ca349ed04`  
		Last Modified: Tue, 03 Apr 2018 04:22:41 GMT  
		Size: 16.0 MB (16002229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31d1e0c152ae7bd8525c10551b0e56488da397b239422c515e1d653f46f9a8e`  
		Last Modified: Tue, 03 Apr 2018 04:23:12 GMT  
		Size: 91.9 MB (91876327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6114b842d27558737d35b2137bb6c3622c1e2b71243656510aa8540672be2918`  
		Last Modified: Tue, 03 Apr 2018 04:22:21 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

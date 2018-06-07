## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:d353f44be95beb000d103926c707a112a22365da48aea6435ae519ac662c07a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:61abccb1e0de995e9c7031ef33a9f27d6c35ad95fe9528b8a1c25936417d4a1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.4 MB (46439077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aeec2b788637949846e0c021a28b51a020793b66978b5cccb7bd2151fb641a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

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
# Thu, 07 Jun 2018 00:30:55 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 07 Jun 2018 00:33:56 GMT
RUN apk add --no-cache 		bash 		tar
# Thu, 07 Jun 2018 00:33:56 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 07 Jun 2018 00:33:56 GMT
WORKDIR /usr/src/ghost
# Thu, 07 Jun 2018 00:33:57 GMT
ENV GHOST_VERSION=0.11.13
# Thu, 07 Jun 2018 00:34:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 07 Jun 2018 00:34:42 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 07 Jun 2018 00:34:43 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 07 Jun 2018 00:34:43 GMT
VOLUME [/var/lib/ghost]
# Thu, 07 Jun 2018 00:34:44 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Thu, 07 Jun 2018 00:34:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 00:34:44 GMT
EXPOSE 2368/tcp
# Thu, 07 Jun 2018 00:34:44 GMT
CMD ["npm" "start"]
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
	-	`sha256:df9bdc2be62e195ff1d4d9e16e102641f56591dd64988d70ded0304d6ebd5c44`  
		Last Modified: Thu, 07 Jun 2018 00:36:30 GMT  
		Size: 8.4 KB (8365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61557c9564c1450a5f0c4f3f2d4e7628ab49255a645c4d520f9d28ecc0339c50`  
		Last Modified: Thu, 07 Jun 2018 00:38:12 GMT  
		Size: 1.4 MB (1360707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365af06ec8bd10d1019f81611647647fb77bf6281d132c23f88db7e21e03d12f`  
		Last Modified: Thu, 07 Jun 2018 00:38:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0754cff781508be56910a92539db395bd9985b1c3e12a3c2babe5be91941b8bb`  
		Last Modified: Thu, 07 Jun 2018 00:38:18 GMT  
		Size: 26.1 MB (26095034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5d6e3609e23e22b8379ab31a19b176b1201d752a5e00f8514c04144e8b884f`  
		Last Modified: Thu, 07 Jun 2018 00:38:12 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc28c27524b84036abb5bb72b3d64006f113eeaffea4d4efbbb1dbfcdb9178bc`  
		Last Modified: Thu, 07 Jun 2018 00:38:12 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

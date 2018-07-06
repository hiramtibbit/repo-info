## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:7f9e812c5d06c74dd65b9927767d16c7a5b71606a800e1a77f48e2591b1a754a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:b2827653542ce7c64aacef2f4dcb0d4b6d6e8aad888b30b5131026f9b79600bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.4 MB (46447005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ba9bd4e61ffb45ef91d22d77ae2c7b41ee3b5c01268efc7d3a14d18d04cac3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

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
# Fri, 06 Jul 2018 20:38:04 GMT
RUN apk add --no-cache 		bash 		tar
# Fri, 06 Jul 2018 20:38:05 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 06 Jul 2018 20:38:05 GMT
WORKDIR /usr/src/ghost
# Fri, 06 Jul 2018 20:38:05 GMT
ENV GHOST_VERSION=0.11.13
# Fri, 06 Jul 2018 20:39:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 06 Jul 2018 20:39:14 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 06 Jul 2018 20:39:15 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 06 Jul 2018 20:39:25 GMT
VOLUME [/var/lib/ghost]
# Fri, 06 Jul 2018 20:39:25 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Fri, 06 Jul 2018 20:39:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Jul 2018 20:39:25 GMT
EXPOSE 2368/tcp
# Fri, 06 Jul 2018 20:39:26 GMT
CMD ["npm" "start"]
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
	-	`sha256:07e065c8a0b3d1d465dabc341ab10abef20e09e4bf37206b03b57d3630aaedb8`  
		Last Modified: Fri, 06 Jul 2018 20:44:44 GMT  
		Size: 1.4 MB (1360678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f301b29c729f0ca403ddf8375a88e6f17e5c27d1f53d98c4aecb1df649135e`  
		Last Modified: Fri, 06 Jul 2018 20:44:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d07f080f2fed7e0cc768a4e8e8602b2833507e69d0b4071484f68daa02f5f742`  
		Last Modified: Fri, 06 Jul 2018 20:44:58 GMT  
		Size: 26.1 MB (26095530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745e6ce4b9f4ce131097c3fa10d3a8cde9f352996a91c5ed2794cb31e4450cc6`  
		Last Modified: Fri, 06 Jul 2018 20:44:43 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44cc4d3f9dd39a8bed794bf3876e254eda994adc7913a4ae885d9343f241e127`  
		Last Modified: Fri, 06 Jul 2018 20:44:43 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:80d06d21feec2e2c387fd512b3edaedb6e964c399ea71dbdf8ace794221d94e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:378317648ab4108d047332b69ef2562fb6931b492734c198b5c41c7d3d3de86a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.4 MB (46447247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66223685431ea606102b43a884c73d4a0733908ff81c6b9e01d74d7e4a5cf467`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 20 Jun 2018 23:16:10 GMT
ENV NODE_VERSION=6.14.3
# Wed, 20 Jun 2018 23:28:19 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 20 Jun 2018 23:28:19 GMT
ENV YARN_VERSION=1.6.0
# Wed, 20 Jun 2018 23:28:33 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 20 Jun 2018 23:28:33 GMT
CMD ["node"]
# Thu, 21 Jun 2018 00:43:47 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 21 Jun 2018 00:48:34 GMT
RUN apk add --no-cache 		bash 		tar
# Thu, 21 Jun 2018 00:48:34 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 21 Jun 2018 00:48:35 GMT
WORKDIR /usr/src/ghost
# Thu, 21 Jun 2018 00:48:35 GMT
ENV GHOST_VERSION=0.11.13
# Thu, 21 Jun 2018 00:49:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 21 Jun 2018 00:49:47 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 21 Jun 2018 00:49:48 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 21 Jun 2018 00:49:48 GMT
VOLUME [/var/lib/ghost]
# Thu, 21 Jun 2018 00:49:49 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Thu, 21 Jun 2018 00:49:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Jun 2018 00:49:49 GMT
EXPOSE 2368/tcp
# Thu, 21 Jun 2018 00:49:49 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0271827f8906b22a7291f6c6bca9c78da874ab08b6fa954ae464c8f47fa86bc9`  
		Last Modified: Thu, 21 Jun 2018 00:18:22 GMT  
		Size: 15.5 MB (15515157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6e97105bdf7011951263aca0ce452e732e9f39b1f44b5f5214dfe3cacde617`  
		Last Modified: Thu, 21 Jun 2018 00:18:17 GMT  
		Size: 1.1 MB (1079011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:977c25c637035f957a10a8be760931c388e00d9ac669ad0c203d7f3903355244`  
		Last Modified: Thu, 21 Jun 2018 00:51:47 GMT  
		Size: 8.4 KB (8364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa81991b19855112fb85626f4ff9f8537b242c2db98e2cda0c732526739581b3`  
		Last Modified: Thu, 21 Jun 2018 00:54:02 GMT  
		Size: 1.4 MB (1360697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7eb4057595dc891b1fbef3b4b825da65b11b10aaccf74eb7df46111eb2c07ef`  
		Last Modified: Thu, 21 Jun 2018 00:54:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd799297e2d1884ae2309878341f2d8c553a075857e110ae7f9978b7499205a5`  
		Last Modified: Thu, 21 Jun 2018 00:54:14 GMT  
		Size: 26.1 MB (26095482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e85d29b8b6665b24dd7864b33e85774f449228acd1c9f95bdfd4d76f008b147b`  
		Last Modified: Thu, 21 Jun 2018 00:54:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9084cd9c1a5df9976c031f89da6cba445f957f48f65fcfd03d6345aca7ea89a`  
		Last Modified: Thu, 21 Jun 2018 00:54:01 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

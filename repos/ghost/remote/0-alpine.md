## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:a8c982f55bdaa99a792b504a9f5c6d64d531ae3039b3f6b4ab2467bd766ccf86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:e6d6c1561ad551cd7328da61eef8355f79d778dcdd2ca5bfed2f487e9becc488
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47226988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b711e9f6d93355d5ad6d73fd7b94e12f8ee55a89e05e973a75c25f52ae77605`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 11 Sep 2018 22:20:45 GMT
ADD file:4b806a0c031f19a4609ebde02464b2139efebfdf9f5d1bba13cf1c316938530d in / 
# Tue, 11 Sep 2018 22:20:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 12:11:15 GMT
ENV NODE_VERSION=6.15.0
# Mon, 03 Dec 2018 21:55:45 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Mon, 03 Dec 2018 21:55:46 GMT
ENV YARN_VERSION=1.6.0
# Mon, 03 Dec 2018 21:55:54 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Mon, 03 Dec 2018 21:55:54 GMT
CMD ["node"]
# Mon, 03 Dec 2018 23:48:15 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 03 Dec 2018 23:48:16 GMT
RUN apk add --no-cache 		bash 		tar
# Mon, 03 Dec 2018 23:48:17 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Mon, 03 Dec 2018 23:48:17 GMT
WORKDIR /usr/src/ghost
# Mon, 03 Dec 2018 23:48:17 GMT
ENV GHOST_VERSION=0.11.14
# Mon, 03 Dec 2018 23:49:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Mon, 03 Dec 2018 23:49:05 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Mon, 03 Dec 2018 23:49:06 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Mon, 03 Dec 2018 23:49:06 GMT
VOLUME [/var/lib/ghost]
# Mon, 03 Dec 2018 23:49:07 GMT
COPY file:89e7330b48cbb0bdce59b338bf077606d284ce7048d42db76e653c91ee52a54e in /usr/local/bin/ 
# Mon, 03 Dec 2018 23:49:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Dec 2018 23:49:07 GMT
EXPOSE 2368/tcp
# Mon, 03 Dec 2018 23:49:07 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:d6a5679aa3cfc52503fac8e2345790783537564df5af43355ec662d7703aacbf`  
		Last Modified: Tue, 11 Sep 2018 22:22:09 GMT  
		Size: 2.4 MB (2387846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4517da196bc86fdb6fb6ec3f5f9c8fb4c0ed37cc39a7830161bab80d7804a3a7`  
		Last Modified: Mon, 03 Dec 2018 22:58:22 GMT  
		Size: 15.5 MB (15535812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095dfa0d587f733f24f9f1c92b5e795be176603aeccf555958f1d037bb277d23`  
		Last Modified: Mon, 03 Dec 2018 22:58:18 GMT  
		Size: 1.1 MB (1093923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6848bf6b92b85acecbd0c52a217262072bddcfe601f1316d860f9dcbb4137f92`  
		Last Modified: Mon, 03 Dec 2018 23:57:00 GMT  
		Size: 8.4 KB (8363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2072ee3493cedb72092b6ee111bd3e7b2aa0ee41e2d429f90e450ef32470a1bb`  
		Last Modified: Mon, 03 Dec 2018 23:56:59 GMT  
		Size: 1.4 MB (1360629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4cb55cff81269057c7be956c92e3451c6f7643a2441d0b8a53c57988dc56982`  
		Last Modified: Mon, 03 Dec 2018 23:56:58 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a163e3cd5ee4386064f65d0d778681c1237b6af71503f80885935ef425fa7b`  
		Last Modified: Mon, 03 Dec 2018 23:57:10 GMT  
		Size: 26.8 MB (26839439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae1c66e1314461da27fe04367f9f98eb03928d30cd1f84fc783dc9200801b8d`  
		Last Modified: Mon, 03 Dec 2018 23:56:59 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2da1acdd352c9ccd1b1bfae67a62ee8e68fe26ef25382bde43517e6f371638a`  
		Last Modified: Mon, 03 Dec 2018 23:56:58 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

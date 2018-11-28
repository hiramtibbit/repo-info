## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:760e1d0c88cae904e8915ee68402f56e5ff0af0c21a568f104a701f8751c0275
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:6291c09f993471e690f040af0546bf53a6b29226ced1a4d87476f125ea2e7859
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47224102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e3f8892c32e67f2f0dc57e55015ba613511d8092332899e62c324a0f156ce64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 11 Sep 2018 22:20:45 GMT
ADD file:4b806a0c031f19a4609ebde02464b2139efebfdf9f5d1bba13cf1c316938530d in / 
# Tue, 11 Sep 2018 22:20:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 12:11:15 GMT
ENV NODE_VERSION=6.15.0
# Wed, 28 Nov 2018 12:32:05 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 28 Nov 2018 12:32:06 GMT
ENV YARN_VERSION=1.6.0
# Wed, 28 Nov 2018 12:32:11 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 28 Nov 2018 12:32:11 GMT
CMD ["node"]
# Wed, 28 Nov 2018 14:44:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Nov 2018 14:44:20 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 28 Nov 2018 14:44:20 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 28 Nov 2018 14:44:20 GMT
WORKDIR /usr/src/ghost
# Wed, 28 Nov 2018 14:44:21 GMT
ENV GHOST_VERSION=0.11.14
# Wed, 28 Nov 2018 14:45:06 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 28 Nov 2018 14:45:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 28 Nov 2018 14:45:08 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 28 Nov 2018 14:45:08 GMT
VOLUME [/var/lib/ghost]
# Wed, 28 Nov 2018 14:45:08 GMT
COPY file:89e7330b48cbb0bdce59b338bf077606d284ce7048d42db76e653c91ee52a54e in /usr/local/bin/ 
# Wed, 28 Nov 2018 14:45:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 14:45:09 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 14:45:09 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:d6a5679aa3cfc52503fac8e2345790783537564df5af43355ec662d7703aacbf`  
		Last Modified: Tue, 11 Sep 2018 22:22:09 GMT  
		Size: 2.4 MB (2387846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edea020bf427c2da0dd8665b7611315e850c96fd03eb2c51b8e57d6fe7ea24ea`  
		Last Modified: Wed, 28 Nov 2018 14:01:02 GMT  
		Size: 15.5 MB (15534285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64388a1d080446084347f73ae6feaac8d53c4b8bcd45b56c6febc5b397277095`  
		Last Modified: Wed, 28 Nov 2018 14:00:58 GMT  
		Size: 1.1 MB (1091471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26d595ebae02cfe9e6d052eab5e867a21f8217e368d46280a25185d695e487e`  
		Last Modified: Wed, 28 Nov 2018 14:52:30 GMT  
		Size: 8.4 KB (8361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f2ee4c1477fafe7ca17087ca2348c0d13cd68ba5d3c2a11e0bc3178ecf958b`  
		Last Modified: Wed, 28 Nov 2018 14:52:30 GMT  
		Size: 1.4 MB (1360694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cbcee409a3868fdcf32750474bffc9ba6f5c7a3c79b18e4d814990defba4133`  
		Last Modified: Wed, 28 Nov 2018 14:52:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d471c017e30e3635f18d8bf1b5ca3f8f012d34edc62ff2ad525aeade8a87e`  
		Last Modified: Wed, 28 Nov 2018 14:52:41 GMT  
		Size: 26.8 MB (26840470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2543b861dfb50712b1f8450ba9ce149e48425c59e1389d16853957d5a244aa2a`  
		Last Modified: Wed, 28 Nov 2018 14:52:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64c9b148722ce0df67b5b3ee43720035ac4b45092ed3efa14d4118cd6c33958`  
		Last Modified: Wed, 28 Nov 2018 14:52:30 GMT  
		Size: 622.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

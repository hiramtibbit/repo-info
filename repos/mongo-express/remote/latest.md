## `mongo-express:latest`

```console
$ docker pull mongo-express@sha256:6e34df6ec92d2cd09af9b3022a205c628eaebdde941799f4bf2020957d4927e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo-express:latest` - linux; amd64

```console
$ docker pull mongo-express@sha256:24592d5955b28c9b1f09bc9e23cb9b7dc0094b0e8920e936c652455868775130
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (35991768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcb8e36fe5a7bc7a91f7a3cb7527a5fb55be867e1cb12dadcde94ebe0a9a170d`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["mongo-express"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:19:53 GMT
ENV NODE_VERSION=8.15.0
# Wed, 30 Jan 2019 22:38:42 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 30 Jan 2019 22:38:42 GMT
ENV YARN_VERSION=1.12.3
# Wed, 30 Jan 2019 22:38:46 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 30 Jan 2019 22:38:47 GMT
CMD ["node"]
# Thu, 31 Jan 2019 02:43:16 GMT
RUN apk add --no-cache bash tini
# Thu, 31 Jan 2019 02:43:16 GMT
EXPOSE 8081
# Thu, 31 Jan 2019 02:43:16 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Thu, 31 Jan 2019 02:43:16 GMT
ENV MONGO_EXPRESS=0.49.0
# Thu, 31 Jan 2019 02:43:30 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Thu, 31 Jan 2019 02:43:30 GMT
COPY file:58292318f4d4eebb73af5f654a480f4db1e1bb8a29365676b6ccf54504b61984 in / 
# Thu, 31 Jan 2019 02:43:31 GMT
WORKDIR /node_modules/mongo-express
# Thu, 31 Jan 2019 02:43:31 GMT
RUN cp config.default.js config.js
# Thu, 31 Jan 2019 02:43:32 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 02:43:32 GMT
CMD ["mongo-express"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62154f231947a79f0fa2c21b5b6ea90f191a1012773684fb766bf43139551ff0`  
		Last Modified: Thu, 31 Jan 2019 00:00:35 GMT  
		Size: 18.9 MB (18870481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf10a8404b6ca2d9f9e9d1e18fd89f175148e6bfea6c0b927655f34cd29c9bc`  
		Last Modified: Thu, 31 Jan 2019 00:00:28 GMT  
		Size: 1.3 MB (1328402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d4838000bf2cc7edeb57aa8d74db0220fa70c91668ccf9be692d27e6fb3ba5`  
		Last Modified: Thu, 31 Jan 2019 02:43:42 GMT  
		Size: 1.2 MB (1181732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06254aa302f689a7879133d607183fe015538a8c19f05106d9e51dae8c23b685`  
		Last Modified: Thu, 31 Jan 2019 02:43:44 GMT  
		Size: 12.4 MB (12400778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adcd54c231d9a6ba2a851d9d91bdf7bb9094160d2b461907a4c95916393dd635`  
		Last Modified: Thu, 31 Jan 2019 02:43:41 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4761f4e0cd743267018d3ed5d365dfea53cd23caa111241778b66824c68669`  
		Last Modified: Thu, 31 Jan 2019 02:43:41 GMT  
		Size: 2.8 KB (2764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo-express:latest` - linux; arm64 variant v8

```console
$ docker pull mongo-express@sha256:b2a4b2d8abec4ccea0c305f5b7a87ce4dd414c50e4cf291b6705597009ab5fa2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 MB (34755483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77dad1fb79fcd3279b57a89101987d65b2b9a7ab843dae726a475c2b0f8b83bc`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["mongo-express"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 09:40:30 GMT
ENV NODE_VERSION=8.15.0
# Thu, 27 Dec 2018 10:06:22 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 10:06:23 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 10:06:31 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 10:06:32 GMT
CMD ["node"]
# Thu, 27 Dec 2018 11:38:29 GMT
RUN apk add --no-cache bash tini
# Thu, 27 Dec 2018 11:38:30 GMT
EXPOSE 8081
# Thu, 27 Dec 2018 11:38:31 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Thu, 27 Dec 2018 11:38:31 GMT
ENV MONGO_EXPRESS=0.49.0
# Thu, 27 Dec 2018 11:38:57 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Thu, 27 Dec 2018 11:38:58 GMT
COPY file:58292318f4d4eebb73af5f654a480f4db1e1bb8a29365676b6ccf54504b61984 in / 
# Thu, 27 Dec 2018 11:38:59 GMT
WORKDIR /node_modules/mongo-express
# Thu, 27 Dec 2018 11:39:02 GMT
RUN cp config.default.js config.js
# Thu, 27 Dec 2018 11:39:02 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Thu, 27 Dec 2018 11:39:03 GMT
CMD ["mongo-express"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:232209ef725bb88be623ca8ce487308bf43ed5967e395834a10e2ff0caaf9809`  
		Last Modified: Thu, 27 Dec 2018 11:18:55 GMT  
		Size: 17.8 MB (17825693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3bea85cd56cfc0e20e44a22040e02b4b0c3796eefc7c73b078227d1eda83f8`  
		Last Modified: Thu, 27 Dec 2018 11:18:48 GMT  
		Size: 1.3 MB (1325178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5af5327bd6d18351d0cdd42c5abca568006216e94ea8ca6bd80dc8c3dd13653`  
		Last Modified: Thu, 27 Dec 2018 11:39:17 GMT  
		Size: 1.1 MB (1121111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e7e84a4c2cb36003e8475664ccacd89466824fd68bdf974d242d2338f8d9fbc`  
		Last Modified: Thu, 27 Dec 2018 11:39:21 GMT  
		Size: 12.4 MB (12380150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1343502cd03c0b1f84f32f3982790f36a0078402883d465e829d42aab5f204a`  
		Last Modified: Thu, 27 Dec 2018 11:39:16 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815c0150fc24e4c052e383c53cba24c1db69a784147b92bfc79f237331e2a94c`  
		Last Modified: Thu, 27 Dec 2018 11:39:16 GMT  
		Size: 2.8 KB (2763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo-express:latest`

```console
$ docker pull mongo-express@sha256:05c3d84dfcc64e28c197a6045b3fd3247e6740fda17919ceb26c48419793eb35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo-express:latest` - linux; amd64

```console
$ docker pull mongo-express@sha256:dacab38980757334a91723497646bf35a6dda01700cd64cf0504e49293d14730
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.1 MB (36134007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcc7ce082834e680d661fed3a5e0da028c4302717362bd44db4e41e7d0fa58ff`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["mongo-express"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Tue, 04 Sep 2018 21:42:54 GMT
ENV NODE_VERSION=8.11.4
# Tue, 04 Sep 2018 22:04:55 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 04 Sep 2018 22:04:55 GMT
ENV YARN_VERSION=1.6.0
# Tue, 04 Sep 2018 22:04:59 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Sep 2018 22:04:59 GMT
CMD ["node"]
# Wed, 05 Sep 2018 08:40:05 GMT
RUN apk add --no-cache bash tini
# Wed, 05 Sep 2018 08:40:05 GMT
EXPOSE 8081/tcp
# Wed, 05 Sep 2018 08:40:05 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Wed, 05 Sep 2018 08:40:06 GMT
ENV MONGO_EXPRESS=0.49.0
# Wed, 05 Sep 2018 08:40:21 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Wed, 05 Sep 2018 08:40:22 GMT
COPY file:2516c7b7f7588c555e93ea187f5e232cc365678735934990998dc2509b84b3c2 in / 
# Wed, 05 Sep 2018 08:40:22 GMT
WORKDIR /node_modules/mongo-express
# Wed, 05 Sep 2018 08:40:23 GMT
RUN cp config.default.js config.js
# Wed, 05 Sep 2018 08:40:23 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 08:40:23 GMT
CMD ["mongo-express"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db7179d8c6cdb7f56b40d066af6116b26bf59b0852d793313a7a7cdc9db16263`  
		Last Modified: Tue, 04 Sep 2018 22:51:28 GMT  
		Size: 19.6 MB (19646672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b9cfaecc8c4d34833b5750eac3b6a6c6ce3e89897ae9bc24288553e2081fc3`  
		Last Modified: Tue, 04 Sep 2018 22:51:23 GMT  
		Size: 1.1 MB (1080884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406a438c03b80d21e56e132d2eb77e023443d3a14e671c9d360e6428cc78a679`  
		Last Modified: Wed, 05 Sep 2018 08:40:34 GMT  
		Size: 1.1 MB (1131410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0aaa4db97e304ace34b67cce0074d6b7bf72bcc95644c55bde3fb77e317073a`  
		Last Modified: Wed, 05 Sep 2018 08:40:37 GMT  
		Size: 12.3 MB (12257046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64192d3dfff945977a12f5b239cc5742ab705cacef669694dc8edab2f5cba64`  
		Last Modified: Wed, 05 Sep 2018 08:40:34 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aefb15c0ec4fbbb59305f9eb822e61a84bb6f16bdedddea8ab32b8f583babdd1`  
		Last Modified: Wed, 05 Sep 2018 08:40:34 GMT  
		Size: 2.8 KB (2764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo-express:latest` - linux; arm64 variant v8

```console
$ docker pull mongo-express@sha256:21355543b7dce997c7862d970ca1b59c73edcf5ebe4cbf1ffe2b62e731ac2008
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.3 MB (35344501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ad8b89d5e56c076d616919b02fe20a1aba25f7f1195806f581d902713335808`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["mongo-express"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 16 Aug 2018 06:07:19 GMT
ENV NODE_VERSION=8.11.4
# Thu, 16 Aug 2018 06:32:56 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 16 Aug 2018 06:32:57 GMT
ENV YARN_VERSION=1.6.0
# Thu, 16 Aug 2018 06:33:05 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 16 Aug 2018 06:33:06 GMT
CMD ["node"]
# Fri, 24 Aug 2018 21:03:01 GMT
RUN apk add --no-cache bash tini
# Fri, 24 Aug 2018 21:03:01 GMT
EXPOSE 8081/tcp
# Fri, 24 Aug 2018 21:03:02 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Fri, 24 Aug 2018 21:03:03 GMT
ENV MONGO_EXPRESS=0.49.0
# Fri, 24 Aug 2018 21:03:28 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Fri, 24 Aug 2018 21:03:29 GMT
COPY file:2516c7b7f7588c555e93ea187f5e232cc365678735934990998dc2509b84b3c2 in / 
# Fri, 24 Aug 2018 21:03:30 GMT
WORKDIR /node_modules/mongo-express
# Fri, 24 Aug 2018 21:03:31 GMT
RUN cp config.default.js config.js
# Fri, 24 Aug 2018 21:03:32 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 24 Aug 2018 21:03:33 GMT
CMD ["mongo-express"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7697c4edb8646891107194ab6307fc051fc1b73e275dd554167de2bede7a719d`  
		Last Modified: Thu, 16 Aug 2018 07:19:13 GMT  
		Size: 19.0 MB (19025052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0dc5cfd6f1c813ad5569fa4a7d7fa4e8aa611b7224139d2b185e454d2f7a30`  
		Last Modified: Thu, 16 Aug 2018 07:19:06 GMT  
		Size: 1.1 MB (1080076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a21dcdad1821fe37ba8e0773dccd2562eec80485df97e6406e8ccf3eb95dbd`  
		Last Modified: Fri, 24 Aug 2018 21:04:04 GMT  
		Size: 1.1 MB (1073060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f712db9d542dee8f718ce78ddbdc8eed087c66ef9946404f152bb0f4389cdc9`  
		Last Modified: Fri, 24 Aug 2018 21:04:08 GMT  
		Size: 12.2 MB (12248052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e10d95302b92f3b8edfd755fb72a008b2d0a6031458c2ce71558f95b3ab56f7`  
		Last Modified: Fri, 24 Aug 2018 21:04:04 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f3b8120d331ed5d85dc81e790a4f079652f899c6dd3ffdc907a42bf160428f1`  
		Last Modified: Fri, 24 Aug 2018 21:04:04 GMT  
		Size: 2.8 KB (2765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

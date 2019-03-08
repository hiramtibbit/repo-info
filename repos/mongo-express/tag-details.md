<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo-express`

-	[`mongo-express:0.49`](#mongo-express049)
-	[`mongo-express:0.49.0`](#mongo-express0490)
-	[`mongo-express:latest`](#mongo-expresslatest)

## `mongo-express:0.49`

```console
$ docker pull mongo-express@sha256:cd323afcb811c149d00c15efb4f632f901c51646d846e28b6df3cef871af303c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo-express:0.49` - linux; amd64

```console
$ docker pull mongo-express@sha256:9a1ec9b93c59190e792b2328fe003d5234ec324e9e106e7ed199a62ed396c352
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (36015769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:376d1d9e09954917b9d53d7550728ca45eab173b8e039ff9cee40e672a99f882`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["mongo-express"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 00:48:28 GMT
ENV NODE_VERSION=8.15.1
# Fri, 08 Mar 2019 01:19:02 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 08 Mar 2019 01:19:02 GMT
ENV YARN_VERSION=1.12.3
# Fri, 08 Mar 2019 01:19:06 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 08 Mar 2019 01:19:07 GMT
CMD ["node"]
# Fri, 08 Mar 2019 05:22:16 GMT
RUN apk add --no-cache bash tini
# Fri, 08 Mar 2019 05:22:16 GMT
EXPOSE 8081
# Fri, 08 Mar 2019 05:22:17 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Fri, 08 Mar 2019 05:22:17 GMT
ENV MONGO_EXPRESS=0.49.0
# Fri, 08 Mar 2019 05:22:40 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Fri, 08 Mar 2019 05:22:41 GMT
COPY file:58292318f4d4eebb73af5f654a480f4db1e1bb8a29365676b6ccf54504b61984 in / 
# Fri, 08 Mar 2019 05:22:42 GMT
WORKDIR /node_modules/mongo-express
# Fri, 08 Mar 2019 05:22:43 GMT
RUN cp config.default.js config.js
# Fri, 08 Mar 2019 05:22:43 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:22:44 GMT
CMD ["mongo-express"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d566d24cf388bd16d96a8e5e6ae33a5a47916f36e8744d3d4b78c3ea7bcec9`  
		Last Modified: Fri, 08 Mar 2019 02:58:02 GMT  
		Size: 18.9 MB (18871091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd3a030a46142ea43b86902821374f95626b699f43bca04218f3d21b38f27b4`  
		Last Modified: Fri, 08 Mar 2019 02:57:57 GMT  
		Size: 1.3 MB (1328418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed43f59bd58bec541f6882a01a1212aeab861bbb295b9d632eda566a472b01f7`  
		Last Modified: Fri, 08 Mar 2019 05:22:58 GMT  
		Size: 1.2 MB (1181709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5504fda79f5286f030192b739f516a0d454310fce122f4b219b03e8dcfb451f0`  
		Last Modified: Fri, 08 Mar 2019 05:23:01 GMT  
		Size: 12.4 MB (12424037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ab72a7d5b97867c179dfcd8a9659988e3f6bd89db1e69f8c2e67873715ad43`  
		Last Modified: Fri, 08 Mar 2019 05:22:56 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23dd12c751cff59eb59762199b7c7d37c9ab0b39f9de436f923452e0247405d7`  
		Last Modified: Fri, 08 Mar 2019 05:22:57 GMT  
		Size: 2.8 KB (2765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo-express:0.49` - linux; arm64 variant v8

```console
$ docker pull mongo-express@sha256:39d7e6ebc4d16c3ec6f9e22f908e514c3e004a5114d682aeb28df2f94d6a7d93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 MB (34796973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9edfa94800c5703af71263c9d040aa4bf193396ddfc7b53f45778fdaeb0140a`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["mongo-express"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 01 Mar 2019 09:43:50 GMT
ENV NODE_VERSION=8.15.1
# Fri, 01 Mar 2019 10:09:57 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 01 Mar 2019 10:09:58 GMT
ENV YARN_VERSION=1.12.3
# Fri, 01 Mar 2019 10:10:08 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 01 Mar 2019 10:10:09 GMT
CMD ["node"]
# Fri, 01 Mar 2019 11:41:43 GMT
RUN apk add --no-cache bash tini
# Fri, 01 Mar 2019 11:41:44 GMT
EXPOSE 8081
# Fri, 01 Mar 2019 11:41:44 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Fri, 01 Mar 2019 11:41:45 GMT
ENV MONGO_EXPRESS=0.49.0
# Fri, 01 Mar 2019 11:42:11 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Fri, 01 Mar 2019 11:42:12 GMT
COPY file:58292318f4d4eebb73af5f654a480f4db1e1bb8a29365676b6ccf54504b61984 in / 
# Fri, 01 Mar 2019 11:42:13 GMT
WORKDIR /node_modules/mongo-express
# Fri, 01 Mar 2019 11:42:16 GMT
RUN cp config.default.js config.js
# Fri, 01 Mar 2019 11:42:17 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 01 Mar 2019 11:42:17 GMT
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
	-	`sha256:1dfd6de3c185cbbe9fcfe9c4974e9c697f39f6d2acc18d1110a9ab79a79d3033`  
		Last Modified: Fri, 01 Mar 2019 11:21:58 GMT  
		Size: 17.8 MB (17826203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254b63202ea096d56df3c8d65ae51f4d19d05f5f06aa537f82a77af2c722581e`  
		Last Modified: Fri, 01 Mar 2019 11:21:50 GMT  
		Size: 1.3 MB (1328454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde03bc4ccd5ed863c221ce3b9f67ff161fd14fe60501730471a9066e2c783b4`  
		Last Modified: Fri, 01 Mar 2019 11:42:33 GMT  
		Size: 1.1 MB (1121135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2174148aa60ffeadfa86a1a4fdcb6b8a1c4798d2fa4398d67934da1875edd3`  
		Last Modified: Fri, 01 Mar 2019 11:42:37 GMT  
		Size: 12.4 MB (12417828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493fdbe0f6fddddc618e75d933138a390eda55141d99fcd2b06835af391fe86b`  
		Last Modified: Fri, 01 Mar 2019 11:42:32 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c43b97b87b3cda2c2cbe031f0ae7d72d2eed43e82ef32f7ba3582472e0e14ec`  
		Last Modified: Fri, 01 Mar 2019 11:42:32 GMT  
		Size: 2.8 KB (2764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo-express:0.49.0`

```console
$ docker pull mongo-express@sha256:cd323afcb811c149d00c15efb4f632f901c51646d846e28b6df3cef871af303c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo-express:0.49.0` - linux; amd64

```console
$ docker pull mongo-express@sha256:9a1ec9b93c59190e792b2328fe003d5234ec324e9e106e7ed199a62ed396c352
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (36015769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:376d1d9e09954917b9d53d7550728ca45eab173b8e039ff9cee40e672a99f882`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["mongo-express"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 00:48:28 GMT
ENV NODE_VERSION=8.15.1
# Fri, 08 Mar 2019 01:19:02 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 08 Mar 2019 01:19:02 GMT
ENV YARN_VERSION=1.12.3
# Fri, 08 Mar 2019 01:19:06 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 08 Mar 2019 01:19:07 GMT
CMD ["node"]
# Fri, 08 Mar 2019 05:22:16 GMT
RUN apk add --no-cache bash tini
# Fri, 08 Mar 2019 05:22:16 GMT
EXPOSE 8081
# Fri, 08 Mar 2019 05:22:17 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Fri, 08 Mar 2019 05:22:17 GMT
ENV MONGO_EXPRESS=0.49.0
# Fri, 08 Mar 2019 05:22:40 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Fri, 08 Mar 2019 05:22:41 GMT
COPY file:58292318f4d4eebb73af5f654a480f4db1e1bb8a29365676b6ccf54504b61984 in / 
# Fri, 08 Mar 2019 05:22:42 GMT
WORKDIR /node_modules/mongo-express
# Fri, 08 Mar 2019 05:22:43 GMT
RUN cp config.default.js config.js
# Fri, 08 Mar 2019 05:22:43 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:22:44 GMT
CMD ["mongo-express"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d566d24cf388bd16d96a8e5e6ae33a5a47916f36e8744d3d4b78c3ea7bcec9`  
		Last Modified: Fri, 08 Mar 2019 02:58:02 GMT  
		Size: 18.9 MB (18871091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd3a030a46142ea43b86902821374f95626b699f43bca04218f3d21b38f27b4`  
		Last Modified: Fri, 08 Mar 2019 02:57:57 GMT  
		Size: 1.3 MB (1328418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed43f59bd58bec541f6882a01a1212aeab861bbb295b9d632eda566a472b01f7`  
		Last Modified: Fri, 08 Mar 2019 05:22:58 GMT  
		Size: 1.2 MB (1181709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5504fda79f5286f030192b739f516a0d454310fce122f4b219b03e8dcfb451f0`  
		Last Modified: Fri, 08 Mar 2019 05:23:01 GMT  
		Size: 12.4 MB (12424037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ab72a7d5b97867c179dfcd8a9659988e3f6bd89db1e69f8c2e67873715ad43`  
		Last Modified: Fri, 08 Mar 2019 05:22:56 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23dd12c751cff59eb59762199b7c7d37c9ab0b39f9de436f923452e0247405d7`  
		Last Modified: Fri, 08 Mar 2019 05:22:57 GMT  
		Size: 2.8 KB (2765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo-express:0.49.0` - linux; arm64 variant v8

```console
$ docker pull mongo-express@sha256:39d7e6ebc4d16c3ec6f9e22f908e514c3e004a5114d682aeb28df2f94d6a7d93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 MB (34796973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9edfa94800c5703af71263c9d040aa4bf193396ddfc7b53f45778fdaeb0140a`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["mongo-express"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 01 Mar 2019 09:43:50 GMT
ENV NODE_VERSION=8.15.1
# Fri, 01 Mar 2019 10:09:57 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 01 Mar 2019 10:09:58 GMT
ENV YARN_VERSION=1.12.3
# Fri, 01 Mar 2019 10:10:08 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 01 Mar 2019 10:10:09 GMT
CMD ["node"]
# Fri, 01 Mar 2019 11:41:43 GMT
RUN apk add --no-cache bash tini
# Fri, 01 Mar 2019 11:41:44 GMT
EXPOSE 8081
# Fri, 01 Mar 2019 11:41:44 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Fri, 01 Mar 2019 11:41:45 GMT
ENV MONGO_EXPRESS=0.49.0
# Fri, 01 Mar 2019 11:42:11 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Fri, 01 Mar 2019 11:42:12 GMT
COPY file:58292318f4d4eebb73af5f654a480f4db1e1bb8a29365676b6ccf54504b61984 in / 
# Fri, 01 Mar 2019 11:42:13 GMT
WORKDIR /node_modules/mongo-express
# Fri, 01 Mar 2019 11:42:16 GMT
RUN cp config.default.js config.js
# Fri, 01 Mar 2019 11:42:17 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 01 Mar 2019 11:42:17 GMT
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
	-	`sha256:1dfd6de3c185cbbe9fcfe9c4974e9c697f39f6d2acc18d1110a9ab79a79d3033`  
		Last Modified: Fri, 01 Mar 2019 11:21:58 GMT  
		Size: 17.8 MB (17826203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254b63202ea096d56df3c8d65ae51f4d19d05f5f06aa537f82a77af2c722581e`  
		Last Modified: Fri, 01 Mar 2019 11:21:50 GMT  
		Size: 1.3 MB (1328454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde03bc4ccd5ed863c221ce3b9f67ff161fd14fe60501730471a9066e2c783b4`  
		Last Modified: Fri, 01 Mar 2019 11:42:33 GMT  
		Size: 1.1 MB (1121135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2174148aa60ffeadfa86a1a4fdcb6b8a1c4798d2fa4398d67934da1875edd3`  
		Last Modified: Fri, 01 Mar 2019 11:42:37 GMT  
		Size: 12.4 MB (12417828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493fdbe0f6fddddc618e75d933138a390eda55141d99fcd2b06835af391fe86b`  
		Last Modified: Fri, 01 Mar 2019 11:42:32 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c43b97b87b3cda2c2cbe031f0ae7d72d2eed43e82ef32f7ba3582472e0e14ec`  
		Last Modified: Fri, 01 Mar 2019 11:42:32 GMT  
		Size: 2.8 KB (2764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo-express:latest`

```console
$ docker pull mongo-express@sha256:cd323afcb811c149d00c15efb4f632f901c51646d846e28b6df3cef871af303c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo-express:latest` - linux; amd64

```console
$ docker pull mongo-express@sha256:9a1ec9b93c59190e792b2328fe003d5234ec324e9e106e7ed199a62ed396c352
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (36015769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:376d1d9e09954917b9d53d7550728ca45eab173b8e039ff9cee40e672a99f882`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["mongo-express"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 00:48:28 GMT
ENV NODE_VERSION=8.15.1
# Fri, 08 Mar 2019 01:19:02 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 08 Mar 2019 01:19:02 GMT
ENV YARN_VERSION=1.12.3
# Fri, 08 Mar 2019 01:19:06 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 08 Mar 2019 01:19:07 GMT
CMD ["node"]
# Fri, 08 Mar 2019 05:22:16 GMT
RUN apk add --no-cache bash tini
# Fri, 08 Mar 2019 05:22:16 GMT
EXPOSE 8081
# Fri, 08 Mar 2019 05:22:17 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Fri, 08 Mar 2019 05:22:17 GMT
ENV MONGO_EXPRESS=0.49.0
# Fri, 08 Mar 2019 05:22:40 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Fri, 08 Mar 2019 05:22:41 GMT
COPY file:58292318f4d4eebb73af5f654a480f4db1e1bb8a29365676b6ccf54504b61984 in / 
# Fri, 08 Mar 2019 05:22:42 GMT
WORKDIR /node_modules/mongo-express
# Fri, 08 Mar 2019 05:22:43 GMT
RUN cp config.default.js config.js
# Fri, 08 Mar 2019 05:22:43 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:22:44 GMT
CMD ["mongo-express"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d566d24cf388bd16d96a8e5e6ae33a5a47916f36e8744d3d4b78c3ea7bcec9`  
		Last Modified: Fri, 08 Mar 2019 02:58:02 GMT  
		Size: 18.9 MB (18871091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd3a030a46142ea43b86902821374f95626b699f43bca04218f3d21b38f27b4`  
		Last Modified: Fri, 08 Mar 2019 02:57:57 GMT  
		Size: 1.3 MB (1328418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed43f59bd58bec541f6882a01a1212aeab861bbb295b9d632eda566a472b01f7`  
		Last Modified: Fri, 08 Mar 2019 05:22:58 GMT  
		Size: 1.2 MB (1181709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5504fda79f5286f030192b739f516a0d454310fce122f4b219b03e8dcfb451f0`  
		Last Modified: Fri, 08 Mar 2019 05:23:01 GMT  
		Size: 12.4 MB (12424037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ab72a7d5b97867c179dfcd8a9659988e3f6bd89db1e69f8c2e67873715ad43`  
		Last Modified: Fri, 08 Mar 2019 05:22:56 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23dd12c751cff59eb59762199b7c7d37c9ab0b39f9de436f923452e0247405d7`  
		Last Modified: Fri, 08 Mar 2019 05:22:57 GMT  
		Size: 2.8 KB (2765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo-express:latest` - linux; arm64 variant v8

```console
$ docker pull mongo-express@sha256:39d7e6ebc4d16c3ec6f9e22f908e514c3e004a5114d682aeb28df2f94d6a7d93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 MB (34796973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9edfa94800c5703af71263c9d040aa4bf193396ddfc7b53f45778fdaeb0140a`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["mongo-express"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 01 Mar 2019 09:43:50 GMT
ENV NODE_VERSION=8.15.1
# Fri, 01 Mar 2019 10:09:57 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 01 Mar 2019 10:09:58 GMT
ENV YARN_VERSION=1.12.3
# Fri, 01 Mar 2019 10:10:08 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 01 Mar 2019 10:10:09 GMT
CMD ["node"]
# Fri, 01 Mar 2019 11:41:43 GMT
RUN apk add --no-cache bash tini
# Fri, 01 Mar 2019 11:41:44 GMT
EXPOSE 8081
# Fri, 01 Mar 2019 11:41:44 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Fri, 01 Mar 2019 11:41:45 GMT
ENV MONGO_EXPRESS=0.49.0
# Fri, 01 Mar 2019 11:42:11 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Fri, 01 Mar 2019 11:42:12 GMT
COPY file:58292318f4d4eebb73af5f654a480f4db1e1bb8a29365676b6ccf54504b61984 in / 
# Fri, 01 Mar 2019 11:42:13 GMT
WORKDIR /node_modules/mongo-express
# Fri, 01 Mar 2019 11:42:16 GMT
RUN cp config.default.js config.js
# Fri, 01 Mar 2019 11:42:17 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 01 Mar 2019 11:42:17 GMT
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
	-	`sha256:1dfd6de3c185cbbe9fcfe9c4974e9c697f39f6d2acc18d1110a9ab79a79d3033`  
		Last Modified: Fri, 01 Mar 2019 11:21:58 GMT  
		Size: 17.8 MB (17826203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254b63202ea096d56df3c8d65ae51f4d19d05f5f06aa537f82a77af2c722581e`  
		Last Modified: Fri, 01 Mar 2019 11:21:50 GMT  
		Size: 1.3 MB (1328454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde03bc4ccd5ed863c221ce3b9f67ff161fd14fe60501730471a9066e2c783b4`  
		Last Modified: Fri, 01 Mar 2019 11:42:33 GMT  
		Size: 1.1 MB (1121135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2174148aa60ffeadfa86a1a4fdcb6b8a1c4798d2fa4398d67934da1875edd3`  
		Last Modified: Fri, 01 Mar 2019 11:42:37 GMT  
		Size: 12.4 MB (12417828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493fdbe0f6fddddc618e75d933138a390eda55141d99fcd2b06835af391fe86b`  
		Last Modified: Fri, 01 Mar 2019 11:42:32 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c43b97b87b3cda2c2cbe031f0ae7d72d2eed43e82ef32f7ba3582472e0e14ec`  
		Last Modified: Fri, 01 Mar 2019 11:42:32 GMT  
		Size: 2.8 KB (2764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

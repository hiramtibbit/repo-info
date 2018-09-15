<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo-express`

-	[`mongo-express:0.49`](#mongo-express049)
-	[`mongo-express:0.49.0`](#mongo-express0490)
-	[`mongo-express:latest`](#mongo-expresslatest)

## `mongo-express:0.49`

```console
$ docker pull mongo-express@sha256:e476e1786f51729cf306e9602798a0f0fc74804060e4643724ef0c161438d2e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo-express:0.49` - linux; amd64

```console
$ docker pull mongo-express@sha256:09b50502015b97338ba0f9897d1de7379a4915b3c1085dd93b4fb664ede36882
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35565205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de5d42976498aae4d32216ec8099660d4d011fc57fb55ddc0a35434bdc8de6ff`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["mongo-express"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:08:38 GMT
ENV NODE_VERSION=8.12.0
# Wed, 12 Sep 2018 00:37:06 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 12 Sep 2018 00:37:06 GMT
ENV YARN_VERSION=1.9.4
# Wed, 12 Sep 2018 00:37:10 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 12 Sep 2018 00:37:10 GMT
CMD ["node"]
# Wed, 12 Sep 2018 05:12:22 GMT
RUN apk add --no-cache bash tini
# Wed, 12 Sep 2018 05:12:23 GMT
EXPOSE 8081/tcp
# Wed, 12 Sep 2018 05:12:23 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Wed, 12 Sep 2018 05:12:23 GMT
ENV MONGO_EXPRESS=0.49.0
# Wed, 12 Sep 2018 05:12:34 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Wed, 12 Sep 2018 05:12:37 GMT
COPY file:2516c7b7f7588c555e93ea187f5e232cc365678735934990998dc2509b84b3c2 in / 
# Wed, 12 Sep 2018 05:12:37 GMT
WORKDIR /node_modules/mongo-express
# Wed, 12 Sep 2018 05:12:38 GMT
RUN cp config.default.js config.js
# Wed, 12 Sep 2018 05:12:38 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 12 Sep 2018 05:12:38 GMT
CMD ["mongo-express"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb7d76f44e71e809d68e84491576534c80dea0b607501e1f476b6949124d646`  
		Last Modified: Wed, 12 Sep 2018 01:36:03 GMT  
		Size: 18.8 MB (18818175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e35f88fcc25962e9894d7e7da2b79ec9ce1b503ef2fe0e800bad87bcb2438319`  
		Last Modified: Wed, 12 Sep 2018 01:36:00 GMT  
		Size: 1.1 MB (1079425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7625eabf023ad46b3434651116bb738eba68c2c3b83da88b7c9f95afec36101d`  
		Last Modified: Wed, 12 Sep 2018 05:12:51 GMT  
		Size: 1.2 MB (1181657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21a7c28579ce1c4044c02173a9b75da88f4acbf31e20c2f18f38b8b1383375f`  
		Last Modified: Wed, 12 Sep 2018 05:12:52 GMT  
		Size: 12.3 MB (12275684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef726044b3edd6fc3598b9e607877c98ec31faac48d768c153158e3f3fbd728`  
		Last Modified: Wed, 12 Sep 2018 05:12:53 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dfc767c081fbeaa43c455150e4502ab15cf9d587c9bc71a7943915d414861b4`  
		Last Modified: Wed, 12 Sep 2018 05:12:50 GMT  
		Size: 2.8 KB (2760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo-express:0.49` - linux; arm64 variant v8

```console
$ docker pull mongo-express@sha256:d9bf5a0e8ac7902dcae4872cbe02aeab0c035a2d47e0a1738542a87901ac052f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 MB (34371000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a44425abbe9fed9f4655ddc1b5b4b873059e96394a352a564bfc2d9d80fdb5e`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["mongo-express"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 09:58:55 GMT
ENV NODE_VERSION=8.12.0
# Sat, 15 Sep 2018 10:27:05 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 15 Sep 2018 10:27:09 GMT
ENV YARN_VERSION=1.9.4
# Sat, 15 Sep 2018 10:27:22 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 15 Sep 2018 10:27:22 GMT
CMD ["node"]
# Sat, 15 Sep 2018 17:08:38 GMT
RUN apk add --no-cache bash tini
# Sat, 15 Sep 2018 17:08:39 GMT
EXPOSE 8081/tcp
# Sat, 15 Sep 2018 17:08:39 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Sat, 15 Sep 2018 17:08:40 GMT
ENV MONGO_EXPRESS=0.49.0
# Sat, 15 Sep 2018 17:09:03 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Sat, 15 Sep 2018 17:09:04 GMT
COPY file:2516c7b7f7588c555e93ea187f5e232cc365678735934990998dc2509b84b3c2 in / 
# Sat, 15 Sep 2018 17:09:05 GMT
WORKDIR /node_modules/mongo-express
# Sat, 15 Sep 2018 17:09:08 GMT
RUN cp config.default.js config.js
# Sat, 15 Sep 2018 17:09:09 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 15 Sep 2018 17:09:10 GMT
CMD ["mongo-express"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6991c731ccff8b5dbdf8aa1751ac3a979ed0dac4dc0cab73ced03091048b159a`  
		Last Modified: Sat, 15 Sep 2018 11:17:45 GMT  
		Size: 17.8 MB (17786757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:129dbee7fd241938befc4c6191c85628e7e3c9ade6053da7674e193c99e156c6`  
		Last Modified: Sat, 15 Sep 2018 11:17:38 GMT  
		Size: 1.1 MB (1079467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64be3fd0939b435f5bd574af7efe87b715f6844241865434f75fecc2549b0f5a`  
		Last Modified: Sat, 15 Sep 2018 17:09:33 GMT  
		Size: 1.1 MB (1121046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef8d7f83c3ba56ae0746350689cbdcc52708585d7b0052f01e5c343d5a45af0`  
		Last Modified: Sat, 15 Sep 2018 17:09:36 GMT  
		Size: 12.3 MB (12280455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f691bc593d7126b79694f9b7896b47451be5fe31e194148503dfdb2e713518c`  
		Last Modified: Sat, 15 Sep 2018 17:09:32 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5387badb217a26b6dfd3db6c243299bae25ead8e17e9aa850ec0882512fdb75c`  
		Last Modified: Sat, 15 Sep 2018 17:09:32 GMT  
		Size: 2.8 KB (2764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo-express:0.49.0`

```console
$ docker pull mongo-express@sha256:e476e1786f51729cf306e9602798a0f0fc74804060e4643724ef0c161438d2e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo-express:0.49.0` - linux; amd64

```console
$ docker pull mongo-express@sha256:09b50502015b97338ba0f9897d1de7379a4915b3c1085dd93b4fb664ede36882
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35565205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de5d42976498aae4d32216ec8099660d4d011fc57fb55ddc0a35434bdc8de6ff`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["mongo-express"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:08:38 GMT
ENV NODE_VERSION=8.12.0
# Wed, 12 Sep 2018 00:37:06 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 12 Sep 2018 00:37:06 GMT
ENV YARN_VERSION=1.9.4
# Wed, 12 Sep 2018 00:37:10 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 12 Sep 2018 00:37:10 GMT
CMD ["node"]
# Wed, 12 Sep 2018 05:12:22 GMT
RUN apk add --no-cache bash tini
# Wed, 12 Sep 2018 05:12:23 GMT
EXPOSE 8081/tcp
# Wed, 12 Sep 2018 05:12:23 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Wed, 12 Sep 2018 05:12:23 GMT
ENV MONGO_EXPRESS=0.49.0
# Wed, 12 Sep 2018 05:12:34 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Wed, 12 Sep 2018 05:12:37 GMT
COPY file:2516c7b7f7588c555e93ea187f5e232cc365678735934990998dc2509b84b3c2 in / 
# Wed, 12 Sep 2018 05:12:37 GMT
WORKDIR /node_modules/mongo-express
# Wed, 12 Sep 2018 05:12:38 GMT
RUN cp config.default.js config.js
# Wed, 12 Sep 2018 05:12:38 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 12 Sep 2018 05:12:38 GMT
CMD ["mongo-express"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb7d76f44e71e809d68e84491576534c80dea0b607501e1f476b6949124d646`  
		Last Modified: Wed, 12 Sep 2018 01:36:03 GMT  
		Size: 18.8 MB (18818175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e35f88fcc25962e9894d7e7da2b79ec9ce1b503ef2fe0e800bad87bcb2438319`  
		Last Modified: Wed, 12 Sep 2018 01:36:00 GMT  
		Size: 1.1 MB (1079425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7625eabf023ad46b3434651116bb738eba68c2c3b83da88b7c9f95afec36101d`  
		Last Modified: Wed, 12 Sep 2018 05:12:51 GMT  
		Size: 1.2 MB (1181657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21a7c28579ce1c4044c02173a9b75da88f4acbf31e20c2f18f38b8b1383375f`  
		Last Modified: Wed, 12 Sep 2018 05:12:52 GMT  
		Size: 12.3 MB (12275684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef726044b3edd6fc3598b9e607877c98ec31faac48d768c153158e3f3fbd728`  
		Last Modified: Wed, 12 Sep 2018 05:12:53 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dfc767c081fbeaa43c455150e4502ab15cf9d587c9bc71a7943915d414861b4`  
		Last Modified: Wed, 12 Sep 2018 05:12:50 GMT  
		Size: 2.8 KB (2760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo-express:0.49.0` - linux; arm64 variant v8

```console
$ docker pull mongo-express@sha256:d9bf5a0e8ac7902dcae4872cbe02aeab0c035a2d47e0a1738542a87901ac052f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 MB (34371000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a44425abbe9fed9f4655ddc1b5b4b873059e96394a352a564bfc2d9d80fdb5e`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["mongo-express"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 09:58:55 GMT
ENV NODE_VERSION=8.12.0
# Sat, 15 Sep 2018 10:27:05 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 15 Sep 2018 10:27:09 GMT
ENV YARN_VERSION=1.9.4
# Sat, 15 Sep 2018 10:27:22 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 15 Sep 2018 10:27:22 GMT
CMD ["node"]
# Sat, 15 Sep 2018 17:08:38 GMT
RUN apk add --no-cache bash tini
# Sat, 15 Sep 2018 17:08:39 GMT
EXPOSE 8081/tcp
# Sat, 15 Sep 2018 17:08:39 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Sat, 15 Sep 2018 17:08:40 GMT
ENV MONGO_EXPRESS=0.49.0
# Sat, 15 Sep 2018 17:09:03 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Sat, 15 Sep 2018 17:09:04 GMT
COPY file:2516c7b7f7588c555e93ea187f5e232cc365678735934990998dc2509b84b3c2 in / 
# Sat, 15 Sep 2018 17:09:05 GMT
WORKDIR /node_modules/mongo-express
# Sat, 15 Sep 2018 17:09:08 GMT
RUN cp config.default.js config.js
# Sat, 15 Sep 2018 17:09:09 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 15 Sep 2018 17:09:10 GMT
CMD ["mongo-express"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6991c731ccff8b5dbdf8aa1751ac3a979ed0dac4dc0cab73ced03091048b159a`  
		Last Modified: Sat, 15 Sep 2018 11:17:45 GMT  
		Size: 17.8 MB (17786757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:129dbee7fd241938befc4c6191c85628e7e3c9ade6053da7674e193c99e156c6`  
		Last Modified: Sat, 15 Sep 2018 11:17:38 GMT  
		Size: 1.1 MB (1079467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64be3fd0939b435f5bd574af7efe87b715f6844241865434f75fecc2549b0f5a`  
		Last Modified: Sat, 15 Sep 2018 17:09:33 GMT  
		Size: 1.1 MB (1121046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef8d7f83c3ba56ae0746350689cbdcc52708585d7b0052f01e5c343d5a45af0`  
		Last Modified: Sat, 15 Sep 2018 17:09:36 GMT  
		Size: 12.3 MB (12280455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f691bc593d7126b79694f9b7896b47451be5fe31e194148503dfdb2e713518c`  
		Last Modified: Sat, 15 Sep 2018 17:09:32 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5387badb217a26b6dfd3db6c243299bae25ead8e17e9aa850ec0882512fdb75c`  
		Last Modified: Sat, 15 Sep 2018 17:09:32 GMT  
		Size: 2.8 KB (2764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo-express:latest`

```console
$ docker pull mongo-express@sha256:e476e1786f51729cf306e9602798a0f0fc74804060e4643724ef0c161438d2e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo-express:latest` - linux; amd64

```console
$ docker pull mongo-express@sha256:09b50502015b97338ba0f9897d1de7379a4915b3c1085dd93b4fb664ede36882
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35565205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de5d42976498aae4d32216ec8099660d4d011fc57fb55ddc0a35434bdc8de6ff`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["mongo-express"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:08:38 GMT
ENV NODE_VERSION=8.12.0
# Wed, 12 Sep 2018 00:37:06 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 12 Sep 2018 00:37:06 GMT
ENV YARN_VERSION=1.9.4
# Wed, 12 Sep 2018 00:37:10 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 12 Sep 2018 00:37:10 GMT
CMD ["node"]
# Wed, 12 Sep 2018 05:12:22 GMT
RUN apk add --no-cache bash tini
# Wed, 12 Sep 2018 05:12:23 GMT
EXPOSE 8081/tcp
# Wed, 12 Sep 2018 05:12:23 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Wed, 12 Sep 2018 05:12:23 GMT
ENV MONGO_EXPRESS=0.49.0
# Wed, 12 Sep 2018 05:12:34 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Wed, 12 Sep 2018 05:12:37 GMT
COPY file:2516c7b7f7588c555e93ea187f5e232cc365678735934990998dc2509b84b3c2 in / 
# Wed, 12 Sep 2018 05:12:37 GMT
WORKDIR /node_modules/mongo-express
# Wed, 12 Sep 2018 05:12:38 GMT
RUN cp config.default.js config.js
# Wed, 12 Sep 2018 05:12:38 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 12 Sep 2018 05:12:38 GMT
CMD ["mongo-express"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb7d76f44e71e809d68e84491576534c80dea0b607501e1f476b6949124d646`  
		Last Modified: Wed, 12 Sep 2018 01:36:03 GMT  
		Size: 18.8 MB (18818175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e35f88fcc25962e9894d7e7da2b79ec9ce1b503ef2fe0e800bad87bcb2438319`  
		Last Modified: Wed, 12 Sep 2018 01:36:00 GMT  
		Size: 1.1 MB (1079425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7625eabf023ad46b3434651116bb738eba68c2c3b83da88b7c9f95afec36101d`  
		Last Modified: Wed, 12 Sep 2018 05:12:51 GMT  
		Size: 1.2 MB (1181657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21a7c28579ce1c4044c02173a9b75da88f4acbf31e20c2f18f38b8b1383375f`  
		Last Modified: Wed, 12 Sep 2018 05:12:52 GMT  
		Size: 12.3 MB (12275684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef726044b3edd6fc3598b9e607877c98ec31faac48d768c153158e3f3fbd728`  
		Last Modified: Wed, 12 Sep 2018 05:12:53 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dfc767c081fbeaa43c455150e4502ab15cf9d587c9bc71a7943915d414861b4`  
		Last Modified: Wed, 12 Sep 2018 05:12:50 GMT  
		Size: 2.8 KB (2760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo-express:latest` - linux; arm64 variant v8

```console
$ docker pull mongo-express@sha256:d9bf5a0e8ac7902dcae4872cbe02aeab0c035a2d47e0a1738542a87901ac052f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 MB (34371000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a44425abbe9fed9f4655ddc1b5b4b873059e96394a352a564bfc2d9d80fdb5e`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["mongo-express"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 09:58:55 GMT
ENV NODE_VERSION=8.12.0
# Sat, 15 Sep 2018 10:27:05 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 15 Sep 2018 10:27:09 GMT
ENV YARN_VERSION=1.9.4
# Sat, 15 Sep 2018 10:27:22 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 15 Sep 2018 10:27:22 GMT
CMD ["node"]
# Sat, 15 Sep 2018 17:08:38 GMT
RUN apk add --no-cache bash tini
# Sat, 15 Sep 2018 17:08:39 GMT
EXPOSE 8081/tcp
# Sat, 15 Sep 2018 17:08:39 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Sat, 15 Sep 2018 17:08:40 GMT
ENV MONGO_EXPRESS=0.49.0
# Sat, 15 Sep 2018 17:09:03 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Sat, 15 Sep 2018 17:09:04 GMT
COPY file:2516c7b7f7588c555e93ea187f5e232cc365678735934990998dc2509b84b3c2 in / 
# Sat, 15 Sep 2018 17:09:05 GMT
WORKDIR /node_modules/mongo-express
# Sat, 15 Sep 2018 17:09:08 GMT
RUN cp config.default.js config.js
# Sat, 15 Sep 2018 17:09:09 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 15 Sep 2018 17:09:10 GMT
CMD ["mongo-express"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6991c731ccff8b5dbdf8aa1751ac3a979ed0dac4dc0cab73ced03091048b159a`  
		Last Modified: Sat, 15 Sep 2018 11:17:45 GMT  
		Size: 17.8 MB (17786757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:129dbee7fd241938befc4c6191c85628e7e3c9ade6053da7674e193c99e156c6`  
		Last Modified: Sat, 15 Sep 2018 11:17:38 GMT  
		Size: 1.1 MB (1079467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64be3fd0939b435f5bd574af7efe87b715f6844241865434f75fecc2549b0f5a`  
		Last Modified: Sat, 15 Sep 2018 17:09:33 GMT  
		Size: 1.1 MB (1121046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef8d7f83c3ba56ae0746350689cbdcc52708585d7b0052f01e5c343d5a45af0`  
		Last Modified: Sat, 15 Sep 2018 17:09:36 GMT  
		Size: 12.3 MB (12280455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f691bc593d7126b79694f9b7896b47451be5fe31e194148503dfdb2e713518c`  
		Last Modified: Sat, 15 Sep 2018 17:09:32 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5387badb217a26b6dfd3db6c243299bae25ead8e17e9aa850ec0882512fdb75c`  
		Last Modified: Sat, 15 Sep 2018 17:09:32 GMT  
		Size: 2.8 KB (2764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

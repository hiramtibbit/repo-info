<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo-express`

-	[`mongo-express:0.49`](#mongo-express049)
-	[`mongo-express:0.49.0`](#mongo-express0490)
-	[`mongo-express:latest`](#mongo-expresslatest)

## `mongo-express:0.49`

```console
$ docker pull mongo-express@sha256:46dfd2ac7d5865a3d2d15b7060a1316aefe6cdddc540aa5302c3fc7345b37f60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo-express:0.49` - linux; amd64

```console
$ docker pull mongo-express@sha256:e45286a33330d996fe2c289be0d33a8e601e5d31e8e2307604b59adc90de4753
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 MB (35943275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aa3eda7feb458557934ed35e6182fbbd51eb048e0434c5e396c614af980c901`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["mongo-express"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 11:39:13 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 12:08:04 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 28 Nov 2018 12:08:04 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 12:08:09 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 28 Nov 2018 12:08:09 GMT
CMD ["node"]
# Wed, 28 Nov 2018 14:36:02 GMT
RUN apk add --no-cache bash tini
# Wed, 28 Nov 2018 14:36:02 GMT
EXPOSE 8081/tcp
# Wed, 28 Nov 2018 14:36:02 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Wed, 28 Nov 2018 14:36:03 GMT
ENV MONGO_EXPRESS=0.49.0
# Wed, 28 Nov 2018 14:36:14 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Wed, 28 Nov 2018 14:36:15 GMT
COPY file:2516c7b7f7588c555e93ea187f5e232cc365678735934990998dc2509b84b3c2 in / 
# Wed, 28 Nov 2018 14:36:15 GMT
WORKDIR /node_modules/mongo-express
# Wed, 28 Nov 2018 14:36:16 GMT
RUN cp config.default.js config.js
# Wed, 28 Nov 2018 14:36:16 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 28 Nov 2018 14:36:16 GMT
CMD ["mongo-express"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c94b1665db914ebb8891bac4827866afab60f591d4daac509a7835f6737ad0c`  
		Last Modified: Wed, 28 Nov 2018 13:55:31 GMT  
		Size: 18.9 MB (18866675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b413d1ce95e31d6d84931b0e90047fc35a08e27666a4a49215beb348e8a6e72`  
		Last Modified: Wed, 28 Nov 2018 13:55:26 GMT  
		Size: 1.3 MB (1317204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9c998a413b41a3deb1e469518dc75c2ec67e4d57219e821a8ab314d3e71a21`  
		Last Modified: Wed, 28 Nov 2018 14:36:40 GMT  
		Size: 1.2 MB (1181654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f88c36c9e316ead5c0a96d6461c0b311046e1c6039f6812ea38e8cdc5778c0`  
		Last Modified: Wed, 28 Nov 2018 14:36:41 GMT  
		Size: 12.4 MB (12367475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a1179e9f12a372a60e6c72956f45e448f3c73c2083e6b0dec28364457f49313`  
		Last Modified: Wed, 28 Nov 2018 14:36:39 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68199b40d26964d85f96eac3a7c0ae02d591b8612440700887df1234238e4158`  
		Last Modified: Wed, 28 Nov 2018 14:36:39 GMT  
		Size: 2.8 KB (2764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo-express:0.49` - linux; arm64 variant v8

```console
$ docker pull mongo-express@sha256:b152e9447d0348e462e614d1f2f14ac5ab348d753bb3581c82bf1af71783ee39
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34733343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16b22216931d1a28fd0cc191ebbbd9ad92662e681ab6a3567f4d3dafe7ff20ed`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["mongo-express"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 16:29:41 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 16:52:53 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 28 Nov 2018 16:52:53 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 16:53:02 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 28 Nov 2018 16:53:02 GMT
CMD ["node"]
# Wed, 28 Nov 2018 18:28:52 GMT
RUN apk add --no-cache bash tini
# Wed, 28 Nov 2018 18:28:53 GMT
EXPOSE 8081/tcp
# Wed, 28 Nov 2018 18:28:53 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Wed, 28 Nov 2018 18:28:54 GMT
ENV MONGO_EXPRESS=0.49.0
# Wed, 28 Nov 2018 18:29:19 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Wed, 28 Nov 2018 18:29:20 GMT
COPY file:2516c7b7f7588c555e93ea187f5e232cc365678735934990998dc2509b84b3c2 in / 
# Wed, 28 Nov 2018 18:29:21 GMT
WORKDIR /node_modules/mongo-express
# Wed, 28 Nov 2018 18:29:22 GMT
RUN cp config.default.js config.js
# Wed, 28 Nov 2018 18:29:23 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 28 Nov 2018 18:29:23 GMT
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
	-	`sha256:3f1c1b8c15b22b1d361a1ae638c82fbaa16b0eb5c4678553bcf7392f524f01d2`  
		Last Modified: Wed, 28 Nov 2018 18:02:33 GMT  
		Size: 17.8 MB (17820829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:279bdc3ef3ca6947c2e4e430b56a315ad6a5359f4dc0a1ca9198ca6f6a2855fb`  
		Last Modified: Wed, 28 Nov 2018 18:02:26 GMT  
		Size: 1.3 MB (1317234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e778d0cd702a8afcbb0b431e2be1160f382a0a3f644bf42f4e70f06246126075`  
		Last Modified: Wed, 28 Nov 2018 18:29:39 GMT  
		Size: 1.1 MB (1121101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052011152fb9381f950af3062f9191867cc15043ad20c5bf7825ba87c0b9305f`  
		Last Modified: Wed, 28 Nov 2018 18:29:43 GMT  
		Size: 12.4 MB (12370906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b46da1ca8056aa9e447de4b0472d4b3b4cd66671b902d9e966466694beaecd`  
		Last Modified: Wed, 28 Nov 2018 18:29:38 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6afe064783e43e73b442d0ccc76493ab0c9dc1e28a3c37d54c3c5da9fec3751`  
		Last Modified: Wed, 28 Nov 2018 18:29:38 GMT  
		Size: 2.8 KB (2762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo-express:0.49.0`

```console
$ docker pull mongo-express@sha256:46dfd2ac7d5865a3d2d15b7060a1316aefe6cdddc540aa5302c3fc7345b37f60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo-express:0.49.0` - linux; amd64

```console
$ docker pull mongo-express@sha256:e45286a33330d996fe2c289be0d33a8e601e5d31e8e2307604b59adc90de4753
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 MB (35943275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aa3eda7feb458557934ed35e6182fbbd51eb048e0434c5e396c614af980c901`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["mongo-express"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 11:39:13 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 12:08:04 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 28 Nov 2018 12:08:04 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 12:08:09 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 28 Nov 2018 12:08:09 GMT
CMD ["node"]
# Wed, 28 Nov 2018 14:36:02 GMT
RUN apk add --no-cache bash tini
# Wed, 28 Nov 2018 14:36:02 GMT
EXPOSE 8081/tcp
# Wed, 28 Nov 2018 14:36:02 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Wed, 28 Nov 2018 14:36:03 GMT
ENV MONGO_EXPRESS=0.49.0
# Wed, 28 Nov 2018 14:36:14 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Wed, 28 Nov 2018 14:36:15 GMT
COPY file:2516c7b7f7588c555e93ea187f5e232cc365678735934990998dc2509b84b3c2 in / 
# Wed, 28 Nov 2018 14:36:15 GMT
WORKDIR /node_modules/mongo-express
# Wed, 28 Nov 2018 14:36:16 GMT
RUN cp config.default.js config.js
# Wed, 28 Nov 2018 14:36:16 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 28 Nov 2018 14:36:16 GMT
CMD ["mongo-express"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c94b1665db914ebb8891bac4827866afab60f591d4daac509a7835f6737ad0c`  
		Last Modified: Wed, 28 Nov 2018 13:55:31 GMT  
		Size: 18.9 MB (18866675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b413d1ce95e31d6d84931b0e90047fc35a08e27666a4a49215beb348e8a6e72`  
		Last Modified: Wed, 28 Nov 2018 13:55:26 GMT  
		Size: 1.3 MB (1317204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9c998a413b41a3deb1e469518dc75c2ec67e4d57219e821a8ab314d3e71a21`  
		Last Modified: Wed, 28 Nov 2018 14:36:40 GMT  
		Size: 1.2 MB (1181654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f88c36c9e316ead5c0a96d6461c0b311046e1c6039f6812ea38e8cdc5778c0`  
		Last Modified: Wed, 28 Nov 2018 14:36:41 GMT  
		Size: 12.4 MB (12367475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a1179e9f12a372a60e6c72956f45e448f3c73c2083e6b0dec28364457f49313`  
		Last Modified: Wed, 28 Nov 2018 14:36:39 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68199b40d26964d85f96eac3a7c0ae02d591b8612440700887df1234238e4158`  
		Last Modified: Wed, 28 Nov 2018 14:36:39 GMT  
		Size: 2.8 KB (2764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo-express:0.49.0` - linux; arm64 variant v8

```console
$ docker pull mongo-express@sha256:b152e9447d0348e462e614d1f2f14ac5ab348d753bb3581c82bf1af71783ee39
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34733343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16b22216931d1a28fd0cc191ebbbd9ad92662e681ab6a3567f4d3dafe7ff20ed`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["mongo-express"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 16:29:41 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 16:52:53 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 28 Nov 2018 16:52:53 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 16:53:02 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 28 Nov 2018 16:53:02 GMT
CMD ["node"]
# Wed, 28 Nov 2018 18:28:52 GMT
RUN apk add --no-cache bash tini
# Wed, 28 Nov 2018 18:28:53 GMT
EXPOSE 8081/tcp
# Wed, 28 Nov 2018 18:28:53 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Wed, 28 Nov 2018 18:28:54 GMT
ENV MONGO_EXPRESS=0.49.0
# Wed, 28 Nov 2018 18:29:19 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Wed, 28 Nov 2018 18:29:20 GMT
COPY file:2516c7b7f7588c555e93ea187f5e232cc365678735934990998dc2509b84b3c2 in / 
# Wed, 28 Nov 2018 18:29:21 GMT
WORKDIR /node_modules/mongo-express
# Wed, 28 Nov 2018 18:29:22 GMT
RUN cp config.default.js config.js
# Wed, 28 Nov 2018 18:29:23 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 28 Nov 2018 18:29:23 GMT
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
	-	`sha256:3f1c1b8c15b22b1d361a1ae638c82fbaa16b0eb5c4678553bcf7392f524f01d2`  
		Last Modified: Wed, 28 Nov 2018 18:02:33 GMT  
		Size: 17.8 MB (17820829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:279bdc3ef3ca6947c2e4e430b56a315ad6a5359f4dc0a1ca9198ca6f6a2855fb`  
		Last Modified: Wed, 28 Nov 2018 18:02:26 GMT  
		Size: 1.3 MB (1317234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e778d0cd702a8afcbb0b431e2be1160f382a0a3f644bf42f4e70f06246126075`  
		Last Modified: Wed, 28 Nov 2018 18:29:39 GMT  
		Size: 1.1 MB (1121101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052011152fb9381f950af3062f9191867cc15043ad20c5bf7825ba87c0b9305f`  
		Last Modified: Wed, 28 Nov 2018 18:29:43 GMT  
		Size: 12.4 MB (12370906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b46da1ca8056aa9e447de4b0472d4b3b4cd66671b902d9e966466694beaecd`  
		Last Modified: Wed, 28 Nov 2018 18:29:38 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6afe064783e43e73b442d0ccc76493ab0c9dc1e28a3c37d54c3c5da9fec3751`  
		Last Modified: Wed, 28 Nov 2018 18:29:38 GMT  
		Size: 2.8 KB (2762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo-express:latest`

```console
$ docker pull mongo-express@sha256:46dfd2ac7d5865a3d2d15b7060a1316aefe6cdddc540aa5302c3fc7345b37f60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo-express:latest` - linux; amd64

```console
$ docker pull mongo-express@sha256:e45286a33330d996fe2c289be0d33a8e601e5d31e8e2307604b59adc90de4753
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 MB (35943275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aa3eda7feb458557934ed35e6182fbbd51eb048e0434c5e396c614af980c901`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["mongo-express"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 11:39:13 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 12:08:04 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 28 Nov 2018 12:08:04 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 12:08:09 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 28 Nov 2018 12:08:09 GMT
CMD ["node"]
# Wed, 28 Nov 2018 14:36:02 GMT
RUN apk add --no-cache bash tini
# Wed, 28 Nov 2018 14:36:02 GMT
EXPOSE 8081/tcp
# Wed, 28 Nov 2018 14:36:02 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Wed, 28 Nov 2018 14:36:03 GMT
ENV MONGO_EXPRESS=0.49.0
# Wed, 28 Nov 2018 14:36:14 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Wed, 28 Nov 2018 14:36:15 GMT
COPY file:2516c7b7f7588c555e93ea187f5e232cc365678735934990998dc2509b84b3c2 in / 
# Wed, 28 Nov 2018 14:36:15 GMT
WORKDIR /node_modules/mongo-express
# Wed, 28 Nov 2018 14:36:16 GMT
RUN cp config.default.js config.js
# Wed, 28 Nov 2018 14:36:16 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 28 Nov 2018 14:36:16 GMT
CMD ["mongo-express"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c94b1665db914ebb8891bac4827866afab60f591d4daac509a7835f6737ad0c`  
		Last Modified: Wed, 28 Nov 2018 13:55:31 GMT  
		Size: 18.9 MB (18866675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b413d1ce95e31d6d84931b0e90047fc35a08e27666a4a49215beb348e8a6e72`  
		Last Modified: Wed, 28 Nov 2018 13:55:26 GMT  
		Size: 1.3 MB (1317204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9c998a413b41a3deb1e469518dc75c2ec67e4d57219e821a8ab314d3e71a21`  
		Last Modified: Wed, 28 Nov 2018 14:36:40 GMT  
		Size: 1.2 MB (1181654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f88c36c9e316ead5c0a96d6461c0b311046e1c6039f6812ea38e8cdc5778c0`  
		Last Modified: Wed, 28 Nov 2018 14:36:41 GMT  
		Size: 12.4 MB (12367475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a1179e9f12a372a60e6c72956f45e448f3c73c2083e6b0dec28364457f49313`  
		Last Modified: Wed, 28 Nov 2018 14:36:39 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68199b40d26964d85f96eac3a7c0ae02d591b8612440700887df1234238e4158`  
		Last Modified: Wed, 28 Nov 2018 14:36:39 GMT  
		Size: 2.8 KB (2764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo-express:latest` - linux; arm64 variant v8

```console
$ docker pull mongo-express@sha256:b152e9447d0348e462e614d1f2f14ac5ab348d753bb3581c82bf1af71783ee39
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34733343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16b22216931d1a28fd0cc191ebbbd9ad92662e681ab6a3567f4d3dafe7ff20ed`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["mongo-express"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 16:29:41 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 16:52:53 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 28 Nov 2018 16:52:53 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 16:53:02 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 28 Nov 2018 16:53:02 GMT
CMD ["node"]
# Wed, 28 Nov 2018 18:28:52 GMT
RUN apk add --no-cache bash tini
# Wed, 28 Nov 2018 18:28:53 GMT
EXPOSE 8081/tcp
# Wed, 28 Nov 2018 18:28:53 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Wed, 28 Nov 2018 18:28:54 GMT
ENV MONGO_EXPRESS=0.49.0
# Wed, 28 Nov 2018 18:29:19 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Wed, 28 Nov 2018 18:29:20 GMT
COPY file:2516c7b7f7588c555e93ea187f5e232cc365678735934990998dc2509b84b3c2 in / 
# Wed, 28 Nov 2018 18:29:21 GMT
WORKDIR /node_modules/mongo-express
# Wed, 28 Nov 2018 18:29:22 GMT
RUN cp config.default.js config.js
# Wed, 28 Nov 2018 18:29:23 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 28 Nov 2018 18:29:23 GMT
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
	-	`sha256:3f1c1b8c15b22b1d361a1ae638c82fbaa16b0eb5c4678553bcf7392f524f01d2`  
		Last Modified: Wed, 28 Nov 2018 18:02:33 GMT  
		Size: 17.8 MB (17820829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:279bdc3ef3ca6947c2e4e430b56a315ad6a5359f4dc0a1ca9198ca6f6a2855fb`  
		Last Modified: Wed, 28 Nov 2018 18:02:26 GMT  
		Size: 1.3 MB (1317234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e778d0cd702a8afcbb0b431e2be1160f382a0a3f644bf42f4e70f06246126075`  
		Last Modified: Wed, 28 Nov 2018 18:29:39 GMT  
		Size: 1.1 MB (1121101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052011152fb9381f950af3062f9191867cc15043ad20c5bf7825ba87c0b9305f`  
		Last Modified: Wed, 28 Nov 2018 18:29:43 GMT  
		Size: 12.4 MB (12370906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b46da1ca8056aa9e447de4b0472d4b3b4cd66671b902d9e966466694beaecd`  
		Last Modified: Wed, 28 Nov 2018 18:29:38 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6afe064783e43e73b442d0ccc76493ab0c9dc1e28a3c37d54c3c5da9fec3751`  
		Last Modified: Wed, 28 Nov 2018 18:29:38 GMT  
		Size: 2.8 KB (2762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

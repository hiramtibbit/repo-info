<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo-express`

-	[`mongo-express:0.49`](#mongo-express049)
-	[`mongo-express:0.49.0`](#mongo-express0490)
-	[`mongo-express:latest`](#mongo-expresslatest)

## `mongo-express:0.49`

```console
$ docker pull mongo-express@sha256:8ef3f35519387990210fccfe7bc8b7f7a82aa950ea6a74bc349cb056f4633dab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo-express:0.49` - linux; amd64

```console
$ docker pull mongo-express@sha256:8ea25a139cec385ba5db98469942a113d381c499a363d67396e49eb0a30c9ea8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 MB (35949022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddb4a9cc8c79200fe90528be2244c88ea5de77390b64f71a5a6a7ed8222a7d83`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["mongo-express"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 11:39:13 GMT
ENV NODE_VERSION=8.14.0
# Mon, 03 Dec 2018 21:39:31 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Mon, 03 Dec 2018 21:39:31 GMT
ENV YARN_VERSION=1.12.3
# Mon, 03 Dec 2018 21:39:35 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Mon, 03 Dec 2018 21:39:35 GMT
CMD ["node"]
# Mon, 03 Dec 2018 23:39:29 GMT
RUN apk add --no-cache bash tini
# Mon, 03 Dec 2018 23:39:29 GMT
EXPOSE 8081/tcp
# Mon, 03 Dec 2018 23:39:29 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Mon, 03 Dec 2018 23:39:29 GMT
ENV MONGO_EXPRESS=0.49.0
# Mon, 03 Dec 2018 23:39:43 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Mon, 03 Dec 2018 23:39:43 GMT
COPY file:2516c7b7f7588c555e93ea187f5e232cc365678735934990998dc2509b84b3c2 in / 
# Mon, 03 Dec 2018 23:39:44 GMT
WORKDIR /node_modules/mongo-express
# Mon, 03 Dec 2018 23:39:44 GMT
RUN cp config.default.js config.js
# Mon, 03 Dec 2018 23:39:45 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Mon, 03 Dec 2018 23:39:45 GMT
CMD ["mongo-express"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ade4f5bae45b5678fab08368d912c93f22e2374f768e856a982f261f0822dbc`  
		Last Modified: Mon, 03 Dec 2018 22:50:36 GMT  
		Size: 18.9 MB (18869555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd1dceaf77f3a20e552ba30e8aa5b37fcf8805b5f85573833da022c23a6604fd`  
		Last Modified: Mon, 03 Dec 2018 22:50:31 GMT  
		Size: 1.3 MB (1319666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0faa2fb153a034f01be88d6f2226464f5e9a773c3f84b03e33b0be1afbff128d`  
		Last Modified: Mon, 03 Dec 2018 23:40:12 GMT  
		Size: 1.2 MB (1181705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11b260de44743036c8de9dbfe6c4aa2c8ed0ffe34d0246c46ec4973e77bdc2a2`  
		Last Modified: Mon, 03 Dec 2018 23:40:14 GMT  
		Size: 12.4 MB (12367830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8364684bf4c4786b3e3127e1df473d479cc29a15c7d4678ad771a41dc89aeb7e`  
		Last Modified: Mon, 03 Dec 2018 23:40:11 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e139f3b1d907b43f15f60219121d64853d226ea52d283bf511202106b6ff834e`  
		Last Modified: Mon, 03 Dec 2018 23:40:13 GMT  
		Size: 2.8 KB (2762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo-express:0.49` - linux; arm64 variant v8

```console
$ docker pull mongo-express@sha256:49f0fe532a3cead52109c5c853bb131a84544949ec3ee9bdbeabccfe108cabcc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34739018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b4862632b9559eadf3d0f39728794c923e93699e809086a2f528c0eeec48aea`
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
# Tue, 04 Dec 2018 12:27:35 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 04 Dec 2018 12:27:36 GMT
ENV YARN_VERSION=1.12.3
# Tue, 04 Dec 2018 12:27:43 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Dec 2018 12:27:44 GMT
CMD ["node"]
# Tue, 04 Dec 2018 14:17:58 GMT
RUN apk add --no-cache bash tini
# Tue, 04 Dec 2018 14:17:58 GMT
EXPOSE 8081/tcp
# Tue, 04 Dec 2018 14:17:59 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Tue, 04 Dec 2018 14:18:00 GMT
ENV MONGO_EXPRESS=0.49.0
# Tue, 04 Dec 2018 14:18:26 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Tue, 04 Dec 2018 14:18:27 GMT
COPY file:2516c7b7f7588c555e93ea187f5e232cc365678735934990998dc2509b84b3c2 in / 
# Tue, 04 Dec 2018 14:18:28 GMT
WORKDIR /node_modules/mongo-express
# Tue, 04 Dec 2018 14:18:30 GMT
RUN cp config.default.js config.js
# Tue, 04 Dec 2018 14:18:30 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 04 Dec 2018 14:18:31 GMT
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
	-	`sha256:c25ab3e917a616e38c4c01b8dda9fc4212f74a875261e4cde2924eb6139b42b8`  
		Last Modified: Tue, 04 Dec 2018 13:32:40 GMT  
		Size: 17.8 MB (17824351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3620a9f4dc228ba32b85389ed5defc1b4cff8e994bde658a0893963661e26c44`  
		Last Modified: Tue, 04 Dec 2018 13:32:33 GMT  
		Size: 1.3 MB (1319756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ad7e98c7f5a674f8a81000f69e75fb707fbb5acd7fed1e7f65b96bd9e3440a`  
		Last Modified: Tue, 04 Dec 2018 14:18:53 GMT  
		Size: 1.1 MB (1121110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383a9858a8e26136b755804d35282b80a567c8497aa945784550fd1ca252f6e9`  
		Last Modified: Tue, 04 Dec 2018 14:18:56 GMT  
		Size: 12.4 MB (12370525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:377f31a290a32c571d326ab518802140214835ee459342fcb8a834fedda8e4a2`  
		Last Modified: Tue, 04 Dec 2018 14:18:52 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d139739560ac8018d9811a66b44cca8e8fc25bb5a58c8994c5f04f0cb764592`  
		Last Modified: Tue, 04 Dec 2018 14:18:52 GMT  
		Size: 2.8 KB (2765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo-express:0.49.0`

```console
$ docker pull mongo-express@sha256:8ef3f35519387990210fccfe7bc8b7f7a82aa950ea6a74bc349cb056f4633dab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo-express:0.49.0` - linux; amd64

```console
$ docker pull mongo-express@sha256:8ea25a139cec385ba5db98469942a113d381c499a363d67396e49eb0a30c9ea8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 MB (35949022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddb4a9cc8c79200fe90528be2244c88ea5de77390b64f71a5a6a7ed8222a7d83`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["mongo-express"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 11:39:13 GMT
ENV NODE_VERSION=8.14.0
# Mon, 03 Dec 2018 21:39:31 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Mon, 03 Dec 2018 21:39:31 GMT
ENV YARN_VERSION=1.12.3
# Mon, 03 Dec 2018 21:39:35 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Mon, 03 Dec 2018 21:39:35 GMT
CMD ["node"]
# Mon, 03 Dec 2018 23:39:29 GMT
RUN apk add --no-cache bash tini
# Mon, 03 Dec 2018 23:39:29 GMT
EXPOSE 8081/tcp
# Mon, 03 Dec 2018 23:39:29 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Mon, 03 Dec 2018 23:39:29 GMT
ENV MONGO_EXPRESS=0.49.0
# Mon, 03 Dec 2018 23:39:43 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Mon, 03 Dec 2018 23:39:43 GMT
COPY file:2516c7b7f7588c555e93ea187f5e232cc365678735934990998dc2509b84b3c2 in / 
# Mon, 03 Dec 2018 23:39:44 GMT
WORKDIR /node_modules/mongo-express
# Mon, 03 Dec 2018 23:39:44 GMT
RUN cp config.default.js config.js
# Mon, 03 Dec 2018 23:39:45 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Mon, 03 Dec 2018 23:39:45 GMT
CMD ["mongo-express"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ade4f5bae45b5678fab08368d912c93f22e2374f768e856a982f261f0822dbc`  
		Last Modified: Mon, 03 Dec 2018 22:50:36 GMT  
		Size: 18.9 MB (18869555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd1dceaf77f3a20e552ba30e8aa5b37fcf8805b5f85573833da022c23a6604fd`  
		Last Modified: Mon, 03 Dec 2018 22:50:31 GMT  
		Size: 1.3 MB (1319666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0faa2fb153a034f01be88d6f2226464f5e9a773c3f84b03e33b0be1afbff128d`  
		Last Modified: Mon, 03 Dec 2018 23:40:12 GMT  
		Size: 1.2 MB (1181705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11b260de44743036c8de9dbfe6c4aa2c8ed0ffe34d0246c46ec4973e77bdc2a2`  
		Last Modified: Mon, 03 Dec 2018 23:40:14 GMT  
		Size: 12.4 MB (12367830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8364684bf4c4786b3e3127e1df473d479cc29a15c7d4678ad771a41dc89aeb7e`  
		Last Modified: Mon, 03 Dec 2018 23:40:11 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e139f3b1d907b43f15f60219121d64853d226ea52d283bf511202106b6ff834e`  
		Last Modified: Mon, 03 Dec 2018 23:40:13 GMT  
		Size: 2.8 KB (2762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo-express:0.49.0` - linux; arm64 variant v8

```console
$ docker pull mongo-express@sha256:49f0fe532a3cead52109c5c853bb131a84544949ec3ee9bdbeabccfe108cabcc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34739018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b4862632b9559eadf3d0f39728794c923e93699e809086a2f528c0eeec48aea`
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
# Tue, 04 Dec 2018 12:27:35 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 04 Dec 2018 12:27:36 GMT
ENV YARN_VERSION=1.12.3
# Tue, 04 Dec 2018 12:27:43 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Dec 2018 12:27:44 GMT
CMD ["node"]
# Tue, 04 Dec 2018 14:17:58 GMT
RUN apk add --no-cache bash tini
# Tue, 04 Dec 2018 14:17:58 GMT
EXPOSE 8081/tcp
# Tue, 04 Dec 2018 14:17:59 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Tue, 04 Dec 2018 14:18:00 GMT
ENV MONGO_EXPRESS=0.49.0
# Tue, 04 Dec 2018 14:18:26 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Tue, 04 Dec 2018 14:18:27 GMT
COPY file:2516c7b7f7588c555e93ea187f5e232cc365678735934990998dc2509b84b3c2 in / 
# Tue, 04 Dec 2018 14:18:28 GMT
WORKDIR /node_modules/mongo-express
# Tue, 04 Dec 2018 14:18:30 GMT
RUN cp config.default.js config.js
# Tue, 04 Dec 2018 14:18:30 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 04 Dec 2018 14:18:31 GMT
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
	-	`sha256:c25ab3e917a616e38c4c01b8dda9fc4212f74a875261e4cde2924eb6139b42b8`  
		Last Modified: Tue, 04 Dec 2018 13:32:40 GMT  
		Size: 17.8 MB (17824351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3620a9f4dc228ba32b85389ed5defc1b4cff8e994bde658a0893963661e26c44`  
		Last Modified: Tue, 04 Dec 2018 13:32:33 GMT  
		Size: 1.3 MB (1319756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ad7e98c7f5a674f8a81000f69e75fb707fbb5acd7fed1e7f65b96bd9e3440a`  
		Last Modified: Tue, 04 Dec 2018 14:18:53 GMT  
		Size: 1.1 MB (1121110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383a9858a8e26136b755804d35282b80a567c8497aa945784550fd1ca252f6e9`  
		Last Modified: Tue, 04 Dec 2018 14:18:56 GMT  
		Size: 12.4 MB (12370525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:377f31a290a32c571d326ab518802140214835ee459342fcb8a834fedda8e4a2`  
		Last Modified: Tue, 04 Dec 2018 14:18:52 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d139739560ac8018d9811a66b44cca8e8fc25bb5a58c8994c5f04f0cb764592`  
		Last Modified: Tue, 04 Dec 2018 14:18:52 GMT  
		Size: 2.8 KB (2765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo-express:latest`

```console
$ docker pull mongo-express@sha256:5885aeeb88c91b93d3bbbd5a539317eeaeeb882301e6acfdb29eef0b61379d30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo-express:latest` - linux; amd64

```console
$ docker pull mongo-express@sha256:8ea25a139cec385ba5db98469942a113d381c499a363d67396e49eb0a30c9ea8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 MB (35949022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddb4a9cc8c79200fe90528be2244c88ea5de77390b64f71a5a6a7ed8222a7d83`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["mongo-express"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 11:39:13 GMT
ENV NODE_VERSION=8.14.0
# Mon, 03 Dec 2018 21:39:31 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Mon, 03 Dec 2018 21:39:31 GMT
ENV YARN_VERSION=1.12.3
# Mon, 03 Dec 2018 21:39:35 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Mon, 03 Dec 2018 21:39:35 GMT
CMD ["node"]
# Mon, 03 Dec 2018 23:39:29 GMT
RUN apk add --no-cache bash tini
# Mon, 03 Dec 2018 23:39:29 GMT
EXPOSE 8081/tcp
# Mon, 03 Dec 2018 23:39:29 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Mon, 03 Dec 2018 23:39:29 GMT
ENV MONGO_EXPRESS=0.49.0
# Mon, 03 Dec 2018 23:39:43 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Mon, 03 Dec 2018 23:39:43 GMT
COPY file:2516c7b7f7588c555e93ea187f5e232cc365678735934990998dc2509b84b3c2 in / 
# Mon, 03 Dec 2018 23:39:44 GMT
WORKDIR /node_modules/mongo-express
# Mon, 03 Dec 2018 23:39:44 GMT
RUN cp config.default.js config.js
# Mon, 03 Dec 2018 23:39:45 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Mon, 03 Dec 2018 23:39:45 GMT
CMD ["mongo-express"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ade4f5bae45b5678fab08368d912c93f22e2374f768e856a982f261f0822dbc`  
		Last Modified: Mon, 03 Dec 2018 22:50:36 GMT  
		Size: 18.9 MB (18869555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd1dceaf77f3a20e552ba30e8aa5b37fcf8805b5f85573833da022c23a6604fd`  
		Last Modified: Mon, 03 Dec 2018 22:50:31 GMT  
		Size: 1.3 MB (1319666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0faa2fb153a034f01be88d6f2226464f5e9a773c3f84b03e33b0be1afbff128d`  
		Last Modified: Mon, 03 Dec 2018 23:40:12 GMT  
		Size: 1.2 MB (1181705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11b260de44743036c8de9dbfe6c4aa2c8ed0ffe34d0246c46ec4973e77bdc2a2`  
		Last Modified: Mon, 03 Dec 2018 23:40:14 GMT  
		Size: 12.4 MB (12367830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8364684bf4c4786b3e3127e1df473d479cc29a15c7d4678ad771a41dc89aeb7e`  
		Last Modified: Mon, 03 Dec 2018 23:40:11 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e139f3b1d907b43f15f60219121d64853d226ea52d283bf511202106b6ff834e`  
		Last Modified: Mon, 03 Dec 2018 23:40:13 GMT  
		Size: 2.8 KB (2762 bytes)  
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

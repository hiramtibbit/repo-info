<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo-express`

-	[`mongo-express:0.49`](#mongo-express049)
-	[`mongo-express:0.49.0`](#mongo-express0490)
-	[`mongo-express:latest`](#mongo-expresslatest)

## `mongo-express:0.49`

```console
$ docker pull mongo-express@sha256:ec5c96ce2a5c852e1023ed3df2ed49f53e2748fe4403ad0349064b2a93ba12dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo-express:0.49` - linux; amd64

```console
$ docker pull mongo-express@sha256:0069eae5fc961429e51c267c318d7a19d89603ce599dd2c0d33da5db027c348c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (35959279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae86bef7a474d0f2bf4538987ac53429c735b503615b83fbff789ad8790dab2`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["mongo-express"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:19:39 GMT
ENV NODE_VERSION=8.14.1
# Fri, 21 Dec 2018 01:48:05 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 21 Dec 2018 01:48:05 GMT
ENV YARN_VERSION=1.12.3
# Fri, 21 Dec 2018 01:48:10 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 21 Dec 2018 01:48:11 GMT
CMD ["node"]
# Fri, 21 Dec 2018 06:06:53 GMT
RUN apk add --no-cache bash tini
# Fri, 21 Dec 2018 06:06:54 GMT
EXPOSE 8081
# Fri, 21 Dec 2018 06:06:54 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Fri, 21 Dec 2018 06:06:54 GMT
ENV MONGO_EXPRESS=0.49.0
# Fri, 21 Dec 2018 06:07:06 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Fri, 21 Dec 2018 06:07:06 GMT
COPY file:58292318f4d4eebb73af5f654a480f4db1e1bb8a29365676b6ccf54504b61984 in / 
# Fri, 21 Dec 2018 06:07:06 GMT
WORKDIR /node_modules/mongo-express
# Fri, 21 Dec 2018 06:07:07 GMT
RUN cp config.default.js config.js
# Fri, 21 Dec 2018 06:07:07 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 06:07:08 GMT
CMD ["mongo-express"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5cdc0df0c41993ce1a9614e4527ab0fb3ff2af463c4411ca320d204d6c3765`  
		Last Modified: Fri, 21 Dec 2018 03:18:51 GMT  
		Size: 18.9 MB (18869761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f789259667da7b274a53720a0a89df06073f0fa2e02372323d165d98362107a7`  
		Last Modified: Fri, 21 Dec 2018 03:18:47 GMT  
		Size: 1.3 MB (1325176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1276b3f5e246fc746613d884c47e043e10bf351343da46ec91bceb10339c6296`  
		Last Modified: Fri, 21 Dec 2018 06:07:16 GMT  
		Size: 1.2 MB (1181716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58c5f7a05b1af757cb135439909f4414448ab6578757a1780a4d41a339479fc`  
		Last Modified: Fri, 21 Dec 2018 06:07:18 GMT  
		Size: 12.4 MB (12372262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c7e46bdadf5aa8d3748975a44d8e955d13ed20273f27665ab0d3fc9906c47f`  
		Last Modified: Fri, 21 Dec 2018 06:07:16 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f71984b6ef80ff18980e0ecc10c47ece3ff6b66bfb80ab81200dde8f35a175a`  
		Last Modified: Fri, 21 Dec 2018 06:07:16 GMT  
		Size: 2.8 KB (2765 bytes)  
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
$ docker pull mongo-express@sha256:ec5c96ce2a5c852e1023ed3df2ed49f53e2748fe4403ad0349064b2a93ba12dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo-express:0.49.0` - linux; amd64

```console
$ docker pull mongo-express@sha256:0069eae5fc961429e51c267c318d7a19d89603ce599dd2c0d33da5db027c348c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (35959279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae86bef7a474d0f2bf4538987ac53429c735b503615b83fbff789ad8790dab2`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["mongo-express"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:19:39 GMT
ENV NODE_VERSION=8.14.1
# Fri, 21 Dec 2018 01:48:05 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 21 Dec 2018 01:48:05 GMT
ENV YARN_VERSION=1.12.3
# Fri, 21 Dec 2018 01:48:10 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 21 Dec 2018 01:48:11 GMT
CMD ["node"]
# Fri, 21 Dec 2018 06:06:53 GMT
RUN apk add --no-cache bash tini
# Fri, 21 Dec 2018 06:06:54 GMT
EXPOSE 8081
# Fri, 21 Dec 2018 06:06:54 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Fri, 21 Dec 2018 06:06:54 GMT
ENV MONGO_EXPRESS=0.49.0
# Fri, 21 Dec 2018 06:07:06 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Fri, 21 Dec 2018 06:07:06 GMT
COPY file:58292318f4d4eebb73af5f654a480f4db1e1bb8a29365676b6ccf54504b61984 in / 
# Fri, 21 Dec 2018 06:07:06 GMT
WORKDIR /node_modules/mongo-express
# Fri, 21 Dec 2018 06:07:07 GMT
RUN cp config.default.js config.js
# Fri, 21 Dec 2018 06:07:07 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 06:07:08 GMT
CMD ["mongo-express"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5cdc0df0c41993ce1a9614e4527ab0fb3ff2af463c4411ca320d204d6c3765`  
		Last Modified: Fri, 21 Dec 2018 03:18:51 GMT  
		Size: 18.9 MB (18869761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f789259667da7b274a53720a0a89df06073f0fa2e02372323d165d98362107a7`  
		Last Modified: Fri, 21 Dec 2018 03:18:47 GMT  
		Size: 1.3 MB (1325176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1276b3f5e246fc746613d884c47e043e10bf351343da46ec91bceb10339c6296`  
		Last Modified: Fri, 21 Dec 2018 06:07:16 GMT  
		Size: 1.2 MB (1181716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58c5f7a05b1af757cb135439909f4414448ab6578757a1780a4d41a339479fc`  
		Last Modified: Fri, 21 Dec 2018 06:07:18 GMT  
		Size: 12.4 MB (12372262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c7e46bdadf5aa8d3748975a44d8e955d13ed20273f27665ab0d3fc9906c47f`  
		Last Modified: Fri, 21 Dec 2018 06:07:16 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f71984b6ef80ff18980e0ecc10c47ece3ff6b66bfb80ab81200dde8f35a175a`  
		Last Modified: Fri, 21 Dec 2018 06:07:16 GMT  
		Size: 2.8 KB (2765 bytes)  
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
$ docker pull mongo-express@sha256:ec5c96ce2a5c852e1023ed3df2ed49f53e2748fe4403ad0349064b2a93ba12dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo-express:latest` - linux; amd64

```console
$ docker pull mongo-express@sha256:0069eae5fc961429e51c267c318d7a19d89603ce599dd2c0d33da5db027c348c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (35959279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae86bef7a474d0f2bf4538987ac53429c735b503615b83fbff789ad8790dab2`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["mongo-express"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:19:39 GMT
ENV NODE_VERSION=8.14.1
# Fri, 21 Dec 2018 01:48:05 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 21 Dec 2018 01:48:05 GMT
ENV YARN_VERSION=1.12.3
# Fri, 21 Dec 2018 01:48:10 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 21 Dec 2018 01:48:11 GMT
CMD ["node"]
# Fri, 21 Dec 2018 06:06:53 GMT
RUN apk add --no-cache bash tini
# Fri, 21 Dec 2018 06:06:54 GMT
EXPOSE 8081
# Fri, 21 Dec 2018 06:06:54 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Fri, 21 Dec 2018 06:06:54 GMT
ENV MONGO_EXPRESS=0.49.0
# Fri, 21 Dec 2018 06:07:06 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Fri, 21 Dec 2018 06:07:06 GMT
COPY file:58292318f4d4eebb73af5f654a480f4db1e1bb8a29365676b6ccf54504b61984 in / 
# Fri, 21 Dec 2018 06:07:06 GMT
WORKDIR /node_modules/mongo-express
# Fri, 21 Dec 2018 06:07:07 GMT
RUN cp config.default.js config.js
# Fri, 21 Dec 2018 06:07:07 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 06:07:08 GMT
CMD ["mongo-express"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5cdc0df0c41993ce1a9614e4527ab0fb3ff2af463c4411ca320d204d6c3765`  
		Last Modified: Fri, 21 Dec 2018 03:18:51 GMT  
		Size: 18.9 MB (18869761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f789259667da7b274a53720a0a89df06073f0fa2e02372323d165d98362107a7`  
		Last Modified: Fri, 21 Dec 2018 03:18:47 GMT  
		Size: 1.3 MB (1325176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1276b3f5e246fc746613d884c47e043e10bf351343da46ec91bceb10339c6296`  
		Last Modified: Fri, 21 Dec 2018 06:07:16 GMT  
		Size: 1.2 MB (1181716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58c5f7a05b1af757cb135439909f4414448ab6578757a1780a4d41a339479fc`  
		Last Modified: Fri, 21 Dec 2018 06:07:18 GMT  
		Size: 12.4 MB (12372262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c7e46bdadf5aa8d3748975a44d8e955d13ed20273f27665ab0d3fc9906c47f`  
		Last Modified: Fri, 21 Dec 2018 06:07:16 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f71984b6ef80ff18980e0ecc10c47ece3ff6b66bfb80ab81200dde8f35a175a`  
		Last Modified: Fri, 21 Dec 2018 06:07:16 GMT  
		Size: 2.8 KB (2765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo-express:latest` - linux; arm64 variant v8

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

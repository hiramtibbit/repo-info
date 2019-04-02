## `express-gateway:latest`

```console
$ docker pull express-gateway@sha256:1d9be0ffd4595fad1a5422305752a13fbdbf46d764fff0c66499ce5ae18f3295
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `express-gateway:latest` - linux; amd64

```console
$ docker pull express-gateway@sha256:62d58353ba17f52f161569e811bbe6a1046d8e5be75bc8cc444c81fc8f0c1af0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 MB (34025108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:818ae03a6f8245e2b108d21800f0c19fe85b2a93469e48c52a47f4b499c95c61`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:17:54 GMT
ENV NODE_VERSION=10.15.3
# Fri, 08 Mar 2019 02:56:00 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 08 Mar 2019 02:56:01 GMT
ENV YARN_VERSION=1.13.0
# Fri, 08 Mar 2019 02:56:03 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 08 Mar 2019 02:56:03 GMT
CMD ["node"]
# Fri, 08 Mar 2019 05:23:26 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Mon, 01 Apr 2019 23:21:41 GMT
ARG EG_VERSION=1.16.1
# Mon, 01 Apr 2019 23:22:02 GMT
# ARGS: EG_VERSION=1.16.1
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Mon, 01 Apr 2019 23:22:02 GMT
ENV NODE_ENV=production
# Mon, 01 Apr 2019 23:22:02 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Mon, 01 Apr 2019 23:22:02 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Mon, 01 Apr 2019 23:22:03 GMT
ENV CHOKIDAR_USEPOLLING=true
# Mon, 01 Apr 2019 23:22:03 GMT
VOLUME [/var/lib/eg]
# Mon, 01 Apr 2019 23:22:03 GMT
EXPOSE 8080 9876
# Mon, 01 Apr 2019 23:22:03 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Mon, 01 Apr 2019 23:22:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 Apr 2019 23:22:04 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca2222b63ac58790681071da72c8e43d31b2e1b631aa35caad68e104e144a7d4`  
		Last Modified: Fri, 08 Mar 2019 03:00:03 GMT  
		Size: 20.0 MB (20039655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2ca3ce7154e88c031bf726753317d9412814c980703ce608a731e47a1b0a0e`  
		Last Modified: Fri, 08 Mar 2019 02:59:57 GMT  
		Size: 1.3 MB (1331862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941c48086870477ce4b29539bd8df2a9f2448e497ad38e22f0cea3c201b3c96a`  
		Last Modified: Mon, 01 Apr 2019 23:22:16 GMT  
		Size: 9.9 MB (9898363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458ce03ed0493e9ccff314b1eb73eb15c497df077792a488f8c694b1319fcca9`  
		Last Modified: Mon, 01 Apr 2019 23:22:12 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:latest` - linux; arm64 variant v8

```console
$ docker pull express-gateway@sha256:a8dc2185681141f05d9874f6d3b48453b4f0097d7b51b3522d0d107c60bca704
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34074361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23791bdc79f8bb4332371af406cc15981894489dd2424d41f1715d1c44ec526f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 11:06:37 GMT
ENV NODE_VERSION=10.15.3
# Fri, 08 Mar 2019 11:48:58 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 08 Mar 2019 11:48:59 GMT
ENV YARN_VERSION=1.13.0
# Fri, 08 Mar 2019 11:49:05 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 08 Mar 2019 11:49:06 GMT
CMD ["node"]
# Sat, 09 Mar 2019 13:05:28 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Tue, 26 Mar 2019 08:40:36 GMT
ARG EG_VERSION=1.16.0
# Tue, 26 Mar 2019 08:41:14 GMT
# ARGS: EG_VERSION=1.16.0
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Tue, 26 Mar 2019 08:41:15 GMT
ENV NODE_ENV=production
# Tue, 26 Mar 2019 08:41:16 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Tue, 26 Mar 2019 08:41:18 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Tue, 26 Mar 2019 08:41:19 GMT
ENV CHOKIDAR_USEPOLLING=true
# Tue, 26 Mar 2019 08:41:19 GMT
VOLUME [/var/lib/eg]
# Tue, 26 Mar 2019 08:41:20 GMT
EXPOSE 8080 9876
# Tue, 26 Mar 2019 08:41:21 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Tue, 26 Mar 2019 08:41:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Mar 2019 08:41:22 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8c54550cd34f83844dd50f4326b982e5310d6eb55941a3465ae14f1af61eb6`  
		Last Modified: Sat, 09 Mar 2019 09:53:19 GMT  
		Size: 20.2 MB (20161079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c4319dce812dc744a5267a722ce9527c1c6a905973c7ad73c4e93168fae926`  
		Last Modified: Sat, 09 Mar 2019 09:52:46 GMT  
		Size: 1.3 MB (1331928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef65b37ee37ebd8f2404b9eb71921daa3eb5f2f010df49246d24e14d48c02ca7`  
		Last Modified: Tue, 26 Mar 2019 08:41:52 GMT  
		Size: 9.9 MB (9892917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38eba5596abbfbda68e7482187396b7269195c36f5ed03c99cb87677e02b6cfb`  
		Last Modified: Tue, 26 Mar 2019 08:41:45 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:latest` - linux; 386

```console
$ docker pull express-gateway@sha256:180399e4d25f047515c98123e54969bc8d0f73ab2e2d97b3e0e7e8a47c6e2b9f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34101087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:013d04b72d4542ccb4f42a38015c3ac38058409bd862d25913f266f65767de0e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:23:48 GMT
ENV NODE_VERSION=10.15.3
# Fri, 08 Mar 2019 06:49:41 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 08 Mar 2019 06:49:41 GMT
ENV YARN_VERSION=1.13.0
# Fri, 08 Mar 2019 06:49:43 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 08 Mar 2019 06:49:44 GMT
CMD ["node"]
# Fri, 08 Mar 2019 11:06:10 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Tue, 26 Mar 2019 10:38:55 GMT
ARG EG_VERSION=1.16.0
# Tue, 26 Mar 2019 10:39:15 GMT
# ARGS: EG_VERSION=1.16.0
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Tue, 26 Mar 2019 10:39:16 GMT
ENV NODE_ENV=production
# Tue, 26 Mar 2019 10:39:16 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Tue, 26 Mar 2019 10:39:16 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Tue, 26 Mar 2019 10:39:16 GMT
ENV CHOKIDAR_USEPOLLING=true
# Tue, 26 Mar 2019 10:39:17 GMT
VOLUME [/var/lib/eg]
# Tue, 26 Mar 2019 10:39:17 GMT
EXPOSE 8080 9876
# Tue, 26 Mar 2019 10:39:17 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Tue, 26 Mar 2019 10:39:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Mar 2019 10:39:17 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92057530502da8b508abc09159015dfab8743bde69c82272e6e2d6420aaa90cc`  
		Last Modified: Fri, 08 Mar 2019 06:51:23 GMT  
		Size: 20.2 MB (20165673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d783ac6982550fccc2666832e1bcac34b78679627bd7c0182b7b1c1a913d3e`  
		Last Modified: Fri, 08 Mar 2019 06:51:18 GMT  
		Size: 1.3 MB (1331920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86ea62ccdf3562e3d9902d605b25b95ad26dc167e059136ea3dbcc8dfcfc484`  
		Last Modified: Tue, 26 Mar 2019 10:39:33 GMT  
		Size: 9.9 MB (9853641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93eec52d3d8c172cd795b5493008442ec623599046ad3491b0ecfbb796085c36`  
		Last Modified: Tue, 26 Mar 2019 10:39:29 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:latest` - linux; ppc64le

```console
$ docker pull express-gateway@sha256:c960af0b44349a09cc2543a34e16bcc681475e70602122cadf6b0cde68b5ba58
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.7 MB (35684362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35d2dcdec6fb50ea9a5476a8736241ae528dbfe8e82a04ea189dce9eadd39b1b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:45:18 GMT
ENV NODE_VERSION=10.15.3
# Fri, 08 Mar 2019 05:58:57 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 08 Mar 2019 05:59:01 GMT
ENV YARN_VERSION=1.13.0
# Fri, 08 Mar 2019 05:59:13 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 08 Mar 2019 05:59:15 GMT
CMD ["node"]
# Fri, 08 Mar 2019 08:43:52 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Tue, 02 Apr 2019 08:17:18 GMT
ARG EG_VERSION=1.16.1
# Tue, 02 Apr 2019 08:17:52 GMT
# ARGS: EG_VERSION=1.16.1
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Tue, 02 Apr 2019 08:17:56 GMT
ENV NODE_ENV=production
# Tue, 02 Apr 2019 08:17:58 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Tue, 02 Apr 2019 08:18:00 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Tue, 02 Apr 2019 08:18:02 GMT
ENV CHOKIDAR_USEPOLLING=true
# Tue, 02 Apr 2019 08:18:04 GMT
VOLUME [/var/lib/eg]
# Tue, 02 Apr 2019 08:18:07 GMT
EXPOSE 8080 9876
# Tue, 02 Apr 2019 08:18:10 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Tue, 02 Apr 2019 08:18:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 02 Apr 2019 08:18:18 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3063fced9a8061e9486f2450e50ef6ff59c038458444636a6c6e6a9fd3805213`  
		Last Modified: Fri, 08 Mar 2019 06:08:05 GMT  
		Size: 21.7 MB (21675060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d296820354522bdd58760636955a1eb249d2828a89f7d47047cc5120049b0565`  
		Last Modified: Fri, 08 Mar 2019 06:07:59 GMT  
		Size: 1.3 MB (1331925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba8e586dc23bfc453b2d7cf8a286d3b69412223a3793d981567bb5738a59dc2d`  
		Last Modified: Tue, 02 Apr 2019 08:18:42 GMT  
		Size: 9.9 MB (9898240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd12b5d07e9ede74718fd3e4927c9eb1ff3f93b40c493399508711226b33906`  
		Last Modified: Tue, 02 Apr 2019 08:18:38 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:latest` - linux; s390x

```console
$ docker pull express-gateway@sha256:1cbf80f06f68bf798688294fbae077ecc44af15542e1fd7ae3fcf72a031236c0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33669600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7ff434df1c929f1749957fc8f93018e9259dec53e514a2b9381bd3ee665ed21`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:07:35 GMT
ENV NODE_VERSION=10.15.3
# Fri, 08 Mar 2019 05:26:58 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 08 Mar 2019 05:26:58 GMT
ENV YARN_VERSION=1.13.0
# Fri, 08 Mar 2019 05:27:01 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 08 Mar 2019 05:27:01 GMT
CMD ["node"]
# Fri, 08 Mar 2019 06:36:53 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Tue, 26 Mar 2019 11:43:13 GMT
ARG EG_VERSION=1.16.0
# Tue, 26 Mar 2019 11:43:38 GMT
# ARGS: EG_VERSION=1.16.0
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Tue, 26 Mar 2019 11:43:39 GMT
ENV NODE_ENV=production
# Tue, 26 Mar 2019 11:43:39 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Tue, 26 Mar 2019 11:43:39 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Tue, 26 Mar 2019 11:43:40 GMT
ENV CHOKIDAR_USEPOLLING=true
# Tue, 26 Mar 2019 11:43:40 GMT
VOLUME [/var/lib/eg]
# Tue, 26 Mar 2019 11:43:40 GMT
EXPOSE 8080 9876
# Tue, 26 Mar 2019 11:43:41 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Tue, 26 Mar 2019 11:43:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Mar 2019 11:43:41 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e780e6c549b282793ce4ea183666694bcb05b602581029031a72664746e86e`  
		Last Modified: Fri, 08 Mar 2019 05:30:19 GMT  
		Size: 19.9 MB (19907893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94555b917b674ebb6a7d916041a9395084b3e6fdec347e97b6e722ab92b40777`  
		Last Modified: Fri, 08 Mar 2019 05:30:15 GMT  
		Size: 1.3 MB (1331889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faaab67c1b434a5c0483bef320c85cf9c0068d83c66e9a744e39c5e3f89cba08`  
		Last Modified: Tue, 26 Mar 2019 11:43:56 GMT  
		Size: 9.9 MB (9888014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c65b97fea4d06cbe984b2325f36bf4dd5ddb75a040826eb430d541c66a719aac`  
		Last Modified: Tue, 26 Mar 2019 11:43:53 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `express-gateway`

-	[`express-gateway:1.14.0`](#express-gateway1140)
-	[`express-gateway:1.14.x`](#express-gateway114x)
-	[`express-gateway:1.x`](#express-gateway1x)
-	[`express-gateway:latest`](#express-gatewaylatest)

## `express-gateway:1.14.0`

```console
$ docker pull express-gateway@sha256:e081a2bf7b2f8b72630e79be657929ad722c42c8148f1a489c651ed85e046553
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `express-gateway:1.14.0` - linux; amd64

```console
$ docker pull express-gateway@sha256:222c5b9178561c9edd0498b3dde89d6938e5dab8d10c01908d0118ced097d0e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.1 MB (33107119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2d7ec36e39bdf1c157e13c7f966c2456d4b9b0fdd2d32336a957e682bbd5417`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 02:23:11 GMT
ENV NODE_VERSION=10.15.0
# Thu, 27 Dec 2018 02:46:29 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 02:46:29 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 02:46:33 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 02:46:33 GMT
CMD ["node"]
# Sat, 12 Jan 2019 00:19:30 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Sat, 12 Jan 2019 00:19:30 GMT
ARG EG_VERSION=1.14.0
# Sat, 12 Jan 2019 00:19:52 GMT
# ARGS: EG_VERSION=1.14.0
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Sat, 12 Jan 2019 00:19:52 GMT
ENV NODE_ENV=production
# Sat, 12 Jan 2019 00:19:52 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Sat, 12 Jan 2019 00:19:52 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Sat, 12 Jan 2019 00:19:52 GMT
ENV CHOKIDAR_USEPOLLING=true
# Sat, 12 Jan 2019 00:19:53 GMT
VOLUME [/var/lib/eg]
# Sat, 12 Jan 2019 00:19:53 GMT
EXPOSE 8080 9876
# Wed, 16 Jan 2019 00:19:28 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Wed, 16 Jan 2019 00:19:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Jan 2019 00:19:29 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a675354a99c184543f062e1ccc35213d03c8209e2f3b94cd2223bf77033b9ef0`  
		Last Modified: Thu, 27 Dec 2018 02:51:31 GMT  
		Size: 20.3 MB (20287904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bda3c2a9f0c3f7c0cef9f892fa51d7f016bedda845a8d5b2d2a1eb0c40f7b8ae`  
		Last Modified: Thu, 27 Dec 2018 02:51:27 GMT  
		Size: 1.3 MB (1325123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c1eef3ef44d33fa13c34c94572eea90eedb70a3487d60a33974c91237c8a3b`  
		Last Modified: Sat, 12 Jan 2019 00:20:05 GMT  
		Size: 9.3 MB (9286574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd615714c56d7d4fbb2f7e63a44a7f2b0ed94751675ef3bfe641d4eea8218b4a`  
		Last Modified: Wed, 16 Jan 2019 00:19:36 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:1.14.0` - linux; arm64 variant v8

```console
$ docker pull express-gateway@sha256:d49f4a27ea853826754226d1ae8fac8c4507d9cd01b19c8cc7b14c61dc9a2730
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31927744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c400c124a26c0a4f53792eef9a12a5bad43751bbe8685ce8135efaae9940b933`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 10:45:42 GMT
ENV NODE_VERSION=10.15.0
# Thu, 27 Dec 2018 11:16:57 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 11:16:58 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 11:17:05 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 11:17:06 GMT
CMD ["node"]
# Sat, 12 Jan 2019 09:40:39 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Sat, 12 Jan 2019 09:40:40 GMT
ARG EG_VERSION=1.14.0
# Sat, 12 Jan 2019 09:41:24 GMT
# ARGS: EG_VERSION=1.14.0
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Sat, 12 Jan 2019 09:41:25 GMT
ENV NODE_ENV=production
# Sat, 12 Jan 2019 09:41:26 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Sat, 12 Jan 2019 09:41:27 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Sat, 12 Jan 2019 09:41:28 GMT
ENV CHOKIDAR_USEPOLLING=true
# Sat, 12 Jan 2019 09:41:29 GMT
VOLUME [/var/lib/eg]
# Sat, 12 Jan 2019 09:41:30 GMT
EXPOSE 8080 9876
# Wed, 16 Jan 2019 09:39:34 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Wed, 16 Jan 2019 09:39:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Jan 2019 09:39:36 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
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
	-	`sha256:fdb6e757dc5977af7255b6f6dd775610f0bd882fc958b79b5fb0c2dc8e361821`  
		Last Modified: Thu, 27 Dec 2018 11:22:06 GMT  
		Size: 19.2 MB (19214450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81fcb963d9d778438f33573c04e6d9e8d8e03afa139363607088bf0189d4732a`  
		Last Modified: Thu, 27 Dec 2018 11:21:58 GMT  
		Size: 1.3 MB (1325141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a759619d86d084eaff7cc38eb60351216903fddda8650ca2f7c160c6cb781307`  
		Last Modified: Sat, 12 Jan 2019 09:41:58 GMT  
		Size: 9.3 MB (9287641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6058fe748079f5adb5e8d9b370bc86a55fd06e017c33c723f3a5863339febc0a`  
		Last Modified: Wed, 16 Jan 2019 09:39:46 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:1.14.0` - linux; 386

```console
$ docker pull express-gateway@sha256:f9fd85db3628ad09a9bf1c85f79c0420e456f9392a169cd7f71f3af0ebedcac2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33161225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:519283eaeadc703eb016daf4d6fd5ec70ccff7be1d93ee4385e6f99ca9822f2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 12:30:36 GMT
ENV NODE_VERSION=10.15.0
# Thu, 27 Dec 2018 12:54:33 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 12:54:34 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 12:54:38 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 12:54:38 GMT
CMD ["node"]
# Sat, 12 Jan 2019 12:11:00 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Sat, 12 Jan 2019 12:11:00 GMT
ARG EG_VERSION=1.14.0
# Sat, 12 Jan 2019 12:11:21 GMT
# ARGS: EG_VERSION=1.14.0
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Sat, 12 Jan 2019 12:11:21 GMT
ENV NODE_ENV=production
# Sat, 12 Jan 2019 12:11:22 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Sat, 12 Jan 2019 12:11:22 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Sat, 12 Jan 2019 12:11:22 GMT
ENV CHOKIDAR_USEPOLLING=true
# Sat, 12 Jan 2019 12:11:22 GMT
VOLUME [/var/lib/eg]
# Sat, 12 Jan 2019 12:11:22 GMT
EXPOSE 8080 9876
# Sat, 12 Jan 2019 12:11:22 GMT
COPY file:4d2db412cc13154fc9f72e4ff7fe06336faae86dc73605dfff63caa1fc73efad in /usr/local/bin/ 
# Sat, 12 Jan 2019 12:11:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Jan 2019 12:11:23 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40fe193e84406967ea3efa7dba80aa45a4d93050159163d3a44acad8165b371d`  
		Last Modified: Thu, 27 Dec 2018 12:57:41 GMT  
		Size: 20.3 MB (20313176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799b9b6fc8030ef4c1b32f7488b5bea725ed8d9a236d17f661680924176e9c4c`  
		Last Modified: Thu, 27 Dec 2018 12:57:36 GMT  
		Size: 1.3 MB (1325191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2efb230632493ebec2307fbbc383975a24d210b2bf6711c11596d1fdea60df2`  
		Last Modified: Sat, 12 Jan 2019 12:11:35 GMT  
		Size: 9.3 MB (9250614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52cc0c5924e6515aecdd1f5b0cfef28030465b51137da2895e51c88b4a6b81c4`  
		Last Modified: Sat, 12 Jan 2019 12:11:31 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:1.14.0` - linux; ppc64le

```console
$ docker pull express-gateway@sha256:25c64d71d3fc48c1b8c652bfb68c4058a71db0843ab0930c7461490180809bc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32793969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c20fd2511a5a10911a87bbb1a77055d54d3ac2454da1dcd6eb09bcbc12c6fc6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 09:43:24 GMT
ENV NODE_VERSION=10.15.0
# Thu, 27 Dec 2018 09:54:33 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 09:54:36 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 09:54:44 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 09:54:46 GMT
CMD ["node"]
# Sat, 12 Jan 2019 09:17:23 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Sat, 12 Jan 2019 09:17:26 GMT
ARG EG_VERSION=1.14.0
# Sat, 12 Jan 2019 09:17:58 GMT
# ARGS: EG_VERSION=1.14.0
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Sat, 12 Jan 2019 09:18:03 GMT
ENV NODE_ENV=production
# Sat, 12 Jan 2019 09:18:06 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Sat, 12 Jan 2019 09:18:09 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Sat, 12 Jan 2019 09:18:10 GMT
ENV CHOKIDAR_USEPOLLING=true
# Sat, 12 Jan 2019 09:18:14 GMT
VOLUME [/var/lib/eg]
# Sat, 12 Jan 2019 09:18:16 GMT
EXPOSE 8080 9876
# Wed, 16 Jan 2019 09:17:07 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Wed, 16 Jan 2019 09:17:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Jan 2019 09:17:14 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d460f3c714f03b90880280ababd03e57e88b2637f2814235481649255253b68`  
		Last Modified: Thu, 27 Dec 2018 10:00:40 GMT  
		Size: 20.0 MB (19986711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4f23dcd181e16a54910a8996ed6050d634e341294801b54b3a364479347974`  
		Last Modified: Thu, 27 Dec 2018 10:00:34 GMT  
		Size: 1.3 MB (1325177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:962386f62ac8b2c61a5795d590d3aaf26971a84d61d2daa5509a49ee8cf303c0`  
		Last Modified: Sat, 12 Jan 2019 09:18:42 GMT  
		Size: 9.3 MB (9286635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06ffc0db5374ed8bb3b2acb2440af97d72c030e10d1fd79476f982852d87f57`  
		Last Modified: Wed, 16 Jan 2019 09:17:27 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:1.14.0` - linux; s390x

```console
$ docker pull express-gateway@sha256:258604290c2d21b2cb7d697181281967c1236613c3b83e013178010826e5ca63
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.1 MB (33128626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc577104cdfcb3f947b34f5d83dfceeb1039accb19336d1c5b3fccf97a1e2bea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 13:20:17 GMT
ENV NODE_VERSION=10.15.0
# Thu, 27 Dec 2018 13:33:13 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 13:33:14 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 13:33:18 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 13:33:18 GMT
CMD ["node"]
# Sat, 12 Jan 2019 12:41:28 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Sat, 12 Jan 2019 12:41:28 GMT
ARG EG_VERSION=1.14.0
# Sat, 12 Jan 2019 12:41:43 GMT
# ARGS: EG_VERSION=1.14.0
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Sat, 12 Jan 2019 12:41:44 GMT
ENV NODE_ENV=production
# Sat, 12 Jan 2019 12:41:44 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Sat, 12 Jan 2019 12:41:44 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Sat, 12 Jan 2019 12:41:44 GMT
ENV CHOKIDAR_USEPOLLING=true
# Sat, 12 Jan 2019 12:41:45 GMT
VOLUME [/var/lib/eg]
# Sat, 12 Jan 2019 12:41:45 GMT
EXPOSE 8080 9876
# Sat, 12 Jan 2019 12:41:45 GMT
COPY file:4d2db412cc13154fc9f72e4ff7fe06336faae86dc73605dfff63caa1fc73efad in /usr/local/bin/ 
# Sat, 12 Jan 2019 12:41:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Jan 2019 12:41:45 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9dc3bfe2dd2edd41133bb901ea2fd9643e3f7a0376b31180afa9f9caf321dc`  
		Last Modified: Thu, 27 Dec 2018 13:36:03 GMT  
		Size: 20.2 MB (20209701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad0adbcf4fbd9918eb18e9c55fd7ab6033f78e7b1a2810ec9459ead1367c538`  
		Last Modified: Thu, 27 Dec 2018 13:35:59 GMT  
		Size: 1.3 MB (1325136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c412410d4738da2d5ccf2ba44d418f6d62c3dabfd8558d4b46b057ef5a0685b9`  
		Last Modified: Sat, 12 Jan 2019 12:41:58 GMT  
		Size: 9.3 MB (9285265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1d59faacd140100229dc36770fab5b89564fa637cd62ffbf55f57721794fbb`  
		Last Modified: Sat, 12 Jan 2019 12:41:56 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `express-gateway:1.14.x`

```console
$ docker pull express-gateway@sha256:e081a2bf7b2f8b72630e79be657929ad722c42c8148f1a489c651ed85e046553
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `express-gateway:1.14.x` - linux; amd64

```console
$ docker pull express-gateway@sha256:222c5b9178561c9edd0498b3dde89d6938e5dab8d10c01908d0118ced097d0e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.1 MB (33107119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2d7ec36e39bdf1c157e13c7f966c2456d4b9b0fdd2d32336a957e682bbd5417`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 02:23:11 GMT
ENV NODE_VERSION=10.15.0
# Thu, 27 Dec 2018 02:46:29 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 02:46:29 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 02:46:33 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 02:46:33 GMT
CMD ["node"]
# Sat, 12 Jan 2019 00:19:30 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Sat, 12 Jan 2019 00:19:30 GMT
ARG EG_VERSION=1.14.0
# Sat, 12 Jan 2019 00:19:52 GMT
# ARGS: EG_VERSION=1.14.0
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Sat, 12 Jan 2019 00:19:52 GMT
ENV NODE_ENV=production
# Sat, 12 Jan 2019 00:19:52 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Sat, 12 Jan 2019 00:19:52 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Sat, 12 Jan 2019 00:19:52 GMT
ENV CHOKIDAR_USEPOLLING=true
# Sat, 12 Jan 2019 00:19:53 GMT
VOLUME [/var/lib/eg]
# Sat, 12 Jan 2019 00:19:53 GMT
EXPOSE 8080 9876
# Wed, 16 Jan 2019 00:19:28 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Wed, 16 Jan 2019 00:19:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Jan 2019 00:19:29 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a675354a99c184543f062e1ccc35213d03c8209e2f3b94cd2223bf77033b9ef0`  
		Last Modified: Thu, 27 Dec 2018 02:51:31 GMT  
		Size: 20.3 MB (20287904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bda3c2a9f0c3f7c0cef9f892fa51d7f016bedda845a8d5b2d2a1eb0c40f7b8ae`  
		Last Modified: Thu, 27 Dec 2018 02:51:27 GMT  
		Size: 1.3 MB (1325123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c1eef3ef44d33fa13c34c94572eea90eedb70a3487d60a33974c91237c8a3b`  
		Last Modified: Sat, 12 Jan 2019 00:20:05 GMT  
		Size: 9.3 MB (9286574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd615714c56d7d4fbb2f7e63a44a7f2b0ed94751675ef3bfe641d4eea8218b4a`  
		Last Modified: Wed, 16 Jan 2019 00:19:36 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:1.14.x` - linux; arm64 variant v8

```console
$ docker pull express-gateway@sha256:d49f4a27ea853826754226d1ae8fac8c4507d9cd01b19c8cc7b14c61dc9a2730
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31927744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c400c124a26c0a4f53792eef9a12a5bad43751bbe8685ce8135efaae9940b933`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 10:45:42 GMT
ENV NODE_VERSION=10.15.0
# Thu, 27 Dec 2018 11:16:57 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 11:16:58 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 11:17:05 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 11:17:06 GMT
CMD ["node"]
# Sat, 12 Jan 2019 09:40:39 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Sat, 12 Jan 2019 09:40:40 GMT
ARG EG_VERSION=1.14.0
# Sat, 12 Jan 2019 09:41:24 GMT
# ARGS: EG_VERSION=1.14.0
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Sat, 12 Jan 2019 09:41:25 GMT
ENV NODE_ENV=production
# Sat, 12 Jan 2019 09:41:26 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Sat, 12 Jan 2019 09:41:27 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Sat, 12 Jan 2019 09:41:28 GMT
ENV CHOKIDAR_USEPOLLING=true
# Sat, 12 Jan 2019 09:41:29 GMT
VOLUME [/var/lib/eg]
# Sat, 12 Jan 2019 09:41:30 GMT
EXPOSE 8080 9876
# Wed, 16 Jan 2019 09:39:34 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Wed, 16 Jan 2019 09:39:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Jan 2019 09:39:36 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
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
	-	`sha256:fdb6e757dc5977af7255b6f6dd775610f0bd882fc958b79b5fb0c2dc8e361821`  
		Last Modified: Thu, 27 Dec 2018 11:22:06 GMT  
		Size: 19.2 MB (19214450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81fcb963d9d778438f33573c04e6d9e8d8e03afa139363607088bf0189d4732a`  
		Last Modified: Thu, 27 Dec 2018 11:21:58 GMT  
		Size: 1.3 MB (1325141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a759619d86d084eaff7cc38eb60351216903fddda8650ca2f7c160c6cb781307`  
		Last Modified: Sat, 12 Jan 2019 09:41:58 GMT  
		Size: 9.3 MB (9287641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6058fe748079f5adb5e8d9b370bc86a55fd06e017c33c723f3a5863339febc0a`  
		Last Modified: Wed, 16 Jan 2019 09:39:46 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:1.14.x` - linux; 386

```console
$ docker pull express-gateway@sha256:f9fd85db3628ad09a9bf1c85f79c0420e456f9392a169cd7f71f3af0ebedcac2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33161225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:519283eaeadc703eb016daf4d6fd5ec70ccff7be1d93ee4385e6f99ca9822f2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 12:30:36 GMT
ENV NODE_VERSION=10.15.0
# Thu, 27 Dec 2018 12:54:33 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 12:54:34 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 12:54:38 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 12:54:38 GMT
CMD ["node"]
# Sat, 12 Jan 2019 12:11:00 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Sat, 12 Jan 2019 12:11:00 GMT
ARG EG_VERSION=1.14.0
# Sat, 12 Jan 2019 12:11:21 GMT
# ARGS: EG_VERSION=1.14.0
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Sat, 12 Jan 2019 12:11:21 GMT
ENV NODE_ENV=production
# Sat, 12 Jan 2019 12:11:22 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Sat, 12 Jan 2019 12:11:22 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Sat, 12 Jan 2019 12:11:22 GMT
ENV CHOKIDAR_USEPOLLING=true
# Sat, 12 Jan 2019 12:11:22 GMT
VOLUME [/var/lib/eg]
# Sat, 12 Jan 2019 12:11:22 GMT
EXPOSE 8080 9876
# Sat, 12 Jan 2019 12:11:22 GMT
COPY file:4d2db412cc13154fc9f72e4ff7fe06336faae86dc73605dfff63caa1fc73efad in /usr/local/bin/ 
# Sat, 12 Jan 2019 12:11:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Jan 2019 12:11:23 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40fe193e84406967ea3efa7dba80aa45a4d93050159163d3a44acad8165b371d`  
		Last Modified: Thu, 27 Dec 2018 12:57:41 GMT  
		Size: 20.3 MB (20313176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799b9b6fc8030ef4c1b32f7488b5bea725ed8d9a236d17f661680924176e9c4c`  
		Last Modified: Thu, 27 Dec 2018 12:57:36 GMT  
		Size: 1.3 MB (1325191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2efb230632493ebec2307fbbc383975a24d210b2bf6711c11596d1fdea60df2`  
		Last Modified: Sat, 12 Jan 2019 12:11:35 GMT  
		Size: 9.3 MB (9250614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52cc0c5924e6515aecdd1f5b0cfef28030465b51137da2895e51c88b4a6b81c4`  
		Last Modified: Sat, 12 Jan 2019 12:11:31 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:1.14.x` - linux; ppc64le

```console
$ docker pull express-gateway@sha256:25c64d71d3fc48c1b8c652bfb68c4058a71db0843ab0930c7461490180809bc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32793969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c20fd2511a5a10911a87bbb1a77055d54d3ac2454da1dcd6eb09bcbc12c6fc6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 09:43:24 GMT
ENV NODE_VERSION=10.15.0
# Thu, 27 Dec 2018 09:54:33 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 09:54:36 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 09:54:44 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 09:54:46 GMT
CMD ["node"]
# Sat, 12 Jan 2019 09:17:23 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Sat, 12 Jan 2019 09:17:26 GMT
ARG EG_VERSION=1.14.0
# Sat, 12 Jan 2019 09:17:58 GMT
# ARGS: EG_VERSION=1.14.0
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Sat, 12 Jan 2019 09:18:03 GMT
ENV NODE_ENV=production
# Sat, 12 Jan 2019 09:18:06 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Sat, 12 Jan 2019 09:18:09 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Sat, 12 Jan 2019 09:18:10 GMT
ENV CHOKIDAR_USEPOLLING=true
# Sat, 12 Jan 2019 09:18:14 GMT
VOLUME [/var/lib/eg]
# Sat, 12 Jan 2019 09:18:16 GMT
EXPOSE 8080 9876
# Wed, 16 Jan 2019 09:17:07 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Wed, 16 Jan 2019 09:17:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Jan 2019 09:17:14 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d460f3c714f03b90880280ababd03e57e88b2637f2814235481649255253b68`  
		Last Modified: Thu, 27 Dec 2018 10:00:40 GMT  
		Size: 20.0 MB (19986711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4f23dcd181e16a54910a8996ed6050d634e341294801b54b3a364479347974`  
		Last Modified: Thu, 27 Dec 2018 10:00:34 GMT  
		Size: 1.3 MB (1325177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:962386f62ac8b2c61a5795d590d3aaf26971a84d61d2daa5509a49ee8cf303c0`  
		Last Modified: Sat, 12 Jan 2019 09:18:42 GMT  
		Size: 9.3 MB (9286635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06ffc0db5374ed8bb3b2acb2440af97d72c030e10d1fd79476f982852d87f57`  
		Last Modified: Wed, 16 Jan 2019 09:17:27 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:1.14.x` - linux; s390x

```console
$ docker pull express-gateway@sha256:258604290c2d21b2cb7d697181281967c1236613c3b83e013178010826e5ca63
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.1 MB (33128626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc577104cdfcb3f947b34f5d83dfceeb1039accb19336d1c5b3fccf97a1e2bea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 13:20:17 GMT
ENV NODE_VERSION=10.15.0
# Thu, 27 Dec 2018 13:33:13 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 13:33:14 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 13:33:18 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 13:33:18 GMT
CMD ["node"]
# Sat, 12 Jan 2019 12:41:28 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Sat, 12 Jan 2019 12:41:28 GMT
ARG EG_VERSION=1.14.0
# Sat, 12 Jan 2019 12:41:43 GMT
# ARGS: EG_VERSION=1.14.0
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Sat, 12 Jan 2019 12:41:44 GMT
ENV NODE_ENV=production
# Sat, 12 Jan 2019 12:41:44 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Sat, 12 Jan 2019 12:41:44 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Sat, 12 Jan 2019 12:41:44 GMT
ENV CHOKIDAR_USEPOLLING=true
# Sat, 12 Jan 2019 12:41:45 GMT
VOLUME [/var/lib/eg]
# Sat, 12 Jan 2019 12:41:45 GMT
EXPOSE 8080 9876
# Sat, 12 Jan 2019 12:41:45 GMT
COPY file:4d2db412cc13154fc9f72e4ff7fe06336faae86dc73605dfff63caa1fc73efad in /usr/local/bin/ 
# Sat, 12 Jan 2019 12:41:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Jan 2019 12:41:45 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9dc3bfe2dd2edd41133bb901ea2fd9643e3f7a0376b31180afa9f9caf321dc`  
		Last Modified: Thu, 27 Dec 2018 13:36:03 GMT  
		Size: 20.2 MB (20209701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad0adbcf4fbd9918eb18e9c55fd7ab6033f78e7b1a2810ec9459ead1367c538`  
		Last Modified: Thu, 27 Dec 2018 13:35:59 GMT  
		Size: 1.3 MB (1325136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c412410d4738da2d5ccf2ba44d418f6d62c3dabfd8558d4b46b057ef5a0685b9`  
		Last Modified: Sat, 12 Jan 2019 12:41:58 GMT  
		Size: 9.3 MB (9285265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1d59faacd140100229dc36770fab5b89564fa637cd62ffbf55f57721794fbb`  
		Last Modified: Sat, 12 Jan 2019 12:41:56 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `express-gateway:1.x`

```console
$ docker pull express-gateway@sha256:e081a2bf7b2f8b72630e79be657929ad722c42c8148f1a489c651ed85e046553
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `express-gateway:1.x` - linux; amd64

```console
$ docker pull express-gateway@sha256:222c5b9178561c9edd0498b3dde89d6938e5dab8d10c01908d0118ced097d0e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.1 MB (33107119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2d7ec36e39bdf1c157e13c7f966c2456d4b9b0fdd2d32336a957e682bbd5417`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 02:23:11 GMT
ENV NODE_VERSION=10.15.0
# Thu, 27 Dec 2018 02:46:29 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 02:46:29 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 02:46:33 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 02:46:33 GMT
CMD ["node"]
# Sat, 12 Jan 2019 00:19:30 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Sat, 12 Jan 2019 00:19:30 GMT
ARG EG_VERSION=1.14.0
# Sat, 12 Jan 2019 00:19:52 GMT
# ARGS: EG_VERSION=1.14.0
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Sat, 12 Jan 2019 00:19:52 GMT
ENV NODE_ENV=production
# Sat, 12 Jan 2019 00:19:52 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Sat, 12 Jan 2019 00:19:52 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Sat, 12 Jan 2019 00:19:52 GMT
ENV CHOKIDAR_USEPOLLING=true
# Sat, 12 Jan 2019 00:19:53 GMT
VOLUME [/var/lib/eg]
# Sat, 12 Jan 2019 00:19:53 GMT
EXPOSE 8080 9876
# Wed, 16 Jan 2019 00:19:28 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Wed, 16 Jan 2019 00:19:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Jan 2019 00:19:29 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a675354a99c184543f062e1ccc35213d03c8209e2f3b94cd2223bf77033b9ef0`  
		Last Modified: Thu, 27 Dec 2018 02:51:31 GMT  
		Size: 20.3 MB (20287904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bda3c2a9f0c3f7c0cef9f892fa51d7f016bedda845a8d5b2d2a1eb0c40f7b8ae`  
		Last Modified: Thu, 27 Dec 2018 02:51:27 GMT  
		Size: 1.3 MB (1325123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c1eef3ef44d33fa13c34c94572eea90eedb70a3487d60a33974c91237c8a3b`  
		Last Modified: Sat, 12 Jan 2019 00:20:05 GMT  
		Size: 9.3 MB (9286574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd615714c56d7d4fbb2f7e63a44a7f2b0ed94751675ef3bfe641d4eea8218b4a`  
		Last Modified: Wed, 16 Jan 2019 00:19:36 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:1.x` - linux; arm64 variant v8

```console
$ docker pull express-gateway@sha256:d49f4a27ea853826754226d1ae8fac8c4507d9cd01b19c8cc7b14c61dc9a2730
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31927744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c400c124a26c0a4f53792eef9a12a5bad43751bbe8685ce8135efaae9940b933`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 10:45:42 GMT
ENV NODE_VERSION=10.15.0
# Thu, 27 Dec 2018 11:16:57 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 11:16:58 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 11:17:05 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 11:17:06 GMT
CMD ["node"]
# Sat, 12 Jan 2019 09:40:39 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Sat, 12 Jan 2019 09:40:40 GMT
ARG EG_VERSION=1.14.0
# Sat, 12 Jan 2019 09:41:24 GMT
# ARGS: EG_VERSION=1.14.0
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Sat, 12 Jan 2019 09:41:25 GMT
ENV NODE_ENV=production
# Sat, 12 Jan 2019 09:41:26 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Sat, 12 Jan 2019 09:41:27 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Sat, 12 Jan 2019 09:41:28 GMT
ENV CHOKIDAR_USEPOLLING=true
# Sat, 12 Jan 2019 09:41:29 GMT
VOLUME [/var/lib/eg]
# Sat, 12 Jan 2019 09:41:30 GMT
EXPOSE 8080 9876
# Wed, 16 Jan 2019 09:39:34 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Wed, 16 Jan 2019 09:39:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Jan 2019 09:39:36 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
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
	-	`sha256:fdb6e757dc5977af7255b6f6dd775610f0bd882fc958b79b5fb0c2dc8e361821`  
		Last Modified: Thu, 27 Dec 2018 11:22:06 GMT  
		Size: 19.2 MB (19214450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81fcb963d9d778438f33573c04e6d9e8d8e03afa139363607088bf0189d4732a`  
		Last Modified: Thu, 27 Dec 2018 11:21:58 GMT  
		Size: 1.3 MB (1325141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a759619d86d084eaff7cc38eb60351216903fddda8650ca2f7c160c6cb781307`  
		Last Modified: Sat, 12 Jan 2019 09:41:58 GMT  
		Size: 9.3 MB (9287641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6058fe748079f5adb5e8d9b370bc86a55fd06e017c33c723f3a5863339febc0a`  
		Last Modified: Wed, 16 Jan 2019 09:39:46 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:1.x` - linux; 386

```console
$ docker pull express-gateway@sha256:f9fd85db3628ad09a9bf1c85f79c0420e456f9392a169cd7f71f3af0ebedcac2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33161225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:519283eaeadc703eb016daf4d6fd5ec70ccff7be1d93ee4385e6f99ca9822f2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 12:30:36 GMT
ENV NODE_VERSION=10.15.0
# Thu, 27 Dec 2018 12:54:33 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 12:54:34 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 12:54:38 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 12:54:38 GMT
CMD ["node"]
# Sat, 12 Jan 2019 12:11:00 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Sat, 12 Jan 2019 12:11:00 GMT
ARG EG_VERSION=1.14.0
# Sat, 12 Jan 2019 12:11:21 GMT
# ARGS: EG_VERSION=1.14.0
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Sat, 12 Jan 2019 12:11:21 GMT
ENV NODE_ENV=production
# Sat, 12 Jan 2019 12:11:22 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Sat, 12 Jan 2019 12:11:22 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Sat, 12 Jan 2019 12:11:22 GMT
ENV CHOKIDAR_USEPOLLING=true
# Sat, 12 Jan 2019 12:11:22 GMT
VOLUME [/var/lib/eg]
# Sat, 12 Jan 2019 12:11:22 GMT
EXPOSE 8080 9876
# Sat, 12 Jan 2019 12:11:22 GMT
COPY file:4d2db412cc13154fc9f72e4ff7fe06336faae86dc73605dfff63caa1fc73efad in /usr/local/bin/ 
# Sat, 12 Jan 2019 12:11:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Jan 2019 12:11:23 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40fe193e84406967ea3efa7dba80aa45a4d93050159163d3a44acad8165b371d`  
		Last Modified: Thu, 27 Dec 2018 12:57:41 GMT  
		Size: 20.3 MB (20313176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799b9b6fc8030ef4c1b32f7488b5bea725ed8d9a236d17f661680924176e9c4c`  
		Last Modified: Thu, 27 Dec 2018 12:57:36 GMT  
		Size: 1.3 MB (1325191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2efb230632493ebec2307fbbc383975a24d210b2bf6711c11596d1fdea60df2`  
		Last Modified: Sat, 12 Jan 2019 12:11:35 GMT  
		Size: 9.3 MB (9250614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52cc0c5924e6515aecdd1f5b0cfef28030465b51137da2895e51c88b4a6b81c4`  
		Last Modified: Sat, 12 Jan 2019 12:11:31 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:1.x` - linux; ppc64le

```console
$ docker pull express-gateway@sha256:25c64d71d3fc48c1b8c652bfb68c4058a71db0843ab0930c7461490180809bc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32793969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c20fd2511a5a10911a87bbb1a77055d54d3ac2454da1dcd6eb09bcbc12c6fc6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 09:43:24 GMT
ENV NODE_VERSION=10.15.0
# Thu, 27 Dec 2018 09:54:33 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 09:54:36 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 09:54:44 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 09:54:46 GMT
CMD ["node"]
# Sat, 12 Jan 2019 09:17:23 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Sat, 12 Jan 2019 09:17:26 GMT
ARG EG_VERSION=1.14.0
# Sat, 12 Jan 2019 09:17:58 GMT
# ARGS: EG_VERSION=1.14.0
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Sat, 12 Jan 2019 09:18:03 GMT
ENV NODE_ENV=production
# Sat, 12 Jan 2019 09:18:06 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Sat, 12 Jan 2019 09:18:09 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Sat, 12 Jan 2019 09:18:10 GMT
ENV CHOKIDAR_USEPOLLING=true
# Sat, 12 Jan 2019 09:18:14 GMT
VOLUME [/var/lib/eg]
# Sat, 12 Jan 2019 09:18:16 GMT
EXPOSE 8080 9876
# Wed, 16 Jan 2019 09:17:07 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Wed, 16 Jan 2019 09:17:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Jan 2019 09:17:14 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d460f3c714f03b90880280ababd03e57e88b2637f2814235481649255253b68`  
		Last Modified: Thu, 27 Dec 2018 10:00:40 GMT  
		Size: 20.0 MB (19986711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4f23dcd181e16a54910a8996ed6050d634e341294801b54b3a364479347974`  
		Last Modified: Thu, 27 Dec 2018 10:00:34 GMT  
		Size: 1.3 MB (1325177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:962386f62ac8b2c61a5795d590d3aaf26971a84d61d2daa5509a49ee8cf303c0`  
		Last Modified: Sat, 12 Jan 2019 09:18:42 GMT  
		Size: 9.3 MB (9286635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06ffc0db5374ed8bb3b2acb2440af97d72c030e10d1fd79476f982852d87f57`  
		Last Modified: Wed, 16 Jan 2019 09:17:27 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:1.x` - linux; s390x

```console
$ docker pull express-gateway@sha256:258604290c2d21b2cb7d697181281967c1236613c3b83e013178010826e5ca63
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.1 MB (33128626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc577104cdfcb3f947b34f5d83dfceeb1039accb19336d1c5b3fccf97a1e2bea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 13:20:17 GMT
ENV NODE_VERSION=10.15.0
# Thu, 27 Dec 2018 13:33:13 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 13:33:14 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 13:33:18 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 13:33:18 GMT
CMD ["node"]
# Sat, 12 Jan 2019 12:41:28 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Sat, 12 Jan 2019 12:41:28 GMT
ARG EG_VERSION=1.14.0
# Sat, 12 Jan 2019 12:41:43 GMT
# ARGS: EG_VERSION=1.14.0
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Sat, 12 Jan 2019 12:41:44 GMT
ENV NODE_ENV=production
# Sat, 12 Jan 2019 12:41:44 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Sat, 12 Jan 2019 12:41:44 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Sat, 12 Jan 2019 12:41:44 GMT
ENV CHOKIDAR_USEPOLLING=true
# Sat, 12 Jan 2019 12:41:45 GMT
VOLUME [/var/lib/eg]
# Sat, 12 Jan 2019 12:41:45 GMT
EXPOSE 8080 9876
# Sat, 12 Jan 2019 12:41:45 GMT
COPY file:4d2db412cc13154fc9f72e4ff7fe06336faae86dc73605dfff63caa1fc73efad in /usr/local/bin/ 
# Sat, 12 Jan 2019 12:41:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Jan 2019 12:41:45 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9dc3bfe2dd2edd41133bb901ea2fd9643e3f7a0376b31180afa9f9caf321dc`  
		Last Modified: Thu, 27 Dec 2018 13:36:03 GMT  
		Size: 20.2 MB (20209701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad0adbcf4fbd9918eb18e9c55fd7ab6033f78e7b1a2810ec9459ead1367c538`  
		Last Modified: Thu, 27 Dec 2018 13:35:59 GMT  
		Size: 1.3 MB (1325136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c412410d4738da2d5ccf2ba44d418f6d62c3dabfd8558d4b46b057ef5a0685b9`  
		Last Modified: Sat, 12 Jan 2019 12:41:58 GMT  
		Size: 9.3 MB (9285265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1d59faacd140100229dc36770fab5b89564fa637cd62ffbf55f57721794fbb`  
		Last Modified: Sat, 12 Jan 2019 12:41:56 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `express-gateway:latest`

```console
$ docker pull express-gateway@sha256:e081a2bf7b2f8b72630e79be657929ad722c42c8148f1a489c651ed85e046553
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
$ docker pull express-gateway@sha256:222c5b9178561c9edd0498b3dde89d6938e5dab8d10c01908d0118ced097d0e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.1 MB (33107119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2d7ec36e39bdf1c157e13c7f966c2456d4b9b0fdd2d32336a957e682bbd5417`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 02:23:11 GMT
ENV NODE_VERSION=10.15.0
# Thu, 27 Dec 2018 02:46:29 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 02:46:29 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 02:46:33 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 02:46:33 GMT
CMD ["node"]
# Sat, 12 Jan 2019 00:19:30 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Sat, 12 Jan 2019 00:19:30 GMT
ARG EG_VERSION=1.14.0
# Sat, 12 Jan 2019 00:19:52 GMT
# ARGS: EG_VERSION=1.14.0
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Sat, 12 Jan 2019 00:19:52 GMT
ENV NODE_ENV=production
# Sat, 12 Jan 2019 00:19:52 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Sat, 12 Jan 2019 00:19:52 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Sat, 12 Jan 2019 00:19:52 GMT
ENV CHOKIDAR_USEPOLLING=true
# Sat, 12 Jan 2019 00:19:53 GMT
VOLUME [/var/lib/eg]
# Sat, 12 Jan 2019 00:19:53 GMT
EXPOSE 8080 9876
# Wed, 16 Jan 2019 00:19:28 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Wed, 16 Jan 2019 00:19:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Jan 2019 00:19:29 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a675354a99c184543f062e1ccc35213d03c8209e2f3b94cd2223bf77033b9ef0`  
		Last Modified: Thu, 27 Dec 2018 02:51:31 GMT  
		Size: 20.3 MB (20287904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bda3c2a9f0c3f7c0cef9f892fa51d7f016bedda845a8d5b2d2a1eb0c40f7b8ae`  
		Last Modified: Thu, 27 Dec 2018 02:51:27 GMT  
		Size: 1.3 MB (1325123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c1eef3ef44d33fa13c34c94572eea90eedb70a3487d60a33974c91237c8a3b`  
		Last Modified: Sat, 12 Jan 2019 00:20:05 GMT  
		Size: 9.3 MB (9286574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd615714c56d7d4fbb2f7e63a44a7f2b0ed94751675ef3bfe641d4eea8218b4a`  
		Last Modified: Wed, 16 Jan 2019 00:19:36 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:latest` - linux; arm64 variant v8

```console
$ docker pull express-gateway@sha256:d49f4a27ea853826754226d1ae8fac8c4507d9cd01b19c8cc7b14c61dc9a2730
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31927744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c400c124a26c0a4f53792eef9a12a5bad43751bbe8685ce8135efaae9940b933`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 10:45:42 GMT
ENV NODE_VERSION=10.15.0
# Thu, 27 Dec 2018 11:16:57 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 11:16:58 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 11:17:05 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 11:17:06 GMT
CMD ["node"]
# Sat, 12 Jan 2019 09:40:39 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Sat, 12 Jan 2019 09:40:40 GMT
ARG EG_VERSION=1.14.0
# Sat, 12 Jan 2019 09:41:24 GMT
# ARGS: EG_VERSION=1.14.0
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Sat, 12 Jan 2019 09:41:25 GMT
ENV NODE_ENV=production
# Sat, 12 Jan 2019 09:41:26 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Sat, 12 Jan 2019 09:41:27 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Sat, 12 Jan 2019 09:41:28 GMT
ENV CHOKIDAR_USEPOLLING=true
# Sat, 12 Jan 2019 09:41:29 GMT
VOLUME [/var/lib/eg]
# Sat, 12 Jan 2019 09:41:30 GMT
EXPOSE 8080 9876
# Wed, 16 Jan 2019 09:39:34 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Wed, 16 Jan 2019 09:39:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Jan 2019 09:39:36 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
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
	-	`sha256:fdb6e757dc5977af7255b6f6dd775610f0bd882fc958b79b5fb0c2dc8e361821`  
		Last Modified: Thu, 27 Dec 2018 11:22:06 GMT  
		Size: 19.2 MB (19214450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81fcb963d9d778438f33573c04e6d9e8d8e03afa139363607088bf0189d4732a`  
		Last Modified: Thu, 27 Dec 2018 11:21:58 GMT  
		Size: 1.3 MB (1325141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a759619d86d084eaff7cc38eb60351216903fddda8650ca2f7c160c6cb781307`  
		Last Modified: Sat, 12 Jan 2019 09:41:58 GMT  
		Size: 9.3 MB (9287641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6058fe748079f5adb5e8d9b370bc86a55fd06e017c33c723f3a5863339febc0a`  
		Last Modified: Wed, 16 Jan 2019 09:39:46 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:latest` - linux; 386

```console
$ docker pull express-gateway@sha256:f9fd85db3628ad09a9bf1c85f79c0420e456f9392a169cd7f71f3af0ebedcac2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33161225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:519283eaeadc703eb016daf4d6fd5ec70ccff7be1d93ee4385e6f99ca9822f2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 12:30:36 GMT
ENV NODE_VERSION=10.15.0
# Thu, 27 Dec 2018 12:54:33 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 12:54:34 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 12:54:38 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 12:54:38 GMT
CMD ["node"]
# Sat, 12 Jan 2019 12:11:00 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Sat, 12 Jan 2019 12:11:00 GMT
ARG EG_VERSION=1.14.0
# Sat, 12 Jan 2019 12:11:21 GMT
# ARGS: EG_VERSION=1.14.0
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Sat, 12 Jan 2019 12:11:21 GMT
ENV NODE_ENV=production
# Sat, 12 Jan 2019 12:11:22 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Sat, 12 Jan 2019 12:11:22 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Sat, 12 Jan 2019 12:11:22 GMT
ENV CHOKIDAR_USEPOLLING=true
# Sat, 12 Jan 2019 12:11:22 GMT
VOLUME [/var/lib/eg]
# Sat, 12 Jan 2019 12:11:22 GMT
EXPOSE 8080 9876
# Sat, 12 Jan 2019 12:11:22 GMT
COPY file:4d2db412cc13154fc9f72e4ff7fe06336faae86dc73605dfff63caa1fc73efad in /usr/local/bin/ 
# Sat, 12 Jan 2019 12:11:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Jan 2019 12:11:23 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40fe193e84406967ea3efa7dba80aa45a4d93050159163d3a44acad8165b371d`  
		Last Modified: Thu, 27 Dec 2018 12:57:41 GMT  
		Size: 20.3 MB (20313176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799b9b6fc8030ef4c1b32f7488b5bea725ed8d9a236d17f661680924176e9c4c`  
		Last Modified: Thu, 27 Dec 2018 12:57:36 GMT  
		Size: 1.3 MB (1325191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2efb230632493ebec2307fbbc383975a24d210b2bf6711c11596d1fdea60df2`  
		Last Modified: Sat, 12 Jan 2019 12:11:35 GMT  
		Size: 9.3 MB (9250614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52cc0c5924e6515aecdd1f5b0cfef28030465b51137da2895e51c88b4a6b81c4`  
		Last Modified: Sat, 12 Jan 2019 12:11:31 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:latest` - linux; ppc64le

```console
$ docker pull express-gateway@sha256:25c64d71d3fc48c1b8c652bfb68c4058a71db0843ab0930c7461490180809bc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32793969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c20fd2511a5a10911a87bbb1a77055d54d3ac2454da1dcd6eb09bcbc12c6fc6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 09:43:24 GMT
ENV NODE_VERSION=10.15.0
# Thu, 27 Dec 2018 09:54:33 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 09:54:36 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 09:54:44 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 09:54:46 GMT
CMD ["node"]
# Sat, 12 Jan 2019 09:17:23 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Sat, 12 Jan 2019 09:17:26 GMT
ARG EG_VERSION=1.14.0
# Sat, 12 Jan 2019 09:17:58 GMT
# ARGS: EG_VERSION=1.14.0
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Sat, 12 Jan 2019 09:18:03 GMT
ENV NODE_ENV=production
# Sat, 12 Jan 2019 09:18:06 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Sat, 12 Jan 2019 09:18:09 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Sat, 12 Jan 2019 09:18:10 GMT
ENV CHOKIDAR_USEPOLLING=true
# Sat, 12 Jan 2019 09:18:14 GMT
VOLUME [/var/lib/eg]
# Sat, 12 Jan 2019 09:18:16 GMT
EXPOSE 8080 9876
# Wed, 16 Jan 2019 09:17:07 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Wed, 16 Jan 2019 09:17:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Jan 2019 09:17:14 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d460f3c714f03b90880280ababd03e57e88b2637f2814235481649255253b68`  
		Last Modified: Thu, 27 Dec 2018 10:00:40 GMT  
		Size: 20.0 MB (19986711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4f23dcd181e16a54910a8996ed6050d634e341294801b54b3a364479347974`  
		Last Modified: Thu, 27 Dec 2018 10:00:34 GMT  
		Size: 1.3 MB (1325177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:962386f62ac8b2c61a5795d590d3aaf26971a84d61d2daa5509a49ee8cf303c0`  
		Last Modified: Sat, 12 Jan 2019 09:18:42 GMT  
		Size: 9.3 MB (9286635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06ffc0db5374ed8bb3b2acb2440af97d72c030e10d1fd79476f982852d87f57`  
		Last Modified: Wed, 16 Jan 2019 09:17:27 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:latest` - linux; s390x

```console
$ docker pull express-gateway@sha256:258604290c2d21b2cb7d697181281967c1236613c3b83e013178010826e5ca63
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.1 MB (33128626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc577104cdfcb3f947b34f5d83dfceeb1039accb19336d1c5b3fccf97a1e2bea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Thu, 27 Dec 2018 13:20:17 GMT
ENV NODE_VERSION=10.15.0
# Thu, 27 Dec 2018 13:33:13 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 27 Dec 2018 13:33:14 GMT
ENV YARN_VERSION=1.12.3
# Thu, 27 Dec 2018 13:33:18 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 27 Dec 2018 13:33:18 GMT
CMD ["node"]
# Sat, 12 Jan 2019 12:41:28 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Sat, 12 Jan 2019 12:41:28 GMT
ARG EG_VERSION=1.14.0
# Sat, 12 Jan 2019 12:41:43 GMT
# ARGS: EG_VERSION=1.14.0
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Sat, 12 Jan 2019 12:41:44 GMT
ENV NODE_ENV=production
# Sat, 12 Jan 2019 12:41:44 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Sat, 12 Jan 2019 12:41:44 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Sat, 12 Jan 2019 12:41:44 GMT
ENV CHOKIDAR_USEPOLLING=true
# Sat, 12 Jan 2019 12:41:45 GMT
VOLUME [/var/lib/eg]
# Sat, 12 Jan 2019 12:41:45 GMT
EXPOSE 8080 9876
# Sat, 12 Jan 2019 12:41:45 GMT
COPY file:4d2db412cc13154fc9f72e4ff7fe06336faae86dc73605dfff63caa1fc73efad in /usr/local/bin/ 
# Sat, 12 Jan 2019 12:41:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Jan 2019 12:41:45 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9dc3bfe2dd2edd41133bb901ea2fd9643e3f7a0376b31180afa9f9caf321dc`  
		Last Modified: Thu, 27 Dec 2018 13:36:03 GMT  
		Size: 20.2 MB (20209701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad0adbcf4fbd9918eb18e9c55fd7ab6033f78e7b1a2810ec9459ead1367c538`  
		Last Modified: Thu, 27 Dec 2018 13:35:59 GMT  
		Size: 1.3 MB (1325136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c412410d4738da2d5ccf2ba44d418f6d62c3dabfd8558d4b46b057ef5a0685b9`  
		Last Modified: Sat, 12 Jan 2019 12:41:58 GMT  
		Size: 9.3 MB (9285265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1d59faacd140100229dc36770fab5b89564fa637cd62ffbf55f57721794fbb`  
		Last Modified: Sat, 12 Jan 2019 12:41:56 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

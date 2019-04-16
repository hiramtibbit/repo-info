## `express-gateway:latest`

```console
$ docker pull express-gateway@sha256:5bbd5edbb7b6b76070047feff9a3564880bc55647d944d5aa1bd609cf4f43d1b
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
$ docker pull express-gateway@sha256:849b3bc3d97e85112b9b4d2cd1ddb01e5f36f9c4266c097ba2e5ab55fde988d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34050885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:553f56064b8eb8530f1d544af4c064d0c188c5b5d5916ca79b7feb2077f49936`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:00:58 GMT
ENV NODE_VERSION=10.15.3
# Wed, 10 Apr 2019 02:36:36 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 10 Apr 2019 02:36:37 GMT
ENV YARN_VERSION=1.13.0
# Wed, 10 Apr 2019 02:36:39 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 10 Apr 2019 02:36:39 GMT
CMD ["node"]
# Wed, 10 Apr 2019 03:45:55 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Mon, 15 Apr 2019 20:19:27 GMT
ARG EG_VERSION=1.16.3
# Mon, 15 Apr 2019 20:19:47 GMT
# ARGS: EG_VERSION=1.16.3
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Mon, 15 Apr 2019 20:19:47 GMT
ENV NODE_ENV=production
# Mon, 15 Apr 2019 20:19:48 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Mon, 15 Apr 2019 20:19:48 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Mon, 15 Apr 2019 20:19:48 GMT
ENV CHOKIDAR_USEPOLLING=true
# Mon, 15 Apr 2019 20:19:48 GMT
VOLUME [/var/lib/eg]
# Mon, 15 Apr 2019 20:19:48 GMT
EXPOSE 8080 9876
# Mon, 15 Apr 2019 20:19:48 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Mon, 15 Apr 2019 20:19:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 Apr 2019 20:19:49 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196de6260338029d039763384edeba125f3ef6b5e9fc6f71f7f85e30ca2d36ff`  
		Last Modified: Wed, 10 Apr 2019 02:38:27 GMT  
		Size: 20.1 MB (20059151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899054487695a9f70495a2ffde40b0323082b37e08ecfee74dbf5d9551314d85`  
		Last Modified: Wed, 10 Apr 2019 02:38:22 GMT  
		Size: 1.3 MB (1331877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568e417800a287045bc19c6f08fc0eeb40d43622bce7df27f409dd58440872b7`  
		Last Modified: Mon, 15 Apr 2019 20:20:01 GMT  
		Size: 9.9 MB (9902350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98821e109ec8934dd54efa7a7fa00e06886d9efa4af0787b43ff5323dc34e0e9`  
		Last Modified: Mon, 15 Apr 2019 20:19:58 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:latest` - linux; arm64 variant v8

```console
$ docker pull express-gateway@sha256:c639e207d13a6ce2779a9036c8f35814230467b10066a951b0016ba8274685d2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34114840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0a66cdf4f544fcbb9abb8ca97d3f1dcdacc5ac170144105a3802a3fce97aa11`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:31:28 GMT
ENV NODE_VERSION=10.15.3
# Wed, 10 Apr 2019 15:18:57 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 10 Apr 2019 15:18:58 GMT
ENV YARN_VERSION=1.13.0
# Wed, 10 Apr 2019 15:19:03 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 10 Apr 2019 15:19:04 GMT
CMD ["node"]
# Wed, 10 Apr 2019 16:30:26 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Tue, 16 Apr 2019 08:39:35 GMT
ARG EG_VERSION=1.16.3
# Tue, 16 Apr 2019 08:40:17 GMT
# ARGS: EG_VERSION=1.16.3
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Tue, 16 Apr 2019 08:40:18 GMT
ENV NODE_ENV=production
# Tue, 16 Apr 2019 08:40:19 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Tue, 16 Apr 2019 08:40:19 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Tue, 16 Apr 2019 08:40:20 GMT
ENV CHOKIDAR_USEPOLLING=true
# Tue, 16 Apr 2019 08:40:21 GMT
VOLUME [/var/lib/eg]
# Tue, 16 Apr 2019 08:40:21 GMT
EXPOSE 8080 9876
# Tue, 16 Apr 2019 08:40:22 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Tue, 16 Apr 2019 08:40:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Apr 2019 08:40:24 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca8fb32f50111e40484f750228becc282736c8aefe6bd2722271c407f5ecdcc`  
		Last Modified: Wed, 10 Apr 2019 15:21:57 GMT  
		Size: 20.2 MB (20190247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb498eab97d53c6114e7684d203004e18e293bfae6709c02c4705e9cdd023b8`  
		Last Modified: Wed, 10 Apr 2019 15:21:48 GMT  
		Size: 1.3 MB (1331917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996b6cbb1091cd7053f2f9af90d8b52fc30b4d3204c03ecfa1f28e3c496d2268`  
		Last Modified: Tue, 16 Apr 2019 08:40:45 GMT  
		Size: 9.9 MB (9903400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0567f6348771b0ef4b14fb3c568724d8848e6e8130e6a2ed9708f19e3657470f`  
		Last Modified: Tue, 16 Apr 2019 08:40:38 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:latest` - linux; 386

```console
$ docker pull express-gateway@sha256:d2a621c1feb5bb07e7ec3d7f228f477d0f9cfcde8a176ffb07ff51412eff3b04
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34140804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ef992cf0efee15f9434aad9a987cd7ba50b66155b06f676b56f490b6d8aeefc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:35:48 GMT
ENV NODE_VERSION=10.15.3
# Wed, 10 Apr 2019 13:01:23 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 10 Apr 2019 13:01:23 GMT
ENV YARN_VERSION=1.13.0
# Wed, 10 Apr 2019 13:01:26 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 10 Apr 2019 13:01:26 GMT
CMD ["node"]
# Wed, 10 Apr 2019 15:13:26 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Tue, 16 Apr 2019 11:19:23 GMT
ARG EG_VERSION=1.16.3
# Tue, 16 Apr 2019 11:19:43 GMT
# ARGS: EG_VERSION=1.16.3
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Tue, 16 Apr 2019 11:19:44 GMT
ENV NODE_ENV=production
# Tue, 16 Apr 2019 11:19:44 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Tue, 16 Apr 2019 11:19:44 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Tue, 16 Apr 2019 11:19:44 GMT
ENV CHOKIDAR_USEPOLLING=true
# Tue, 16 Apr 2019 11:19:45 GMT
VOLUME [/var/lib/eg]
# Tue, 16 Apr 2019 11:19:45 GMT
EXPOSE 8080 9876
# Tue, 16 Apr 2019 11:19:45 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Tue, 16 Apr 2019 11:19:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Apr 2019 11:19:45 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e998842588a901a7e142a110abb5c31d2874053e3dc3bf61c60fb947ff2aa23`  
		Last Modified: Wed, 10 Apr 2019 13:02:33 GMT  
		Size: 20.2 MB (20195294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8b3fbe87cfb37a6e49869ce8d8e33b6bc469921d875491f12ad36c50f6f5f8`  
		Last Modified: Wed, 10 Apr 2019 13:02:28 GMT  
		Size: 1.3 MB (1331922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74d655ed733f37d307ce2c62fca19f3d8656c5f9b7bba4c203d009df87554e3`  
		Last Modified: Tue, 16 Apr 2019 11:19:59 GMT  
		Size: 9.9 MB (9860928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba77552db2f13a193b4bf4561a376d510ba30647601ccd0a4fd6c6b66036cbc9`  
		Last Modified: Tue, 16 Apr 2019 11:19:54 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:latest` - linux; ppc64le

```console
$ docker pull express-gateway@sha256:10a9f22e92e180deb1a468da3c07712e5053762eed23346e542ccd29d877678a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.7 MB (35687518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d35a1c6bed92b79fc3865a783494b8522d67daa158345bf51fb8c7ad896f90e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:04:04 GMT
ENV NODE_VERSION=10.15.3
# Wed, 10 Apr 2019 10:16:58 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 10 Apr 2019 10:17:09 GMT
ENV YARN_VERSION=1.13.0
# Wed, 10 Apr 2019 10:17:29 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 10 Apr 2019 10:17:35 GMT
CMD ["node"]
# Wed, 10 Apr 2019 11:26:33 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Tue, 16 Apr 2019 08:17:39 GMT
ARG EG_VERSION=1.16.3
# Tue, 16 Apr 2019 08:18:17 GMT
# ARGS: EG_VERSION=1.16.3
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Tue, 16 Apr 2019 08:18:24 GMT
ENV NODE_ENV=production
# Tue, 16 Apr 2019 08:18:29 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Tue, 16 Apr 2019 08:18:33 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Tue, 16 Apr 2019 08:18:39 GMT
ENV CHOKIDAR_USEPOLLING=true
# Tue, 16 Apr 2019 08:18:45 GMT
VOLUME [/var/lib/eg]
# Tue, 16 Apr 2019 08:18:49 GMT
EXPOSE 8080 9876
# Tue, 16 Apr 2019 08:18:53 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Tue, 16 Apr 2019 08:18:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Apr 2019 08:19:02 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dfd792b4a2ef6007223b02c0d6777d603b42b55a3488affa905e42b18f28fa5`  
		Last Modified: Wed, 10 Apr 2019 10:20:51 GMT  
		Size: 21.7 MB (21671090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7836e55e75e181579c894e773335f88281ad7a7621bc7ee3b4c55152065d0374`  
		Last Modified: Wed, 10 Apr 2019 10:20:45 GMT  
		Size: 1.3 MB (1331992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce5977ce44da8cb889b50f02cee09bc621a38d281b1d3a209c2a0eb8b9cd3854`  
		Last Modified: Tue, 16 Apr 2019 08:19:33 GMT  
		Size: 9.9 MB (9902916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecca5f76be8606bd23fd1a6a0d2f64cf262139e1955d7def2418186eef0ed2c0`  
		Last Modified: Tue, 16 Apr 2019 08:19:26 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:latest` - linux; s390x

```console
$ docker pull express-gateway@sha256:d322e7371d4bbdff62723ae7a41a5c088c99c36fcecc0d0662f0e624698a530c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33700856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ced1c4c00d4f819899e015895102046981c7f0f9ff9d33e629851533f136e50c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 13:31:25 GMT
ENV NODE_VERSION=10.15.3
# Wed, 10 Apr 2019 13:52:37 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 10 Apr 2019 13:52:38 GMT
ENV YARN_VERSION=1.13.0
# Wed, 10 Apr 2019 13:52:41 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 10 Apr 2019 13:52:41 GMT
CMD ["node"]
# Wed, 10 Apr 2019 15:00:18 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Tue, 16 Apr 2019 11:41:36 GMT
ARG EG_VERSION=1.16.3
# Tue, 16 Apr 2019 11:42:38 GMT
# ARGS: EG_VERSION=1.16.3
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Tue, 16 Apr 2019 11:42:39 GMT
ENV NODE_ENV=production
# Tue, 16 Apr 2019 11:42:40 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Tue, 16 Apr 2019 11:42:40 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Tue, 16 Apr 2019 11:42:41 GMT
ENV CHOKIDAR_USEPOLLING=true
# Tue, 16 Apr 2019 11:42:41 GMT
VOLUME [/var/lib/eg]
# Tue, 16 Apr 2019 11:42:42 GMT
EXPOSE 8080 9876
# Tue, 16 Apr 2019 11:42:43 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Tue, 16 Apr 2019 11:42:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Apr 2019 11:42:44 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db59ad70d157b54e1c5722be596337b37915503060f969f5348a84ba6912eff`  
		Last Modified: Wed, 10 Apr 2019 13:54:42 GMT  
		Size: 19.9 MB (19928211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0aa143973a00987d473e7b0929b041107bb8288c8d90ffa7cf10649ba9b9301`  
		Last Modified: Wed, 10 Apr 2019 13:54:37 GMT  
		Size: 1.3 MB (1331888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8586a68aca36c23cc43af513e5d1795ddabb00ca3d5d5aa1b44bdd337ac76b87`  
		Last Modified: Tue, 16 Apr 2019 11:43:10 GMT  
		Size: 9.9 MB (9896932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdc9570fee94611dffa90c3bd7f13a38f8eb5937cec867215c82bc41190b595`  
		Last Modified: Tue, 16 Apr 2019 11:43:05 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

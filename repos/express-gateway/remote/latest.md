## `express-gateway:latest`

```console
$ docker pull express-gateway@sha256:0a936a2944b540162c9cf3a849ba8e1c05a1f740b72ccaa2a9d47d335e1b7fe0
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
$ docker pull express-gateway@sha256:52815732d571adf41891bae25c61ec829a6e4ea471043ca59e7789cb82d0783e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 MB (34024977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9ccfb627d0e5a116c11fadec67248dc95608df4026da713ca0c9993a30526b9`
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
# Tue, 02 Apr 2019 22:20:18 GMT
ARG EG_VERSION=1.16.2
# Tue, 02 Apr 2019 22:20:38 GMT
# ARGS: EG_VERSION=1.16.2
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Tue, 02 Apr 2019 22:20:38 GMT
ENV NODE_ENV=production
# Tue, 02 Apr 2019 22:20:38 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Tue, 02 Apr 2019 22:20:38 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Tue, 02 Apr 2019 22:20:39 GMT
ENV CHOKIDAR_USEPOLLING=true
# Tue, 02 Apr 2019 22:20:39 GMT
VOLUME [/var/lib/eg]
# Tue, 02 Apr 2019 22:20:39 GMT
EXPOSE 8080 9876
# Tue, 02 Apr 2019 22:20:39 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Tue, 02 Apr 2019 22:20:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 02 Apr 2019 22:20:39 GMT
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
	-	`sha256:5753887f304488ce588cc37de75c6ff2a86d7abd82224df11c967c87e9be7272`  
		Last Modified: Tue, 02 Apr 2019 22:20:52 GMT  
		Size: 9.9 MB (9898231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d330a646afbc2b519195f6c4e51c02fa419df86cb3ea398d4c4dac4934ff2a5`  
		Last Modified: Tue, 02 Apr 2019 22:20:48 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:latest` - linux; arm64 variant v8

```console
$ docker pull express-gateway@sha256:b338329d68be1287ddc3d456ebab3f35168774b5877c99e84aa12700143c89f7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34081382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58fad6ee20adea6fefbdd5608c77e18eee6acf5e135d73d90175468370fda75e`
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
# Wed, 03 Apr 2019 08:56:28 GMT
ARG EG_VERSION=1.16.2
# Wed, 03 Apr 2019 08:57:09 GMT
# ARGS: EG_VERSION=1.16.2
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Wed, 03 Apr 2019 08:57:10 GMT
ENV NODE_ENV=production
# Wed, 03 Apr 2019 08:57:11 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Wed, 03 Apr 2019 08:57:12 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Wed, 03 Apr 2019 08:57:12 GMT
ENV CHOKIDAR_USEPOLLING=true
# Wed, 03 Apr 2019 08:57:13 GMT
VOLUME [/var/lib/eg]
# Wed, 03 Apr 2019 08:57:14 GMT
EXPOSE 8080 9876
# Wed, 03 Apr 2019 08:57:14 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Wed, 03 Apr 2019 08:57:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Apr 2019 08:57:15 GMT
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
	-	`sha256:5f1bdae707290f7af04eba6040da6e8177bd493a499c5b262a8a7099b342cd24`  
		Last Modified: Wed, 03 Apr 2019 08:57:39 GMT  
		Size: 9.9 MB (9899936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae90a50a8d1d8242763cab7c8d02a0a9f897843953fca861c66dcc6cd78e4f4`  
		Last Modified: Wed, 03 Apr 2019 08:57:31 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:latest` - linux; 386

```console
$ docker pull express-gateway@sha256:9b4b29164a8d75837b9ef4a548bbf51e88ebca2478bd78a71f972c87457881fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34107277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95e2f44ecca849c0ca681f18935fd297459b373684283a4b1864520eefd7c5b7`
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
# Tue, 02 Apr 2019 10:41:18 GMT
ARG EG_VERSION=1.16.1
# Tue, 02 Apr 2019 10:41:38 GMT
# ARGS: EG_VERSION=1.16.1
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Tue, 02 Apr 2019 10:41:39 GMT
ENV NODE_ENV=production
# Tue, 02 Apr 2019 10:41:39 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Tue, 02 Apr 2019 10:41:39 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Tue, 02 Apr 2019 10:41:39 GMT
ENV CHOKIDAR_USEPOLLING=true
# Tue, 02 Apr 2019 10:41:40 GMT
VOLUME [/var/lib/eg]
# Tue, 02 Apr 2019 10:41:40 GMT
EXPOSE 8080 9876
# Tue, 02 Apr 2019 10:41:40 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Tue, 02 Apr 2019 10:41:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 02 Apr 2019 10:41:40 GMT
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
	-	`sha256:69ad216f77d51c7e33a411bf157ae557c2c09f4da2cfeda553f3141037a31454`  
		Last Modified: Tue, 02 Apr 2019 10:41:58 GMT  
		Size: 9.9 MB (9859830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d4b6f03dcf506a0bda8edc5b3c37c8dbae92fb4944ea5283e4bfc12022db57`  
		Last Modified: Tue, 02 Apr 2019 10:41:49 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:latest` - linux; ppc64le

```console
$ docker pull express-gateway@sha256:ffaa213987f9636a823a08048376aa50655f9dfdb7905d6a0ce30d60335ea09b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.7 MB (35685520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08c24834661ceff18c8025e35bece3c181836a0162c5c4d1cfd985234fa76bc2`
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
# Wed, 03 Apr 2019 08:28:22 GMT
ARG EG_VERSION=1.16.2
# Wed, 03 Apr 2019 08:29:04 GMT
# ARGS: EG_VERSION=1.16.2
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Wed, 03 Apr 2019 08:29:10 GMT
ENV NODE_ENV=production
# Wed, 03 Apr 2019 08:29:13 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Wed, 03 Apr 2019 08:29:16 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Wed, 03 Apr 2019 08:29:20 GMT
ENV CHOKIDAR_USEPOLLING=true
# Wed, 03 Apr 2019 08:29:26 GMT
VOLUME [/var/lib/eg]
# Wed, 03 Apr 2019 08:29:29 GMT
EXPOSE 8080 9876
# Wed, 03 Apr 2019 08:29:31 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Wed, 03 Apr 2019 08:29:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Apr 2019 08:29:35 GMT
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
	-	`sha256:17fe78f1a43b699f2d6ea2acf6af7a8ed10c6e11a4bd12f81b5c4add6ffc256e`  
		Last Modified: Wed, 03 Apr 2019 08:29:57 GMT  
		Size: 9.9 MB (9899396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c8548dd4f9a70bda98e635839f87dfe3c7bf1b2b95f5351202a085fe06e2b32`  
		Last Modified: Wed, 03 Apr 2019 08:29:52 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:latest` - linux; s390x

```console
$ docker pull express-gateway@sha256:dd2de9d6ebaa920873cac1c0b4c716afd13ba84ad61c0c1a6e4d0a53a8fbc185
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33677553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc634c5fcb4e5ce9bdb4e495880d14385228d0bef60359bb4496693c87abda77`
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
# Tue, 02 Apr 2019 11:41:36 GMT
ARG EG_VERSION=1.16.1
# Tue, 02 Apr 2019 11:42:47 GMT
# ARGS: EG_VERSION=1.16.1
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Tue, 02 Apr 2019 11:42:48 GMT
ENV NODE_ENV=production
# Tue, 02 Apr 2019 11:42:48 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Tue, 02 Apr 2019 11:42:49 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Tue, 02 Apr 2019 11:42:50 GMT
ENV CHOKIDAR_USEPOLLING=true
# Tue, 02 Apr 2019 11:42:51 GMT
VOLUME [/var/lib/eg]
# Tue, 02 Apr 2019 11:42:51 GMT
EXPOSE 8080 9876
# Tue, 02 Apr 2019 11:42:52 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Tue, 02 Apr 2019 11:42:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 02 Apr 2019 11:42:54 GMT
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
	-	`sha256:07c15fc371bffbe9720937004604039abb67ec0c9b099e2cfb1141ab60b90aa8`  
		Last Modified: Tue, 02 Apr 2019 11:43:28 GMT  
		Size: 9.9 MB (9895966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fcf920fa7d3f935c032add76c245e33d85eb9ec742aff88336076b87ce0680c`  
		Last Modified: Tue, 02 Apr 2019 11:43:23 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

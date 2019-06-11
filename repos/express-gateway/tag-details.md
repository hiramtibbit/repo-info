<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `express-gateway`

-	[`express-gateway:1.16.4`](#express-gateway1164)
-	[`express-gateway:1.16.x`](#express-gateway116x)
-	[`express-gateway:1.x`](#express-gateway1x)
-	[`express-gateway:latest`](#express-gatewaylatest)

## `express-gateway:1.16.4`

```console
$ docker pull express-gateway@sha256:1e66471841a5127605fef5bf497129cb0f7b86c2d93b2cb35ea04ea3f924dbe9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `express-gateway:1.16.4` - linux; amd64

```console
$ docker pull express-gateway@sha256:c300b7de72becafbe974419839b91026cc0ec827527c6257ae0d7420128dae93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35194332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de9dcb4cb47ad4159c25a4349e2cae9ae7b4a066dfbb9ad51c0b5b35a6322cee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 16:25:37 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 17:18:15 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 29 May 2019 17:18:16 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 17:18:20 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Jun 2019 23:34:33 GMT
COPY file:238737301d47304174e4d24f4def935b29b3069c03c72ae8de97d94624382fce in /usr/local/bin/ 
# Tue, 04 Jun 2019 23:34:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Jun 2019 23:34:34 GMT
CMD ["node"]
# Tue, 04 Jun 2019 23:56:47 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Tue, 04 Jun 2019 23:56:47 GMT
ARG EG_VERSION=1.16.4
# Tue, 04 Jun 2019 23:57:25 GMT
# ARGS: EG_VERSION=1.16.4
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Tue, 04 Jun 2019 23:57:25 GMT
ENV NODE_ENV=production
# Tue, 04 Jun 2019 23:57:25 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Tue, 04 Jun 2019 23:57:25 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Tue, 04 Jun 2019 23:57:26 GMT
ENV CHOKIDAR_USEPOLLING=true
# Tue, 04 Jun 2019 23:57:26 GMT
VOLUME [/var/lib/eg]
# Tue, 04 Jun 2019 23:57:26 GMT
EXPOSE 8080 9876
# Tue, 04 Jun 2019 23:57:26 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Tue, 04 Jun 2019 23:57:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Jun 2019 23:57:27 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbec467490661835c5dcf69e5b09954d1f355ab5a7b2ba24bdfad236e19814ff`  
		Last Modified: Wed, 29 May 2019 17:22:49 GMT  
		Size: 21.4 MB (21430339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e5cf82282d283e6aba9c177b94d2cf52fde0daf6e8d26508129efb044638b6`  
		Last Modified: Wed, 29 May 2019 17:22:42 GMT  
		Size: 1.3 MB (1334654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de6895db72f33b1abe0fb7f1faaa9f47e4f009595d985eb4cf537efd8645d83`  
		Last Modified: Tue, 04 Jun 2019 23:39:28 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12806ff7527d09c2ceb0e420e3c4db429f93c2ca2af7cabe75e9043888fb4bf9`  
		Last Modified: Tue, 04 Jun 2019 23:57:39 GMT  
		Size: 9.7 MB (9671528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cebb91dab630163fdb5ac126d0d86ce3e8955c9d2a27731f4b8da91eff267fc`  
		Last Modified: Tue, 04 Jun 2019 23:57:36 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:1.16.4` - linux; arm64 variant v8

```console
$ docker pull express-gateway@sha256:fcfd72e2f67aa3c85ee60c8e4f441e78da8acbe20337d1f5c9c76abeedbc7669
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.3 MB (35270348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6b1cdeee7e09a5f7c24e88754e6b0dfd92dad43413310aa9cb90239ce15d00d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 16:40:30 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 16:46:22 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 29 May 2019 16:46:23 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 16:46:26 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 29 May 2019 16:46:27 GMT
CMD ["node"]
# Mon, 03 Jun 2019 20:47:14 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Mon, 03 Jun 2019 20:47:14 GMT
ARG EG_VERSION=1.16.4
# Mon, 03 Jun 2019 20:47:38 GMT
# ARGS: EG_VERSION=1.16.4
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Mon, 03 Jun 2019 20:47:40 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 20:47:40 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Mon, 03 Jun 2019 20:47:40 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Mon, 03 Jun 2019 20:47:41 GMT
ENV CHOKIDAR_USEPOLLING=true
# Mon, 03 Jun 2019 20:47:41 GMT
VOLUME [/var/lib/eg]
# Mon, 03 Jun 2019 20:47:41 GMT
EXPOSE 8080 9876
# Mon, 03 Jun 2019 20:47:42 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Mon, 03 Jun 2019 20:47:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 20:47:43 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04df7ada72768674788987bbef6053253be207e2fcd0d2e7f7ae57ca368959ea`  
		Last Modified: Wed, 29 May 2019 16:48:35 GMT  
		Size: 21.6 MB (21575111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5165d52ffdf7ce85e587c20f72e4ed3b47a5ee06c10f9771f47289a99f4260fd`  
		Last Modified: Wed, 29 May 2019 16:48:28 GMT  
		Size: 1.3 MB (1334722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3de37a1228fe2becc8da2c09cd102e1d304a12608a8edf09debab049d4f23723`  
		Last Modified: Mon, 03 Jun 2019 20:47:57 GMT  
		Size: 9.7 MB (9671240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78f4c6041960aa7007e8aae3fd566870b41df5ac273f8d1a56e21d7552bad524`  
		Last Modified: Mon, 03 Jun 2019 20:47:52 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:1.16.4` - linux; 386

```console
$ docker pull express-gateway@sha256:3d22932e52d52b7763ce4e865c3d41b94ad992d6906c1cae45d0e1612799c0e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35242593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c75661c7cb81df30332e20e4b98ad1d3f16b8ebffa3e34ec6b4f59253675d4b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 16:39:17 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 17:26:25 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 29 May 2019 17:26:25 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 17:26:28 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Jun 2019 23:44:47 GMT
COPY file:238737301d47304174e4d24f4def935b29b3069c03c72ae8de97d94624382fce in /usr/local/bin/ 
# Tue, 04 Jun 2019 23:44:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Jun 2019 23:44:48 GMT
CMD ["node"]
# Wed, 05 Jun 2019 00:23:34 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Wed, 05 Jun 2019 00:23:35 GMT
ARG EG_VERSION=1.16.4
# Wed, 05 Jun 2019 00:23:56 GMT
# ARGS: EG_VERSION=1.16.4
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Wed, 05 Jun 2019 00:23:56 GMT
ENV NODE_ENV=production
# Wed, 05 Jun 2019 00:23:57 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Wed, 05 Jun 2019 00:23:57 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Wed, 05 Jun 2019 00:23:57 GMT
ENV CHOKIDAR_USEPOLLING=true
# Wed, 05 Jun 2019 00:23:57 GMT
VOLUME [/var/lib/eg]
# Wed, 05 Jun 2019 00:23:57 GMT
EXPOSE 8080 9876
# Wed, 05 Jun 2019 00:23:57 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Wed, 05 Jun 2019 00:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 00:23:58 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5085b6b7fb081fc251af55fa602375de69fbd4a8eab52035c880fd7d15a2ae06`  
		Last Modified: Wed, 29 May 2019 17:27:01 GMT  
		Size: 21.5 MB (21525639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b20c1a37383155ac701b155ad41610e098e84c492cd21a8f9a120d724127cc`  
		Last Modified: Wed, 29 May 2019 17:26:56 GMT  
		Size: 1.3 MB (1334715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689892156a7d1c195c564a7f4dc6409601040fbff23576cae4dd89d2696d2915`  
		Last Modified: Tue, 04 Jun 2019 23:45:56 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1981e3a0e9259b5c22c725f5da08d0cc2c1e0eeaa2238f1fe2fe9e1e7bce5141`  
		Last Modified: Wed, 05 Jun 2019 00:24:10 GMT  
		Size: 9.6 MB (9629370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767b8e518dd2ea8dda0dbfbfc84084ce093104e792fffd4daae9895e9e7f2654`  
		Last Modified: Wed, 05 Jun 2019 00:24:06 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:1.16.4` - linux; ppc64le

```console
$ docker pull express-gateway@sha256:715bcbed65e17c52c167135ba1dcf014daea8b827a11591e9d91cb2f73c2eb17
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37089309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7acccb6f62d6c578ff6cd6206f4430db0da562423ebb538d8adcaa97feb3e070`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 19:58:31 GMT
ENV NODE_VERSION=10.16.0
# Thu, 30 May 2019 20:13:49 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 30 May 2019 20:13:54 GMT
ENV YARN_VERSION=1.16.0
# Thu, 30 May 2019 20:14:06 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Jun 2019 22:56:38 GMT
COPY file:238737301d47304174e4d24f4def935b29b3069c03c72ae8de97d94624382fce in /usr/local/bin/ 
# Tue, 04 Jun 2019 22:56:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Jun 2019 22:56:52 GMT
CMD ["node"]
# Tue, 11 Jun 2019 12:36:49 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Tue, 11 Jun 2019 12:36:55 GMT
ARG EG_VERSION=1.16.4
# Tue, 11 Jun 2019 12:37:31 GMT
# ARGS: EG_VERSION=1.16.4
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Tue, 11 Jun 2019 12:37:38 GMT
ENV NODE_ENV=production
# Tue, 11 Jun 2019 12:37:44 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Tue, 11 Jun 2019 12:37:49 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Tue, 11 Jun 2019 12:37:54 GMT
ENV CHOKIDAR_USEPOLLING=true
# Tue, 11 Jun 2019 12:37:58 GMT
VOLUME [/var/lib/eg]
# Tue, 11 Jun 2019 12:38:03 GMT
EXPOSE 8080 9876
# Tue, 11 Jun 2019 12:38:05 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Tue, 11 Jun 2019 12:38:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 12:38:15 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116e0b945f577ea77bee788c7d9edfe39191af855502fbb249447ddfe3d177a7`  
		Last Modified: Thu, 30 May 2019 20:26:02 GMT  
		Size: 23.3 MB (23308594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d349d00bf97db7d9c3daec22c43144ea6cef05aaffde875992b2340a43e8bc0d`  
		Last Modified: Thu, 30 May 2019 20:25:55 GMT  
		Size: 1.3 MB (1334719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf0bde32278891dabcaffc5aa167beec398a01d6a7480c51a3bf6bdba947a39`  
		Last Modified: Tue, 04 Jun 2019 23:03:21 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0657fe3f183485d66e5fdf1a25df155beb68852fe1c3b371b59325355e14f005`  
		Last Modified: Tue, 11 Jun 2019 12:38:39 GMT  
		Size: 9.7 MB (9664199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f386418238becdf25e972e86918c3a17005f8658676f5963d636948536fb5832`  
		Last Modified: Tue, 11 Jun 2019 12:38:33 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:1.16.4` - linux; s390x

```console
$ docker pull express-gateway@sha256:cb6a4df422bc148b1b0fe56083fd3e3460ea79cde0eabe457551f9ef6f896dd3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.9 MB (34872720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e332fc4295bbebe6590f7dd4a4b851683c2e416e6e6a59eba2b506a5cc67cee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 16:45:59 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 17:03:02 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 29 May 2019 17:03:03 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 17:03:06 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Jun 2019 22:30:42 GMT
COPY file:238737301d47304174e4d24f4def935b29b3069c03c72ae8de97d94624382fce in /usr/local/bin/ 
# Tue, 04 Jun 2019 22:30:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Jun 2019 22:30:42 GMT
CMD ["node"]
# Tue, 04 Jun 2019 22:51:13 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Tue, 04 Jun 2019 22:51:13 GMT
ARG EG_VERSION=1.16.4
# Tue, 04 Jun 2019 22:51:28 GMT
# ARGS: EG_VERSION=1.16.4
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Tue, 04 Jun 2019 22:51:29 GMT
ENV NODE_ENV=production
# Tue, 04 Jun 2019 22:51:29 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Tue, 04 Jun 2019 22:51:29 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Tue, 04 Jun 2019 22:51:29 GMT
ENV CHOKIDAR_USEPOLLING=true
# Tue, 04 Jun 2019 22:51:30 GMT
VOLUME [/var/lib/eg]
# Tue, 04 Jun 2019 22:51:30 GMT
EXPOSE 8080 9876
# Tue, 04 Jun 2019 22:51:30 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Tue, 04 Jun 2019 22:51:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Jun 2019 22:51:31 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbc8f9bc872c1251ae7c84cdfe366a655469c86ce33f25620bbb153fc3d7529`  
		Last Modified: Wed, 29 May 2019 17:04:55 GMT  
		Size: 21.3 MB (21333462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be573f28f3c7dc962b5f793dc91e1817c668fee1045c906e7be9c78bdc89373c`  
		Last Modified: Wed, 29 May 2019 17:04:49 GMT  
		Size: 1.3 MB (1334719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555f830f48faff9b8c612f4707d988f7c2f1c04f43ad2c281200b3f6c9365dc3`  
		Last Modified: Tue, 04 Jun 2019 22:33:40 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76a38260b52dbcaa0bead785e3706afa638b8fa17a525695102a3faacd1e787d`  
		Last Modified: Tue, 04 Jun 2019 22:51:50 GMT  
		Size: 9.7 MB (9660431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a239f5a72e3d790480230d7729a7a7038c8e5daa19ae62f7068cf526db12e01c`  
		Last Modified: Tue, 04 Jun 2019 22:51:48 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `express-gateway:1.16.x`

```console
$ docker pull express-gateway@sha256:1e66471841a5127605fef5bf497129cb0f7b86c2d93b2cb35ea04ea3f924dbe9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `express-gateway:1.16.x` - linux; amd64

```console
$ docker pull express-gateway@sha256:c300b7de72becafbe974419839b91026cc0ec827527c6257ae0d7420128dae93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35194332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de9dcb4cb47ad4159c25a4349e2cae9ae7b4a066dfbb9ad51c0b5b35a6322cee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 16:25:37 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 17:18:15 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 29 May 2019 17:18:16 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 17:18:20 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Jun 2019 23:34:33 GMT
COPY file:238737301d47304174e4d24f4def935b29b3069c03c72ae8de97d94624382fce in /usr/local/bin/ 
# Tue, 04 Jun 2019 23:34:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Jun 2019 23:34:34 GMT
CMD ["node"]
# Tue, 04 Jun 2019 23:56:47 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Tue, 04 Jun 2019 23:56:47 GMT
ARG EG_VERSION=1.16.4
# Tue, 04 Jun 2019 23:57:25 GMT
# ARGS: EG_VERSION=1.16.4
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Tue, 04 Jun 2019 23:57:25 GMT
ENV NODE_ENV=production
# Tue, 04 Jun 2019 23:57:25 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Tue, 04 Jun 2019 23:57:25 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Tue, 04 Jun 2019 23:57:26 GMT
ENV CHOKIDAR_USEPOLLING=true
# Tue, 04 Jun 2019 23:57:26 GMT
VOLUME [/var/lib/eg]
# Tue, 04 Jun 2019 23:57:26 GMT
EXPOSE 8080 9876
# Tue, 04 Jun 2019 23:57:26 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Tue, 04 Jun 2019 23:57:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Jun 2019 23:57:27 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbec467490661835c5dcf69e5b09954d1f355ab5a7b2ba24bdfad236e19814ff`  
		Last Modified: Wed, 29 May 2019 17:22:49 GMT  
		Size: 21.4 MB (21430339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e5cf82282d283e6aba9c177b94d2cf52fde0daf6e8d26508129efb044638b6`  
		Last Modified: Wed, 29 May 2019 17:22:42 GMT  
		Size: 1.3 MB (1334654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de6895db72f33b1abe0fb7f1faaa9f47e4f009595d985eb4cf537efd8645d83`  
		Last Modified: Tue, 04 Jun 2019 23:39:28 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12806ff7527d09c2ceb0e420e3c4db429f93c2ca2af7cabe75e9043888fb4bf9`  
		Last Modified: Tue, 04 Jun 2019 23:57:39 GMT  
		Size: 9.7 MB (9671528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cebb91dab630163fdb5ac126d0d86ce3e8955c9d2a27731f4b8da91eff267fc`  
		Last Modified: Tue, 04 Jun 2019 23:57:36 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:1.16.x` - linux; arm64 variant v8

```console
$ docker pull express-gateway@sha256:fcfd72e2f67aa3c85ee60c8e4f441e78da8acbe20337d1f5c9c76abeedbc7669
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.3 MB (35270348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6b1cdeee7e09a5f7c24e88754e6b0dfd92dad43413310aa9cb90239ce15d00d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 16:40:30 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 16:46:22 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 29 May 2019 16:46:23 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 16:46:26 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 29 May 2019 16:46:27 GMT
CMD ["node"]
# Mon, 03 Jun 2019 20:47:14 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Mon, 03 Jun 2019 20:47:14 GMT
ARG EG_VERSION=1.16.4
# Mon, 03 Jun 2019 20:47:38 GMT
# ARGS: EG_VERSION=1.16.4
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Mon, 03 Jun 2019 20:47:40 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 20:47:40 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Mon, 03 Jun 2019 20:47:40 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Mon, 03 Jun 2019 20:47:41 GMT
ENV CHOKIDAR_USEPOLLING=true
# Mon, 03 Jun 2019 20:47:41 GMT
VOLUME [/var/lib/eg]
# Mon, 03 Jun 2019 20:47:41 GMT
EXPOSE 8080 9876
# Mon, 03 Jun 2019 20:47:42 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Mon, 03 Jun 2019 20:47:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 20:47:43 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04df7ada72768674788987bbef6053253be207e2fcd0d2e7f7ae57ca368959ea`  
		Last Modified: Wed, 29 May 2019 16:48:35 GMT  
		Size: 21.6 MB (21575111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5165d52ffdf7ce85e587c20f72e4ed3b47a5ee06c10f9771f47289a99f4260fd`  
		Last Modified: Wed, 29 May 2019 16:48:28 GMT  
		Size: 1.3 MB (1334722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3de37a1228fe2becc8da2c09cd102e1d304a12608a8edf09debab049d4f23723`  
		Last Modified: Mon, 03 Jun 2019 20:47:57 GMT  
		Size: 9.7 MB (9671240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78f4c6041960aa7007e8aae3fd566870b41df5ac273f8d1a56e21d7552bad524`  
		Last Modified: Mon, 03 Jun 2019 20:47:52 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:1.16.x` - linux; 386

```console
$ docker pull express-gateway@sha256:3d22932e52d52b7763ce4e865c3d41b94ad992d6906c1cae45d0e1612799c0e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35242593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c75661c7cb81df30332e20e4b98ad1d3f16b8ebffa3e34ec6b4f59253675d4b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 16:39:17 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 17:26:25 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 29 May 2019 17:26:25 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 17:26:28 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Jun 2019 23:44:47 GMT
COPY file:238737301d47304174e4d24f4def935b29b3069c03c72ae8de97d94624382fce in /usr/local/bin/ 
# Tue, 04 Jun 2019 23:44:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Jun 2019 23:44:48 GMT
CMD ["node"]
# Wed, 05 Jun 2019 00:23:34 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Wed, 05 Jun 2019 00:23:35 GMT
ARG EG_VERSION=1.16.4
# Wed, 05 Jun 2019 00:23:56 GMT
# ARGS: EG_VERSION=1.16.4
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Wed, 05 Jun 2019 00:23:56 GMT
ENV NODE_ENV=production
# Wed, 05 Jun 2019 00:23:57 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Wed, 05 Jun 2019 00:23:57 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Wed, 05 Jun 2019 00:23:57 GMT
ENV CHOKIDAR_USEPOLLING=true
# Wed, 05 Jun 2019 00:23:57 GMT
VOLUME [/var/lib/eg]
# Wed, 05 Jun 2019 00:23:57 GMT
EXPOSE 8080 9876
# Wed, 05 Jun 2019 00:23:57 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Wed, 05 Jun 2019 00:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 00:23:58 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5085b6b7fb081fc251af55fa602375de69fbd4a8eab52035c880fd7d15a2ae06`  
		Last Modified: Wed, 29 May 2019 17:27:01 GMT  
		Size: 21.5 MB (21525639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b20c1a37383155ac701b155ad41610e098e84c492cd21a8f9a120d724127cc`  
		Last Modified: Wed, 29 May 2019 17:26:56 GMT  
		Size: 1.3 MB (1334715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689892156a7d1c195c564a7f4dc6409601040fbff23576cae4dd89d2696d2915`  
		Last Modified: Tue, 04 Jun 2019 23:45:56 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1981e3a0e9259b5c22c725f5da08d0cc2c1e0eeaa2238f1fe2fe9e1e7bce5141`  
		Last Modified: Wed, 05 Jun 2019 00:24:10 GMT  
		Size: 9.6 MB (9629370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767b8e518dd2ea8dda0dbfbfc84084ce093104e792fffd4daae9895e9e7f2654`  
		Last Modified: Wed, 05 Jun 2019 00:24:06 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:1.16.x` - linux; ppc64le

```console
$ docker pull express-gateway@sha256:715bcbed65e17c52c167135ba1dcf014daea8b827a11591e9d91cb2f73c2eb17
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37089309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7acccb6f62d6c578ff6cd6206f4430db0da562423ebb538d8adcaa97feb3e070`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 19:58:31 GMT
ENV NODE_VERSION=10.16.0
# Thu, 30 May 2019 20:13:49 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 30 May 2019 20:13:54 GMT
ENV YARN_VERSION=1.16.0
# Thu, 30 May 2019 20:14:06 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Jun 2019 22:56:38 GMT
COPY file:238737301d47304174e4d24f4def935b29b3069c03c72ae8de97d94624382fce in /usr/local/bin/ 
# Tue, 04 Jun 2019 22:56:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Jun 2019 22:56:52 GMT
CMD ["node"]
# Tue, 11 Jun 2019 12:36:49 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Tue, 11 Jun 2019 12:36:55 GMT
ARG EG_VERSION=1.16.4
# Tue, 11 Jun 2019 12:37:31 GMT
# ARGS: EG_VERSION=1.16.4
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Tue, 11 Jun 2019 12:37:38 GMT
ENV NODE_ENV=production
# Tue, 11 Jun 2019 12:37:44 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Tue, 11 Jun 2019 12:37:49 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Tue, 11 Jun 2019 12:37:54 GMT
ENV CHOKIDAR_USEPOLLING=true
# Tue, 11 Jun 2019 12:37:58 GMT
VOLUME [/var/lib/eg]
# Tue, 11 Jun 2019 12:38:03 GMT
EXPOSE 8080 9876
# Tue, 11 Jun 2019 12:38:05 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Tue, 11 Jun 2019 12:38:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 12:38:15 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116e0b945f577ea77bee788c7d9edfe39191af855502fbb249447ddfe3d177a7`  
		Last Modified: Thu, 30 May 2019 20:26:02 GMT  
		Size: 23.3 MB (23308594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d349d00bf97db7d9c3daec22c43144ea6cef05aaffde875992b2340a43e8bc0d`  
		Last Modified: Thu, 30 May 2019 20:25:55 GMT  
		Size: 1.3 MB (1334719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf0bde32278891dabcaffc5aa167beec398a01d6a7480c51a3bf6bdba947a39`  
		Last Modified: Tue, 04 Jun 2019 23:03:21 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0657fe3f183485d66e5fdf1a25df155beb68852fe1c3b371b59325355e14f005`  
		Last Modified: Tue, 11 Jun 2019 12:38:39 GMT  
		Size: 9.7 MB (9664199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f386418238becdf25e972e86918c3a17005f8658676f5963d636948536fb5832`  
		Last Modified: Tue, 11 Jun 2019 12:38:33 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:1.16.x` - linux; s390x

```console
$ docker pull express-gateway@sha256:cb6a4df422bc148b1b0fe56083fd3e3460ea79cde0eabe457551f9ef6f896dd3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.9 MB (34872720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e332fc4295bbebe6590f7dd4a4b851683c2e416e6e6a59eba2b506a5cc67cee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 16:45:59 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 17:03:02 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 29 May 2019 17:03:03 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 17:03:06 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Jun 2019 22:30:42 GMT
COPY file:238737301d47304174e4d24f4def935b29b3069c03c72ae8de97d94624382fce in /usr/local/bin/ 
# Tue, 04 Jun 2019 22:30:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Jun 2019 22:30:42 GMT
CMD ["node"]
# Tue, 04 Jun 2019 22:51:13 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Tue, 04 Jun 2019 22:51:13 GMT
ARG EG_VERSION=1.16.4
# Tue, 04 Jun 2019 22:51:28 GMT
# ARGS: EG_VERSION=1.16.4
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Tue, 04 Jun 2019 22:51:29 GMT
ENV NODE_ENV=production
# Tue, 04 Jun 2019 22:51:29 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Tue, 04 Jun 2019 22:51:29 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Tue, 04 Jun 2019 22:51:29 GMT
ENV CHOKIDAR_USEPOLLING=true
# Tue, 04 Jun 2019 22:51:30 GMT
VOLUME [/var/lib/eg]
# Tue, 04 Jun 2019 22:51:30 GMT
EXPOSE 8080 9876
# Tue, 04 Jun 2019 22:51:30 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Tue, 04 Jun 2019 22:51:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Jun 2019 22:51:31 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbc8f9bc872c1251ae7c84cdfe366a655469c86ce33f25620bbb153fc3d7529`  
		Last Modified: Wed, 29 May 2019 17:04:55 GMT  
		Size: 21.3 MB (21333462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be573f28f3c7dc962b5f793dc91e1817c668fee1045c906e7be9c78bdc89373c`  
		Last Modified: Wed, 29 May 2019 17:04:49 GMT  
		Size: 1.3 MB (1334719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555f830f48faff9b8c612f4707d988f7c2f1c04f43ad2c281200b3f6c9365dc3`  
		Last Modified: Tue, 04 Jun 2019 22:33:40 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76a38260b52dbcaa0bead785e3706afa638b8fa17a525695102a3faacd1e787d`  
		Last Modified: Tue, 04 Jun 2019 22:51:50 GMT  
		Size: 9.7 MB (9660431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a239f5a72e3d790480230d7729a7a7038c8e5daa19ae62f7068cf526db12e01c`  
		Last Modified: Tue, 04 Jun 2019 22:51:48 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `express-gateway:1.x`

```console
$ docker pull express-gateway@sha256:1e66471841a5127605fef5bf497129cb0f7b86c2d93b2cb35ea04ea3f924dbe9
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
$ docker pull express-gateway@sha256:c300b7de72becafbe974419839b91026cc0ec827527c6257ae0d7420128dae93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35194332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de9dcb4cb47ad4159c25a4349e2cae9ae7b4a066dfbb9ad51c0b5b35a6322cee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 16:25:37 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 17:18:15 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 29 May 2019 17:18:16 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 17:18:20 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Jun 2019 23:34:33 GMT
COPY file:238737301d47304174e4d24f4def935b29b3069c03c72ae8de97d94624382fce in /usr/local/bin/ 
# Tue, 04 Jun 2019 23:34:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Jun 2019 23:34:34 GMT
CMD ["node"]
# Tue, 04 Jun 2019 23:56:47 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Tue, 04 Jun 2019 23:56:47 GMT
ARG EG_VERSION=1.16.4
# Tue, 04 Jun 2019 23:57:25 GMT
# ARGS: EG_VERSION=1.16.4
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Tue, 04 Jun 2019 23:57:25 GMT
ENV NODE_ENV=production
# Tue, 04 Jun 2019 23:57:25 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Tue, 04 Jun 2019 23:57:25 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Tue, 04 Jun 2019 23:57:26 GMT
ENV CHOKIDAR_USEPOLLING=true
# Tue, 04 Jun 2019 23:57:26 GMT
VOLUME [/var/lib/eg]
# Tue, 04 Jun 2019 23:57:26 GMT
EXPOSE 8080 9876
# Tue, 04 Jun 2019 23:57:26 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Tue, 04 Jun 2019 23:57:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Jun 2019 23:57:27 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbec467490661835c5dcf69e5b09954d1f355ab5a7b2ba24bdfad236e19814ff`  
		Last Modified: Wed, 29 May 2019 17:22:49 GMT  
		Size: 21.4 MB (21430339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e5cf82282d283e6aba9c177b94d2cf52fde0daf6e8d26508129efb044638b6`  
		Last Modified: Wed, 29 May 2019 17:22:42 GMT  
		Size: 1.3 MB (1334654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de6895db72f33b1abe0fb7f1faaa9f47e4f009595d985eb4cf537efd8645d83`  
		Last Modified: Tue, 04 Jun 2019 23:39:28 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12806ff7527d09c2ceb0e420e3c4db429f93c2ca2af7cabe75e9043888fb4bf9`  
		Last Modified: Tue, 04 Jun 2019 23:57:39 GMT  
		Size: 9.7 MB (9671528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cebb91dab630163fdb5ac126d0d86ce3e8955c9d2a27731f4b8da91eff267fc`  
		Last Modified: Tue, 04 Jun 2019 23:57:36 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:1.x` - linux; arm64 variant v8

```console
$ docker pull express-gateway@sha256:fcfd72e2f67aa3c85ee60c8e4f441e78da8acbe20337d1f5c9c76abeedbc7669
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.3 MB (35270348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6b1cdeee7e09a5f7c24e88754e6b0dfd92dad43413310aa9cb90239ce15d00d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 16:40:30 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 16:46:22 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 29 May 2019 16:46:23 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 16:46:26 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 29 May 2019 16:46:27 GMT
CMD ["node"]
# Mon, 03 Jun 2019 20:47:14 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Mon, 03 Jun 2019 20:47:14 GMT
ARG EG_VERSION=1.16.4
# Mon, 03 Jun 2019 20:47:38 GMT
# ARGS: EG_VERSION=1.16.4
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Mon, 03 Jun 2019 20:47:40 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 20:47:40 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Mon, 03 Jun 2019 20:47:40 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Mon, 03 Jun 2019 20:47:41 GMT
ENV CHOKIDAR_USEPOLLING=true
# Mon, 03 Jun 2019 20:47:41 GMT
VOLUME [/var/lib/eg]
# Mon, 03 Jun 2019 20:47:41 GMT
EXPOSE 8080 9876
# Mon, 03 Jun 2019 20:47:42 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Mon, 03 Jun 2019 20:47:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 20:47:43 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04df7ada72768674788987bbef6053253be207e2fcd0d2e7f7ae57ca368959ea`  
		Last Modified: Wed, 29 May 2019 16:48:35 GMT  
		Size: 21.6 MB (21575111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5165d52ffdf7ce85e587c20f72e4ed3b47a5ee06c10f9771f47289a99f4260fd`  
		Last Modified: Wed, 29 May 2019 16:48:28 GMT  
		Size: 1.3 MB (1334722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3de37a1228fe2becc8da2c09cd102e1d304a12608a8edf09debab049d4f23723`  
		Last Modified: Mon, 03 Jun 2019 20:47:57 GMT  
		Size: 9.7 MB (9671240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78f4c6041960aa7007e8aae3fd566870b41df5ac273f8d1a56e21d7552bad524`  
		Last Modified: Mon, 03 Jun 2019 20:47:52 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:1.x` - linux; 386

```console
$ docker pull express-gateway@sha256:3d22932e52d52b7763ce4e865c3d41b94ad992d6906c1cae45d0e1612799c0e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35242593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c75661c7cb81df30332e20e4b98ad1d3f16b8ebffa3e34ec6b4f59253675d4b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 16:39:17 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 17:26:25 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 29 May 2019 17:26:25 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 17:26:28 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Jun 2019 23:44:47 GMT
COPY file:238737301d47304174e4d24f4def935b29b3069c03c72ae8de97d94624382fce in /usr/local/bin/ 
# Tue, 04 Jun 2019 23:44:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Jun 2019 23:44:48 GMT
CMD ["node"]
# Wed, 05 Jun 2019 00:23:34 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Wed, 05 Jun 2019 00:23:35 GMT
ARG EG_VERSION=1.16.4
# Wed, 05 Jun 2019 00:23:56 GMT
# ARGS: EG_VERSION=1.16.4
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Wed, 05 Jun 2019 00:23:56 GMT
ENV NODE_ENV=production
# Wed, 05 Jun 2019 00:23:57 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Wed, 05 Jun 2019 00:23:57 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Wed, 05 Jun 2019 00:23:57 GMT
ENV CHOKIDAR_USEPOLLING=true
# Wed, 05 Jun 2019 00:23:57 GMT
VOLUME [/var/lib/eg]
# Wed, 05 Jun 2019 00:23:57 GMT
EXPOSE 8080 9876
# Wed, 05 Jun 2019 00:23:57 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Wed, 05 Jun 2019 00:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 00:23:58 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5085b6b7fb081fc251af55fa602375de69fbd4a8eab52035c880fd7d15a2ae06`  
		Last Modified: Wed, 29 May 2019 17:27:01 GMT  
		Size: 21.5 MB (21525639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b20c1a37383155ac701b155ad41610e098e84c492cd21a8f9a120d724127cc`  
		Last Modified: Wed, 29 May 2019 17:26:56 GMT  
		Size: 1.3 MB (1334715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689892156a7d1c195c564a7f4dc6409601040fbff23576cae4dd89d2696d2915`  
		Last Modified: Tue, 04 Jun 2019 23:45:56 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1981e3a0e9259b5c22c725f5da08d0cc2c1e0eeaa2238f1fe2fe9e1e7bce5141`  
		Last Modified: Wed, 05 Jun 2019 00:24:10 GMT  
		Size: 9.6 MB (9629370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767b8e518dd2ea8dda0dbfbfc84084ce093104e792fffd4daae9895e9e7f2654`  
		Last Modified: Wed, 05 Jun 2019 00:24:06 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:1.x` - linux; ppc64le

```console
$ docker pull express-gateway@sha256:715bcbed65e17c52c167135ba1dcf014daea8b827a11591e9d91cb2f73c2eb17
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37089309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7acccb6f62d6c578ff6cd6206f4430db0da562423ebb538d8adcaa97feb3e070`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 19:58:31 GMT
ENV NODE_VERSION=10.16.0
# Thu, 30 May 2019 20:13:49 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 30 May 2019 20:13:54 GMT
ENV YARN_VERSION=1.16.0
# Thu, 30 May 2019 20:14:06 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Jun 2019 22:56:38 GMT
COPY file:238737301d47304174e4d24f4def935b29b3069c03c72ae8de97d94624382fce in /usr/local/bin/ 
# Tue, 04 Jun 2019 22:56:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Jun 2019 22:56:52 GMT
CMD ["node"]
# Tue, 11 Jun 2019 12:36:49 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Tue, 11 Jun 2019 12:36:55 GMT
ARG EG_VERSION=1.16.4
# Tue, 11 Jun 2019 12:37:31 GMT
# ARGS: EG_VERSION=1.16.4
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Tue, 11 Jun 2019 12:37:38 GMT
ENV NODE_ENV=production
# Tue, 11 Jun 2019 12:37:44 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Tue, 11 Jun 2019 12:37:49 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Tue, 11 Jun 2019 12:37:54 GMT
ENV CHOKIDAR_USEPOLLING=true
# Tue, 11 Jun 2019 12:37:58 GMT
VOLUME [/var/lib/eg]
# Tue, 11 Jun 2019 12:38:03 GMT
EXPOSE 8080 9876
# Tue, 11 Jun 2019 12:38:05 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Tue, 11 Jun 2019 12:38:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 12:38:15 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116e0b945f577ea77bee788c7d9edfe39191af855502fbb249447ddfe3d177a7`  
		Last Modified: Thu, 30 May 2019 20:26:02 GMT  
		Size: 23.3 MB (23308594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d349d00bf97db7d9c3daec22c43144ea6cef05aaffde875992b2340a43e8bc0d`  
		Last Modified: Thu, 30 May 2019 20:25:55 GMT  
		Size: 1.3 MB (1334719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf0bde32278891dabcaffc5aa167beec398a01d6a7480c51a3bf6bdba947a39`  
		Last Modified: Tue, 04 Jun 2019 23:03:21 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0657fe3f183485d66e5fdf1a25df155beb68852fe1c3b371b59325355e14f005`  
		Last Modified: Tue, 11 Jun 2019 12:38:39 GMT  
		Size: 9.7 MB (9664199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f386418238becdf25e972e86918c3a17005f8658676f5963d636948536fb5832`  
		Last Modified: Tue, 11 Jun 2019 12:38:33 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:1.x` - linux; s390x

```console
$ docker pull express-gateway@sha256:cb6a4df422bc148b1b0fe56083fd3e3460ea79cde0eabe457551f9ef6f896dd3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.9 MB (34872720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e332fc4295bbebe6590f7dd4a4b851683c2e416e6e6a59eba2b506a5cc67cee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 16:45:59 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 17:03:02 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 29 May 2019 17:03:03 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 17:03:06 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Jun 2019 22:30:42 GMT
COPY file:238737301d47304174e4d24f4def935b29b3069c03c72ae8de97d94624382fce in /usr/local/bin/ 
# Tue, 04 Jun 2019 22:30:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Jun 2019 22:30:42 GMT
CMD ["node"]
# Tue, 04 Jun 2019 22:51:13 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Tue, 04 Jun 2019 22:51:13 GMT
ARG EG_VERSION=1.16.4
# Tue, 04 Jun 2019 22:51:28 GMT
# ARGS: EG_VERSION=1.16.4
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Tue, 04 Jun 2019 22:51:29 GMT
ENV NODE_ENV=production
# Tue, 04 Jun 2019 22:51:29 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Tue, 04 Jun 2019 22:51:29 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Tue, 04 Jun 2019 22:51:29 GMT
ENV CHOKIDAR_USEPOLLING=true
# Tue, 04 Jun 2019 22:51:30 GMT
VOLUME [/var/lib/eg]
# Tue, 04 Jun 2019 22:51:30 GMT
EXPOSE 8080 9876
# Tue, 04 Jun 2019 22:51:30 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Tue, 04 Jun 2019 22:51:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Jun 2019 22:51:31 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbc8f9bc872c1251ae7c84cdfe366a655469c86ce33f25620bbb153fc3d7529`  
		Last Modified: Wed, 29 May 2019 17:04:55 GMT  
		Size: 21.3 MB (21333462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be573f28f3c7dc962b5f793dc91e1817c668fee1045c906e7be9c78bdc89373c`  
		Last Modified: Wed, 29 May 2019 17:04:49 GMT  
		Size: 1.3 MB (1334719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555f830f48faff9b8c612f4707d988f7c2f1c04f43ad2c281200b3f6c9365dc3`  
		Last Modified: Tue, 04 Jun 2019 22:33:40 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76a38260b52dbcaa0bead785e3706afa638b8fa17a525695102a3faacd1e787d`  
		Last Modified: Tue, 04 Jun 2019 22:51:50 GMT  
		Size: 9.7 MB (9660431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a239f5a72e3d790480230d7729a7a7038c8e5daa19ae62f7068cf526db12e01c`  
		Last Modified: Tue, 04 Jun 2019 22:51:48 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `express-gateway:latest`

```console
$ docker pull express-gateway@sha256:1e66471841a5127605fef5bf497129cb0f7b86c2d93b2cb35ea04ea3f924dbe9
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
$ docker pull express-gateway@sha256:c300b7de72becafbe974419839b91026cc0ec827527c6257ae0d7420128dae93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35194332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de9dcb4cb47ad4159c25a4349e2cae9ae7b4a066dfbb9ad51c0b5b35a6322cee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 16:25:37 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 17:18:15 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 29 May 2019 17:18:16 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 17:18:20 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Jun 2019 23:34:33 GMT
COPY file:238737301d47304174e4d24f4def935b29b3069c03c72ae8de97d94624382fce in /usr/local/bin/ 
# Tue, 04 Jun 2019 23:34:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Jun 2019 23:34:34 GMT
CMD ["node"]
# Tue, 04 Jun 2019 23:56:47 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Tue, 04 Jun 2019 23:56:47 GMT
ARG EG_VERSION=1.16.4
# Tue, 04 Jun 2019 23:57:25 GMT
# ARGS: EG_VERSION=1.16.4
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Tue, 04 Jun 2019 23:57:25 GMT
ENV NODE_ENV=production
# Tue, 04 Jun 2019 23:57:25 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Tue, 04 Jun 2019 23:57:25 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Tue, 04 Jun 2019 23:57:26 GMT
ENV CHOKIDAR_USEPOLLING=true
# Tue, 04 Jun 2019 23:57:26 GMT
VOLUME [/var/lib/eg]
# Tue, 04 Jun 2019 23:57:26 GMT
EXPOSE 8080 9876
# Tue, 04 Jun 2019 23:57:26 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Tue, 04 Jun 2019 23:57:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Jun 2019 23:57:27 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbec467490661835c5dcf69e5b09954d1f355ab5a7b2ba24bdfad236e19814ff`  
		Last Modified: Wed, 29 May 2019 17:22:49 GMT  
		Size: 21.4 MB (21430339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e5cf82282d283e6aba9c177b94d2cf52fde0daf6e8d26508129efb044638b6`  
		Last Modified: Wed, 29 May 2019 17:22:42 GMT  
		Size: 1.3 MB (1334654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de6895db72f33b1abe0fb7f1faaa9f47e4f009595d985eb4cf537efd8645d83`  
		Last Modified: Tue, 04 Jun 2019 23:39:28 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12806ff7527d09c2ceb0e420e3c4db429f93c2ca2af7cabe75e9043888fb4bf9`  
		Last Modified: Tue, 04 Jun 2019 23:57:39 GMT  
		Size: 9.7 MB (9671528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cebb91dab630163fdb5ac126d0d86ce3e8955c9d2a27731f4b8da91eff267fc`  
		Last Modified: Tue, 04 Jun 2019 23:57:36 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:latest` - linux; arm64 variant v8

```console
$ docker pull express-gateway@sha256:fcfd72e2f67aa3c85ee60c8e4f441e78da8acbe20337d1f5c9c76abeedbc7669
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.3 MB (35270348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6b1cdeee7e09a5f7c24e88754e6b0dfd92dad43413310aa9cb90239ce15d00d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 16:40:30 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 16:46:22 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 29 May 2019 16:46:23 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 16:46:26 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 29 May 2019 16:46:27 GMT
CMD ["node"]
# Mon, 03 Jun 2019 20:47:14 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Mon, 03 Jun 2019 20:47:14 GMT
ARG EG_VERSION=1.16.4
# Mon, 03 Jun 2019 20:47:38 GMT
# ARGS: EG_VERSION=1.16.4
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Mon, 03 Jun 2019 20:47:40 GMT
ENV NODE_ENV=production
# Mon, 03 Jun 2019 20:47:40 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Mon, 03 Jun 2019 20:47:40 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Mon, 03 Jun 2019 20:47:41 GMT
ENV CHOKIDAR_USEPOLLING=true
# Mon, 03 Jun 2019 20:47:41 GMT
VOLUME [/var/lib/eg]
# Mon, 03 Jun 2019 20:47:41 GMT
EXPOSE 8080 9876
# Mon, 03 Jun 2019 20:47:42 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Mon, 03 Jun 2019 20:47:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Jun 2019 20:47:43 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04df7ada72768674788987bbef6053253be207e2fcd0d2e7f7ae57ca368959ea`  
		Last Modified: Wed, 29 May 2019 16:48:35 GMT  
		Size: 21.6 MB (21575111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5165d52ffdf7ce85e587c20f72e4ed3b47a5ee06c10f9771f47289a99f4260fd`  
		Last Modified: Wed, 29 May 2019 16:48:28 GMT  
		Size: 1.3 MB (1334722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3de37a1228fe2becc8da2c09cd102e1d304a12608a8edf09debab049d4f23723`  
		Last Modified: Mon, 03 Jun 2019 20:47:57 GMT  
		Size: 9.7 MB (9671240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78f4c6041960aa7007e8aae3fd566870b41df5ac273f8d1a56e21d7552bad524`  
		Last Modified: Mon, 03 Jun 2019 20:47:52 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:latest` - linux; 386

```console
$ docker pull express-gateway@sha256:3d22932e52d52b7763ce4e865c3d41b94ad992d6906c1cae45d0e1612799c0e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35242593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c75661c7cb81df30332e20e4b98ad1d3f16b8ebffa3e34ec6b4f59253675d4b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 16:39:17 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 17:26:25 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 29 May 2019 17:26:25 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 17:26:28 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Jun 2019 23:44:47 GMT
COPY file:238737301d47304174e4d24f4def935b29b3069c03c72ae8de97d94624382fce in /usr/local/bin/ 
# Tue, 04 Jun 2019 23:44:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Jun 2019 23:44:48 GMT
CMD ["node"]
# Wed, 05 Jun 2019 00:23:34 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Wed, 05 Jun 2019 00:23:35 GMT
ARG EG_VERSION=1.16.4
# Wed, 05 Jun 2019 00:23:56 GMT
# ARGS: EG_VERSION=1.16.4
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Wed, 05 Jun 2019 00:23:56 GMT
ENV NODE_ENV=production
# Wed, 05 Jun 2019 00:23:57 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Wed, 05 Jun 2019 00:23:57 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Wed, 05 Jun 2019 00:23:57 GMT
ENV CHOKIDAR_USEPOLLING=true
# Wed, 05 Jun 2019 00:23:57 GMT
VOLUME [/var/lib/eg]
# Wed, 05 Jun 2019 00:23:57 GMT
EXPOSE 8080 9876
# Wed, 05 Jun 2019 00:23:57 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Wed, 05 Jun 2019 00:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 00:23:58 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5085b6b7fb081fc251af55fa602375de69fbd4a8eab52035c880fd7d15a2ae06`  
		Last Modified: Wed, 29 May 2019 17:27:01 GMT  
		Size: 21.5 MB (21525639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b20c1a37383155ac701b155ad41610e098e84c492cd21a8f9a120d724127cc`  
		Last Modified: Wed, 29 May 2019 17:26:56 GMT  
		Size: 1.3 MB (1334715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689892156a7d1c195c564a7f4dc6409601040fbff23576cae4dd89d2696d2915`  
		Last Modified: Tue, 04 Jun 2019 23:45:56 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1981e3a0e9259b5c22c725f5da08d0cc2c1e0eeaa2238f1fe2fe9e1e7bce5141`  
		Last Modified: Wed, 05 Jun 2019 00:24:10 GMT  
		Size: 9.6 MB (9629370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767b8e518dd2ea8dda0dbfbfc84084ce093104e792fffd4daae9895e9e7f2654`  
		Last Modified: Wed, 05 Jun 2019 00:24:06 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:latest` - linux; ppc64le

```console
$ docker pull express-gateway@sha256:715bcbed65e17c52c167135ba1dcf014daea8b827a11591e9d91cb2f73c2eb17
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37089309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7acccb6f62d6c578ff6cd6206f4430db0da562423ebb538d8adcaa97feb3e070`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 19:58:31 GMT
ENV NODE_VERSION=10.16.0
# Thu, 30 May 2019 20:13:49 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 30 May 2019 20:13:54 GMT
ENV YARN_VERSION=1.16.0
# Thu, 30 May 2019 20:14:06 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Jun 2019 22:56:38 GMT
COPY file:238737301d47304174e4d24f4def935b29b3069c03c72ae8de97d94624382fce in /usr/local/bin/ 
# Tue, 04 Jun 2019 22:56:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Jun 2019 22:56:52 GMT
CMD ["node"]
# Tue, 11 Jun 2019 12:36:49 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Tue, 11 Jun 2019 12:36:55 GMT
ARG EG_VERSION=1.16.4
# Tue, 11 Jun 2019 12:37:31 GMT
# ARGS: EG_VERSION=1.16.4
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Tue, 11 Jun 2019 12:37:38 GMT
ENV NODE_ENV=production
# Tue, 11 Jun 2019 12:37:44 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Tue, 11 Jun 2019 12:37:49 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Tue, 11 Jun 2019 12:37:54 GMT
ENV CHOKIDAR_USEPOLLING=true
# Tue, 11 Jun 2019 12:37:58 GMT
VOLUME [/var/lib/eg]
# Tue, 11 Jun 2019 12:38:03 GMT
EXPOSE 8080 9876
# Tue, 11 Jun 2019 12:38:05 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Tue, 11 Jun 2019 12:38:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 12:38:15 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116e0b945f577ea77bee788c7d9edfe39191af855502fbb249447ddfe3d177a7`  
		Last Modified: Thu, 30 May 2019 20:26:02 GMT  
		Size: 23.3 MB (23308594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d349d00bf97db7d9c3daec22c43144ea6cef05aaffde875992b2340a43e8bc0d`  
		Last Modified: Thu, 30 May 2019 20:25:55 GMT  
		Size: 1.3 MB (1334719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf0bde32278891dabcaffc5aa167beec398a01d6a7480c51a3bf6bdba947a39`  
		Last Modified: Tue, 04 Jun 2019 23:03:21 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0657fe3f183485d66e5fdf1a25df155beb68852fe1c3b371b59325355e14f005`  
		Last Modified: Tue, 11 Jun 2019 12:38:39 GMT  
		Size: 9.7 MB (9664199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f386418238becdf25e972e86918c3a17005f8658676f5963d636948536fb5832`  
		Last Modified: Tue, 11 Jun 2019 12:38:33 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:latest` - linux; s390x

```console
$ docker pull express-gateway@sha256:cb6a4df422bc148b1b0fe56083fd3e3460ea79cde0eabe457551f9ef6f896dd3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.9 MB (34872720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e332fc4295bbebe6590f7dd4a4b851683c2e416e6e6a59eba2b506a5cc67cee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 16:45:59 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 17:03:02 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 29 May 2019 17:03:03 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 17:03:06 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Jun 2019 22:30:42 GMT
COPY file:238737301d47304174e4d24f4def935b29b3069c03c72ae8de97d94624382fce in /usr/local/bin/ 
# Tue, 04 Jun 2019 22:30:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Jun 2019 22:30:42 GMT
CMD ["node"]
# Tue, 04 Jun 2019 22:51:13 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Tue, 04 Jun 2019 22:51:13 GMT
ARG EG_VERSION=1.16.4
# Tue, 04 Jun 2019 22:51:28 GMT
# ARGS: EG_VERSION=1.16.4
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Tue, 04 Jun 2019 22:51:29 GMT
ENV NODE_ENV=production
# Tue, 04 Jun 2019 22:51:29 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Tue, 04 Jun 2019 22:51:29 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Tue, 04 Jun 2019 22:51:29 GMT
ENV CHOKIDAR_USEPOLLING=true
# Tue, 04 Jun 2019 22:51:30 GMT
VOLUME [/var/lib/eg]
# Tue, 04 Jun 2019 22:51:30 GMT
EXPOSE 8080 9876
# Tue, 04 Jun 2019 22:51:30 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Tue, 04 Jun 2019 22:51:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Jun 2019 22:51:31 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbc8f9bc872c1251ae7c84cdfe366a655469c86ce33f25620bbb153fc3d7529`  
		Last Modified: Wed, 29 May 2019 17:04:55 GMT  
		Size: 21.3 MB (21333462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be573f28f3c7dc962b5f793dc91e1817c668fee1045c906e7be9c78bdc89373c`  
		Last Modified: Wed, 29 May 2019 17:04:49 GMT  
		Size: 1.3 MB (1334719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555f830f48faff9b8c612f4707d988f7c2f1c04f43ad2c281200b3f6c9365dc3`  
		Last Modified: Tue, 04 Jun 2019 22:33:40 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76a38260b52dbcaa0bead785e3706afa638b8fa17a525695102a3faacd1e787d`  
		Last Modified: Tue, 04 Jun 2019 22:51:50 GMT  
		Size: 9.7 MB (9660431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a239f5a72e3d790480230d7729a7a7038c8e5daa19ae62f7068cf526db12e01c`  
		Last Modified: Tue, 04 Jun 2019 22:51:48 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `express-gateway:latest`

```console
$ docker pull express-gateway@sha256:7c7ae75d2783034404e6f82bb8d3b5e29e5cb21df2c031b75997e1ce2cbf61be
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
$ docker pull express-gateway@sha256:abea7bf44994ae70fcbc657825b911a6ef6da5a2566c8a7563289370f610197f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34251631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f729c9855112e954ef968029518122ba7c3f16f76dabc11fbc0f3a3bd89b9c3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:00:58 GMT
ENV NODE_VERSION=10.15.3
# Sat, 20 Apr 2019 00:51:37 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 20 Apr 2019 00:51:38 GMT
ENV YARN_VERSION=1.13.0
# Sat, 20 Apr 2019 00:51:40 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 20 Apr 2019 00:51:40 GMT
CMD ["node"]
# Sat, 20 Apr 2019 01:09:59 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Sat, 20 Apr 2019 01:09:59 GMT
ARG EG_VERSION=1.16.3
# Sat, 20 Apr 2019 01:10:21 GMT
# ARGS: EG_VERSION=1.16.3
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Sat, 20 Apr 2019 01:10:21 GMT
ENV NODE_ENV=production
# Sat, 20 Apr 2019 01:10:22 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Sat, 20 Apr 2019 01:10:22 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Sat, 20 Apr 2019 01:10:22 GMT
ENV CHOKIDAR_USEPOLLING=true
# Sat, 20 Apr 2019 01:10:22 GMT
VOLUME [/var/lib/eg]
# Sat, 20 Apr 2019 01:10:22 GMT
EXPOSE 8080 9876
# Sat, 20 Apr 2019 01:10:23 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Sat, 20 Apr 2019 01:10:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 20 Apr 2019 01:10:23 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba7d1b491773748ac733092e0b3236c0752bcd87ca13e6c94b307fabd6afa2a`  
		Last Modified: Sat, 20 Apr 2019 00:54:30 GMT  
		Size: 20.1 MB (20059238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17af28038337b5a133f602472ce285b73996171f76657c3ff9310feccaa84f54`  
		Last Modified: Sat, 20 Apr 2019 00:54:27 GMT  
		Size: 1.3 MB (1331863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e106e7591e244600a0ca6f1ff9fd965cdede8adf73bc0920b51787329a21afc1`  
		Last Modified: Sat, 20 Apr 2019 01:10:35 GMT  
		Size: 10.1 MB (10103026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d408a77b48c48633d0896931e08619c4838482b09d8ed834fb6930fff2437f`  
		Last Modified: Sat, 20 Apr 2019 01:10:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:latest` - linux; arm64 variant v8

```console
$ docker pull express-gateway@sha256:0daf39b338e773f6b8dd806e3bcf9a52f62404acfd7ecbd18b684b9b15e6371e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34314762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7087e2530b2187ec80af4c2f5ea6b3c740af1f5c7d9e8f0c9a7b389e861f4be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:31:28 GMT
ENV NODE_VERSION=10.15.3
# Sat, 20 Apr 2019 10:58:00 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 20 Apr 2019 10:58:01 GMT
ENV YARN_VERSION=1.13.0
# Sat, 20 Apr 2019 10:58:06 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 20 Apr 2019 10:58:07 GMT
CMD ["node"]
# Sat, 20 Apr 2019 11:17:54 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Sat, 20 Apr 2019 11:17:54 GMT
ARG EG_VERSION=1.16.3
# Sat, 20 Apr 2019 11:18:32 GMT
# ARGS: EG_VERSION=1.16.3
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Sat, 20 Apr 2019 11:18:33 GMT
ENV NODE_ENV=production
# Sat, 20 Apr 2019 11:18:34 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Sat, 20 Apr 2019 11:18:35 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Sat, 20 Apr 2019 11:18:35 GMT
ENV CHOKIDAR_USEPOLLING=true
# Sat, 20 Apr 2019 11:18:36 GMT
VOLUME [/var/lib/eg]
# Sat, 20 Apr 2019 11:18:37 GMT
EXPOSE 8080 9876
# Sat, 20 Apr 2019 11:18:38 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Sat, 20 Apr 2019 11:18:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 20 Apr 2019 11:18:39 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb3018f3137e0ceb4f924b7ff97e0ed480f2439dc2f0e55c26125a58524b067`  
		Last Modified: Sat, 20 Apr 2019 11:02:00 GMT  
		Size: 20.2 MB (20190203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52253373be841ea1ba9e768c74542eb1be4af0e11cc19aa5138d31125ad464ed`  
		Last Modified: Sat, 20 Apr 2019 11:01:51 GMT  
		Size: 1.3 MB (1331931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf75c9301f2265654380ebd1e0571d368e2ec45772deb536a642bdd3c154072d`  
		Last Modified: Sat, 20 Apr 2019 11:19:04 GMT  
		Size: 10.1 MB (10103350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf90dba443d9285f3a691dc7762d998d184aedc606e887ad2332c05248550d73`  
		Last Modified: Sat, 20 Apr 2019 11:18:56 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:latest` - linux; 386

```console
$ docker pull express-gateway@sha256:66a1f87376aa1050200a3786aed57edf59865951cc26ee251cae12266d4507ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34341104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac4d8a6846b218ab94aa7b4148c645b3a516df914e31ac487d1215ba2abd0b4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:35:48 GMT
ENV NODE_VERSION=10.15.3
# Sat, 20 Apr 2019 12:09:00 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 20 Apr 2019 12:09:00 GMT
ENV YARN_VERSION=1.13.0
# Sat, 20 Apr 2019 12:09:03 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 20 Apr 2019 12:09:03 GMT
CMD ["node"]
# Sat, 20 Apr 2019 12:38:53 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Sat, 20 Apr 2019 12:38:53 GMT
ARG EG_VERSION=1.16.3
# Sat, 20 Apr 2019 12:39:13 GMT
# ARGS: EG_VERSION=1.16.3
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Sat, 20 Apr 2019 12:39:14 GMT
ENV NODE_ENV=production
# Sat, 20 Apr 2019 12:39:14 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Sat, 20 Apr 2019 12:39:14 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Sat, 20 Apr 2019 12:39:14 GMT
ENV CHOKIDAR_USEPOLLING=true
# Sat, 20 Apr 2019 12:39:15 GMT
VOLUME [/var/lib/eg]
# Sat, 20 Apr 2019 12:39:15 GMT
EXPOSE 8080 9876
# Sat, 20 Apr 2019 12:39:15 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Sat, 20 Apr 2019 12:39:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 20 Apr 2019 12:39:15 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c837b2859f1f23f688abd8522b4a0a437c49f0fbcdcf59f4a82ea4a88763fe18`  
		Last Modified: Sat, 20 Apr 2019 12:11:27 GMT  
		Size: 20.2 MB (20194964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd302fd4e194b18e771c291375f6d8356b7e3e421cd7e3463c74e006f974df24`  
		Last Modified: Sat, 20 Apr 2019 12:11:20 GMT  
		Size: 1.3 MB (1331903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e322cb5d760c5801d7a7ffe89d29ced60c734c5e72adc22a4203b6287ee85d`  
		Last Modified: Sat, 20 Apr 2019 12:39:28 GMT  
		Size: 10.1 MB (10061580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc7ee82e57e4dcc425b487e24caea12e2140ecad94849cafd996d205e507c5d`  
		Last Modified: Sat, 20 Apr 2019 12:39:24 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `express-gateway:latest` - linux; ppc64le

```console
$ docker pull express-gateway@sha256:1c7f95e2c244d019c7f2f8dd674d53ba145f9d451f0d49473b8fc856e4eac3a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 MB (35888412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88f94a6deb4507dbd434a45551389ce5d08bbe578f2a4a35de6afa0c10453ede`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","-e","require('express-gateway')().run();"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:04:04 GMT
ENV NODE_VERSION=10.15.3
# Sat, 20 Apr 2019 09:13:37 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 20 Apr 2019 09:13:52 GMT
ENV YARN_VERSION=1.13.0
# Sat, 20 Apr 2019 09:14:17 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 20 Apr 2019 09:14:22 GMT
CMD ["node"]
# Sat, 20 Apr 2019 09:37:44 GMT
LABEL maintainer=Vincenzo Chianese, vincenzo@express-gateway.io
# Sat, 20 Apr 2019 09:37:47 GMT
ARG EG_VERSION=1.16.3
# Sat, 20 Apr 2019 09:38:28 GMT
# ARGS: EG_VERSION=1.16.3
RUN yarn global add express-gateway@$EG_VERSION && yarn cache clean
# Sat, 20 Apr 2019 09:38:34 GMT
ENV NODE_ENV=production
# Sat, 20 Apr 2019 09:38:41 GMT
ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/
# Sat, 20 Apr 2019 09:38:43 GMT
ENV EG_CONFIG_DIR=/var/lib/eg
# Sat, 20 Apr 2019 09:38:49 GMT
ENV CHOKIDAR_USEPOLLING=true
# Sat, 20 Apr 2019 09:38:59 GMT
VOLUME [/var/lib/eg]
# Sat, 20 Apr 2019 09:39:09 GMT
EXPOSE 8080 9876
# Sat, 20 Apr 2019 09:39:16 GMT
COPY file:9481e65ab3ccc3b910b8af90d3df04d9f70030b8f8a0cfcc390840936290aaab in /usr/local/bin/ 
# Sat, 20 Apr 2019 09:39:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 20 Apr 2019 09:39:27 GMT
CMD ["node" "-e" "require('express-gateway')().run();"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f8d882623b0c6c6d167c629ce8b38976c6270bc5c401a74c82203d58bde189`  
		Last Modified: Sat, 20 Apr 2019 09:21:12 GMT  
		Size: 21.7 MB (21671372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714dc2a350ffa3d932aa7b5ba2bd13598573f50a3520cc192fd67e406197c0b5`  
		Last Modified: Sat, 20 Apr 2019 09:21:05 GMT  
		Size: 1.3 MB (1332024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49b3c344aafd64bb2a2a9c4c8aef33f3515480aa144eafe201825e9b12b723bc`  
		Last Modified: Sat, 20 Apr 2019 09:40:01 GMT  
		Size: 10.1 MB (10103502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8995433bdd3f7a0eb25cc8e2f47d78df8faaa5851fc87a12ea9dd3290bca33da`  
		Last Modified: Sat, 20 Apr 2019 09:39:47 GMT  
		Size: 494.0 B  
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

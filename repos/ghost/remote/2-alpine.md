## `ghost:2-alpine`

```console
$ docker pull ghost@sha256:f7ca98dcaac68c31654728577344c60f77fe702b2ed5e82022e30eaf37cbc8b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le

### `ghost:2-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:54c25fdb3488df4d46f63ff7b02b977c28db772a92a9599f5fb22f75cda9ed7a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167849524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d91cc8fd1333df14aa60f1f6d2ae408ce602a4eada280d59b7dcc8fe6c61631`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Wed, 10 Apr 2019 02:40:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 Apr 2019 02:40:43 GMT
RUN apk add --no-cache 		bash
# Wed, 10 Apr 2019 02:40:44 GMT
ENV NODE_ENV=production
# Wed, 10 Apr 2019 02:40:44 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Wed, 10 Apr 2019 02:41:08 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 10 Apr 2019 02:41:08 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 10 Apr 2019 02:41:08 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 10 Apr 2019 02:41:08 GMT
ENV GHOST_VERSION=2.19.4
# Wed, 10 Apr 2019 02:41:49 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 10 Apr 2019 02:41:59 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 10 Apr 2019 02:41:59 GMT
WORKDIR /var/lib/ghost
# Wed, 10 Apr 2019 02:41:59 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 10 Apr 2019 02:42:00 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 10 Apr 2019 02:42:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 02:42:00 GMT
EXPOSE 2368
# Wed, 10 Apr 2019 02:42:00 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:2d75108715dabd89594a5f84555eb138c538388c7df926882b0130a864b82115`  
		Last Modified: Wed, 10 Apr 2019 02:42:50 GMT  
		Size: 9.7 KB (9681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1494c15002007505f0dde9af18c26ecdc26b360121e1be15f2017c2ece1d3086`  
		Last Modified: Wed, 10 Apr 2019 02:42:49 GMT  
		Size: 1.2 MB (1176758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04726a5f9f02bc57ef9985807d360e8617ecc7444ea8d878b4b46d782852915b`  
		Last Modified: Wed, 10 Apr 2019 02:42:55 GMT  
		Size: 17.5 MB (17500719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f181d622e703c3c923b011e7be76af3f9a1b68ee9eb3e734904f0c4e0ddbc5be`  
		Last Modified: Wed, 10 Apr 2019 02:43:19 GMT  
		Size: 114.2 MB (114213839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a868cde8214afa307eccc23ccdcddd772ce9c30c4cf34592f28b59353789a0e`  
		Last Modified: Wed, 10 Apr 2019 02:42:52 GMT  
		Size: 10.8 MB (10799948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5993fa48f3c20caaab9b2d9146db9c394a8e428d9962cc0b540c6be3e212c8`  
		Last Modified: Wed, 10 Apr 2019 02:42:49 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:6b2d769c46dd65678d8f2e7bbf207f67c1d92d59b617edc0e2838f2f13bc93fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.2 MB (145215738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01f7c798a3c714614eeb2f66e03cec3ae6abc0a8a3d07a6c97490b02c57591bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:39:21 GMT
ENV NODE_VERSION=10.15.3
# Wed, 10 Apr 2019 08:44:06 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 10 Apr 2019 08:44:07 GMT
ENV YARN_VERSION=1.13.0
# Wed, 10 Apr 2019 08:44:11 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 10 Apr 2019 08:44:12 GMT
CMD ["node"]
# Wed, 10 Apr 2019 09:58:54 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 Apr 2019 09:58:57 GMT
RUN apk add --no-cache 		bash
# Wed, 10 Apr 2019 09:58:58 GMT
ENV NODE_ENV=production
# Wed, 10 Apr 2019 09:58:58 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Wed, 10 Apr 2019 09:59:34 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 10 Apr 2019 09:59:37 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 10 Apr 2019 09:59:37 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 10 Apr 2019 09:59:38 GMT
ENV GHOST_VERSION=2.19.4
# Wed, 10 Apr 2019 10:01:13 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 10 Apr 2019 10:04:37 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 10 Apr 2019 10:04:38 GMT
WORKDIR /var/lib/ghost
# Wed, 10 Apr 2019 10:04:38 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 10 Apr 2019 10:04:39 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 10 Apr 2019 10:04:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 10:04:39 GMT
EXPOSE 2368
# Wed, 10 Apr 2019 10:04:40 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1131031fd495702f592331256137cc7c28834c1bfceeeab4a518152cfc0c15d8`  
		Last Modified: Wed, 10 Apr 2019 08:45:15 GMT  
		Size: 19.2 MB (19226732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b0cc3a664680cf07f85cde9f38f11004aa30b6ce877f9419e234a2643fdfc1`  
		Last Modified: Wed, 10 Apr 2019 08:45:06 GMT  
		Size: 1.3 MB (1331929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529f27404be781cd0222808c2d65c0f01cd3f283def1bb21191bba7fe598f5aa`  
		Last Modified: Wed, 10 Apr 2019 10:05:08 GMT  
		Size: 9.5 KB (9476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44da71054fe260dcf3410bff89ca61a3c649f6c5474fced67e33598da5b97969`  
		Last Modified: Wed, 10 Apr 2019 10:05:06 GMT  
		Size: 1.1 MB (1122012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1af1b9fe9832d0a45f9f4a34743c80022f5156bfbd1ae604963243cbab2f18`  
		Last Modified: Wed, 10 Apr 2019 10:05:15 GMT  
		Size: 17.5 MB (17502643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf9eace44636db15ac378b94318162f67d888484c1e23c76208da104bbdffbe`  
		Last Modified: Wed, 10 Apr 2019 10:05:44 GMT  
		Size: 91.4 MB (91404291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db3e97eac7fe6983a4a12f8894353d90060f95adee982cb78d9ef8d3861eef0`  
		Last Modified: Wed, 10 Apr 2019 10:05:09 GMT  
		Size: 12.1 MB (12074669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e1bf5525b5b9487e50847dc7bd7174dc1be31da207c12a212334bba44b92b6`  
		Last Modified: Wed, 10 Apr 2019 10:05:06 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; 386

```console
$ docker pull ghost@sha256:e02e68387be541f45d945e06d8c6c9839f49a28f5c252c15f95f9d2ae3e95856
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.7 MB (146733296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9189470786fbf42c261a4e8c6005b173d22c66953fcdbcef142e56586a9a3032`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Wed, 10 Apr 2019 15:09:14 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 Apr 2019 15:09:15 GMT
RUN apk add --no-cache 		bash
# Wed, 10 Apr 2019 15:09:16 GMT
ENV NODE_ENV=production
# Wed, 10 Apr 2019 15:09:16 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Wed, 10 Apr 2019 15:09:37 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 10 Apr 2019 15:09:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 10 Apr 2019 15:09:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 10 Apr 2019 15:09:38 GMT
ENV GHOST_VERSION=2.19.4
# Wed, 10 Apr 2019 15:10:21 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 10 Apr 2019 15:12:12 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 10 Apr 2019 15:12:12 GMT
WORKDIR /var/lib/ghost
# Wed, 10 Apr 2019 15:12:13 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 10 Apr 2019 15:12:13 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 10 Apr 2019 15:12:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 15:12:13 GMT
EXPOSE 2368
# Wed, 10 Apr 2019 15:12:13 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:dd5b4fcc867a416f04594cfe7d826851b290a9a957112f5339e1e9f1abfb1a9b`  
		Last Modified: Wed, 10 Apr 2019 15:12:41 GMT  
		Size: 9.7 KB (9746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:389e0e6cd89519497c1f99276895649010b11c1b00a2e9f75283b4e4f66ed6bd`  
		Last Modified: Wed, 10 Apr 2019 15:12:41 GMT  
		Size: 1.2 MB (1223737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d27142c9fba1001b569dc6e9827e71316cde622c66146f113a2fec168bed96`  
		Last Modified: Wed, 10 Apr 2019 15:12:48 GMT  
		Size: 17.5 MB (17497387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e35bd44a8f67490514071e849e1410d971ac882e25cb4e0a52c32e91a940a6`  
		Last Modified: Wed, 10 Apr 2019 15:13:07 GMT  
		Size: 91.4 MB (91406288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea2d20f5dbaf6603a43cd8be068d007a42c0dd856fbedcd5b653a7b825e43ec0`  
		Last Modified: Wed, 10 Apr 2019 15:12:44 GMT  
		Size: 12.3 MB (12316215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a9a339e54ea9feb75eaf560dc2ce0b8269630f05fa909b88a6c228990e707d`  
		Last Modified: Wed, 10 Apr 2019 15:12:40 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:7f184fdb6c1691157a6dbff6c58d4fe8f040464acf3cc48000e3c5524dad8bf7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.2 MB (149209670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01a5cb2a50546eb251f4855119bd0f33098d60394f5a40fac3a8242c8475d512`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Wed, 10 Apr 2019 11:18:18 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 Apr 2019 11:18:26 GMT
RUN apk add --no-cache 		bash
# Wed, 10 Apr 2019 11:18:28 GMT
ENV NODE_ENV=production
# Wed, 10 Apr 2019 11:18:30 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Wed, 10 Apr 2019 11:19:15 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 10 Apr 2019 11:19:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 10 Apr 2019 11:19:22 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 10 Apr 2019 11:19:23 GMT
ENV GHOST_VERSION=2.19.4
# Wed, 10 Apr 2019 11:21:02 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 10 Apr 2019 11:23:44 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 10 Apr 2019 11:23:52 GMT
WORKDIR /var/lib/ghost
# Wed, 10 Apr 2019 11:23:56 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 10 Apr 2019 11:23:59 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 10 Apr 2019 11:24:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 11:24:12 GMT
EXPOSE 2368
# Wed, 10 Apr 2019 11:24:16 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:c5fae827fd49bb3787a728ade8cf4b4489fb6ba6946c781777feac6ab0e2da39`  
		Last Modified: Wed, 10 Apr 2019 11:24:56 GMT  
		Size: 10.2 KB (10232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e515f9d34f375857fce69fc8c6a8e5727dc483a7cdbdc973cc499946f6a0507`  
		Last Modified: Wed, 10 Apr 2019 11:24:58 GMT  
		Size: 1.3 MB (1257924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:219987bc538ab304ecadfdeca681413f9dfa7beaa153b162418f93834e7a8e97`  
		Last Modified: Wed, 10 Apr 2019 11:25:29 GMT  
		Size: 17.5 MB (17498316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0546042f1ac522535488cf6af3a1c49b21fdfee11c796ee4e133f6da97efca4`  
		Last Modified: Wed, 10 Apr 2019 11:25:50 GMT  
		Size: 91.4 MB (91449326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57357f0f7272d9e99435a1f43f9d79ff5dc96cd1f39cf4755d860d358bb828f`  
		Last Modified: Wed, 10 Apr 2019 11:24:56 GMT  
		Size: 13.2 MB (13209224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00590767e29769dfce7f32d9417dc2f6c80c574d1a9db9ea4727e0ea610daec`  
		Last Modified: Wed, 10 Apr 2019 11:24:52 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

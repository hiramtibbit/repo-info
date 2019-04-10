## `ghost:alpine`

```console
$ docker pull ghost@sha256:243d6db5f2205e1111e97fc9852ba62413c3cf06fd414af38a72b2953c20c3ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

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

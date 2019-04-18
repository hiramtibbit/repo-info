## `ghost:alpine`

```console
$ docker pull ghost@sha256:a4d6abcab73736547fddde99886c7ccf8eee5fa38a85f34c4df643012a9276c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:cab07f7726cc8ca547cdf5c52a71467a77e5093f9e0c7136c68404b138a65934
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.4 MB (169379540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d581e062140e097068f66d6bd37c4cc313b8646d6d19537029238da010522668`
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
# Wed, 17 Apr 2019 23:22:43 GMT
ENV GHOST_VERSION=2.20.1
# Wed, 17 Apr 2019 23:23:26 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 17 Apr 2019 23:23:36 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 17 Apr 2019 23:23:36 GMT
WORKDIR /var/lib/ghost
# Wed, 17 Apr 2019 23:23:37 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 17 Apr 2019 23:23:37 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 17 Apr 2019 23:23:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 17 Apr 2019 23:23:37 GMT
EXPOSE 2368
# Wed, 17 Apr 2019 23:23:37 GMT
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
	-	`sha256:906a2e0005a45d479ab4b205878c03ab419b5ec70c4c567c096ff3d481f86d96`  
		Last Modified: Wed, 17 Apr 2019 23:24:51 GMT  
		Size: 115.7 MB (115740179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696a9d472607818eb911f3dfbaf321d9ed47093799cf292ae65fd02eb29ca565`  
		Last Modified: Wed, 17 Apr 2019 23:24:32 GMT  
		Size: 10.8 MB (10803623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3757310e6efdabac6d17b96b15685ee574545f627738639c44bd67d7dfeec3c`  
		Last Modified: Wed, 17 Apr 2019 23:24:29 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:ec256f943449ab470d91528aff429375a072b439f9061378b6984b722d798a5f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.7 MB (146748964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78047c172c92dcffe072a7c995778a7bd47e0501d71ee3b795f553408728b08a`
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
# Thu, 18 Apr 2019 07:51:34 GMT
ENV GHOST_VERSION=2.20.1
# Thu, 18 Apr 2019 07:53:05 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 18 Apr 2019 07:57:07 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Thu, 18 Apr 2019 07:57:08 GMT
WORKDIR /var/lib/ghost
# Thu, 18 Apr 2019 07:57:08 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 18 Apr 2019 07:57:09 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Thu, 18 Apr 2019 07:57:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Apr 2019 07:57:09 GMT
EXPOSE 2368
# Thu, 18 Apr 2019 07:57:10 GMT
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
	-	`sha256:3dbe4958dd191814a538aeeeb57bdd2c332a32128cade213db97ced5c9d27aa7`  
		Last Modified: Thu, 18 Apr 2019 07:58:19 GMT  
		Size: 92.9 MB (92934573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5967ea4aa76945e9399ab921380235f645413dce22e5165069152d9e4239b68e`  
		Last Modified: Thu, 18 Apr 2019 07:57:40 GMT  
		Size: 12.1 MB (12077612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678d708ae69a4274c098e58611c447bfc0f6186431d2e0992c36f03783178636`  
		Last Modified: Thu, 18 Apr 2019 07:57:36 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

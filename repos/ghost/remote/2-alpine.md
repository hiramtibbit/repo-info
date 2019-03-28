## `ghost:2-alpine`

```console
$ docker pull ghost@sha256:779aba2992be066d9560ba8ce762a80a647d0906f67245bcee052bdae747059d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `ghost:2-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:ea3a80729b7dfa3857213e436031c06a7dc0037bea066941f92364ab3db55624
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.5 MB (170482696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16845944ff4ae4d5fb7d74cefce7ad205f9313053de74515151dab83b7a211b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Wed, 27 Mar 2019 22:21:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 27 Mar 2019 22:21:22 GMT
RUN apk add --no-cache 		bash
# Wed, 27 Mar 2019 22:21:23 GMT
ENV NODE_ENV=production
# Wed, 27 Mar 2019 22:21:24 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Wed, 27 Mar 2019 22:21:48 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 27 Mar 2019 22:21:50 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 27 Mar 2019 22:21:50 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 27 Mar 2019 22:21:51 GMT
ENV GHOST_VERSION=2.19.1
# Wed, 27 Mar 2019 22:22:38 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 27 Mar 2019 22:22:51 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 27 Mar 2019 22:22:51 GMT
WORKDIR /var/lib/ghost
# Wed, 27 Mar 2019 22:22:51 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 27 Mar 2019 22:22:52 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 27 Mar 2019 22:22:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 22:22:52 GMT
EXPOSE 2368
# Wed, 27 Mar 2019 22:22:52 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:3d0b840ddbf465280a4fc8c8ee7b9f53902709857178018587f6b6e57c78d2dd`  
		Last Modified: Wed, 27 Mar 2019 22:23:46 GMT  
		Size: 9.7 KB (9675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d0c582552ac2cff9515d44acba053a2c51e01478d19e976eef0b35b575d3a2c`  
		Last Modified: Wed, 27 Mar 2019 22:23:47 GMT  
		Size: 1.2 MB (1176766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a14f5fa611d6dec3cb9933634a6fa40584cb8e3b6b035e7ee6bb5244c47442`  
		Last Modified: Wed, 27 Mar 2019 22:23:53 GMT  
		Size: 17.5 MB (17464728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b4adad42cdac9a6fd54eecfc44d73e4297b311e60227f5252d784df3a7a6f2`  
		Last Modified: Wed, 27 Mar 2019 22:24:12 GMT  
		Size: 116.9 MB (116903886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33565d80e8da67c9d1a31930c341cba83f72323db1441775a236a7ce34f6953c`  
		Last Modified: Wed, 27 Mar 2019 22:23:48 GMT  
		Size: 10.8 MB (10800848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd362313f22778dc732e90522240cb2caa51cf139af8e177d210482513687a6`  
		Last Modified: Wed, 27 Mar 2019 22:23:45 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; 386

```console
$ docker pull ghost@sha256:d303c18c557447479d0f2cddc7d2e69940da0a70999132c696fadc39bb7e7f86
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.8 MB (149809457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd0c1d3a019c3d7c540c307363e9d5019f5753ec8b0815eaf2ae2f743202628c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Wed, 27 Mar 2019 23:52:25 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 27 Mar 2019 23:52:27 GMT
RUN apk add --no-cache 		bash
# Wed, 27 Mar 2019 23:52:27 GMT
ENV NODE_ENV=production
# Wed, 27 Mar 2019 23:52:27 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Wed, 27 Mar 2019 23:52:49 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 27 Mar 2019 23:52:50 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 27 Mar 2019 23:52:50 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 27 Mar 2019 23:52:50 GMT
ENV GHOST_VERSION=2.19.1
# Wed, 27 Mar 2019 23:53:37 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 27 Mar 2019 23:55:44 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 27 Mar 2019 23:55:44 GMT
WORKDIR /var/lib/ghost
# Wed, 27 Mar 2019 23:55:44 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 27 Mar 2019 23:55:45 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 27 Mar 2019 23:55:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 23:55:45 GMT
EXPOSE 2368
# Wed, 27 Mar 2019 23:55:45 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:4487c493ef6af32a865cc30e1ddce0f755c25a61bd891c4dd44a35afaa9d89a6`  
		Last Modified: Wed, 27 Mar 2019 23:59:04 GMT  
		Size: 9.7 KB (9746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908dbac1f4a9ad24abfbd7c8c9066630ce488fa840e2c662e4f44c1f12c04e91`  
		Last Modified: Wed, 27 Mar 2019 23:59:04 GMT  
		Size: 1.2 MB (1223776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e8f61056ac743a585a3bfcd9aeccbcbf6cf16ef3a88b1fedfb9a982176ecd1`  
		Last Modified: Wed, 27 Mar 2019 23:59:11 GMT  
		Size: 17.5 MB (17463760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50bca94dfdfa75b9b65bb03d3be0fbf6e0e195613e651a41029eeb5ae4cc761a`  
		Last Modified: Wed, 27 Mar 2019 23:59:31 GMT  
		Size: 94.1 MB (94082589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba4ef5901287a9c21f6aa8352cea2661f23be8bab65d5900f2d42ba827aff72`  
		Last Modified: Wed, 27 Mar 2019 23:59:07 GMT  
		Size: 12.8 MB (12782092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c6c376a6ff46e1ffeaf05f0df144b296d334efbe46be01cef084a030c2088bd`  
		Last Modified: Wed, 27 Mar 2019 23:59:03 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:60993072116003af0f3ff1978051f40736d8e3456b3b772a63e8d073a2b9d5c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.3 MB (152306370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcf2261e5b94086ba54b31eb1aaaf635005366b3bcbc8cb50803e53aa280122f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Wed, 27 Mar 2019 22:22:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 27 Mar 2019 22:22:33 GMT
RUN apk add --no-cache 		bash
# Wed, 27 Mar 2019 22:22:35 GMT
ENV NODE_ENV=production
# Wed, 27 Mar 2019 22:22:41 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Wed, 27 Mar 2019 22:23:31 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 27 Mar 2019 22:23:39 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 27 Mar 2019 22:23:41 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 27 Mar 2019 22:23:45 GMT
ENV GHOST_VERSION=2.19.1
# Wed, 27 Mar 2019 22:27:29 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 27 Mar 2019 22:30:13 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 27 Mar 2019 22:30:18 GMT
WORKDIR /var/lib/ghost
# Wed, 27 Mar 2019 22:30:21 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 27 Mar 2019 22:30:23 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 27 Mar 2019 22:30:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 22:30:30 GMT
EXPOSE 2368
# Wed, 27 Mar 2019 22:30:32 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:e0dc18dab0372629ba50ed6d05cbfb8615221f5379f73fcdf2ac25a5e2263ef6`  
		Last Modified: Wed, 27 Mar 2019 22:47:03 GMT  
		Size: 10.2 KB (10227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9e47acedcb09a329871b963fe952c0497bb8b22a36bc2df8a9f78b8df984e9`  
		Last Modified: Wed, 27 Mar 2019 22:47:01 GMT  
		Size: 1.3 MB (1257930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0abdbe8d9c807a305acc606ebde38fbebc121a58c6dad5ba1d556a13149068`  
		Last Modified: Wed, 27 Mar 2019 22:47:09 GMT  
		Size: 17.5 MB (17460478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52cc57f0fcd6103a01c9360db4bb492cbd56dd4a13908fdba16f279922f708d7`  
		Last Modified: Wed, 27 Mar 2019 22:52:28 GMT  
		Size: 94.1 MB (94120841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03969aaef318e0b4aa7167304f1bdf5ab6accbab0c6a4d87d541e533739b916b`  
		Last Modified: Wed, 27 Mar 2019 22:46:51 GMT  
		Size: 13.7 MB (13670724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53df75fc30ad5fcdb2167a0464e1c79d6d61e2d4281f3b7b1d6b04ec7809eebf`  
		Last Modified: Wed, 27 Mar 2019 22:45:46 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

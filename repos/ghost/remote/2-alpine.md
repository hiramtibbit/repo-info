## `ghost:2-alpine`

```console
$ docker pull ghost@sha256:f9fd39ad14959342218649e0c0f0a75c2b4755e8d66c40f823b232221d1eb0e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le

### `ghost:2-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:cb4a4ded54640194c81d839c341126ae3a5a332a96067c64ddae9cc23d5d1ae2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.5 MB (218484922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27ac0a776c7cb7f90a38803cb1d0764547392673ac6b1c11d7d13e16bb869cb2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Wed, 29 May 2019 17:18:20 GMT
CMD ["node"]
# Wed, 29 May 2019 17:40:39 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 29 May 2019 17:40:41 GMT
RUN apk add --no-cache 		bash
# Wed, 29 May 2019 17:40:41 GMT
ENV NODE_ENV=production
# Wed, 29 May 2019 17:40:41 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 29 May 2019 17:41:00 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 29 May 2019 17:41:01 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 29 May 2019 17:41:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 29 May 2019 17:41:01 GMT
ENV GHOST_VERSION=2.22.3
# Wed, 29 May 2019 17:41:43 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 29 May 2019 17:41:53 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 29 May 2019 17:41:53 GMT
WORKDIR /var/lib/ghost
# Wed, 29 May 2019 17:41:53 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 29 May 2019 17:41:54 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 29 May 2019 17:41:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 17:41:54 GMT
EXPOSE 2368
# Wed, 29 May 2019 17:41:54 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:d5b0d885793abf90747bc9ba68207bab50a32278f43fea74857364ab770ca390`  
		Last Modified: Wed, 29 May 2019 17:43:00 GMT  
		Size: 9.7 KB (9680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa8cd7c8e2df63cc84948c95983f7595aec3dbde9e78235dc3d29dbc9c647ca3`  
		Last Modified: Wed, 29 May 2019 17:42:55 GMT  
		Size: 1.2 MB (1176754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f0ebaa5cf69ce467679ecf7509a3fc4491a33e059160f41cde7665022af928`  
		Last Modified: Wed, 29 May 2019 17:42:59 GMT  
		Size: 13.7 MB (13735450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9234bf0cfaeb7138aef17027a93d8ebb9f69f292bc489b60d8804c1abedc706`  
		Last Modified: Wed, 29 May 2019 17:43:21 GMT  
		Size: 167.1 MB (167109289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07327617669b05bb99fbe2d3c732b6ec798e9cd6fcf5c1dddd6e70680af73452`  
		Last Modified: Wed, 29 May 2019 17:42:57 GMT  
		Size: 10.9 MB (10931178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fca02af4b95237a97b0a52d0e3766bb1fc33963cf688235e27e0ad40e78dc92`  
		Last Modified: Wed, 29 May 2019 17:42:55 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:58fdd5ea53c80936103458a75e80055e22ed270d056047afbfc2965bf98a49d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.9 MB (195880995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be79a571c958988d901f97e0f4676a8aed8b5b20e96bb19b0f2b3db08d207084`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 16:49:43 GMT
ENV NODE_VERSION=10.16.0
# Wed, 29 May 2019 16:54:32 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 29 May 2019 16:54:33 GMT
ENV YARN_VERSION=1.16.0
# Wed, 29 May 2019 16:54:37 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 29 May 2019 16:54:37 GMT
CMD ["node"]
# Wed, 29 May 2019 17:10:35 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 29 May 2019 17:10:40 GMT
RUN apk add --no-cache 		bash
# Wed, 29 May 2019 17:10:41 GMT
ENV NODE_ENV=production
# Wed, 29 May 2019 17:10:42 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 29 May 2019 17:11:17 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 29 May 2019 17:11:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 29 May 2019 17:11:20 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 29 May 2019 17:11:20 GMT
ENV GHOST_VERSION=2.22.3
# Wed, 29 May 2019 17:13:01 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 29 May 2019 17:16:20 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 29 May 2019 17:16:21 GMT
WORKDIR /var/lib/ghost
# Wed, 29 May 2019 17:16:22 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 29 May 2019 17:16:23 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 29 May 2019 17:16:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 17:16:24 GMT
EXPOSE 2368
# Wed, 29 May 2019 17:16:25 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691caa3eeb33ffbe807e8abf7ad147b9831811fc6b21b3ece07fe910377bde8b`  
		Last Modified: Wed, 29 May 2019 16:55:07 GMT  
		Size: 20.6 MB (20580505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05fa9d74d670d9755cca13f4350a73f959fc7683dc9bbed2501889c52fa37a9`  
		Last Modified: Wed, 29 May 2019 16:54:59 GMT  
		Size: 1.3 MB (1334709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d0eabec97c921312d3b50dde7a9a0085b9c3830744ad508e5a4710649fa48f`  
		Last Modified: Wed, 29 May 2019 17:16:52 GMT  
		Size: 9.5 KB (9485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014dd8348fd3e5a84c258d88cfc6d87884a02c0d228f035adbcdbf1496a0b54b`  
		Last Modified: Wed, 29 May 2019 17:16:47 GMT  
		Size: 1.1 MB (1121971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fde515391ff76e7e22e0f53717e95f32a9446a17e4872a825c163551a5d3a5`  
		Last Modified: Wed, 29 May 2019 17:16:53 GMT  
		Size: 13.7 MB (13738098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016132982c8274c6415737098340a18c72b7e4ced79642fc5f5236f8199f2642`  
		Last Modified: Wed, 29 May 2019 17:17:36 GMT  
		Size: 144.3 MB (144304641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a60e50aae2163e61bc29dce69880b2cbe611ada81838fce43cceb76e0f64ce`  
		Last Modified: Wed, 29 May 2019 17:16:50 GMT  
		Size: 12.2 MB (12247618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f041b38dea54862748caffa880214a5f166296d542106c43a861af9970717e`  
		Last Modified: Wed, 29 May 2019 17:16:46 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; 386

```console
$ docker pull ghost@sha256:f51c624c1dc3e58c3de248c56f0b4960c14a3d3f3eebda1ed4a73b555f668d52
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 MB (197371883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8fe669e4f5dfd66040238ced7770bb77780da22a4105c3918697c27224415c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Wed, 29 May 2019 17:26:28 GMT
CMD ["node"]
# Wed, 29 May 2019 17:43:29 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 29 May 2019 17:43:30 GMT
RUN apk add --no-cache 		bash
# Wed, 29 May 2019 17:43:31 GMT
ENV NODE_ENV=production
# Wed, 29 May 2019 17:43:31 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Wed, 29 May 2019 17:43:51 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 29 May 2019 17:43:51 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 29 May 2019 17:43:51 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 29 May 2019 17:43:52 GMT
ENV GHOST_VERSION=2.22.3
# Wed, 29 May 2019 17:44:37 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 29 May 2019 17:46:31 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 29 May 2019 17:46:31 GMT
WORKDIR /var/lib/ghost
# Wed, 29 May 2019 17:46:32 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 29 May 2019 17:46:32 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 29 May 2019 17:46:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 17:46:32 GMT
EXPOSE 2368
# Wed, 29 May 2019 17:46:32 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:a8bc9b753e1bf8aa21f7c3d1da139f68eb283542f061c2d6d6c8cb253acd426b`  
		Last Modified: Wed, 29 May 2019 17:46:56 GMT  
		Size: 9.7 KB (9747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb5185cf14ae0b4650c16deabc2b6a10fd4584aeefa35be65642bccad19cb64`  
		Last Modified: Wed, 29 May 2019 17:46:56 GMT  
		Size: 1.2 MB (1223745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90bb34506ca5ba0e0dcf37d0eab8c5044cd847d32ee3967b11044d5583e8f2c9`  
		Last Modified: Wed, 29 May 2019 17:47:01 GMT  
		Size: 13.7 MB (13736340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974d4aa26be89349b2769733d2308a1169db5f69e62af98f6765f2ecbb9307b2`  
		Last Modified: Wed, 29 May 2019 17:47:27 GMT  
		Size: 144.3 MB (144299832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9653e6a2e15da665c627f5f02eee355d20b7dd0d708f53128f28a8bb7fa7393d`  
		Last Modified: Wed, 29 May 2019 17:46:59 GMT  
		Size: 12.5 MB (12489231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9f259f3808844e4c00c7b6945be6f9094a31d05b7cfc130022a778191bb11a`  
		Last Modified: Wed, 29 May 2019 17:46:55 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:6fa99327ca6f3db49621475c4de3a703c4ebffec953c7e825f95517293906e9b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.4 MB (198352309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c35d9506837f6636efe916ee1771928bac2b9d6879c8c3f4194a214ad8c3308`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 02:10:39 GMT
ENV NODE_VERSION=10.15.3
# Thu, 16 May 2019 02:24:07 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 16 May 2019 02:24:10 GMT
ENV YARN_VERSION=1.13.0
# Thu, 16 May 2019 02:24:20 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 16 May 2019 02:24:22 GMT
CMD ["node"]
# Thu, 16 May 2019 02:44:17 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 16 May 2019 02:44:26 GMT
RUN apk add --no-cache 		bash
# Thu, 16 May 2019 02:44:28 GMT
ENV NODE_ENV=production
# Thu, 16 May 2019 02:44:30 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 16 May 2019 02:45:10 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 16 May 2019 02:45:14 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 16 May 2019 02:45:17 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 16 May 2019 02:45:18 GMT
ENV GHOST_VERSION=2.22.1
# Thu, 16 May 2019 02:48:23 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 16 May 2019 02:51:13 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Thu, 16 May 2019 02:51:17 GMT
WORKDIR /var/lib/ghost
# Thu, 16 May 2019 02:51:20 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 16 May 2019 02:51:22 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Thu, 16 May 2019 02:51:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 02:51:28 GMT
EXPOSE 2368
# Thu, 16 May 2019 02:51:34 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f658a1195c9a8cc641cd6813c92b9cb21c878f8adb6d313a8121077bdb463d15`  
		Last Modified: Thu, 16 May 2019 02:28:18 GMT  
		Size: 21.7 MB (21671251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f631d59c3bad5d8a88f593a5e7b5876601270282a8a47e23efaea963b4333236`  
		Last Modified: Thu, 16 May 2019 02:28:12 GMT  
		Size: 1.3 MB (1331955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6783f4e54897cb99730320714ccc4157ee52a2174a90fa57ed6f9a44a7ad4b8`  
		Last Modified: Thu, 16 May 2019 02:58:17 GMT  
		Size: 10.2 KB (10234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cfc6a0f618596f142d97696bcd8e2a557a1582034bbab1cf23bba8b1e97e3b3`  
		Last Modified: Thu, 16 May 2019 02:58:18 GMT  
		Size: 1.3 MB (1257936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bde47e622704a14853f80e2d2e86f398c81ff600b5d8ecd5731666ff6efa2ba`  
		Last Modified: Thu, 16 May 2019 02:58:35 GMT  
		Size: 13.7 MB (13723912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bb14853896e17494803662d4b95c6a18a3336663adba1947604034527c7bac1`  
		Last Modified: Thu, 16 May 2019 03:00:32 GMT  
		Size: 144.3 MB (144338608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5655fc304bed8cdae83d7958bb3401b5825596be603c9e59094939a0c938fdbf`  
		Last Modified: Thu, 16 May 2019 02:58:22 GMT  
		Size: 13.2 MB (13236852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b18a5e3b111364674625f9568a672bca780ba9056e2d40b73d32ae5c3d4f5d`  
		Last Modified: Thu, 16 May 2019 02:58:14 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

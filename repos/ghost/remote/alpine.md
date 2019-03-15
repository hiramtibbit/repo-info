## `ghost:alpine`

```console
$ docker pull ghost@sha256:6dd67eb585f86f4d906ad828da900f04b084d63d3b72cb892ce47e955a5e7b17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:a3fd1e465d0ca1decd7cb8bdbe442d6f0926f5e25e5b417e780b5a1950a07795
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.7 MB (168701250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ad875131d794c39af99428ce7a8a7e4161d943a3a87621ba24de69bf25ea362`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 00:48:28 GMT
ENV NODE_VERSION=8.15.1
# Fri, 08 Mar 2019 01:19:02 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 08 Mar 2019 01:19:02 GMT
ENV YARN_VERSION=1.12.3
# Fri, 08 Mar 2019 01:19:06 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 08 Mar 2019 01:19:07 GMT
CMD ["node"]
# Fri, 08 Mar 2019 05:14:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 08 Mar 2019 05:15:01 GMT
RUN apk add --no-cache 		bash
# Fri, 08 Mar 2019 05:15:01 GMT
ENV NODE_ENV=production
# Fri, 08 Mar 2019 05:15:01 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Fri, 08 Mar 2019 05:15:21 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 08 Mar 2019 05:15:22 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 08 Mar 2019 05:15:22 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 14 Mar 2019 21:25:46 GMT
ENV GHOST_VERSION=2.18.1
# Thu, 14 Mar 2019 21:26:34 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 14 Mar 2019 21:26:44 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Thu, 14 Mar 2019 21:26:45 GMT
WORKDIR /var/lib/ghost
# Thu, 14 Mar 2019 21:26:45 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 14 Mar 2019 21:26:45 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Thu, 14 Mar 2019 21:26:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Mar 2019 21:26:45 GMT
EXPOSE 2368
# Thu, 14 Mar 2019 21:26:46 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d566d24cf388bd16d96a8e5e6ae33a5a47916f36e8744d3d4b78c3ea7bcec9`  
		Last Modified: Fri, 08 Mar 2019 02:58:02 GMT  
		Size: 18.9 MB (18871091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd3a030a46142ea43b86902821374f95626b699f43bca04218f3d21b38f27b4`  
		Last Modified: Fri, 08 Mar 2019 02:57:57 GMT  
		Size: 1.3 MB (1328418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebaa7ccf73aa7e7a6ebd65916a58c61420960f78622c95129d3f1b3c3b20f72`  
		Last Modified: Fri, 08 Mar 2019 05:20:01 GMT  
		Size: 9.4 KB (9413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62938127832ddd653ec7c8d95bb16ed5276f215beb663d0f70642ad7e870de84`  
		Last Modified: Fri, 08 Mar 2019 05:20:05 GMT  
		Size: 1.2 MB (1173443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfe12eae0eda336c272d07e4bcb4eebc112ba82b819ab82f9448da00304b213`  
		Last Modified: Fri, 08 Mar 2019 05:20:28 GMT  
		Size: 17.4 MB (17408304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13df14091d913944b565434469292e44773297efc4195407b93b0f523e69d4cb`  
		Last Modified: Thu, 14 Mar 2019 21:27:55 GMT  
		Size: 116.9 MB (116891095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a2b43f4b0ead4d62e4bd134847339eeb42d081efd914721c2cc010a9cec2e2`  
		Last Modified: Thu, 14 Mar 2019 21:27:34 GMT  
		Size: 10.8 MB (10811764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af08d72546c113695c56726f4f6921fb120f28e9e97a4ef23fe38472978e2c9a`  
		Last Modified: Thu, 14 Mar 2019 21:27:31 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:559f7fbb93732a2043a71c07a520037fa05d741142c2e743d1a4c39ad9af4646
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.1 MB (146070591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ff7eace07ac4a3de1427cae95139cff83f3d848cd165c947fcdf6ca548e96b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:12 GMT
ADD file:12f605067cb5bbeacec221bac51e31824953cb25bb6660ef15bb4bb4141906ba in / 
# Fri, 08 Mar 2019 03:36:13 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:17:25 GMT
ENV NODE_VERSION=8.15.1
# Fri, 08 Mar 2019 04:21:05 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 08 Mar 2019 04:21:06 GMT
ENV YARN_VERSION=1.12.3
# Fri, 08 Mar 2019 04:21:12 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 08 Mar 2019 04:21:12 GMT
CMD ["node"]
# Fri, 08 Mar 2019 05:42:24 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 08 Mar 2019 05:42:27 GMT
RUN apk add --no-cache 		bash
# Fri, 08 Mar 2019 05:42:27 GMT
ENV NODE_ENV=production
# Fri, 08 Mar 2019 05:42:28 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Fri, 08 Mar 2019 05:43:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 08 Mar 2019 05:43:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 08 Mar 2019 05:43:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 15 Mar 2019 07:49:22 GMT
ENV GHOST_VERSION=2.18.1
# Fri, 15 Mar 2019 07:51:08 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 15 Mar 2019 07:54:23 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 15 Mar 2019 07:54:23 GMT
WORKDIR /var/lib/ghost
# Fri, 15 Mar 2019 07:54:24 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 15 Mar 2019 07:54:24 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Fri, 15 Mar 2019 07:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Mar 2019 07:54:25 GMT
EXPOSE 2368
# Fri, 15 Mar 2019 07:54:25 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8394d8058172005229043bb0bda2cd7a5c4f934cf4c1beeb9a73c40c4edccd8`  
		Last Modified: Fri, 08 Mar 2019 04:37:35 GMT  
		Size: 17.8 MB (17832750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3475b68310e995c23407be0630cb1f49eff51180768b3f288f69ebfd7136368e`  
		Last Modified: Fri, 08 Mar 2019 04:37:29 GMT  
		Size: 1.3 MB (1328472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7da5f74865732f383e8992ebf7fa4cfa5f740db45ee4563dbe4a475eb7b6866`  
		Last Modified: Fri, 08 Mar 2019 05:53:19 GMT  
		Size: 9.3 KB (9338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1974303ef6790ee692ac75b0cb27800cfffbc5bbd8bd67b4a586391ec36a973`  
		Last Modified: Fri, 08 Mar 2019 05:53:19 GMT  
		Size: 1.1 MB (1127600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f06c72d8f464e14487485de6a3f7aabe86a75f2d7d25994e403c1a81204b2f`  
		Last Modified: Fri, 08 Mar 2019 05:53:29 GMT  
		Size: 17.4 MB (17411646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60fcf6079438d4af680ab61896b7b9363c5e1644a2d9400b9901a984eab97be0`  
		Last Modified: Fri, 15 Mar 2019 07:55:28 GMT  
		Size: 94.1 MB (94079508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45a3767e596389149ffeeb02c1dfb13025d80c568f521b77c1e2d851aacc285`  
		Last Modified: Fri, 15 Mar 2019 07:54:52 GMT  
		Size: 12.1 MB (12134610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e199e2c651cc66212b4f72264884c0c3cfef4189f529e237a80be32b8703d79`  
		Last Modified: Fri, 15 Mar 2019 07:54:49 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:edcb8142d4aa2643957b3ab62f126ddc6ec076669b380d680b90c098eb2ba415
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.4 MB (147383254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb72e2862865c3e24b3b0e441bdb76d76aeec9990402cd6473ad5c02a8847028`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:43 GMT
ADD file:a0b688c2ad4ec9d0535b05f0f63ecc15d1af3e496ad8fcf29809af582add17f0 in / 
# Fri, 08 Mar 2019 03:37:45 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:00:13 GMT
ENV NODE_VERSION=8.15.1
# Fri, 08 Mar 2019 05:10:27 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 08 Mar 2019 05:10:33 GMT
ENV YARN_VERSION=1.12.3
# Fri, 08 Mar 2019 05:10:47 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 08 Mar 2019 05:10:49 GMT
CMD ["node"]
# Fri, 08 Mar 2019 08:46:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 08 Mar 2019 08:46:24 GMT
RUN apk add --no-cache 		bash
# Fri, 08 Mar 2019 08:46:25 GMT
ENV NODE_ENV=production
# Fri, 08 Mar 2019 08:46:27 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Fri, 08 Mar 2019 08:47:08 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 08 Mar 2019 08:47:12 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 08 Mar 2019 08:47:17 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 15 Mar 2019 08:26:12 GMT
ENV GHOST_VERSION=2.18.1
# Fri, 15 Mar 2019 08:29:07 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 15 Mar 2019 08:31:41 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 15 Mar 2019 08:31:45 GMT
WORKDIR /var/lib/ghost
# Fri, 15 Mar 2019 08:31:48 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 15 Mar 2019 08:31:49 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Fri, 15 Mar 2019 08:31:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Mar 2019 08:31:52 GMT
EXPOSE 2368
# Fri, 15 Mar 2019 08:31:54 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:0c6396bb25a488a80e061dc7e486b5fee792a25d36fbafa08c0b0f31ef402eac`  
		Last Modified: Fri, 08 Mar 2019 03:38:44 GMT  
		Size: 2.2 MB (2194926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54b94b204eb1456bcb60e57433eebb8ff746477ffd2ffd426b7e6556c51e556`  
		Last Modified: Fri, 08 Mar 2019 06:04:20 GMT  
		Size: 18.6 MB (18647112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13e54023987856b7b5e1dc5e439a25362de2b0c052d9e68394c10fd66ec51e1`  
		Last Modified: Fri, 08 Mar 2019 06:04:08 GMT  
		Size: 1.3 MB (1328454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89112a5c7a13c3819dd790476e6f8211e3c725c74228b2d94a6e36ea27fd959f`  
		Last Modified: Fri, 08 Mar 2019 08:56:57 GMT  
		Size: 9.9 KB (9866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744d4cdf5ae1062bbba82f25f9252048d7efa314483f3ef4b55b5580e9e77930`  
		Last Modified: Fri, 08 Mar 2019 08:56:54 GMT  
		Size: 1.2 MB (1188859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b624075e7b00f817e8374f26b343fe91f6aa10509301f889b7e23ff3e467fb7`  
		Last Modified: Fri, 08 Mar 2019 08:57:11 GMT  
		Size: 17.4 MB (17419550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db7602c1f4e411f53aa85902e16fb07f1c7c540a313f80c7ab63e80e8e1c0627`  
		Last Modified: Fri, 15 Mar 2019 08:35:49 GMT  
		Size: 94.1 MB (94117862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea392c7e706e0aaf403bf59500729a03c5879a2586a1f7e20024e67fe810fb8`  
		Last Modified: Fri, 15 Mar 2019 08:34:24 GMT  
		Size: 12.5 MB (12476079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44a5b5db2feee00bbacd6a16b0060a376da8f036c606e2fd946cfe4f425b520`  
		Last Modified: Fri, 15 Mar 2019 08:34:21 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

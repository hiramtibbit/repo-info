## `ghost:2-alpine`

```console
$ docker pull ghost@sha256:5db00e31bfe3318f2cff2c19872dc091b86973ebbae890edb0f110931eb92f21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; arm variant v6

### `ghost:2-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:12aad8122d55e438d49e35a50b12224e6f191e9d529387d07cbbc2249c6eeca9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.8 MB (143827248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cd2facdd44fc848a3fefd0fc37e4d2fe3e40443949509fe4df06966c6b4ed8d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:39:21 GMT
ENV NODE_VERSION=10.15.3
# Sat, 20 Apr 2019 08:08:08 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 20 Apr 2019 08:08:09 GMT
ENV YARN_VERSION=1.13.0
# Sat, 20 Apr 2019 08:08:12 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 20 Apr 2019 08:08:13 GMT
CMD ["node"]
# Sat, 20 Apr 2019 08:25:03 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 20 Apr 2019 08:25:06 GMT
RUN apk add --no-cache 		bash
# Sat, 20 Apr 2019 08:25:07 GMT
ENV NODE_ENV=production
# Thu, 25 Apr 2019 07:49:20 GMT
ENV GHOST_CLI_VERSION=1.10.0
# Thu, 25 Apr 2019 07:49:48 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 25 Apr 2019 07:49:50 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 25 Apr 2019 07:49:50 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 01 May 2019 05:34:06 GMT
ENV GHOST_VERSION=2.21.1
# Wed, 01 May 2019 05:35:33 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 01 May 2019 05:38:46 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Wed, 01 May 2019 05:38:47 GMT
WORKDIR /var/lib/ghost
# Wed, 01 May 2019 05:38:47 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 01 May 2019 05:38:48 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Wed, 01 May 2019 05:38:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 May 2019 05:38:48 GMT
EXPOSE 2368
# Wed, 01 May 2019 05:38:49 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82bf39393e0518f18adcadd9e035ee071601aea13c8564b8708901fe5014f967`  
		Last Modified: Sat, 20 Apr 2019 08:09:37 GMT  
		Size: 19.2 MB (19226493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae877376f59c66417707bc16b5a3f5e0efa88ae8388b2356bf8e3447081a101f`  
		Last Modified: Sat, 20 Apr 2019 08:09:29 GMT  
		Size: 1.3 MB (1331929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5240cd21064ea2a628240164861f777e9897b5a6aa3abc64d5340aee86aa5d`  
		Last Modified: Sat, 20 Apr 2019 08:36:45 GMT  
		Size: 9.5 KB (9479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8203b07653ff52764b4e55f4fd78761fba64755ff09fff22bed2873ec8194b8`  
		Last Modified: Sat, 20 Apr 2019 08:36:44 GMT  
		Size: 1.1 MB (1121976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a987dba05b4304e70ff397b386cc6e25c153b096b950b17f361eab0a8747e58`  
		Last Modified: Thu, 25 Apr 2019 08:01:39 GMT  
		Size: 13.7 MB (13673620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32863580fe5f8bf6d311d65d4a847a865b27f956c87b028a5854361fd8a97a0c`  
		Last Modified: Wed, 01 May 2019 05:41:52 GMT  
		Size: 93.8 MB (93832914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03660d276fd60009928ab74450f0e851f387a6143771414841a9dcd782aa6e44`  
		Last Modified: Wed, 01 May 2019 05:39:20 GMT  
		Size: 12.1 MB (12086847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fad00169944920bc51b0f86233073995c999a5940b48989edd7172a5428fc3`  
		Last Modified: Wed, 01 May 2019 05:39:05 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

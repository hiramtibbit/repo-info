## `ghost:2-alpine`

```console
$ docker pull ghost@sha256:282eb9908ef9f0be5cdda82664d77a9512abf5c58ce73a47e53aa6efb2d5bbf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:2-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:71cc53f05d5d785d5bc9daa8416653abd873f595046bd7cb96eb165c402598dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.4 MB (169385275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a78e3d11b13800435f08bad03c43e99d3d2656cc4ca11cb0d31a240b19e5f78c`
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
# Thu, 04 Apr 2019 21:22:45 GMT
ENV GHOST_VERSION=2.19.3
# Thu, 04 Apr 2019 21:23:25 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 04 Apr 2019 21:23:35 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Thu, 04 Apr 2019 21:23:35 GMT
WORKDIR /var/lib/ghost
# Thu, 04 Apr 2019 21:23:35 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 04 Apr 2019 21:23:35 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Thu, 04 Apr 2019 21:23:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 04 Apr 2019 21:23:35 GMT
EXPOSE 2368
# Thu, 04 Apr 2019 21:23:36 GMT
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
	-	`sha256:611609c84f08f5914637c10964372dddc9c4e415d1fd2f0a5d0285ce7e4720ac`  
		Last Modified: Thu, 04 Apr 2019 21:24:36 GMT  
		Size: 115.8 MB (115805721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569baae0db69c4caf7ae9c60d7a6dabade2942061ab5752552b12ca18aa52de4`  
		Last Modified: Thu, 04 Apr 2019 21:24:18 GMT  
		Size: 10.8 MB (10801592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf3fc31cb511d80cb169e8b9e2f66b7619989c4ea840247d546d513627f2f43`  
		Last Modified: Thu, 04 Apr 2019 21:24:15 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:96c4036f2f4a9b914b5e651640cf4ed15230c35c856cf32d1e65b494bf5ff865
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.2 MB (147162063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc44f53751126f79677da9e7520bdb1fcd31609b36414a65c038214e1b8ee7f8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:32:15 GMT
ENV NODE_VERSION=10.15.3
# Fri, 08 Mar 2019 04:37:01 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 08 Mar 2019 04:37:02 GMT
ENV YARN_VERSION=1.13.0
# Fri, 08 Mar 2019 04:37:06 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 08 Mar 2019 04:37:06 GMT
CMD ["node"]
# Thu, 28 Mar 2019 07:49:23 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 28 Mar 2019 07:49:26 GMT
RUN apk add --no-cache 		bash
# Thu, 28 Mar 2019 07:49:26 GMT
ENV NODE_ENV=production
# Thu, 28 Mar 2019 07:49:27 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Thu, 28 Mar 2019 07:50:01 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 28 Mar 2019 07:50:03 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 28 Mar 2019 07:50:04 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 05 Apr 2019 07:49:23 GMT
ENV GHOST_VERSION=2.19.3
# Fri, 05 Apr 2019 07:50:57 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 05 Apr 2019 07:54:23 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 05 Apr 2019 07:54:24 GMT
WORKDIR /var/lib/ghost
# Fri, 05 Apr 2019 07:54:24 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 05 Apr 2019 07:54:25 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Fri, 05 Apr 2019 07:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Apr 2019 07:54:25 GMT
EXPOSE 2368
# Fri, 05 Apr 2019 07:54:26 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979204c678b0ba6f5bd25ba8434f0cd346c47cbe9cae372c4a3525d3e999d29a`  
		Last Modified: Fri, 08 Mar 2019 04:38:24 GMT  
		Size: 19.2 MB (19202850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1739a3dddeb54c1adae4be8165a147449d2758a6151e0886efe510bb09a9cc6e`  
		Last Modified: Fri, 08 Mar 2019 04:38:16 GMT  
		Size: 1.3 MB (1331945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6798227e0026ca98852642964557bf57b22788bd8acad6251c5507562412cd73`  
		Last Modified: Thu, 28 Mar 2019 07:55:23 GMT  
		Size: 9.5 KB (9466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d892224b4d9ceb5a6d2ec4294e95c879e4380689bda41ecdf03a0934060421b`  
		Last Modified: Thu, 28 Mar 2019 07:55:23 GMT  
		Size: 1.1 MB (1121947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ceb1bd6871d2acdf91a1951bc825a12e9eabdea84755245434f688339d2e55`  
		Last Modified: Thu, 28 Mar 2019 07:55:31 GMT  
		Size: 17.5 MB (17466058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b60d6f74ab9f49e3a269dff93abe68c3243b4acf75223a3b07d193e742705d2`  
		Last Modified: Fri, 05 Apr 2019 07:55:27 GMT  
		Size: 93.0 MB (93001329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6716fee474d9ad4ae33abebeb18999b025b9467a2b2330869fe11dfd92b73a66`  
		Last Modified: Fri, 05 Apr 2019 07:54:53 GMT  
		Size: 12.5 MB (12487249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d12eb539a95c2bb6683378b8c7002f654e5b2af1fa236e8a03300055309cd58`  
		Last Modified: Fri, 05 Apr 2019 07:54:49 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:ca7a5be42d655daf8fe1c1cb25a3a5a67eddeaf93bf6937c3fe7a7709f3ae7ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.2 MB (151206777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc59c1ac4235f131f0763984a872f9533abaa34d2bfac19da738a91312cda2ec`
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
# Fri, 05 Apr 2019 08:23:44 GMT
ENV GHOST_VERSION=2.19.3
# Fri, 05 Apr 2019 08:26:42 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 05 Apr 2019 08:29:20 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 05 Apr 2019 08:29:23 GMT
WORKDIR /var/lib/ghost
# Fri, 05 Apr 2019 08:29:26 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 05 Apr 2019 08:29:28 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Fri, 05 Apr 2019 08:29:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Apr 2019 08:29:33 GMT
EXPOSE 2368
# Fri, 05 Apr 2019 08:29:35 GMT
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
	-	`sha256:6532d76e6c74fa04ed60439fd97b8305d15ee8e767c8e2cc29e686a83eb34b5d`  
		Last Modified: Fri, 05 Apr 2019 08:34:14 GMT  
		Size: 93.0 MB (93020572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8037b3ef0b709170dc52f72d595b37d04b1ead8c0fcb98e8f474d3d55ed291`  
		Last Modified: Fri, 05 Apr 2019 08:32:38 GMT  
		Size: 13.7 MB (13671400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7e1c1263449b329b81ae70ac5158af45492498171dfd5248639a51ca4a57d8`  
		Last Modified: Fri, 05 Apr 2019 08:32:33 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

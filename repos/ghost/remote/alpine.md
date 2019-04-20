## `ghost:alpine`

```console
$ docker pull ghost@sha256:ade36ca0ffa8ecdbba4734063f547baa126173db39d273b9ba837510b81b3af5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:0c1932b86ecb8f251b95d28b14b97d33ee338fe3a0c6f80fb062211dae8c0a2a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.4 MB (169393149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d87155932ba5f8f68a6bd257280e2395c5b4740f26688e7cdb232c0fde0f34fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Sat, 20 Apr 2019 01:10:03 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 20 Apr 2019 01:10:05 GMT
RUN apk add --no-cache 		bash
# Sat, 20 Apr 2019 01:10:05 GMT
ENV NODE_ENV=production
# Sat, 20 Apr 2019 01:10:05 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Sat, 20 Apr 2019 01:10:25 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 20 Apr 2019 01:10:26 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 20 Apr 2019 01:10:26 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 20 Apr 2019 01:10:26 GMT
ENV GHOST_VERSION=2.20.1
# Sat, 20 Apr 2019 01:11:10 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Sat, 20 Apr 2019 01:11:20 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Sat, 20 Apr 2019 01:11:20 GMT
WORKDIR /var/lib/ghost
# Sat, 20 Apr 2019 01:11:21 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 20 Apr 2019 01:11:21 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Sat, 20 Apr 2019 01:11:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 20 Apr 2019 01:11:21 GMT
EXPOSE 2368
# Sat, 20 Apr 2019 01:11:21 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:c397db35b968cc7bd87a51bd9da6460f7047bcaf4a67667142117627e7b60aad`  
		Last Modified: Sat, 20 Apr 2019 01:14:06 GMT  
		Size: 9.7 KB (9681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b16889c1c7b4d829f30af6239e97aabce4ebb39b5f63bf353c45fa84bae9cf`  
		Last Modified: Sat, 20 Apr 2019 01:14:07 GMT  
		Size: 1.2 MB (1176765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2deb8a1b7b4fd2bbb6039533bb2ec61f51006d5f27591cc07fd07742077a31c4`  
		Last Modified: Sat, 20 Apr 2019 01:14:10 GMT  
		Size: 17.5 MB (17514599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf34443dc6aee1b4b31e261534fa69c4e2c4b5a80699a2c691dd968981723f3`  
		Last Modified: Sat, 20 Apr 2019 01:14:31 GMT  
		Size: 115.7 MB (115739910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1eccb1aa654ab5aee20f91c383e823efd14704e6f001d28d203b9fb63da5e64`  
		Last Modified: Sat, 20 Apr 2019 01:14:08 GMT  
		Size: 10.8 MB (10803540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e5e2926fd63eebbdca960b34dfd96f7c1a7a358dd92b00cf4b36eb0e3c04fa`  
		Last Modified: Sat, 20 Apr 2019 01:14:05 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:5b3aad0315fab4a6c83a30f0cdbed2a0103b5de153aa77658d5881a18fd9b254
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.8 MB (146760208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78b75c8fab8a88fc467671073da16ebcb954f626a71a335be3d88d735dac4aca`
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
# Sat, 20 Apr 2019 08:25:07 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Sat, 20 Apr 2019 08:25:41 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 20 Apr 2019 08:25:43 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 20 Apr 2019 08:25:43 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 20 Apr 2019 08:25:43 GMT
ENV GHOST_VERSION=2.20.1
# Sat, 20 Apr 2019 08:27:18 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Sat, 20 Apr 2019 08:30:44 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Sat, 20 Apr 2019 08:30:44 GMT
WORKDIR /var/lib/ghost
# Sat, 20 Apr 2019 08:30:45 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 20 Apr 2019 08:30:45 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Sat, 20 Apr 2019 08:30:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 20 Apr 2019 08:30:46 GMT
EXPOSE 2368
# Sat, 20 Apr 2019 08:30:46 GMT
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
	-	`sha256:f2a704d483848fe727811b37b9a20a711294f5d9c8a50e947326c5bd3062fff6`  
		Last Modified: Sat, 20 Apr 2019 08:36:53 GMT  
		Size: 17.5 MB (17513063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1347b8f2d787a65ab0b1e2821d38b27c0aa716f742e73327a97b55a092c438c1`  
		Last Modified: Sat, 20 Apr 2019 08:37:24 GMT  
		Size: 92.9 MB (92935744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a3c99bf10e4430ed5ac72d2a24c12cc10ac385de18d921d216f4e6d4d59274`  
		Last Modified: Sat, 20 Apr 2019 08:36:47 GMT  
		Size: 12.1 MB (12077542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f116b13526b84d85c48d64afd2eac30a30ae28d2d1d74e702d39bb608a0f502`  
		Last Modified: Sat, 20 Apr 2019 08:36:43 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; 386

```console
$ docker pull ghost@sha256:783a18b260ad1f3bce2ca47199318419148471deb255563a0f55e00d0d92a2c7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.3 MB (148253766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa2a60c4ac8995cdf358a994500de39e5aac37b51922857b933f8afb643693a5`
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
# Thu, 18 Apr 2019 11:24:24 GMT
ENV GHOST_VERSION=2.20.1
# Thu, 18 Apr 2019 11:25:09 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 18 Apr 2019 11:27:01 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Thu, 18 Apr 2019 11:27:01 GMT
WORKDIR /var/lib/ghost
# Thu, 18 Apr 2019 11:27:01 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 18 Apr 2019 11:27:02 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Thu, 18 Apr 2019 11:27:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Apr 2019 11:27:02 GMT
EXPOSE 2368
# Thu, 18 Apr 2019 11:27:02 GMT
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
	-	`sha256:ca78e5ecf1ca9bf3a24c61ecf07720befc545079e5c90dfd7ff564b5c69e28b5`  
		Last Modified: Thu, 18 Apr 2019 11:27:50 GMT  
		Size: 92.9 MB (92924197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08b35e96a8433a06cb9da0dec04b782b939445482e8fdb6a222b58ed10d5485`  
		Last Modified: Thu, 18 Apr 2019 11:27:26 GMT  
		Size: 12.3 MB (12318778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b565b7993ad59d221af58615c09cbfecf54e436a6070fd8ee295db18d3c14728`  
		Last Modified: Thu, 18 Apr 2019 11:27:23 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:5554acafc0923759c2d47ddfdf8088f596f0947602876cd133a0ed73a1a1e8a2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.7 MB (150736394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daf116664eb0ac58b92cfa161fe5da872754a59cc61288deed6eb4d74841565f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Sat, 20 Apr 2019 09:37:53 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 20 Apr 2019 09:38:07 GMT
RUN apk add --no-cache 		bash
# Sat, 20 Apr 2019 09:38:23 GMT
ENV NODE_ENV=production
# Sat, 20 Apr 2019 09:38:30 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Sat, 20 Apr 2019 09:39:27 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 20 Apr 2019 09:39:32 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 20 Apr 2019 09:39:36 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 20 Apr 2019 09:39:39 GMT
ENV GHOST_VERSION=2.20.1
# Sat, 20 Apr 2019 09:44:18 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Sat, 20 Apr 2019 09:47:11 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Sat, 20 Apr 2019 09:47:14 GMT
WORKDIR /var/lib/ghost
# Sat, 20 Apr 2019 09:47:17 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 20 Apr 2019 09:47:20 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Sat, 20 Apr 2019 09:47:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 20 Apr 2019 09:47:30 GMT
EXPOSE 2368
# Sat, 20 Apr 2019 09:47:34 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:752ab9b1e57765d03626dcf77c675243139a1b776fe5fd2ffa80e98f02d50313`  
		Last Modified: Sat, 20 Apr 2019 10:04:15 GMT  
		Size: 10.2 KB (10236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5023de91c8d4367b59ea47f9fa9f48acd14b98299a42a92dc50ab116bf2bc799`  
		Last Modified: Sat, 20 Apr 2019 10:04:19 GMT  
		Size: 1.3 MB (1257931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f91f23083062dfdb5740bc43face93ab741219ef6087f0411a9ece0f3e5196`  
		Last Modified: Sat, 20 Apr 2019 10:04:54 GMT  
		Size: 17.5 MB (17513787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ddb354decf205e2c395353a48c870b33ccb4ed241241aefe52295c2f8817491`  
		Last Modified: Sat, 20 Apr 2019 10:05:59 GMT  
		Size: 93.0 MB (92957689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b10da917f08c77f095fdc84bdebc575ce06ffb2aa0d5943c361b7cc4bba741`  
		Last Modified: Sat, 20 Apr 2019 10:04:19 GMT  
		Size: 13.2 MB (13211793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5eadbbd961ef41b87ab5d856568c1e8e6cdb704bb2464ce35e2a57df104cc9`  
		Last Modified: Sat, 20 Apr 2019 10:04:12 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:7cc9e023810b92dc93c4d6cfd25a88e576d77d11d8b775942c66cfae7071ad07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:6a50af403214f19b09960af9caaafbb292f8f3658c86ebf082c9a7905748fe20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.9 MB (142870484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b4b24ca4854571a9c5cc6599b3251beea7549fe7f455eedcd49368bb3692c50`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:55:04 GMT
ENV NODE_VERSION=8.11.3
# Fri, 06 Jul 2018 16:02:11 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 06 Jul 2018 16:02:11 GMT
ENV YARN_VERSION=1.6.0
# Fri, 06 Jul 2018 16:02:17 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 06 Jul 2018 16:02:17 GMT
CMD ["node"]
# Wed, 25 Jul 2018 17:31:01 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 25 Jul 2018 17:31:03 GMT
RUN apk add --no-cache 		bash
# Wed, 25 Jul 2018 17:31:03 GMT
ENV NODE_ENV=production
# Wed, 25 Jul 2018 17:31:04 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Wed, 25 Jul 2018 17:31:23 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 25 Jul 2018 17:31:24 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 25 Jul 2018 17:31:24 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 31 Jul 2018 22:22:22 GMT
ENV GHOST_VERSION=1.25.3
# Tue, 31 Jul 2018 22:23:05 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 31 Jul 2018 22:23:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 31 Jul 2018 22:23:20 GMT
WORKDIR /var/lib/ghost
# Tue, 31 Jul 2018 22:23:21 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 31 Jul 2018 22:23:21 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Tue, 31 Jul 2018 22:23:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 22:23:22 GMT
EXPOSE 2368/tcp
# Tue, 31 Jul 2018 22:23:22 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:becc6a89816a5bcede18491a5a34dcf9c676f19ae17cf5e250930405301ed038`  
		Last Modified: Fri, 06 Jul 2018 16:32:17 GMT  
		Size: 19.6 MB (19640105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa183c3e7c21cda8043be39186fd4d2d1ff49f53146de1603a79824a00b0a4e3`  
		Last Modified: Fri, 06 Jul 2018 16:32:09 GMT  
		Size: 1.1 MB (1079811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf2397642cb13dea310707c224da5192bcfd4f87fe7c645384bb74cb55ad7000`  
		Last Modified: Wed, 25 Jul 2018 17:34:32 GMT  
		Size: 8.8 KB (8795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e323ca84964397c12c7d444f9d779a90df1e4bad081646ea746e1ce1c228b901`  
		Last Modified: Wed, 25 Jul 2018 17:34:33 GMT  
		Size: 1.1 MB (1116791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819e5269a78961b0bcdcb49ce38286fa4d3e6c2a25adcc137486747e9e61c590`  
		Last Modified: Wed, 25 Jul 2018 17:34:41 GMT  
		Size: 17.0 MB (16950665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a44206f27d6fea406f062c98ecfc7703fd6bbbd73169f4fc4ba569dee71d55`  
		Last Modified: Tue, 31 Jul 2018 22:27:24 GMT  
		Size: 102.1 MB (102059098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79d8dea470a6f4c93b645f926b11bf17459e72af8d32a8cdd705ad3fc56a477`  
		Last Modified: Tue, 31 Jul 2018 22:26:51 GMT  
		Size: 561.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:bf36679f2c665692bbb9f723e63d370434a4253058a201c38c638281b04e3433
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 MB (135332176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8b51861788718fe9d5419946137837806a1f63a5b05c753498d677e56e6a022`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Wed, 13 Jun 2018 01:49:11 GMT
ENV NODE_VERSION=8.11.3
# Wed, 13 Jun 2018 01:57:19 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 13 Jun 2018 01:57:20 GMT
ENV YARN_VERSION=1.6.0
# Wed, 13 Jun 2018 01:57:37 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 13 Jun 2018 01:57:56 GMT
CMD ["node"]
# Thu, 26 Jul 2018 08:38:32 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Jul 2018 08:38:36 GMT
RUN apk add --no-cache 		bash
# Thu, 26 Jul 2018 08:38:37 GMT
ENV NODE_ENV=production
# Thu, 26 Jul 2018 08:38:38 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Thu, 26 Jul 2018 08:40:37 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 26 Jul 2018 08:40:54 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 26 Jul 2018 08:40:55 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 01 Aug 2018 08:37:39 GMT
ENV GHOST_VERSION=1.25.3
# Wed, 01 Aug 2018 08:50:06 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 01 Aug 2018 08:50:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 01 Aug 2018 08:50:18 GMT
WORKDIR /var/lib/ghost
# Wed, 01 Aug 2018 08:50:24 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 01 Aug 2018 08:50:33 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Wed, 01 Aug 2018 08:50:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Aug 2018 08:50:45 GMT
EXPOSE 2368/tcp
# Wed, 01 Aug 2018 08:50:51 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587e4419858a1de447930aa04dc8fc067e547ff6623847d8c48b959f5886c19d`  
		Last Modified: Wed, 13 Jun 2018 02:21:49 GMT  
		Size: 19.8 MB (19841153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:444b1e1510e5f6fa4852ac7f72b26816e5f82f2fa9342d01e904dac5f66cc77d`  
		Last Modified: Wed, 13 Jun 2018 02:21:42 GMT  
		Size: 1.1 MB (1080159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f28bc8cdb6467173586335d346c27aa31fe7af6f4ff17ddbb11efddbd1a9158`  
		Last Modified: Thu, 26 Jul 2018 08:52:20 GMT  
		Size: 9.4 KB (9413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e9016bb618c51581f213931dcb79e5b72b047d263e6039956d9f5178830d82`  
		Last Modified: Thu, 26 Jul 2018 08:52:20 GMT  
		Size: 1.1 MB (1106148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b747fca2a944a65f20b04aab8f8cf255486929b4bf1c2198f7591f4f59cfebd5`  
		Last Modified: Thu, 26 Jul 2018 08:52:38 GMT  
		Size: 17.0 MB (16951491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2809ab1d2951d0ddecddac93922d268f4d31aa2ce5577bb4b08869e24a5c407f`  
		Last Modified: Wed, 01 Aug 2018 08:57:26 GMT  
		Size: 94.3 MB (94334497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2be9b7fa922e3734b0363678600cfe492e32fc7eb87c6cee21a92d6b2594c56`  
		Last Modified: Wed, 01 Aug 2018 08:55:19 GMT  
		Size: 561.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

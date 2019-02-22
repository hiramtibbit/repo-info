## `ghost:2-alpine`

```console
$ docker pull ghost@sha256:29b8d0c61719f1b1c1ece60e08649601f052b92beef294b6195b680b9ff86ef1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:2-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:08b218043ea3556f7a770b2cc52b5ed34dbf88f27699c452f7e5e229d83d770f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.3 MB (169328168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39b915b93e2bceff9683e794b89cfc49b7d79d961500dd3983809113f0bfcce3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:19:53 GMT
ENV NODE_VERSION=8.15.0
# Wed, 30 Jan 2019 22:38:42 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 30 Jan 2019 22:38:42 GMT
ENV YARN_VERSION=1.12.3
# Wed, 30 Jan 2019 22:38:46 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 30 Jan 2019 22:38:47 GMT
CMD ["node"]
# Thu, 31 Jan 2019 02:45:00 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 31 Jan 2019 02:45:02 GMT
RUN apk add --no-cache 		bash
# Thu, 31 Jan 2019 02:45:02 GMT
ENV NODE_ENV=production
# Thu, 31 Jan 2019 02:45:02 GMT
ENV GHOST_CLI_VERSION=1.9.9
# Thu, 31 Jan 2019 02:45:22 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 31 Jan 2019 02:45:23 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 31 Jan 2019 02:45:23 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 22 Feb 2019 00:26:54 GMT
ENV GHOST_VERSION=2.15.0
# Fri, 22 Feb 2019 00:28:04 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 22 Feb 2019 00:28:21 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! su-exec node yarn add "sqlite3@$sqlite3Version" --force; then 		apk add --no-cache --virtual .build-deps python make gcc g++ libc-dev; 				su-exec node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apk del --no-network .build-deps; 	fi
# Fri, 22 Feb 2019 00:28:21 GMT
WORKDIR /var/lib/ghost
# Fri, 22 Feb 2019 00:28:21 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 22 Feb 2019 00:28:22 GMT
COPY file:87209c4c75826f5d839c2f3270a782740f42eecf4bc96b2f6dbae79b08c17e21 in /usr/local/bin 
# Fri, 22 Feb 2019 00:28:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 00:28:22 GMT
EXPOSE 2368
# Fri, 22 Feb 2019 00:28:22 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62154f231947a79f0fa2c21b5b6ea90f191a1012773684fb766bf43139551ff0`  
		Last Modified: Thu, 31 Jan 2019 00:00:35 GMT  
		Size: 18.9 MB (18870481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf10a8404b6ca2d9f9e9d1e18fd89f175148e6bfea6c0b927655f34cd29c9bc`  
		Last Modified: Thu, 31 Jan 2019 00:00:28 GMT  
		Size: 1.3 MB (1328402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111312b8db58c62fdeb0aab4e32ea20e3fb480ea2d21ed246deeb167ea92d8c0`  
		Last Modified: Thu, 31 Jan 2019 02:47:32 GMT  
		Size: 9.4 KB (9400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a8b3dd4622e13269b367c59e999a524d915753622ee783f8b27f01d8032fba5`  
		Last Modified: Thu, 31 Jan 2019 02:47:31 GMT  
		Size: 1.2 MB (1173424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77aff150715c7f4fe42d85baafa9caab39f8c49a5e4a02a4dccae9b2beb7a8a4`  
		Last Modified: Thu, 31 Jan 2019 02:47:36 GMT  
		Size: 17.3 MB (17298726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4ac63816286674674980106b7e6e7e57c68a9c6c8cd5124b22798645705e653`  
		Last Modified: Fri, 22 Feb 2019 00:29:55 GMT  
		Size: 117.6 MB (117628057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2168b95c4b5b8de8824d7adc57227082743e6108c087dd5e6e54a8b79c8ad946`  
		Last Modified: Fri, 22 Feb 2019 00:29:33 GMT  
		Size: 10.8 MB (10812093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2360d0801c13a3654c0204ec63ab07348b8369c447081c7c9ac6c4b2091b7144`  
		Last Modified: Fri, 22 Feb 2019 00:29:30 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

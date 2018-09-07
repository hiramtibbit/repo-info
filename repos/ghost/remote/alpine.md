## `ghost:alpine`

```console
$ docker pull ghost@sha256:2cff9fa27ba2d83509530585e7ea98128a443e71002ff7a8a1dd07262ff7627b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:348f861ee7df896fae58b15b93c2a9c732c2edfe588b4b97c041c6d7d8045fa5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.2 MB (142152383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58784ae022ff56d3753d5f7600dec01b4b2176f7f18d71ea6d9a67d96107633a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Tue, 04 Sep 2018 21:42:54 GMT
ENV NODE_VERSION=8.11.4
# Tue, 04 Sep 2018 22:04:55 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 04 Sep 2018 22:04:55 GMT
ENV YARN_VERSION=1.6.0
# Tue, 04 Sep 2018 22:04:59 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Sep 2018 22:04:59 GMT
CMD ["node"]
# Wed, 05 Sep 2018 08:45:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 05 Sep 2018 08:45:23 GMT
RUN apk add --no-cache 		bash
# Wed, 05 Sep 2018 08:45:24 GMT
ENV NODE_ENV=production
# Fri, 07 Sep 2018 19:25:11 GMT
ENV GHOST_CLI_VERSION=1.9.3
# Fri, 07 Sep 2018 19:25:28 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 07 Sep 2018 19:25:29 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 07 Sep 2018 19:25:29 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 07 Sep 2018 19:25:29 GMT
ENV GHOST_VERSION=2.1.1
# Fri, 07 Sep 2018 19:26:03 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 07 Sep 2018 19:26:04 GMT
WORKDIR /var/lib/ghost
# Fri, 07 Sep 2018 19:26:04 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 07 Sep 2018 19:26:04 GMT
COPY file:984b6359fb5468bd755c750256f62662bb2d19b1b40771579aca645181832f7f in /usr/local/bin 
# Fri, 07 Sep 2018 19:26:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Sep 2018 19:26:05 GMT
EXPOSE 2368/tcp
# Fri, 07 Sep 2018 19:26:05 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db7179d8c6cdb7f56b40d066af6116b26bf59b0852d793313a7a7cdc9db16263`  
		Last Modified: Tue, 04 Sep 2018 22:51:28 GMT  
		Size: 19.6 MB (19646672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b9cfaecc8c4d34833b5750eac3b6a6c6ce3e89897ae9bc24288553e2081fc3`  
		Last Modified: Tue, 04 Sep 2018 22:51:23 GMT  
		Size: 1.1 MB (1080884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbba7cbf76a35a2b068e5b38c4ae0fd997f1eb91fc08dbb7aa58df43e3075121`  
		Last Modified: Wed, 05 Sep 2018 08:53:44 GMT  
		Size: 8.8 KB (8802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e489f2181ad974f03b78a13e089f4ab9d1fd2e68d7aca7b1bf2bd2c176355238`  
		Last Modified: Wed, 05 Sep 2018 08:53:45 GMT  
		Size: 1.1 MB (1122703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35895fbba177a842f11efaa8081e64ec5f461fe0443a0defeea7f52e84d55d62`  
		Last Modified: Fri, 07 Sep 2018 19:29:25 GMT  
		Size: 18.0 MB (17976632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8edeea8a0c19ee747b182597b6641f114576894cf8b53ed74ae0a327a697f408`  
		Last Modified: Fri, 07 Sep 2018 19:29:40 GMT  
		Size: 100.3 MB (100301504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984baded84354777ab304a4d5e923f88975d711ee5555bf2a6d151370a9c815a`  
		Last Modified: Fri, 07 Sep 2018 19:29:19 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

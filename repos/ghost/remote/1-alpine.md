## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:9c01851baaeb0830ca2f18ccae3851d06728df6b4ad3bae361fe11e316611061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:8f28eb9f949ea43500e8c243f96588e9f4242be4a72a43357072a870879ccda0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.5 MB (180452690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80f42176b4c6a2160e6e63448e2671ea2ee2b7d5ed790418134a3dcacf63acac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Thu, 03 May 2018 23:45:34 GMT
ENV NODE_VERSION=6.14.2
# Thu, 03 May 2018 23:58:32 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 03 May 2018 23:58:33 GMT
ENV YARN_VERSION=1.6.0
# Thu, 03 May 2018 23:58:46 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 03 May 2018 23:58:46 GMT
CMD ["node"]
# Fri, 04 May 2018 01:09:40 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 04 May 2018 01:09:42 GMT
RUN apk add --no-cache 		bash
# Fri, 04 May 2018 01:09:48 GMT
ENV NODE_ENV=production
# Thu, 10 May 2018 20:27:01 GMT
ENV GHOST_CLI_VERSION=1.7.3
# Thu, 10 May 2018 20:27:28 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 10 May 2018 20:27:28 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 10 May 2018 20:27:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 May 2018 21:24:51 GMT
ENV GHOST_VERSION=1.23.0
# Wed, 23 May 2018 21:25:30 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 23 May 2018 21:25:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 23 May 2018 21:25:32 GMT
WORKDIR /var/lib/ghost
# Wed, 23 May 2018 21:25:32 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 May 2018 21:25:32 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Wed, 23 May 2018 21:25:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 May 2018 21:25:33 GMT
EXPOSE 2368/tcp
# Wed, 23 May 2018 21:25:33 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892b5b9f1913fa3747fd8b37163f03cf7b7fe4252e9fe5e0b9a07c4c217e61ef`  
		Last Modified: Fri, 04 May 2018 00:42:48 GMT  
		Size: 15.5 MB (15512134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6286b99c67b41a05d3eff58f32b1bbf8fb77bbcdf43fc894caa075ec6939dd11`  
		Last Modified: Fri, 04 May 2018 00:42:43 GMT  
		Size: 1.1 MB (1072917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2e753b0bd7da5f6625da3365e32865d429da6de674b58ca1a554c58ceb4ab8`  
		Last Modified: Fri, 04 May 2018 02:51:43 GMT  
		Size: 8.4 KB (8365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c8b9ca0030b0db0559cdd5bebd2e6fe9c2e204fa3f4e5d17b55255fabdec3a`  
		Last Modified: Fri, 04 May 2018 02:51:51 GMT  
		Size: 1.1 MB (1119092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a59b5c7bc7cb8919622e0ab8404d45ee9a594f465678ec63894b26ae955d865`  
		Last Modified: Thu, 10 May 2018 20:30:04 GMT  
		Size: 18.7 MB (18739439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e59c439cb0322f41d9aff0e77dab4e9052b4002bc22fcfca16cf803d78ab1e`  
		Last Modified: Wed, 23 May 2018 21:28:59 GMT  
		Size: 141.6 MB (141612610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f0a064548d6fe1108335a0200f5348c1c969fef4fa9c46b0914de85eadd01e`  
		Last Modified: Wed, 23 May 2018 21:28:42 GMT  
		Size: 563.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

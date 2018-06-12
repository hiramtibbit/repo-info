## `ghost:latest`

```console
$ docker pull ghost@sha256:0c66d03ac5ff51b31abadc920e2ac920a92a4b0c47c1eba4216d84b3c09f9d96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:latest` - linux; amd64

```console
$ docker pull ghost@sha256:1940808a3a95cb20323fac7423cd0813842db66054a3dfffa929b7ad99bfd448
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229298358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1375405e7316974bdff5af3e3e71e5b26358a6044d6f4f96578b9d9fb69988ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 01:40:13 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 06 Jun 2018 01:40:16 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Wed, 06 Jun 2018 01:56:57 GMT
ENV NODE_VERSION=6.14.2
# Wed, 06 Jun 2018 01:57:56 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Jun 2018 01:57:57 GMT
ENV YARN_VERSION=1.6.0
# Wed, 06 Jun 2018 01:58:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Jun 2018 01:58:02 GMT
CMD ["node"]
# Wed, 06 Jun 2018 18:19:36 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Jun 2018 18:19:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Jun 2018 18:19:41 GMT
ENV NODE_ENV=production
# Wed, 06 Jun 2018 18:19:41 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Wed, 06 Jun 2018 18:20:18 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Jun 2018 18:20:18 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Jun 2018 18:20:19 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 12 Jun 2018 00:19:27 GMT
ENV GHOST_VERSION=1.24.2
# Tue, 12 Jun 2018 00:20:36 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 12 Jun 2018 00:20:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 12 Jun 2018 00:21:03 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 12 Jun 2018 00:21:03 GMT
WORKDIR /var/lib/ghost
# Tue, 12 Jun 2018 00:21:03 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 12 Jun 2018 00:21:04 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Tue, 12 Jun 2018 00:21:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Jun 2018 00:21:04 GMT
EXPOSE 2368/tcp
# Tue, 12 Jun 2018 00:21:04 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77cfa1fc62778ca7f3294c941c2688b1cbe18995a0d41bf208a7a3cbe52adc8`  
		Last Modified: Wed, 06 Jun 2018 02:10:19 GMT  
		Size: 4.4 KB (4403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e2482667912dca0b5544a7453d966463433dcbdd3716ed8ade5d76a476b235`  
		Last Modified: Wed, 06 Jun 2018 02:10:19 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a5a1306ee826d1b529164dbf70e9c62a0a4ea0ed13ffd1599c360a35066a0a`  
		Last Modified: Wed, 06 Jun 2018 02:15:25 GMT  
		Size: 31.3 MB (31337410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b1d036107317d354d58d252eb768b0997435ac23f1619e93cce2363e949b3d`  
		Last Modified: Wed, 06 Jun 2018 02:15:14 GMT  
		Size: 1.1 MB (1066212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9563bdf4c9b10e7f66588a7674b111b4ae710921ed2004fa33d5c8e5237cc60`  
		Last Modified: Wed, 06 Jun 2018 18:28:10 GMT  
		Size: 500.7 KB (500674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87230e08f1adf725751f99416f03560b7caa85db11e296890bc30162904b0f78`  
		Last Modified: Wed, 06 Jun 2018 18:28:26 GMT  
		Size: 18.4 MB (18431094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c486359d6cc128fbcd1be188e04fd1b60b6b2df7e2234fb9637e69384f4fed`  
		Last Modified: Tue, 12 Jun 2018 00:23:37 GMT  
		Size: 140.9 MB (140850609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1c6680194743589b9ebeb08a0e8e5de454c63d7b16717b0822980e7ead2cd2`  
		Last Modified: Tue, 12 Jun 2018 00:22:47 GMT  
		Size: 6.9 MB (6862465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c665d020a130cac4c42c31c0459268b5d6061fccf20ab7396b708bdb083898a0`  
		Last Modified: Tue, 12 Jun 2018 00:22:46 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:0`](#ghost0)
-	[`ghost:0.11`](#ghost011)
-	[`ghost:0.11.13`](#ghost01113)
-	[`ghost:0.11.13-alpine`](#ghost01113-alpine)
-	[`ghost:0.11-alpine`](#ghost011-alpine)
-	[`ghost:0-alpine`](#ghost0-alpine)
-	[`ghost:1`](#ghost1)
-	[`ghost:1.23`](#ghost123)
-	[`ghost:1.23.0`](#ghost1230)
-	[`ghost:1.23.0-alpine`](#ghost1230-alpine)
-	[`ghost:1.23-alpine`](#ghost123-alpine)
-	[`ghost:1-alpine`](#ghost1-alpine)
-	[`ghost:alpine`](#ghostalpine)
-	[`ghost:latest`](#ghostlatest)

## `ghost:0`

```console
$ docker pull ghost@sha256:802b367153cbab7ca8ece05d6831089d0427332298d7e6775243ddd492a8bd82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:0` - linux; amd64

```console
$ docker pull ghost@sha256:f695be766fd34ac3a560f925714d56560685433052682fde60f59f78fc7d8748
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.5 MB (89501238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dbe53eb7a5aa42f9dda16b2e662abde28922707a6bbb29a628f2a3ec4b747e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Thu, 24 May 2018 19:43:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 24 May 2018 19:43:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Thu, 24 May 2018 20:25:43 GMT
ENV NODE_VERSION=6.14.2
# Thu, 24 May 2018 20:26:12 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 24 May 2018 20:26:13 GMT
ENV YARN_VERSION=1.6.0
# Thu, 24 May 2018 20:26:16 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 24 May 2018 20:26:16 GMT
CMD ["node"]
# Thu, 24 May 2018 22:32:52 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 24 May 2018 22:32:52 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 May 2018 22:32:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 24 May 2018 22:32:58 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 24 May 2018 22:32:58 GMT
WORKDIR /usr/src/ghost
# Thu, 24 May 2018 22:32:58 GMT
ENV GHOST_VERSION=0.11.13
# Thu, 24 May 2018 22:34:20 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 24 May 2018 22:34:21 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 24 May 2018 22:34:22 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 24 May 2018 22:34:22 GMT
VOLUME [/var/lib/ghost]
# Thu, 24 May 2018 22:34:22 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 24 May 2018 22:34:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 24 May 2018 22:34:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 May 2018 22:34:23 GMT
EXPOSE 2368/tcp
# Thu, 24 May 2018 22:34:24 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db908151ac093a2ced2707e30d84874d4d162594ee84613e477f739f682410f1`  
		Last Modified: Thu, 24 May 2018 20:54:10 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d5faee7ece1ef1c5a46dfc27a19508ea42ca466e7909668e1329ff33cad5ac`  
		Last Modified: Thu, 24 May 2018 20:54:10 GMT  
		Size: 117.6 KB (117612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd7b61dadbbb9c8df09b0b8c146d3cced6f8825d61dcad2a266e42fb5b66272`  
		Last Modified: Thu, 24 May 2018 21:00:52 GMT  
		Size: 31.3 MB (31336873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cf569e2d11426efa5d31ca66ba326a60059b7162e56048e8c5dbbb58cb9d477`  
		Last Modified: Thu, 24 May 2018 21:00:45 GMT  
		Size: 1.1 MB (1066216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799a414b87a9c414742787a5ce71b4e58d390de2618fabce4515c145937ad07c`  
		Last Modified: Thu, 24 May 2018 22:44:06 GMT  
		Size: 4.5 KB (4452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7bc6cfbae66e7ba71b5d8debc2dcd8be8d1235cf544ced7847a10e047d5f7d7`  
		Last Modified: Thu, 24 May 2018 22:44:07 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f804c470e13f3389582225aa7658a21b01210ec1eb10e3aa294107259cc6df`  
		Last Modified: Thu, 24 May 2018 22:44:04 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8959107ae2103a5f2ffcfb261ad5ee672d27cbd7bd78bfff30c47797afb3685f`  
		Last Modified: Thu, 24 May 2018 22:44:19 GMT  
		Size: 26.3 MB (26342609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ecb910cc9466d41482ff771de11482a3757a1b9a56e47d538ef4ecc3d04f1b`  
		Last Modified: Thu, 24 May 2018 22:44:04 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a685cb2b6c9618c3abffebc858e4af13021c67bc4ae55b37c3b48bfff9c5025e`  
		Last Modified: Thu, 24 May 2018 22:44:04 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5b76b16919721c011fb062e965d99e509e5cc41a9d40f005c43a2c04c03649`  
		Last Modified: Thu, 24 May 2018 22:44:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:b54ffe8466c75fbc762a7c60a30b3339d04992c28176f773b8e2c7fbbb9affac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117535693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29b1cfcfcc45cf730675b526a5290c695b064e3ea06852363373d72693636f72`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:16:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 20:56:03 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 05 May 2018 20:56:08 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 05 May 2018 20:58:26 GMT
ENV NODE_VERSION=6.14.2
# Sat, 05 May 2018 20:58:53 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 05 May 2018 20:58:54 GMT
ENV YARN_VERSION=1.6.0
# Sat, 05 May 2018 20:58:59 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 05 May 2018 20:59:00 GMT
CMD ["node"]
# Sun, 06 May 2018 00:15:55 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sun, 06 May 2018 00:15:56 GMT
ENV GOSU_VERSION=1.10
# Sun, 06 May 2018 00:15:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 06 May 2018 00:16:00 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sun, 06 May 2018 00:16:01 GMT
WORKDIR /usr/src/ghost
# Sun, 06 May 2018 00:16:02 GMT
ENV GHOST_VERSION=0.11.13
# Sun, 06 May 2018 00:21:55 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sun, 06 May 2018 00:21:56 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sun, 06 May 2018 00:21:58 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sun, 06 May 2018 00:21:59 GMT
VOLUME [/var/lib/ghost]
# Sun, 06 May 2018 00:22:00 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sun, 06 May 2018 00:22:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sun, 06 May 2018 00:22:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 06 May 2018 00:22:03 GMT
EXPOSE 2368/tcp
# Sun, 06 May 2018 00:22:04 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc4956efcaf7d30060a373d34961e3c6e71ee0317cb5381a180230a397c5442`  
		Last Modified: Sat, 05 May 2018 09:43:52 GMT  
		Size: 17.2 MB (17213842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87a9fa2fe22a0d030f46183751b6f52579884755aa26ad5c36a5a68e85ec071`  
		Last Modified: Sat, 05 May 2018 21:01:41 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01de86854d3726dc3357440e44faae70c9ed20e2bf2e19431e1a207f7840627d`  
		Last Modified: Sat, 05 May 2018 21:01:41 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace6290f8f0213e3356a6d9ff4caffac4e9d77d73f0c2b1defa049b6a389e26`  
		Last Modified: Sat, 05 May 2018 21:03:14 GMT  
		Size: 14.8 MB (14760653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86d24b6dbb7d58d9df67fecf9700b52621e63db86db73a74c19207b734cb667`  
		Last Modified: Sat, 05 May 2018 21:03:08 GMT  
		Size: 1.1 MB (1066214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc9c056f6cb0dfc544f906df8661fcaf54a9bbf406e0007681edd39448a6186`  
		Last Modified: Sun, 06 May 2018 00:23:46 GMT  
		Size: 4.5 KB (4468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc46986d87beb2bbb88e17801080485c70f3c22ddb51c0fbb38167b4c9e176f`  
		Last Modified: Sun, 06 May 2018 00:23:46 GMT  
		Size: 468.7 KB (468695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c124fe7481b2037c248fbe92bfb31a4a90daae6eae811b1dacfaf9ff048d44`  
		Last Modified: Sun, 06 May 2018 00:23:44 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095e239f2fe370e7e63949f9fef8bf603b2f3005f18676470f3550fccc7e8880`  
		Last Modified: Sun, 06 May 2018 00:24:01 GMT  
		Size: 32.5 MB (32451826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3fa5ea488055af7b3822c0262a59510100451e98468dd2a81305fe0e73dafa`  
		Last Modified: Sun, 06 May 2018 00:23:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba8644fd0d892ec4b5a5636fc66c315e30cf3931b38c5649f314b33e5a843214`  
		Last Modified: Sun, 06 May 2018 00:23:44 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6ec7b916464f42d77ac2dd25a7ba0d3a8de49e9e482c6dfdac0eabb1e9466e`  
		Last Modified: Sun, 06 May 2018 00:23:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; 386

```console
$ docker pull ghost@sha256:bae12db9bc429d0331adf16489eda66a68bbf60041d9a313945c8095529bf3e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.9 MB (122865057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0acccbb4584719f2bc04c0da74e7d081305f98c5ad7ce870721ab9cfd37b8fb0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:32 GMT
ADD file:ce5174f2b2c155a2421fac3ff37a02d9551d5d79e31a541189bcfd2416a6903a in / 
# Sat, 28 Apr 2018 10:39:32 GMT
CMD ["bash"]
# Sat, 05 May 2018 10:58:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 10:58:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 17:42:29 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 05 May 2018 17:42:33 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 05 May 2018 17:45:33 GMT
ENV NODE_VERSION=6.14.2
# Sat, 05 May 2018 17:46:09 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 05 May 2018 17:46:09 GMT
ENV YARN_VERSION=1.6.0
# Sat, 05 May 2018 17:46:12 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 05 May 2018 17:46:12 GMT
CMD ["node"]
# Sat, 05 May 2018 21:26:17 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 05 May 2018 21:26:17 GMT
ENV GOSU_VERSION=1.10
# Sat, 05 May 2018 21:26:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 05 May 2018 21:26:22 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 05 May 2018 21:26:22 GMT
WORKDIR /usr/src/ghost
# Sat, 05 May 2018 21:26:22 GMT
ENV GHOST_VERSION=0.11.13
# Sat, 05 May 2018 21:28:31 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 05 May 2018 21:28:32 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 05 May 2018 21:28:33 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 05 May 2018 21:28:33 GMT
VOLUME [/var/lib/ghost]
# Sat, 05 May 2018 21:28:33 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 05 May 2018 21:28:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 05 May 2018 21:28:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 21:28:34 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 21:28:34 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:05b419d667f793c8c2edf0ff0aec14fc4d66733cdb89957ac89e8bfbeaddd0fa`  
		Last Modified: Sat, 28 Apr 2018 10:44:20 GMT  
		Size: 54.5 MB (54486782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74787bb4bafbd442893d0704b8d5e07e27bbf70148b113435531f54354d3bad3`  
		Last Modified: Sat, 05 May 2018 11:36:26 GMT  
		Size: 19.9 MB (19880379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2101aa2f5659dceeb5472bbe78b5b2223b4940c0327ab0f0dfe748b11ad3db`  
		Last Modified: Sat, 05 May 2018 17:50:56 GMT  
		Size: 4.4 KB (4393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737853dc4b3acf66d587af7b21caf0e86581ba16cf9fee5a3618f2a147bd2045`  
		Last Modified: Sat, 05 May 2018 17:50:56 GMT  
		Size: 117.6 KB (117624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a683b8e8d1559b634cb121f532865b0afca59f500ba83896ad84701a290a8f`  
		Last Modified: Sat, 05 May 2018 17:54:42 GMT  
		Size: 14.3 MB (14298138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52cf0acb35a28ca4903bc15db6cd4fe6dfa02d80755ba4aa4c6cb50a43cda1d`  
		Last Modified: Sat, 05 May 2018 17:54:38 GMT  
		Size: 1.1 MB (1066213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c65d6b27bb9eec7c8d48e4f456df47abd18618330f6d4b832427e82c4f8943`  
		Last Modified: Sat, 05 May 2018 21:32:45 GMT  
		Size: 4.4 KB (4443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57df333ea9b78ff081eb32fc057ec5d143cd13f20b50b018386bcca16adeb1b7`  
		Last Modified: Sat, 05 May 2018 21:32:45 GMT  
		Size: 480.6 KB (480569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783ed4a6bbf2276bfe2508cd006aded4cbf9cc42371e52f32a46a8ead6126bb0`  
		Last Modified: Sat, 05 May 2018 21:32:45 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476268a315b7196ed9dcdac096fa6eda1d9ffedd466c7592b1cb39d49152e143`  
		Last Modified: Sat, 05 May 2018 21:32:55 GMT  
		Size: 32.5 MB (32525412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89096686d7c62cb93fd25e302264e11ac09ac64ea9c5dceac64f0f522046048b`  
		Last Modified: Sat, 05 May 2018 21:32:44 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6cf9c25dff1330f726e82e8eeaf79c08ccb6f328f7f9c833a9f8c785f2c95a`  
		Last Modified: Sat, 05 May 2018 21:32:44 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef3fa707af4bdd5b20c2847aa87688c5c4040fbe1b9691bf7963a766dfde159`  
		Last Modified: Sat, 05 May 2018 21:32:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; ppc64le

```console
$ docker pull ghost@sha256:ccbfa7fe85d49d9ba7c2dfa3d60c7a51220a7a0c08a58c582c1112b484cae638
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.9 MB (94935885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca7747cdfe443eb30aab66d2abb4cdd65144f3508178cea3b775febd23fa609e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 08:18:08 GMT
ADD file:cc51ef60d7cb3b70c82127b8721de1b99378a9d4fc246dffa2ef5ffa2d9ab805 in / 
# Sat, 28 Apr 2018 08:18:09 GMT
CMD ["bash"]
# Fri, 25 May 2018 08:32:49 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 08:32:53 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 08:48:52 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 08:50:40 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 08:50:43 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 08:50:49 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 08:50:50 GMT
CMD ["node"]
# Fri, 25 May 2018 09:55:52 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 25 May 2018 09:55:52 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 09:55:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 09:55:58 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 25 May 2018 09:55:59 GMT
WORKDIR /usr/src/ghost
# Fri, 25 May 2018 09:56:00 GMT
ENV GHOST_VERSION=0.11.13
# Fri, 25 May 2018 10:01:25 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 25 May 2018 10:01:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 25 May 2018 10:01:46 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 25 May 2018 10:01:59 GMT
VOLUME [/var/lib/ghost]
# Fri, 25 May 2018 10:01:59 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 25 May 2018 10:02:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 25 May 2018 10:02:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 10:02:05 GMT
EXPOSE 2368/tcp
# Fri, 25 May 2018 10:02:06 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:7745ff03a317ccaa10ff03129a2330b1c154aecaf51a892b7d99d5e1dbeb86cc`  
		Last Modified: Sat, 28 Apr 2018 08:25:29 GMT  
		Size: 29.3 MB (29317351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5765ecd6b4e5dc4e9757a057fc4127cdeeec4e3e777b4dd0971392c06b373b`  
		Last Modified: Fri, 25 May 2018 09:06:10 GMT  
		Size: 4.4 KB (4429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db919f8ae8ffa4343de2c13a34f5e6bc57b7b4ae820d141c76627bea943cde66`  
		Last Modified: Fri, 25 May 2018 09:06:11 GMT  
		Size: 117.6 KB (117643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e543bc0bae0d2ab1b0edc8a3fd714099e23e7dae64d909c7363e276f5f3aac`  
		Last Modified: Fri, 25 May 2018 09:12:32 GMT  
		Size: 31.0 MB (31034874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b5d1420c5536397987ac94e3d81fc276cfea3e1f9e15ec7e911c05a3a495cd`  
		Last Modified: Fri, 25 May 2018 09:12:23 GMT  
		Size: 1.1 MB (1066230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b446a845a887abbd8bb21c2ce59f39c0aa370771a7eaec84cb32d2a5a4660c`  
		Last Modified: Fri, 25 May 2018 10:03:38 GMT  
		Size: 4.5 KB (4476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6678cfd7b58167021a1a8877f635b2eb35b941fea31a881b3226fa8a3bed688`  
		Last Modified: Fri, 25 May 2018 10:03:38 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a316b56662018ab47a5839a522497fb36213af84518f86f430ec7db63976adf7`  
		Last Modified: Fri, 25 May 2018 10:03:35 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8646ed67b4896bbd52417fd59fabfdbb70562c60a502805332a5499ef2b40d`  
		Last Modified: Fri, 25 May 2018 10:03:47 GMT  
		Size: 32.9 MB (32919863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d88fccacc12acd4624e86154340eee5d19f80e66f8eb53496b993c2d50e49f`  
		Last Modified: Fri, 25 May 2018 10:03:36 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1788d639ac772f5f71e121c0221dce2d83768dca5cac0a7d734c61268bfa6e1`  
		Last Modified: Fri, 25 May 2018 10:03:35 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddfbf5a9f1f852b268eca7b25b1b0511286a3e33d73c641f79aafbef326117c8`  
		Last Modified: Fri, 25 May 2018 10:03:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; s390x

```console
$ docker pull ghost@sha256:59fd6d14b0d6cba37d6b0cb8cfd1d27888b898a0b053ac38fc6fefc1ccf7f8d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96624117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74dbcc645d1b59609c953eb3346fbe77dbd54191c366c4fec2cb1d2713aa91ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:53 GMT
ADD file:7c773d50957d6184975f5b22ef61757cd979893af5c77cdfef46dd28d8fc0296 in / 
# Sat, 28 Apr 2018 11:42:55 GMT
CMD ["bash"]
# Fri, 25 May 2018 12:27:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 12:27:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 12:58:07 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 12:58:26 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 12:58:27 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 12:58:29 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 12:58:29 GMT
CMD ["node"]
# Fri, 25 May 2018 13:38:39 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 25 May 2018 13:38:39 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 13:38:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 13:38:41 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 25 May 2018 13:38:41 GMT
WORKDIR /usr/src/ghost
# Fri, 25 May 2018 13:38:42 GMT
ENV GHOST_VERSION=0.11.13
# Fri, 25 May 2018 13:40:10 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 25 May 2018 13:40:11 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 25 May 2018 13:40:12 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 25 May 2018 13:40:12 GMT
VOLUME [/var/lib/ghost]
# Fri, 25 May 2018 13:40:12 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 25 May 2018 13:40:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 25 May 2018 13:40:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 13:40:13 GMT
EXPOSE 2368/tcp
# Fri, 25 May 2018 13:40:14 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:f4d03f2765a5584a0dc02af25ffd7c98d6e129d072a1fc30380b106603442102`  
		Last Modified: Sat, 28 Apr 2018 11:48:28 GMT  
		Size: 30.3 MB (30308304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7427347e59bdcdb1f8adade9851d0a83b74c04c862cbc6483cb7f5d364a6694`  
		Last Modified: Fri, 25 May 2018 13:12:16 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f987b1e452122d69591a7ad4e1777f6398f71f6898abb7a0af5d8f834e99ce`  
		Last Modified: Fri, 25 May 2018 13:12:17 GMT  
		Size: 117.6 KB (117611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5499a8ebec846942baf6ca7922f6acbf1075c2956ab953243e2e96ed9d25293`  
		Last Modified: Fri, 25 May 2018 13:17:13 GMT  
		Size: 31.7 MB (31679303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89722c717ab8a51082112a4428a1e0d636445024eb95e2308476fa1f8902e5ac`  
		Last Modified: Fri, 25 May 2018 13:17:07 GMT  
		Size: 1.1 MB (1066213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbfb20531555ee1399333e082c58462c0d0df25b633da3ee343a304471d54eb`  
		Last Modified: Fri, 25 May 2018 13:41:51 GMT  
		Size: 4.5 KB (4456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d9711ded84e4d34c4706b9ed0e78ca2b17dc55dae5106d895fd9b62682436b9`  
		Last Modified: Fri, 25 May 2018 13:41:51 GMT  
		Size: 486.8 KB (486822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32c674e3b5de11e00d4b8477625a4d3393ba125752b2c7495a91a54bd6aa072`  
		Last Modified: Fri, 25 May 2018 13:41:49 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c35c2e1cec8f61fe44c3697cbde0d25f90febd35aabc644a62dfc7a26fd15e`  
		Last Modified: Fri, 25 May 2018 13:41:57 GMT  
		Size: 33.0 MB (32955892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c48b91a0516b15d907bb653603616dc6c2fd8f138cfd282dd7ffd9dbc8f2301`  
		Last Modified: Fri, 25 May 2018 13:41:49 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563d1bd6cf2699bb87e03ca4bf600e1cd289491d0ff9497fcea7ad6f6c851711`  
		Last Modified: Fri, 25 May 2018 13:41:49 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2793058ce021cc57d26d9cc3d9ba49cfa9a0f4e273592ffc2c6eb3f463988565`  
		Last Modified: Fri, 25 May 2018 13:41:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11`

```console
$ docker pull ghost@sha256:802b367153cbab7ca8ece05d6831089d0427332298d7e6775243ddd492a8bd82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:0.11` - linux; amd64

```console
$ docker pull ghost@sha256:f695be766fd34ac3a560f925714d56560685433052682fde60f59f78fc7d8748
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.5 MB (89501238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dbe53eb7a5aa42f9dda16b2e662abde28922707a6bbb29a628f2a3ec4b747e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Thu, 24 May 2018 19:43:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 24 May 2018 19:43:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Thu, 24 May 2018 20:25:43 GMT
ENV NODE_VERSION=6.14.2
# Thu, 24 May 2018 20:26:12 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 24 May 2018 20:26:13 GMT
ENV YARN_VERSION=1.6.0
# Thu, 24 May 2018 20:26:16 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 24 May 2018 20:26:16 GMT
CMD ["node"]
# Thu, 24 May 2018 22:32:52 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 24 May 2018 22:32:52 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 May 2018 22:32:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 24 May 2018 22:32:58 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 24 May 2018 22:32:58 GMT
WORKDIR /usr/src/ghost
# Thu, 24 May 2018 22:32:58 GMT
ENV GHOST_VERSION=0.11.13
# Thu, 24 May 2018 22:34:20 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 24 May 2018 22:34:21 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 24 May 2018 22:34:22 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 24 May 2018 22:34:22 GMT
VOLUME [/var/lib/ghost]
# Thu, 24 May 2018 22:34:22 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 24 May 2018 22:34:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 24 May 2018 22:34:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 May 2018 22:34:23 GMT
EXPOSE 2368/tcp
# Thu, 24 May 2018 22:34:24 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db908151ac093a2ced2707e30d84874d4d162594ee84613e477f739f682410f1`  
		Last Modified: Thu, 24 May 2018 20:54:10 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d5faee7ece1ef1c5a46dfc27a19508ea42ca466e7909668e1329ff33cad5ac`  
		Last Modified: Thu, 24 May 2018 20:54:10 GMT  
		Size: 117.6 KB (117612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd7b61dadbbb9c8df09b0b8c146d3cced6f8825d61dcad2a266e42fb5b66272`  
		Last Modified: Thu, 24 May 2018 21:00:52 GMT  
		Size: 31.3 MB (31336873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cf569e2d11426efa5d31ca66ba326a60059b7162e56048e8c5dbbb58cb9d477`  
		Last Modified: Thu, 24 May 2018 21:00:45 GMT  
		Size: 1.1 MB (1066216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799a414b87a9c414742787a5ce71b4e58d390de2618fabce4515c145937ad07c`  
		Last Modified: Thu, 24 May 2018 22:44:06 GMT  
		Size: 4.5 KB (4452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7bc6cfbae66e7ba71b5d8debc2dcd8be8d1235cf544ced7847a10e047d5f7d7`  
		Last Modified: Thu, 24 May 2018 22:44:07 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f804c470e13f3389582225aa7658a21b01210ec1eb10e3aa294107259cc6df`  
		Last Modified: Thu, 24 May 2018 22:44:04 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8959107ae2103a5f2ffcfb261ad5ee672d27cbd7bd78bfff30c47797afb3685f`  
		Last Modified: Thu, 24 May 2018 22:44:19 GMT  
		Size: 26.3 MB (26342609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ecb910cc9466d41482ff771de11482a3757a1b9a56e47d538ef4ecc3d04f1b`  
		Last Modified: Thu, 24 May 2018 22:44:04 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a685cb2b6c9618c3abffebc858e4af13021c67bc4ae55b37c3b48bfff9c5025e`  
		Last Modified: Thu, 24 May 2018 22:44:04 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5b76b16919721c011fb062e965d99e509e5cc41a9d40f005c43a2c04c03649`  
		Last Modified: Thu, 24 May 2018 22:44:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:b54ffe8466c75fbc762a7c60a30b3339d04992c28176f773b8e2c7fbbb9affac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117535693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29b1cfcfcc45cf730675b526a5290c695b064e3ea06852363373d72693636f72`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:16:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 20:56:03 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 05 May 2018 20:56:08 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 05 May 2018 20:58:26 GMT
ENV NODE_VERSION=6.14.2
# Sat, 05 May 2018 20:58:53 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 05 May 2018 20:58:54 GMT
ENV YARN_VERSION=1.6.0
# Sat, 05 May 2018 20:58:59 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 05 May 2018 20:59:00 GMT
CMD ["node"]
# Sun, 06 May 2018 00:15:55 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sun, 06 May 2018 00:15:56 GMT
ENV GOSU_VERSION=1.10
# Sun, 06 May 2018 00:15:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 06 May 2018 00:16:00 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sun, 06 May 2018 00:16:01 GMT
WORKDIR /usr/src/ghost
# Sun, 06 May 2018 00:16:02 GMT
ENV GHOST_VERSION=0.11.13
# Sun, 06 May 2018 00:21:55 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sun, 06 May 2018 00:21:56 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sun, 06 May 2018 00:21:58 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sun, 06 May 2018 00:21:59 GMT
VOLUME [/var/lib/ghost]
# Sun, 06 May 2018 00:22:00 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sun, 06 May 2018 00:22:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sun, 06 May 2018 00:22:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 06 May 2018 00:22:03 GMT
EXPOSE 2368/tcp
# Sun, 06 May 2018 00:22:04 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc4956efcaf7d30060a373d34961e3c6e71ee0317cb5381a180230a397c5442`  
		Last Modified: Sat, 05 May 2018 09:43:52 GMT  
		Size: 17.2 MB (17213842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87a9fa2fe22a0d030f46183751b6f52579884755aa26ad5c36a5a68e85ec071`  
		Last Modified: Sat, 05 May 2018 21:01:41 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01de86854d3726dc3357440e44faae70c9ed20e2bf2e19431e1a207f7840627d`  
		Last Modified: Sat, 05 May 2018 21:01:41 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace6290f8f0213e3356a6d9ff4caffac4e9d77d73f0c2b1defa049b6a389e26`  
		Last Modified: Sat, 05 May 2018 21:03:14 GMT  
		Size: 14.8 MB (14760653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86d24b6dbb7d58d9df67fecf9700b52621e63db86db73a74c19207b734cb667`  
		Last Modified: Sat, 05 May 2018 21:03:08 GMT  
		Size: 1.1 MB (1066214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc9c056f6cb0dfc544f906df8661fcaf54a9bbf406e0007681edd39448a6186`  
		Last Modified: Sun, 06 May 2018 00:23:46 GMT  
		Size: 4.5 KB (4468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc46986d87beb2bbb88e17801080485c70f3c22ddb51c0fbb38167b4c9e176f`  
		Last Modified: Sun, 06 May 2018 00:23:46 GMT  
		Size: 468.7 KB (468695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c124fe7481b2037c248fbe92bfb31a4a90daae6eae811b1dacfaf9ff048d44`  
		Last Modified: Sun, 06 May 2018 00:23:44 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095e239f2fe370e7e63949f9fef8bf603b2f3005f18676470f3550fccc7e8880`  
		Last Modified: Sun, 06 May 2018 00:24:01 GMT  
		Size: 32.5 MB (32451826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3fa5ea488055af7b3822c0262a59510100451e98468dd2a81305fe0e73dafa`  
		Last Modified: Sun, 06 May 2018 00:23:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba8644fd0d892ec4b5a5636fc66c315e30cf3931b38c5649f314b33e5a843214`  
		Last Modified: Sun, 06 May 2018 00:23:44 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6ec7b916464f42d77ac2dd25a7ba0d3a8de49e9e482c6dfdac0eabb1e9466e`  
		Last Modified: Sun, 06 May 2018 00:23:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; 386

```console
$ docker pull ghost@sha256:bae12db9bc429d0331adf16489eda66a68bbf60041d9a313945c8095529bf3e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.9 MB (122865057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0acccbb4584719f2bc04c0da74e7d081305f98c5ad7ce870721ab9cfd37b8fb0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:32 GMT
ADD file:ce5174f2b2c155a2421fac3ff37a02d9551d5d79e31a541189bcfd2416a6903a in / 
# Sat, 28 Apr 2018 10:39:32 GMT
CMD ["bash"]
# Sat, 05 May 2018 10:58:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 10:58:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 17:42:29 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 05 May 2018 17:42:33 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 05 May 2018 17:45:33 GMT
ENV NODE_VERSION=6.14.2
# Sat, 05 May 2018 17:46:09 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 05 May 2018 17:46:09 GMT
ENV YARN_VERSION=1.6.0
# Sat, 05 May 2018 17:46:12 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 05 May 2018 17:46:12 GMT
CMD ["node"]
# Sat, 05 May 2018 21:26:17 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 05 May 2018 21:26:17 GMT
ENV GOSU_VERSION=1.10
# Sat, 05 May 2018 21:26:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 05 May 2018 21:26:22 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 05 May 2018 21:26:22 GMT
WORKDIR /usr/src/ghost
# Sat, 05 May 2018 21:26:22 GMT
ENV GHOST_VERSION=0.11.13
# Sat, 05 May 2018 21:28:31 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 05 May 2018 21:28:32 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 05 May 2018 21:28:33 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 05 May 2018 21:28:33 GMT
VOLUME [/var/lib/ghost]
# Sat, 05 May 2018 21:28:33 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 05 May 2018 21:28:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 05 May 2018 21:28:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 21:28:34 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 21:28:34 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:05b419d667f793c8c2edf0ff0aec14fc4d66733cdb89957ac89e8bfbeaddd0fa`  
		Last Modified: Sat, 28 Apr 2018 10:44:20 GMT  
		Size: 54.5 MB (54486782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74787bb4bafbd442893d0704b8d5e07e27bbf70148b113435531f54354d3bad3`  
		Last Modified: Sat, 05 May 2018 11:36:26 GMT  
		Size: 19.9 MB (19880379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2101aa2f5659dceeb5472bbe78b5b2223b4940c0327ab0f0dfe748b11ad3db`  
		Last Modified: Sat, 05 May 2018 17:50:56 GMT  
		Size: 4.4 KB (4393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737853dc4b3acf66d587af7b21caf0e86581ba16cf9fee5a3618f2a147bd2045`  
		Last Modified: Sat, 05 May 2018 17:50:56 GMT  
		Size: 117.6 KB (117624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a683b8e8d1559b634cb121f532865b0afca59f500ba83896ad84701a290a8f`  
		Last Modified: Sat, 05 May 2018 17:54:42 GMT  
		Size: 14.3 MB (14298138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52cf0acb35a28ca4903bc15db6cd4fe6dfa02d80755ba4aa4c6cb50a43cda1d`  
		Last Modified: Sat, 05 May 2018 17:54:38 GMT  
		Size: 1.1 MB (1066213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c65d6b27bb9eec7c8d48e4f456df47abd18618330f6d4b832427e82c4f8943`  
		Last Modified: Sat, 05 May 2018 21:32:45 GMT  
		Size: 4.4 KB (4443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57df333ea9b78ff081eb32fc057ec5d143cd13f20b50b018386bcca16adeb1b7`  
		Last Modified: Sat, 05 May 2018 21:32:45 GMT  
		Size: 480.6 KB (480569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783ed4a6bbf2276bfe2508cd006aded4cbf9cc42371e52f32a46a8ead6126bb0`  
		Last Modified: Sat, 05 May 2018 21:32:45 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476268a315b7196ed9dcdac096fa6eda1d9ffedd466c7592b1cb39d49152e143`  
		Last Modified: Sat, 05 May 2018 21:32:55 GMT  
		Size: 32.5 MB (32525412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89096686d7c62cb93fd25e302264e11ac09ac64ea9c5dceac64f0f522046048b`  
		Last Modified: Sat, 05 May 2018 21:32:44 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6cf9c25dff1330f726e82e8eeaf79c08ccb6f328f7f9c833a9f8c785f2c95a`  
		Last Modified: Sat, 05 May 2018 21:32:44 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef3fa707af4bdd5b20c2847aa87688c5c4040fbe1b9691bf7963a766dfde159`  
		Last Modified: Sat, 05 May 2018 21:32:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; ppc64le

```console
$ docker pull ghost@sha256:ccbfa7fe85d49d9ba7c2dfa3d60c7a51220a7a0c08a58c582c1112b484cae638
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.9 MB (94935885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca7747cdfe443eb30aab66d2abb4cdd65144f3508178cea3b775febd23fa609e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 08:18:08 GMT
ADD file:cc51ef60d7cb3b70c82127b8721de1b99378a9d4fc246dffa2ef5ffa2d9ab805 in / 
# Sat, 28 Apr 2018 08:18:09 GMT
CMD ["bash"]
# Fri, 25 May 2018 08:32:49 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 08:32:53 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 08:48:52 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 08:50:40 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 08:50:43 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 08:50:49 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 08:50:50 GMT
CMD ["node"]
# Fri, 25 May 2018 09:55:52 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 25 May 2018 09:55:52 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 09:55:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 09:55:58 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 25 May 2018 09:55:59 GMT
WORKDIR /usr/src/ghost
# Fri, 25 May 2018 09:56:00 GMT
ENV GHOST_VERSION=0.11.13
# Fri, 25 May 2018 10:01:25 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 25 May 2018 10:01:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 25 May 2018 10:01:46 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 25 May 2018 10:01:59 GMT
VOLUME [/var/lib/ghost]
# Fri, 25 May 2018 10:01:59 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 25 May 2018 10:02:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 25 May 2018 10:02:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 10:02:05 GMT
EXPOSE 2368/tcp
# Fri, 25 May 2018 10:02:06 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:7745ff03a317ccaa10ff03129a2330b1c154aecaf51a892b7d99d5e1dbeb86cc`  
		Last Modified: Sat, 28 Apr 2018 08:25:29 GMT  
		Size: 29.3 MB (29317351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5765ecd6b4e5dc4e9757a057fc4127cdeeec4e3e777b4dd0971392c06b373b`  
		Last Modified: Fri, 25 May 2018 09:06:10 GMT  
		Size: 4.4 KB (4429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db919f8ae8ffa4343de2c13a34f5e6bc57b7b4ae820d141c76627bea943cde66`  
		Last Modified: Fri, 25 May 2018 09:06:11 GMT  
		Size: 117.6 KB (117643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e543bc0bae0d2ab1b0edc8a3fd714099e23e7dae64d909c7363e276f5f3aac`  
		Last Modified: Fri, 25 May 2018 09:12:32 GMT  
		Size: 31.0 MB (31034874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b5d1420c5536397987ac94e3d81fc276cfea3e1f9e15ec7e911c05a3a495cd`  
		Last Modified: Fri, 25 May 2018 09:12:23 GMT  
		Size: 1.1 MB (1066230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b446a845a887abbd8bb21c2ce59f39c0aa370771a7eaec84cb32d2a5a4660c`  
		Last Modified: Fri, 25 May 2018 10:03:38 GMT  
		Size: 4.5 KB (4476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6678cfd7b58167021a1a8877f635b2eb35b941fea31a881b3226fa8a3bed688`  
		Last Modified: Fri, 25 May 2018 10:03:38 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a316b56662018ab47a5839a522497fb36213af84518f86f430ec7db63976adf7`  
		Last Modified: Fri, 25 May 2018 10:03:35 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8646ed67b4896bbd52417fd59fabfdbb70562c60a502805332a5499ef2b40d`  
		Last Modified: Fri, 25 May 2018 10:03:47 GMT  
		Size: 32.9 MB (32919863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d88fccacc12acd4624e86154340eee5d19f80e66f8eb53496b993c2d50e49f`  
		Last Modified: Fri, 25 May 2018 10:03:36 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1788d639ac772f5f71e121c0221dce2d83768dca5cac0a7d734c61268bfa6e1`  
		Last Modified: Fri, 25 May 2018 10:03:35 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddfbf5a9f1f852b268eca7b25b1b0511286a3e33d73c641f79aafbef326117c8`  
		Last Modified: Fri, 25 May 2018 10:03:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; s390x

```console
$ docker pull ghost@sha256:59fd6d14b0d6cba37d6b0cb8cfd1d27888b898a0b053ac38fc6fefc1ccf7f8d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96624117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74dbcc645d1b59609c953eb3346fbe77dbd54191c366c4fec2cb1d2713aa91ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:53 GMT
ADD file:7c773d50957d6184975f5b22ef61757cd979893af5c77cdfef46dd28d8fc0296 in / 
# Sat, 28 Apr 2018 11:42:55 GMT
CMD ["bash"]
# Fri, 25 May 2018 12:27:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 12:27:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 12:58:07 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 12:58:26 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 12:58:27 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 12:58:29 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 12:58:29 GMT
CMD ["node"]
# Fri, 25 May 2018 13:38:39 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 25 May 2018 13:38:39 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 13:38:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 13:38:41 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 25 May 2018 13:38:41 GMT
WORKDIR /usr/src/ghost
# Fri, 25 May 2018 13:38:42 GMT
ENV GHOST_VERSION=0.11.13
# Fri, 25 May 2018 13:40:10 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 25 May 2018 13:40:11 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 25 May 2018 13:40:12 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 25 May 2018 13:40:12 GMT
VOLUME [/var/lib/ghost]
# Fri, 25 May 2018 13:40:12 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 25 May 2018 13:40:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 25 May 2018 13:40:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 13:40:13 GMT
EXPOSE 2368/tcp
# Fri, 25 May 2018 13:40:14 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:f4d03f2765a5584a0dc02af25ffd7c98d6e129d072a1fc30380b106603442102`  
		Last Modified: Sat, 28 Apr 2018 11:48:28 GMT  
		Size: 30.3 MB (30308304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7427347e59bdcdb1f8adade9851d0a83b74c04c862cbc6483cb7f5d364a6694`  
		Last Modified: Fri, 25 May 2018 13:12:16 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f987b1e452122d69591a7ad4e1777f6398f71f6898abb7a0af5d8f834e99ce`  
		Last Modified: Fri, 25 May 2018 13:12:17 GMT  
		Size: 117.6 KB (117611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5499a8ebec846942baf6ca7922f6acbf1075c2956ab953243e2e96ed9d25293`  
		Last Modified: Fri, 25 May 2018 13:17:13 GMT  
		Size: 31.7 MB (31679303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89722c717ab8a51082112a4428a1e0d636445024eb95e2308476fa1f8902e5ac`  
		Last Modified: Fri, 25 May 2018 13:17:07 GMT  
		Size: 1.1 MB (1066213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbfb20531555ee1399333e082c58462c0d0df25b633da3ee343a304471d54eb`  
		Last Modified: Fri, 25 May 2018 13:41:51 GMT  
		Size: 4.5 KB (4456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d9711ded84e4d34c4706b9ed0e78ca2b17dc55dae5106d895fd9b62682436b9`  
		Last Modified: Fri, 25 May 2018 13:41:51 GMT  
		Size: 486.8 KB (486822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32c674e3b5de11e00d4b8477625a4d3393ba125752b2c7495a91a54bd6aa072`  
		Last Modified: Fri, 25 May 2018 13:41:49 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c35c2e1cec8f61fe44c3697cbde0d25f90febd35aabc644a62dfc7a26fd15e`  
		Last Modified: Fri, 25 May 2018 13:41:57 GMT  
		Size: 33.0 MB (32955892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c48b91a0516b15d907bb653603616dc6c2fd8f138cfd282dd7ffd9dbc8f2301`  
		Last Modified: Fri, 25 May 2018 13:41:49 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563d1bd6cf2699bb87e03ca4bf600e1cd289491d0ff9497fcea7ad6f6c851711`  
		Last Modified: Fri, 25 May 2018 13:41:49 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2793058ce021cc57d26d9cc3d9ba49cfa9a0f4e273592ffc2c6eb3f463988565`  
		Last Modified: Fri, 25 May 2018 13:41:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.13`

```console
$ docker pull ghost@sha256:802b367153cbab7ca8ece05d6831089d0427332298d7e6775243ddd492a8bd82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:0.11.13` - linux; amd64

```console
$ docker pull ghost@sha256:f695be766fd34ac3a560f925714d56560685433052682fde60f59f78fc7d8748
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.5 MB (89501238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dbe53eb7a5aa42f9dda16b2e662abde28922707a6bbb29a628f2a3ec4b747e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Thu, 24 May 2018 19:43:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 24 May 2018 19:43:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Thu, 24 May 2018 20:25:43 GMT
ENV NODE_VERSION=6.14.2
# Thu, 24 May 2018 20:26:12 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 24 May 2018 20:26:13 GMT
ENV YARN_VERSION=1.6.0
# Thu, 24 May 2018 20:26:16 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 24 May 2018 20:26:16 GMT
CMD ["node"]
# Thu, 24 May 2018 22:32:52 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 24 May 2018 22:32:52 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 May 2018 22:32:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 24 May 2018 22:32:58 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 24 May 2018 22:32:58 GMT
WORKDIR /usr/src/ghost
# Thu, 24 May 2018 22:32:58 GMT
ENV GHOST_VERSION=0.11.13
# Thu, 24 May 2018 22:34:20 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 24 May 2018 22:34:21 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 24 May 2018 22:34:22 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 24 May 2018 22:34:22 GMT
VOLUME [/var/lib/ghost]
# Thu, 24 May 2018 22:34:22 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 24 May 2018 22:34:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 24 May 2018 22:34:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 May 2018 22:34:23 GMT
EXPOSE 2368/tcp
# Thu, 24 May 2018 22:34:24 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db908151ac093a2ced2707e30d84874d4d162594ee84613e477f739f682410f1`  
		Last Modified: Thu, 24 May 2018 20:54:10 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d5faee7ece1ef1c5a46dfc27a19508ea42ca466e7909668e1329ff33cad5ac`  
		Last Modified: Thu, 24 May 2018 20:54:10 GMT  
		Size: 117.6 KB (117612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd7b61dadbbb9c8df09b0b8c146d3cced6f8825d61dcad2a266e42fb5b66272`  
		Last Modified: Thu, 24 May 2018 21:00:52 GMT  
		Size: 31.3 MB (31336873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cf569e2d11426efa5d31ca66ba326a60059b7162e56048e8c5dbbb58cb9d477`  
		Last Modified: Thu, 24 May 2018 21:00:45 GMT  
		Size: 1.1 MB (1066216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799a414b87a9c414742787a5ce71b4e58d390de2618fabce4515c145937ad07c`  
		Last Modified: Thu, 24 May 2018 22:44:06 GMT  
		Size: 4.5 KB (4452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7bc6cfbae66e7ba71b5d8debc2dcd8be8d1235cf544ced7847a10e047d5f7d7`  
		Last Modified: Thu, 24 May 2018 22:44:07 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f804c470e13f3389582225aa7658a21b01210ec1eb10e3aa294107259cc6df`  
		Last Modified: Thu, 24 May 2018 22:44:04 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8959107ae2103a5f2ffcfb261ad5ee672d27cbd7bd78bfff30c47797afb3685f`  
		Last Modified: Thu, 24 May 2018 22:44:19 GMT  
		Size: 26.3 MB (26342609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ecb910cc9466d41482ff771de11482a3757a1b9a56e47d538ef4ecc3d04f1b`  
		Last Modified: Thu, 24 May 2018 22:44:04 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a685cb2b6c9618c3abffebc858e4af13021c67bc4ae55b37c3b48bfff9c5025e`  
		Last Modified: Thu, 24 May 2018 22:44:04 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5b76b16919721c011fb062e965d99e509e5cc41a9d40f005c43a2c04c03649`  
		Last Modified: Thu, 24 May 2018 22:44:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.13` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:b54ffe8466c75fbc762a7c60a30b3339d04992c28176f773b8e2c7fbbb9affac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117535693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29b1cfcfcc45cf730675b526a5290c695b064e3ea06852363373d72693636f72`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:16:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 20:56:03 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 05 May 2018 20:56:08 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 05 May 2018 20:58:26 GMT
ENV NODE_VERSION=6.14.2
# Sat, 05 May 2018 20:58:53 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 05 May 2018 20:58:54 GMT
ENV YARN_VERSION=1.6.0
# Sat, 05 May 2018 20:58:59 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 05 May 2018 20:59:00 GMT
CMD ["node"]
# Sun, 06 May 2018 00:15:55 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sun, 06 May 2018 00:15:56 GMT
ENV GOSU_VERSION=1.10
# Sun, 06 May 2018 00:15:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 06 May 2018 00:16:00 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sun, 06 May 2018 00:16:01 GMT
WORKDIR /usr/src/ghost
# Sun, 06 May 2018 00:16:02 GMT
ENV GHOST_VERSION=0.11.13
# Sun, 06 May 2018 00:21:55 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sun, 06 May 2018 00:21:56 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sun, 06 May 2018 00:21:58 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sun, 06 May 2018 00:21:59 GMT
VOLUME [/var/lib/ghost]
# Sun, 06 May 2018 00:22:00 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sun, 06 May 2018 00:22:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sun, 06 May 2018 00:22:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 06 May 2018 00:22:03 GMT
EXPOSE 2368/tcp
# Sun, 06 May 2018 00:22:04 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc4956efcaf7d30060a373d34961e3c6e71ee0317cb5381a180230a397c5442`  
		Last Modified: Sat, 05 May 2018 09:43:52 GMT  
		Size: 17.2 MB (17213842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87a9fa2fe22a0d030f46183751b6f52579884755aa26ad5c36a5a68e85ec071`  
		Last Modified: Sat, 05 May 2018 21:01:41 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01de86854d3726dc3357440e44faae70c9ed20e2bf2e19431e1a207f7840627d`  
		Last Modified: Sat, 05 May 2018 21:01:41 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace6290f8f0213e3356a6d9ff4caffac4e9d77d73f0c2b1defa049b6a389e26`  
		Last Modified: Sat, 05 May 2018 21:03:14 GMT  
		Size: 14.8 MB (14760653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86d24b6dbb7d58d9df67fecf9700b52621e63db86db73a74c19207b734cb667`  
		Last Modified: Sat, 05 May 2018 21:03:08 GMT  
		Size: 1.1 MB (1066214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc9c056f6cb0dfc544f906df8661fcaf54a9bbf406e0007681edd39448a6186`  
		Last Modified: Sun, 06 May 2018 00:23:46 GMT  
		Size: 4.5 KB (4468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc46986d87beb2bbb88e17801080485c70f3c22ddb51c0fbb38167b4c9e176f`  
		Last Modified: Sun, 06 May 2018 00:23:46 GMT  
		Size: 468.7 KB (468695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c124fe7481b2037c248fbe92bfb31a4a90daae6eae811b1dacfaf9ff048d44`  
		Last Modified: Sun, 06 May 2018 00:23:44 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095e239f2fe370e7e63949f9fef8bf603b2f3005f18676470f3550fccc7e8880`  
		Last Modified: Sun, 06 May 2018 00:24:01 GMT  
		Size: 32.5 MB (32451826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3fa5ea488055af7b3822c0262a59510100451e98468dd2a81305fe0e73dafa`  
		Last Modified: Sun, 06 May 2018 00:23:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba8644fd0d892ec4b5a5636fc66c315e30cf3931b38c5649f314b33e5a843214`  
		Last Modified: Sun, 06 May 2018 00:23:44 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6ec7b916464f42d77ac2dd25a7ba0d3a8de49e9e482c6dfdac0eabb1e9466e`  
		Last Modified: Sun, 06 May 2018 00:23:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.13` - linux; 386

```console
$ docker pull ghost@sha256:bae12db9bc429d0331adf16489eda66a68bbf60041d9a313945c8095529bf3e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.9 MB (122865057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0acccbb4584719f2bc04c0da74e7d081305f98c5ad7ce870721ab9cfd37b8fb0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:32 GMT
ADD file:ce5174f2b2c155a2421fac3ff37a02d9551d5d79e31a541189bcfd2416a6903a in / 
# Sat, 28 Apr 2018 10:39:32 GMT
CMD ["bash"]
# Sat, 05 May 2018 10:58:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 10:58:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 17:42:29 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 05 May 2018 17:42:33 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 05 May 2018 17:45:33 GMT
ENV NODE_VERSION=6.14.2
# Sat, 05 May 2018 17:46:09 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 05 May 2018 17:46:09 GMT
ENV YARN_VERSION=1.6.0
# Sat, 05 May 2018 17:46:12 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 05 May 2018 17:46:12 GMT
CMD ["node"]
# Sat, 05 May 2018 21:26:17 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 05 May 2018 21:26:17 GMT
ENV GOSU_VERSION=1.10
# Sat, 05 May 2018 21:26:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 05 May 2018 21:26:22 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 05 May 2018 21:26:22 GMT
WORKDIR /usr/src/ghost
# Sat, 05 May 2018 21:26:22 GMT
ENV GHOST_VERSION=0.11.13
# Sat, 05 May 2018 21:28:31 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 05 May 2018 21:28:32 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 05 May 2018 21:28:33 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 05 May 2018 21:28:33 GMT
VOLUME [/var/lib/ghost]
# Sat, 05 May 2018 21:28:33 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 05 May 2018 21:28:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 05 May 2018 21:28:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 21:28:34 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 21:28:34 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:05b419d667f793c8c2edf0ff0aec14fc4d66733cdb89957ac89e8bfbeaddd0fa`  
		Last Modified: Sat, 28 Apr 2018 10:44:20 GMT  
		Size: 54.5 MB (54486782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74787bb4bafbd442893d0704b8d5e07e27bbf70148b113435531f54354d3bad3`  
		Last Modified: Sat, 05 May 2018 11:36:26 GMT  
		Size: 19.9 MB (19880379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2101aa2f5659dceeb5472bbe78b5b2223b4940c0327ab0f0dfe748b11ad3db`  
		Last Modified: Sat, 05 May 2018 17:50:56 GMT  
		Size: 4.4 KB (4393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737853dc4b3acf66d587af7b21caf0e86581ba16cf9fee5a3618f2a147bd2045`  
		Last Modified: Sat, 05 May 2018 17:50:56 GMT  
		Size: 117.6 KB (117624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a683b8e8d1559b634cb121f532865b0afca59f500ba83896ad84701a290a8f`  
		Last Modified: Sat, 05 May 2018 17:54:42 GMT  
		Size: 14.3 MB (14298138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52cf0acb35a28ca4903bc15db6cd4fe6dfa02d80755ba4aa4c6cb50a43cda1d`  
		Last Modified: Sat, 05 May 2018 17:54:38 GMT  
		Size: 1.1 MB (1066213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c65d6b27bb9eec7c8d48e4f456df47abd18618330f6d4b832427e82c4f8943`  
		Last Modified: Sat, 05 May 2018 21:32:45 GMT  
		Size: 4.4 KB (4443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57df333ea9b78ff081eb32fc057ec5d143cd13f20b50b018386bcca16adeb1b7`  
		Last Modified: Sat, 05 May 2018 21:32:45 GMT  
		Size: 480.6 KB (480569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783ed4a6bbf2276bfe2508cd006aded4cbf9cc42371e52f32a46a8ead6126bb0`  
		Last Modified: Sat, 05 May 2018 21:32:45 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476268a315b7196ed9dcdac096fa6eda1d9ffedd466c7592b1cb39d49152e143`  
		Last Modified: Sat, 05 May 2018 21:32:55 GMT  
		Size: 32.5 MB (32525412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89096686d7c62cb93fd25e302264e11ac09ac64ea9c5dceac64f0f522046048b`  
		Last Modified: Sat, 05 May 2018 21:32:44 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6cf9c25dff1330f726e82e8eeaf79c08ccb6f328f7f9c833a9f8c785f2c95a`  
		Last Modified: Sat, 05 May 2018 21:32:44 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef3fa707af4bdd5b20c2847aa87688c5c4040fbe1b9691bf7963a766dfde159`  
		Last Modified: Sat, 05 May 2018 21:32:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.13` - linux; ppc64le

```console
$ docker pull ghost@sha256:ccbfa7fe85d49d9ba7c2dfa3d60c7a51220a7a0c08a58c582c1112b484cae638
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.9 MB (94935885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca7747cdfe443eb30aab66d2abb4cdd65144f3508178cea3b775febd23fa609e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 08:18:08 GMT
ADD file:cc51ef60d7cb3b70c82127b8721de1b99378a9d4fc246dffa2ef5ffa2d9ab805 in / 
# Sat, 28 Apr 2018 08:18:09 GMT
CMD ["bash"]
# Fri, 25 May 2018 08:32:49 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 08:32:53 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 08:48:52 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 08:50:40 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 08:50:43 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 08:50:49 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 08:50:50 GMT
CMD ["node"]
# Fri, 25 May 2018 09:55:52 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 25 May 2018 09:55:52 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 09:55:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 09:55:58 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 25 May 2018 09:55:59 GMT
WORKDIR /usr/src/ghost
# Fri, 25 May 2018 09:56:00 GMT
ENV GHOST_VERSION=0.11.13
# Fri, 25 May 2018 10:01:25 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 25 May 2018 10:01:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 25 May 2018 10:01:46 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 25 May 2018 10:01:59 GMT
VOLUME [/var/lib/ghost]
# Fri, 25 May 2018 10:01:59 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 25 May 2018 10:02:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 25 May 2018 10:02:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 10:02:05 GMT
EXPOSE 2368/tcp
# Fri, 25 May 2018 10:02:06 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:7745ff03a317ccaa10ff03129a2330b1c154aecaf51a892b7d99d5e1dbeb86cc`  
		Last Modified: Sat, 28 Apr 2018 08:25:29 GMT  
		Size: 29.3 MB (29317351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5765ecd6b4e5dc4e9757a057fc4127cdeeec4e3e777b4dd0971392c06b373b`  
		Last Modified: Fri, 25 May 2018 09:06:10 GMT  
		Size: 4.4 KB (4429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db919f8ae8ffa4343de2c13a34f5e6bc57b7b4ae820d141c76627bea943cde66`  
		Last Modified: Fri, 25 May 2018 09:06:11 GMT  
		Size: 117.6 KB (117643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e543bc0bae0d2ab1b0edc8a3fd714099e23e7dae64d909c7363e276f5f3aac`  
		Last Modified: Fri, 25 May 2018 09:12:32 GMT  
		Size: 31.0 MB (31034874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b5d1420c5536397987ac94e3d81fc276cfea3e1f9e15ec7e911c05a3a495cd`  
		Last Modified: Fri, 25 May 2018 09:12:23 GMT  
		Size: 1.1 MB (1066230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b446a845a887abbd8bb21c2ce59f39c0aa370771a7eaec84cb32d2a5a4660c`  
		Last Modified: Fri, 25 May 2018 10:03:38 GMT  
		Size: 4.5 KB (4476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6678cfd7b58167021a1a8877f635b2eb35b941fea31a881b3226fa8a3bed688`  
		Last Modified: Fri, 25 May 2018 10:03:38 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a316b56662018ab47a5839a522497fb36213af84518f86f430ec7db63976adf7`  
		Last Modified: Fri, 25 May 2018 10:03:35 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8646ed67b4896bbd52417fd59fabfdbb70562c60a502805332a5499ef2b40d`  
		Last Modified: Fri, 25 May 2018 10:03:47 GMT  
		Size: 32.9 MB (32919863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d88fccacc12acd4624e86154340eee5d19f80e66f8eb53496b993c2d50e49f`  
		Last Modified: Fri, 25 May 2018 10:03:36 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1788d639ac772f5f71e121c0221dce2d83768dca5cac0a7d734c61268bfa6e1`  
		Last Modified: Fri, 25 May 2018 10:03:35 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddfbf5a9f1f852b268eca7b25b1b0511286a3e33d73c641f79aafbef326117c8`  
		Last Modified: Fri, 25 May 2018 10:03:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.13` - linux; s390x

```console
$ docker pull ghost@sha256:59fd6d14b0d6cba37d6b0cb8cfd1d27888b898a0b053ac38fc6fefc1ccf7f8d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96624117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74dbcc645d1b59609c953eb3346fbe77dbd54191c366c4fec2cb1d2713aa91ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:53 GMT
ADD file:7c773d50957d6184975f5b22ef61757cd979893af5c77cdfef46dd28d8fc0296 in / 
# Sat, 28 Apr 2018 11:42:55 GMT
CMD ["bash"]
# Fri, 25 May 2018 12:27:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 12:27:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 12:58:07 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 12:58:26 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 12:58:27 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 12:58:29 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 12:58:29 GMT
CMD ["node"]
# Fri, 25 May 2018 13:38:39 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 25 May 2018 13:38:39 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 13:38:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 13:38:41 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 25 May 2018 13:38:41 GMT
WORKDIR /usr/src/ghost
# Fri, 25 May 2018 13:38:42 GMT
ENV GHOST_VERSION=0.11.13
# Fri, 25 May 2018 13:40:10 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 25 May 2018 13:40:11 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 25 May 2018 13:40:12 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 25 May 2018 13:40:12 GMT
VOLUME [/var/lib/ghost]
# Fri, 25 May 2018 13:40:12 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 25 May 2018 13:40:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 25 May 2018 13:40:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 13:40:13 GMT
EXPOSE 2368/tcp
# Fri, 25 May 2018 13:40:14 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:f4d03f2765a5584a0dc02af25ffd7c98d6e129d072a1fc30380b106603442102`  
		Last Modified: Sat, 28 Apr 2018 11:48:28 GMT  
		Size: 30.3 MB (30308304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7427347e59bdcdb1f8adade9851d0a83b74c04c862cbc6483cb7f5d364a6694`  
		Last Modified: Fri, 25 May 2018 13:12:16 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f987b1e452122d69591a7ad4e1777f6398f71f6898abb7a0af5d8f834e99ce`  
		Last Modified: Fri, 25 May 2018 13:12:17 GMT  
		Size: 117.6 KB (117611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5499a8ebec846942baf6ca7922f6acbf1075c2956ab953243e2e96ed9d25293`  
		Last Modified: Fri, 25 May 2018 13:17:13 GMT  
		Size: 31.7 MB (31679303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89722c717ab8a51082112a4428a1e0d636445024eb95e2308476fa1f8902e5ac`  
		Last Modified: Fri, 25 May 2018 13:17:07 GMT  
		Size: 1.1 MB (1066213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbfb20531555ee1399333e082c58462c0d0df25b633da3ee343a304471d54eb`  
		Last Modified: Fri, 25 May 2018 13:41:51 GMT  
		Size: 4.5 KB (4456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d9711ded84e4d34c4706b9ed0e78ca2b17dc55dae5106d895fd9b62682436b9`  
		Last Modified: Fri, 25 May 2018 13:41:51 GMT  
		Size: 486.8 KB (486822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32c674e3b5de11e00d4b8477625a4d3393ba125752b2c7495a91a54bd6aa072`  
		Last Modified: Fri, 25 May 2018 13:41:49 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c35c2e1cec8f61fe44c3697cbde0d25f90febd35aabc644a62dfc7a26fd15e`  
		Last Modified: Fri, 25 May 2018 13:41:57 GMT  
		Size: 33.0 MB (32955892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c48b91a0516b15d907bb653603616dc6c2fd8f138cfd282dd7ffd9dbc8f2301`  
		Last Modified: Fri, 25 May 2018 13:41:49 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563d1bd6cf2699bb87e03ca4bf600e1cd289491d0ff9497fcea7ad6f6c851711`  
		Last Modified: Fri, 25 May 2018 13:41:49 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2793058ce021cc57d26d9cc3d9ba49cfa9a0f4e273592ffc2c6eb3f463988565`  
		Last Modified: Fri, 25 May 2018 13:41:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.13-alpine`

```console
$ docker pull ghost@sha256:f4c081636ce8b9a538a03debeecbf0adb6a8cf8ff20f07a640230a8338adf0e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11.13-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:89397fef54252728df10a379e55146c8a5241a04a24738d1f230540dc5e08a20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.4 MB (46437305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89ca910de15a81e0615f445557deea5c73f1e2c909d0da0269d3d086d3dc9ebe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Thu, 03 May 2018 23:45:34 GMT
ENV NODE_VERSION=6.14.2
# Thu, 24 May 2018 20:20:16 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 24 May 2018 20:20:17 GMT
ENV YARN_VERSION=1.6.0
# Thu, 24 May 2018 20:20:25 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 24 May 2018 20:20:25 GMT
CMD ["node"]
# Thu, 24 May 2018 22:28:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 24 May 2018 22:35:43 GMT
RUN apk add --no-cache 		bash 		tar
# Thu, 24 May 2018 22:35:43 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 24 May 2018 22:35:44 GMT
WORKDIR /usr/src/ghost
# Thu, 24 May 2018 22:35:44 GMT
ENV GHOST_VERSION=0.11.13
# Thu, 24 May 2018 22:36:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 24 May 2018 22:36:34 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 24 May 2018 22:36:35 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 24 May 2018 22:36:35 GMT
VOLUME [/var/lib/ghost]
# Thu, 24 May 2018 22:36:35 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Thu, 24 May 2018 22:36:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 May 2018 22:36:36 GMT
EXPOSE 2368/tcp
# Thu, 24 May 2018 22:36:36 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf1ad53299f29e45eb1fabb6165902e53c02da8b3ce9f0a30513b64f67ac088`  
		Last Modified: Thu, 24 May 2018 20:59:31 GMT  
		Size: 15.5 MB (15512047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c67eb3c047648acb84bdadbba46d9aca5b2b8fb1ea1c3d9af37ce0839c21a8`  
		Last Modified: Thu, 24 May 2018 20:59:27 GMT  
		Size: 1.1 MB (1072940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cfa1966b48fc8804d1d38a42347e7bf1cdea6a6e174af78a70be99dcbef293`  
		Last Modified: Thu, 24 May 2018 22:38:22 GMT  
		Size: 8.4 KB (8364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7867a197eff1a1e5a9f3f163dbeeea326b7a8a3cbd0238dd743a6fc82121f2ad`  
		Last Modified: Thu, 24 May 2018 22:44:55 GMT  
		Size: 1.4 MB (1360690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60b5d4b5802b943c1297bf5364e20990d6d2a950ebd4a574520521bb2412346`  
		Last Modified: Thu, 24 May 2018 22:44:53 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9527b8a71927b4445f34357538897ae79f1850141dcbbcf1e7634aed385d81df`  
		Last Modified: Thu, 24 May 2018 22:45:08 GMT  
		Size: 26.1 MB (26094732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c974c91b3a347bc5e57078db4006a3330123e5f7fecaf39c9f2cbeecee1688`  
		Last Modified: Thu, 24 May 2018 22:44:53 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f19322f1a9e7b10ec243805c1f84fa85108901234f56e85eb4c75558164894a2`  
		Last Modified: Thu, 24 May 2018 22:44:53 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11-alpine`

```console
$ docker pull ghost@sha256:f4c081636ce8b9a538a03debeecbf0adb6a8cf8ff20f07a640230a8338adf0e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:89397fef54252728df10a379e55146c8a5241a04a24738d1f230540dc5e08a20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.4 MB (46437305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89ca910de15a81e0615f445557deea5c73f1e2c909d0da0269d3d086d3dc9ebe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Thu, 03 May 2018 23:45:34 GMT
ENV NODE_VERSION=6.14.2
# Thu, 24 May 2018 20:20:16 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 24 May 2018 20:20:17 GMT
ENV YARN_VERSION=1.6.0
# Thu, 24 May 2018 20:20:25 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 24 May 2018 20:20:25 GMT
CMD ["node"]
# Thu, 24 May 2018 22:28:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 24 May 2018 22:35:43 GMT
RUN apk add --no-cache 		bash 		tar
# Thu, 24 May 2018 22:35:43 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 24 May 2018 22:35:44 GMT
WORKDIR /usr/src/ghost
# Thu, 24 May 2018 22:35:44 GMT
ENV GHOST_VERSION=0.11.13
# Thu, 24 May 2018 22:36:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 24 May 2018 22:36:34 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 24 May 2018 22:36:35 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 24 May 2018 22:36:35 GMT
VOLUME [/var/lib/ghost]
# Thu, 24 May 2018 22:36:35 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Thu, 24 May 2018 22:36:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 May 2018 22:36:36 GMT
EXPOSE 2368/tcp
# Thu, 24 May 2018 22:36:36 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf1ad53299f29e45eb1fabb6165902e53c02da8b3ce9f0a30513b64f67ac088`  
		Last Modified: Thu, 24 May 2018 20:59:31 GMT  
		Size: 15.5 MB (15512047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c67eb3c047648acb84bdadbba46d9aca5b2b8fb1ea1c3d9af37ce0839c21a8`  
		Last Modified: Thu, 24 May 2018 20:59:27 GMT  
		Size: 1.1 MB (1072940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cfa1966b48fc8804d1d38a42347e7bf1cdea6a6e174af78a70be99dcbef293`  
		Last Modified: Thu, 24 May 2018 22:38:22 GMT  
		Size: 8.4 KB (8364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7867a197eff1a1e5a9f3f163dbeeea326b7a8a3cbd0238dd743a6fc82121f2ad`  
		Last Modified: Thu, 24 May 2018 22:44:55 GMT  
		Size: 1.4 MB (1360690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60b5d4b5802b943c1297bf5364e20990d6d2a950ebd4a574520521bb2412346`  
		Last Modified: Thu, 24 May 2018 22:44:53 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9527b8a71927b4445f34357538897ae79f1850141dcbbcf1e7634aed385d81df`  
		Last Modified: Thu, 24 May 2018 22:45:08 GMT  
		Size: 26.1 MB (26094732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c974c91b3a347bc5e57078db4006a3330123e5f7fecaf39c9f2cbeecee1688`  
		Last Modified: Thu, 24 May 2018 22:44:53 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f19322f1a9e7b10ec243805c1f84fa85108901234f56e85eb4c75558164894a2`  
		Last Modified: Thu, 24 May 2018 22:44:53 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:f4c081636ce8b9a538a03debeecbf0adb6a8cf8ff20f07a640230a8338adf0e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:89397fef54252728df10a379e55146c8a5241a04a24738d1f230540dc5e08a20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.4 MB (46437305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89ca910de15a81e0615f445557deea5c73f1e2c909d0da0269d3d086d3dc9ebe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Thu, 03 May 2018 23:45:34 GMT
ENV NODE_VERSION=6.14.2
# Thu, 24 May 2018 20:20:16 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 24 May 2018 20:20:17 GMT
ENV YARN_VERSION=1.6.0
# Thu, 24 May 2018 20:20:25 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 24 May 2018 20:20:25 GMT
CMD ["node"]
# Thu, 24 May 2018 22:28:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 24 May 2018 22:35:43 GMT
RUN apk add --no-cache 		bash 		tar
# Thu, 24 May 2018 22:35:43 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 24 May 2018 22:35:44 GMT
WORKDIR /usr/src/ghost
# Thu, 24 May 2018 22:35:44 GMT
ENV GHOST_VERSION=0.11.13
# Thu, 24 May 2018 22:36:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 24 May 2018 22:36:34 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 24 May 2018 22:36:35 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 24 May 2018 22:36:35 GMT
VOLUME [/var/lib/ghost]
# Thu, 24 May 2018 22:36:35 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Thu, 24 May 2018 22:36:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 May 2018 22:36:36 GMT
EXPOSE 2368/tcp
# Thu, 24 May 2018 22:36:36 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf1ad53299f29e45eb1fabb6165902e53c02da8b3ce9f0a30513b64f67ac088`  
		Last Modified: Thu, 24 May 2018 20:59:31 GMT  
		Size: 15.5 MB (15512047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c67eb3c047648acb84bdadbba46d9aca5b2b8fb1ea1c3d9af37ce0839c21a8`  
		Last Modified: Thu, 24 May 2018 20:59:27 GMT  
		Size: 1.1 MB (1072940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cfa1966b48fc8804d1d38a42347e7bf1cdea6a6e174af78a70be99dcbef293`  
		Last Modified: Thu, 24 May 2018 22:38:22 GMT  
		Size: 8.4 KB (8364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7867a197eff1a1e5a9f3f163dbeeea326b7a8a3cbd0238dd743a6fc82121f2ad`  
		Last Modified: Thu, 24 May 2018 22:44:55 GMT  
		Size: 1.4 MB (1360690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60b5d4b5802b943c1297bf5364e20990d6d2a950ebd4a574520521bb2412346`  
		Last Modified: Thu, 24 May 2018 22:44:53 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9527b8a71927b4445f34357538897ae79f1850141dcbbcf1e7634aed385d81df`  
		Last Modified: Thu, 24 May 2018 22:45:08 GMT  
		Size: 26.1 MB (26094732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c974c91b3a347bc5e57078db4006a3330123e5f7fecaf39c9f2cbeecee1688`  
		Last Modified: Thu, 24 May 2018 22:44:53 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f19322f1a9e7b10ec243805c1f84fa85108901234f56e85eb4c75558164894a2`  
		Last Modified: Thu, 24 May 2018 22:44:53 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1`

```console
$ docker pull ghost@sha256:afef2240975371e6e8e22bff3dbda830daac75e01560d609b733e92e3f008ad5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:1` - linux; amd64

```console
$ docker pull ghost@sha256:c6305f10f40be2048fc9d970c3d72841e276c5fa3b28cd6c3a64b426ab37da06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.4 MB (230394901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a375d6b66f06c8ff42658d5b83c51ded88836b409e5413e40191df0cbacb9c5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Thu, 24 May 2018 19:43:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 24 May 2018 19:43:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Thu, 24 May 2018 20:25:43 GMT
ENV NODE_VERSION=6.14.2
# Thu, 24 May 2018 20:26:12 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 24 May 2018 20:26:13 GMT
ENV YARN_VERSION=1.6.0
# Thu, 24 May 2018 20:26:16 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 24 May 2018 20:26:16 GMT
CMD ["node"]
# Thu, 24 May 2018 22:26:02 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 May 2018 22:26:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 24 May 2018 22:26:07 GMT
ENV NODE_ENV=production
# Thu, 24 May 2018 22:26:07 GMT
ENV GHOST_CLI_VERSION=1.7.3
# Thu, 24 May 2018 22:26:30 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 24 May 2018 22:26:31 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 24 May 2018 22:26:31 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 24 May 2018 22:26:31 GMT
ENV GHOST_VERSION=1.23.0
# Thu, 24 May 2018 22:27:06 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 24 May 2018 22:27:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 24 May 2018 22:27:18 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 24 May 2018 22:27:19 GMT
WORKDIR /var/lib/ghost
# Thu, 24 May 2018 22:27:19 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 24 May 2018 22:27:19 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 24 May 2018 22:27:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 May 2018 22:27:20 GMT
EXPOSE 2368/tcp
# Thu, 24 May 2018 22:27:20 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db908151ac093a2ced2707e30d84874d4d162594ee84613e477f739f682410f1`  
		Last Modified: Thu, 24 May 2018 20:54:10 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d5faee7ece1ef1c5a46dfc27a19508ea42ca466e7909668e1329ff33cad5ac`  
		Last Modified: Thu, 24 May 2018 20:54:10 GMT  
		Size: 117.6 KB (117612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd7b61dadbbb9c8df09b0b8c146d3cced6f8825d61dcad2a266e42fb5b66272`  
		Last Modified: Thu, 24 May 2018 21:00:52 GMT  
		Size: 31.3 MB (31336873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cf569e2d11426efa5d31ca66ba326a60059b7162e56048e8c5dbbb58cb9d477`  
		Last Modified: Thu, 24 May 2018 21:00:45 GMT  
		Size: 1.1 MB (1066216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab43c3da95ec9c1c994b2b5f99372b5682f4a56ebe8914c27f7abae11574204`  
		Last Modified: Thu, 24 May 2018 22:36:56 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856759e077a55ef93e33bc5ec9c9fdfd1ab6d573c748d8568ec3b6348525bf31`  
		Last Modified: Thu, 24 May 2018 22:37:16 GMT  
		Size: 18.8 MB (18772089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce5364a7adccbda6b7faadfab8259e5cb417df78dec2721666b501cf933e63eb`  
		Last Modified: Thu, 24 May 2018 22:37:45 GMT  
		Size: 141.6 MB (141611145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f8c4f4cec186d3c63526a1045b54cc500d79e1033cbc80b2d4a1a17439b15ab`  
		Last Modified: Thu, 24 May 2018 22:36:56 GMT  
		Size: 6.9 MB (6858032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47659a8e84a83e12034c287bd163458a4e4fe60eff59e2f47e829088aeb288a`  
		Last Modified: Thu, 24 May 2018 22:36:55 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:421f3668cb5ded5bb516977fbc3c2f55d88b00497604da5707f9dbbf9e8782c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.8 MB (255836432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c30004b413630ae8fe097a547ffbe6f3bff88c050d4af3c7841119771efbd7ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:16:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 20:56:03 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 05 May 2018 20:56:08 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 05 May 2018 20:58:26 GMT
ENV NODE_VERSION=6.14.2
# Sat, 05 May 2018 20:58:53 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 05 May 2018 20:58:54 GMT
ENV YARN_VERSION=1.6.0
# Sat, 05 May 2018 20:58:59 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 05 May 2018 20:59:00 GMT
CMD ["node"]
# Sun, 06 May 2018 00:07:53 GMT
ENV GOSU_VERSION=1.10
# Sun, 06 May 2018 00:07:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 06 May 2018 00:07:59 GMT
ENV NODE_ENV=production
# Fri, 11 May 2018 08:39:32 GMT
ENV GHOST_CLI_VERSION=1.7.3
# Fri, 11 May 2018 08:40:34 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 11 May 2018 08:40:36 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 11 May 2018 08:40:36 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 24 May 2018 08:46:49 GMT
ENV GHOST_VERSION=1.23.0
# Thu, 24 May 2018 08:48:39 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 24 May 2018 08:48:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 24 May 2018 08:53:42 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 24 May 2018 08:53:45 GMT
WORKDIR /var/lib/ghost
# Thu, 24 May 2018 08:53:46 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 24 May 2018 08:53:47 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 24 May 2018 08:53:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 May 2018 08:53:55 GMT
EXPOSE 2368/tcp
# Thu, 24 May 2018 08:53:56 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc4956efcaf7d30060a373d34961e3c6e71ee0317cb5381a180230a397c5442`  
		Last Modified: Sat, 05 May 2018 09:43:52 GMT  
		Size: 17.2 MB (17213842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87a9fa2fe22a0d030f46183751b6f52579884755aa26ad5c36a5a68e85ec071`  
		Last Modified: Sat, 05 May 2018 21:01:41 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01de86854d3726dc3357440e44faae70c9ed20e2bf2e19431e1a207f7840627d`  
		Last Modified: Sat, 05 May 2018 21:01:41 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace6290f8f0213e3356a6d9ff4caffac4e9d77d73f0c2b1defa049b6a389e26`  
		Last Modified: Sat, 05 May 2018 21:03:14 GMT  
		Size: 14.8 MB (14760653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86d24b6dbb7d58d9df67fecf9700b52621e63db86db73a74c19207b734cb667`  
		Last Modified: Sat, 05 May 2018 21:03:08 GMT  
		Size: 1.1 MB (1066214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe3c1ca453cf52d615f6bcd2137413de926b47bdbddb5ec77ea0de6001fed10`  
		Last Modified: Sun, 06 May 2018 00:22:25 GMT  
		Size: 468.7 KB (468701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c91f04fa7b966d6ff137982f1ebff14ae63714dee3bf9fb1e000662de7fa77`  
		Last Modified: Fri, 11 May 2018 08:48:19 GMT  
		Size: 18.7 MB (18744797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:778c6a09ba6202b8f54aca264df618c670addecf9f75ed8d5b4cf19d285be67e`  
		Last Modified: Thu, 24 May 2018 08:55:16 GMT  
		Size: 137.5 MB (137505660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213bb0ef1fcfe833961f504c4ee30b9e1abc4d385436df2702ed58c266156479`  
		Last Modified: Thu, 24 May 2018 08:54:40 GMT  
		Size: 14.5 MB (14507103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b595acab636b598e441feb8df8fd01f6eb2954939ba96903a43c20de5e9173`  
		Last Modified: Thu, 24 May 2018 08:54:35 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; 386

```console
$ docker pull ghost@sha256:81429b3a4f4ccadf66b602246022c281c8309f506b3e0b4cfbacea6b27d45b22
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261170827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1878a575c36cee435fdae4420cf765b596fecdbc9a0fffc9df689c0f76095013`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:32 GMT
ADD file:ce5174f2b2c155a2421fac3ff37a02d9551d5d79e31a541189bcfd2416a6903a in / 
# Sat, 28 Apr 2018 10:39:32 GMT
CMD ["bash"]
# Sat, 05 May 2018 10:58:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 10:58:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 17:42:29 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 05 May 2018 17:42:33 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 05 May 2018 17:45:33 GMT
ENV NODE_VERSION=6.14.2
# Sat, 05 May 2018 17:46:09 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 05 May 2018 17:46:09 GMT
ENV YARN_VERSION=1.6.0
# Sat, 05 May 2018 17:46:12 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 05 May 2018 17:46:12 GMT
CMD ["node"]
# Sat, 05 May 2018 21:20:29 GMT
ENV GOSU_VERSION=1.10
# Sat, 05 May 2018 21:20:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 05 May 2018 21:20:34 GMT
ENV NODE_ENV=production
# Fri, 11 May 2018 11:06:41 GMT
ENV GHOST_CLI_VERSION=1.7.3
# Fri, 11 May 2018 11:07:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 11 May 2018 11:07:07 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 11 May 2018 11:07:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 24 May 2018 10:45:07 GMT
ENV GHOST_VERSION=1.23.0
# Thu, 24 May 2018 10:45:59 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 24 May 2018 10:46:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 24 May 2018 10:48:08 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 24 May 2018 10:48:09 GMT
WORKDIR /var/lib/ghost
# Thu, 24 May 2018 10:48:09 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 24 May 2018 10:48:09 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 24 May 2018 10:48:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 May 2018 10:48:10 GMT
EXPOSE 2368/tcp
# Thu, 24 May 2018 10:48:10 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:05b419d667f793c8c2edf0ff0aec14fc4d66733cdb89957ac89e8bfbeaddd0fa`  
		Last Modified: Sat, 28 Apr 2018 10:44:20 GMT  
		Size: 54.5 MB (54486782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74787bb4bafbd442893d0704b8d5e07e27bbf70148b113435531f54354d3bad3`  
		Last Modified: Sat, 05 May 2018 11:36:26 GMT  
		Size: 19.9 MB (19880379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2101aa2f5659dceeb5472bbe78b5b2223b4940c0327ab0f0dfe748b11ad3db`  
		Last Modified: Sat, 05 May 2018 17:50:56 GMT  
		Size: 4.4 KB (4393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737853dc4b3acf66d587af7b21caf0e86581ba16cf9fee5a3618f2a147bd2045`  
		Last Modified: Sat, 05 May 2018 17:50:56 GMT  
		Size: 117.6 KB (117624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a683b8e8d1559b634cb121f532865b0afca59f500ba83896ad84701a290a8f`  
		Last Modified: Sat, 05 May 2018 17:54:42 GMT  
		Size: 14.3 MB (14298138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52cf0acb35a28ca4903bc15db6cd4fe6dfa02d80755ba4aa4c6cb50a43cda1d`  
		Last Modified: Sat, 05 May 2018 17:54:38 GMT  
		Size: 1.1 MB (1066213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9439a2129d72f260c427f30e1942461766b38382c5a6c021578a1c585140e9d`  
		Last Modified: Sat, 05 May 2018 21:31:24 GMT  
		Size: 480.6 KB (480563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c499565e002dec2d62e6cd25d1ba3941e39ac1a4ab3b8800d12181ea679755c`  
		Last Modified: Fri, 11 May 2018 11:12:56 GMT  
		Size: 18.7 MB (18741667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbb94a6804313050bbe99d51ebc669a1890c80605d1b9be8fac923101717c48`  
		Last Modified: Thu, 24 May 2018 10:52:16 GMT  
		Size: 137.5 MB (137506691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f539cb78b17337233bcf13df763550656c5cc5b24239e218573e66b7c55376f`  
		Last Modified: Thu, 24 May 2018 10:51:45 GMT  
		Size: 14.6 MB (14587807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221e52ede68f8386cb2a7760484a2cbd9a3dda7c8efed41768cf6906288412ef`  
		Last Modified: Thu, 24 May 2018 10:51:41 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; ppc64le

```console
$ docker pull ghost@sha256:ed239d4dc56234e4275ee6ad76946b0e0a27cb915cb21b96f0ea1020fc3ea84a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.3 MB (233253425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fee2655170cac8d8ce2b52f5ddc35b40dd2f51801d6a56008dc92cf4b5f6eb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 08:18:08 GMT
ADD file:cc51ef60d7cb3b70c82127b8721de1b99378a9d4fc246dffa2ef5ffa2d9ab805 in / 
# Sat, 28 Apr 2018 08:18:09 GMT
CMD ["bash"]
# Fri, 25 May 2018 08:32:49 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 08:32:53 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 08:48:52 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 08:50:40 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 08:50:43 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 08:50:49 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 08:50:50 GMT
CMD ["node"]
# Fri, 25 May 2018 09:49:23 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 09:49:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 09:49:33 GMT
ENV NODE_ENV=production
# Fri, 25 May 2018 09:49:34 GMT
ENV GHOST_CLI_VERSION=1.7.3
# Fri, 25 May 2018 09:50:07 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 25 May 2018 09:50:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 25 May 2018 09:50:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 25 May 2018 09:50:15 GMT
ENV GHOST_VERSION=1.23.0
# Fri, 25 May 2018 09:51:27 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 25 May 2018 09:51:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 25 May 2018 09:55:25 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 25 May 2018 09:55:26 GMT
WORKDIR /var/lib/ghost
# Fri, 25 May 2018 09:55:27 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 25 May 2018 09:55:28 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Fri, 25 May 2018 09:55:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 09:55:30 GMT
EXPOSE 2368/tcp
# Fri, 25 May 2018 09:55:31 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:7745ff03a317ccaa10ff03129a2330b1c154aecaf51a892b7d99d5e1dbeb86cc`  
		Last Modified: Sat, 28 Apr 2018 08:25:29 GMT  
		Size: 29.3 MB (29317351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5765ecd6b4e5dc4e9757a057fc4127cdeeec4e3e777b4dd0971392c06b373b`  
		Last Modified: Fri, 25 May 2018 09:06:10 GMT  
		Size: 4.4 KB (4429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db919f8ae8ffa4343de2c13a34f5e6bc57b7b4ae820d141c76627bea943cde66`  
		Last Modified: Fri, 25 May 2018 09:06:11 GMT  
		Size: 117.6 KB (117643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e543bc0bae0d2ab1b0edc8a3fd714099e23e7dae64d909c7363e276f5f3aac`  
		Last Modified: Fri, 25 May 2018 09:12:32 GMT  
		Size: 31.0 MB (31034874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b5d1420c5536397987ac94e3d81fc276cfea3e1f9e15ec7e911c05a3a495cd`  
		Last Modified: Fri, 25 May 2018 09:12:23 GMT  
		Size: 1.1 MB (1066230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d8af7ee99bb0ea87ccf8d0511071fe7582c26bffffc659769dedcce8ff4e03`  
		Last Modified: Fri, 25 May 2018 10:02:28 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04bf08e89b5c7143b00647d1594800c2f3a23af9a37e24d2fff0b26061e67fc2`  
		Last Modified: Fri, 25 May 2018 10:02:37 GMT  
		Size: 18.8 MB (18770865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722bfa7d1b601bc4b88ac5ebaaadebaf7c760bf284fe462891cf1b35d6757ad8`  
		Last Modified: Fri, 25 May 2018 10:02:57 GMT  
		Size: 137.5 MB (137497194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e23748d5abdbd1fdbdd5b0eae364965a2e030b3096e9e62b13cb665fbaa327`  
		Last Modified: Fri, 25 May 2018 10:02:31 GMT  
		Size: 15.0 MB (14974423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f4d9953061725a589a8a5ce680d88fd7c80a7286ebc711e9c674a2b34c4749d`  
		Last Modified: Fri, 25 May 2018 10:02:28 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; s390x

```console
$ docker pull ghost@sha256:9090ca9f4a3cdb80b60558afb1403a51ce9d0f41c40dc783786795ccbff5f0ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.0 MB (234950357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74f229a2c78ff89541b0ca9fda5dbc06cf0f765c8415b2838e895257e877f522`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:53 GMT
ADD file:7c773d50957d6184975f5b22ef61757cd979893af5c77cdfef46dd28d8fc0296 in / 
# Sat, 28 Apr 2018 11:42:55 GMT
CMD ["bash"]
# Fri, 25 May 2018 12:27:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 12:27:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 12:58:07 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 12:58:26 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 12:58:27 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 12:58:29 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 12:58:29 GMT
CMD ["node"]
# Fri, 25 May 2018 13:36:00 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 13:36:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 13:36:02 GMT
ENV NODE_ENV=production
# Fri, 25 May 2018 13:36:02 GMT
ENV GHOST_CLI_VERSION=1.7.3
# Fri, 25 May 2018 13:36:23 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 25 May 2018 13:36:24 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 25 May 2018 13:36:24 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 25 May 2018 13:36:24 GMT
ENV GHOST_VERSION=1.23.0
# Fri, 25 May 2018 13:36:53 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 25 May 2018 13:36:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 25 May 2018 13:38:22 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 25 May 2018 13:38:23 GMT
WORKDIR /var/lib/ghost
# Fri, 25 May 2018 13:38:23 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 25 May 2018 13:38:23 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Fri, 25 May 2018 13:38:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 13:38:24 GMT
EXPOSE 2368/tcp
# Fri, 25 May 2018 13:38:24 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:f4d03f2765a5584a0dc02af25ffd7c98d6e129d072a1fc30380b106603442102`  
		Last Modified: Sat, 28 Apr 2018 11:48:28 GMT  
		Size: 30.3 MB (30308304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7427347e59bdcdb1f8adade9851d0a83b74c04c862cbc6483cb7f5d364a6694`  
		Last Modified: Fri, 25 May 2018 13:12:16 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f987b1e452122d69591a7ad4e1777f6398f71f6898abb7a0af5d8f834e99ce`  
		Last Modified: Fri, 25 May 2018 13:12:17 GMT  
		Size: 117.6 KB (117611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5499a8ebec846942baf6ca7922f6acbf1075c2956ab953243e2e96ed9d25293`  
		Last Modified: Fri, 25 May 2018 13:17:13 GMT  
		Size: 31.7 MB (31679303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89722c717ab8a51082112a4428a1e0d636445024eb95e2308476fa1f8902e5ac`  
		Last Modified: Fri, 25 May 2018 13:17:07 GMT  
		Size: 1.1 MB (1066213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcab469af6630994b3decf13743c14697a3b3bd2209c311ef3113944d5916fb8`  
		Last Modified: Fri, 25 May 2018 13:40:38 GMT  
		Size: 486.8 KB (486826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ba0415944d9485995fe11c7f4bc2b6d213da596819c91df3ccbe07143cbb99`  
		Last Modified: Fri, 25 May 2018 13:40:42 GMT  
		Size: 18.8 MB (18771013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aa41bb07b40618347e59fb18e8f7d493c3b743b242051f913d28e6fd33f9e23`  
		Last Modified: Fri, 25 May 2018 13:41:17 GMT  
		Size: 137.5 MB (137505296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7574233e0db6a43abf238353b7690d0adcda1c5a93cc268566369526327367a6`  
		Last Modified: Fri, 25 May 2018 13:40:45 GMT  
		Size: 15.0 MB (15010812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b704ca79ced391be7379b1d817f54152ddabb256ba68718920d62de8d2eece`  
		Last Modified: Fri, 25 May 2018 13:40:37 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.23`

```console
$ docker pull ghost@sha256:afef2240975371e6e8e22bff3dbda830daac75e01560d609b733e92e3f008ad5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:1.23` - linux; amd64

```console
$ docker pull ghost@sha256:c6305f10f40be2048fc9d970c3d72841e276c5fa3b28cd6c3a64b426ab37da06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.4 MB (230394901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a375d6b66f06c8ff42658d5b83c51ded88836b409e5413e40191df0cbacb9c5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Thu, 24 May 2018 19:43:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 24 May 2018 19:43:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Thu, 24 May 2018 20:25:43 GMT
ENV NODE_VERSION=6.14.2
# Thu, 24 May 2018 20:26:12 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 24 May 2018 20:26:13 GMT
ENV YARN_VERSION=1.6.0
# Thu, 24 May 2018 20:26:16 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 24 May 2018 20:26:16 GMT
CMD ["node"]
# Thu, 24 May 2018 22:26:02 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 May 2018 22:26:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 24 May 2018 22:26:07 GMT
ENV NODE_ENV=production
# Thu, 24 May 2018 22:26:07 GMT
ENV GHOST_CLI_VERSION=1.7.3
# Thu, 24 May 2018 22:26:30 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 24 May 2018 22:26:31 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 24 May 2018 22:26:31 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 24 May 2018 22:26:31 GMT
ENV GHOST_VERSION=1.23.0
# Thu, 24 May 2018 22:27:06 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 24 May 2018 22:27:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 24 May 2018 22:27:18 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 24 May 2018 22:27:19 GMT
WORKDIR /var/lib/ghost
# Thu, 24 May 2018 22:27:19 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 24 May 2018 22:27:19 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 24 May 2018 22:27:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 May 2018 22:27:20 GMT
EXPOSE 2368/tcp
# Thu, 24 May 2018 22:27:20 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db908151ac093a2ced2707e30d84874d4d162594ee84613e477f739f682410f1`  
		Last Modified: Thu, 24 May 2018 20:54:10 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d5faee7ece1ef1c5a46dfc27a19508ea42ca466e7909668e1329ff33cad5ac`  
		Last Modified: Thu, 24 May 2018 20:54:10 GMT  
		Size: 117.6 KB (117612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd7b61dadbbb9c8df09b0b8c146d3cced6f8825d61dcad2a266e42fb5b66272`  
		Last Modified: Thu, 24 May 2018 21:00:52 GMT  
		Size: 31.3 MB (31336873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cf569e2d11426efa5d31ca66ba326a60059b7162e56048e8c5dbbb58cb9d477`  
		Last Modified: Thu, 24 May 2018 21:00:45 GMT  
		Size: 1.1 MB (1066216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab43c3da95ec9c1c994b2b5f99372b5682f4a56ebe8914c27f7abae11574204`  
		Last Modified: Thu, 24 May 2018 22:36:56 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856759e077a55ef93e33bc5ec9c9fdfd1ab6d573c748d8568ec3b6348525bf31`  
		Last Modified: Thu, 24 May 2018 22:37:16 GMT  
		Size: 18.8 MB (18772089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce5364a7adccbda6b7faadfab8259e5cb417df78dec2721666b501cf933e63eb`  
		Last Modified: Thu, 24 May 2018 22:37:45 GMT  
		Size: 141.6 MB (141611145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f8c4f4cec186d3c63526a1045b54cc500d79e1033cbc80b2d4a1a17439b15ab`  
		Last Modified: Thu, 24 May 2018 22:36:56 GMT  
		Size: 6.9 MB (6858032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47659a8e84a83e12034c287bd163458a4e4fe60eff59e2f47e829088aeb288a`  
		Last Modified: Thu, 24 May 2018 22:36:55 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:421f3668cb5ded5bb516977fbc3c2f55d88b00497604da5707f9dbbf9e8782c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.8 MB (255836432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c30004b413630ae8fe097a547ffbe6f3bff88c050d4af3c7841119771efbd7ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:16:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 20:56:03 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 05 May 2018 20:56:08 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 05 May 2018 20:58:26 GMT
ENV NODE_VERSION=6.14.2
# Sat, 05 May 2018 20:58:53 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 05 May 2018 20:58:54 GMT
ENV YARN_VERSION=1.6.0
# Sat, 05 May 2018 20:58:59 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 05 May 2018 20:59:00 GMT
CMD ["node"]
# Sun, 06 May 2018 00:07:53 GMT
ENV GOSU_VERSION=1.10
# Sun, 06 May 2018 00:07:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 06 May 2018 00:07:59 GMT
ENV NODE_ENV=production
# Fri, 11 May 2018 08:39:32 GMT
ENV GHOST_CLI_VERSION=1.7.3
# Fri, 11 May 2018 08:40:34 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 11 May 2018 08:40:36 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 11 May 2018 08:40:36 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 24 May 2018 08:46:49 GMT
ENV GHOST_VERSION=1.23.0
# Thu, 24 May 2018 08:48:39 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 24 May 2018 08:48:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 24 May 2018 08:53:42 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 24 May 2018 08:53:45 GMT
WORKDIR /var/lib/ghost
# Thu, 24 May 2018 08:53:46 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 24 May 2018 08:53:47 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 24 May 2018 08:53:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 May 2018 08:53:55 GMT
EXPOSE 2368/tcp
# Thu, 24 May 2018 08:53:56 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc4956efcaf7d30060a373d34961e3c6e71ee0317cb5381a180230a397c5442`  
		Last Modified: Sat, 05 May 2018 09:43:52 GMT  
		Size: 17.2 MB (17213842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87a9fa2fe22a0d030f46183751b6f52579884755aa26ad5c36a5a68e85ec071`  
		Last Modified: Sat, 05 May 2018 21:01:41 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01de86854d3726dc3357440e44faae70c9ed20e2bf2e19431e1a207f7840627d`  
		Last Modified: Sat, 05 May 2018 21:01:41 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace6290f8f0213e3356a6d9ff4caffac4e9d77d73f0c2b1defa049b6a389e26`  
		Last Modified: Sat, 05 May 2018 21:03:14 GMT  
		Size: 14.8 MB (14760653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86d24b6dbb7d58d9df67fecf9700b52621e63db86db73a74c19207b734cb667`  
		Last Modified: Sat, 05 May 2018 21:03:08 GMT  
		Size: 1.1 MB (1066214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe3c1ca453cf52d615f6bcd2137413de926b47bdbddb5ec77ea0de6001fed10`  
		Last Modified: Sun, 06 May 2018 00:22:25 GMT  
		Size: 468.7 KB (468701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c91f04fa7b966d6ff137982f1ebff14ae63714dee3bf9fb1e000662de7fa77`  
		Last Modified: Fri, 11 May 2018 08:48:19 GMT  
		Size: 18.7 MB (18744797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:778c6a09ba6202b8f54aca264df618c670addecf9f75ed8d5b4cf19d285be67e`  
		Last Modified: Thu, 24 May 2018 08:55:16 GMT  
		Size: 137.5 MB (137505660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213bb0ef1fcfe833961f504c4ee30b9e1abc4d385436df2702ed58c266156479`  
		Last Modified: Thu, 24 May 2018 08:54:40 GMT  
		Size: 14.5 MB (14507103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b595acab636b598e441feb8df8fd01f6eb2954939ba96903a43c20de5e9173`  
		Last Modified: Thu, 24 May 2018 08:54:35 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.23` - linux; 386

```console
$ docker pull ghost@sha256:81429b3a4f4ccadf66b602246022c281c8309f506b3e0b4cfbacea6b27d45b22
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261170827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1878a575c36cee435fdae4420cf765b596fecdbc9a0fffc9df689c0f76095013`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:32 GMT
ADD file:ce5174f2b2c155a2421fac3ff37a02d9551d5d79e31a541189bcfd2416a6903a in / 
# Sat, 28 Apr 2018 10:39:32 GMT
CMD ["bash"]
# Sat, 05 May 2018 10:58:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 10:58:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 17:42:29 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 05 May 2018 17:42:33 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 05 May 2018 17:45:33 GMT
ENV NODE_VERSION=6.14.2
# Sat, 05 May 2018 17:46:09 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 05 May 2018 17:46:09 GMT
ENV YARN_VERSION=1.6.0
# Sat, 05 May 2018 17:46:12 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 05 May 2018 17:46:12 GMT
CMD ["node"]
# Sat, 05 May 2018 21:20:29 GMT
ENV GOSU_VERSION=1.10
# Sat, 05 May 2018 21:20:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 05 May 2018 21:20:34 GMT
ENV NODE_ENV=production
# Fri, 11 May 2018 11:06:41 GMT
ENV GHOST_CLI_VERSION=1.7.3
# Fri, 11 May 2018 11:07:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 11 May 2018 11:07:07 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 11 May 2018 11:07:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 24 May 2018 10:45:07 GMT
ENV GHOST_VERSION=1.23.0
# Thu, 24 May 2018 10:45:59 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 24 May 2018 10:46:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 24 May 2018 10:48:08 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 24 May 2018 10:48:09 GMT
WORKDIR /var/lib/ghost
# Thu, 24 May 2018 10:48:09 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 24 May 2018 10:48:09 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 24 May 2018 10:48:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 May 2018 10:48:10 GMT
EXPOSE 2368/tcp
# Thu, 24 May 2018 10:48:10 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:05b419d667f793c8c2edf0ff0aec14fc4d66733cdb89957ac89e8bfbeaddd0fa`  
		Last Modified: Sat, 28 Apr 2018 10:44:20 GMT  
		Size: 54.5 MB (54486782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74787bb4bafbd442893d0704b8d5e07e27bbf70148b113435531f54354d3bad3`  
		Last Modified: Sat, 05 May 2018 11:36:26 GMT  
		Size: 19.9 MB (19880379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2101aa2f5659dceeb5472bbe78b5b2223b4940c0327ab0f0dfe748b11ad3db`  
		Last Modified: Sat, 05 May 2018 17:50:56 GMT  
		Size: 4.4 KB (4393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737853dc4b3acf66d587af7b21caf0e86581ba16cf9fee5a3618f2a147bd2045`  
		Last Modified: Sat, 05 May 2018 17:50:56 GMT  
		Size: 117.6 KB (117624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a683b8e8d1559b634cb121f532865b0afca59f500ba83896ad84701a290a8f`  
		Last Modified: Sat, 05 May 2018 17:54:42 GMT  
		Size: 14.3 MB (14298138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52cf0acb35a28ca4903bc15db6cd4fe6dfa02d80755ba4aa4c6cb50a43cda1d`  
		Last Modified: Sat, 05 May 2018 17:54:38 GMT  
		Size: 1.1 MB (1066213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9439a2129d72f260c427f30e1942461766b38382c5a6c021578a1c585140e9d`  
		Last Modified: Sat, 05 May 2018 21:31:24 GMT  
		Size: 480.6 KB (480563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c499565e002dec2d62e6cd25d1ba3941e39ac1a4ab3b8800d12181ea679755c`  
		Last Modified: Fri, 11 May 2018 11:12:56 GMT  
		Size: 18.7 MB (18741667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbb94a6804313050bbe99d51ebc669a1890c80605d1b9be8fac923101717c48`  
		Last Modified: Thu, 24 May 2018 10:52:16 GMT  
		Size: 137.5 MB (137506691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f539cb78b17337233bcf13df763550656c5cc5b24239e218573e66b7c55376f`  
		Last Modified: Thu, 24 May 2018 10:51:45 GMT  
		Size: 14.6 MB (14587807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221e52ede68f8386cb2a7760484a2cbd9a3dda7c8efed41768cf6906288412ef`  
		Last Modified: Thu, 24 May 2018 10:51:41 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.23` - linux; ppc64le

```console
$ docker pull ghost@sha256:ed239d4dc56234e4275ee6ad76946b0e0a27cb915cb21b96f0ea1020fc3ea84a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.3 MB (233253425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fee2655170cac8d8ce2b52f5ddc35b40dd2f51801d6a56008dc92cf4b5f6eb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 08:18:08 GMT
ADD file:cc51ef60d7cb3b70c82127b8721de1b99378a9d4fc246dffa2ef5ffa2d9ab805 in / 
# Sat, 28 Apr 2018 08:18:09 GMT
CMD ["bash"]
# Fri, 25 May 2018 08:32:49 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 08:32:53 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 08:48:52 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 08:50:40 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 08:50:43 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 08:50:49 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 08:50:50 GMT
CMD ["node"]
# Fri, 25 May 2018 09:49:23 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 09:49:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 09:49:33 GMT
ENV NODE_ENV=production
# Fri, 25 May 2018 09:49:34 GMT
ENV GHOST_CLI_VERSION=1.7.3
# Fri, 25 May 2018 09:50:07 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 25 May 2018 09:50:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 25 May 2018 09:50:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 25 May 2018 09:50:15 GMT
ENV GHOST_VERSION=1.23.0
# Fri, 25 May 2018 09:51:27 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 25 May 2018 09:51:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 25 May 2018 09:55:25 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 25 May 2018 09:55:26 GMT
WORKDIR /var/lib/ghost
# Fri, 25 May 2018 09:55:27 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 25 May 2018 09:55:28 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Fri, 25 May 2018 09:55:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 09:55:30 GMT
EXPOSE 2368/tcp
# Fri, 25 May 2018 09:55:31 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:7745ff03a317ccaa10ff03129a2330b1c154aecaf51a892b7d99d5e1dbeb86cc`  
		Last Modified: Sat, 28 Apr 2018 08:25:29 GMT  
		Size: 29.3 MB (29317351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5765ecd6b4e5dc4e9757a057fc4127cdeeec4e3e777b4dd0971392c06b373b`  
		Last Modified: Fri, 25 May 2018 09:06:10 GMT  
		Size: 4.4 KB (4429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db919f8ae8ffa4343de2c13a34f5e6bc57b7b4ae820d141c76627bea943cde66`  
		Last Modified: Fri, 25 May 2018 09:06:11 GMT  
		Size: 117.6 KB (117643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e543bc0bae0d2ab1b0edc8a3fd714099e23e7dae64d909c7363e276f5f3aac`  
		Last Modified: Fri, 25 May 2018 09:12:32 GMT  
		Size: 31.0 MB (31034874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b5d1420c5536397987ac94e3d81fc276cfea3e1f9e15ec7e911c05a3a495cd`  
		Last Modified: Fri, 25 May 2018 09:12:23 GMT  
		Size: 1.1 MB (1066230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d8af7ee99bb0ea87ccf8d0511071fe7582c26bffffc659769dedcce8ff4e03`  
		Last Modified: Fri, 25 May 2018 10:02:28 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04bf08e89b5c7143b00647d1594800c2f3a23af9a37e24d2fff0b26061e67fc2`  
		Last Modified: Fri, 25 May 2018 10:02:37 GMT  
		Size: 18.8 MB (18770865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722bfa7d1b601bc4b88ac5ebaaadebaf7c760bf284fe462891cf1b35d6757ad8`  
		Last Modified: Fri, 25 May 2018 10:02:57 GMT  
		Size: 137.5 MB (137497194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e23748d5abdbd1fdbdd5b0eae364965a2e030b3096e9e62b13cb665fbaa327`  
		Last Modified: Fri, 25 May 2018 10:02:31 GMT  
		Size: 15.0 MB (14974423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f4d9953061725a589a8a5ce680d88fd7c80a7286ebc711e9c674a2b34c4749d`  
		Last Modified: Fri, 25 May 2018 10:02:28 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.23` - linux; s390x

```console
$ docker pull ghost@sha256:9090ca9f4a3cdb80b60558afb1403a51ce9d0f41c40dc783786795ccbff5f0ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.0 MB (234950357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74f229a2c78ff89541b0ca9fda5dbc06cf0f765c8415b2838e895257e877f522`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:53 GMT
ADD file:7c773d50957d6184975f5b22ef61757cd979893af5c77cdfef46dd28d8fc0296 in / 
# Sat, 28 Apr 2018 11:42:55 GMT
CMD ["bash"]
# Fri, 25 May 2018 12:27:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 12:27:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 12:58:07 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 12:58:26 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 12:58:27 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 12:58:29 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 12:58:29 GMT
CMD ["node"]
# Fri, 25 May 2018 13:36:00 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 13:36:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 13:36:02 GMT
ENV NODE_ENV=production
# Fri, 25 May 2018 13:36:02 GMT
ENV GHOST_CLI_VERSION=1.7.3
# Fri, 25 May 2018 13:36:23 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 25 May 2018 13:36:24 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 25 May 2018 13:36:24 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 25 May 2018 13:36:24 GMT
ENV GHOST_VERSION=1.23.0
# Fri, 25 May 2018 13:36:53 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 25 May 2018 13:36:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 25 May 2018 13:38:22 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 25 May 2018 13:38:23 GMT
WORKDIR /var/lib/ghost
# Fri, 25 May 2018 13:38:23 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 25 May 2018 13:38:23 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Fri, 25 May 2018 13:38:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 13:38:24 GMT
EXPOSE 2368/tcp
# Fri, 25 May 2018 13:38:24 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:f4d03f2765a5584a0dc02af25ffd7c98d6e129d072a1fc30380b106603442102`  
		Last Modified: Sat, 28 Apr 2018 11:48:28 GMT  
		Size: 30.3 MB (30308304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7427347e59bdcdb1f8adade9851d0a83b74c04c862cbc6483cb7f5d364a6694`  
		Last Modified: Fri, 25 May 2018 13:12:16 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f987b1e452122d69591a7ad4e1777f6398f71f6898abb7a0af5d8f834e99ce`  
		Last Modified: Fri, 25 May 2018 13:12:17 GMT  
		Size: 117.6 KB (117611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5499a8ebec846942baf6ca7922f6acbf1075c2956ab953243e2e96ed9d25293`  
		Last Modified: Fri, 25 May 2018 13:17:13 GMT  
		Size: 31.7 MB (31679303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89722c717ab8a51082112a4428a1e0d636445024eb95e2308476fa1f8902e5ac`  
		Last Modified: Fri, 25 May 2018 13:17:07 GMT  
		Size: 1.1 MB (1066213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcab469af6630994b3decf13743c14697a3b3bd2209c311ef3113944d5916fb8`  
		Last Modified: Fri, 25 May 2018 13:40:38 GMT  
		Size: 486.8 KB (486826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ba0415944d9485995fe11c7f4bc2b6d213da596819c91df3ccbe07143cbb99`  
		Last Modified: Fri, 25 May 2018 13:40:42 GMT  
		Size: 18.8 MB (18771013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aa41bb07b40618347e59fb18e8f7d493c3b743b242051f913d28e6fd33f9e23`  
		Last Modified: Fri, 25 May 2018 13:41:17 GMT  
		Size: 137.5 MB (137505296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7574233e0db6a43abf238353b7690d0adcda1c5a93cc268566369526327367a6`  
		Last Modified: Fri, 25 May 2018 13:40:45 GMT  
		Size: 15.0 MB (15010812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b704ca79ced391be7379b1d817f54152ddabb256ba68718920d62de8d2eece`  
		Last Modified: Fri, 25 May 2018 13:40:37 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.23.0`

```console
$ docker pull ghost@sha256:afef2240975371e6e8e22bff3dbda830daac75e01560d609b733e92e3f008ad5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:1.23.0` - linux; amd64

```console
$ docker pull ghost@sha256:c6305f10f40be2048fc9d970c3d72841e276c5fa3b28cd6c3a64b426ab37da06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.4 MB (230394901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a375d6b66f06c8ff42658d5b83c51ded88836b409e5413e40191df0cbacb9c5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Thu, 24 May 2018 19:43:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 24 May 2018 19:43:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Thu, 24 May 2018 20:25:43 GMT
ENV NODE_VERSION=6.14.2
# Thu, 24 May 2018 20:26:12 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 24 May 2018 20:26:13 GMT
ENV YARN_VERSION=1.6.0
# Thu, 24 May 2018 20:26:16 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 24 May 2018 20:26:16 GMT
CMD ["node"]
# Thu, 24 May 2018 22:26:02 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 May 2018 22:26:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 24 May 2018 22:26:07 GMT
ENV NODE_ENV=production
# Thu, 24 May 2018 22:26:07 GMT
ENV GHOST_CLI_VERSION=1.7.3
# Thu, 24 May 2018 22:26:30 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 24 May 2018 22:26:31 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 24 May 2018 22:26:31 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 24 May 2018 22:26:31 GMT
ENV GHOST_VERSION=1.23.0
# Thu, 24 May 2018 22:27:06 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 24 May 2018 22:27:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 24 May 2018 22:27:18 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 24 May 2018 22:27:19 GMT
WORKDIR /var/lib/ghost
# Thu, 24 May 2018 22:27:19 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 24 May 2018 22:27:19 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 24 May 2018 22:27:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 May 2018 22:27:20 GMT
EXPOSE 2368/tcp
# Thu, 24 May 2018 22:27:20 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db908151ac093a2ced2707e30d84874d4d162594ee84613e477f739f682410f1`  
		Last Modified: Thu, 24 May 2018 20:54:10 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d5faee7ece1ef1c5a46dfc27a19508ea42ca466e7909668e1329ff33cad5ac`  
		Last Modified: Thu, 24 May 2018 20:54:10 GMT  
		Size: 117.6 KB (117612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd7b61dadbbb9c8df09b0b8c146d3cced6f8825d61dcad2a266e42fb5b66272`  
		Last Modified: Thu, 24 May 2018 21:00:52 GMT  
		Size: 31.3 MB (31336873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cf569e2d11426efa5d31ca66ba326a60059b7162e56048e8c5dbbb58cb9d477`  
		Last Modified: Thu, 24 May 2018 21:00:45 GMT  
		Size: 1.1 MB (1066216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab43c3da95ec9c1c994b2b5f99372b5682f4a56ebe8914c27f7abae11574204`  
		Last Modified: Thu, 24 May 2018 22:36:56 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856759e077a55ef93e33bc5ec9c9fdfd1ab6d573c748d8568ec3b6348525bf31`  
		Last Modified: Thu, 24 May 2018 22:37:16 GMT  
		Size: 18.8 MB (18772089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce5364a7adccbda6b7faadfab8259e5cb417df78dec2721666b501cf933e63eb`  
		Last Modified: Thu, 24 May 2018 22:37:45 GMT  
		Size: 141.6 MB (141611145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f8c4f4cec186d3c63526a1045b54cc500d79e1033cbc80b2d4a1a17439b15ab`  
		Last Modified: Thu, 24 May 2018 22:36:56 GMT  
		Size: 6.9 MB (6858032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47659a8e84a83e12034c287bd163458a4e4fe60eff59e2f47e829088aeb288a`  
		Last Modified: Thu, 24 May 2018 22:36:55 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.23.0` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:421f3668cb5ded5bb516977fbc3c2f55d88b00497604da5707f9dbbf9e8782c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.8 MB (255836432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c30004b413630ae8fe097a547ffbe6f3bff88c050d4af3c7841119771efbd7ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:16:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 20:56:03 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 05 May 2018 20:56:08 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 05 May 2018 20:58:26 GMT
ENV NODE_VERSION=6.14.2
# Sat, 05 May 2018 20:58:53 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 05 May 2018 20:58:54 GMT
ENV YARN_VERSION=1.6.0
# Sat, 05 May 2018 20:58:59 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 05 May 2018 20:59:00 GMT
CMD ["node"]
# Sun, 06 May 2018 00:07:53 GMT
ENV GOSU_VERSION=1.10
# Sun, 06 May 2018 00:07:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 06 May 2018 00:07:59 GMT
ENV NODE_ENV=production
# Fri, 11 May 2018 08:39:32 GMT
ENV GHOST_CLI_VERSION=1.7.3
# Fri, 11 May 2018 08:40:34 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 11 May 2018 08:40:36 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 11 May 2018 08:40:36 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 24 May 2018 08:46:49 GMT
ENV GHOST_VERSION=1.23.0
# Thu, 24 May 2018 08:48:39 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 24 May 2018 08:48:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 24 May 2018 08:53:42 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 24 May 2018 08:53:45 GMT
WORKDIR /var/lib/ghost
# Thu, 24 May 2018 08:53:46 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 24 May 2018 08:53:47 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 24 May 2018 08:53:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 May 2018 08:53:55 GMT
EXPOSE 2368/tcp
# Thu, 24 May 2018 08:53:56 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc4956efcaf7d30060a373d34961e3c6e71ee0317cb5381a180230a397c5442`  
		Last Modified: Sat, 05 May 2018 09:43:52 GMT  
		Size: 17.2 MB (17213842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87a9fa2fe22a0d030f46183751b6f52579884755aa26ad5c36a5a68e85ec071`  
		Last Modified: Sat, 05 May 2018 21:01:41 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01de86854d3726dc3357440e44faae70c9ed20e2bf2e19431e1a207f7840627d`  
		Last Modified: Sat, 05 May 2018 21:01:41 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace6290f8f0213e3356a6d9ff4caffac4e9d77d73f0c2b1defa049b6a389e26`  
		Last Modified: Sat, 05 May 2018 21:03:14 GMT  
		Size: 14.8 MB (14760653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86d24b6dbb7d58d9df67fecf9700b52621e63db86db73a74c19207b734cb667`  
		Last Modified: Sat, 05 May 2018 21:03:08 GMT  
		Size: 1.1 MB (1066214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe3c1ca453cf52d615f6bcd2137413de926b47bdbddb5ec77ea0de6001fed10`  
		Last Modified: Sun, 06 May 2018 00:22:25 GMT  
		Size: 468.7 KB (468701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c91f04fa7b966d6ff137982f1ebff14ae63714dee3bf9fb1e000662de7fa77`  
		Last Modified: Fri, 11 May 2018 08:48:19 GMT  
		Size: 18.7 MB (18744797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:778c6a09ba6202b8f54aca264df618c670addecf9f75ed8d5b4cf19d285be67e`  
		Last Modified: Thu, 24 May 2018 08:55:16 GMT  
		Size: 137.5 MB (137505660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213bb0ef1fcfe833961f504c4ee30b9e1abc4d385436df2702ed58c266156479`  
		Last Modified: Thu, 24 May 2018 08:54:40 GMT  
		Size: 14.5 MB (14507103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b595acab636b598e441feb8df8fd01f6eb2954939ba96903a43c20de5e9173`  
		Last Modified: Thu, 24 May 2018 08:54:35 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.23.0` - linux; 386

```console
$ docker pull ghost@sha256:81429b3a4f4ccadf66b602246022c281c8309f506b3e0b4cfbacea6b27d45b22
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261170827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1878a575c36cee435fdae4420cf765b596fecdbc9a0fffc9df689c0f76095013`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:32 GMT
ADD file:ce5174f2b2c155a2421fac3ff37a02d9551d5d79e31a541189bcfd2416a6903a in / 
# Sat, 28 Apr 2018 10:39:32 GMT
CMD ["bash"]
# Sat, 05 May 2018 10:58:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 10:58:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 17:42:29 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 05 May 2018 17:42:33 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 05 May 2018 17:45:33 GMT
ENV NODE_VERSION=6.14.2
# Sat, 05 May 2018 17:46:09 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 05 May 2018 17:46:09 GMT
ENV YARN_VERSION=1.6.0
# Sat, 05 May 2018 17:46:12 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 05 May 2018 17:46:12 GMT
CMD ["node"]
# Sat, 05 May 2018 21:20:29 GMT
ENV GOSU_VERSION=1.10
# Sat, 05 May 2018 21:20:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 05 May 2018 21:20:34 GMT
ENV NODE_ENV=production
# Fri, 11 May 2018 11:06:41 GMT
ENV GHOST_CLI_VERSION=1.7.3
# Fri, 11 May 2018 11:07:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 11 May 2018 11:07:07 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 11 May 2018 11:07:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 24 May 2018 10:45:07 GMT
ENV GHOST_VERSION=1.23.0
# Thu, 24 May 2018 10:45:59 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 24 May 2018 10:46:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 24 May 2018 10:48:08 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 24 May 2018 10:48:09 GMT
WORKDIR /var/lib/ghost
# Thu, 24 May 2018 10:48:09 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 24 May 2018 10:48:09 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 24 May 2018 10:48:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 May 2018 10:48:10 GMT
EXPOSE 2368/tcp
# Thu, 24 May 2018 10:48:10 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:05b419d667f793c8c2edf0ff0aec14fc4d66733cdb89957ac89e8bfbeaddd0fa`  
		Last Modified: Sat, 28 Apr 2018 10:44:20 GMT  
		Size: 54.5 MB (54486782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74787bb4bafbd442893d0704b8d5e07e27bbf70148b113435531f54354d3bad3`  
		Last Modified: Sat, 05 May 2018 11:36:26 GMT  
		Size: 19.9 MB (19880379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2101aa2f5659dceeb5472bbe78b5b2223b4940c0327ab0f0dfe748b11ad3db`  
		Last Modified: Sat, 05 May 2018 17:50:56 GMT  
		Size: 4.4 KB (4393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737853dc4b3acf66d587af7b21caf0e86581ba16cf9fee5a3618f2a147bd2045`  
		Last Modified: Sat, 05 May 2018 17:50:56 GMT  
		Size: 117.6 KB (117624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a683b8e8d1559b634cb121f532865b0afca59f500ba83896ad84701a290a8f`  
		Last Modified: Sat, 05 May 2018 17:54:42 GMT  
		Size: 14.3 MB (14298138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52cf0acb35a28ca4903bc15db6cd4fe6dfa02d80755ba4aa4c6cb50a43cda1d`  
		Last Modified: Sat, 05 May 2018 17:54:38 GMT  
		Size: 1.1 MB (1066213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9439a2129d72f260c427f30e1942461766b38382c5a6c021578a1c585140e9d`  
		Last Modified: Sat, 05 May 2018 21:31:24 GMT  
		Size: 480.6 KB (480563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c499565e002dec2d62e6cd25d1ba3941e39ac1a4ab3b8800d12181ea679755c`  
		Last Modified: Fri, 11 May 2018 11:12:56 GMT  
		Size: 18.7 MB (18741667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbb94a6804313050bbe99d51ebc669a1890c80605d1b9be8fac923101717c48`  
		Last Modified: Thu, 24 May 2018 10:52:16 GMT  
		Size: 137.5 MB (137506691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f539cb78b17337233bcf13df763550656c5cc5b24239e218573e66b7c55376f`  
		Last Modified: Thu, 24 May 2018 10:51:45 GMT  
		Size: 14.6 MB (14587807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221e52ede68f8386cb2a7760484a2cbd9a3dda7c8efed41768cf6906288412ef`  
		Last Modified: Thu, 24 May 2018 10:51:41 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.23.0` - linux; ppc64le

```console
$ docker pull ghost@sha256:ed239d4dc56234e4275ee6ad76946b0e0a27cb915cb21b96f0ea1020fc3ea84a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.3 MB (233253425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fee2655170cac8d8ce2b52f5ddc35b40dd2f51801d6a56008dc92cf4b5f6eb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 08:18:08 GMT
ADD file:cc51ef60d7cb3b70c82127b8721de1b99378a9d4fc246dffa2ef5ffa2d9ab805 in / 
# Sat, 28 Apr 2018 08:18:09 GMT
CMD ["bash"]
# Fri, 25 May 2018 08:32:49 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 08:32:53 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 08:48:52 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 08:50:40 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 08:50:43 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 08:50:49 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 08:50:50 GMT
CMD ["node"]
# Fri, 25 May 2018 09:49:23 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 09:49:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 09:49:33 GMT
ENV NODE_ENV=production
# Fri, 25 May 2018 09:49:34 GMT
ENV GHOST_CLI_VERSION=1.7.3
# Fri, 25 May 2018 09:50:07 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 25 May 2018 09:50:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 25 May 2018 09:50:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 25 May 2018 09:50:15 GMT
ENV GHOST_VERSION=1.23.0
# Fri, 25 May 2018 09:51:27 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 25 May 2018 09:51:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 25 May 2018 09:55:25 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 25 May 2018 09:55:26 GMT
WORKDIR /var/lib/ghost
# Fri, 25 May 2018 09:55:27 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 25 May 2018 09:55:28 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Fri, 25 May 2018 09:55:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 09:55:30 GMT
EXPOSE 2368/tcp
# Fri, 25 May 2018 09:55:31 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:7745ff03a317ccaa10ff03129a2330b1c154aecaf51a892b7d99d5e1dbeb86cc`  
		Last Modified: Sat, 28 Apr 2018 08:25:29 GMT  
		Size: 29.3 MB (29317351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5765ecd6b4e5dc4e9757a057fc4127cdeeec4e3e777b4dd0971392c06b373b`  
		Last Modified: Fri, 25 May 2018 09:06:10 GMT  
		Size: 4.4 KB (4429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db919f8ae8ffa4343de2c13a34f5e6bc57b7b4ae820d141c76627bea943cde66`  
		Last Modified: Fri, 25 May 2018 09:06:11 GMT  
		Size: 117.6 KB (117643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e543bc0bae0d2ab1b0edc8a3fd714099e23e7dae64d909c7363e276f5f3aac`  
		Last Modified: Fri, 25 May 2018 09:12:32 GMT  
		Size: 31.0 MB (31034874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b5d1420c5536397987ac94e3d81fc276cfea3e1f9e15ec7e911c05a3a495cd`  
		Last Modified: Fri, 25 May 2018 09:12:23 GMT  
		Size: 1.1 MB (1066230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d8af7ee99bb0ea87ccf8d0511071fe7582c26bffffc659769dedcce8ff4e03`  
		Last Modified: Fri, 25 May 2018 10:02:28 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04bf08e89b5c7143b00647d1594800c2f3a23af9a37e24d2fff0b26061e67fc2`  
		Last Modified: Fri, 25 May 2018 10:02:37 GMT  
		Size: 18.8 MB (18770865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722bfa7d1b601bc4b88ac5ebaaadebaf7c760bf284fe462891cf1b35d6757ad8`  
		Last Modified: Fri, 25 May 2018 10:02:57 GMT  
		Size: 137.5 MB (137497194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e23748d5abdbd1fdbdd5b0eae364965a2e030b3096e9e62b13cb665fbaa327`  
		Last Modified: Fri, 25 May 2018 10:02:31 GMT  
		Size: 15.0 MB (14974423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f4d9953061725a589a8a5ce680d88fd7c80a7286ebc711e9c674a2b34c4749d`  
		Last Modified: Fri, 25 May 2018 10:02:28 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.23.0` - linux; s390x

```console
$ docker pull ghost@sha256:9090ca9f4a3cdb80b60558afb1403a51ce9d0f41c40dc783786795ccbff5f0ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.0 MB (234950357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74f229a2c78ff89541b0ca9fda5dbc06cf0f765c8415b2838e895257e877f522`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:53 GMT
ADD file:7c773d50957d6184975f5b22ef61757cd979893af5c77cdfef46dd28d8fc0296 in / 
# Sat, 28 Apr 2018 11:42:55 GMT
CMD ["bash"]
# Fri, 25 May 2018 12:27:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 12:27:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 12:58:07 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 12:58:26 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 12:58:27 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 12:58:29 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 12:58:29 GMT
CMD ["node"]
# Fri, 25 May 2018 13:36:00 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 13:36:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 13:36:02 GMT
ENV NODE_ENV=production
# Fri, 25 May 2018 13:36:02 GMT
ENV GHOST_CLI_VERSION=1.7.3
# Fri, 25 May 2018 13:36:23 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 25 May 2018 13:36:24 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 25 May 2018 13:36:24 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 25 May 2018 13:36:24 GMT
ENV GHOST_VERSION=1.23.0
# Fri, 25 May 2018 13:36:53 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 25 May 2018 13:36:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 25 May 2018 13:38:22 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 25 May 2018 13:38:23 GMT
WORKDIR /var/lib/ghost
# Fri, 25 May 2018 13:38:23 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 25 May 2018 13:38:23 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Fri, 25 May 2018 13:38:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 13:38:24 GMT
EXPOSE 2368/tcp
# Fri, 25 May 2018 13:38:24 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:f4d03f2765a5584a0dc02af25ffd7c98d6e129d072a1fc30380b106603442102`  
		Last Modified: Sat, 28 Apr 2018 11:48:28 GMT  
		Size: 30.3 MB (30308304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7427347e59bdcdb1f8adade9851d0a83b74c04c862cbc6483cb7f5d364a6694`  
		Last Modified: Fri, 25 May 2018 13:12:16 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f987b1e452122d69591a7ad4e1777f6398f71f6898abb7a0af5d8f834e99ce`  
		Last Modified: Fri, 25 May 2018 13:12:17 GMT  
		Size: 117.6 KB (117611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5499a8ebec846942baf6ca7922f6acbf1075c2956ab953243e2e96ed9d25293`  
		Last Modified: Fri, 25 May 2018 13:17:13 GMT  
		Size: 31.7 MB (31679303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89722c717ab8a51082112a4428a1e0d636445024eb95e2308476fa1f8902e5ac`  
		Last Modified: Fri, 25 May 2018 13:17:07 GMT  
		Size: 1.1 MB (1066213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcab469af6630994b3decf13743c14697a3b3bd2209c311ef3113944d5916fb8`  
		Last Modified: Fri, 25 May 2018 13:40:38 GMT  
		Size: 486.8 KB (486826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ba0415944d9485995fe11c7f4bc2b6d213da596819c91df3ccbe07143cbb99`  
		Last Modified: Fri, 25 May 2018 13:40:42 GMT  
		Size: 18.8 MB (18771013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aa41bb07b40618347e59fb18e8f7d493c3b743b242051f913d28e6fd33f9e23`  
		Last Modified: Fri, 25 May 2018 13:41:17 GMT  
		Size: 137.5 MB (137505296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7574233e0db6a43abf238353b7690d0adcda1c5a93cc268566369526327367a6`  
		Last Modified: Fri, 25 May 2018 13:40:45 GMT  
		Size: 15.0 MB (15010812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b704ca79ced391be7379b1d817f54152ddabb256ba68718920d62de8d2eece`  
		Last Modified: Fri, 25 May 2018 13:40:37 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.23.0-alpine`

```console
$ docker pull ghost@sha256:46b8d0e2437c46af0c2579a4a717a20c4253da2b75bb4dd4875b7686aaa9ca8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1.23.0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:c73d746471953e007053bbd5e20f4c6c528ac33c19a2907c057aaa1b04ac2437
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.5 MB (180484446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fac73f90e5ed32d8d84418d9ff211d8e07741188b9e1b2a68ae24b06fd44de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Thu, 03 May 2018 23:45:34 GMT
ENV NODE_VERSION=6.14.2
# Thu, 24 May 2018 20:20:16 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 24 May 2018 20:20:17 GMT
ENV YARN_VERSION=1.6.0
# Thu, 24 May 2018 20:20:25 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 24 May 2018 20:20:25 GMT
CMD ["node"]
# Thu, 24 May 2018 22:28:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 24 May 2018 22:28:13 GMT
RUN apk add --no-cache 		bash
# Thu, 24 May 2018 22:28:13 GMT
ENV NODE_ENV=production
# Thu, 24 May 2018 22:28:14 GMT
ENV GHOST_CLI_VERSION=1.7.3
# Thu, 24 May 2018 22:28:37 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 24 May 2018 22:28:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 24 May 2018 22:28:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 24 May 2018 22:28:38 GMT
ENV GHOST_VERSION=1.23.0
# Thu, 24 May 2018 22:29:12 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 24 May 2018 22:29:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 24 May 2018 22:29:14 GMT
WORKDIR /var/lib/ghost
# Thu, 24 May 2018 22:29:14 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 24 May 2018 22:29:14 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Thu, 24 May 2018 22:29:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 May 2018 22:29:15 GMT
EXPOSE 2368/tcp
# Thu, 24 May 2018 22:29:15 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf1ad53299f29e45eb1fabb6165902e53c02da8b3ce9f0a30513b64f67ac088`  
		Last Modified: Thu, 24 May 2018 20:59:31 GMT  
		Size: 15.5 MB (15512047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c67eb3c047648acb84bdadbba46d9aca5b2b8fb1ea1c3d9af37ce0839c21a8`  
		Last Modified: Thu, 24 May 2018 20:59:27 GMT  
		Size: 1.1 MB (1072940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cfa1966b48fc8804d1d38a42347e7bf1cdea6a6e174af78a70be99dcbef293`  
		Last Modified: Thu, 24 May 2018 22:38:22 GMT  
		Size: 8.4 KB (8364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7dd041263d1be4b1904328454b67bd2af864dbeae95ecf25ee4e35a71a22ce6`  
		Last Modified: Thu, 24 May 2018 22:38:25 GMT  
		Size: 1.1 MB (1119123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac95ceb57e356b35603dbbf537ff82923a136686a771d855cb793943cad29605`  
		Last Modified: Thu, 24 May 2018 22:38:46 GMT  
		Size: 18.8 MB (18772114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f03ca787270f5bab0a9831955a48efec8c8ef591e1161a20760a98677ee7891`  
		Last Modified: Thu, 24 May 2018 22:39:13 GMT  
		Size: 141.6 MB (141611733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415321e094cba1d165464c0186022f2c5df062f4ff6d4fda9793dbd19c531996`  
		Last Modified: Thu, 24 May 2018 22:38:21 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.23-alpine`

```console
$ docker pull ghost@sha256:46b8d0e2437c46af0c2579a4a717a20c4253da2b75bb4dd4875b7686aaa9ca8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1.23-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:c73d746471953e007053bbd5e20f4c6c528ac33c19a2907c057aaa1b04ac2437
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.5 MB (180484446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fac73f90e5ed32d8d84418d9ff211d8e07741188b9e1b2a68ae24b06fd44de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Thu, 03 May 2018 23:45:34 GMT
ENV NODE_VERSION=6.14.2
# Thu, 24 May 2018 20:20:16 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 24 May 2018 20:20:17 GMT
ENV YARN_VERSION=1.6.0
# Thu, 24 May 2018 20:20:25 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 24 May 2018 20:20:25 GMT
CMD ["node"]
# Thu, 24 May 2018 22:28:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 24 May 2018 22:28:13 GMT
RUN apk add --no-cache 		bash
# Thu, 24 May 2018 22:28:13 GMT
ENV NODE_ENV=production
# Thu, 24 May 2018 22:28:14 GMT
ENV GHOST_CLI_VERSION=1.7.3
# Thu, 24 May 2018 22:28:37 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 24 May 2018 22:28:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 24 May 2018 22:28:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 24 May 2018 22:28:38 GMT
ENV GHOST_VERSION=1.23.0
# Thu, 24 May 2018 22:29:12 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 24 May 2018 22:29:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 24 May 2018 22:29:14 GMT
WORKDIR /var/lib/ghost
# Thu, 24 May 2018 22:29:14 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 24 May 2018 22:29:14 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Thu, 24 May 2018 22:29:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 May 2018 22:29:15 GMT
EXPOSE 2368/tcp
# Thu, 24 May 2018 22:29:15 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf1ad53299f29e45eb1fabb6165902e53c02da8b3ce9f0a30513b64f67ac088`  
		Last Modified: Thu, 24 May 2018 20:59:31 GMT  
		Size: 15.5 MB (15512047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c67eb3c047648acb84bdadbba46d9aca5b2b8fb1ea1c3d9af37ce0839c21a8`  
		Last Modified: Thu, 24 May 2018 20:59:27 GMT  
		Size: 1.1 MB (1072940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cfa1966b48fc8804d1d38a42347e7bf1cdea6a6e174af78a70be99dcbef293`  
		Last Modified: Thu, 24 May 2018 22:38:22 GMT  
		Size: 8.4 KB (8364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7dd041263d1be4b1904328454b67bd2af864dbeae95ecf25ee4e35a71a22ce6`  
		Last Modified: Thu, 24 May 2018 22:38:25 GMT  
		Size: 1.1 MB (1119123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac95ceb57e356b35603dbbf537ff82923a136686a771d855cb793943cad29605`  
		Last Modified: Thu, 24 May 2018 22:38:46 GMT  
		Size: 18.8 MB (18772114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f03ca787270f5bab0a9831955a48efec8c8ef591e1161a20760a98677ee7891`  
		Last Modified: Thu, 24 May 2018 22:39:13 GMT  
		Size: 141.6 MB (141611733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415321e094cba1d165464c0186022f2c5df062f4ff6d4fda9793dbd19c531996`  
		Last Modified: Thu, 24 May 2018 22:38:21 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:46b8d0e2437c46af0c2579a4a717a20c4253da2b75bb4dd4875b7686aaa9ca8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:c73d746471953e007053bbd5e20f4c6c528ac33c19a2907c057aaa1b04ac2437
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.5 MB (180484446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fac73f90e5ed32d8d84418d9ff211d8e07741188b9e1b2a68ae24b06fd44de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Thu, 03 May 2018 23:45:34 GMT
ENV NODE_VERSION=6.14.2
# Thu, 24 May 2018 20:20:16 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 24 May 2018 20:20:17 GMT
ENV YARN_VERSION=1.6.0
# Thu, 24 May 2018 20:20:25 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 24 May 2018 20:20:25 GMT
CMD ["node"]
# Thu, 24 May 2018 22:28:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 24 May 2018 22:28:13 GMT
RUN apk add --no-cache 		bash
# Thu, 24 May 2018 22:28:13 GMT
ENV NODE_ENV=production
# Thu, 24 May 2018 22:28:14 GMT
ENV GHOST_CLI_VERSION=1.7.3
# Thu, 24 May 2018 22:28:37 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 24 May 2018 22:28:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 24 May 2018 22:28:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 24 May 2018 22:28:38 GMT
ENV GHOST_VERSION=1.23.0
# Thu, 24 May 2018 22:29:12 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 24 May 2018 22:29:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 24 May 2018 22:29:14 GMT
WORKDIR /var/lib/ghost
# Thu, 24 May 2018 22:29:14 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 24 May 2018 22:29:14 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Thu, 24 May 2018 22:29:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 May 2018 22:29:15 GMT
EXPOSE 2368/tcp
# Thu, 24 May 2018 22:29:15 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf1ad53299f29e45eb1fabb6165902e53c02da8b3ce9f0a30513b64f67ac088`  
		Last Modified: Thu, 24 May 2018 20:59:31 GMT  
		Size: 15.5 MB (15512047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c67eb3c047648acb84bdadbba46d9aca5b2b8fb1ea1c3d9af37ce0839c21a8`  
		Last Modified: Thu, 24 May 2018 20:59:27 GMT  
		Size: 1.1 MB (1072940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cfa1966b48fc8804d1d38a42347e7bf1cdea6a6e174af78a70be99dcbef293`  
		Last Modified: Thu, 24 May 2018 22:38:22 GMT  
		Size: 8.4 KB (8364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7dd041263d1be4b1904328454b67bd2af864dbeae95ecf25ee4e35a71a22ce6`  
		Last Modified: Thu, 24 May 2018 22:38:25 GMT  
		Size: 1.1 MB (1119123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac95ceb57e356b35603dbbf537ff82923a136686a771d855cb793943cad29605`  
		Last Modified: Thu, 24 May 2018 22:38:46 GMT  
		Size: 18.8 MB (18772114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f03ca787270f5bab0a9831955a48efec8c8ef591e1161a20760a98677ee7891`  
		Last Modified: Thu, 24 May 2018 22:39:13 GMT  
		Size: 141.6 MB (141611733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415321e094cba1d165464c0186022f2c5df062f4ff6d4fda9793dbd19c531996`  
		Last Modified: Thu, 24 May 2018 22:38:21 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:46b8d0e2437c46af0c2579a4a717a20c4253da2b75bb4dd4875b7686aaa9ca8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:c73d746471953e007053bbd5e20f4c6c528ac33c19a2907c057aaa1b04ac2437
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.5 MB (180484446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fac73f90e5ed32d8d84418d9ff211d8e07741188b9e1b2a68ae24b06fd44de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Thu, 03 May 2018 23:45:34 GMT
ENV NODE_VERSION=6.14.2
# Thu, 24 May 2018 20:20:16 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 24 May 2018 20:20:17 GMT
ENV YARN_VERSION=1.6.0
# Thu, 24 May 2018 20:20:25 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 24 May 2018 20:20:25 GMT
CMD ["node"]
# Thu, 24 May 2018 22:28:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 24 May 2018 22:28:13 GMT
RUN apk add --no-cache 		bash
# Thu, 24 May 2018 22:28:13 GMT
ENV NODE_ENV=production
# Thu, 24 May 2018 22:28:14 GMT
ENV GHOST_CLI_VERSION=1.7.3
# Thu, 24 May 2018 22:28:37 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 24 May 2018 22:28:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 24 May 2018 22:28:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 24 May 2018 22:28:38 GMT
ENV GHOST_VERSION=1.23.0
# Thu, 24 May 2018 22:29:12 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 24 May 2018 22:29:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 24 May 2018 22:29:14 GMT
WORKDIR /var/lib/ghost
# Thu, 24 May 2018 22:29:14 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 24 May 2018 22:29:14 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Thu, 24 May 2018 22:29:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 May 2018 22:29:15 GMT
EXPOSE 2368/tcp
# Thu, 24 May 2018 22:29:15 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf1ad53299f29e45eb1fabb6165902e53c02da8b3ce9f0a30513b64f67ac088`  
		Last Modified: Thu, 24 May 2018 20:59:31 GMT  
		Size: 15.5 MB (15512047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c67eb3c047648acb84bdadbba46d9aca5b2b8fb1ea1c3d9af37ce0839c21a8`  
		Last Modified: Thu, 24 May 2018 20:59:27 GMT  
		Size: 1.1 MB (1072940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cfa1966b48fc8804d1d38a42347e7bf1cdea6a6e174af78a70be99dcbef293`  
		Last Modified: Thu, 24 May 2018 22:38:22 GMT  
		Size: 8.4 KB (8364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7dd041263d1be4b1904328454b67bd2af864dbeae95ecf25ee4e35a71a22ce6`  
		Last Modified: Thu, 24 May 2018 22:38:25 GMT  
		Size: 1.1 MB (1119123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac95ceb57e356b35603dbbf537ff82923a136686a771d855cb793943cad29605`  
		Last Modified: Thu, 24 May 2018 22:38:46 GMT  
		Size: 18.8 MB (18772114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f03ca787270f5bab0a9831955a48efec8c8ef591e1161a20760a98677ee7891`  
		Last Modified: Thu, 24 May 2018 22:39:13 GMT  
		Size: 141.6 MB (141611733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415321e094cba1d165464c0186022f2c5df062f4ff6d4fda9793dbd19c531996`  
		Last Modified: Thu, 24 May 2018 22:38:21 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:afef2240975371e6e8e22bff3dbda830daac75e01560d609b733e92e3f008ad5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:latest` - linux; amd64

```console
$ docker pull ghost@sha256:c6305f10f40be2048fc9d970c3d72841e276c5fa3b28cd6c3a64b426ab37da06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.4 MB (230394901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a375d6b66f06c8ff42658d5b83c51ded88836b409e5413e40191df0cbacb9c5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Thu, 24 May 2018 19:43:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 24 May 2018 19:43:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Thu, 24 May 2018 20:25:43 GMT
ENV NODE_VERSION=6.14.2
# Thu, 24 May 2018 20:26:12 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 24 May 2018 20:26:13 GMT
ENV YARN_VERSION=1.6.0
# Thu, 24 May 2018 20:26:16 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 24 May 2018 20:26:16 GMT
CMD ["node"]
# Thu, 24 May 2018 22:26:02 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 May 2018 22:26:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 24 May 2018 22:26:07 GMT
ENV NODE_ENV=production
# Thu, 24 May 2018 22:26:07 GMT
ENV GHOST_CLI_VERSION=1.7.3
# Thu, 24 May 2018 22:26:30 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 24 May 2018 22:26:31 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 24 May 2018 22:26:31 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 24 May 2018 22:26:31 GMT
ENV GHOST_VERSION=1.23.0
# Thu, 24 May 2018 22:27:06 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 24 May 2018 22:27:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 24 May 2018 22:27:18 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 24 May 2018 22:27:19 GMT
WORKDIR /var/lib/ghost
# Thu, 24 May 2018 22:27:19 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 24 May 2018 22:27:19 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 24 May 2018 22:27:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 May 2018 22:27:20 GMT
EXPOSE 2368/tcp
# Thu, 24 May 2018 22:27:20 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db908151ac093a2ced2707e30d84874d4d162594ee84613e477f739f682410f1`  
		Last Modified: Thu, 24 May 2018 20:54:10 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d5faee7ece1ef1c5a46dfc27a19508ea42ca466e7909668e1329ff33cad5ac`  
		Last Modified: Thu, 24 May 2018 20:54:10 GMT  
		Size: 117.6 KB (117612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd7b61dadbbb9c8df09b0b8c146d3cced6f8825d61dcad2a266e42fb5b66272`  
		Last Modified: Thu, 24 May 2018 21:00:52 GMT  
		Size: 31.3 MB (31336873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cf569e2d11426efa5d31ca66ba326a60059b7162e56048e8c5dbbb58cb9d477`  
		Last Modified: Thu, 24 May 2018 21:00:45 GMT  
		Size: 1.1 MB (1066216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab43c3da95ec9c1c994b2b5f99372b5682f4a56ebe8914c27f7abae11574204`  
		Last Modified: Thu, 24 May 2018 22:36:56 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856759e077a55ef93e33bc5ec9c9fdfd1ab6d573c748d8568ec3b6348525bf31`  
		Last Modified: Thu, 24 May 2018 22:37:16 GMT  
		Size: 18.8 MB (18772089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce5364a7adccbda6b7faadfab8259e5cb417df78dec2721666b501cf933e63eb`  
		Last Modified: Thu, 24 May 2018 22:37:45 GMT  
		Size: 141.6 MB (141611145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f8c4f4cec186d3c63526a1045b54cc500d79e1033cbc80b2d4a1a17439b15ab`  
		Last Modified: Thu, 24 May 2018 22:36:56 GMT  
		Size: 6.9 MB (6858032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47659a8e84a83e12034c287bd163458a4e4fe60eff59e2f47e829088aeb288a`  
		Last Modified: Thu, 24 May 2018 22:36:55 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:421f3668cb5ded5bb516977fbc3c2f55d88b00497604da5707f9dbbf9e8782c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.8 MB (255836432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c30004b413630ae8fe097a547ffbe6f3bff88c050d4af3c7841119771efbd7ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:16:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 20:56:03 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 05 May 2018 20:56:08 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 05 May 2018 20:58:26 GMT
ENV NODE_VERSION=6.14.2
# Sat, 05 May 2018 20:58:53 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 05 May 2018 20:58:54 GMT
ENV YARN_VERSION=1.6.0
# Sat, 05 May 2018 20:58:59 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 05 May 2018 20:59:00 GMT
CMD ["node"]
# Sun, 06 May 2018 00:07:53 GMT
ENV GOSU_VERSION=1.10
# Sun, 06 May 2018 00:07:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 06 May 2018 00:07:59 GMT
ENV NODE_ENV=production
# Fri, 11 May 2018 08:39:32 GMT
ENV GHOST_CLI_VERSION=1.7.3
# Fri, 11 May 2018 08:40:34 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 11 May 2018 08:40:36 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 11 May 2018 08:40:36 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 24 May 2018 08:46:49 GMT
ENV GHOST_VERSION=1.23.0
# Thu, 24 May 2018 08:48:39 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 24 May 2018 08:48:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 24 May 2018 08:53:42 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 24 May 2018 08:53:45 GMT
WORKDIR /var/lib/ghost
# Thu, 24 May 2018 08:53:46 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 24 May 2018 08:53:47 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 24 May 2018 08:53:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 May 2018 08:53:55 GMT
EXPOSE 2368/tcp
# Thu, 24 May 2018 08:53:56 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc4956efcaf7d30060a373d34961e3c6e71ee0317cb5381a180230a397c5442`  
		Last Modified: Sat, 05 May 2018 09:43:52 GMT  
		Size: 17.2 MB (17213842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87a9fa2fe22a0d030f46183751b6f52579884755aa26ad5c36a5a68e85ec071`  
		Last Modified: Sat, 05 May 2018 21:01:41 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01de86854d3726dc3357440e44faae70c9ed20e2bf2e19431e1a207f7840627d`  
		Last Modified: Sat, 05 May 2018 21:01:41 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace6290f8f0213e3356a6d9ff4caffac4e9d77d73f0c2b1defa049b6a389e26`  
		Last Modified: Sat, 05 May 2018 21:03:14 GMT  
		Size: 14.8 MB (14760653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86d24b6dbb7d58d9df67fecf9700b52621e63db86db73a74c19207b734cb667`  
		Last Modified: Sat, 05 May 2018 21:03:08 GMT  
		Size: 1.1 MB (1066214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe3c1ca453cf52d615f6bcd2137413de926b47bdbddb5ec77ea0de6001fed10`  
		Last Modified: Sun, 06 May 2018 00:22:25 GMT  
		Size: 468.7 KB (468701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c91f04fa7b966d6ff137982f1ebff14ae63714dee3bf9fb1e000662de7fa77`  
		Last Modified: Fri, 11 May 2018 08:48:19 GMT  
		Size: 18.7 MB (18744797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:778c6a09ba6202b8f54aca264df618c670addecf9f75ed8d5b4cf19d285be67e`  
		Last Modified: Thu, 24 May 2018 08:55:16 GMT  
		Size: 137.5 MB (137505660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213bb0ef1fcfe833961f504c4ee30b9e1abc4d385436df2702ed58c266156479`  
		Last Modified: Thu, 24 May 2018 08:54:40 GMT  
		Size: 14.5 MB (14507103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b595acab636b598e441feb8df8fd01f6eb2954939ba96903a43c20de5e9173`  
		Last Modified: Thu, 24 May 2018 08:54:35 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; 386

```console
$ docker pull ghost@sha256:81429b3a4f4ccadf66b602246022c281c8309f506b3e0b4cfbacea6b27d45b22
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261170827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1878a575c36cee435fdae4420cf765b596fecdbc9a0fffc9df689c0f76095013`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:32 GMT
ADD file:ce5174f2b2c155a2421fac3ff37a02d9551d5d79e31a541189bcfd2416a6903a in / 
# Sat, 28 Apr 2018 10:39:32 GMT
CMD ["bash"]
# Sat, 05 May 2018 10:58:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 10:58:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 17:42:29 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 05 May 2018 17:42:33 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 05 May 2018 17:45:33 GMT
ENV NODE_VERSION=6.14.2
# Sat, 05 May 2018 17:46:09 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 05 May 2018 17:46:09 GMT
ENV YARN_VERSION=1.6.0
# Sat, 05 May 2018 17:46:12 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 05 May 2018 17:46:12 GMT
CMD ["node"]
# Sat, 05 May 2018 21:20:29 GMT
ENV GOSU_VERSION=1.10
# Sat, 05 May 2018 21:20:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 05 May 2018 21:20:34 GMT
ENV NODE_ENV=production
# Fri, 11 May 2018 11:06:41 GMT
ENV GHOST_CLI_VERSION=1.7.3
# Fri, 11 May 2018 11:07:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 11 May 2018 11:07:07 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 11 May 2018 11:07:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 24 May 2018 10:45:07 GMT
ENV GHOST_VERSION=1.23.0
# Thu, 24 May 2018 10:45:59 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 24 May 2018 10:46:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 24 May 2018 10:48:08 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 24 May 2018 10:48:09 GMT
WORKDIR /var/lib/ghost
# Thu, 24 May 2018 10:48:09 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 24 May 2018 10:48:09 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 24 May 2018 10:48:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 May 2018 10:48:10 GMT
EXPOSE 2368/tcp
# Thu, 24 May 2018 10:48:10 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:05b419d667f793c8c2edf0ff0aec14fc4d66733cdb89957ac89e8bfbeaddd0fa`  
		Last Modified: Sat, 28 Apr 2018 10:44:20 GMT  
		Size: 54.5 MB (54486782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74787bb4bafbd442893d0704b8d5e07e27bbf70148b113435531f54354d3bad3`  
		Last Modified: Sat, 05 May 2018 11:36:26 GMT  
		Size: 19.9 MB (19880379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2101aa2f5659dceeb5472bbe78b5b2223b4940c0327ab0f0dfe748b11ad3db`  
		Last Modified: Sat, 05 May 2018 17:50:56 GMT  
		Size: 4.4 KB (4393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737853dc4b3acf66d587af7b21caf0e86581ba16cf9fee5a3618f2a147bd2045`  
		Last Modified: Sat, 05 May 2018 17:50:56 GMT  
		Size: 117.6 KB (117624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a683b8e8d1559b634cb121f532865b0afca59f500ba83896ad84701a290a8f`  
		Last Modified: Sat, 05 May 2018 17:54:42 GMT  
		Size: 14.3 MB (14298138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52cf0acb35a28ca4903bc15db6cd4fe6dfa02d80755ba4aa4c6cb50a43cda1d`  
		Last Modified: Sat, 05 May 2018 17:54:38 GMT  
		Size: 1.1 MB (1066213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9439a2129d72f260c427f30e1942461766b38382c5a6c021578a1c585140e9d`  
		Last Modified: Sat, 05 May 2018 21:31:24 GMT  
		Size: 480.6 KB (480563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c499565e002dec2d62e6cd25d1ba3941e39ac1a4ab3b8800d12181ea679755c`  
		Last Modified: Fri, 11 May 2018 11:12:56 GMT  
		Size: 18.7 MB (18741667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbb94a6804313050bbe99d51ebc669a1890c80605d1b9be8fac923101717c48`  
		Last Modified: Thu, 24 May 2018 10:52:16 GMT  
		Size: 137.5 MB (137506691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f539cb78b17337233bcf13df763550656c5cc5b24239e218573e66b7c55376f`  
		Last Modified: Thu, 24 May 2018 10:51:45 GMT  
		Size: 14.6 MB (14587807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221e52ede68f8386cb2a7760484a2cbd9a3dda7c8efed41768cf6906288412ef`  
		Last Modified: Thu, 24 May 2018 10:51:41 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; ppc64le

```console
$ docker pull ghost@sha256:ed239d4dc56234e4275ee6ad76946b0e0a27cb915cb21b96f0ea1020fc3ea84a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.3 MB (233253425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fee2655170cac8d8ce2b52f5ddc35b40dd2f51801d6a56008dc92cf4b5f6eb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 08:18:08 GMT
ADD file:cc51ef60d7cb3b70c82127b8721de1b99378a9d4fc246dffa2ef5ffa2d9ab805 in / 
# Sat, 28 Apr 2018 08:18:09 GMT
CMD ["bash"]
# Fri, 25 May 2018 08:32:49 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 08:32:53 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 08:48:52 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 08:50:40 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 08:50:43 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 08:50:49 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 08:50:50 GMT
CMD ["node"]
# Fri, 25 May 2018 09:49:23 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 09:49:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 09:49:33 GMT
ENV NODE_ENV=production
# Fri, 25 May 2018 09:49:34 GMT
ENV GHOST_CLI_VERSION=1.7.3
# Fri, 25 May 2018 09:50:07 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 25 May 2018 09:50:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 25 May 2018 09:50:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 25 May 2018 09:50:15 GMT
ENV GHOST_VERSION=1.23.0
# Fri, 25 May 2018 09:51:27 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 25 May 2018 09:51:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 25 May 2018 09:55:25 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 25 May 2018 09:55:26 GMT
WORKDIR /var/lib/ghost
# Fri, 25 May 2018 09:55:27 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 25 May 2018 09:55:28 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Fri, 25 May 2018 09:55:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 09:55:30 GMT
EXPOSE 2368/tcp
# Fri, 25 May 2018 09:55:31 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:7745ff03a317ccaa10ff03129a2330b1c154aecaf51a892b7d99d5e1dbeb86cc`  
		Last Modified: Sat, 28 Apr 2018 08:25:29 GMT  
		Size: 29.3 MB (29317351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5765ecd6b4e5dc4e9757a057fc4127cdeeec4e3e777b4dd0971392c06b373b`  
		Last Modified: Fri, 25 May 2018 09:06:10 GMT  
		Size: 4.4 KB (4429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db919f8ae8ffa4343de2c13a34f5e6bc57b7b4ae820d141c76627bea943cde66`  
		Last Modified: Fri, 25 May 2018 09:06:11 GMT  
		Size: 117.6 KB (117643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e543bc0bae0d2ab1b0edc8a3fd714099e23e7dae64d909c7363e276f5f3aac`  
		Last Modified: Fri, 25 May 2018 09:12:32 GMT  
		Size: 31.0 MB (31034874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b5d1420c5536397987ac94e3d81fc276cfea3e1f9e15ec7e911c05a3a495cd`  
		Last Modified: Fri, 25 May 2018 09:12:23 GMT  
		Size: 1.1 MB (1066230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d8af7ee99bb0ea87ccf8d0511071fe7582c26bffffc659769dedcce8ff4e03`  
		Last Modified: Fri, 25 May 2018 10:02:28 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04bf08e89b5c7143b00647d1594800c2f3a23af9a37e24d2fff0b26061e67fc2`  
		Last Modified: Fri, 25 May 2018 10:02:37 GMT  
		Size: 18.8 MB (18770865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722bfa7d1b601bc4b88ac5ebaaadebaf7c760bf284fe462891cf1b35d6757ad8`  
		Last Modified: Fri, 25 May 2018 10:02:57 GMT  
		Size: 137.5 MB (137497194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e23748d5abdbd1fdbdd5b0eae364965a2e030b3096e9e62b13cb665fbaa327`  
		Last Modified: Fri, 25 May 2018 10:02:31 GMT  
		Size: 15.0 MB (14974423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f4d9953061725a589a8a5ce680d88fd7c80a7286ebc711e9c674a2b34c4749d`  
		Last Modified: Fri, 25 May 2018 10:02:28 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; s390x

```console
$ docker pull ghost@sha256:9090ca9f4a3cdb80b60558afb1403a51ce9d0f41c40dc783786795ccbff5f0ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.0 MB (234950357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74f229a2c78ff89541b0ca9fda5dbc06cf0f765c8415b2838e895257e877f522`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:53 GMT
ADD file:7c773d50957d6184975f5b22ef61757cd979893af5c77cdfef46dd28d8fc0296 in / 
# Sat, 28 Apr 2018 11:42:55 GMT
CMD ["bash"]
# Fri, 25 May 2018 12:27:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 12:27:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 12:58:07 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 12:58:26 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 12:58:27 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 12:58:29 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 12:58:29 GMT
CMD ["node"]
# Fri, 25 May 2018 13:36:00 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 13:36:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 13:36:02 GMT
ENV NODE_ENV=production
# Fri, 25 May 2018 13:36:02 GMT
ENV GHOST_CLI_VERSION=1.7.3
# Fri, 25 May 2018 13:36:23 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 25 May 2018 13:36:24 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 25 May 2018 13:36:24 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 25 May 2018 13:36:24 GMT
ENV GHOST_VERSION=1.23.0
# Fri, 25 May 2018 13:36:53 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 25 May 2018 13:36:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 25 May 2018 13:38:22 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 25 May 2018 13:38:23 GMT
WORKDIR /var/lib/ghost
# Fri, 25 May 2018 13:38:23 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 25 May 2018 13:38:23 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Fri, 25 May 2018 13:38:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 13:38:24 GMT
EXPOSE 2368/tcp
# Fri, 25 May 2018 13:38:24 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:f4d03f2765a5584a0dc02af25ffd7c98d6e129d072a1fc30380b106603442102`  
		Last Modified: Sat, 28 Apr 2018 11:48:28 GMT  
		Size: 30.3 MB (30308304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7427347e59bdcdb1f8adade9851d0a83b74c04c862cbc6483cb7f5d364a6694`  
		Last Modified: Fri, 25 May 2018 13:12:16 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f987b1e452122d69591a7ad4e1777f6398f71f6898abb7a0af5d8f834e99ce`  
		Last Modified: Fri, 25 May 2018 13:12:17 GMT  
		Size: 117.6 KB (117611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5499a8ebec846942baf6ca7922f6acbf1075c2956ab953243e2e96ed9d25293`  
		Last Modified: Fri, 25 May 2018 13:17:13 GMT  
		Size: 31.7 MB (31679303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89722c717ab8a51082112a4428a1e0d636445024eb95e2308476fa1f8902e5ac`  
		Last Modified: Fri, 25 May 2018 13:17:07 GMT  
		Size: 1.1 MB (1066213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcab469af6630994b3decf13743c14697a3b3bd2209c311ef3113944d5916fb8`  
		Last Modified: Fri, 25 May 2018 13:40:38 GMT  
		Size: 486.8 KB (486826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ba0415944d9485995fe11c7f4bc2b6d213da596819c91df3ccbe07143cbb99`  
		Last Modified: Fri, 25 May 2018 13:40:42 GMT  
		Size: 18.8 MB (18771013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aa41bb07b40618347e59fb18e8f7d493c3b743b242051f913d28e6fd33f9e23`  
		Last Modified: Fri, 25 May 2018 13:41:17 GMT  
		Size: 137.5 MB (137505296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7574233e0db6a43abf238353b7690d0adcda1c5a93cc268566369526327367a6`  
		Last Modified: Fri, 25 May 2018 13:40:45 GMT  
		Size: 15.0 MB (15010812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b704ca79ced391be7379b1d817f54152ddabb256ba68718920d62de8d2eece`  
		Last Modified: Fri, 25 May 2018 13:40:37 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

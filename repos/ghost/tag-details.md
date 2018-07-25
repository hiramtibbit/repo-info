<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:0`](#ghost0)
-	[`ghost:0.11`](#ghost011)
-	[`ghost:0.11.13`](#ghost01113)
-	[`ghost:0.11.13-alpine`](#ghost01113-alpine)
-	[`ghost:0.11-alpine`](#ghost011-alpine)
-	[`ghost:0-alpine`](#ghost0-alpine)
-	[`ghost:1`](#ghost1)
-	[`ghost:1.25`](#ghost125)
-	[`ghost:1.25.0`](#ghost1250)
-	[`ghost:1.25.0-alpine`](#ghost1250-alpine)
-	[`ghost:1.25-alpine`](#ghost125-alpine)
-	[`ghost:1-alpine`](#ghost1-alpine)
-	[`ghost:alpine`](#ghostalpine)
-	[`ghost:latest`](#ghostlatest)

## `ghost:0`

```console
$ docker pull ghost@sha256:74961f6f3bc505c4fde0d8589049e45c94de6f77e70ce1fc6fb80283bcdccdec
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
$ docker pull ghost@sha256:6bb0be157164b537583b7177cfea2251fc21820ecad58090d0362a158b433e5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.4 MB (89446849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8970bea3b793d4bae8e187e31233e6964186b50a3ac8e7db006cdad5dd4f96de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 05:36:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 17 Jul 2018 05:36:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 17 Jul 2018 05:40:56 GMT
ENV NODE_VERSION=6.14.3
# Tue, 17 Jul 2018 05:41:54 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 17 Jul 2018 05:41:54 GMT
ENV YARN_VERSION=1.6.0
# Tue, 17 Jul 2018 05:41:58 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 17 Jul 2018 05:41:59 GMT
CMD ["node"]
# Tue, 17 Jul 2018 16:02:16 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 17 Jul 2018 16:02:17 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 16:02:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 17 Jul 2018 16:02:20 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 17 Jul 2018 16:02:21 GMT
WORKDIR /usr/src/ghost
# Tue, 17 Jul 2018 16:02:21 GMT
ENV GHOST_VERSION=0.11.13
# Tue, 17 Jul 2018 16:04:22 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 17 Jul 2018 16:04:23 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 17 Jul 2018 16:04:24 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 17 Jul 2018 16:04:24 GMT
VOLUME [/var/lib/ghost]
# Tue, 17 Jul 2018 16:04:25 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Tue, 17 Jul 2018 16:04:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 16:04:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 16:04:27 GMT
EXPOSE 2368/tcp
# Tue, 17 Jul 2018 16:04:27 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196b8e3c919d5639193ba6c6e54774528942041bbc37606631a2250502985c3c`  
		Last Modified: Tue, 17 Jul 2018 05:48:26 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d083412657baa2dafba8d093034ef26f9ed2c90fb6ed95f76bb55aff03ed429`  
		Last Modified: Tue, 17 Jul 2018 05:48:26 GMT  
		Size: 123.6 KB (123616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd6d1d451f8006eaf0e93fb7d439198d2a59f3291a5650a5da2f6ad8287cf09`  
		Last Modified: Tue, 17 Jul 2018 05:58:56 GMT  
		Size: 31.3 MB (31277747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a586eaf2d374b517babe280b52cd89e6745d65c2f2c3d38a020a20048a8857cf`  
		Last Modified: Tue, 17 Jul 2018 05:58:44 GMT  
		Size: 1.1 MB (1072179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c9b3eb9232578e3403fb511dc66a52b596489354edad04b99edb95c7531b36b`  
		Last Modified: Tue, 17 Jul 2018 16:06:56 GMT  
		Size: 4.5 KB (4452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899200f19a0a417ad1c58018d12b3052c82c9cd3e6ec06a1d47da1be707cd228`  
		Last Modified: Tue, 17 Jul 2018 16:06:56 GMT  
		Size: 500.7 KB (500663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2e22d47ecd94091d3bf9f12bc0c8d8f238809a4e402d58b3ef9ced19ff26dc`  
		Last Modified: Tue, 17 Jul 2018 16:06:56 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fadaf46e4474b82c4053152150c7900120fb488b6f99f48510a5fe8115c21c9`  
		Last Modified: Tue, 17 Jul 2018 16:07:04 GMT  
		Size: 26.3 MB (26342529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:444d011e4033d5aae78a0324477e3a79269cbc3b1a62398ccc739576196cd7b4`  
		Last Modified: Tue, 17 Jul 2018 16:06:53 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfd7e7ed71b92f3c4916a389350e9ee81f5dc501ee5a72eb88b0bafd63a15dc`  
		Last Modified: Tue, 17 Jul 2018 16:06:53 GMT  
		Size: 623.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48bd0f1cf4e41934573fa9fb9dd08e621bc91cb1454d81b1d398653d68304a94`  
		Last Modified: Tue, 17 Jul 2018 16:06:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:0d0995e3d9c29860fdf93517a66c08f6a8ac4ddc1f7433addd9d1923eea0d2a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.4 MB (92411760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42e73f1409a7095aba482b27c94a51d36f8033a21747374c217b491b2fdbe840`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Fri, 25 May 2018 09:21:00 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 13 Jun 2018 02:02:41 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Wed, 13 Jun 2018 02:34:51 GMT
ENV NODE_VERSION=6.14.3
# Wed, 13 Jun 2018 02:35:44 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 13 Jun 2018 02:35:45 GMT
ENV YARN_VERSION=1.6.0
# Wed, 13 Jun 2018 02:35:49 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 13 Jun 2018 02:35:50 GMT
CMD ["node"]
# Wed, 13 Jun 2018 03:47:02 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 13 Jun 2018 03:47:03 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Jun 2018 03:47:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 13 Jun 2018 03:47:07 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 13 Jun 2018 03:47:08 GMT
WORKDIR /usr/src/ghost
# Wed, 13 Jun 2018 03:47:09 GMT
ENV GHOST_VERSION=0.11.13
# Wed, 13 Jun 2018 03:52:07 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 13 Jun 2018 03:52:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 13 Jun 2018 03:52:11 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 13 Jun 2018 03:52:12 GMT
VOLUME [/var/lib/ghost]
# Wed, 13 Jun 2018 03:52:13 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 13 Jun 2018 03:52:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Jun 2018 03:52:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Jun 2018 03:52:16 GMT
EXPOSE 2368/tcp
# Wed, 13 Jun 2018 03:52:17 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:6d46b8f3eebfe36e412a394de4bf8a598e22d1fe11cd6b35f34e770473c170ea`  
		Last Modified: Mon, 30 Apr 2018 23:43:19 GMT  
		Size: 27.5 MB (27494590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c76a9bab9b20d665390417795a84329b64ba1435b8c40e97fad0777b8bcf66`  
		Last Modified: Fri, 25 May 2018 11:08:28 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a51aaacefdcf11ca4da05d1de7c5fdb717320bda01af1c2d86bb0a20dc522b`  
		Last Modified: Wed, 13 Jun 2018 03:12:57 GMT  
		Size: 123.6 KB (123622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b752222bfc78f7714ce47dbf351786254bcb2cd89c7aaa530916d6651d5b5cbd`  
		Last Modified: Wed, 13 Jun 2018 03:19:43 GMT  
		Size: 30.8 MB (30794615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493a80aaa34edafa01be3d55a2be09ca06894917177b9d4bf3892c462e8d40c6`  
		Last Modified: Wed, 13 Jun 2018 03:19:32 GMT  
		Size: 1.1 MB (1072189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57786cb8226e7e2fbd4b40f317e8eda2e4a7bf7c983d6ecb7b56ace7de29d527`  
		Last Modified: Wed, 13 Jun 2018 03:53:50 GMT  
		Size: 4.5 KB (4482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464643157163253ae928b86c73e134dbe4e770d9b02fe508353e0f9ac16ff04b`  
		Last Modified: Wed, 13 Jun 2018 03:53:50 GMT  
		Size: 468.7 KB (468702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9987966d4401ce72a655b9625647ae5fa1ca0317a70b24629652bb4f838d92`  
		Last Modified: Wed, 13 Jun 2018 03:53:48 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459196a157422c1154f0985c9771181716fd21697dd16cc48543622a18037898`  
		Last Modified: Wed, 13 Jun 2018 03:54:03 GMT  
		Size: 32.4 MB (32448035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f340235d0a32431fd4dc53def74ba95fc8d629069b278eda8e5369982d3dddc`  
		Last Modified: Wed, 13 Jun 2018 03:53:47 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5781d2bf7a4ae25a24de2d40dd6ae69f6bbc5caadd4c356399cb7d8fee3bced`  
		Last Modified: Wed, 13 Jun 2018 03:53:47 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac1bf60c27bab167ac9458bcb227f5ca071dd61be4b1bb5eca5e305f6575205f`  
		Last Modified: Wed, 13 Jun 2018 03:53:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; 386

```console
$ docker pull ghost@sha256:b2143e862e237eda3f7175e19cd716ea927372f176877bdb96f2342b6301c7ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.6 MB (97627098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bb2c2b07f2b953d9726b1f80908bf7cba422cc8ee1c10a22e415ca0d11adb1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 17 Jul 2018 10:42:32 GMT
ADD file:9f28594bd37e3d6105c4b8e438188e5f1c270ba5fa552b2b4969a43a0a84730d in / 
# Tue, 17 Jul 2018 10:42:35 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 17:06:46 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 17 Jul 2018 17:06:48 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 17 Jul 2018 17:12:23 GMT
ENV NODE_VERSION=6.14.3
# Tue, 17 Jul 2018 17:13:34 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 17 Jul 2018 17:13:35 GMT
ENV YARN_VERSION=1.6.0
# Tue, 17 Jul 2018 17:13:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 17 Jul 2018 17:13:48 GMT
CMD ["node"]
# Tue, 17 Jul 2018 23:05:22 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 17 Jul 2018 23:05:22 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 23:05:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 17 Jul 2018 23:05:26 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 17 Jul 2018 23:05:26 GMT
WORKDIR /usr/src/ghost
# Tue, 17 Jul 2018 23:05:27 GMT
ENV GHOST_VERSION=0.11.13
# Tue, 17 Jul 2018 23:08:39 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 17 Jul 2018 23:08:40 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 17 Jul 2018 23:08:41 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 17 Jul 2018 23:08:42 GMT
VOLUME [/var/lib/ghost]
# Tue, 17 Jul 2018 23:08:42 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Tue, 17 Jul 2018 23:08:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 23:08:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 23:08:43 GMT
EXPOSE 2368/tcp
# Tue, 17 Jul 2018 23:08:43 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:08ccc2995d065af2cd0d4ce4d10d2409e68dcfd7b947820dea2d5371344277e3`  
		Last Modified: Tue, 17 Jul 2018 10:58:32 GMT  
		Size: 30.3 MB (30270010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf211ca9aa00429cc174768096f989e0f7133b244b6f9c1724dda9e629c97d8`  
		Last Modified: Tue, 17 Jul 2018 17:21:58 GMT  
		Size: 4.4 KB (4386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49bad648b8e8b2d7293388b8512dcbffffb4afedd7ab24d439b7161e4ac57c61`  
		Last Modified: Tue, 17 Jul 2018 17:21:58 GMT  
		Size: 123.6 KB (123619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ddbb0ca8811d1604b76ff8b9c22891d66d7611a19ef3d15fe46a290f220a3d`  
		Last Modified: Tue, 17 Jul 2018 17:32:01 GMT  
		Size: 33.1 MB (33148582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5b61abdc10f68fd8e220f438db85a69d7c66b21b42180fa82e8198cb542802`  
		Last Modified: Tue, 17 Jul 2018 17:31:46 GMT  
		Size: 1.1 MB (1072181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:497d53aff14e194f01db35244f1694bea9d227032561495626c06f8f7ff2ec64`  
		Last Modified: Tue, 17 Jul 2018 23:11:50 GMT  
		Size: 4.4 KB (4440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd92d4bf1bdb0c80db599cf531cd97e5f6346c38b32018a05ae11d654eb9b6e5`  
		Last Modified: Tue, 17 Jul 2018 23:11:48 GMT  
		Size: 480.6 KB (480562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e45d3e8e8a45b6bac70679ccdcb4debe516f9675a8f37029571a05ce57820897`  
		Last Modified: Tue, 17 Jul 2018 23:11:48 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7d99b48b22c9e42b090838196d62ddbd3090bb5089732cc73ea909e3276240`  
		Last Modified: Tue, 17 Jul 2018 23:12:08 GMT  
		Size: 32.5 MB (32522220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24cf05f6bb26fc8e551bfe7966b1ae2e12695be0dfd035d10187f937a8752c8`  
		Last Modified: Tue, 17 Jul 2018 23:11:45 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893276f2861b8ef92d50a846745490cbd6b6ecec18d9295c8855dd781b81c7bb`  
		Last Modified: Tue, 17 Jul 2018 23:11:45 GMT  
		Size: 623.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3200ef7d4246f84695cf94b4f4c86d7838d6c6c241f9656f671ef5d7dc50a0c3`  
		Last Modified: Tue, 17 Jul 2018 23:11:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; ppc64le

```console
$ docker pull ghost@sha256:7e1bd3720462967aaad82320d1eb39d6fb7805e1c813f70e9926239ac58e6ee5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.9 MB (94946856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a842a9df78d9f0c9f250032a2cb1fd6d7d23cc62d619f932030e06c371e7447b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 08:18:08 GMT
ADD file:cc51ef60d7cb3b70c82127b8721de1b99378a9d4fc246dffa2ef5ffa2d9ab805 in / 
# Sat, 28 Apr 2018 08:18:09 GMT
CMD ["bash"]
# Fri, 25 May 2018 08:32:49 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 13 Jun 2018 01:46:10 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Wed, 13 Jun 2018 02:02:11 GMT
ENV NODE_VERSION=6.14.3
# Wed, 13 Jun 2018 02:03:42 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 13 Jun 2018 02:03:44 GMT
ENV YARN_VERSION=1.6.0
# Wed, 13 Jun 2018 02:03:48 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 13 Jun 2018 02:03:49 GMT
CMD ["node"]
# Wed, 13 Jun 2018 02:54:18 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 13 Jun 2018 02:54:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Jun 2018 02:54:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 13 Jun 2018 02:54:48 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 13 Jun 2018 02:54:52 GMT
WORKDIR /usr/src/ghost
# Wed, 13 Jun 2018 02:54:52 GMT
ENV GHOST_VERSION=0.11.13
# Wed, 13 Jun 2018 02:58:54 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 13 Jun 2018 02:58:57 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 13 Jun 2018 02:58:58 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 13 Jun 2018 02:58:59 GMT
VOLUME [/var/lib/ghost]
# Wed, 13 Jun 2018 02:59:00 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 13 Jun 2018 02:59:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Jun 2018 02:59:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Jun 2018 02:59:03 GMT
EXPOSE 2368/tcp
# Wed, 13 Jun 2018 02:59:03 GMT
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
	-	`sha256:1973a1513bf3a671db887e6651a8f9b496ebfdf01edf95ef828f2e8e6d771362`  
		Last Modified: Wed, 13 Jun 2018 02:19:33 GMT  
		Size: 123.6 KB (123648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3afe74f13dbd50d27f599fccbce52aaca8e36b68a3cfcbae9caa576de113245`  
		Last Modified: Wed, 13 Jun 2018 02:25:45 GMT  
		Size: 31.0 MB (31034141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc42aab5d637faab11d0ad79e8802ceb68bc797e6cb32c113ffbf342d0b23777`  
		Last Modified: Wed, 13 Jun 2018 02:25:36 GMT  
		Size: 1.1 MB (1072202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7af7ec1568386d0b3555ab64c444db566786a7b09daa21eb2f8abf149b989b57`  
		Last Modified: Wed, 13 Jun 2018 03:00:27 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f1f897678f36377f4b5ab1ab884a32f60c5aef1d79ba3a49b19d300cc35dd7`  
		Last Modified: Wed, 13 Jun 2018 03:00:27 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da876af575ad74d7eaca5850c79c83aebadfa14fcc0da233cc818ae3771de91`  
		Last Modified: Wed, 13 Jun 2018 03:00:25 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f64c7f6c38c79301e1bef6fd3c0ee98c6da761065814364380e8911c2f9f41b`  
		Last Modified: Wed, 13 Jun 2018 03:00:38 GMT  
		Size: 32.9 MB (32919577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc45ff770437ac3cb90e6dac94b15b25157a2701359e98b58c3cc2b7fd5f3dc3`  
		Last Modified: Wed, 13 Jun 2018 03:00:25 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4c4a270b6923b0f41cf7178469bad29955fe8374ce68c1f61aa1e236fb6399`  
		Last Modified: Wed, 13 Jun 2018 03:00:25 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b293050d309af6a3e424dd06049f17b4a89c27fa8aba8225fa207bc29d88ec1`  
		Last Modified: Wed, 13 Jun 2018 03:00:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; s390x

```console
$ docker pull ghost@sha256:3aafbea245e9e70f11ab584100c16a5fcf78dc5bc5034d257f45e1c30608c135
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96635712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2661ffce9fd1379bc9f3426d8721bfde0e344cbce4a5783e1c59dfedb9c50f9b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:53 GMT
ADD file:7c773d50957d6184975f5b22ef61757cd979893af5c77cdfef46dd28d8fc0296 in / 
# Sat, 28 Apr 2018 11:42:55 GMT
CMD ["bash"]
# Fri, 25 May 2018 12:27:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 13 Jun 2018 02:03:54 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Wed, 13 Jun 2018 02:33:23 GMT
ENV NODE_VERSION=6.14.3
# Wed, 13 Jun 2018 02:33:42 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 13 Jun 2018 02:33:42 GMT
ENV YARN_VERSION=1.6.0
# Wed, 13 Jun 2018 02:33:44 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 13 Jun 2018 02:33:44 GMT
CMD ["node"]
# Wed, 13 Jun 2018 03:11:43 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 13 Jun 2018 03:11:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Jun 2018 03:11:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 13 Jun 2018 03:11:46 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 13 Jun 2018 03:11:46 GMT
WORKDIR /usr/src/ghost
# Wed, 13 Jun 2018 03:11:46 GMT
ENV GHOST_VERSION=0.11.13
# Wed, 13 Jun 2018 03:13:20 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 13 Jun 2018 03:13:20 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 13 Jun 2018 03:13:21 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 13 Jun 2018 03:13:22 GMT
VOLUME [/var/lib/ghost]
# Wed, 13 Jun 2018 03:13:22 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 13 Jun 2018 03:13:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Jun 2018 03:13:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Jun 2018 03:13:23 GMT
EXPOSE 2368/tcp
# Wed, 13 Jun 2018 03:13:23 GMT
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
	-	`sha256:0daec6f66e90f908af77b6f6e927f4fdfb975d7db5beeb302e4f74519adee4ca`  
		Last Modified: Wed, 13 Jun 2018 02:47:46 GMT  
		Size: 123.6 KB (123617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe51384b9a5714d988fd9df12cd9f6ee0196f58e9cc535eb10f3b0ad24cbbb31`  
		Last Modified: Wed, 13 Jun 2018 02:50:47 GMT  
		Size: 31.7 MB (31678621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d80cd1964754e4f7c84469379d839fcac8d0f63921d3f52453af1611c26eac3`  
		Last Modified: Wed, 13 Jun 2018 02:50:41 GMT  
		Size: 1.1 MB (1072184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b41a8fbce4879d972568ee299058671f7d03061aba9f449ad089ed32c4bf68`  
		Last Modified: Wed, 13 Jun 2018 03:14:20 GMT  
		Size: 4.5 KB (4461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bdc660b695aca424eec5c00d33413f5bc26863430ae43b733e1db84bbea0ec`  
		Last Modified: Wed, 13 Jun 2018 03:14:21 GMT  
		Size: 486.8 KB (486826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcde67495ae7344e2a816baaff08f89f135c396e0e072d27235cc2835b2dace0`  
		Last Modified: Wed, 13 Jun 2018 03:14:19 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5157779249861343c9dbcd368eb0ea25709d41c100de166080f26e4c0813b29d`  
		Last Modified: Wed, 13 Jun 2018 03:14:30 GMT  
		Size: 33.0 MB (32956182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa8e1cbd8f2ea83c81e1ee23c2ab0966463026900365ee0140ed7a3522fed02`  
		Last Modified: Wed, 13 Jun 2018 03:14:19 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47323e8d3920810f813be3df66934af0918c0329f4e550a62e62c05775c559bf`  
		Last Modified: Wed, 13 Jun 2018 03:14:19 GMT  
		Size: 623.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ad27682db627967cd9e8e03f6d727b041471537d31d3ff538b36d3b3321800`  
		Last Modified: Wed, 13 Jun 2018 03:14:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11`

```console
$ docker pull ghost@sha256:74961f6f3bc505c4fde0d8589049e45c94de6f77e70ce1fc6fb80283bcdccdec
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
$ docker pull ghost@sha256:6bb0be157164b537583b7177cfea2251fc21820ecad58090d0362a158b433e5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.4 MB (89446849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8970bea3b793d4bae8e187e31233e6964186b50a3ac8e7db006cdad5dd4f96de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 05:36:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 17 Jul 2018 05:36:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 17 Jul 2018 05:40:56 GMT
ENV NODE_VERSION=6.14.3
# Tue, 17 Jul 2018 05:41:54 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 17 Jul 2018 05:41:54 GMT
ENV YARN_VERSION=1.6.0
# Tue, 17 Jul 2018 05:41:58 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 17 Jul 2018 05:41:59 GMT
CMD ["node"]
# Tue, 17 Jul 2018 16:02:16 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 17 Jul 2018 16:02:17 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 16:02:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 17 Jul 2018 16:02:20 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 17 Jul 2018 16:02:21 GMT
WORKDIR /usr/src/ghost
# Tue, 17 Jul 2018 16:02:21 GMT
ENV GHOST_VERSION=0.11.13
# Tue, 17 Jul 2018 16:04:22 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 17 Jul 2018 16:04:23 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 17 Jul 2018 16:04:24 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 17 Jul 2018 16:04:24 GMT
VOLUME [/var/lib/ghost]
# Tue, 17 Jul 2018 16:04:25 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Tue, 17 Jul 2018 16:04:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 16:04:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 16:04:27 GMT
EXPOSE 2368/tcp
# Tue, 17 Jul 2018 16:04:27 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196b8e3c919d5639193ba6c6e54774528942041bbc37606631a2250502985c3c`  
		Last Modified: Tue, 17 Jul 2018 05:48:26 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d083412657baa2dafba8d093034ef26f9ed2c90fb6ed95f76bb55aff03ed429`  
		Last Modified: Tue, 17 Jul 2018 05:48:26 GMT  
		Size: 123.6 KB (123616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd6d1d451f8006eaf0e93fb7d439198d2a59f3291a5650a5da2f6ad8287cf09`  
		Last Modified: Tue, 17 Jul 2018 05:58:56 GMT  
		Size: 31.3 MB (31277747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a586eaf2d374b517babe280b52cd89e6745d65c2f2c3d38a020a20048a8857cf`  
		Last Modified: Tue, 17 Jul 2018 05:58:44 GMT  
		Size: 1.1 MB (1072179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c9b3eb9232578e3403fb511dc66a52b596489354edad04b99edb95c7531b36b`  
		Last Modified: Tue, 17 Jul 2018 16:06:56 GMT  
		Size: 4.5 KB (4452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899200f19a0a417ad1c58018d12b3052c82c9cd3e6ec06a1d47da1be707cd228`  
		Last Modified: Tue, 17 Jul 2018 16:06:56 GMT  
		Size: 500.7 KB (500663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2e22d47ecd94091d3bf9f12bc0c8d8f238809a4e402d58b3ef9ced19ff26dc`  
		Last Modified: Tue, 17 Jul 2018 16:06:56 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fadaf46e4474b82c4053152150c7900120fb488b6f99f48510a5fe8115c21c9`  
		Last Modified: Tue, 17 Jul 2018 16:07:04 GMT  
		Size: 26.3 MB (26342529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:444d011e4033d5aae78a0324477e3a79269cbc3b1a62398ccc739576196cd7b4`  
		Last Modified: Tue, 17 Jul 2018 16:06:53 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfd7e7ed71b92f3c4916a389350e9ee81f5dc501ee5a72eb88b0bafd63a15dc`  
		Last Modified: Tue, 17 Jul 2018 16:06:53 GMT  
		Size: 623.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48bd0f1cf4e41934573fa9fb9dd08e621bc91cb1454d81b1d398653d68304a94`  
		Last Modified: Tue, 17 Jul 2018 16:06:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:0d0995e3d9c29860fdf93517a66c08f6a8ac4ddc1f7433addd9d1923eea0d2a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.4 MB (92411760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42e73f1409a7095aba482b27c94a51d36f8033a21747374c217b491b2fdbe840`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Fri, 25 May 2018 09:21:00 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 13 Jun 2018 02:02:41 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Wed, 13 Jun 2018 02:34:51 GMT
ENV NODE_VERSION=6.14.3
# Wed, 13 Jun 2018 02:35:44 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 13 Jun 2018 02:35:45 GMT
ENV YARN_VERSION=1.6.0
# Wed, 13 Jun 2018 02:35:49 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 13 Jun 2018 02:35:50 GMT
CMD ["node"]
# Wed, 13 Jun 2018 03:47:02 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 13 Jun 2018 03:47:03 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Jun 2018 03:47:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 13 Jun 2018 03:47:07 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 13 Jun 2018 03:47:08 GMT
WORKDIR /usr/src/ghost
# Wed, 13 Jun 2018 03:47:09 GMT
ENV GHOST_VERSION=0.11.13
# Wed, 13 Jun 2018 03:52:07 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 13 Jun 2018 03:52:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 13 Jun 2018 03:52:11 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 13 Jun 2018 03:52:12 GMT
VOLUME [/var/lib/ghost]
# Wed, 13 Jun 2018 03:52:13 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 13 Jun 2018 03:52:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Jun 2018 03:52:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Jun 2018 03:52:16 GMT
EXPOSE 2368/tcp
# Wed, 13 Jun 2018 03:52:17 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:6d46b8f3eebfe36e412a394de4bf8a598e22d1fe11cd6b35f34e770473c170ea`  
		Last Modified: Mon, 30 Apr 2018 23:43:19 GMT  
		Size: 27.5 MB (27494590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c76a9bab9b20d665390417795a84329b64ba1435b8c40e97fad0777b8bcf66`  
		Last Modified: Fri, 25 May 2018 11:08:28 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a51aaacefdcf11ca4da05d1de7c5fdb717320bda01af1c2d86bb0a20dc522b`  
		Last Modified: Wed, 13 Jun 2018 03:12:57 GMT  
		Size: 123.6 KB (123622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b752222bfc78f7714ce47dbf351786254bcb2cd89c7aaa530916d6651d5b5cbd`  
		Last Modified: Wed, 13 Jun 2018 03:19:43 GMT  
		Size: 30.8 MB (30794615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493a80aaa34edafa01be3d55a2be09ca06894917177b9d4bf3892c462e8d40c6`  
		Last Modified: Wed, 13 Jun 2018 03:19:32 GMT  
		Size: 1.1 MB (1072189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57786cb8226e7e2fbd4b40f317e8eda2e4a7bf7c983d6ecb7b56ace7de29d527`  
		Last Modified: Wed, 13 Jun 2018 03:53:50 GMT  
		Size: 4.5 KB (4482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464643157163253ae928b86c73e134dbe4e770d9b02fe508353e0f9ac16ff04b`  
		Last Modified: Wed, 13 Jun 2018 03:53:50 GMT  
		Size: 468.7 KB (468702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9987966d4401ce72a655b9625647ae5fa1ca0317a70b24629652bb4f838d92`  
		Last Modified: Wed, 13 Jun 2018 03:53:48 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459196a157422c1154f0985c9771181716fd21697dd16cc48543622a18037898`  
		Last Modified: Wed, 13 Jun 2018 03:54:03 GMT  
		Size: 32.4 MB (32448035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f340235d0a32431fd4dc53def74ba95fc8d629069b278eda8e5369982d3dddc`  
		Last Modified: Wed, 13 Jun 2018 03:53:47 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5781d2bf7a4ae25a24de2d40dd6ae69f6bbc5caadd4c356399cb7d8fee3bced`  
		Last Modified: Wed, 13 Jun 2018 03:53:47 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac1bf60c27bab167ac9458bcb227f5ca071dd61be4b1bb5eca5e305f6575205f`  
		Last Modified: Wed, 13 Jun 2018 03:53:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; 386

```console
$ docker pull ghost@sha256:b2143e862e237eda3f7175e19cd716ea927372f176877bdb96f2342b6301c7ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.6 MB (97627098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bb2c2b07f2b953d9726b1f80908bf7cba422cc8ee1c10a22e415ca0d11adb1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 17 Jul 2018 10:42:32 GMT
ADD file:9f28594bd37e3d6105c4b8e438188e5f1c270ba5fa552b2b4969a43a0a84730d in / 
# Tue, 17 Jul 2018 10:42:35 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 17:06:46 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 17 Jul 2018 17:06:48 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 17 Jul 2018 17:12:23 GMT
ENV NODE_VERSION=6.14.3
# Tue, 17 Jul 2018 17:13:34 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 17 Jul 2018 17:13:35 GMT
ENV YARN_VERSION=1.6.0
# Tue, 17 Jul 2018 17:13:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 17 Jul 2018 17:13:48 GMT
CMD ["node"]
# Tue, 17 Jul 2018 23:05:22 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 17 Jul 2018 23:05:22 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 23:05:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 17 Jul 2018 23:05:26 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 17 Jul 2018 23:05:26 GMT
WORKDIR /usr/src/ghost
# Tue, 17 Jul 2018 23:05:27 GMT
ENV GHOST_VERSION=0.11.13
# Tue, 17 Jul 2018 23:08:39 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 17 Jul 2018 23:08:40 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 17 Jul 2018 23:08:41 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 17 Jul 2018 23:08:42 GMT
VOLUME [/var/lib/ghost]
# Tue, 17 Jul 2018 23:08:42 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Tue, 17 Jul 2018 23:08:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 23:08:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 23:08:43 GMT
EXPOSE 2368/tcp
# Tue, 17 Jul 2018 23:08:43 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:08ccc2995d065af2cd0d4ce4d10d2409e68dcfd7b947820dea2d5371344277e3`  
		Last Modified: Tue, 17 Jul 2018 10:58:32 GMT  
		Size: 30.3 MB (30270010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf211ca9aa00429cc174768096f989e0f7133b244b6f9c1724dda9e629c97d8`  
		Last Modified: Tue, 17 Jul 2018 17:21:58 GMT  
		Size: 4.4 KB (4386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49bad648b8e8b2d7293388b8512dcbffffb4afedd7ab24d439b7161e4ac57c61`  
		Last Modified: Tue, 17 Jul 2018 17:21:58 GMT  
		Size: 123.6 KB (123619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ddbb0ca8811d1604b76ff8b9c22891d66d7611a19ef3d15fe46a290f220a3d`  
		Last Modified: Tue, 17 Jul 2018 17:32:01 GMT  
		Size: 33.1 MB (33148582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5b61abdc10f68fd8e220f438db85a69d7c66b21b42180fa82e8198cb542802`  
		Last Modified: Tue, 17 Jul 2018 17:31:46 GMT  
		Size: 1.1 MB (1072181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:497d53aff14e194f01db35244f1694bea9d227032561495626c06f8f7ff2ec64`  
		Last Modified: Tue, 17 Jul 2018 23:11:50 GMT  
		Size: 4.4 KB (4440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd92d4bf1bdb0c80db599cf531cd97e5f6346c38b32018a05ae11d654eb9b6e5`  
		Last Modified: Tue, 17 Jul 2018 23:11:48 GMT  
		Size: 480.6 KB (480562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e45d3e8e8a45b6bac70679ccdcb4debe516f9675a8f37029571a05ce57820897`  
		Last Modified: Tue, 17 Jul 2018 23:11:48 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7d99b48b22c9e42b090838196d62ddbd3090bb5089732cc73ea909e3276240`  
		Last Modified: Tue, 17 Jul 2018 23:12:08 GMT  
		Size: 32.5 MB (32522220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24cf05f6bb26fc8e551bfe7966b1ae2e12695be0dfd035d10187f937a8752c8`  
		Last Modified: Tue, 17 Jul 2018 23:11:45 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893276f2861b8ef92d50a846745490cbd6b6ecec18d9295c8855dd781b81c7bb`  
		Last Modified: Tue, 17 Jul 2018 23:11:45 GMT  
		Size: 623.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3200ef7d4246f84695cf94b4f4c86d7838d6c6c241f9656f671ef5d7dc50a0c3`  
		Last Modified: Tue, 17 Jul 2018 23:11:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; ppc64le

```console
$ docker pull ghost@sha256:7e1bd3720462967aaad82320d1eb39d6fb7805e1c813f70e9926239ac58e6ee5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.9 MB (94946856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a842a9df78d9f0c9f250032a2cb1fd6d7d23cc62d619f932030e06c371e7447b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 08:18:08 GMT
ADD file:cc51ef60d7cb3b70c82127b8721de1b99378a9d4fc246dffa2ef5ffa2d9ab805 in / 
# Sat, 28 Apr 2018 08:18:09 GMT
CMD ["bash"]
# Fri, 25 May 2018 08:32:49 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 13 Jun 2018 01:46:10 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Wed, 13 Jun 2018 02:02:11 GMT
ENV NODE_VERSION=6.14.3
# Wed, 13 Jun 2018 02:03:42 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 13 Jun 2018 02:03:44 GMT
ENV YARN_VERSION=1.6.0
# Wed, 13 Jun 2018 02:03:48 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 13 Jun 2018 02:03:49 GMT
CMD ["node"]
# Wed, 13 Jun 2018 02:54:18 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 13 Jun 2018 02:54:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Jun 2018 02:54:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 13 Jun 2018 02:54:48 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 13 Jun 2018 02:54:52 GMT
WORKDIR /usr/src/ghost
# Wed, 13 Jun 2018 02:54:52 GMT
ENV GHOST_VERSION=0.11.13
# Wed, 13 Jun 2018 02:58:54 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 13 Jun 2018 02:58:57 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 13 Jun 2018 02:58:58 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 13 Jun 2018 02:58:59 GMT
VOLUME [/var/lib/ghost]
# Wed, 13 Jun 2018 02:59:00 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 13 Jun 2018 02:59:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Jun 2018 02:59:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Jun 2018 02:59:03 GMT
EXPOSE 2368/tcp
# Wed, 13 Jun 2018 02:59:03 GMT
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
	-	`sha256:1973a1513bf3a671db887e6651a8f9b496ebfdf01edf95ef828f2e8e6d771362`  
		Last Modified: Wed, 13 Jun 2018 02:19:33 GMT  
		Size: 123.6 KB (123648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3afe74f13dbd50d27f599fccbce52aaca8e36b68a3cfcbae9caa576de113245`  
		Last Modified: Wed, 13 Jun 2018 02:25:45 GMT  
		Size: 31.0 MB (31034141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc42aab5d637faab11d0ad79e8802ceb68bc797e6cb32c113ffbf342d0b23777`  
		Last Modified: Wed, 13 Jun 2018 02:25:36 GMT  
		Size: 1.1 MB (1072202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7af7ec1568386d0b3555ab64c444db566786a7b09daa21eb2f8abf149b989b57`  
		Last Modified: Wed, 13 Jun 2018 03:00:27 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f1f897678f36377f4b5ab1ab884a32f60c5aef1d79ba3a49b19d300cc35dd7`  
		Last Modified: Wed, 13 Jun 2018 03:00:27 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da876af575ad74d7eaca5850c79c83aebadfa14fcc0da233cc818ae3771de91`  
		Last Modified: Wed, 13 Jun 2018 03:00:25 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f64c7f6c38c79301e1bef6fd3c0ee98c6da761065814364380e8911c2f9f41b`  
		Last Modified: Wed, 13 Jun 2018 03:00:38 GMT  
		Size: 32.9 MB (32919577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc45ff770437ac3cb90e6dac94b15b25157a2701359e98b58c3cc2b7fd5f3dc3`  
		Last Modified: Wed, 13 Jun 2018 03:00:25 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4c4a270b6923b0f41cf7178469bad29955fe8374ce68c1f61aa1e236fb6399`  
		Last Modified: Wed, 13 Jun 2018 03:00:25 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b293050d309af6a3e424dd06049f17b4a89c27fa8aba8225fa207bc29d88ec1`  
		Last Modified: Wed, 13 Jun 2018 03:00:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; s390x

```console
$ docker pull ghost@sha256:3aafbea245e9e70f11ab584100c16a5fcf78dc5bc5034d257f45e1c30608c135
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96635712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2661ffce9fd1379bc9f3426d8721bfde0e344cbce4a5783e1c59dfedb9c50f9b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:53 GMT
ADD file:7c773d50957d6184975f5b22ef61757cd979893af5c77cdfef46dd28d8fc0296 in / 
# Sat, 28 Apr 2018 11:42:55 GMT
CMD ["bash"]
# Fri, 25 May 2018 12:27:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 13 Jun 2018 02:03:54 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Wed, 13 Jun 2018 02:33:23 GMT
ENV NODE_VERSION=6.14.3
# Wed, 13 Jun 2018 02:33:42 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 13 Jun 2018 02:33:42 GMT
ENV YARN_VERSION=1.6.0
# Wed, 13 Jun 2018 02:33:44 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 13 Jun 2018 02:33:44 GMT
CMD ["node"]
# Wed, 13 Jun 2018 03:11:43 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 13 Jun 2018 03:11:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Jun 2018 03:11:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 13 Jun 2018 03:11:46 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 13 Jun 2018 03:11:46 GMT
WORKDIR /usr/src/ghost
# Wed, 13 Jun 2018 03:11:46 GMT
ENV GHOST_VERSION=0.11.13
# Wed, 13 Jun 2018 03:13:20 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 13 Jun 2018 03:13:20 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 13 Jun 2018 03:13:21 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 13 Jun 2018 03:13:22 GMT
VOLUME [/var/lib/ghost]
# Wed, 13 Jun 2018 03:13:22 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 13 Jun 2018 03:13:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Jun 2018 03:13:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Jun 2018 03:13:23 GMT
EXPOSE 2368/tcp
# Wed, 13 Jun 2018 03:13:23 GMT
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
	-	`sha256:0daec6f66e90f908af77b6f6e927f4fdfb975d7db5beeb302e4f74519adee4ca`  
		Last Modified: Wed, 13 Jun 2018 02:47:46 GMT  
		Size: 123.6 KB (123617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe51384b9a5714d988fd9df12cd9f6ee0196f58e9cc535eb10f3b0ad24cbbb31`  
		Last Modified: Wed, 13 Jun 2018 02:50:47 GMT  
		Size: 31.7 MB (31678621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d80cd1964754e4f7c84469379d839fcac8d0f63921d3f52453af1611c26eac3`  
		Last Modified: Wed, 13 Jun 2018 02:50:41 GMT  
		Size: 1.1 MB (1072184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b41a8fbce4879d972568ee299058671f7d03061aba9f449ad089ed32c4bf68`  
		Last Modified: Wed, 13 Jun 2018 03:14:20 GMT  
		Size: 4.5 KB (4461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bdc660b695aca424eec5c00d33413f5bc26863430ae43b733e1db84bbea0ec`  
		Last Modified: Wed, 13 Jun 2018 03:14:21 GMT  
		Size: 486.8 KB (486826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcde67495ae7344e2a816baaff08f89f135c396e0e072d27235cc2835b2dace0`  
		Last Modified: Wed, 13 Jun 2018 03:14:19 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5157779249861343c9dbcd368eb0ea25709d41c100de166080f26e4c0813b29d`  
		Last Modified: Wed, 13 Jun 2018 03:14:30 GMT  
		Size: 33.0 MB (32956182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa8e1cbd8f2ea83c81e1ee23c2ab0966463026900365ee0140ed7a3522fed02`  
		Last Modified: Wed, 13 Jun 2018 03:14:19 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47323e8d3920810f813be3df66934af0918c0329f4e550a62e62c05775c559bf`  
		Last Modified: Wed, 13 Jun 2018 03:14:19 GMT  
		Size: 623.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ad27682db627967cd9e8e03f6d727b041471537d31d3ff538b36d3b3321800`  
		Last Modified: Wed, 13 Jun 2018 03:14:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.13`

```console
$ docker pull ghost@sha256:74961f6f3bc505c4fde0d8589049e45c94de6f77e70ce1fc6fb80283bcdccdec
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
$ docker pull ghost@sha256:6bb0be157164b537583b7177cfea2251fc21820ecad58090d0362a158b433e5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.4 MB (89446849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8970bea3b793d4bae8e187e31233e6964186b50a3ac8e7db006cdad5dd4f96de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 05:36:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 17 Jul 2018 05:36:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 17 Jul 2018 05:40:56 GMT
ENV NODE_VERSION=6.14.3
# Tue, 17 Jul 2018 05:41:54 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 17 Jul 2018 05:41:54 GMT
ENV YARN_VERSION=1.6.0
# Tue, 17 Jul 2018 05:41:58 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 17 Jul 2018 05:41:59 GMT
CMD ["node"]
# Tue, 17 Jul 2018 16:02:16 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 17 Jul 2018 16:02:17 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 16:02:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 17 Jul 2018 16:02:20 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 17 Jul 2018 16:02:21 GMT
WORKDIR /usr/src/ghost
# Tue, 17 Jul 2018 16:02:21 GMT
ENV GHOST_VERSION=0.11.13
# Tue, 17 Jul 2018 16:04:22 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 17 Jul 2018 16:04:23 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 17 Jul 2018 16:04:24 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 17 Jul 2018 16:04:24 GMT
VOLUME [/var/lib/ghost]
# Tue, 17 Jul 2018 16:04:25 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Tue, 17 Jul 2018 16:04:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 16:04:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 16:04:27 GMT
EXPOSE 2368/tcp
# Tue, 17 Jul 2018 16:04:27 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196b8e3c919d5639193ba6c6e54774528942041bbc37606631a2250502985c3c`  
		Last Modified: Tue, 17 Jul 2018 05:48:26 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d083412657baa2dafba8d093034ef26f9ed2c90fb6ed95f76bb55aff03ed429`  
		Last Modified: Tue, 17 Jul 2018 05:48:26 GMT  
		Size: 123.6 KB (123616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd6d1d451f8006eaf0e93fb7d439198d2a59f3291a5650a5da2f6ad8287cf09`  
		Last Modified: Tue, 17 Jul 2018 05:58:56 GMT  
		Size: 31.3 MB (31277747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a586eaf2d374b517babe280b52cd89e6745d65c2f2c3d38a020a20048a8857cf`  
		Last Modified: Tue, 17 Jul 2018 05:58:44 GMT  
		Size: 1.1 MB (1072179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c9b3eb9232578e3403fb511dc66a52b596489354edad04b99edb95c7531b36b`  
		Last Modified: Tue, 17 Jul 2018 16:06:56 GMT  
		Size: 4.5 KB (4452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899200f19a0a417ad1c58018d12b3052c82c9cd3e6ec06a1d47da1be707cd228`  
		Last Modified: Tue, 17 Jul 2018 16:06:56 GMT  
		Size: 500.7 KB (500663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2e22d47ecd94091d3bf9f12bc0c8d8f238809a4e402d58b3ef9ced19ff26dc`  
		Last Modified: Tue, 17 Jul 2018 16:06:56 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fadaf46e4474b82c4053152150c7900120fb488b6f99f48510a5fe8115c21c9`  
		Last Modified: Tue, 17 Jul 2018 16:07:04 GMT  
		Size: 26.3 MB (26342529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:444d011e4033d5aae78a0324477e3a79269cbc3b1a62398ccc739576196cd7b4`  
		Last Modified: Tue, 17 Jul 2018 16:06:53 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfd7e7ed71b92f3c4916a389350e9ee81f5dc501ee5a72eb88b0bafd63a15dc`  
		Last Modified: Tue, 17 Jul 2018 16:06:53 GMT  
		Size: 623.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48bd0f1cf4e41934573fa9fb9dd08e621bc91cb1454d81b1d398653d68304a94`  
		Last Modified: Tue, 17 Jul 2018 16:06:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.13` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:0d0995e3d9c29860fdf93517a66c08f6a8ac4ddc1f7433addd9d1923eea0d2a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.4 MB (92411760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42e73f1409a7095aba482b27c94a51d36f8033a21747374c217b491b2fdbe840`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Fri, 25 May 2018 09:21:00 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 13 Jun 2018 02:02:41 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Wed, 13 Jun 2018 02:34:51 GMT
ENV NODE_VERSION=6.14.3
# Wed, 13 Jun 2018 02:35:44 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 13 Jun 2018 02:35:45 GMT
ENV YARN_VERSION=1.6.0
# Wed, 13 Jun 2018 02:35:49 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 13 Jun 2018 02:35:50 GMT
CMD ["node"]
# Wed, 13 Jun 2018 03:47:02 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 13 Jun 2018 03:47:03 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Jun 2018 03:47:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 13 Jun 2018 03:47:07 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 13 Jun 2018 03:47:08 GMT
WORKDIR /usr/src/ghost
# Wed, 13 Jun 2018 03:47:09 GMT
ENV GHOST_VERSION=0.11.13
# Wed, 13 Jun 2018 03:52:07 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 13 Jun 2018 03:52:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 13 Jun 2018 03:52:11 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 13 Jun 2018 03:52:12 GMT
VOLUME [/var/lib/ghost]
# Wed, 13 Jun 2018 03:52:13 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 13 Jun 2018 03:52:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Jun 2018 03:52:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Jun 2018 03:52:16 GMT
EXPOSE 2368/tcp
# Wed, 13 Jun 2018 03:52:17 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:6d46b8f3eebfe36e412a394de4bf8a598e22d1fe11cd6b35f34e770473c170ea`  
		Last Modified: Mon, 30 Apr 2018 23:43:19 GMT  
		Size: 27.5 MB (27494590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c76a9bab9b20d665390417795a84329b64ba1435b8c40e97fad0777b8bcf66`  
		Last Modified: Fri, 25 May 2018 11:08:28 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a51aaacefdcf11ca4da05d1de7c5fdb717320bda01af1c2d86bb0a20dc522b`  
		Last Modified: Wed, 13 Jun 2018 03:12:57 GMT  
		Size: 123.6 KB (123622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b752222bfc78f7714ce47dbf351786254bcb2cd89c7aaa530916d6651d5b5cbd`  
		Last Modified: Wed, 13 Jun 2018 03:19:43 GMT  
		Size: 30.8 MB (30794615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493a80aaa34edafa01be3d55a2be09ca06894917177b9d4bf3892c462e8d40c6`  
		Last Modified: Wed, 13 Jun 2018 03:19:32 GMT  
		Size: 1.1 MB (1072189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57786cb8226e7e2fbd4b40f317e8eda2e4a7bf7c983d6ecb7b56ace7de29d527`  
		Last Modified: Wed, 13 Jun 2018 03:53:50 GMT  
		Size: 4.5 KB (4482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464643157163253ae928b86c73e134dbe4e770d9b02fe508353e0f9ac16ff04b`  
		Last Modified: Wed, 13 Jun 2018 03:53:50 GMT  
		Size: 468.7 KB (468702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9987966d4401ce72a655b9625647ae5fa1ca0317a70b24629652bb4f838d92`  
		Last Modified: Wed, 13 Jun 2018 03:53:48 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459196a157422c1154f0985c9771181716fd21697dd16cc48543622a18037898`  
		Last Modified: Wed, 13 Jun 2018 03:54:03 GMT  
		Size: 32.4 MB (32448035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f340235d0a32431fd4dc53def74ba95fc8d629069b278eda8e5369982d3dddc`  
		Last Modified: Wed, 13 Jun 2018 03:53:47 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5781d2bf7a4ae25a24de2d40dd6ae69f6bbc5caadd4c356399cb7d8fee3bced`  
		Last Modified: Wed, 13 Jun 2018 03:53:47 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac1bf60c27bab167ac9458bcb227f5ca071dd61be4b1bb5eca5e305f6575205f`  
		Last Modified: Wed, 13 Jun 2018 03:53:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.13` - linux; 386

```console
$ docker pull ghost@sha256:b2143e862e237eda3f7175e19cd716ea927372f176877bdb96f2342b6301c7ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.6 MB (97627098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bb2c2b07f2b953d9726b1f80908bf7cba422cc8ee1c10a22e415ca0d11adb1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 17 Jul 2018 10:42:32 GMT
ADD file:9f28594bd37e3d6105c4b8e438188e5f1c270ba5fa552b2b4969a43a0a84730d in / 
# Tue, 17 Jul 2018 10:42:35 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 17:06:46 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 17 Jul 2018 17:06:48 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 17 Jul 2018 17:12:23 GMT
ENV NODE_VERSION=6.14.3
# Tue, 17 Jul 2018 17:13:34 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 17 Jul 2018 17:13:35 GMT
ENV YARN_VERSION=1.6.0
# Tue, 17 Jul 2018 17:13:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 17 Jul 2018 17:13:48 GMT
CMD ["node"]
# Tue, 17 Jul 2018 23:05:22 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 17 Jul 2018 23:05:22 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 23:05:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 17 Jul 2018 23:05:26 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 17 Jul 2018 23:05:26 GMT
WORKDIR /usr/src/ghost
# Tue, 17 Jul 2018 23:05:27 GMT
ENV GHOST_VERSION=0.11.13
# Tue, 17 Jul 2018 23:08:39 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 17 Jul 2018 23:08:40 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 17 Jul 2018 23:08:41 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 17 Jul 2018 23:08:42 GMT
VOLUME [/var/lib/ghost]
# Tue, 17 Jul 2018 23:08:42 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Tue, 17 Jul 2018 23:08:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 23:08:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 23:08:43 GMT
EXPOSE 2368/tcp
# Tue, 17 Jul 2018 23:08:43 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:08ccc2995d065af2cd0d4ce4d10d2409e68dcfd7b947820dea2d5371344277e3`  
		Last Modified: Tue, 17 Jul 2018 10:58:32 GMT  
		Size: 30.3 MB (30270010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf211ca9aa00429cc174768096f989e0f7133b244b6f9c1724dda9e629c97d8`  
		Last Modified: Tue, 17 Jul 2018 17:21:58 GMT  
		Size: 4.4 KB (4386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49bad648b8e8b2d7293388b8512dcbffffb4afedd7ab24d439b7161e4ac57c61`  
		Last Modified: Tue, 17 Jul 2018 17:21:58 GMT  
		Size: 123.6 KB (123619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ddbb0ca8811d1604b76ff8b9c22891d66d7611a19ef3d15fe46a290f220a3d`  
		Last Modified: Tue, 17 Jul 2018 17:32:01 GMT  
		Size: 33.1 MB (33148582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5b61abdc10f68fd8e220f438db85a69d7c66b21b42180fa82e8198cb542802`  
		Last Modified: Tue, 17 Jul 2018 17:31:46 GMT  
		Size: 1.1 MB (1072181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:497d53aff14e194f01db35244f1694bea9d227032561495626c06f8f7ff2ec64`  
		Last Modified: Tue, 17 Jul 2018 23:11:50 GMT  
		Size: 4.4 KB (4440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd92d4bf1bdb0c80db599cf531cd97e5f6346c38b32018a05ae11d654eb9b6e5`  
		Last Modified: Tue, 17 Jul 2018 23:11:48 GMT  
		Size: 480.6 KB (480562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e45d3e8e8a45b6bac70679ccdcb4debe516f9675a8f37029571a05ce57820897`  
		Last Modified: Tue, 17 Jul 2018 23:11:48 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7d99b48b22c9e42b090838196d62ddbd3090bb5089732cc73ea909e3276240`  
		Last Modified: Tue, 17 Jul 2018 23:12:08 GMT  
		Size: 32.5 MB (32522220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24cf05f6bb26fc8e551bfe7966b1ae2e12695be0dfd035d10187f937a8752c8`  
		Last Modified: Tue, 17 Jul 2018 23:11:45 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893276f2861b8ef92d50a846745490cbd6b6ecec18d9295c8855dd781b81c7bb`  
		Last Modified: Tue, 17 Jul 2018 23:11:45 GMT  
		Size: 623.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3200ef7d4246f84695cf94b4f4c86d7838d6c6c241f9656f671ef5d7dc50a0c3`  
		Last Modified: Tue, 17 Jul 2018 23:11:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.13` - linux; ppc64le

```console
$ docker pull ghost@sha256:7e1bd3720462967aaad82320d1eb39d6fb7805e1c813f70e9926239ac58e6ee5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.9 MB (94946856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a842a9df78d9f0c9f250032a2cb1fd6d7d23cc62d619f932030e06c371e7447b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 08:18:08 GMT
ADD file:cc51ef60d7cb3b70c82127b8721de1b99378a9d4fc246dffa2ef5ffa2d9ab805 in / 
# Sat, 28 Apr 2018 08:18:09 GMT
CMD ["bash"]
# Fri, 25 May 2018 08:32:49 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 13 Jun 2018 01:46:10 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Wed, 13 Jun 2018 02:02:11 GMT
ENV NODE_VERSION=6.14.3
# Wed, 13 Jun 2018 02:03:42 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 13 Jun 2018 02:03:44 GMT
ENV YARN_VERSION=1.6.0
# Wed, 13 Jun 2018 02:03:48 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 13 Jun 2018 02:03:49 GMT
CMD ["node"]
# Wed, 13 Jun 2018 02:54:18 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 13 Jun 2018 02:54:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Jun 2018 02:54:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 13 Jun 2018 02:54:48 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 13 Jun 2018 02:54:52 GMT
WORKDIR /usr/src/ghost
# Wed, 13 Jun 2018 02:54:52 GMT
ENV GHOST_VERSION=0.11.13
# Wed, 13 Jun 2018 02:58:54 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 13 Jun 2018 02:58:57 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 13 Jun 2018 02:58:58 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 13 Jun 2018 02:58:59 GMT
VOLUME [/var/lib/ghost]
# Wed, 13 Jun 2018 02:59:00 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 13 Jun 2018 02:59:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Jun 2018 02:59:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Jun 2018 02:59:03 GMT
EXPOSE 2368/tcp
# Wed, 13 Jun 2018 02:59:03 GMT
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
	-	`sha256:1973a1513bf3a671db887e6651a8f9b496ebfdf01edf95ef828f2e8e6d771362`  
		Last Modified: Wed, 13 Jun 2018 02:19:33 GMT  
		Size: 123.6 KB (123648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3afe74f13dbd50d27f599fccbce52aaca8e36b68a3cfcbae9caa576de113245`  
		Last Modified: Wed, 13 Jun 2018 02:25:45 GMT  
		Size: 31.0 MB (31034141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc42aab5d637faab11d0ad79e8802ceb68bc797e6cb32c113ffbf342d0b23777`  
		Last Modified: Wed, 13 Jun 2018 02:25:36 GMT  
		Size: 1.1 MB (1072202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7af7ec1568386d0b3555ab64c444db566786a7b09daa21eb2f8abf149b989b57`  
		Last Modified: Wed, 13 Jun 2018 03:00:27 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f1f897678f36377f4b5ab1ab884a32f60c5aef1d79ba3a49b19d300cc35dd7`  
		Last Modified: Wed, 13 Jun 2018 03:00:27 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da876af575ad74d7eaca5850c79c83aebadfa14fcc0da233cc818ae3771de91`  
		Last Modified: Wed, 13 Jun 2018 03:00:25 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f64c7f6c38c79301e1bef6fd3c0ee98c6da761065814364380e8911c2f9f41b`  
		Last Modified: Wed, 13 Jun 2018 03:00:38 GMT  
		Size: 32.9 MB (32919577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc45ff770437ac3cb90e6dac94b15b25157a2701359e98b58c3cc2b7fd5f3dc3`  
		Last Modified: Wed, 13 Jun 2018 03:00:25 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4c4a270b6923b0f41cf7178469bad29955fe8374ce68c1f61aa1e236fb6399`  
		Last Modified: Wed, 13 Jun 2018 03:00:25 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b293050d309af6a3e424dd06049f17b4a89c27fa8aba8225fa207bc29d88ec1`  
		Last Modified: Wed, 13 Jun 2018 03:00:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.13` - linux; s390x

```console
$ docker pull ghost@sha256:3aafbea245e9e70f11ab584100c16a5fcf78dc5bc5034d257f45e1c30608c135
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96635712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2661ffce9fd1379bc9f3426d8721bfde0e344cbce4a5783e1c59dfedb9c50f9b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:53 GMT
ADD file:7c773d50957d6184975f5b22ef61757cd979893af5c77cdfef46dd28d8fc0296 in / 
# Sat, 28 Apr 2018 11:42:55 GMT
CMD ["bash"]
# Fri, 25 May 2018 12:27:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 13 Jun 2018 02:03:54 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Wed, 13 Jun 2018 02:33:23 GMT
ENV NODE_VERSION=6.14.3
# Wed, 13 Jun 2018 02:33:42 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 13 Jun 2018 02:33:42 GMT
ENV YARN_VERSION=1.6.0
# Wed, 13 Jun 2018 02:33:44 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 13 Jun 2018 02:33:44 GMT
CMD ["node"]
# Wed, 13 Jun 2018 03:11:43 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 13 Jun 2018 03:11:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Jun 2018 03:11:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 13 Jun 2018 03:11:46 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 13 Jun 2018 03:11:46 GMT
WORKDIR /usr/src/ghost
# Wed, 13 Jun 2018 03:11:46 GMT
ENV GHOST_VERSION=0.11.13
# Wed, 13 Jun 2018 03:13:20 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 13 Jun 2018 03:13:20 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 13 Jun 2018 03:13:21 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 13 Jun 2018 03:13:22 GMT
VOLUME [/var/lib/ghost]
# Wed, 13 Jun 2018 03:13:22 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 13 Jun 2018 03:13:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Jun 2018 03:13:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Jun 2018 03:13:23 GMT
EXPOSE 2368/tcp
# Wed, 13 Jun 2018 03:13:23 GMT
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
	-	`sha256:0daec6f66e90f908af77b6f6e927f4fdfb975d7db5beeb302e4f74519adee4ca`  
		Last Modified: Wed, 13 Jun 2018 02:47:46 GMT  
		Size: 123.6 KB (123617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe51384b9a5714d988fd9df12cd9f6ee0196f58e9cc535eb10f3b0ad24cbbb31`  
		Last Modified: Wed, 13 Jun 2018 02:50:47 GMT  
		Size: 31.7 MB (31678621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d80cd1964754e4f7c84469379d839fcac8d0f63921d3f52453af1611c26eac3`  
		Last Modified: Wed, 13 Jun 2018 02:50:41 GMT  
		Size: 1.1 MB (1072184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b41a8fbce4879d972568ee299058671f7d03061aba9f449ad089ed32c4bf68`  
		Last Modified: Wed, 13 Jun 2018 03:14:20 GMT  
		Size: 4.5 KB (4461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bdc660b695aca424eec5c00d33413f5bc26863430ae43b733e1db84bbea0ec`  
		Last Modified: Wed, 13 Jun 2018 03:14:21 GMT  
		Size: 486.8 KB (486826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcde67495ae7344e2a816baaff08f89f135c396e0e072d27235cc2835b2dace0`  
		Last Modified: Wed, 13 Jun 2018 03:14:19 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5157779249861343c9dbcd368eb0ea25709d41c100de166080f26e4c0813b29d`  
		Last Modified: Wed, 13 Jun 2018 03:14:30 GMT  
		Size: 33.0 MB (32956182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa8e1cbd8f2ea83c81e1ee23c2ab0966463026900365ee0140ed7a3522fed02`  
		Last Modified: Wed, 13 Jun 2018 03:14:19 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47323e8d3920810f813be3df66934af0918c0329f4e550a62e62c05775c559bf`  
		Last Modified: Wed, 13 Jun 2018 03:14:19 GMT  
		Size: 623.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ad27682db627967cd9e8e03f6d727b041471537d31d3ff538b36d3b3321800`  
		Last Modified: Wed, 13 Jun 2018 03:14:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.13-alpine`

```console
$ docker pull ghost@sha256:7f9e812c5d06c74dd65b9927767d16c7a5b71606a800e1a77f48e2591b1a754a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11.13-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:b2827653542ce7c64aacef2f4dcb0d4b6d6e8aad888b30b5131026f9b79600bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.4 MB (46447005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ba9bd4e61ffb45ef91d22d77ae2c7b41ee3b5c01268efc7d3a14d18d04cac3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 06 Jul 2018 14:15:48 GMT
ADD file:3861bd6a79d134647f9f78098d7f8a3612e6e848284806eea9b3ca4ca23d8686 in / 
# Fri, 06 Jul 2018 14:15:49 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 16:04:52 GMT
ENV NODE_VERSION=6.14.3
# Fri, 06 Jul 2018 16:10:35 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 06 Jul 2018 16:10:35 GMT
ENV YARN_VERSION=1.6.0
# Fri, 06 Jul 2018 16:10:41 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 06 Jul 2018 16:10:41 GMT
CMD ["node"]
# Fri, 06 Jul 2018 20:33:10 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 06 Jul 2018 20:38:04 GMT
RUN apk add --no-cache 		bash 		tar
# Fri, 06 Jul 2018 20:38:05 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 06 Jul 2018 20:38:05 GMT
WORKDIR /usr/src/ghost
# Fri, 06 Jul 2018 20:38:05 GMT
ENV GHOST_VERSION=0.11.13
# Fri, 06 Jul 2018 20:39:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 06 Jul 2018 20:39:14 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 06 Jul 2018 20:39:15 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 06 Jul 2018 20:39:25 GMT
VOLUME [/var/lib/ghost]
# Fri, 06 Jul 2018 20:39:25 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Fri, 06 Jul 2018 20:39:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Jul 2018 20:39:25 GMT
EXPOSE 2368/tcp
# Fri, 06 Jul 2018 20:39:26 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:4064ffdc82fe2f815e6146dcdb37e8ca22376aea17a5ec58d123fe7070377fb6`  
		Last Modified: Fri, 06 Jul 2018 14:18:31 GMT  
		Size: 2.4 MB (2387548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbf5885bde94407fd0356217829c5950cc1faf2fb3e2b1edef08569663e6edc`  
		Last Modified: Fri, 06 Jul 2018 16:37:33 GMT  
		Size: 15.5 MB (15514928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a820cc9b106d44e9e9fc9c92edd8dbe1ea985f24b97b47c54484784a398df1`  
		Last Modified: Fri, 06 Jul 2018 16:37:29 GMT  
		Size: 1.1 MB (1079007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9da9cada8ab8fa7d2b53c139db6e0f84f207843436b04f10eae2c874cf3269`  
		Last Modified: Fri, 06 Jul 2018 20:41:54 GMT  
		Size: 8.4 KB (8354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e065c8a0b3d1d465dabc341ab10abef20e09e4bf37206b03b57d3630aaedb8`  
		Last Modified: Fri, 06 Jul 2018 20:44:44 GMT  
		Size: 1.4 MB (1360678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f301b29c729f0ca403ddf8375a88e6f17e5c27d1f53d98c4aecb1df649135e`  
		Last Modified: Fri, 06 Jul 2018 20:44:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d07f080f2fed7e0cc768a4e8e8602b2833507e69d0b4071484f68daa02f5f742`  
		Last Modified: Fri, 06 Jul 2018 20:44:58 GMT  
		Size: 26.1 MB (26095530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745e6ce4b9f4ce131097c3fa10d3a8cde9f352996a91c5ed2794cb31e4450cc6`  
		Last Modified: Fri, 06 Jul 2018 20:44:43 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44cc4d3f9dd39a8bed794bf3876e254eda994adc7913a4ae885d9343f241e127`  
		Last Modified: Fri, 06 Jul 2018 20:44:43 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11-alpine`

```console
$ docker pull ghost@sha256:7f9e812c5d06c74dd65b9927767d16c7a5b71606a800e1a77f48e2591b1a754a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:b2827653542ce7c64aacef2f4dcb0d4b6d6e8aad888b30b5131026f9b79600bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.4 MB (46447005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ba9bd4e61ffb45ef91d22d77ae2c7b41ee3b5c01268efc7d3a14d18d04cac3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 06 Jul 2018 14:15:48 GMT
ADD file:3861bd6a79d134647f9f78098d7f8a3612e6e848284806eea9b3ca4ca23d8686 in / 
# Fri, 06 Jul 2018 14:15:49 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 16:04:52 GMT
ENV NODE_VERSION=6.14.3
# Fri, 06 Jul 2018 16:10:35 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 06 Jul 2018 16:10:35 GMT
ENV YARN_VERSION=1.6.0
# Fri, 06 Jul 2018 16:10:41 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 06 Jul 2018 16:10:41 GMT
CMD ["node"]
# Fri, 06 Jul 2018 20:33:10 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 06 Jul 2018 20:38:04 GMT
RUN apk add --no-cache 		bash 		tar
# Fri, 06 Jul 2018 20:38:05 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 06 Jul 2018 20:38:05 GMT
WORKDIR /usr/src/ghost
# Fri, 06 Jul 2018 20:38:05 GMT
ENV GHOST_VERSION=0.11.13
# Fri, 06 Jul 2018 20:39:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 06 Jul 2018 20:39:14 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 06 Jul 2018 20:39:15 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 06 Jul 2018 20:39:25 GMT
VOLUME [/var/lib/ghost]
# Fri, 06 Jul 2018 20:39:25 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Fri, 06 Jul 2018 20:39:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Jul 2018 20:39:25 GMT
EXPOSE 2368/tcp
# Fri, 06 Jul 2018 20:39:26 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:4064ffdc82fe2f815e6146dcdb37e8ca22376aea17a5ec58d123fe7070377fb6`  
		Last Modified: Fri, 06 Jul 2018 14:18:31 GMT  
		Size: 2.4 MB (2387548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbf5885bde94407fd0356217829c5950cc1faf2fb3e2b1edef08569663e6edc`  
		Last Modified: Fri, 06 Jul 2018 16:37:33 GMT  
		Size: 15.5 MB (15514928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a820cc9b106d44e9e9fc9c92edd8dbe1ea985f24b97b47c54484784a398df1`  
		Last Modified: Fri, 06 Jul 2018 16:37:29 GMT  
		Size: 1.1 MB (1079007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9da9cada8ab8fa7d2b53c139db6e0f84f207843436b04f10eae2c874cf3269`  
		Last Modified: Fri, 06 Jul 2018 20:41:54 GMT  
		Size: 8.4 KB (8354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e065c8a0b3d1d465dabc341ab10abef20e09e4bf37206b03b57d3630aaedb8`  
		Last Modified: Fri, 06 Jul 2018 20:44:44 GMT  
		Size: 1.4 MB (1360678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f301b29c729f0ca403ddf8375a88e6f17e5c27d1f53d98c4aecb1df649135e`  
		Last Modified: Fri, 06 Jul 2018 20:44:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d07f080f2fed7e0cc768a4e8e8602b2833507e69d0b4071484f68daa02f5f742`  
		Last Modified: Fri, 06 Jul 2018 20:44:58 GMT  
		Size: 26.1 MB (26095530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745e6ce4b9f4ce131097c3fa10d3a8cde9f352996a91c5ed2794cb31e4450cc6`  
		Last Modified: Fri, 06 Jul 2018 20:44:43 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44cc4d3f9dd39a8bed794bf3876e254eda994adc7913a4ae885d9343f241e127`  
		Last Modified: Fri, 06 Jul 2018 20:44:43 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:7f9e812c5d06c74dd65b9927767d16c7a5b71606a800e1a77f48e2591b1a754a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:b2827653542ce7c64aacef2f4dcb0d4b6d6e8aad888b30b5131026f9b79600bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.4 MB (46447005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ba9bd4e61ffb45ef91d22d77ae2c7b41ee3b5c01268efc7d3a14d18d04cac3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 06 Jul 2018 14:15:48 GMT
ADD file:3861bd6a79d134647f9f78098d7f8a3612e6e848284806eea9b3ca4ca23d8686 in / 
# Fri, 06 Jul 2018 14:15:49 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 16:04:52 GMT
ENV NODE_VERSION=6.14.3
# Fri, 06 Jul 2018 16:10:35 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 06 Jul 2018 16:10:35 GMT
ENV YARN_VERSION=1.6.0
# Fri, 06 Jul 2018 16:10:41 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 06 Jul 2018 16:10:41 GMT
CMD ["node"]
# Fri, 06 Jul 2018 20:33:10 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 06 Jul 2018 20:38:04 GMT
RUN apk add --no-cache 		bash 		tar
# Fri, 06 Jul 2018 20:38:05 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 06 Jul 2018 20:38:05 GMT
WORKDIR /usr/src/ghost
# Fri, 06 Jul 2018 20:38:05 GMT
ENV GHOST_VERSION=0.11.13
# Fri, 06 Jul 2018 20:39:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 06 Jul 2018 20:39:14 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 06 Jul 2018 20:39:15 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 06 Jul 2018 20:39:25 GMT
VOLUME [/var/lib/ghost]
# Fri, 06 Jul 2018 20:39:25 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Fri, 06 Jul 2018 20:39:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Jul 2018 20:39:25 GMT
EXPOSE 2368/tcp
# Fri, 06 Jul 2018 20:39:26 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:4064ffdc82fe2f815e6146dcdb37e8ca22376aea17a5ec58d123fe7070377fb6`  
		Last Modified: Fri, 06 Jul 2018 14:18:31 GMT  
		Size: 2.4 MB (2387548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbf5885bde94407fd0356217829c5950cc1faf2fb3e2b1edef08569663e6edc`  
		Last Modified: Fri, 06 Jul 2018 16:37:33 GMT  
		Size: 15.5 MB (15514928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a820cc9b106d44e9e9fc9c92edd8dbe1ea985f24b97b47c54484784a398df1`  
		Last Modified: Fri, 06 Jul 2018 16:37:29 GMT  
		Size: 1.1 MB (1079007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9da9cada8ab8fa7d2b53c139db6e0f84f207843436b04f10eae2c874cf3269`  
		Last Modified: Fri, 06 Jul 2018 20:41:54 GMT  
		Size: 8.4 KB (8354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e065c8a0b3d1d465dabc341ab10abef20e09e4bf37206b03b57d3630aaedb8`  
		Last Modified: Fri, 06 Jul 2018 20:44:44 GMT  
		Size: 1.4 MB (1360678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f301b29c729f0ca403ddf8375a88e6f17e5c27d1f53d98c4aecb1df649135e`  
		Last Modified: Fri, 06 Jul 2018 20:44:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d07f080f2fed7e0cc768a4e8e8602b2833507e69d0b4071484f68daa02f5f742`  
		Last Modified: Fri, 06 Jul 2018 20:44:58 GMT  
		Size: 26.1 MB (26095530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745e6ce4b9f4ce131097c3fa10d3a8cde9f352996a91c5ed2794cb31e4450cc6`  
		Last Modified: Fri, 06 Jul 2018 20:44:43 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44cc4d3f9dd39a8bed794bf3876e254eda994adc7913a4ae885d9343f241e127`  
		Last Modified: Fri, 06 Jul 2018 20:44:43 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1`

```console
$ docker pull ghost@sha256:0110d31e852d950b6d1b232e324203a37c88bf8be5a87ff38b9c9a516cd1f412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1` - linux; amd64

```console
$ docker pull ghost@sha256:d66a4ba2a215aa5672d26c43bc5152d08642e38a16cbb5596b43065bedbc5a77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186243331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0462c399a3c94048f4ed63d81c0af17d134b617b6ee7c2d69b812d784fc5b52c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 05:36:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 17 Jul 2018 05:36:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 17 Jul 2018 05:38:53 GMT
ENV NODE_VERSION=8.11.3
# Tue, 17 Jul 2018 05:39:33 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 17 Jul 2018 05:39:33 GMT
ENV YARN_VERSION=1.6.0
# Tue, 17 Jul 2018 05:39:36 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 17 Jul 2018 05:39:37 GMT
CMD ["node"]
# Wed, 25 Jul 2018 17:28:54 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Jul 2018 17:29:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Jul 2018 17:29:11 GMT
ENV NODE_ENV=production
# Wed, 25 Jul 2018 17:29:11 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Wed, 25 Jul 2018 17:29:36 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 25 Jul 2018 17:29:37 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 25 Jul 2018 17:29:37 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 25 Jul 2018 17:29:37 GMT
ENV GHOST_VERSION=1.25.0
# Wed, 25 Jul 2018 17:30:19 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 25 Jul 2018 17:30:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 25 Jul 2018 17:30:28 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 25 Jul 2018 17:30:28 GMT
WORKDIR /var/lib/ghost
# Wed, 25 Jul 2018 17:30:29 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 25 Jul 2018 17:30:29 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 25 Jul 2018 17:30:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:30:30 GMT
EXPOSE 2368/tcp
# Wed, 25 Jul 2018 17:30:30 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196b8e3c919d5639193ba6c6e54774528942041bbc37606631a2250502985c3c`  
		Last Modified: Tue, 17 Jul 2018 05:48:26 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d083412657baa2dafba8d093034ef26f9ed2c90fb6ed95f76bb55aff03ed429`  
		Last Modified: Tue, 17 Jul 2018 05:48:26 GMT  
		Size: 123.6 KB (123616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b71377f6d7e7b7eb7817b90c6967e9e0512b2192c0bda3abd95addeb5b70b8`  
		Last Modified: Tue, 17 Jul 2018 05:53:34 GMT  
		Size: 35.2 MB (35220175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd053e625b2b36ca90c1d0438ebb605246a881570c86b541af3167dc3d5ed8c`  
		Last Modified: Tue, 17 Jul 2018 05:53:28 GMT  
		Size: 1.1 MB (1072181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c13d1a859ba17cf31504417d5432a9897f71189219a387f44f996eb9eb99d6`  
		Last Modified: Wed, 25 Jul 2018 17:32:33 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3882482aa4019896d8b64618004c5875862d54aeb2d9321b9999ed991848c12`  
		Last Modified: Wed, 25 Jul 2018 17:32:41 GMT  
		Size: 17.0 MB (16950026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63a9880f41add4c12fcd050d43d34c449c73ed0a3cde0b8071dbba20761d3f8`  
		Last Modified: Wed, 25 Jul 2018 17:33:07 GMT  
		Size: 102.1 MB (102054444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e32f536e89ea9e622e7407df8c90cf610f7f26437a30ce63365b3a8c9113adf`  
		Last Modified: Wed, 25 Jul 2018 17:32:34 GMT  
		Size: 197.1 KB (197087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631372c55f9f9d57971e226606130ee15e7f41aed381470ee181beaa18aa8c05`  
		Last Modified: Wed, 25 Jul 2018 17:32:33 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25`

```console
$ docker pull ghost@sha256:0110d31e852d950b6d1b232e324203a37c88bf8be5a87ff38b9c9a516cd1f412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1.25` - linux; amd64

```console
$ docker pull ghost@sha256:d66a4ba2a215aa5672d26c43bc5152d08642e38a16cbb5596b43065bedbc5a77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186243331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0462c399a3c94048f4ed63d81c0af17d134b617b6ee7c2d69b812d784fc5b52c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 05:36:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 17 Jul 2018 05:36:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 17 Jul 2018 05:38:53 GMT
ENV NODE_VERSION=8.11.3
# Tue, 17 Jul 2018 05:39:33 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 17 Jul 2018 05:39:33 GMT
ENV YARN_VERSION=1.6.0
# Tue, 17 Jul 2018 05:39:36 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 17 Jul 2018 05:39:37 GMT
CMD ["node"]
# Wed, 25 Jul 2018 17:28:54 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Jul 2018 17:29:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Jul 2018 17:29:11 GMT
ENV NODE_ENV=production
# Wed, 25 Jul 2018 17:29:11 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Wed, 25 Jul 2018 17:29:36 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 25 Jul 2018 17:29:37 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 25 Jul 2018 17:29:37 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 25 Jul 2018 17:29:37 GMT
ENV GHOST_VERSION=1.25.0
# Wed, 25 Jul 2018 17:30:19 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 25 Jul 2018 17:30:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 25 Jul 2018 17:30:28 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 25 Jul 2018 17:30:28 GMT
WORKDIR /var/lib/ghost
# Wed, 25 Jul 2018 17:30:29 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 25 Jul 2018 17:30:29 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 25 Jul 2018 17:30:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:30:30 GMT
EXPOSE 2368/tcp
# Wed, 25 Jul 2018 17:30:30 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196b8e3c919d5639193ba6c6e54774528942041bbc37606631a2250502985c3c`  
		Last Modified: Tue, 17 Jul 2018 05:48:26 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d083412657baa2dafba8d093034ef26f9ed2c90fb6ed95f76bb55aff03ed429`  
		Last Modified: Tue, 17 Jul 2018 05:48:26 GMT  
		Size: 123.6 KB (123616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b71377f6d7e7b7eb7817b90c6967e9e0512b2192c0bda3abd95addeb5b70b8`  
		Last Modified: Tue, 17 Jul 2018 05:53:34 GMT  
		Size: 35.2 MB (35220175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd053e625b2b36ca90c1d0438ebb605246a881570c86b541af3167dc3d5ed8c`  
		Last Modified: Tue, 17 Jul 2018 05:53:28 GMT  
		Size: 1.1 MB (1072181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c13d1a859ba17cf31504417d5432a9897f71189219a387f44f996eb9eb99d6`  
		Last Modified: Wed, 25 Jul 2018 17:32:33 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3882482aa4019896d8b64618004c5875862d54aeb2d9321b9999ed991848c12`  
		Last Modified: Wed, 25 Jul 2018 17:32:41 GMT  
		Size: 17.0 MB (16950026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63a9880f41add4c12fcd050d43d34c449c73ed0a3cde0b8071dbba20761d3f8`  
		Last Modified: Wed, 25 Jul 2018 17:33:07 GMT  
		Size: 102.1 MB (102054444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e32f536e89ea9e622e7407df8c90cf610f7f26437a30ce63365b3a8c9113adf`  
		Last Modified: Wed, 25 Jul 2018 17:32:34 GMT  
		Size: 197.1 KB (197087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631372c55f9f9d57971e226606130ee15e7f41aed381470ee181beaa18aa8c05`  
		Last Modified: Wed, 25 Jul 2018 17:32:33 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25.0`

```console
$ docker pull ghost@sha256:0110d31e852d950b6d1b232e324203a37c88bf8be5a87ff38b9c9a516cd1f412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1.25.0` - linux; amd64

```console
$ docker pull ghost@sha256:d66a4ba2a215aa5672d26c43bc5152d08642e38a16cbb5596b43065bedbc5a77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186243331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0462c399a3c94048f4ed63d81c0af17d134b617b6ee7c2d69b812d784fc5b52c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 05:36:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 17 Jul 2018 05:36:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 17 Jul 2018 05:38:53 GMT
ENV NODE_VERSION=8.11.3
# Tue, 17 Jul 2018 05:39:33 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 17 Jul 2018 05:39:33 GMT
ENV YARN_VERSION=1.6.0
# Tue, 17 Jul 2018 05:39:36 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 17 Jul 2018 05:39:37 GMT
CMD ["node"]
# Wed, 25 Jul 2018 17:28:54 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Jul 2018 17:29:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Jul 2018 17:29:11 GMT
ENV NODE_ENV=production
# Wed, 25 Jul 2018 17:29:11 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Wed, 25 Jul 2018 17:29:36 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 25 Jul 2018 17:29:37 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 25 Jul 2018 17:29:37 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 25 Jul 2018 17:29:37 GMT
ENV GHOST_VERSION=1.25.0
# Wed, 25 Jul 2018 17:30:19 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 25 Jul 2018 17:30:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 25 Jul 2018 17:30:28 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 25 Jul 2018 17:30:28 GMT
WORKDIR /var/lib/ghost
# Wed, 25 Jul 2018 17:30:29 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 25 Jul 2018 17:30:29 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 25 Jul 2018 17:30:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:30:30 GMT
EXPOSE 2368/tcp
# Wed, 25 Jul 2018 17:30:30 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196b8e3c919d5639193ba6c6e54774528942041bbc37606631a2250502985c3c`  
		Last Modified: Tue, 17 Jul 2018 05:48:26 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d083412657baa2dafba8d093034ef26f9ed2c90fb6ed95f76bb55aff03ed429`  
		Last Modified: Tue, 17 Jul 2018 05:48:26 GMT  
		Size: 123.6 KB (123616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b71377f6d7e7b7eb7817b90c6967e9e0512b2192c0bda3abd95addeb5b70b8`  
		Last Modified: Tue, 17 Jul 2018 05:53:34 GMT  
		Size: 35.2 MB (35220175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd053e625b2b36ca90c1d0438ebb605246a881570c86b541af3167dc3d5ed8c`  
		Last Modified: Tue, 17 Jul 2018 05:53:28 GMT  
		Size: 1.1 MB (1072181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c13d1a859ba17cf31504417d5432a9897f71189219a387f44f996eb9eb99d6`  
		Last Modified: Wed, 25 Jul 2018 17:32:33 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3882482aa4019896d8b64618004c5875862d54aeb2d9321b9999ed991848c12`  
		Last Modified: Wed, 25 Jul 2018 17:32:41 GMT  
		Size: 17.0 MB (16950026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63a9880f41add4c12fcd050d43d34c449c73ed0a3cde0b8071dbba20761d3f8`  
		Last Modified: Wed, 25 Jul 2018 17:33:07 GMT  
		Size: 102.1 MB (102054444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e32f536e89ea9e622e7407df8c90cf610f7f26437a30ce63365b3a8c9113adf`  
		Last Modified: Wed, 25 Jul 2018 17:32:34 GMT  
		Size: 197.1 KB (197087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631372c55f9f9d57971e226606130ee15e7f41aed381470ee181beaa18aa8c05`  
		Last Modified: Wed, 25 Jul 2018 17:32:33 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25.0-alpine`

```console
$ docker pull ghost@sha256:99b207a44f12d1bee4fbc827658eb5fc124e3fe5b76a58ac79cc87756dad848a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1.25.0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:7538684d58aa70cb50581b528641c3b55bb6dadac3f38734378397c59742d773
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.9 MB (142865214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:488f50a693b23785c41114a7e382f1ccf5f58e96317392c92c5f38398f60075b`
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
# Wed, 25 Jul 2018 17:31:24 GMT
ENV GHOST_VERSION=1.25.0
# Wed, 25 Jul 2018 17:32:02 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 25 Jul 2018 17:32:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 25 Jul 2018 17:32:05 GMT
WORKDIR /var/lib/ghost
# Wed, 25 Jul 2018 17:32:05 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 25 Jul 2018 17:32:06 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Wed, 25 Jul 2018 17:32:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:32:06 GMT
EXPOSE 2368/tcp
# Wed, 25 Jul 2018 17:32:06 GMT
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
	-	`sha256:c3aa50ac756c3a0006b6f7722f614c4e9a4c1ced4b565baa083e3209d1424713`  
		Last Modified: Wed, 25 Jul 2018 17:34:59 GMT  
		Size: 102.1 MB (102053830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbcdb1649d352f1e7ce820a0aeec058214fa44cdfef430c1f135481c53b58f19`  
		Last Modified: Wed, 25 Jul 2018 17:34:32 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25-alpine`

```console
$ docker pull ghost@sha256:99b207a44f12d1bee4fbc827658eb5fc124e3fe5b76a58ac79cc87756dad848a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1.25-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:7538684d58aa70cb50581b528641c3b55bb6dadac3f38734378397c59742d773
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.9 MB (142865214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:488f50a693b23785c41114a7e382f1ccf5f58e96317392c92c5f38398f60075b`
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
# Wed, 25 Jul 2018 17:31:24 GMT
ENV GHOST_VERSION=1.25.0
# Wed, 25 Jul 2018 17:32:02 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 25 Jul 2018 17:32:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 25 Jul 2018 17:32:05 GMT
WORKDIR /var/lib/ghost
# Wed, 25 Jul 2018 17:32:05 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 25 Jul 2018 17:32:06 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Wed, 25 Jul 2018 17:32:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:32:06 GMT
EXPOSE 2368/tcp
# Wed, 25 Jul 2018 17:32:06 GMT
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
	-	`sha256:c3aa50ac756c3a0006b6f7722f614c4e9a4c1ced4b565baa083e3209d1424713`  
		Last Modified: Wed, 25 Jul 2018 17:34:59 GMT  
		Size: 102.1 MB (102053830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbcdb1649d352f1e7ce820a0aeec058214fa44cdfef430c1f135481c53b58f19`  
		Last Modified: Wed, 25 Jul 2018 17:34:32 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:99b207a44f12d1bee4fbc827658eb5fc124e3fe5b76a58ac79cc87756dad848a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:7538684d58aa70cb50581b528641c3b55bb6dadac3f38734378397c59742d773
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.9 MB (142865214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:488f50a693b23785c41114a7e382f1ccf5f58e96317392c92c5f38398f60075b`
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
# Wed, 25 Jul 2018 17:31:24 GMT
ENV GHOST_VERSION=1.25.0
# Wed, 25 Jul 2018 17:32:02 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 25 Jul 2018 17:32:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 25 Jul 2018 17:32:05 GMT
WORKDIR /var/lib/ghost
# Wed, 25 Jul 2018 17:32:05 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 25 Jul 2018 17:32:06 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Wed, 25 Jul 2018 17:32:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:32:06 GMT
EXPOSE 2368/tcp
# Wed, 25 Jul 2018 17:32:06 GMT
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
	-	`sha256:c3aa50ac756c3a0006b6f7722f614c4e9a4c1ced4b565baa083e3209d1424713`  
		Last Modified: Wed, 25 Jul 2018 17:34:59 GMT  
		Size: 102.1 MB (102053830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbcdb1649d352f1e7ce820a0aeec058214fa44cdfef430c1f135481c53b58f19`  
		Last Modified: Wed, 25 Jul 2018 17:34:32 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:99b207a44f12d1bee4fbc827658eb5fc124e3fe5b76a58ac79cc87756dad848a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:7538684d58aa70cb50581b528641c3b55bb6dadac3f38734378397c59742d773
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.9 MB (142865214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:488f50a693b23785c41114a7e382f1ccf5f58e96317392c92c5f38398f60075b`
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
# Wed, 25 Jul 2018 17:31:24 GMT
ENV GHOST_VERSION=1.25.0
# Wed, 25 Jul 2018 17:32:02 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 25 Jul 2018 17:32:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 25 Jul 2018 17:32:05 GMT
WORKDIR /var/lib/ghost
# Wed, 25 Jul 2018 17:32:05 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 25 Jul 2018 17:32:06 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Wed, 25 Jul 2018 17:32:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:32:06 GMT
EXPOSE 2368/tcp
# Wed, 25 Jul 2018 17:32:06 GMT
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
	-	`sha256:c3aa50ac756c3a0006b6f7722f614c4e9a4c1ced4b565baa083e3209d1424713`  
		Last Modified: Wed, 25 Jul 2018 17:34:59 GMT  
		Size: 102.1 MB (102053830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbcdb1649d352f1e7ce820a0aeec058214fa44cdfef430c1f135481c53b58f19`  
		Last Modified: Wed, 25 Jul 2018 17:34:32 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:0110d31e852d950b6d1b232e324203a37c88bf8be5a87ff38b9c9a516cd1f412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:latest` - linux; amd64

```console
$ docker pull ghost@sha256:d66a4ba2a215aa5672d26c43bc5152d08642e38a16cbb5596b43065bedbc5a77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186243331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0462c399a3c94048f4ed63d81c0af17d134b617b6ee7c2d69b812d784fc5b52c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 05:36:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 17 Jul 2018 05:36:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 17 Jul 2018 05:38:53 GMT
ENV NODE_VERSION=8.11.3
# Tue, 17 Jul 2018 05:39:33 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 17 Jul 2018 05:39:33 GMT
ENV YARN_VERSION=1.6.0
# Tue, 17 Jul 2018 05:39:36 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 17 Jul 2018 05:39:37 GMT
CMD ["node"]
# Wed, 25 Jul 2018 17:28:54 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Jul 2018 17:29:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Jul 2018 17:29:11 GMT
ENV NODE_ENV=production
# Wed, 25 Jul 2018 17:29:11 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Wed, 25 Jul 2018 17:29:36 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 25 Jul 2018 17:29:37 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 25 Jul 2018 17:29:37 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 25 Jul 2018 17:29:37 GMT
ENV GHOST_VERSION=1.25.0
# Wed, 25 Jul 2018 17:30:19 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 25 Jul 2018 17:30:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 25 Jul 2018 17:30:28 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 25 Jul 2018 17:30:28 GMT
WORKDIR /var/lib/ghost
# Wed, 25 Jul 2018 17:30:29 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 25 Jul 2018 17:30:29 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 25 Jul 2018 17:30:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:30:30 GMT
EXPOSE 2368/tcp
# Wed, 25 Jul 2018 17:30:30 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196b8e3c919d5639193ba6c6e54774528942041bbc37606631a2250502985c3c`  
		Last Modified: Tue, 17 Jul 2018 05:48:26 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d083412657baa2dafba8d093034ef26f9ed2c90fb6ed95f76bb55aff03ed429`  
		Last Modified: Tue, 17 Jul 2018 05:48:26 GMT  
		Size: 123.6 KB (123616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b71377f6d7e7b7eb7817b90c6967e9e0512b2192c0bda3abd95addeb5b70b8`  
		Last Modified: Tue, 17 Jul 2018 05:53:34 GMT  
		Size: 35.2 MB (35220175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd053e625b2b36ca90c1d0438ebb605246a881570c86b541af3167dc3d5ed8c`  
		Last Modified: Tue, 17 Jul 2018 05:53:28 GMT  
		Size: 1.1 MB (1072181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c13d1a859ba17cf31504417d5432a9897f71189219a387f44f996eb9eb99d6`  
		Last Modified: Wed, 25 Jul 2018 17:32:33 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3882482aa4019896d8b64618004c5875862d54aeb2d9321b9999ed991848c12`  
		Last Modified: Wed, 25 Jul 2018 17:32:41 GMT  
		Size: 17.0 MB (16950026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63a9880f41add4c12fcd050d43d34c449c73ed0a3cde0b8071dbba20761d3f8`  
		Last Modified: Wed, 25 Jul 2018 17:33:07 GMT  
		Size: 102.1 MB (102054444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e32f536e89ea9e622e7407df8c90cf610f7f26437a30ce63365b3a8c9113adf`  
		Last Modified: Wed, 25 Jul 2018 17:32:34 GMT  
		Size: 197.1 KB (197087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631372c55f9f9d57971e226606130ee15e7f41aed381470ee181beaa18aa8c05`  
		Last Modified: Wed, 25 Jul 2018 17:32:33 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

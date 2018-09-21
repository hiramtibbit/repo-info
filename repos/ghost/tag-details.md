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
-	[`ghost:1.25.5`](#ghost1255)
-	[`ghost:1.25.5-alpine`](#ghost1255-alpine)
-	[`ghost:1.25-alpine`](#ghost125-alpine)
-	[`ghost:1-alpine`](#ghost1-alpine)
-	[`ghost:2`](#ghost2)
-	[`ghost:2.1`](#ghost21)
-	[`ghost:2.1.3`](#ghost213)
-	[`ghost:2.1.3-alpine`](#ghost213-alpine)
-	[`ghost:2.1-alpine`](#ghost21-alpine)
-	[`ghost:2-alpine`](#ghost2-alpine)
-	[`ghost:alpine`](#ghostalpine)
-	[`ghost:latest`](#ghostlatest)

## `ghost:0`

```console
$ docker pull ghost@sha256:feca53853ab091af29aab782f6b720790dbf61cb08190d846e14f86f78e6725b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:0` - linux; amd64

```console
$ docker pull ghost@sha256:67239d1a900359080e2d6931bd84e3e25216edd7a2c5423a161a540977920d41
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.5 MB (89454349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c90123abd998f95c56f7012827aeb57fc67b48d82be36f7925c53d8c0793a898`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:05:22 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 04 Sep 2018 22:05:23 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 04 Sep 2018 22:22:03 GMT
ENV NODE_VERSION=6.14.4
# Tue, 04 Sep 2018 22:22:36 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 04 Sep 2018 22:22:36 GMT
ENV YARN_VERSION=1.6.0
# Tue, 04 Sep 2018 22:22:38 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 04 Sep 2018 22:22:38 GMT
CMD ["node"]
# Wed, 05 Sep 2018 08:49:33 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 05 Sep 2018 08:49:33 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 08:49:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 05 Sep 2018 08:49:35 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 05 Sep 2018 08:49:35 GMT
WORKDIR /usr/src/ghost
# Wed, 05 Sep 2018 08:49:35 GMT
ENV GHOST_VERSION=0.11.13
# Wed, 05 Sep 2018 08:51:02 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 05 Sep 2018 08:51:03 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 05 Sep 2018 08:51:04 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 05 Sep 2018 08:51:04 GMT
VOLUME [/var/lib/ghost]
# Wed, 05 Sep 2018 08:51:04 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 05 Sep 2018 08:51:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Sep 2018 08:51:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 08:51:06 GMT
EXPOSE 2368/tcp
# Wed, 05 Sep 2018 08:51:06 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b186cf19f9edbd5ee7b8f79fb5fa0a8a21c4f4119149d8f900b2f4f00b440815`  
		Last Modified: Tue, 04 Sep 2018 22:51:46 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eadbf83122625b628be463f73c3c568462c43eaaeb284b83692ad754e5a126be`  
		Last Modified: Tue, 04 Sep 2018 22:51:46 GMT  
		Size: 124.7 KB (124684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e49e1459fc62f8ccc46d6155da2003bd87e9e52fa0793924a65111f35f3b9a90`  
		Last Modified: Tue, 04 Sep 2018 22:53:06 GMT  
		Size: 31.3 MB (31281293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a2e2a78588a490da57310c880f8a1731dc21af2feff27fc68dc43459bf468e9`  
		Last Modified: Tue, 04 Sep 2018 22:52:58 GMT  
		Size: 1.1 MB (1073253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beadad2728fa6dd4835e1b09e6c7e331ff735de8a50964bc68b58ecd371ea7ce`  
		Last Modified: Wed, 05 Sep 2018 08:55:38 GMT  
		Size: 4.5 KB (4456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adfafbe9e6d247283bea06641630a2eef513dc1ec05e9f18a5d6c41da878408e`  
		Last Modified: Wed, 05 Sep 2018 08:55:38 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5de8e2275c7267f87b6741561ffc07a4ccee771859f874183ad53a5745ffa4`  
		Last Modified: Wed, 05 Sep 2018 08:55:37 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c321fa106615d9c6b2dfc22a1321e8de44e577f2d37edcb182e5825190554c1a`  
		Last Modified: Wed, 05 Sep 2018 08:55:43 GMT  
		Size: 26.3 MB (26343928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402c8cf996d9f060b7ab006975eaf8d0a4b7ad0c88ea37358da37a8767dd3e35`  
		Last Modified: Wed, 05 Sep 2018 08:55:37 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54497e05029add33bc2e094d8587227932bfbe85b5f98b825b6a592217199145`  
		Last Modified: Wed, 05 Sep 2018 08:55:37 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a449048832efcc75d5362428073794e8768bb149d233c1fa495d85814a3cf75d`  
		Last Modified: Wed, 05 Sep 2018 08:55:37 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; arm variant v7

```console
$ docker pull ghost@sha256:de325e33fe69abb2eccad413a6bd2fcb11993f59567eb47d584504f5ffa9fd25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.5 MB (89537832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87be198ae10378a092c8191f931f26129aa70161b0afc52886515a377ba9ca5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:41 GMT
ADD file:e98fce6ce6aee310f31c67240c7a9f8cb7de0e6deb0967029e5528255c7a86f0 in / 
# Wed, 05 Sep 2018 11:59:45 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:37:49 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 05 Sep 2018 12:37:51 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Wed, 05 Sep 2018 12:39:26 GMT
ENV NODE_VERSION=6.14.4
# Wed, 05 Sep 2018 12:40:13 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 05 Sep 2018 12:40:13 GMT
ENV YARN_VERSION=1.6.0
# Wed, 05 Sep 2018 12:40:15 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 05 Sep 2018 12:40:16 GMT
CMD ["node"]
# Wed, 05 Sep 2018 16:37:03 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 05 Sep 2018 16:37:03 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 16:37:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 05 Sep 2018 16:37:05 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 05 Sep 2018 16:37:06 GMT
WORKDIR /usr/src/ghost
# Wed, 05 Sep 2018 16:37:06 GMT
ENV GHOST_VERSION=0.11.13
# Sat, 15 Sep 2018 12:13:48 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 15 Sep 2018 12:13:50 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 15 Sep 2018 12:13:51 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 15 Sep 2018 12:13:52 GMT
VOLUME [/var/lib/ghost]
# Sat, 15 Sep 2018 12:13:52 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 15 Sep 2018 12:13:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 15 Sep 2018 12:13:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 15 Sep 2018 12:13:54 GMT
EXPOSE 2368/tcp
# Sat, 15 Sep 2018 12:13:55 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:e7731670a93bf29e604d72ec2b8625589828c7d950c54f459fd2fb3fb8cf6e73`  
		Last Modified: Wed, 05 Sep 2018 12:09:08 GMT  
		Size: 26.3 MB (26287004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3833f3c3c9c9c989ac75d86e86bc9ae8abd5faf18edc479abf20010c8b28afa`  
		Last Modified: Wed, 05 Sep 2018 12:42:03 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8726d02c4595d8ef3e2dcea4629d70c1f47a940a7e6a40e1fc1cd935d993390f`  
		Last Modified: Wed, 05 Sep 2018 12:42:03 GMT  
		Size: 124.7 KB (124708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c7c34b02c4d6b9e20cbea0431da2b64524556e75a07f535e38f4f846620948`  
		Last Modified: Wed, 05 Sep 2018 12:42:54 GMT  
		Size: 29.4 MB (29449422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7e1dba3a8df78c89513f5afcda7fb1df3ed0ded066563bd53039538c8dc23a`  
		Last Modified: Wed, 05 Sep 2018 12:42:46 GMT  
		Size: 1.1 MB (1073270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3be4e981f934cc1bf1a8bd48305bc3cb893c8deca61c3fb0892aed4545b24a`  
		Last Modified: Sat, 15 Sep 2018 12:16:42 GMT  
		Size: 4.5 KB (4473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6727f62c58024b44f0840208f6bcc8515ec2ab4377b026909893d9449341a1f0`  
		Last Modified: Sat, 15 Sep 2018 12:16:42 GMT  
		Size: 475.3 KB (475264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12a1aa313c88d0f9cd721b787120fe2ba65119367ea2f263a1cc28b5524332a0`  
		Last Modified: Sat, 15 Sep 2018 12:16:40 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbaa54a5e5cce7612f72b31212d59ca2fb9e2ada16ae5e42018659b4ea774fa2`  
		Last Modified: Sat, 15 Sep 2018 12:16:57 GMT  
		Size: 32.1 MB (32118108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e66bf85f484382f4adabfd55049a33cfd4e3badb8ce2aca39ee3eb585d9333`  
		Last Modified: Sat, 15 Sep 2018 12:16:42 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a6c3091e867f6038118d788f9f530a3576a6264273457307b2cc232366a5a9`  
		Last Modified: Sat, 15 Sep 2018 12:16:41 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc780f72d85289f9b322ce9f6bf0ac084d9ca53933c4026dac792e2bfaa32a6a`  
		Last Modified: Sat, 15 Sep 2018 12:16:40 GMT  
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
$ docker pull ghost@sha256:f6378ba552d5c4f5248ff7b57aea90bfd9d41da56bf1c3d944d7ffa37ee1392f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.6 MB (97635326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19166d87e599d913734865ac65d2d5b8ff997d4c2fec353f6eb2be1277ecba35`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 23:56:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 06 Sep 2018 23:56:33 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Thu, 06 Sep 2018 23:58:07 GMT
ENV NODE_VERSION=6.14.4
# Thu, 06 Sep 2018 23:58:56 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 06 Sep 2018 23:58:56 GMT
ENV YARN_VERSION=1.6.0
# Thu, 06 Sep 2018 23:58:58 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 06 Sep 2018 23:58:58 GMT
CMD ["node"]
# Fri, 07 Sep 2018 08:35:20 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 07 Sep 2018 08:35:20 GMT
ENV GOSU_VERSION=1.10
# Fri, 07 Sep 2018 08:35:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 07 Sep 2018 08:35:21 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 07 Sep 2018 08:35:22 GMT
WORKDIR /usr/src/ghost
# Fri, 07 Sep 2018 08:35:22 GMT
ENV GHOST_VERSION=0.11.13
# Fri, 07 Sep 2018 08:37:44 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 07 Sep 2018 08:37:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 07 Sep 2018 08:37:45 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 07 Sep 2018 08:37:45 GMT
VOLUME [/var/lib/ghost]
# Fri, 07 Sep 2018 08:37:46 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 07 Sep 2018 08:37:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 07 Sep 2018 08:37:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Sep 2018 08:37:47 GMT
EXPOSE 2368/tcp
# Fri, 07 Sep 2018 08:37:47 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff302b22167139646862bfad9275f569dd63128e5a5d78707f204a056904b685`  
		Last Modified: Fri, 07 Sep 2018 00:27:05 GMT  
		Size: 4.4 KB (4387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da21a2f75f648d2951ab64dd95cbd0aaa5bcf57ab72ec54b539583d8906a3cb`  
		Last Modified: Fri, 07 Sep 2018 00:27:05 GMT  
		Size: 124.7 KB (124680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9267dd3c1699545521442580050aad3fb909a4d3082ff8cde7c846f62679a5fd`  
		Last Modified: Fri, 07 Sep 2018 00:28:30 GMT  
		Size: 33.2 MB (33153326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60a00a0c82ac735f5e53bee6d7dadc1122244a7d52e15e997d677ed29a1231b`  
		Last Modified: Fri, 07 Sep 2018 00:28:23 GMT  
		Size: 1.1 MB (1073256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd82c516299a92f563e88f861f27c0179a8010ddf8957d8812ac7ffaf8f582f`  
		Last Modified: Fri, 07 Sep 2018 08:39:54 GMT  
		Size: 4.4 KB (4446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47110c337634f86b17a128342fd5e127db1f6007beb16df5d58a6c722f2954d`  
		Last Modified: Fri, 07 Sep 2018 08:39:56 GMT  
		Size: 480.6 KB (480570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41e07d45004e065a2385c178429c666669c0ebfe063077d795eebdc7c87fec3`  
		Last Modified: Fri, 07 Sep 2018 08:39:53 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc150161e5794827c153c11f595db2ec6e6f75c615e5fe570acdfebbf2958aab`  
		Last Modified: Fri, 07 Sep 2018 08:40:04 GMT  
		Size: 32.5 MB (32523488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b257dc0e65a1e03c0405f07d86050ef90732ba2461b60706093683ec141c3adb`  
		Last Modified: Fri, 07 Sep 2018 08:39:53 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b93d688ce07d25b32535894b0ab2131221e2cf9a0e0b87ad05aa474c66c93b`  
		Last Modified: Fri, 07 Sep 2018 08:39:53 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b65c6c296a22227aa9f3670efc6c1469f079522e15d3d54e6a9c86a658ff337`  
		Last Modified: Fri, 07 Sep 2018 08:39:53 GMT  
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
$ docker pull ghost@sha256:feca53853ab091af29aab782f6b720790dbf61cb08190d846e14f86f78e6725b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:0.11` - linux; amd64

```console
$ docker pull ghost@sha256:67239d1a900359080e2d6931bd84e3e25216edd7a2c5423a161a540977920d41
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.5 MB (89454349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c90123abd998f95c56f7012827aeb57fc67b48d82be36f7925c53d8c0793a898`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:05:22 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 04 Sep 2018 22:05:23 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 04 Sep 2018 22:22:03 GMT
ENV NODE_VERSION=6.14.4
# Tue, 04 Sep 2018 22:22:36 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 04 Sep 2018 22:22:36 GMT
ENV YARN_VERSION=1.6.0
# Tue, 04 Sep 2018 22:22:38 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 04 Sep 2018 22:22:38 GMT
CMD ["node"]
# Wed, 05 Sep 2018 08:49:33 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 05 Sep 2018 08:49:33 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 08:49:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 05 Sep 2018 08:49:35 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 05 Sep 2018 08:49:35 GMT
WORKDIR /usr/src/ghost
# Wed, 05 Sep 2018 08:49:35 GMT
ENV GHOST_VERSION=0.11.13
# Wed, 05 Sep 2018 08:51:02 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 05 Sep 2018 08:51:03 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 05 Sep 2018 08:51:04 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 05 Sep 2018 08:51:04 GMT
VOLUME [/var/lib/ghost]
# Wed, 05 Sep 2018 08:51:04 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 05 Sep 2018 08:51:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Sep 2018 08:51:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 08:51:06 GMT
EXPOSE 2368/tcp
# Wed, 05 Sep 2018 08:51:06 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b186cf19f9edbd5ee7b8f79fb5fa0a8a21c4f4119149d8f900b2f4f00b440815`  
		Last Modified: Tue, 04 Sep 2018 22:51:46 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eadbf83122625b628be463f73c3c568462c43eaaeb284b83692ad754e5a126be`  
		Last Modified: Tue, 04 Sep 2018 22:51:46 GMT  
		Size: 124.7 KB (124684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e49e1459fc62f8ccc46d6155da2003bd87e9e52fa0793924a65111f35f3b9a90`  
		Last Modified: Tue, 04 Sep 2018 22:53:06 GMT  
		Size: 31.3 MB (31281293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a2e2a78588a490da57310c880f8a1731dc21af2feff27fc68dc43459bf468e9`  
		Last Modified: Tue, 04 Sep 2018 22:52:58 GMT  
		Size: 1.1 MB (1073253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beadad2728fa6dd4835e1b09e6c7e331ff735de8a50964bc68b58ecd371ea7ce`  
		Last Modified: Wed, 05 Sep 2018 08:55:38 GMT  
		Size: 4.5 KB (4456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adfafbe9e6d247283bea06641630a2eef513dc1ec05e9f18a5d6c41da878408e`  
		Last Modified: Wed, 05 Sep 2018 08:55:38 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5de8e2275c7267f87b6741561ffc07a4ccee771859f874183ad53a5745ffa4`  
		Last Modified: Wed, 05 Sep 2018 08:55:37 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c321fa106615d9c6b2dfc22a1321e8de44e577f2d37edcb182e5825190554c1a`  
		Last Modified: Wed, 05 Sep 2018 08:55:43 GMT  
		Size: 26.3 MB (26343928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402c8cf996d9f060b7ab006975eaf8d0a4b7ad0c88ea37358da37a8767dd3e35`  
		Last Modified: Wed, 05 Sep 2018 08:55:37 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54497e05029add33bc2e094d8587227932bfbe85b5f98b825b6a592217199145`  
		Last Modified: Wed, 05 Sep 2018 08:55:37 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a449048832efcc75d5362428073794e8768bb149d233c1fa495d85814a3cf75d`  
		Last Modified: Wed, 05 Sep 2018 08:55:37 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; arm variant v7

```console
$ docker pull ghost@sha256:de325e33fe69abb2eccad413a6bd2fcb11993f59567eb47d584504f5ffa9fd25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.5 MB (89537832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87be198ae10378a092c8191f931f26129aa70161b0afc52886515a377ba9ca5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:41 GMT
ADD file:e98fce6ce6aee310f31c67240c7a9f8cb7de0e6deb0967029e5528255c7a86f0 in / 
# Wed, 05 Sep 2018 11:59:45 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:37:49 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 05 Sep 2018 12:37:51 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Wed, 05 Sep 2018 12:39:26 GMT
ENV NODE_VERSION=6.14.4
# Wed, 05 Sep 2018 12:40:13 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 05 Sep 2018 12:40:13 GMT
ENV YARN_VERSION=1.6.0
# Wed, 05 Sep 2018 12:40:15 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 05 Sep 2018 12:40:16 GMT
CMD ["node"]
# Wed, 05 Sep 2018 16:37:03 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 05 Sep 2018 16:37:03 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 16:37:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 05 Sep 2018 16:37:05 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 05 Sep 2018 16:37:06 GMT
WORKDIR /usr/src/ghost
# Wed, 05 Sep 2018 16:37:06 GMT
ENV GHOST_VERSION=0.11.13
# Sat, 15 Sep 2018 12:13:48 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 15 Sep 2018 12:13:50 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 15 Sep 2018 12:13:51 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 15 Sep 2018 12:13:52 GMT
VOLUME [/var/lib/ghost]
# Sat, 15 Sep 2018 12:13:52 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 15 Sep 2018 12:13:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 15 Sep 2018 12:13:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 15 Sep 2018 12:13:54 GMT
EXPOSE 2368/tcp
# Sat, 15 Sep 2018 12:13:55 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:e7731670a93bf29e604d72ec2b8625589828c7d950c54f459fd2fb3fb8cf6e73`  
		Last Modified: Wed, 05 Sep 2018 12:09:08 GMT  
		Size: 26.3 MB (26287004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3833f3c3c9c9c989ac75d86e86bc9ae8abd5faf18edc479abf20010c8b28afa`  
		Last Modified: Wed, 05 Sep 2018 12:42:03 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8726d02c4595d8ef3e2dcea4629d70c1f47a940a7e6a40e1fc1cd935d993390f`  
		Last Modified: Wed, 05 Sep 2018 12:42:03 GMT  
		Size: 124.7 KB (124708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c7c34b02c4d6b9e20cbea0431da2b64524556e75a07f535e38f4f846620948`  
		Last Modified: Wed, 05 Sep 2018 12:42:54 GMT  
		Size: 29.4 MB (29449422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7e1dba3a8df78c89513f5afcda7fb1df3ed0ded066563bd53039538c8dc23a`  
		Last Modified: Wed, 05 Sep 2018 12:42:46 GMT  
		Size: 1.1 MB (1073270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3be4e981f934cc1bf1a8bd48305bc3cb893c8deca61c3fb0892aed4545b24a`  
		Last Modified: Sat, 15 Sep 2018 12:16:42 GMT  
		Size: 4.5 KB (4473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6727f62c58024b44f0840208f6bcc8515ec2ab4377b026909893d9449341a1f0`  
		Last Modified: Sat, 15 Sep 2018 12:16:42 GMT  
		Size: 475.3 KB (475264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12a1aa313c88d0f9cd721b787120fe2ba65119367ea2f263a1cc28b5524332a0`  
		Last Modified: Sat, 15 Sep 2018 12:16:40 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbaa54a5e5cce7612f72b31212d59ca2fb9e2ada16ae5e42018659b4ea774fa2`  
		Last Modified: Sat, 15 Sep 2018 12:16:57 GMT  
		Size: 32.1 MB (32118108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e66bf85f484382f4adabfd55049a33cfd4e3badb8ce2aca39ee3eb585d9333`  
		Last Modified: Sat, 15 Sep 2018 12:16:42 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a6c3091e867f6038118d788f9f530a3576a6264273457307b2cc232366a5a9`  
		Last Modified: Sat, 15 Sep 2018 12:16:41 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc780f72d85289f9b322ce9f6bf0ac084d9ca53933c4026dac792e2bfaa32a6a`  
		Last Modified: Sat, 15 Sep 2018 12:16:40 GMT  
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
$ docker pull ghost@sha256:f6378ba552d5c4f5248ff7b57aea90bfd9d41da56bf1c3d944d7ffa37ee1392f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.6 MB (97635326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19166d87e599d913734865ac65d2d5b8ff997d4c2fec353f6eb2be1277ecba35`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 23:56:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 06 Sep 2018 23:56:33 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Thu, 06 Sep 2018 23:58:07 GMT
ENV NODE_VERSION=6.14.4
# Thu, 06 Sep 2018 23:58:56 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 06 Sep 2018 23:58:56 GMT
ENV YARN_VERSION=1.6.0
# Thu, 06 Sep 2018 23:58:58 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 06 Sep 2018 23:58:58 GMT
CMD ["node"]
# Fri, 07 Sep 2018 08:35:20 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 07 Sep 2018 08:35:20 GMT
ENV GOSU_VERSION=1.10
# Fri, 07 Sep 2018 08:35:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 07 Sep 2018 08:35:21 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 07 Sep 2018 08:35:22 GMT
WORKDIR /usr/src/ghost
# Fri, 07 Sep 2018 08:35:22 GMT
ENV GHOST_VERSION=0.11.13
# Fri, 07 Sep 2018 08:37:44 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 07 Sep 2018 08:37:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 07 Sep 2018 08:37:45 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 07 Sep 2018 08:37:45 GMT
VOLUME [/var/lib/ghost]
# Fri, 07 Sep 2018 08:37:46 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 07 Sep 2018 08:37:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 07 Sep 2018 08:37:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Sep 2018 08:37:47 GMT
EXPOSE 2368/tcp
# Fri, 07 Sep 2018 08:37:47 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff302b22167139646862bfad9275f569dd63128e5a5d78707f204a056904b685`  
		Last Modified: Fri, 07 Sep 2018 00:27:05 GMT  
		Size: 4.4 KB (4387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da21a2f75f648d2951ab64dd95cbd0aaa5bcf57ab72ec54b539583d8906a3cb`  
		Last Modified: Fri, 07 Sep 2018 00:27:05 GMT  
		Size: 124.7 KB (124680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9267dd3c1699545521442580050aad3fb909a4d3082ff8cde7c846f62679a5fd`  
		Last Modified: Fri, 07 Sep 2018 00:28:30 GMT  
		Size: 33.2 MB (33153326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60a00a0c82ac735f5e53bee6d7dadc1122244a7d52e15e997d677ed29a1231b`  
		Last Modified: Fri, 07 Sep 2018 00:28:23 GMT  
		Size: 1.1 MB (1073256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd82c516299a92f563e88f861f27c0179a8010ddf8957d8812ac7ffaf8f582f`  
		Last Modified: Fri, 07 Sep 2018 08:39:54 GMT  
		Size: 4.4 KB (4446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47110c337634f86b17a128342fd5e127db1f6007beb16df5d58a6c722f2954d`  
		Last Modified: Fri, 07 Sep 2018 08:39:56 GMT  
		Size: 480.6 KB (480570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41e07d45004e065a2385c178429c666669c0ebfe063077d795eebdc7c87fec3`  
		Last Modified: Fri, 07 Sep 2018 08:39:53 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc150161e5794827c153c11f595db2ec6e6f75c615e5fe570acdfebbf2958aab`  
		Last Modified: Fri, 07 Sep 2018 08:40:04 GMT  
		Size: 32.5 MB (32523488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b257dc0e65a1e03c0405f07d86050ef90732ba2461b60706093683ec141c3adb`  
		Last Modified: Fri, 07 Sep 2018 08:39:53 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b93d688ce07d25b32535894b0ab2131221e2cf9a0e0b87ad05aa474c66c93b`  
		Last Modified: Fri, 07 Sep 2018 08:39:53 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b65c6c296a22227aa9f3670efc6c1469f079522e15d3d54e6a9c86a658ff337`  
		Last Modified: Fri, 07 Sep 2018 08:39:53 GMT  
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
$ docker pull ghost@sha256:feca53853ab091af29aab782f6b720790dbf61cb08190d846e14f86f78e6725b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:0.11.13` - linux; amd64

```console
$ docker pull ghost@sha256:67239d1a900359080e2d6931bd84e3e25216edd7a2c5423a161a540977920d41
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.5 MB (89454349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c90123abd998f95c56f7012827aeb57fc67b48d82be36f7925c53d8c0793a898`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:05:22 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 04 Sep 2018 22:05:23 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 04 Sep 2018 22:22:03 GMT
ENV NODE_VERSION=6.14.4
# Tue, 04 Sep 2018 22:22:36 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 04 Sep 2018 22:22:36 GMT
ENV YARN_VERSION=1.6.0
# Tue, 04 Sep 2018 22:22:38 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 04 Sep 2018 22:22:38 GMT
CMD ["node"]
# Wed, 05 Sep 2018 08:49:33 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 05 Sep 2018 08:49:33 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 08:49:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 05 Sep 2018 08:49:35 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 05 Sep 2018 08:49:35 GMT
WORKDIR /usr/src/ghost
# Wed, 05 Sep 2018 08:49:35 GMT
ENV GHOST_VERSION=0.11.13
# Wed, 05 Sep 2018 08:51:02 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 05 Sep 2018 08:51:03 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 05 Sep 2018 08:51:04 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 05 Sep 2018 08:51:04 GMT
VOLUME [/var/lib/ghost]
# Wed, 05 Sep 2018 08:51:04 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 05 Sep 2018 08:51:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Sep 2018 08:51:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 08:51:06 GMT
EXPOSE 2368/tcp
# Wed, 05 Sep 2018 08:51:06 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b186cf19f9edbd5ee7b8f79fb5fa0a8a21c4f4119149d8f900b2f4f00b440815`  
		Last Modified: Tue, 04 Sep 2018 22:51:46 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eadbf83122625b628be463f73c3c568462c43eaaeb284b83692ad754e5a126be`  
		Last Modified: Tue, 04 Sep 2018 22:51:46 GMT  
		Size: 124.7 KB (124684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e49e1459fc62f8ccc46d6155da2003bd87e9e52fa0793924a65111f35f3b9a90`  
		Last Modified: Tue, 04 Sep 2018 22:53:06 GMT  
		Size: 31.3 MB (31281293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a2e2a78588a490da57310c880f8a1731dc21af2feff27fc68dc43459bf468e9`  
		Last Modified: Tue, 04 Sep 2018 22:52:58 GMT  
		Size: 1.1 MB (1073253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beadad2728fa6dd4835e1b09e6c7e331ff735de8a50964bc68b58ecd371ea7ce`  
		Last Modified: Wed, 05 Sep 2018 08:55:38 GMT  
		Size: 4.5 KB (4456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adfafbe9e6d247283bea06641630a2eef513dc1ec05e9f18a5d6c41da878408e`  
		Last Modified: Wed, 05 Sep 2018 08:55:38 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5de8e2275c7267f87b6741561ffc07a4ccee771859f874183ad53a5745ffa4`  
		Last Modified: Wed, 05 Sep 2018 08:55:37 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c321fa106615d9c6b2dfc22a1321e8de44e577f2d37edcb182e5825190554c1a`  
		Last Modified: Wed, 05 Sep 2018 08:55:43 GMT  
		Size: 26.3 MB (26343928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402c8cf996d9f060b7ab006975eaf8d0a4b7ad0c88ea37358da37a8767dd3e35`  
		Last Modified: Wed, 05 Sep 2018 08:55:37 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54497e05029add33bc2e094d8587227932bfbe85b5f98b825b6a592217199145`  
		Last Modified: Wed, 05 Sep 2018 08:55:37 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a449048832efcc75d5362428073794e8768bb149d233c1fa495d85814a3cf75d`  
		Last Modified: Wed, 05 Sep 2018 08:55:37 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.13` - linux; arm variant v7

```console
$ docker pull ghost@sha256:de325e33fe69abb2eccad413a6bd2fcb11993f59567eb47d584504f5ffa9fd25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.5 MB (89537832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87be198ae10378a092c8191f931f26129aa70161b0afc52886515a377ba9ca5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:41 GMT
ADD file:e98fce6ce6aee310f31c67240c7a9f8cb7de0e6deb0967029e5528255c7a86f0 in / 
# Wed, 05 Sep 2018 11:59:45 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:37:49 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 05 Sep 2018 12:37:51 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Wed, 05 Sep 2018 12:39:26 GMT
ENV NODE_VERSION=6.14.4
# Wed, 05 Sep 2018 12:40:13 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 05 Sep 2018 12:40:13 GMT
ENV YARN_VERSION=1.6.0
# Wed, 05 Sep 2018 12:40:15 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 05 Sep 2018 12:40:16 GMT
CMD ["node"]
# Wed, 05 Sep 2018 16:37:03 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 05 Sep 2018 16:37:03 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 16:37:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 05 Sep 2018 16:37:05 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 05 Sep 2018 16:37:06 GMT
WORKDIR /usr/src/ghost
# Wed, 05 Sep 2018 16:37:06 GMT
ENV GHOST_VERSION=0.11.13
# Sat, 15 Sep 2018 12:13:48 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 15 Sep 2018 12:13:50 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 15 Sep 2018 12:13:51 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 15 Sep 2018 12:13:52 GMT
VOLUME [/var/lib/ghost]
# Sat, 15 Sep 2018 12:13:52 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 15 Sep 2018 12:13:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 15 Sep 2018 12:13:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 15 Sep 2018 12:13:54 GMT
EXPOSE 2368/tcp
# Sat, 15 Sep 2018 12:13:55 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:e7731670a93bf29e604d72ec2b8625589828c7d950c54f459fd2fb3fb8cf6e73`  
		Last Modified: Wed, 05 Sep 2018 12:09:08 GMT  
		Size: 26.3 MB (26287004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3833f3c3c9c9c989ac75d86e86bc9ae8abd5faf18edc479abf20010c8b28afa`  
		Last Modified: Wed, 05 Sep 2018 12:42:03 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8726d02c4595d8ef3e2dcea4629d70c1f47a940a7e6a40e1fc1cd935d993390f`  
		Last Modified: Wed, 05 Sep 2018 12:42:03 GMT  
		Size: 124.7 KB (124708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c7c34b02c4d6b9e20cbea0431da2b64524556e75a07f535e38f4f846620948`  
		Last Modified: Wed, 05 Sep 2018 12:42:54 GMT  
		Size: 29.4 MB (29449422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7e1dba3a8df78c89513f5afcda7fb1df3ed0ded066563bd53039538c8dc23a`  
		Last Modified: Wed, 05 Sep 2018 12:42:46 GMT  
		Size: 1.1 MB (1073270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3be4e981f934cc1bf1a8bd48305bc3cb893c8deca61c3fb0892aed4545b24a`  
		Last Modified: Sat, 15 Sep 2018 12:16:42 GMT  
		Size: 4.5 KB (4473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6727f62c58024b44f0840208f6bcc8515ec2ab4377b026909893d9449341a1f0`  
		Last Modified: Sat, 15 Sep 2018 12:16:42 GMT  
		Size: 475.3 KB (475264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12a1aa313c88d0f9cd721b787120fe2ba65119367ea2f263a1cc28b5524332a0`  
		Last Modified: Sat, 15 Sep 2018 12:16:40 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbaa54a5e5cce7612f72b31212d59ca2fb9e2ada16ae5e42018659b4ea774fa2`  
		Last Modified: Sat, 15 Sep 2018 12:16:57 GMT  
		Size: 32.1 MB (32118108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e66bf85f484382f4adabfd55049a33cfd4e3badb8ce2aca39ee3eb585d9333`  
		Last Modified: Sat, 15 Sep 2018 12:16:42 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a6c3091e867f6038118d788f9f530a3576a6264273457307b2cc232366a5a9`  
		Last Modified: Sat, 15 Sep 2018 12:16:41 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc780f72d85289f9b322ce9f6bf0ac084d9ca53933c4026dac792e2bfaa32a6a`  
		Last Modified: Sat, 15 Sep 2018 12:16:40 GMT  
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
$ docker pull ghost@sha256:f6378ba552d5c4f5248ff7b57aea90bfd9d41da56bf1c3d944d7ffa37ee1392f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.6 MB (97635326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19166d87e599d913734865ac65d2d5b8ff997d4c2fec353f6eb2be1277ecba35`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 23:56:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 06 Sep 2018 23:56:33 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Thu, 06 Sep 2018 23:58:07 GMT
ENV NODE_VERSION=6.14.4
# Thu, 06 Sep 2018 23:58:56 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 06 Sep 2018 23:58:56 GMT
ENV YARN_VERSION=1.6.0
# Thu, 06 Sep 2018 23:58:58 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 06 Sep 2018 23:58:58 GMT
CMD ["node"]
# Fri, 07 Sep 2018 08:35:20 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 07 Sep 2018 08:35:20 GMT
ENV GOSU_VERSION=1.10
# Fri, 07 Sep 2018 08:35:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 07 Sep 2018 08:35:21 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 07 Sep 2018 08:35:22 GMT
WORKDIR /usr/src/ghost
# Fri, 07 Sep 2018 08:35:22 GMT
ENV GHOST_VERSION=0.11.13
# Fri, 07 Sep 2018 08:37:44 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 07 Sep 2018 08:37:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 07 Sep 2018 08:37:45 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 07 Sep 2018 08:37:45 GMT
VOLUME [/var/lib/ghost]
# Fri, 07 Sep 2018 08:37:46 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 07 Sep 2018 08:37:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 07 Sep 2018 08:37:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Sep 2018 08:37:47 GMT
EXPOSE 2368/tcp
# Fri, 07 Sep 2018 08:37:47 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff302b22167139646862bfad9275f569dd63128e5a5d78707f204a056904b685`  
		Last Modified: Fri, 07 Sep 2018 00:27:05 GMT  
		Size: 4.4 KB (4387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da21a2f75f648d2951ab64dd95cbd0aaa5bcf57ab72ec54b539583d8906a3cb`  
		Last Modified: Fri, 07 Sep 2018 00:27:05 GMT  
		Size: 124.7 KB (124680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9267dd3c1699545521442580050aad3fb909a4d3082ff8cde7c846f62679a5fd`  
		Last Modified: Fri, 07 Sep 2018 00:28:30 GMT  
		Size: 33.2 MB (33153326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60a00a0c82ac735f5e53bee6d7dadc1122244a7d52e15e997d677ed29a1231b`  
		Last Modified: Fri, 07 Sep 2018 00:28:23 GMT  
		Size: 1.1 MB (1073256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd82c516299a92f563e88f861f27c0179a8010ddf8957d8812ac7ffaf8f582f`  
		Last Modified: Fri, 07 Sep 2018 08:39:54 GMT  
		Size: 4.4 KB (4446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47110c337634f86b17a128342fd5e127db1f6007beb16df5d58a6c722f2954d`  
		Last Modified: Fri, 07 Sep 2018 08:39:56 GMT  
		Size: 480.6 KB (480570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41e07d45004e065a2385c178429c666669c0ebfe063077d795eebdc7c87fec3`  
		Last Modified: Fri, 07 Sep 2018 08:39:53 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc150161e5794827c153c11f595db2ec6e6f75c615e5fe570acdfebbf2958aab`  
		Last Modified: Fri, 07 Sep 2018 08:40:04 GMT  
		Size: 32.5 MB (32523488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b257dc0e65a1e03c0405f07d86050ef90732ba2461b60706093683ec141c3adb`  
		Last Modified: Fri, 07 Sep 2018 08:39:53 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b93d688ce07d25b32535894b0ab2131221e2cf9a0e0b87ad05aa474c66c93b`  
		Last Modified: Fri, 07 Sep 2018 08:39:53 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b65c6c296a22227aa9f3670efc6c1469f079522e15d3d54e6a9c86a658ff337`  
		Last Modified: Fri, 07 Sep 2018 08:39:53 GMT  
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
$ docker pull ghost@sha256:968472e6679e5c82d013526f543528a4c3a979f56cf8677ccf8dd8058d176b7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11.13-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:957ba294f37d920d56374e79c4eb2955e6aa30a5db50b16fe72f1b728baa03cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.5 MB (46450425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71cb8cff9db53c5065af289daef7a733981654c5c14864a1328cde7fde74d8d6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 11 Sep 2018 22:20:45 GMT
ADD file:4b806a0c031f19a4609ebde02464b2139efebfdf9f5d1bba13cf1c316938530d in / 
# Tue, 11 Sep 2018 22:20:45 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:37:35 GMT
ENV NODE_VERSION=6.14.4
# Wed, 12 Sep 2018 00:58:19 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 12 Sep 2018 00:58:20 GMT
ENV YARN_VERSION=1.6.0
# Wed, 12 Sep 2018 00:58:25 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 12 Sep 2018 00:58:25 GMT
CMD ["node"]
# Wed, 12 Sep 2018 05:09:00 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 05:09:01 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 12 Sep 2018 05:09:02 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 12 Sep 2018 05:09:02 GMT
WORKDIR /usr/src/ghost
# Wed, 12 Sep 2018 05:09:02 GMT
ENV GHOST_VERSION=0.11.13
# Wed, 12 Sep 2018 05:09:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 12 Sep 2018 05:09:50 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 12 Sep 2018 05:09:50 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 12 Sep 2018 05:09:50 GMT
VOLUME [/var/lib/ghost]
# Wed, 12 Sep 2018 05:09:51 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Wed, 12 Sep 2018 05:09:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 05:09:51 GMT
EXPOSE 2368/tcp
# Wed, 12 Sep 2018 05:09:51 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:d6a5679aa3cfc52503fac8e2345790783537564df5af43355ec662d7703aacbf`  
		Last Modified: Tue, 11 Sep 2018 22:22:09 GMT  
		Size: 2.4 MB (2387846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc45d588a77a5c05e57687f6eddfbd1b378fbacb36ddc7e4ff08d95718290e0`  
		Last Modified: Wed, 12 Sep 2018 01:36:32 GMT  
		Size: 15.5 MB (15516416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d670f4c5d65c4166b35c4ec65ad3d1e4c01d8cc062cd3391d8ffc0efc7f24697`  
		Last Modified: Wed, 12 Sep 2018 01:36:28 GMT  
		Size: 1.1 MB (1080090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34aa91d7ba6c04ee53df620009986a3f71edab72c22f93d579b4f8beee52cee6`  
		Last Modified: Wed, 12 Sep 2018 05:11:42 GMT  
		Size: 8.4 KB (8362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc9a5a75bd116d3ed85f106c7f89b0abdebcf77c199c65d661b274e90e9226c`  
		Last Modified: Wed, 12 Sep 2018 05:11:41 GMT  
		Size: 1.4 MB (1360666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68529e3a1957c4c2ea3c13154acd9901707a68664e820326975f81cb30ea8cb9`  
		Last Modified: Wed, 12 Sep 2018 05:11:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf43af8b2920ad5ce201c12b6318ce430280063ccd07d7e06402ebf883cdecd9`  
		Last Modified: Wed, 12 Sep 2018 05:11:48 GMT  
		Size: 26.1 MB (26096085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:271fdf6e7c0acb3606e3ffbbd99dfa8dd7bf41374195539ed9ff059544c56a61`  
		Last Modified: Wed, 12 Sep 2018 05:11:40 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a664f966702e88b713b0be1a50dc1b085d73caa64523815150af14a58e86acc`  
		Last Modified: Wed, 12 Sep 2018 05:11:40 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11-alpine`

```console
$ docker pull ghost@sha256:968472e6679e5c82d013526f543528a4c3a979f56cf8677ccf8dd8058d176b7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:957ba294f37d920d56374e79c4eb2955e6aa30a5db50b16fe72f1b728baa03cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.5 MB (46450425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71cb8cff9db53c5065af289daef7a733981654c5c14864a1328cde7fde74d8d6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 11 Sep 2018 22:20:45 GMT
ADD file:4b806a0c031f19a4609ebde02464b2139efebfdf9f5d1bba13cf1c316938530d in / 
# Tue, 11 Sep 2018 22:20:45 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:37:35 GMT
ENV NODE_VERSION=6.14.4
# Wed, 12 Sep 2018 00:58:19 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 12 Sep 2018 00:58:20 GMT
ENV YARN_VERSION=1.6.0
# Wed, 12 Sep 2018 00:58:25 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 12 Sep 2018 00:58:25 GMT
CMD ["node"]
# Wed, 12 Sep 2018 05:09:00 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 05:09:01 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 12 Sep 2018 05:09:02 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 12 Sep 2018 05:09:02 GMT
WORKDIR /usr/src/ghost
# Wed, 12 Sep 2018 05:09:02 GMT
ENV GHOST_VERSION=0.11.13
# Wed, 12 Sep 2018 05:09:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 12 Sep 2018 05:09:50 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 12 Sep 2018 05:09:50 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 12 Sep 2018 05:09:50 GMT
VOLUME [/var/lib/ghost]
# Wed, 12 Sep 2018 05:09:51 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Wed, 12 Sep 2018 05:09:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 05:09:51 GMT
EXPOSE 2368/tcp
# Wed, 12 Sep 2018 05:09:51 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:d6a5679aa3cfc52503fac8e2345790783537564df5af43355ec662d7703aacbf`  
		Last Modified: Tue, 11 Sep 2018 22:22:09 GMT  
		Size: 2.4 MB (2387846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc45d588a77a5c05e57687f6eddfbd1b378fbacb36ddc7e4ff08d95718290e0`  
		Last Modified: Wed, 12 Sep 2018 01:36:32 GMT  
		Size: 15.5 MB (15516416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d670f4c5d65c4166b35c4ec65ad3d1e4c01d8cc062cd3391d8ffc0efc7f24697`  
		Last Modified: Wed, 12 Sep 2018 01:36:28 GMT  
		Size: 1.1 MB (1080090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34aa91d7ba6c04ee53df620009986a3f71edab72c22f93d579b4f8beee52cee6`  
		Last Modified: Wed, 12 Sep 2018 05:11:42 GMT  
		Size: 8.4 KB (8362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc9a5a75bd116d3ed85f106c7f89b0abdebcf77c199c65d661b274e90e9226c`  
		Last Modified: Wed, 12 Sep 2018 05:11:41 GMT  
		Size: 1.4 MB (1360666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68529e3a1957c4c2ea3c13154acd9901707a68664e820326975f81cb30ea8cb9`  
		Last Modified: Wed, 12 Sep 2018 05:11:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf43af8b2920ad5ce201c12b6318ce430280063ccd07d7e06402ebf883cdecd9`  
		Last Modified: Wed, 12 Sep 2018 05:11:48 GMT  
		Size: 26.1 MB (26096085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:271fdf6e7c0acb3606e3ffbbd99dfa8dd7bf41374195539ed9ff059544c56a61`  
		Last Modified: Wed, 12 Sep 2018 05:11:40 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a664f966702e88b713b0be1a50dc1b085d73caa64523815150af14a58e86acc`  
		Last Modified: Wed, 12 Sep 2018 05:11:40 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:968472e6679e5c82d013526f543528a4c3a979f56cf8677ccf8dd8058d176b7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:957ba294f37d920d56374e79c4eb2955e6aa30a5db50b16fe72f1b728baa03cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.5 MB (46450425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71cb8cff9db53c5065af289daef7a733981654c5c14864a1328cde7fde74d8d6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 11 Sep 2018 22:20:45 GMT
ADD file:4b806a0c031f19a4609ebde02464b2139efebfdf9f5d1bba13cf1c316938530d in / 
# Tue, 11 Sep 2018 22:20:45 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:37:35 GMT
ENV NODE_VERSION=6.14.4
# Wed, 12 Sep 2018 00:58:19 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 12 Sep 2018 00:58:20 GMT
ENV YARN_VERSION=1.6.0
# Wed, 12 Sep 2018 00:58:25 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 12 Sep 2018 00:58:25 GMT
CMD ["node"]
# Wed, 12 Sep 2018 05:09:00 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 05:09:01 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 12 Sep 2018 05:09:02 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 12 Sep 2018 05:09:02 GMT
WORKDIR /usr/src/ghost
# Wed, 12 Sep 2018 05:09:02 GMT
ENV GHOST_VERSION=0.11.13
# Wed, 12 Sep 2018 05:09:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 12 Sep 2018 05:09:50 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 12 Sep 2018 05:09:50 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 12 Sep 2018 05:09:50 GMT
VOLUME [/var/lib/ghost]
# Wed, 12 Sep 2018 05:09:51 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Wed, 12 Sep 2018 05:09:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 05:09:51 GMT
EXPOSE 2368/tcp
# Wed, 12 Sep 2018 05:09:51 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:d6a5679aa3cfc52503fac8e2345790783537564df5af43355ec662d7703aacbf`  
		Last Modified: Tue, 11 Sep 2018 22:22:09 GMT  
		Size: 2.4 MB (2387846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc45d588a77a5c05e57687f6eddfbd1b378fbacb36ddc7e4ff08d95718290e0`  
		Last Modified: Wed, 12 Sep 2018 01:36:32 GMT  
		Size: 15.5 MB (15516416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d670f4c5d65c4166b35c4ec65ad3d1e4c01d8cc062cd3391d8ffc0efc7f24697`  
		Last Modified: Wed, 12 Sep 2018 01:36:28 GMT  
		Size: 1.1 MB (1080090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34aa91d7ba6c04ee53df620009986a3f71edab72c22f93d579b4f8beee52cee6`  
		Last Modified: Wed, 12 Sep 2018 05:11:42 GMT  
		Size: 8.4 KB (8362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc9a5a75bd116d3ed85f106c7f89b0abdebcf77c199c65d661b274e90e9226c`  
		Last Modified: Wed, 12 Sep 2018 05:11:41 GMT  
		Size: 1.4 MB (1360666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68529e3a1957c4c2ea3c13154acd9901707a68664e820326975f81cb30ea8cb9`  
		Last Modified: Wed, 12 Sep 2018 05:11:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf43af8b2920ad5ce201c12b6318ce430280063ccd07d7e06402ebf883cdecd9`  
		Last Modified: Wed, 12 Sep 2018 05:11:48 GMT  
		Size: 26.1 MB (26096085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:271fdf6e7c0acb3606e3ffbbd99dfa8dd7bf41374195539ed9ff059544c56a61`  
		Last Modified: Wed, 12 Sep 2018 05:11:40 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a664f966702e88b713b0be1a50dc1b085d73caa64523815150af14a58e86acc`  
		Last Modified: Wed, 12 Sep 2018 05:11:40 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1`

```console
$ docker pull ghost@sha256:9deaf2b09494868bb15fab57385ed2811edea800efc7acdca7aaabc3ec20d7ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `ghost:1` - linux; amd64

```console
$ docker pull ghost@sha256:fb76c5470ff8c9cc09f4041510081fe2ea4d7ea2bf102edc63c4386588ddeb9b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.3 MB (186263422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:258abfca2c6f3fe2401aa80d9a03e0ac7a94ff9a15bdbcca17238eaf837e35f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:05:22 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 04 Sep 2018 22:05:23 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 11 Sep 2018 17:38:49 GMT
ENV NODE_VERSION=8.12.0
# Tue, 11 Sep 2018 17:39:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 11 Sep 2018 17:39:23 GMT
ENV YARN_VERSION=1.9.4
# Tue, 11 Sep 2018 17:39:25 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 11 Sep 2018 17:39:25 GMT
CMD ["node"]
# Tue, 11 Sep 2018 17:58:19 GMT
ENV GOSU_VERSION=1.10
# Tue, 11 Sep 2018 17:58:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Sep 2018 17:58:20 GMT
ENV NODE_ENV=production
# Sat, 15 Sep 2018 01:19:34 GMT
ENV GHOST_CLI_VERSION=1.9.4
# Sat, 15 Sep 2018 01:19:51 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 15 Sep 2018 01:19:52 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 15 Sep 2018 01:19:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 15 Sep 2018 01:22:06 GMT
ENV GHOST_VERSION=1.25.5
# Sat, 15 Sep 2018 01:22:37 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 15 Sep 2018 01:22:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 15 Sep 2018 01:22:44 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 15 Sep 2018 01:22:45 GMT
WORKDIR /var/lib/ghost
# Sat, 15 Sep 2018 01:22:45 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 15 Sep 2018 01:22:45 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 15 Sep 2018 01:22:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 15 Sep 2018 01:22:46 GMT
EXPOSE 2368/tcp
# Sat, 15 Sep 2018 01:22:46 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b186cf19f9edbd5ee7b8f79fb5fa0a8a21c4f4119149d8f900b2f4f00b440815`  
		Last Modified: Tue, 04 Sep 2018 22:51:46 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eadbf83122625b628be463f73c3c568462c43eaaeb284b83692ad754e5a126be`  
		Last Modified: Tue, 04 Sep 2018 22:51:46 GMT  
		Size: 124.7 KB (124684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf528b18b6cecd9af494946988b394fbb56142c4d7f734b37a1d8bc9d97195e7`  
		Last Modified: Tue, 11 Sep 2018 17:42:09 GMT  
		Size: 34.4 MB (34397026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075c4f074e900b360d81d7cc77902d05b0cf228fd625bc08a80b129a86181167`  
		Last Modified: Tue, 11 Sep 2018 17:42:03 GMT  
		Size: 1.1 MB (1069857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04fbcf905a6288979f4d671581fed69e2531c6f9696c30481e615c8b53925795`  
		Last Modified: Tue, 11 Sep 2018 18:02:25 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da260e2dcb3cc1c7978f661f895e0781201b77a1dd6f4ea25d7974655cff6177`  
		Last Modified: Sat, 15 Sep 2018 01:24:03 GMT  
		Size: 18.0 MB (18022106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80663c954c937c569dda156c963b2bbbeaacb9d5e5b87e3b1a7dde3aefcafd6f`  
		Last Modified: Sat, 15 Sep 2018 01:25:59 GMT  
		Size: 101.8 MB (101823848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf0676774fe87fd73f3f5a9820e8fda7d04c421b670c037b3975ebc6f204239`  
		Last Modified: Sat, 15 Sep 2018 01:25:39 GMT  
		Size: 199.7 KB (199697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ca87ee684a0b2e80fb4047bd145fb7f02eefc244e8aad123d084ed3badb217`  
		Last Modified: Sat, 15 Sep 2018 01:25:39 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; arm variant v7

```console
$ docker pull ghost@sha256:72272c5d9382ddc632bb3f82cd535ead834772d5f04cefaefde4a9de0c74afe8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.2 MB (193218376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dce480751a91dc6677395649e7d58e0fe7ca0f4797369777c7a2223a1eb58b65`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:41 GMT
ADD file:e98fce6ce6aee310f31c67240c7a9f8cb7de0e6deb0967029e5528255c7a86f0 in / 
# Wed, 05 Sep 2018 11:59:45 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:37:49 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 05 Sep 2018 12:37:51 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Wed, 12 Sep 2018 11:58:47 GMT
ENV NODE_VERSION=8.12.0
# Wed, 12 Sep 2018 11:59:42 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 12 Sep 2018 11:59:46 GMT
ENV YARN_VERSION=1.9.4
# Wed, 12 Sep 2018 11:59:48 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 12 Sep 2018 11:59:48 GMT
CMD ["node"]
# Thu, 13 Sep 2018 11:57:40 GMT
ENV GOSU_VERSION=1.10
# Thu, 13 Sep 2018 11:57:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 13 Sep 2018 11:57:42 GMT
ENV NODE_ENV=production
# Sat, 15 Sep 2018 11:58:17 GMT
ENV GHOST_CLI_VERSION=1.9.4
# Sat, 15 Sep 2018 11:59:00 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 15 Sep 2018 11:59:02 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 15 Sep 2018 11:59:02 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 15 Sep 2018 12:04:28 GMT
ENV GHOST_VERSION=1.25.5
# Sat, 15 Sep 2018 12:05:56 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 15 Sep 2018 12:06:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 15 Sep 2018 12:09:28 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 15 Sep 2018 12:09:28 GMT
WORKDIR /var/lib/ghost
# Sat, 15 Sep 2018 12:09:29 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 15 Sep 2018 12:09:30 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 15 Sep 2018 12:09:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 15 Sep 2018 12:09:30 GMT
EXPOSE 2368/tcp
# Sat, 15 Sep 2018 12:09:31 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e7731670a93bf29e604d72ec2b8625589828c7d950c54f459fd2fb3fb8cf6e73`  
		Last Modified: Wed, 05 Sep 2018 12:09:08 GMT  
		Size: 26.3 MB (26287004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3833f3c3c9c9c989ac75d86e86bc9ae8abd5faf18edc479abf20010c8b28afa`  
		Last Modified: Wed, 05 Sep 2018 12:42:03 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8726d02c4595d8ef3e2dcea4629d70c1f47a940a7e6a40e1fc1cd935d993390f`  
		Last Modified: Wed, 05 Sep 2018 12:42:03 GMT  
		Size: 124.7 KB (124708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727ef2c9890657b1a1570903ced033844ce622784d3bca84334f73dd7e8ce988`  
		Last Modified: Wed, 12 Sep 2018 12:02:54 GMT  
		Size: 32.6 MB (32575232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef663495d5b4363c2265aa056eae65f68afd5b5d99df3988092af637ec0edd4`  
		Last Modified: Wed, 12 Sep 2018 12:02:45 GMT  
		Size: 1.1 MB (1069882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a2f4bf08f345e66a65a7143db17394366aa9719889213eacf779aea4c6d388`  
		Last Modified: Sat, 15 Sep 2018 12:14:23 GMT  
		Size: 475.3 KB (475271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24af68bee8d2aa10c7769ad5c6304a86ac8a21a192069e886c92e2b84126ae3`  
		Last Modified: Sat, 15 Sep 2018 12:14:33 GMT  
		Size: 18.0 MB (18027934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54ad36cb65f4f16c0efcbd8b9f7edf0433db17eb218c09af2c108181086cb6aa`  
		Last Modified: Sat, 15 Sep 2018 12:16:10 GMT  
		Size: 94.1 MB (94107718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b36664c043b83bed88e678c5423ff988e541af0ad0aa64737022e1ebda4c290a`  
		Last Modified: Sat, 15 Sep 2018 12:15:44 GMT  
		Size: 20.5 MB (20545641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8842f1a09fdff37ba6b57210bd4f2890b722fc0c361ea46125deee8d43844013`  
		Last Modified: Sat, 15 Sep 2018 12:15:38 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; 386

```console
$ docker pull ghost@sha256:155e65d2607d3705dad92eb8408597e8d91864de5a9029c0f5570ca6bd7b3ee0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.8 MB (201794743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3273fef1e6ae94ebac89f6eb0139b0f065cb7a45f18429f7f87bfffd5ba0036c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 23:56:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 06 Sep 2018 23:56:33 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Wed, 12 Sep 2018 10:59:18 GMT
ENV NODE_VERSION=8.12.0
# Wed, 12 Sep 2018 11:00:10 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 12 Sep 2018 11:00:10 GMT
ENV YARN_VERSION=1.9.4
# Wed, 12 Sep 2018 11:00:11 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 12 Sep 2018 11:00:12 GMT
CMD ["node"]
# Wed, 12 Sep 2018 17:29:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 12 Sep 2018 17:29:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 12 Sep 2018 17:29:31 GMT
ENV NODE_ENV=production
# Sat, 15 Sep 2018 10:38:38 GMT
ENV GHOST_CLI_VERSION=1.9.4
# Sat, 15 Sep 2018 10:38:56 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 15 Sep 2018 10:38:57 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 15 Sep 2018 10:38:57 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 15 Sep 2018 10:42:19 GMT
ENV GHOST_VERSION=1.25.5
# Sat, 15 Sep 2018 10:42:54 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 15 Sep 2018 10:42:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 15 Sep 2018 10:44:58 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 15 Sep 2018 10:44:59 GMT
WORKDIR /var/lib/ghost
# Sat, 15 Sep 2018 10:44:59 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 15 Sep 2018 10:44:59 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 15 Sep 2018 10:44:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 15 Sep 2018 10:44:59 GMT
EXPOSE 2368/tcp
# Sat, 15 Sep 2018 10:45:00 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff302b22167139646862bfad9275f569dd63128e5a5d78707f204a056904b685`  
		Last Modified: Fri, 07 Sep 2018 00:27:05 GMT  
		Size: 4.4 KB (4387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da21a2f75f648d2951ab64dd95cbd0aaa5bcf57ab72ec54b539583d8906a3cb`  
		Last Modified: Fri, 07 Sep 2018 00:27:05 GMT  
		Size: 124.7 KB (124680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8eab81ffeb1f5efe085b2308641422355ad7979850c6421fe1e5b4da653523`  
		Last Modified: Wed, 12 Sep 2018 11:29:27 GMT  
		Size: 36.3 MB (36322155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83ff63b36d9500a7a0113117b83e2ee4f376f216ee0a081651d7c39e0d6abe6`  
		Last Modified: Wed, 12 Sep 2018 11:29:17 GMT  
		Size: 1.1 MB (1069850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b18b8d3bead6ebe5c528c9c0fe80228cb00ce35d1c364d04ed35fafd494f36e4`  
		Last Modified: Wed, 12 Sep 2018 17:36:33 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebdf35d751b7c1be855188cd9b2ae5ec017d68e66eb61ca88828b13ee6654f6d`  
		Last Modified: Sat, 15 Sep 2018 10:45:49 GMT  
		Size: 18.0 MB (18020502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c1aea7c86a9308a9733d785c3e1d2f18847f4d4098cd5a9a1cbc18dbefc1a7c`  
		Last Modified: Sat, 15 Sep 2018 10:46:50 GMT  
		Size: 94.1 MB (94106664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7eeeed4d47842c4ea0d166b0ffa99c0d1f83c360678a719f72927bd2615ad81`  
		Last Modified: Sat, 15 Sep 2018 10:46:31 GMT  
		Size: 21.4 MB (21395297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b687d09918c985a58e241f7eb2557018b791345421636e9177e4c5ff46d5ef8b`  
		Last Modified: Sat, 15 Sep 2018 10:46:24 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25`

```console
$ docker pull ghost@sha256:9deaf2b09494868bb15fab57385ed2811edea800efc7acdca7aaabc3ec20d7ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `ghost:1.25` - linux; amd64

```console
$ docker pull ghost@sha256:fb76c5470ff8c9cc09f4041510081fe2ea4d7ea2bf102edc63c4386588ddeb9b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.3 MB (186263422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:258abfca2c6f3fe2401aa80d9a03e0ac7a94ff9a15bdbcca17238eaf837e35f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:05:22 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 04 Sep 2018 22:05:23 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 11 Sep 2018 17:38:49 GMT
ENV NODE_VERSION=8.12.0
# Tue, 11 Sep 2018 17:39:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 11 Sep 2018 17:39:23 GMT
ENV YARN_VERSION=1.9.4
# Tue, 11 Sep 2018 17:39:25 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 11 Sep 2018 17:39:25 GMT
CMD ["node"]
# Tue, 11 Sep 2018 17:58:19 GMT
ENV GOSU_VERSION=1.10
# Tue, 11 Sep 2018 17:58:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Sep 2018 17:58:20 GMT
ENV NODE_ENV=production
# Sat, 15 Sep 2018 01:19:34 GMT
ENV GHOST_CLI_VERSION=1.9.4
# Sat, 15 Sep 2018 01:19:51 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 15 Sep 2018 01:19:52 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 15 Sep 2018 01:19:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 15 Sep 2018 01:22:06 GMT
ENV GHOST_VERSION=1.25.5
# Sat, 15 Sep 2018 01:22:37 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 15 Sep 2018 01:22:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 15 Sep 2018 01:22:44 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 15 Sep 2018 01:22:45 GMT
WORKDIR /var/lib/ghost
# Sat, 15 Sep 2018 01:22:45 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 15 Sep 2018 01:22:45 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 15 Sep 2018 01:22:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 15 Sep 2018 01:22:46 GMT
EXPOSE 2368/tcp
# Sat, 15 Sep 2018 01:22:46 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b186cf19f9edbd5ee7b8f79fb5fa0a8a21c4f4119149d8f900b2f4f00b440815`  
		Last Modified: Tue, 04 Sep 2018 22:51:46 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eadbf83122625b628be463f73c3c568462c43eaaeb284b83692ad754e5a126be`  
		Last Modified: Tue, 04 Sep 2018 22:51:46 GMT  
		Size: 124.7 KB (124684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf528b18b6cecd9af494946988b394fbb56142c4d7f734b37a1d8bc9d97195e7`  
		Last Modified: Tue, 11 Sep 2018 17:42:09 GMT  
		Size: 34.4 MB (34397026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075c4f074e900b360d81d7cc77902d05b0cf228fd625bc08a80b129a86181167`  
		Last Modified: Tue, 11 Sep 2018 17:42:03 GMT  
		Size: 1.1 MB (1069857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04fbcf905a6288979f4d671581fed69e2531c6f9696c30481e615c8b53925795`  
		Last Modified: Tue, 11 Sep 2018 18:02:25 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da260e2dcb3cc1c7978f661f895e0781201b77a1dd6f4ea25d7974655cff6177`  
		Last Modified: Sat, 15 Sep 2018 01:24:03 GMT  
		Size: 18.0 MB (18022106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80663c954c937c569dda156c963b2bbbeaacb9d5e5b87e3b1a7dde3aefcafd6f`  
		Last Modified: Sat, 15 Sep 2018 01:25:59 GMT  
		Size: 101.8 MB (101823848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf0676774fe87fd73f3f5a9820e8fda7d04c421b670c037b3975ebc6f204239`  
		Last Modified: Sat, 15 Sep 2018 01:25:39 GMT  
		Size: 199.7 KB (199697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ca87ee684a0b2e80fb4047bd145fb7f02eefc244e8aad123d084ed3badb217`  
		Last Modified: Sat, 15 Sep 2018 01:25:39 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; arm variant v7

```console
$ docker pull ghost@sha256:72272c5d9382ddc632bb3f82cd535ead834772d5f04cefaefde4a9de0c74afe8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.2 MB (193218376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dce480751a91dc6677395649e7d58e0fe7ca0f4797369777c7a2223a1eb58b65`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:41 GMT
ADD file:e98fce6ce6aee310f31c67240c7a9f8cb7de0e6deb0967029e5528255c7a86f0 in / 
# Wed, 05 Sep 2018 11:59:45 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:37:49 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 05 Sep 2018 12:37:51 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Wed, 12 Sep 2018 11:58:47 GMT
ENV NODE_VERSION=8.12.0
# Wed, 12 Sep 2018 11:59:42 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 12 Sep 2018 11:59:46 GMT
ENV YARN_VERSION=1.9.4
# Wed, 12 Sep 2018 11:59:48 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 12 Sep 2018 11:59:48 GMT
CMD ["node"]
# Thu, 13 Sep 2018 11:57:40 GMT
ENV GOSU_VERSION=1.10
# Thu, 13 Sep 2018 11:57:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 13 Sep 2018 11:57:42 GMT
ENV NODE_ENV=production
# Sat, 15 Sep 2018 11:58:17 GMT
ENV GHOST_CLI_VERSION=1.9.4
# Sat, 15 Sep 2018 11:59:00 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 15 Sep 2018 11:59:02 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 15 Sep 2018 11:59:02 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 15 Sep 2018 12:04:28 GMT
ENV GHOST_VERSION=1.25.5
# Sat, 15 Sep 2018 12:05:56 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 15 Sep 2018 12:06:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 15 Sep 2018 12:09:28 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 15 Sep 2018 12:09:28 GMT
WORKDIR /var/lib/ghost
# Sat, 15 Sep 2018 12:09:29 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 15 Sep 2018 12:09:30 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 15 Sep 2018 12:09:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 15 Sep 2018 12:09:30 GMT
EXPOSE 2368/tcp
# Sat, 15 Sep 2018 12:09:31 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e7731670a93bf29e604d72ec2b8625589828c7d950c54f459fd2fb3fb8cf6e73`  
		Last Modified: Wed, 05 Sep 2018 12:09:08 GMT  
		Size: 26.3 MB (26287004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3833f3c3c9c9c989ac75d86e86bc9ae8abd5faf18edc479abf20010c8b28afa`  
		Last Modified: Wed, 05 Sep 2018 12:42:03 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8726d02c4595d8ef3e2dcea4629d70c1f47a940a7e6a40e1fc1cd935d993390f`  
		Last Modified: Wed, 05 Sep 2018 12:42:03 GMT  
		Size: 124.7 KB (124708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727ef2c9890657b1a1570903ced033844ce622784d3bca84334f73dd7e8ce988`  
		Last Modified: Wed, 12 Sep 2018 12:02:54 GMT  
		Size: 32.6 MB (32575232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef663495d5b4363c2265aa056eae65f68afd5b5d99df3988092af637ec0edd4`  
		Last Modified: Wed, 12 Sep 2018 12:02:45 GMT  
		Size: 1.1 MB (1069882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a2f4bf08f345e66a65a7143db17394366aa9719889213eacf779aea4c6d388`  
		Last Modified: Sat, 15 Sep 2018 12:14:23 GMT  
		Size: 475.3 KB (475271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24af68bee8d2aa10c7769ad5c6304a86ac8a21a192069e886c92e2b84126ae3`  
		Last Modified: Sat, 15 Sep 2018 12:14:33 GMT  
		Size: 18.0 MB (18027934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54ad36cb65f4f16c0efcbd8b9f7edf0433db17eb218c09af2c108181086cb6aa`  
		Last Modified: Sat, 15 Sep 2018 12:16:10 GMT  
		Size: 94.1 MB (94107718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b36664c043b83bed88e678c5423ff988e541af0ad0aa64737022e1ebda4c290a`  
		Last Modified: Sat, 15 Sep 2018 12:15:44 GMT  
		Size: 20.5 MB (20545641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8842f1a09fdff37ba6b57210bd4f2890b722fc0c361ea46125deee8d43844013`  
		Last Modified: Sat, 15 Sep 2018 12:15:38 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; 386

```console
$ docker pull ghost@sha256:155e65d2607d3705dad92eb8408597e8d91864de5a9029c0f5570ca6bd7b3ee0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.8 MB (201794743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3273fef1e6ae94ebac89f6eb0139b0f065cb7a45f18429f7f87bfffd5ba0036c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 23:56:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 06 Sep 2018 23:56:33 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Wed, 12 Sep 2018 10:59:18 GMT
ENV NODE_VERSION=8.12.0
# Wed, 12 Sep 2018 11:00:10 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 12 Sep 2018 11:00:10 GMT
ENV YARN_VERSION=1.9.4
# Wed, 12 Sep 2018 11:00:11 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 12 Sep 2018 11:00:12 GMT
CMD ["node"]
# Wed, 12 Sep 2018 17:29:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 12 Sep 2018 17:29:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 12 Sep 2018 17:29:31 GMT
ENV NODE_ENV=production
# Sat, 15 Sep 2018 10:38:38 GMT
ENV GHOST_CLI_VERSION=1.9.4
# Sat, 15 Sep 2018 10:38:56 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 15 Sep 2018 10:38:57 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 15 Sep 2018 10:38:57 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 15 Sep 2018 10:42:19 GMT
ENV GHOST_VERSION=1.25.5
# Sat, 15 Sep 2018 10:42:54 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 15 Sep 2018 10:42:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 15 Sep 2018 10:44:58 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 15 Sep 2018 10:44:59 GMT
WORKDIR /var/lib/ghost
# Sat, 15 Sep 2018 10:44:59 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 15 Sep 2018 10:44:59 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 15 Sep 2018 10:44:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 15 Sep 2018 10:44:59 GMT
EXPOSE 2368/tcp
# Sat, 15 Sep 2018 10:45:00 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff302b22167139646862bfad9275f569dd63128e5a5d78707f204a056904b685`  
		Last Modified: Fri, 07 Sep 2018 00:27:05 GMT  
		Size: 4.4 KB (4387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da21a2f75f648d2951ab64dd95cbd0aaa5bcf57ab72ec54b539583d8906a3cb`  
		Last Modified: Fri, 07 Sep 2018 00:27:05 GMT  
		Size: 124.7 KB (124680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8eab81ffeb1f5efe085b2308641422355ad7979850c6421fe1e5b4da653523`  
		Last Modified: Wed, 12 Sep 2018 11:29:27 GMT  
		Size: 36.3 MB (36322155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83ff63b36d9500a7a0113117b83e2ee4f376f216ee0a081651d7c39e0d6abe6`  
		Last Modified: Wed, 12 Sep 2018 11:29:17 GMT  
		Size: 1.1 MB (1069850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b18b8d3bead6ebe5c528c9c0fe80228cb00ce35d1c364d04ed35fafd494f36e4`  
		Last Modified: Wed, 12 Sep 2018 17:36:33 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebdf35d751b7c1be855188cd9b2ae5ec017d68e66eb61ca88828b13ee6654f6d`  
		Last Modified: Sat, 15 Sep 2018 10:45:49 GMT  
		Size: 18.0 MB (18020502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c1aea7c86a9308a9733d785c3e1d2f18847f4d4098cd5a9a1cbc18dbefc1a7c`  
		Last Modified: Sat, 15 Sep 2018 10:46:50 GMT  
		Size: 94.1 MB (94106664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7eeeed4d47842c4ea0d166b0ffa99c0d1f83c360678a719f72927bd2615ad81`  
		Last Modified: Sat, 15 Sep 2018 10:46:31 GMT  
		Size: 21.4 MB (21395297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b687d09918c985a58e241f7eb2557018b791345421636e9177e4c5ff46d5ef8b`  
		Last Modified: Sat, 15 Sep 2018 10:46:24 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25.5`

```console
$ docker pull ghost@sha256:9deaf2b09494868bb15fab57385ed2811edea800efc7acdca7aaabc3ec20d7ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `ghost:1.25.5` - linux; amd64

```console
$ docker pull ghost@sha256:fb76c5470ff8c9cc09f4041510081fe2ea4d7ea2bf102edc63c4386588ddeb9b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.3 MB (186263422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:258abfca2c6f3fe2401aa80d9a03e0ac7a94ff9a15bdbcca17238eaf837e35f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:05:22 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 04 Sep 2018 22:05:23 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 11 Sep 2018 17:38:49 GMT
ENV NODE_VERSION=8.12.0
# Tue, 11 Sep 2018 17:39:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 11 Sep 2018 17:39:23 GMT
ENV YARN_VERSION=1.9.4
# Tue, 11 Sep 2018 17:39:25 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 11 Sep 2018 17:39:25 GMT
CMD ["node"]
# Tue, 11 Sep 2018 17:58:19 GMT
ENV GOSU_VERSION=1.10
# Tue, 11 Sep 2018 17:58:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Sep 2018 17:58:20 GMT
ENV NODE_ENV=production
# Sat, 15 Sep 2018 01:19:34 GMT
ENV GHOST_CLI_VERSION=1.9.4
# Sat, 15 Sep 2018 01:19:51 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 15 Sep 2018 01:19:52 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 15 Sep 2018 01:19:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 15 Sep 2018 01:22:06 GMT
ENV GHOST_VERSION=1.25.5
# Sat, 15 Sep 2018 01:22:37 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 15 Sep 2018 01:22:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 15 Sep 2018 01:22:44 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 15 Sep 2018 01:22:45 GMT
WORKDIR /var/lib/ghost
# Sat, 15 Sep 2018 01:22:45 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 15 Sep 2018 01:22:45 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 15 Sep 2018 01:22:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 15 Sep 2018 01:22:46 GMT
EXPOSE 2368/tcp
# Sat, 15 Sep 2018 01:22:46 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b186cf19f9edbd5ee7b8f79fb5fa0a8a21c4f4119149d8f900b2f4f00b440815`  
		Last Modified: Tue, 04 Sep 2018 22:51:46 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eadbf83122625b628be463f73c3c568462c43eaaeb284b83692ad754e5a126be`  
		Last Modified: Tue, 04 Sep 2018 22:51:46 GMT  
		Size: 124.7 KB (124684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf528b18b6cecd9af494946988b394fbb56142c4d7f734b37a1d8bc9d97195e7`  
		Last Modified: Tue, 11 Sep 2018 17:42:09 GMT  
		Size: 34.4 MB (34397026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075c4f074e900b360d81d7cc77902d05b0cf228fd625bc08a80b129a86181167`  
		Last Modified: Tue, 11 Sep 2018 17:42:03 GMT  
		Size: 1.1 MB (1069857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04fbcf905a6288979f4d671581fed69e2531c6f9696c30481e615c8b53925795`  
		Last Modified: Tue, 11 Sep 2018 18:02:25 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da260e2dcb3cc1c7978f661f895e0781201b77a1dd6f4ea25d7974655cff6177`  
		Last Modified: Sat, 15 Sep 2018 01:24:03 GMT  
		Size: 18.0 MB (18022106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80663c954c937c569dda156c963b2bbbeaacb9d5e5b87e3b1a7dde3aefcafd6f`  
		Last Modified: Sat, 15 Sep 2018 01:25:59 GMT  
		Size: 101.8 MB (101823848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf0676774fe87fd73f3f5a9820e8fda7d04c421b670c037b3975ebc6f204239`  
		Last Modified: Sat, 15 Sep 2018 01:25:39 GMT  
		Size: 199.7 KB (199697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ca87ee684a0b2e80fb4047bd145fb7f02eefc244e8aad123d084ed3badb217`  
		Last Modified: Sat, 15 Sep 2018 01:25:39 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.5` - linux; arm variant v7

```console
$ docker pull ghost@sha256:72272c5d9382ddc632bb3f82cd535ead834772d5f04cefaefde4a9de0c74afe8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.2 MB (193218376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dce480751a91dc6677395649e7d58e0fe7ca0f4797369777c7a2223a1eb58b65`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:41 GMT
ADD file:e98fce6ce6aee310f31c67240c7a9f8cb7de0e6deb0967029e5528255c7a86f0 in / 
# Wed, 05 Sep 2018 11:59:45 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:37:49 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 05 Sep 2018 12:37:51 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Wed, 12 Sep 2018 11:58:47 GMT
ENV NODE_VERSION=8.12.0
# Wed, 12 Sep 2018 11:59:42 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 12 Sep 2018 11:59:46 GMT
ENV YARN_VERSION=1.9.4
# Wed, 12 Sep 2018 11:59:48 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 12 Sep 2018 11:59:48 GMT
CMD ["node"]
# Thu, 13 Sep 2018 11:57:40 GMT
ENV GOSU_VERSION=1.10
# Thu, 13 Sep 2018 11:57:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 13 Sep 2018 11:57:42 GMT
ENV NODE_ENV=production
# Sat, 15 Sep 2018 11:58:17 GMT
ENV GHOST_CLI_VERSION=1.9.4
# Sat, 15 Sep 2018 11:59:00 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 15 Sep 2018 11:59:02 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 15 Sep 2018 11:59:02 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 15 Sep 2018 12:04:28 GMT
ENV GHOST_VERSION=1.25.5
# Sat, 15 Sep 2018 12:05:56 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 15 Sep 2018 12:06:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 15 Sep 2018 12:09:28 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 15 Sep 2018 12:09:28 GMT
WORKDIR /var/lib/ghost
# Sat, 15 Sep 2018 12:09:29 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 15 Sep 2018 12:09:30 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 15 Sep 2018 12:09:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 15 Sep 2018 12:09:30 GMT
EXPOSE 2368/tcp
# Sat, 15 Sep 2018 12:09:31 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e7731670a93bf29e604d72ec2b8625589828c7d950c54f459fd2fb3fb8cf6e73`  
		Last Modified: Wed, 05 Sep 2018 12:09:08 GMT  
		Size: 26.3 MB (26287004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3833f3c3c9c9c989ac75d86e86bc9ae8abd5faf18edc479abf20010c8b28afa`  
		Last Modified: Wed, 05 Sep 2018 12:42:03 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8726d02c4595d8ef3e2dcea4629d70c1f47a940a7e6a40e1fc1cd935d993390f`  
		Last Modified: Wed, 05 Sep 2018 12:42:03 GMT  
		Size: 124.7 KB (124708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727ef2c9890657b1a1570903ced033844ce622784d3bca84334f73dd7e8ce988`  
		Last Modified: Wed, 12 Sep 2018 12:02:54 GMT  
		Size: 32.6 MB (32575232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef663495d5b4363c2265aa056eae65f68afd5b5d99df3988092af637ec0edd4`  
		Last Modified: Wed, 12 Sep 2018 12:02:45 GMT  
		Size: 1.1 MB (1069882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a2f4bf08f345e66a65a7143db17394366aa9719889213eacf779aea4c6d388`  
		Last Modified: Sat, 15 Sep 2018 12:14:23 GMT  
		Size: 475.3 KB (475271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24af68bee8d2aa10c7769ad5c6304a86ac8a21a192069e886c92e2b84126ae3`  
		Last Modified: Sat, 15 Sep 2018 12:14:33 GMT  
		Size: 18.0 MB (18027934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54ad36cb65f4f16c0efcbd8b9f7edf0433db17eb218c09af2c108181086cb6aa`  
		Last Modified: Sat, 15 Sep 2018 12:16:10 GMT  
		Size: 94.1 MB (94107718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b36664c043b83bed88e678c5423ff988e541af0ad0aa64737022e1ebda4c290a`  
		Last Modified: Sat, 15 Sep 2018 12:15:44 GMT  
		Size: 20.5 MB (20545641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8842f1a09fdff37ba6b57210bd4f2890b722fc0c361ea46125deee8d43844013`  
		Last Modified: Sat, 15 Sep 2018 12:15:38 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.5` - linux; 386

```console
$ docker pull ghost@sha256:155e65d2607d3705dad92eb8408597e8d91864de5a9029c0f5570ca6bd7b3ee0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.8 MB (201794743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3273fef1e6ae94ebac89f6eb0139b0f065cb7a45f18429f7f87bfffd5ba0036c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 23:56:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 06 Sep 2018 23:56:33 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Wed, 12 Sep 2018 10:59:18 GMT
ENV NODE_VERSION=8.12.0
# Wed, 12 Sep 2018 11:00:10 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 12 Sep 2018 11:00:10 GMT
ENV YARN_VERSION=1.9.4
# Wed, 12 Sep 2018 11:00:11 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 12 Sep 2018 11:00:12 GMT
CMD ["node"]
# Wed, 12 Sep 2018 17:29:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 12 Sep 2018 17:29:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 12 Sep 2018 17:29:31 GMT
ENV NODE_ENV=production
# Sat, 15 Sep 2018 10:38:38 GMT
ENV GHOST_CLI_VERSION=1.9.4
# Sat, 15 Sep 2018 10:38:56 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 15 Sep 2018 10:38:57 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 15 Sep 2018 10:38:57 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 15 Sep 2018 10:42:19 GMT
ENV GHOST_VERSION=1.25.5
# Sat, 15 Sep 2018 10:42:54 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 15 Sep 2018 10:42:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 15 Sep 2018 10:44:58 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 15 Sep 2018 10:44:59 GMT
WORKDIR /var/lib/ghost
# Sat, 15 Sep 2018 10:44:59 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 15 Sep 2018 10:44:59 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 15 Sep 2018 10:44:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 15 Sep 2018 10:44:59 GMT
EXPOSE 2368/tcp
# Sat, 15 Sep 2018 10:45:00 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff302b22167139646862bfad9275f569dd63128e5a5d78707f204a056904b685`  
		Last Modified: Fri, 07 Sep 2018 00:27:05 GMT  
		Size: 4.4 KB (4387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da21a2f75f648d2951ab64dd95cbd0aaa5bcf57ab72ec54b539583d8906a3cb`  
		Last Modified: Fri, 07 Sep 2018 00:27:05 GMT  
		Size: 124.7 KB (124680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8eab81ffeb1f5efe085b2308641422355ad7979850c6421fe1e5b4da653523`  
		Last Modified: Wed, 12 Sep 2018 11:29:27 GMT  
		Size: 36.3 MB (36322155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83ff63b36d9500a7a0113117b83e2ee4f376f216ee0a081651d7c39e0d6abe6`  
		Last Modified: Wed, 12 Sep 2018 11:29:17 GMT  
		Size: 1.1 MB (1069850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b18b8d3bead6ebe5c528c9c0fe80228cb00ce35d1c364d04ed35fafd494f36e4`  
		Last Modified: Wed, 12 Sep 2018 17:36:33 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebdf35d751b7c1be855188cd9b2ae5ec017d68e66eb61ca88828b13ee6654f6d`  
		Last Modified: Sat, 15 Sep 2018 10:45:49 GMT  
		Size: 18.0 MB (18020502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c1aea7c86a9308a9733d785c3e1d2f18847f4d4098cd5a9a1cbc18dbefc1a7c`  
		Last Modified: Sat, 15 Sep 2018 10:46:50 GMT  
		Size: 94.1 MB (94106664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7eeeed4d47842c4ea0d166b0ffa99c0d1f83c360678a719f72927bd2615ad81`  
		Last Modified: Sat, 15 Sep 2018 10:46:31 GMT  
		Size: 21.4 MB (21395297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b687d09918c985a58e241f7eb2557018b791345421636e9177e4c5ff46d5ef8b`  
		Last Modified: Sat, 15 Sep 2018 10:46:24 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25.5-alpine`

```console
$ docker pull ghost@sha256:f6cd9334ab746abeb2b6af1221d1eadc93163aba38052fd3443c717ad332fc2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1.25.5-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:f7aa72edd7e84f5a208e6c5fe8e33d031491ee21ba650b9d98d0c776c597d83e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.1 MB (143132182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d91fb227bb9541790bf862903210c3166773b6e2cb7c33d90e1e5a32067470d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:08:38 GMT
ENV NODE_VERSION=8.12.0
# Wed, 12 Sep 2018 00:37:06 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 12 Sep 2018 00:37:06 GMT
ENV YARN_VERSION=1.9.4
# Wed, 12 Sep 2018 00:37:10 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 12 Sep 2018 00:37:10 GMT
CMD ["node"]
# Wed, 12 Sep 2018 05:07:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 05:07:06 GMT
RUN apk add --no-cache 		bash
# Wed, 12 Sep 2018 05:07:06 GMT
ENV NODE_ENV=production
# Sat, 15 Sep 2018 01:20:57 GMT
ENV GHOST_CLI_VERSION=1.9.4
# Sat, 15 Sep 2018 01:21:15 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 15 Sep 2018 01:21:16 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 15 Sep 2018 01:21:16 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 15 Sep 2018 01:22:56 GMT
ENV GHOST_VERSION=1.25.5
# Sat, 15 Sep 2018 01:23:26 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 15 Sep 2018 01:23:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 15 Sep 2018 01:23:27 GMT
WORKDIR /var/lib/ghost
# Sat, 15 Sep 2018 01:23:27 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 15 Sep 2018 01:23:28 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Sat, 15 Sep 2018 01:23:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 15 Sep 2018 01:23:28 GMT
EXPOSE 2368/tcp
# Sat, 15 Sep 2018 01:23:28 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb7d76f44e71e809d68e84491576534c80dea0b607501e1f476b6949124d646`  
		Last Modified: Wed, 12 Sep 2018 01:36:03 GMT  
		Size: 18.8 MB (18818175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e35f88fcc25962e9894d7e7da2b79ec9ce1b503ef2fe0e800bad87bcb2438319`  
		Last Modified: Wed, 12 Sep 2018 01:36:00 GMT  
		Size: 1.1 MB (1079425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d59ef07366235739b9e1de791c9b05d5e81b3acf00ceda58b2a231390e2e64`  
		Last Modified: Wed, 12 Sep 2018 05:10:13 GMT  
		Size: 9.4 KB (9397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcee404d51ae0147be19bdb882ea440e01625e195902df6145bea1e33e1fc105`  
		Last Modified: Wed, 12 Sep 2018 05:10:13 GMT  
		Size: 1.2 MB (1173370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d2c5f09664f34203974a71640e75692af2843eb03d909c672f2872f2fbe1a0`  
		Last Modified: Sat, 15 Sep 2018 01:24:51 GMT  
		Size: 18.0 MB (18023538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2ffa99fbcfb2e36016ce6971699bd4ded966225c9c658ee46a4de71ff2e530`  
		Last Modified: Sat, 15 Sep 2018 01:26:40 GMT  
		Size: 101.8 MB (101820793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3160d698a22eb86b73e6386a98d1f64171ede839613777412681f987a74e0f`  
		Last Modified: Sat, 15 Sep 2018 01:26:22 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.5-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:bf1428c34923cb256f6883b8e724670da5d86d2e1039aeb220353369b4d80ebf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134289308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:166fcc89edff36c52d4237036d7a48ba8a910c16edeec63813a2acca445013f8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:03:42 GMT
ENV NODE_VERSION=8.12.0
# Sat, 15 Sep 2018 08:20:35 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 15 Sep 2018 08:20:36 GMT
ENV YARN_VERSION=1.9.4
# Sat, 15 Sep 2018 08:20:42 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 15 Sep 2018 08:20:42 GMT
CMD ["node"]
# Sat, 15 Sep 2018 10:23:53 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 15 Sep 2018 10:23:56 GMT
RUN apk add --no-cache 		bash
# Sat, 15 Sep 2018 10:23:56 GMT
ENV NODE_ENV=production
# Sat, 15 Sep 2018 10:23:57 GMT
ENV GHOST_CLI_VERSION=1.9.4
# Sat, 15 Sep 2018 10:24:37 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 15 Sep 2018 10:24:39 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 15 Sep 2018 10:24:41 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 15 Sep 2018 10:26:24 GMT
ENV GHOST_VERSION=1.25.5
# Sat, 15 Sep 2018 10:27:51 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 15 Sep 2018 10:27:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 15 Sep 2018 10:27:55 GMT
WORKDIR /var/lib/ghost
# Sat, 15 Sep 2018 10:27:55 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 15 Sep 2018 10:27:56 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Sat, 15 Sep 2018 10:27:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 15 Sep 2018 10:27:56 GMT
EXPOSE 2368/tcp
# Sat, 15 Sep 2018 10:27:57 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd91bbcae2e4283c22ba4368fbdd1455ba723f6ae0e66f32e10dff72d45e906e`  
		Last Modified: Sat, 15 Sep 2018 08:25:56 GMT  
		Size: 17.8 MB (17792595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5305323c5f1bf2c45c385f697cc459ad755c6be4c5302b96e5058cce1efbe7`  
		Last Modified: Sat, 15 Sep 2018 08:25:49 GMT  
		Size: 1.1 MB (1079496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4356cfa3b793a242a43e9c990c3d9a6bb6ff515578eda5ce5ce7bb9b1936179`  
		Last Modified: Sat, 15 Sep 2018 10:28:15 GMT  
		Size: 9.3 KB (9330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24d84ee039d1ad329572d8a35f9fb7fd29423842b663fc22f2f00bb1eeb5c820`  
		Last Modified: Sat, 15 Sep 2018 10:28:16 GMT  
		Size: 1.1 MB (1127568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f8ccbf2beba2d01d863db4c1185cd5bc7e2d5bbb346bf978950dbdb7503626`  
		Last Modified: Sat, 15 Sep 2018 10:28:25 GMT  
		Size: 18.0 MB (18027227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc117b6f689aa5215d952b8904155f2146bd38348e519bc674f434ba8be54d6f`  
		Last Modified: Sat, 15 Sep 2018 10:29:48 GMT  
		Size: 94.1 MB (94105908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a898c17aaf6c9805cc084ce9c2d8acf5947aea76340ec3f621dc126a84ba2969`  
		Last Modified: Sat, 15 Sep 2018 10:29:11 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.5-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:c505b72abd954456f23027c28b08fffad483bb761f39b99a432be1b5d0f0e8fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 MB (135210895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06e8ce3c884efc6f30df52e278621666f26d16255401e8aba3b46490271ae092`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:18:42 GMT
ENV NODE_VERSION=8.12.0
# Wed, 12 Sep 2018 08:30:52 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 12 Sep 2018 08:30:53 GMT
ENV YARN_VERSION=1.9.4
# Wed, 12 Sep 2018 08:31:05 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 12 Sep 2018 08:31:06 GMT
CMD ["node"]
# Wed, 12 Sep 2018 13:09:05 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 13:09:08 GMT
RUN apk add --no-cache 		bash
# Wed, 12 Sep 2018 13:09:10 GMT
ENV NODE_ENV=production
# Sat, 15 Sep 2018 08:27:37 GMT
ENV GHOST_CLI_VERSION=1.9.4
# Sat, 15 Sep 2018 08:28:09 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 15 Sep 2018 08:28:11 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 15 Sep 2018 08:28:12 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 15 Sep 2018 08:39:50 GMT
ENV GHOST_VERSION=1.25.5
# Sat, 15 Sep 2018 08:41:58 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 15 Sep 2018 08:42:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 15 Sep 2018 08:42:03 GMT
WORKDIR /var/lib/ghost
# Sat, 15 Sep 2018 08:42:04 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 15 Sep 2018 08:42:05 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Sat, 15 Sep 2018 08:42:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 15 Sep 2018 08:42:07 GMT
EXPOSE 2368/tcp
# Sat, 15 Sep 2018 08:42:09 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfaf7416f07699b28dfe1a6a9d52799ef3af5375367a24191340fe18cfee2d8f`  
		Last Modified: Wed, 12 Sep 2018 08:51:29 GMT  
		Size: 18.6 MB (18605643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b817f480bf17afb87d8d25c93488dc3e9bc215bb7eb31e53f2ff63cdb47d96`  
		Last Modified: Wed, 12 Sep 2018 08:51:19 GMT  
		Size: 1.1 MB (1079514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807f0f7d3501abb585fa12b211baa26ab62b1c7cf60bfa99acfd91570fb49c75`  
		Last Modified: Wed, 12 Sep 2018 13:37:31 GMT  
		Size: 9.8 KB (9844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4787ea52da9eaeb5c03e50021d377682524c0c2095debba0bde4bc6ef1d5bcd2`  
		Last Modified: Wed, 12 Sep 2018 13:37:38 GMT  
		Size: 1.2 MB (1188778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4bd5bd59e0ea5b727988fbcf48225f8d6107b6ae847fb839edd5628f54e85f`  
		Last Modified: Sat, 15 Sep 2018 08:48:45 GMT  
		Size: 18.0 MB (18023930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61c301a932782c3bd586727f87cf98f81edeb4f8654070c0b37782980e6c1ad`  
		Last Modified: Sat, 15 Sep 2018 08:56:50 GMT  
		Size: 94.1 MB (94107226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e2e4a15150530584a114937d7126a75654bb71976eac26f88519d312051299`  
		Last Modified: Sat, 15 Sep 2018 08:50:53 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25-alpine`

```console
$ docker pull ghost@sha256:f6cd9334ab746abeb2b6af1221d1eadc93163aba38052fd3443c717ad332fc2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1.25-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:f7aa72edd7e84f5a208e6c5fe8e33d031491ee21ba650b9d98d0c776c597d83e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.1 MB (143132182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d91fb227bb9541790bf862903210c3166773b6e2cb7c33d90e1e5a32067470d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:08:38 GMT
ENV NODE_VERSION=8.12.0
# Wed, 12 Sep 2018 00:37:06 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 12 Sep 2018 00:37:06 GMT
ENV YARN_VERSION=1.9.4
# Wed, 12 Sep 2018 00:37:10 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 12 Sep 2018 00:37:10 GMT
CMD ["node"]
# Wed, 12 Sep 2018 05:07:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 05:07:06 GMT
RUN apk add --no-cache 		bash
# Wed, 12 Sep 2018 05:07:06 GMT
ENV NODE_ENV=production
# Sat, 15 Sep 2018 01:20:57 GMT
ENV GHOST_CLI_VERSION=1.9.4
# Sat, 15 Sep 2018 01:21:15 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 15 Sep 2018 01:21:16 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 15 Sep 2018 01:21:16 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 15 Sep 2018 01:22:56 GMT
ENV GHOST_VERSION=1.25.5
# Sat, 15 Sep 2018 01:23:26 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 15 Sep 2018 01:23:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 15 Sep 2018 01:23:27 GMT
WORKDIR /var/lib/ghost
# Sat, 15 Sep 2018 01:23:27 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 15 Sep 2018 01:23:28 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Sat, 15 Sep 2018 01:23:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 15 Sep 2018 01:23:28 GMT
EXPOSE 2368/tcp
# Sat, 15 Sep 2018 01:23:28 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb7d76f44e71e809d68e84491576534c80dea0b607501e1f476b6949124d646`  
		Last Modified: Wed, 12 Sep 2018 01:36:03 GMT  
		Size: 18.8 MB (18818175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e35f88fcc25962e9894d7e7da2b79ec9ce1b503ef2fe0e800bad87bcb2438319`  
		Last Modified: Wed, 12 Sep 2018 01:36:00 GMT  
		Size: 1.1 MB (1079425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d59ef07366235739b9e1de791c9b05d5e81b3acf00ceda58b2a231390e2e64`  
		Last Modified: Wed, 12 Sep 2018 05:10:13 GMT  
		Size: 9.4 KB (9397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcee404d51ae0147be19bdb882ea440e01625e195902df6145bea1e33e1fc105`  
		Last Modified: Wed, 12 Sep 2018 05:10:13 GMT  
		Size: 1.2 MB (1173370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d2c5f09664f34203974a71640e75692af2843eb03d909c672f2872f2fbe1a0`  
		Last Modified: Sat, 15 Sep 2018 01:24:51 GMT  
		Size: 18.0 MB (18023538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2ffa99fbcfb2e36016ce6971699bd4ded966225c9c658ee46a4de71ff2e530`  
		Last Modified: Sat, 15 Sep 2018 01:26:40 GMT  
		Size: 101.8 MB (101820793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3160d698a22eb86b73e6386a98d1f64171ede839613777412681f987a74e0f`  
		Last Modified: Sat, 15 Sep 2018 01:26:22 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:bf1428c34923cb256f6883b8e724670da5d86d2e1039aeb220353369b4d80ebf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134289308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:166fcc89edff36c52d4237036d7a48ba8a910c16edeec63813a2acca445013f8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:03:42 GMT
ENV NODE_VERSION=8.12.0
# Sat, 15 Sep 2018 08:20:35 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 15 Sep 2018 08:20:36 GMT
ENV YARN_VERSION=1.9.4
# Sat, 15 Sep 2018 08:20:42 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 15 Sep 2018 08:20:42 GMT
CMD ["node"]
# Sat, 15 Sep 2018 10:23:53 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 15 Sep 2018 10:23:56 GMT
RUN apk add --no-cache 		bash
# Sat, 15 Sep 2018 10:23:56 GMT
ENV NODE_ENV=production
# Sat, 15 Sep 2018 10:23:57 GMT
ENV GHOST_CLI_VERSION=1.9.4
# Sat, 15 Sep 2018 10:24:37 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 15 Sep 2018 10:24:39 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 15 Sep 2018 10:24:41 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 15 Sep 2018 10:26:24 GMT
ENV GHOST_VERSION=1.25.5
# Sat, 15 Sep 2018 10:27:51 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 15 Sep 2018 10:27:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 15 Sep 2018 10:27:55 GMT
WORKDIR /var/lib/ghost
# Sat, 15 Sep 2018 10:27:55 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 15 Sep 2018 10:27:56 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Sat, 15 Sep 2018 10:27:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 15 Sep 2018 10:27:56 GMT
EXPOSE 2368/tcp
# Sat, 15 Sep 2018 10:27:57 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd91bbcae2e4283c22ba4368fbdd1455ba723f6ae0e66f32e10dff72d45e906e`  
		Last Modified: Sat, 15 Sep 2018 08:25:56 GMT  
		Size: 17.8 MB (17792595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5305323c5f1bf2c45c385f697cc459ad755c6be4c5302b96e5058cce1efbe7`  
		Last Modified: Sat, 15 Sep 2018 08:25:49 GMT  
		Size: 1.1 MB (1079496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4356cfa3b793a242a43e9c990c3d9a6bb6ff515578eda5ce5ce7bb9b1936179`  
		Last Modified: Sat, 15 Sep 2018 10:28:15 GMT  
		Size: 9.3 KB (9330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24d84ee039d1ad329572d8a35f9fb7fd29423842b663fc22f2f00bb1eeb5c820`  
		Last Modified: Sat, 15 Sep 2018 10:28:16 GMT  
		Size: 1.1 MB (1127568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f8ccbf2beba2d01d863db4c1185cd5bc7e2d5bbb346bf978950dbdb7503626`  
		Last Modified: Sat, 15 Sep 2018 10:28:25 GMT  
		Size: 18.0 MB (18027227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc117b6f689aa5215d952b8904155f2146bd38348e519bc674f434ba8be54d6f`  
		Last Modified: Sat, 15 Sep 2018 10:29:48 GMT  
		Size: 94.1 MB (94105908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a898c17aaf6c9805cc084ce9c2d8acf5947aea76340ec3f621dc126a84ba2969`  
		Last Modified: Sat, 15 Sep 2018 10:29:11 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:c505b72abd954456f23027c28b08fffad483bb761f39b99a432be1b5d0f0e8fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 MB (135210895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06e8ce3c884efc6f30df52e278621666f26d16255401e8aba3b46490271ae092`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:18:42 GMT
ENV NODE_VERSION=8.12.0
# Wed, 12 Sep 2018 08:30:52 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 12 Sep 2018 08:30:53 GMT
ENV YARN_VERSION=1.9.4
# Wed, 12 Sep 2018 08:31:05 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 12 Sep 2018 08:31:06 GMT
CMD ["node"]
# Wed, 12 Sep 2018 13:09:05 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 13:09:08 GMT
RUN apk add --no-cache 		bash
# Wed, 12 Sep 2018 13:09:10 GMT
ENV NODE_ENV=production
# Sat, 15 Sep 2018 08:27:37 GMT
ENV GHOST_CLI_VERSION=1.9.4
# Sat, 15 Sep 2018 08:28:09 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 15 Sep 2018 08:28:11 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 15 Sep 2018 08:28:12 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 15 Sep 2018 08:39:50 GMT
ENV GHOST_VERSION=1.25.5
# Sat, 15 Sep 2018 08:41:58 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 15 Sep 2018 08:42:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 15 Sep 2018 08:42:03 GMT
WORKDIR /var/lib/ghost
# Sat, 15 Sep 2018 08:42:04 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 15 Sep 2018 08:42:05 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Sat, 15 Sep 2018 08:42:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 15 Sep 2018 08:42:07 GMT
EXPOSE 2368/tcp
# Sat, 15 Sep 2018 08:42:09 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfaf7416f07699b28dfe1a6a9d52799ef3af5375367a24191340fe18cfee2d8f`  
		Last Modified: Wed, 12 Sep 2018 08:51:29 GMT  
		Size: 18.6 MB (18605643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b817f480bf17afb87d8d25c93488dc3e9bc215bb7eb31e53f2ff63cdb47d96`  
		Last Modified: Wed, 12 Sep 2018 08:51:19 GMT  
		Size: 1.1 MB (1079514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807f0f7d3501abb585fa12b211baa26ab62b1c7cf60bfa99acfd91570fb49c75`  
		Last Modified: Wed, 12 Sep 2018 13:37:31 GMT  
		Size: 9.8 KB (9844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4787ea52da9eaeb5c03e50021d377682524c0c2095debba0bde4bc6ef1d5bcd2`  
		Last Modified: Wed, 12 Sep 2018 13:37:38 GMT  
		Size: 1.2 MB (1188778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4bd5bd59e0ea5b727988fbcf48225f8d6107b6ae847fb839edd5628f54e85f`  
		Last Modified: Sat, 15 Sep 2018 08:48:45 GMT  
		Size: 18.0 MB (18023930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61c301a932782c3bd586727f87cf98f81edeb4f8654070c0b37782980e6c1ad`  
		Last Modified: Sat, 15 Sep 2018 08:56:50 GMT  
		Size: 94.1 MB (94107226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e2e4a15150530584a114937d7126a75654bb71976eac26f88519d312051299`  
		Last Modified: Sat, 15 Sep 2018 08:50:53 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:f6cd9334ab746abeb2b6af1221d1eadc93163aba38052fd3443c717ad332fc2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:f7aa72edd7e84f5a208e6c5fe8e33d031491ee21ba650b9d98d0c776c597d83e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.1 MB (143132182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d91fb227bb9541790bf862903210c3166773b6e2cb7c33d90e1e5a32067470d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:08:38 GMT
ENV NODE_VERSION=8.12.0
# Wed, 12 Sep 2018 00:37:06 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 12 Sep 2018 00:37:06 GMT
ENV YARN_VERSION=1.9.4
# Wed, 12 Sep 2018 00:37:10 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 12 Sep 2018 00:37:10 GMT
CMD ["node"]
# Wed, 12 Sep 2018 05:07:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 05:07:06 GMT
RUN apk add --no-cache 		bash
# Wed, 12 Sep 2018 05:07:06 GMT
ENV NODE_ENV=production
# Sat, 15 Sep 2018 01:20:57 GMT
ENV GHOST_CLI_VERSION=1.9.4
# Sat, 15 Sep 2018 01:21:15 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 15 Sep 2018 01:21:16 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 15 Sep 2018 01:21:16 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 15 Sep 2018 01:22:56 GMT
ENV GHOST_VERSION=1.25.5
# Sat, 15 Sep 2018 01:23:26 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 15 Sep 2018 01:23:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 15 Sep 2018 01:23:27 GMT
WORKDIR /var/lib/ghost
# Sat, 15 Sep 2018 01:23:27 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 15 Sep 2018 01:23:28 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Sat, 15 Sep 2018 01:23:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 15 Sep 2018 01:23:28 GMT
EXPOSE 2368/tcp
# Sat, 15 Sep 2018 01:23:28 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb7d76f44e71e809d68e84491576534c80dea0b607501e1f476b6949124d646`  
		Last Modified: Wed, 12 Sep 2018 01:36:03 GMT  
		Size: 18.8 MB (18818175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e35f88fcc25962e9894d7e7da2b79ec9ce1b503ef2fe0e800bad87bcb2438319`  
		Last Modified: Wed, 12 Sep 2018 01:36:00 GMT  
		Size: 1.1 MB (1079425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d59ef07366235739b9e1de791c9b05d5e81b3acf00ceda58b2a231390e2e64`  
		Last Modified: Wed, 12 Sep 2018 05:10:13 GMT  
		Size: 9.4 KB (9397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcee404d51ae0147be19bdb882ea440e01625e195902df6145bea1e33e1fc105`  
		Last Modified: Wed, 12 Sep 2018 05:10:13 GMT  
		Size: 1.2 MB (1173370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d2c5f09664f34203974a71640e75692af2843eb03d909c672f2872f2fbe1a0`  
		Last Modified: Sat, 15 Sep 2018 01:24:51 GMT  
		Size: 18.0 MB (18023538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2ffa99fbcfb2e36016ce6971699bd4ded966225c9c658ee46a4de71ff2e530`  
		Last Modified: Sat, 15 Sep 2018 01:26:40 GMT  
		Size: 101.8 MB (101820793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3160d698a22eb86b73e6386a98d1f64171ede839613777412681f987a74e0f`  
		Last Modified: Sat, 15 Sep 2018 01:26:22 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:bf1428c34923cb256f6883b8e724670da5d86d2e1039aeb220353369b4d80ebf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134289308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:166fcc89edff36c52d4237036d7a48ba8a910c16edeec63813a2acca445013f8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:03:42 GMT
ENV NODE_VERSION=8.12.0
# Sat, 15 Sep 2018 08:20:35 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 15 Sep 2018 08:20:36 GMT
ENV YARN_VERSION=1.9.4
# Sat, 15 Sep 2018 08:20:42 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 15 Sep 2018 08:20:42 GMT
CMD ["node"]
# Sat, 15 Sep 2018 10:23:53 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 15 Sep 2018 10:23:56 GMT
RUN apk add --no-cache 		bash
# Sat, 15 Sep 2018 10:23:56 GMT
ENV NODE_ENV=production
# Sat, 15 Sep 2018 10:23:57 GMT
ENV GHOST_CLI_VERSION=1.9.4
# Sat, 15 Sep 2018 10:24:37 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 15 Sep 2018 10:24:39 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 15 Sep 2018 10:24:41 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 15 Sep 2018 10:26:24 GMT
ENV GHOST_VERSION=1.25.5
# Sat, 15 Sep 2018 10:27:51 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 15 Sep 2018 10:27:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 15 Sep 2018 10:27:55 GMT
WORKDIR /var/lib/ghost
# Sat, 15 Sep 2018 10:27:55 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 15 Sep 2018 10:27:56 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Sat, 15 Sep 2018 10:27:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 15 Sep 2018 10:27:56 GMT
EXPOSE 2368/tcp
# Sat, 15 Sep 2018 10:27:57 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd91bbcae2e4283c22ba4368fbdd1455ba723f6ae0e66f32e10dff72d45e906e`  
		Last Modified: Sat, 15 Sep 2018 08:25:56 GMT  
		Size: 17.8 MB (17792595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5305323c5f1bf2c45c385f697cc459ad755c6be4c5302b96e5058cce1efbe7`  
		Last Modified: Sat, 15 Sep 2018 08:25:49 GMT  
		Size: 1.1 MB (1079496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4356cfa3b793a242a43e9c990c3d9a6bb6ff515578eda5ce5ce7bb9b1936179`  
		Last Modified: Sat, 15 Sep 2018 10:28:15 GMT  
		Size: 9.3 KB (9330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24d84ee039d1ad329572d8a35f9fb7fd29423842b663fc22f2f00bb1eeb5c820`  
		Last Modified: Sat, 15 Sep 2018 10:28:16 GMT  
		Size: 1.1 MB (1127568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f8ccbf2beba2d01d863db4c1185cd5bc7e2d5bbb346bf978950dbdb7503626`  
		Last Modified: Sat, 15 Sep 2018 10:28:25 GMT  
		Size: 18.0 MB (18027227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc117b6f689aa5215d952b8904155f2146bd38348e519bc674f434ba8be54d6f`  
		Last Modified: Sat, 15 Sep 2018 10:29:48 GMT  
		Size: 94.1 MB (94105908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a898c17aaf6c9805cc084ce9c2d8acf5947aea76340ec3f621dc126a84ba2969`  
		Last Modified: Sat, 15 Sep 2018 10:29:11 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:c505b72abd954456f23027c28b08fffad483bb761f39b99a432be1b5d0f0e8fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 MB (135210895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06e8ce3c884efc6f30df52e278621666f26d16255401e8aba3b46490271ae092`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:18:42 GMT
ENV NODE_VERSION=8.12.0
# Wed, 12 Sep 2018 08:30:52 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 12 Sep 2018 08:30:53 GMT
ENV YARN_VERSION=1.9.4
# Wed, 12 Sep 2018 08:31:05 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 12 Sep 2018 08:31:06 GMT
CMD ["node"]
# Wed, 12 Sep 2018 13:09:05 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 13:09:08 GMT
RUN apk add --no-cache 		bash
# Wed, 12 Sep 2018 13:09:10 GMT
ENV NODE_ENV=production
# Sat, 15 Sep 2018 08:27:37 GMT
ENV GHOST_CLI_VERSION=1.9.4
# Sat, 15 Sep 2018 08:28:09 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 15 Sep 2018 08:28:11 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 15 Sep 2018 08:28:12 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 15 Sep 2018 08:39:50 GMT
ENV GHOST_VERSION=1.25.5
# Sat, 15 Sep 2018 08:41:58 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 15 Sep 2018 08:42:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 15 Sep 2018 08:42:03 GMT
WORKDIR /var/lib/ghost
# Sat, 15 Sep 2018 08:42:04 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 15 Sep 2018 08:42:05 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Sat, 15 Sep 2018 08:42:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 15 Sep 2018 08:42:07 GMT
EXPOSE 2368/tcp
# Sat, 15 Sep 2018 08:42:09 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfaf7416f07699b28dfe1a6a9d52799ef3af5375367a24191340fe18cfee2d8f`  
		Last Modified: Wed, 12 Sep 2018 08:51:29 GMT  
		Size: 18.6 MB (18605643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b817f480bf17afb87d8d25c93488dc3e9bc215bb7eb31e53f2ff63cdb47d96`  
		Last Modified: Wed, 12 Sep 2018 08:51:19 GMT  
		Size: 1.1 MB (1079514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807f0f7d3501abb585fa12b211baa26ab62b1c7cf60bfa99acfd91570fb49c75`  
		Last Modified: Wed, 12 Sep 2018 13:37:31 GMT  
		Size: 9.8 KB (9844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4787ea52da9eaeb5c03e50021d377682524c0c2095debba0bde4bc6ef1d5bcd2`  
		Last Modified: Wed, 12 Sep 2018 13:37:38 GMT  
		Size: 1.2 MB (1188778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4bd5bd59e0ea5b727988fbcf48225f8d6107b6ae847fb839edd5628f54e85f`  
		Last Modified: Sat, 15 Sep 2018 08:48:45 GMT  
		Size: 18.0 MB (18023930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61c301a932782c3bd586727f87cf98f81edeb4f8654070c0b37782980e6c1ad`  
		Last Modified: Sat, 15 Sep 2018 08:56:50 GMT  
		Size: 94.1 MB (94107226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e2e4a15150530584a114937d7126a75654bb71976eac26f88519d312051299`  
		Last Modified: Sat, 15 Sep 2018 08:50:53 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2`

```console
$ docker pull ghost@sha256:d1a43cf8105f46c20cacc07f3dee5485121bf6b7a8a52a1ca62f8d0540b32f72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:2` - linux; amd64

```console
$ docker pull ghost@sha256:a0e59b96f7ce87a633d08d49b335e5aa455ed2a854803960a18ffc05817f5eab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.5 MB (201458615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf385d0ac3f4ad398d3e148f5cb6e2f4d7b56579c3f44cc21bd863c293a948b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:05:22 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 04 Sep 2018 22:05:23 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 11 Sep 2018 17:38:49 GMT
ENV NODE_VERSION=8.12.0
# Tue, 11 Sep 2018 17:39:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 11 Sep 2018 17:39:23 GMT
ENV YARN_VERSION=1.9.4
# Tue, 11 Sep 2018 17:39:25 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 11 Sep 2018 17:39:25 GMT
CMD ["node"]
# Tue, 11 Sep 2018 17:58:19 GMT
ENV GOSU_VERSION=1.10
# Tue, 11 Sep 2018 17:58:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Sep 2018 17:58:20 GMT
ENV NODE_ENV=production
# Sat, 15 Sep 2018 01:19:34 GMT
ENV GHOST_CLI_VERSION=1.9.4
# Sat, 15 Sep 2018 01:19:51 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 15 Sep 2018 01:19:52 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 15 Sep 2018 01:19:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 20 Sep 2018 20:20:04 GMT
ENV GHOST_VERSION=2.1.3
# Thu, 20 Sep 2018 20:20:40 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 20 Sep 2018 20:20:48 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 20 Sep 2018 20:20:51 GMT
WORKDIR /var/lib/ghost
# Thu, 20 Sep 2018 20:20:52 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 20 Sep 2018 20:20:52 GMT
COPY file:a7d918ec64eb2b7837fa25e1ad1da02853ce639334c6b700dcaaeff61d077e87 in /usr/local/bin 
# Thu, 20 Sep 2018 20:20:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 20 Sep 2018 20:20:52 GMT
EXPOSE 2368/tcp
# Thu, 20 Sep 2018 20:20:58 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b186cf19f9edbd5ee7b8f79fb5fa0a8a21c4f4119149d8f900b2f4f00b440815`  
		Last Modified: Tue, 04 Sep 2018 22:51:46 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eadbf83122625b628be463f73c3c568462c43eaaeb284b83692ad754e5a126be`  
		Last Modified: Tue, 04 Sep 2018 22:51:46 GMT  
		Size: 124.7 KB (124684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf528b18b6cecd9af494946988b394fbb56142c4d7f734b37a1d8bc9d97195e7`  
		Last Modified: Tue, 11 Sep 2018 17:42:09 GMT  
		Size: 34.4 MB (34397026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075c4f074e900b360d81d7cc77902d05b0cf228fd625bc08a80b129a86181167`  
		Last Modified: Tue, 11 Sep 2018 17:42:03 GMT  
		Size: 1.1 MB (1069857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04fbcf905a6288979f4d671581fed69e2531c6f9696c30481e615c8b53925795`  
		Last Modified: Tue, 11 Sep 2018 18:02:25 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da260e2dcb3cc1c7978f661f895e0781201b77a1dd6f4ea25d7974655cff6177`  
		Last Modified: Sat, 15 Sep 2018 01:24:03 GMT  
		Size: 18.0 MB (18022106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ed9e525237e066dbac0b4d28d27588072eac854c41b69a4d329b3824cdda1f`  
		Last Modified: Thu, 20 Sep 2018 20:22:45 GMT  
		Size: 116.9 MB (116905893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e52ce2cc97993418d68488f4648f1647cd9d3b662b0b73df6e3434b4162aa5`  
		Last Modified: Thu, 20 Sep 2018 20:22:22 GMT  
		Size: 312.9 KB (312874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa5e6f47cbd5546d9e82b5fd5057f7805dc80ca9f55402c40bfc561ff6294dff`  
		Last Modified: Thu, 20 Sep 2018 20:22:22 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.1`

```console
$ docker pull ghost@sha256:d1a43cf8105f46c20cacc07f3dee5485121bf6b7a8a52a1ca62f8d0540b32f72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:2.1` - linux; amd64

```console
$ docker pull ghost@sha256:a0e59b96f7ce87a633d08d49b335e5aa455ed2a854803960a18ffc05817f5eab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.5 MB (201458615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf385d0ac3f4ad398d3e148f5cb6e2f4d7b56579c3f44cc21bd863c293a948b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:05:22 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 04 Sep 2018 22:05:23 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 11 Sep 2018 17:38:49 GMT
ENV NODE_VERSION=8.12.0
# Tue, 11 Sep 2018 17:39:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 11 Sep 2018 17:39:23 GMT
ENV YARN_VERSION=1.9.4
# Tue, 11 Sep 2018 17:39:25 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 11 Sep 2018 17:39:25 GMT
CMD ["node"]
# Tue, 11 Sep 2018 17:58:19 GMT
ENV GOSU_VERSION=1.10
# Tue, 11 Sep 2018 17:58:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Sep 2018 17:58:20 GMT
ENV NODE_ENV=production
# Sat, 15 Sep 2018 01:19:34 GMT
ENV GHOST_CLI_VERSION=1.9.4
# Sat, 15 Sep 2018 01:19:51 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 15 Sep 2018 01:19:52 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 15 Sep 2018 01:19:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 20 Sep 2018 20:20:04 GMT
ENV GHOST_VERSION=2.1.3
# Thu, 20 Sep 2018 20:20:40 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 20 Sep 2018 20:20:48 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 20 Sep 2018 20:20:51 GMT
WORKDIR /var/lib/ghost
# Thu, 20 Sep 2018 20:20:52 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 20 Sep 2018 20:20:52 GMT
COPY file:a7d918ec64eb2b7837fa25e1ad1da02853ce639334c6b700dcaaeff61d077e87 in /usr/local/bin 
# Thu, 20 Sep 2018 20:20:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 20 Sep 2018 20:20:52 GMT
EXPOSE 2368/tcp
# Thu, 20 Sep 2018 20:20:58 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b186cf19f9edbd5ee7b8f79fb5fa0a8a21c4f4119149d8f900b2f4f00b440815`  
		Last Modified: Tue, 04 Sep 2018 22:51:46 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eadbf83122625b628be463f73c3c568462c43eaaeb284b83692ad754e5a126be`  
		Last Modified: Tue, 04 Sep 2018 22:51:46 GMT  
		Size: 124.7 KB (124684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf528b18b6cecd9af494946988b394fbb56142c4d7f734b37a1d8bc9d97195e7`  
		Last Modified: Tue, 11 Sep 2018 17:42:09 GMT  
		Size: 34.4 MB (34397026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075c4f074e900b360d81d7cc77902d05b0cf228fd625bc08a80b129a86181167`  
		Last Modified: Tue, 11 Sep 2018 17:42:03 GMT  
		Size: 1.1 MB (1069857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04fbcf905a6288979f4d671581fed69e2531c6f9696c30481e615c8b53925795`  
		Last Modified: Tue, 11 Sep 2018 18:02:25 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da260e2dcb3cc1c7978f661f895e0781201b77a1dd6f4ea25d7974655cff6177`  
		Last Modified: Sat, 15 Sep 2018 01:24:03 GMT  
		Size: 18.0 MB (18022106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ed9e525237e066dbac0b4d28d27588072eac854c41b69a4d329b3824cdda1f`  
		Last Modified: Thu, 20 Sep 2018 20:22:45 GMT  
		Size: 116.9 MB (116905893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e52ce2cc97993418d68488f4648f1647cd9d3b662b0b73df6e3434b4162aa5`  
		Last Modified: Thu, 20 Sep 2018 20:22:22 GMT  
		Size: 312.9 KB (312874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa5e6f47cbd5546d9e82b5fd5057f7805dc80ca9f55402c40bfc561ff6294dff`  
		Last Modified: Thu, 20 Sep 2018 20:22:22 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.1.3`

```console
$ docker pull ghost@sha256:d1a43cf8105f46c20cacc07f3dee5485121bf6b7a8a52a1ca62f8d0540b32f72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:2.1.3` - linux; amd64

```console
$ docker pull ghost@sha256:a0e59b96f7ce87a633d08d49b335e5aa455ed2a854803960a18ffc05817f5eab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.5 MB (201458615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf385d0ac3f4ad398d3e148f5cb6e2f4d7b56579c3f44cc21bd863c293a948b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:05:22 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 04 Sep 2018 22:05:23 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 11 Sep 2018 17:38:49 GMT
ENV NODE_VERSION=8.12.0
# Tue, 11 Sep 2018 17:39:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 11 Sep 2018 17:39:23 GMT
ENV YARN_VERSION=1.9.4
# Tue, 11 Sep 2018 17:39:25 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 11 Sep 2018 17:39:25 GMT
CMD ["node"]
# Tue, 11 Sep 2018 17:58:19 GMT
ENV GOSU_VERSION=1.10
# Tue, 11 Sep 2018 17:58:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Sep 2018 17:58:20 GMT
ENV NODE_ENV=production
# Sat, 15 Sep 2018 01:19:34 GMT
ENV GHOST_CLI_VERSION=1.9.4
# Sat, 15 Sep 2018 01:19:51 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 15 Sep 2018 01:19:52 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 15 Sep 2018 01:19:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 20 Sep 2018 20:20:04 GMT
ENV GHOST_VERSION=2.1.3
# Thu, 20 Sep 2018 20:20:40 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 20 Sep 2018 20:20:48 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 20 Sep 2018 20:20:51 GMT
WORKDIR /var/lib/ghost
# Thu, 20 Sep 2018 20:20:52 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 20 Sep 2018 20:20:52 GMT
COPY file:a7d918ec64eb2b7837fa25e1ad1da02853ce639334c6b700dcaaeff61d077e87 in /usr/local/bin 
# Thu, 20 Sep 2018 20:20:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 20 Sep 2018 20:20:52 GMT
EXPOSE 2368/tcp
# Thu, 20 Sep 2018 20:20:58 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b186cf19f9edbd5ee7b8f79fb5fa0a8a21c4f4119149d8f900b2f4f00b440815`  
		Last Modified: Tue, 04 Sep 2018 22:51:46 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eadbf83122625b628be463f73c3c568462c43eaaeb284b83692ad754e5a126be`  
		Last Modified: Tue, 04 Sep 2018 22:51:46 GMT  
		Size: 124.7 KB (124684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf528b18b6cecd9af494946988b394fbb56142c4d7f734b37a1d8bc9d97195e7`  
		Last Modified: Tue, 11 Sep 2018 17:42:09 GMT  
		Size: 34.4 MB (34397026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075c4f074e900b360d81d7cc77902d05b0cf228fd625bc08a80b129a86181167`  
		Last Modified: Tue, 11 Sep 2018 17:42:03 GMT  
		Size: 1.1 MB (1069857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04fbcf905a6288979f4d671581fed69e2531c6f9696c30481e615c8b53925795`  
		Last Modified: Tue, 11 Sep 2018 18:02:25 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da260e2dcb3cc1c7978f661f895e0781201b77a1dd6f4ea25d7974655cff6177`  
		Last Modified: Sat, 15 Sep 2018 01:24:03 GMT  
		Size: 18.0 MB (18022106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ed9e525237e066dbac0b4d28d27588072eac854c41b69a4d329b3824cdda1f`  
		Last Modified: Thu, 20 Sep 2018 20:22:45 GMT  
		Size: 116.9 MB (116905893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e52ce2cc97993418d68488f4648f1647cd9d3b662b0b73df6e3434b4162aa5`  
		Last Modified: Thu, 20 Sep 2018 20:22:22 GMT  
		Size: 312.9 KB (312874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa5e6f47cbd5546d9e82b5fd5057f7805dc80ca9f55402c40bfc561ff6294dff`  
		Last Modified: Thu, 20 Sep 2018 20:22:22 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.1.3-alpine`

```console
$ docker pull ghost@sha256:d29c5fab5fa4734af91df0c5dfc8b542a4179b333908cfc25b68c043dfca7d4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `ghost:2.1.3-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:58a51c6ff5340d36051434211b706a9afa032787b3b8916577c6f4d86c183d0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.7 MB (141724438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd8dde6880e2af639701ae4c7c51abbd946533fee920a70b4393d8f92ef03953`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:08:38 GMT
ENV NODE_VERSION=8.12.0
# Wed, 12 Sep 2018 00:37:06 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 12 Sep 2018 00:37:06 GMT
ENV YARN_VERSION=1.9.4
# Wed, 12 Sep 2018 00:37:10 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 12 Sep 2018 00:37:10 GMT
CMD ["node"]
# Wed, 12 Sep 2018 05:07:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 05:07:06 GMT
RUN apk add --no-cache 		bash
# Wed, 12 Sep 2018 05:07:06 GMT
ENV NODE_ENV=production
# Sat, 15 Sep 2018 01:20:57 GMT
ENV GHOST_CLI_VERSION=1.9.4
# Sat, 15 Sep 2018 01:21:15 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 15 Sep 2018 01:21:16 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 15 Sep 2018 01:21:16 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 20 Sep 2018 20:21:22 GMT
ENV GHOST_VERSION=2.1.3
# Thu, 20 Sep 2018 20:21:56 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 20 Sep 2018 20:21:57 GMT
WORKDIR /var/lib/ghost
# Thu, 20 Sep 2018 20:21:57 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 20 Sep 2018 20:21:58 GMT
COPY file:984b6359fb5468bd755c750256f62662bb2d19b1b40771579aca645181832f7f in /usr/local/bin 
# Thu, 20 Sep 2018 20:21:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 20 Sep 2018 20:21:58 GMT
EXPOSE 2368/tcp
# Thu, 20 Sep 2018 20:21:59 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb7d76f44e71e809d68e84491576534c80dea0b607501e1f476b6949124d646`  
		Last Modified: Wed, 12 Sep 2018 01:36:03 GMT  
		Size: 18.8 MB (18818175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e35f88fcc25962e9894d7e7da2b79ec9ce1b503ef2fe0e800bad87bcb2438319`  
		Last Modified: Wed, 12 Sep 2018 01:36:00 GMT  
		Size: 1.1 MB (1079425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d59ef07366235739b9e1de791c9b05d5e81b3acf00ceda58b2a231390e2e64`  
		Last Modified: Wed, 12 Sep 2018 05:10:13 GMT  
		Size: 9.4 KB (9397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcee404d51ae0147be19bdb882ea440e01625e195902df6145bea1e33e1fc105`  
		Last Modified: Wed, 12 Sep 2018 05:10:13 GMT  
		Size: 1.2 MB (1173370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d2c5f09664f34203974a71640e75692af2843eb03d909c672f2872f2fbe1a0`  
		Last Modified: Sat, 15 Sep 2018 01:24:51 GMT  
		Size: 18.0 MB (18023538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6feecb37b3bd6e07853e6f13a0d9bef6ee62ad63478b4a0edd5531198b0c7baa`  
		Last Modified: Thu, 20 Sep 2018 20:23:44 GMT  
		Size: 100.4 MB (100413077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e29bf9bf09f388c715f8912629fec6a80d91c97f506efdc792a506db7bb3e46`  
		Last Modified: Thu, 20 Sep 2018 20:23:24 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.1.3-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:5583ad0057bbf691ba7e3d5d632f018a5cd2e3a53ae1614b4101b85277d2cd19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.9 MB (132886902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69b36a69e8e78c578121648e489b50c0cd6bee08b487d4d4c23261246522a201`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:03:42 GMT
ENV NODE_VERSION=8.12.0
# Sat, 15 Sep 2018 08:20:35 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 15 Sep 2018 08:20:36 GMT
ENV YARN_VERSION=1.9.4
# Sat, 15 Sep 2018 08:20:42 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 15 Sep 2018 08:20:42 GMT
CMD ["node"]
# Sat, 15 Sep 2018 10:23:53 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 15 Sep 2018 10:23:56 GMT
RUN apk add --no-cache 		bash
# Sat, 15 Sep 2018 10:23:56 GMT
ENV NODE_ENV=production
# Sat, 15 Sep 2018 10:23:57 GMT
ENV GHOST_CLI_VERSION=1.9.4
# Sat, 15 Sep 2018 10:24:37 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 15 Sep 2018 10:24:39 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 15 Sep 2018 10:24:41 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 21 Sep 2018 07:50:06 GMT
ENV GHOST_VERSION=2.1.3
# Fri, 21 Sep 2018 07:51:36 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 21 Sep 2018 07:51:39 GMT
WORKDIR /var/lib/ghost
# Fri, 21 Sep 2018 07:51:40 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 21 Sep 2018 07:51:40 GMT
COPY file:984b6359fb5468bd755c750256f62662bb2d19b1b40771579aca645181832f7f in /usr/local/bin 
# Fri, 21 Sep 2018 07:51:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Sep 2018 07:51:41 GMT
EXPOSE 2368/tcp
# Fri, 21 Sep 2018 07:51:41 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd91bbcae2e4283c22ba4368fbdd1455ba723f6ae0e66f32e10dff72d45e906e`  
		Last Modified: Sat, 15 Sep 2018 08:25:56 GMT  
		Size: 17.8 MB (17792595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5305323c5f1bf2c45c385f697cc459ad755c6be4c5302b96e5058cce1efbe7`  
		Last Modified: Sat, 15 Sep 2018 08:25:49 GMT  
		Size: 1.1 MB (1079496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4356cfa3b793a242a43e9c990c3d9a6bb6ff515578eda5ce5ce7bb9b1936179`  
		Last Modified: Sat, 15 Sep 2018 10:28:15 GMT  
		Size: 9.3 KB (9330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24d84ee039d1ad329572d8a35f9fb7fd29423842b663fc22f2f00bb1eeb5c820`  
		Last Modified: Sat, 15 Sep 2018 10:28:16 GMT  
		Size: 1.1 MB (1127568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f8ccbf2beba2d01d863db4c1185cd5bc7e2d5bbb346bf978950dbdb7503626`  
		Last Modified: Sat, 15 Sep 2018 10:28:25 GMT  
		Size: 18.0 MB (18027227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fbd399f08bda2c4a395cbccf155fd2d86e4aca21cdf885cd57ed0c18930371`  
		Last Modified: Fri, 21 Sep 2018 07:52:38 GMT  
		Size: 92.7 MB (92703531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67fbae171716eee98ebfa2fdc834f9d56483356d4db7a0e0cb2b37c10d87fd56`  
		Last Modified: Fri, 21 Sep 2018 07:52:04 GMT  
		Size: 527.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.1-alpine`

```console
$ docker pull ghost@sha256:d29c5fab5fa4734af91df0c5dfc8b542a4179b333908cfc25b68c043dfca7d4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `ghost:2.1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:58a51c6ff5340d36051434211b706a9afa032787b3b8916577c6f4d86c183d0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.7 MB (141724438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd8dde6880e2af639701ae4c7c51abbd946533fee920a70b4393d8f92ef03953`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:08:38 GMT
ENV NODE_VERSION=8.12.0
# Wed, 12 Sep 2018 00:37:06 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 12 Sep 2018 00:37:06 GMT
ENV YARN_VERSION=1.9.4
# Wed, 12 Sep 2018 00:37:10 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 12 Sep 2018 00:37:10 GMT
CMD ["node"]
# Wed, 12 Sep 2018 05:07:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 05:07:06 GMT
RUN apk add --no-cache 		bash
# Wed, 12 Sep 2018 05:07:06 GMT
ENV NODE_ENV=production
# Sat, 15 Sep 2018 01:20:57 GMT
ENV GHOST_CLI_VERSION=1.9.4
# Sat, 15 Sep 2018 01:21:15 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 15 Sep 2018 01:21:16 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 15 Sep 2018 01:21:16 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 20 Sep 2018 20:21:22 GMT
ENV GHOST_VERSION=2.1.3
# Thu, 20 Sep 2018 20:21:56 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 20 Sep 2018 20:21:57 GMT
WORKDIR /var/lib/ghost
# Thu, 20 Sep 2018 20:21:57 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 20 Sep 2018 20:21:58 GMT
COPY file:984b6359fb5468bd755c750256f62662bb2d19b1b40771579aca645181832f7f in /usr/local/bin 
# Thu, 20 Sep 2018 20:21:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 20 Sep 2018 20:21:58 GMT
EXPOSE 2368/tcp
# Thu, 20 Sep 2018 20:21:59 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb7d76f44e71e809d68e84491576534c80dea0b607501e1f476b6949124d646`  
		Last Modified: Wed, 12 Sep 2018 01:36:03 GMT  
		Size: 18.8 MB (18818175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e35f88fcc25962e9894d7e7da2b79ec9ce1b503ef2fe0e800bad87bcb2438319`  
		Last Modified: Wed, 12 Sep 2018 01:36:00 GMT  
		Size: 1.1 MB (1079425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d59ef07366235739b9e1de791c9b05d5e81b3acf00ceda58b2a231390e2e64`  
		Last Modified: Wed, 12 Sep 2018 05:10:13 GMT  
		Size: 9.4 KB (9397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcee404d51ae0147be19bdb882ea440e01625e195902df6145bea1e33e1fc105`  
		Last Modified: Wed, 12 Sep 2018 05:10:13 GMT  
		Size: 1.2 MB (1173370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d2c5f09664f34203974a71640e75692af2843eb03d909c672f2872f2fbe1a0`  
		Last Modified: Sat, 15 Sep 2018 01:24:51 GMT  
		Size: 18.0 MB (18023538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6feecb37b3bd6e07853e6f13a0d9bef6ee62ad63478b4a0edd5531198b0c7baa`  
		Last Modified: Thu, 20 Sep 2018 20:23:44 GMT  
		Size: 100.4 MB (100413077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e29bf9bf09f388c715f8912629fec6a80d91c97f506efdc792a506db7bb3e46`  
		Last Modified: Thu, 20 Sep 2018 20:23:24 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.1-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:5583ad0057bbf691ba7e3d5d632f018a5cd2e3a53ae1614b4101b85277d2cd19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.9 MB (132886902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69b36a69e8e78c578121648e489b50c0cd6bee08b487d4d4c23261246522a201`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:03:42 GMT
ENV NODE_VERSION=8.12.0
# Sat, 15 Sep 2018 08:20:35 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 15 Sep 2018 08:20:36 GMT
ENV YARN_VERSION=1.9.4
# Sat, 15 Sep 2018 08:20:42 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 15 Sep 2018 08:20:42 GMT
CMD ["node"]
# Sat, 15 Sep 2018 10:23:53 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 15 Sep 2018 10:23:56 GMT
RUN apk add --no-cache 		bash
# Sat, 15 Sep 2018 10:23:56 GMT
ENV NODE_ENV=production
# Sat, 15 Sep 2018 10:23:57 GMT
ENV GHOST_CLI_VERSION=1.9.4
# Sat, 15 Sep 2018 10:24:37 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 15 Sep 2018 10:24:39 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 15 Sep 2018 10:24:41 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 21 Sep 2018 07:50:06 GMT
ENV GHOST_VERSION=2.1.3
# Fri, 21 Sep 2018 07:51:36 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 21 Sep 2018 07:51:39 GMT
WORKDIR /var/lib/ghost
# Fri, 21 Sep 2018 07:51:40 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 21 Sep 2018 07:51:40 GMT
COPY file:984b6359fb5468bd755c750256f62662bb2d19b1b40771579aca645181832f7f in /usr/local/bin 
# Fri, 21 Sep 2018 07:51:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Sep 2018 07:51:41 GMT
EXPOSE 2368/tcp
# Fri, 21 Sep 2018 07:51:41 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd91bbcae2e4283c22ba4368fbdd1455ba723f6ae0e66f32e10dff72d45e906e`  
		Last Modified: Sat, 15 Sep 2018 08:25:56 GMT  
		Size: 17.8 MB (17792595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5305323c5f1bf2c45c385f697cc459ad755c6be4c5302b96e5058cce1efbe7`  
		Last Modified: Sat, 15 Sep 2018 08:25:49 GMT  
		Size: 1.1 MB (1079496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4356cfa3b793a242a43e9c990c3d9a6bb6ff515578eda5ce5ce7bb9b1936179`  
		Last Modified: Sat, 15 Sep 2018 10:28:15 GMT  
		Size: 9.3 KB (9330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24d84ee039d1ad329572d8a35f9fb7fd29423842b663fc22f2f00bb1eeb5c820`  
		Last Modified: Sat, 15 Sep 2018 10:28:16 GMT  
		Size: 1.1 MB (1127568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f8ccbf2beba2d01d863db4c1185cd5bc7e2d5bbb346bf978950dbdb7503626`  
		Last Modified: Sat, 15 Sep 2018 10:28:25 GMT  
		Size: 18.0 MB (18027227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fbd399f08bda2c4a395cbccf155fd2d86e4aca21cdf885cd57ed0c18930371`  
		Last Modified: Fri, 21 Sep 2018 07:52:38 GMT  
		Size: 92.7 MB (92703531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67fbae171716eee98ebfa2fdc834f9d56483356d4db7a0e0cb2b37c10d87fd56`  
		Last Modified: Fri, 21 Sep 2018 07:52:04 GMT  
		Size: 527.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2-alpine`

```console
$ docker pull ghost@sha256:d29c5fab5fa4734af91df0c5dfc8b542a4179b333908cfc25b68c043dfca7d4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `ghost:2-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:58a51c6ff5340d36051434211b706a9afa032787b3b8916577c6f4d86c183d0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.7 MB (141724438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd8dde6880e2af639701ae4c7c51abbd946533fee920a70b4393d8f92ef03953`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:08:38 GMT
ENV NODE_VERSION=8.12.0
# Wed, 12 Sep 2018 00:37:06 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 12 Sep 2018 00:37:06 GMT
ENV YARN_VERSION=1.9.4
# Wed, 12 Sep 2018 00:37:10 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 12 Sep 2018 00:37:10 GMT
CMD ["node"]
# Wed, 12 Sep 2018 05:07:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 05:07:06 GMT
RUN apk add --no-cache 		bash
# Wed, 12 Sep 2018 05:07:06 GMT
ENV NODE_ENV=production
# Sat, 15 Sep 2018 01:20:57 GMT
ENV GHOST_CLI_VERSION=1.9.4
# Sat, 15 Sep 2018 01:21:15 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 15 Sep 2018 01:21:16 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 15 Sep 2018 01:21:16 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 20 Sep 2018 20:21:22 GMT
ENV GHOST_VERSION=2.1.3
# Thu, 20 Sep 2018 20:21:56 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 20 Sep 2018 20:21:57 GMT
WORKDIR /var/lib/ghost
# Thu, 20 Sep 2018 20:21:57 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 20 Sep 2018 20:21:58 GMT
COPY file:984b6359fb5468bd755c750256f62662bb2d19b1b40771579aca645181832f7f in /usr/local/bin 
# Thu, 20 Sep 2018 20:21:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 20 Sep 2018 20:21:58 GMT
EXPOSE 2368/tcp
# Thu, 20 Sep 2018 20:21:59 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb7d76f44e71e809d68e84491576534c80dea0b607501e1f476b6949124d646`  
		Last Modified: Wed, 12 Sep 2018 01:36:03 GMT  
		Size: 18.8 MB (18818175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e35f88fcc25962e9894d7e7da2b79ec9ce1b503ef2fe0e800bad87bcb2438319`  
		Last Modified: Wed, 12 Sep 2018 01:36:00 GMT  
		Size: 1.1 MB (1079425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d59ef07366235739b9e1de791c9b05d5e81b3acf00ceda58b2a231390e2e64`  
		Last Modified: Wed, 12 Sep 2018 05:10:13 GMT  
		Size: 9.4 KB (9397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcee404d51ae0147be19bdb882ea440e01625e195902df6145bea1e33e1fc105`  
		Last Modified: Wed, 12 Sep 2018 05:10:13 GMT  
		Size: 1.2 MB (1173370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d2c5f09664f34203974a71640e75692af2843eb03d909c672f2872f2fbe1a0`  
		Last Modified: Sat, 15 Sep 2018 01:24:51 GMT  
		Size: 18.0 MB (18023538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6feecb37b3bd6e07853e6f13a0d9bef6ee62ad63478b4a0edd5531198b0c7baa`  
		Last Modified: Thu, 20 Sep 2018 20:23:44 GMT  
		Size: 100.4 MB (100413077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e29bf9bf09f388c715f8912629fec6a80d91c97f506efdc792a506db7bb3e46`  
		Last Modified: Thu, 20 Sep 2018 20:23:24 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:5583ad0057bbf691ba7e3d5d632f018a5cd2e3a53ae1614b4101b85277d2cd19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.9 MB (132886902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69b36a69e8e78c578121648e489b50c0cd6bee08b487d4d4c23261246522a201`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:03:42 GMT
ENV NODE_VERSION=8.12.0
# Sat, 15 Sep 2018 08:20:35 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 15 Sep 2018 08:20:36 GMT
ENV YARN_VERSION=1.9.4
# Sat, 15 Sep 2018 08:20:42 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 15 Sep 2018 08:20:42 GMT
CMD ["node"]
# Sat, 15 Sep 2018 10:23:53 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 15 Sep 2018 10:23:56 GMT
RUN apk add --no-cache 		bash
# Sat, 15 Sep 2018 10:23:56 GMT
ENV NODE_ENV=production
# Sat, 15 Sep 2018 10:23:57 GMT
ENV GHOST_CLI_VERSION=1.9.4
# Sat, 15 Sep 2018 10:24:37 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 15 Sep 2018 10:24:39 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 15 Sep 2018 10:24:41 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 21 Sep 2018 07:50:06 GMT
ENV GHOST_VERSION=2.1.3
# Fri, 21 Sep 2018 07:51:36 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 21 Sep 2018 07:51:39 GMT
WORKDIR /var/lib/ghost
# Fri, 21 Sep 2018 07:51:40 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 21 Sep 2018 07:51:40 GMT
COPY file:984b6359fb5468bd755c750256f62662bb2d19b1b40771579aca645181832f7f in /usr/local/bin 
# Fri, 21 Sep 2018 07:51:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Sep 2018 07:51:41 GMT
EXPOSE 2368/tcp
# Fri, 21 Sep 2018 07:51:41 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd91bbcae2e4283c22ba4368fbdd1455ba723f6ae0e66f32e10dff72d45e906e`  
		Last Modified: Sat, 15 Sep 2018 08:25:56 GMT  
		Size: 17.8 MB (17792595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5305323c5f1bf2c45c385f697cc459ad755c6be4c5302b96e5058cce1efbe7`  
		Last Modified: Sat, 15 Sep 2018 08:25:49 GMT  
		Size: 1.1 MB (1079496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4356cfa3b793a242a43e9c990c3d9a6bb6ff515578eda5ce5ce7bb9b1936179`  
		Last Modified: Sat, 15 Sep 2018 10:28:15 GMT  
		Size: 9.3 KB (9330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24d84ee039d1ad329572d8a35f9fb7fd29423842b663fc22f2f00bb1eeb5c820`  
		Last Modified: Sat, 15 Sep 2018 10:28:16 GMT  
		Size: 1.1 MB (1127568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f8ccbf2beba2d01d863db4c1185cd5bc7e2d5bbb346bf978950dbdb7503626`  
		Last Modified: Sat, 15 Sep 2018 10:28:25 GMT  
		Size: 18.0 MB (18027227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fbd399f08bda2c4a395cbccf155fd2d86e4aca21cdf885cd57ed0c18930371`  
		Last Modified: Fri, 21 Sep 2018 07:52:38 GMT  
		Size: 92.7 MB (92703531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67fbae171716eee98ebfa2fdc834f9d56483356d4db7a0e0cb2b37c10d87fd56`  
		Last Modified: Fri, 21 Sep 2018 07:52:04 GMT  
		Size: 527.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:d29c5fab5fa4734af91df0c5dfc8b542a4179b333908cfc25b68c043dfca7d4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:58a51c6ff5340d36051434211b706a9afa032787b3b8916577c6f4d86c183d0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.7 MB (141724438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd8dde6880e2af639701ae4c7c51abbd946533fee920a70b4393d8f92ef03953`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:08:38 GMT
ENV NODE_VERSION=8.12.0
# Wed, 12 Sep 2018 00:37:06 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 12 Sep 2018 00:37:06 GMT
ENV YARN_VERSION=1.9.4
# Wed, 12 Sep 2018 00:37:10 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 12 Sep 2018 00:37:10 GMT
CMD ["node"]
# Wed, 12 Sep 2018 05:07:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 05:07:06 GMT
RUN apk add --no-cache 		bash
# Wed, 12 Sep 2018 05:07:06 GMT
ENV NODE_ENV=production
# Sat, 15 Sep 2018 01:20:57 GMT
ENV GHOST_CLI_VERSION=1.9.4
# Sat, 15 Sep 2018 01:21:15 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 15 Sep 2018 01:21:16 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 15 Sep 2018 01:21:16 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 20 Sep 2018 20:21:22 GMT
ENV GHOST_VERSION=2.1.3
# Thu, 20 Sep 2018 20:21:56 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 20 Sep 2018 20:21:57 GMT
WORKDIR /var/lib/ghost
# Thu, 20 Sep 2018 20:21:57 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 20 Sep 2018 20:21:58 GMT
COPY file:984b6359fb5468bd755c750256f62662bb2d19b1b40771579aca645181832f7f in /usr/local/bin 
# Thu, 20 Sep 2018 20:21:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 20 Sep 2018 20:21:58 GMT
EXPOSE 2368/tcp
# Thu, 20 Sep 2018 20:21:59 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb7d76f44e71e809d68e84491576534c80dea0b607501e1f476b6949124d646`  
		Last Modified: Wed, 12 Sep 2018 01:36:03 GMT  
		Size: 18.8 MB (18818175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e35f88fcc25962e9894d7e7da2b79ec9ce1b503ef2fe0e800bad87bcb2438319`  
		Last Modified: Wed, 12 Sep 2018 01:36:00 GMT  
		Size: 1.1 MB (1079425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d59ef07366235739b9e1de791c9b05d5e81b3acf00ceda58b2a231390e2e64`  
		Last Modified: Wed, 12 Sep 2018 05:10:13 GMT  
		Size: 9.4 KB (9397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcee404d51ae0147be19bdb882ea440e01625e195902df6145bea1e33e1fc105`  
		Last Modified: Wed, 12 Sep 2018 05:10:13 GMT  
		Size: 1.2 MB (1173370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d2c5f09664f34203974a71640e75692af2843eb03d909c672f2872f2fbe1a0`  
		Last Modified: Sat, 15 Sep 2018 01:24:51 GMT  
		Size: 18.0 MB (18023538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6feecb37b3bd6e07853e6f13a0d9bef6ee62ad63478b4a0edd5531198b0c7baa`  
		Last Modified: Thu, 20 Sep 2018 20:23:44 GMT  
		Size: 100.4 MB (100413077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e29bf9bf09f388c715f8912629fec6a80d91c97f506efdc792a506db7bb3e46`  
		Last Modified: Thu, 20 Sep 2018 20:23:24 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:5583ad0057bbf691ba7e3d5d632f018a5cd2e3a53ae1614b4101b85277d2cd19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.9 MB (132886902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69b36a69e8e78c578121648e489b50c0cd6bee08b487d4d4c23261246522a201`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:03:42 GMT
ENV NODE_VERSION=8.12.0
# Sat, 15 Sep 2018 08:20:35 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 15 Sep 2018 08:20:36 GMT
ENV YARN_VERSION=1.9.4
# Sat, 15 Sep 2018 08:20:42 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 15 Sep 2018 08:20:42 GMT
CMD ["node"]
# Sat, 15 Sep 2018 10:23:53 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 15 Sep 2018 10:23:56 GMT
RUN apk add --no-cache 		bash
# Sat, 15 Sep 2018 10:23:56 GMT
ENV NODE_ENV=production
# Sat, 15 Sep 2018 10:23:57 GMT
ENV GHOST_CLI_VERSION=1.9.4
# Sat, 15 Sep 2018 10:24:37 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 15 Sep 2018 10:24:39 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 15 Sep 2018 10:24:41 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 21 Sep 2018 07:50:06 GMT
ENV GHOST_VERSION=2.1.3
# Fri, 21 Sep 2018 07:51:36 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 21 Sep 2018 07:51:39 GMT
WORKDIR /var/lib/ghost
# Fri, 21 Sep 2018 07:51:40 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 21 Sep 2018 07:51:40 GMT
COPY file:984b6359fb5468bd755c750256f62662bb2d19b1b40771579aca645181832f7f in /usr/local/bin 
# Fri, 21 Sep 2018 07:51:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Sep 2018 07:51:41 GMT
EXPOSE 2368/tcp
# Fri, 21 Sep 2018 07:51:41 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd91bbcae2e4283c22ba4368fbdd1455ba723f6ae0e66f32e10dff72d45e906e`  
		Last Modified: Sat, 15 Sep 2018 08:25:56 GMT  
		Size: 17.8 MB (17792595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5305323c5f1bf2c45c385f697cc459ad755c6be4c5302b96e5058cce1efbe7`  
		Last Modified: Sat, 15 Sep 2018 08:25:49 GMT  
		Size: 1.1 MB (1079496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4356cfa3b793a242a43e9c990c3d9a6bb6ff515578eda5ce5ce7bb9b1936179`  
		Last Modified: Sat, 15 Sep 2018 10:28:15 GMT  
		Size: 9.3 KB (9330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24d84ee039d1ad329572d8a35f9fb7fd29423842b663fc22f2f00bb1eeb5c820`  
		Last Modified: Sat, 15 Sep 2018 10:28:16 GMT  
		Size: 1.1 MB (1127568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f8ccbf2beba2d01d863db4c1185cd5bc7e2d5bbb346bf978950dbdb7503626`  
		Last Modified: Sat, 15 Sep 2018 10:28:25 GMT  
		Size: 18.0 MB (18027227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fbd399f08bda2c4a395cbccf155fd2d86e4aca21cdf885cd57ed0c18930371`  
		Last Modified: Fri, 21 Sep 2018 07:52:38 GMT  
		Size: 92.7 MB (92703531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67fbae171716eee98ebfa2fdc834f9d56483356d4db7a0e0cb2b37c10d87fd56`  
		Last Modified: Fri, 21 Sep 2018 07:52:04 GMT  
		Size: 527.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:d1a43cf8105f46c20cacc07f3dee5485121bf6b7a8a52a1ca62f8d0540b32f72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:latest` - linux; amd64

```console
$ docker pull ghost@sha256:a0e59b96f7ce87a633d08d49b335e5aa455ed2a854803960a18ffc05817f5eab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.5 MB (201458615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf385d0ac3f4ad398d3e148f5cb6e2f4d7b56579c3f44cc21bd863c293a948b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:05:22 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 04 Sep 2018 22:05:23 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 11 Sep 2018 17:38:49 GMT
ENV NODE_VERSION=8.12.0
# Tue, 11 Sep 2018 17:39:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 11 Sep 2018 17:39:23 GMT
ENV YARN_VERSION=1.9.4
# Tue, 11 Sep 2018 17:39:25 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 11 Sep 2018 17:39:25 GMT
CMD ["node"]
# Tue, 11 Sep 2018 17:58:19 GMT
ENV GOSU_VERSION=1.10
# Tue, 11 Sep 2018 17:58:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Sep 2018 17:58:20 GMT
ENV NODE_ENV=production
# Sat, 15 Sep 2018 01:19:34 GMT
ENV GHOST_CLI_VERSION=1.9.4
# Sat, 15 Sep 2018 01:19:51 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 15 Sep 2018 01:19:52 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 15 Sep 2018 01:19:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 20 Sep 2018 20:20:04 GMT
ENV GHOST_VERSION=2.1.3
# Thu, 20 Sep 2018 20:20:40 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 20 Sep 2018 20:20:48 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 20 Sep 2018 20:20:51 GMT
WORKDIR /var/lib/ghost
# Thu, 20 Sep 2018 20:20:52 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 20 Sep 2018 20:20:52 GMT
COPY file:a7d918ec64eb2b7837fa25e1ad1da02853ce639334c6b700dcaaeff61d077e87 in /usr/local/bin 
# Thu, 20 Sep 2018 20:20:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 20 Sep 2018 20:20:52 GMT
EXPOSE 2368/tcp
# Thu, 20 Sep 2018 20:20:58 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b186cf19f9edbd5ee7b8f79fb5fa0a8a21c4f4119149d8f900b2f4f00b440815`  
		Last Modified: Tue, 04 Sep 2018 22:51:46 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eadbf83122625b628be463f73c3c568462c43eaaeb284b83692ad754e5a126be`  
		Last Modified: Tue, 04 Sep 2018 22:51:46 GMT  
		Size: 124.7 KB (124684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf528b18b6cecd9af494946988b394fbb56142c4d7f734b37a1d8bc9d97195e7`  
		Last Modified: Tue, 11 Sep 2018 17:42:09 GMT  
		Size: 34.4 MB (34397026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075c4f074e900b360d81d7cc77902d05b0cf228fd625bc08a80b129a86181167`  
		Last Modified: Tue, 11 Sep 2018 17:42:03 GMT  
		Size: 1.1 MB (1069857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04fbcf905a6288979f4d671581fed69e2531c6f9696c30481e615c8b53925795`  
		Last Modified: Tue, 11 Sep 2018 18:02:25 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da260e2dcb3cc1c7978f661f895e0781201b77a1dd6f4ea25d7974655cff6177`  
		Last Modified: Sat, 15 Sep 2018 01:24:03 GMT  
		Size: 18.0 MB (18022106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ed9e525237e066dbac0b4d28d27588072eac854c41b69a4d329b3824cdda1f`  
		Last Modified: Thu, 20 Sep 2018 20:22:45 GMT  
		Size: 116.9 MB (116905893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e52ce2cc97993418d68488f4648f1647cd9d3b662b0b73df6e3434b4162aa5`  
		Last Modified: Thu, 20 Sep 2018 20:22:22 GMT  
		Size: 312.9 KB (312874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa5e6f47cbd5546d9e82b5fd5057f7805dc80ca9f55402c40bfc561ff6294dff`  
		Last Modified: Thu, 20 Sep 2018 20:22:22 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

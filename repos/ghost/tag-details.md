<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:0`](#ghost0)
-	[`ghost:0.11`](#ghost011)
-	[`ghost:0.11.14`](#ghost01114)
-	[`ghost:0.11.14-alpine`](#ghost01114-alpine)
-	[`ghost:0.11-alpine`](#ghost011-alpine)
-	[`ghost:0-alpine`](#ghost0-alpine)
-	[`ghost:1`](#ghost1)
-	[`ghost:1.25`](#ghost125)
-	[`ghost:1.25.6`](#ghost1256)
-	[`ghost:1.25.6-alpine`](#ghost1256-alpine)
-	[`ghost:1.25-alpine`](#ghost125-alpine)
-	[`ghost:1-alpine`](#ghost1-alpine)
-	[`ghost:2`](#ghost2)
-	[`ghost:2.6`](#ghost26)
-	[`ghost:2.6.2`](#ghost262)
-	[`ghost:2.6.2-alpine`](#ghost262-alpine)
-	[`ghost:2.6-alpine`](#ghost26-alpine)
-	[`ghost:2-alpine`](#ghost2-alpine)
-	[`ghost:alpine`](#ghostalpine)
-	[`ghost:latest`](#ghostlatest)

## `ghost:0`

```console
$ docker pull ghost@sha256:48c4d5ec9bfe86a829f85291ce107724e8316007d912e33c82203015de55d250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `ghost:0` - linux; amd64

```console
$ docker pull ghost@sha256:5ea58aefdae7bfab18cec13f2d190cf1be6c835958cf17aa95666ce50a1e4d14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.3 MB (76263182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfc83b442d756fb9701be70349241bfd8c538b324ef74fbbf1d4594c2d90d646`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:07:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 04 Dec 2018 00:57:42 GMT
ENV NODE_VERSION=6.15.1
# Tue, 04 Dec 2018 00:58:11 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 04 Dec 2018 00:58:12 GMT
ENV YARN_VERSION=1.12.3
# Tue, 04 Dec 2018 00:58:16 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 04 Dec 2018 00:58:16 GMT
CMD ["node"]
# Tue, 04 Dec 2018 01:39:38 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 04 Dec 2018 01:39:38 GMT
ENV GOSU_VERSION=1.10
# Tue, 04 Dec 2018 01:39:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 04 Dec 2018 01:39:43 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 04 Dec 2018 01:39:43 GMT
WORKDIR /usr/src/ghost
# Tue, 04 Dec 2018 01:39:43 GMT
ENV GHOST_VERSION=0.11.14
# Tue, 04 Dec 2018 01:40:47 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 04 Dec 2018 01:40:48 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 04 Dec 2018 01:40:49 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 04 Dec 2018 01:40:49 GMT
VOLUME [/var/lib/ghost]
# Tue, 04 Dec 2018 01:40:49 GMT
COPY file:4bf52c5f3b7a65d22c9bcb7270767a1d61445c40c5d0b235d52a143a029740fc in /usr/local/bin/ 
# Tue, 04 Dec 2018 01:40:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 04 Dec 2018 01:40:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Dec 2018 01:40:51 GMT
EXPOSE 2368/tcp
# Tue, 04 Dec 2018 01:40:51 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd77ab8da06679825549b88b99b2e9277d0f548bcbe631450a3be48408c8256`  
		Last Modified: Fri, 16 Nov 2018 14:28:00 GMT  
		Size: 4.1 KB (4149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807d721c52c27019ef0a2b0f3e41a27966d7a6477521c18e09dab317b13241fa`  
		Last Modified: Tue, 04 Dec 2018 01:08:52 GMT  
		Size: 24.9 MB (24870077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0836be6d1865e3fc34aa191fb9789d2af20e8c0f421cae0542b30782c6eb9809`  
		Last Modified: Tue, 04 Dec 2018 01:08:45 GMT  
		Size: 1.3 MB (1312719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13f23d23ec714af897a29ea0b3abe6a9eada758cd66bf68f804569b32e0e456`  
		Last Modified: Tue, 04 Dec 2018 01:42:41 GMT  
		Size: 4.2 KB (4206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31b6babf7b2d800c60515f8b26d01f6eaa284af198bbcd235c73543f0073b2c`  
		Last Modified: Tue, 04 Dec 2018 01:42:41 GMT  
		Size: 500.9 KB (500918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d97f4ac0e702c75a306af0629125ea8b7be8c533c455d304b9238b4c6ebcca30`  
		Last Modified: Tue, 04 Dec 2018 01:42:40 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f80e8119cc6536efa524baacbc4a709af00f880e0e80c765efd55bd974ee0832`  
		Last Modified: Tue, 04 Dec 2018 01:42:47 GMT  
		Size: 27.1 MB (27083716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44ffc750f98a9eb55a3574b13ac3539b2ddde23f3151f3a1aa4ab24f3e49d51`  
		Last Modified: Tue, 04 Dec 2018 01:42:40 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb147783cd97a8165e292c63b53d64f2eb5065c516a9df02e2e6491b231456d1`  
		Last Modified: Tue, 04 Dec 2018 01:42:40 GMT  
		Size: 638.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b2c0729410ebfd2143d0c3208d0ae0cc82a954d33a8b46cbaefa90bbc530bb`  
		Last Modified: Tue, 04 Dec 2018 01:42:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; arm variant v7

```console
$ docker pull ghost@sha256:67502d4228b2bd2313ba471f8a3e294a37fc20d205d8e29fd98c0435af8af92f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90283159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5f4dc9180e3512ab60391523aafe2eeefb89bd7f21917baa047572aa57c4be1`
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
# Sat, 10 Nov 2018 13:09:31 GMT
ENV GHOST_VERSION=0.11.14
# Sat, 10 Nov 2018 13:13:25 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 10 Nov 2018 13:13:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 10 Nov 2018 13:13:29 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 10 Nov 2018 13:13:29 GMT
VOLUME [/var/lib/ghost]
# Sat, 10 Nov 2018 13:13:30 GMT
COPY file:4bf52c5f3b7a65d22c9bcb7270767a1d61445c40c5d0b235d52a143a029740fc in /usr/local/bin/ 
# Sat, 10 Nov 2018 13:13:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 10 Nov 2018 13:13:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 10 Nov 2018 13:13:32 GMT
EXPOSE 2368/tcp
# Sat, 10 Nov 2018 13:13:33 GMT
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
	-	`sha256:af6b6a72f444b82c8354987e8db72880f38ef6c63200a68a44404f72bb78886d`  
		Last Modified: Sat, 10 Nov 2018 13:16:22 GMT  
		Size: 32.9 MB (32863418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f9d6eab8a7288bc4217e696afd6c1cb9c8c728eb3b3d838bd7a3f6c5d4bc77`  
		Last Modified: Sat, 10 Nov 2018 13:16:08 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5bf36421e435e1bf96ba0d2557014d20961255578d4711111cb3e3bdacdf6b7`  
		Last Modified: Sat, 10 Nov 2018 13:16:08 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b950e62ea60b4e7f89a04663c879344b16dcc53a963dbcadc09e9ce6ce55f3`  
		Last Modified: Sat, 10 Nov 2018 13:16:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; 386

```console
$ docker pull ghost@sha256:aba4fdd98d2f11ef86faaa9dbf8f8b86e45064c25f22ca93f208108155c30275
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.4 MB (98432599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a38ed07d795ac862fc991520241d837b24fad11d677d62f4831fe61bc6172f1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 16 Nov 2018 12:27:08 GMT
ADD file:78e67c3bd2a85f8b06939a282c118818f354e8a045ae81ac223bbd8fd5a25ded in / 
# Fri, 16 Nov 2018 12:27:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 13:22:55 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 27 Nov 2018 14:22:28 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Wed, 28 Nov 2018 16:51:57 GMT
ENV NODE_VERSION=6.15.0
# Wed, 28 Nov 2018 16:52:52 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 16:52:52 GMT
ENV YARN_VERSION=1.6.0
# Wed, 28 Nov 2018 16:52:54 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 16:52:54 GMT
CMD ["node"]
# Wed, 28 Nov 2018 18:19:47 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 28 Nov 2018 18:19:47 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Nov 2018 18:19:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Nov 2018 18:19:49 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 28 Nov 2018 18:19:49 GMT
WORKDIR /usr/src/ghost
# Wed, 28 Nov 2018 18:19:49 GMT
ENV GHOST_VERSION=0.11.14
# Wed, 28 Nov 2018 18:22:26 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 28 Nov 2018 18:22:27 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 28 Nov 2018 18:22:28 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 28 Nov 2018 18:22:28 GMT
VOLUME [/var/lib/ghost]
# Wed, 28 Nov 2018 18:22:28 GMT
COPY file:4bf52c5f3b7a65d22c9bcb7270767a1d61445c40c5d0b235d52a143a029740fc in /usr/local/bin/ 
# Wed, 28 Nov 2018 18:22:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 28 Nov 2018 18:22:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 18:22:29 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 18:22:30 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:3141c499c103aa606c5213e7b03159670bbd0c82d7860890bf5f76d97255ab8a`  
		Last Modified: Thu, 15 Nov 2018 01:12:38 GMT  
		Size: 30.3 MB (30282191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1543f61f17fdbcb29ef2addb3bdf8d07a2ee00fa35a286da097182c7ec4f5bb5`  
		Last Modified: Sat, 17 Nov 2018 13:35:23 GMT  
		Size: 4.4 KB (4387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a11afa03c093458aab967ef9ebf5d4c831857abdfc2107bce4fda931740560`  
		Last Modified: Tue, 27 Nov 2018 15:20:02 GMT  
		Size: 138.2 KB (138174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b6744aa9dc6ba85571bb09a2a9829dc472e3419c9b124c9063f30dc2626449`  
		Last Modified: Wed, 28 Nov 2018 17:50:06 GMT  
		Size: 33.2 MB (33165422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e0cf076e5160ce3c17a98a0ecd407ca16d39da1478e4a6cc06d813cdfc322b`  
		Last Modified: Wed, 28 Nov 2018 17:49:58 GMT  
		Size: 1.1 MB (1084589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd9e6b27d9e0506bb6a180b481e39617b762ec9f2dd379146c639c85cd1c931`  
		Last Modified: Wed, 28 Nov 2018 18:26:12 GMT  
		Size: 4.4 KB (4449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde2408021e5267365a1315329055a2098cbce319b86df293d3cc5933495911e`  
		Last Modified: Wed, 28 Nov 2018 18:26:12 GMT  
		Size: 480.6 KB (480571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ad0bb97799a6535040781f2016906dda842de360b8dbf0b272d1a41c464093`  
		Last Modified: Wed, 28 Nov 2018 18:26:11 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf52b57f15ad854a7423e3d8a7ee7eb26e9dc551bb5ab9de06c5fb9eb88661c`  
		Last Modified: Wed, 28 Nov 2018 18:26:24 GMT  
		Size: 33.3 MB (33271700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5d82aebb4987b7e2511180cf569c4e4b072d73976d72ee9a790a1069924cf5`  
		Last Modified: Wed, 28 Nov 2018 18:26:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9822eeea55b8608d34e5740d0f61b25052a9040b2322dc28fcc51dddc6c7509f`  
		Last Modified: Wed, 28 Nov 2018 18:26:11 GMT  
		Size: 639.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b9c89f16333d8c263377d3b09eb2f3154b47e921cbeb2ad12bd70a68667d53`  
		Last Modified: Wed, 28 Nov 2018 18:26:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11`

```console
$ docker pull ghost@sha256:48c4d5ec9bfe86a829f85291ce107724e8316007d912e33c82203015de55d250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `ghost:0.11` - linux; amd64

```console
$ docker pull ghost@sha256:5ea58aefdae7bfab18cec13f2d190cf1be6c835958cf17aa95666ce50a1e4d14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.3 MB (76263182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfc83b442d756fb9701be70349241bfd8c538b324ef74fbbf1d4594c2d90d646`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:07:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 04 Dec 2018 00:57:42 GMT
ENV NODE_VERSION=6.15.1
# Tue, 04 Dec 2018 00:58:11 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 04 Dec 2018 00:58:12 GMT
ENV YARN_VERSION=1.12.3
# Tue, 04 Dec 2018 00:58:16 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 04 Dec 2018 00:58:16 GMT
CMD ["node"]
# Tue, 04 Dec 2018 01:39:38 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 04 Dec 2018 01:39:38 GMT
ENV GOSU_VERSION=1.10
# Tue, 04 Dec 2018 01:39:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 04 Dec 2018 01:39:43 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 04 Dec 2018 01:39:43 GMT
WORKDIR /usr/src/ghost
# Tue, 04 Dec 2018 01:39:43 GMT
ENV GHOST_VERSION=0.11.14
# Tue, 04 Dec 2018 01:40:47 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 04 Dec 2018 01:40:48 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 04 Dec 2018 01:40:49 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 04 Dec 2018 01:40:49 GMT
VOLUME [/var/lib/ghost]
# Tue, 04 Dec 2018 01:40:49 GMT
COPY file:4bf52c5f3b7a65d22c9bcb7270767a1d61445c40c5d0b235d52a143a029740fc in /usr/local/bin/ 
# Tue, 04 Dec 2018 01:40:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 04 Dec 2018 01:40:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Dec 2018 01:40:51 GMT
EXPOSE 2368/tcp
# Tue, 04 Dec 2018 01:40:51 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd77ab8da06679825549b88b99b2e9277d0f548bcbe631450a3be48408c8256`  
		Last Modified: Fri, 16 Nov 2018 14:28:00 GMT  
		Size: 4.1 KB (4149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807d721c52c27019ef0a2b0f3e41a27966d7a6477521c18e09dab317b13241fa`  
		Last Modified: Tue, 04 Dec 2018 01:08:52 GMT  
		Size: 24.9 MB (24870077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0836be6d1865e3fc34aa191fb9789d2af20e8c0f421cae0542b30782c6eb9809`  
		Last Modified: Tue, 04 Dec 2018 01:08:45 GMT  
		Size: 1.3 MB (1312719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13f23d23ec714af897a29ea0b3abe6a9eada758cd66bf68f804569b32e0e456`  
		Last Modified: Tue, 04 Dec 2018 01:42:41 GMT  
		Size: 4.2 KB (4206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31b6babf7b2d800c60515f8b26d01f6eaa284af198bbcd235c73543f0073b2c`  
		Last Modified: Tue, 04 Dec 2018 01:42:41 GMT  
		Size: 500.9 KB (500918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d97f4ac0e702c75a306af0629125ea8b7be8c533c455d304b9238b4c6ebcca30`  
		Last Modified: Tue, 04 Dec 2018 01:42:40 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f80e8119cc6536efa524baacbc4a709af00f880e0e80c765efd55bd974ee0832`  
		Last Modified: Tue, 04 Dec 2018 01:42:47 GMT  
		Size: 27.1 MB (27083716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44ffc750f98a9eb55a3574b13ac3539b2ddde23f3151f3a1aa4ab24f3e49d51`  
		Last Modified: Tue, 04 Dec 2018 01:42:40 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb147783cd97a8165e292c63b53d64f2eb5065c516a9df02e2e6491b231456d1`  
		Last Modified: Tue, 04 Dec 2018 01:42:40 GMT  
		Size: 638.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b2c0729410ebfd2143d0c3208d0ae0cc82a954d33a8b46cbaefa90bbc530bb`  
		Last Modified: Tue, 04 Dec 2018 01:42:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; arm variant v7

```console
$ docker pull ghost@sha256:67502d4228b2bd2313ba471f8a3e294a37fc20d205d8e29fd98c0435af8af92f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90283159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5f4dc9180e3512ab60391523aafe2eeefb89bd7f21917baa047572aa57c4be1`
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
# Sat, 10 Nov 2018 13:09:31 GMT
ENV GHOST_VERSION=0.11.14
# Sat, 10 Nov 2018 13:13:25 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 10 Nov 2018 13:13:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 10 Nov 2018 13:13:29 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 10 Nov 2018 13:13:29 GMT
VOLUME [/var/lib/ghost]
# Sat, 10 Nov 2018 13:13:30 GMT
COPY file:4bf52c5f3b7a65d22c9bcb7270767a1d61445c40c5d0b235d52a143a029740fc in /usr/local/bin/ 
# Sat, 10 Nov 2018 13:13:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 10 Nov 2018 13:13:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 10 Nov 2018 13:13:32 GMT
EXPOSE 2368/tcp
# Sat, 10 Nov 2018 13:13:33 GMT
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
	-	`sha256:af6b6a72f444b82c8354987e8db72880f38ef6c63200a68a44404f72bb78886d`  
		Last Modified: Sat, 10 Nov 2018 13:16:22 GMT  
		Size: 32.9 MB (32863418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f9d6eab8a7288bc4217e696afd6c1cb9c8c728eb3b3d838bd7a3f6c5d4bc77`  
		Last Modified: Sat, 10 Nov 2018 13:16:08 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5bf36421e435e1bf96ba0d2557014d20961255578d4711111cb3e3bdacdf6b7`  
		Last Modified: Sat, 10 Nov 2018 13:16:08 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b950e62ea60b4e7f89a04663c879344b16dcc53a963dbcadc09e9ce6ce55f3`  
		Last Modified: Sat, 10 Nov 2018 13:16:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; 386

```console
$ docker pull ghost@sha256:aba4fdd98d2f11ef86faaa9dbf8f8b86e45064c25f22ca93f208108155c30275
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.4 MB (98432599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a38ed07d795ac862fc991520241d837b24fad11d677d62f4831fe61bc6172f1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 16 Nov 2018 12:27:08 GMT
ADD file:78e67c3bd2a85f8b06939a282c118818f354e8a045ae81ac223bbd8fd5a25ded in / 
# Fri, 16 Nov 2018 12:27:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 13:22:55 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 27 Nov 2018 14:22:28 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Wed, 28 Nov 2018 16:51:57 GMT
ENV NODE_VERSION=6.15.0
# Wed, 28 Nov 2018 16:52:52 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 16:52:52 GMT
ENV YARN_VERSION=1.6.0
# Wed, 28 Nov 2018 16:52:54 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 16:52:54 GMT
CMD ["node"]
# Wed, 28 Nov 2018 18:19:47 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 28 Nov 2018 18:19:47 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Nov 2018 18:19:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Nov 2018 18:19:49 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 28 Nov 2018 18:19:49 GMT
WORKDIR /usr/src/ghost
# Wed, 28 Nov 2018 18:19:49 GMT
ENV GHOST_VERSION=0.11.14
# Wed, 28 Nov 2018 18:22:26 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 28 Nov 2018 18:22:27 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 28 Nov 2018 18:22:28 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 28 Nov 2018 18:22:28 GMT
VOLUME [/var/lib/ghost]
# Wed, 28 Nov 2018 18:22:28 GMT
COPY file:4bf52c5f3b7a65d22c9bcb7270767a1d61445c40c5d0b235d52a143a029740fc in /usr/local/bin/ 
# Wed, 28 Nov 2018 18:22:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 28 Nov 2018 18:22:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 18:22:29 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 18:22:30 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:3141c499c103aa606c5213e7b03159670bbd0c82d7860890bf5f76d97255ab8a`  
		Last Modified: Thu, 15 Nov 2018 01:12:38 GMT  
		Size: 30.3 MB (30282191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1543f61f17fdbcb29ef2addb3bdf8d07a2ee00fa35a286da097182c7ec4f5bb5`  
		Last Modified: Sat, 17 Nov 2018 13:35:23 GMT  
		Size: 4.4 KB (4387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a11afa03c093458aab967ef9ebf5d4c831857abdfc2107bce4fda931740560`  
		Last Modified: Tue, 27 Nov 2018 15:20:02 GMT  
		Size: 138.2 KB (138174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b6744aa9dc6ba85571bb09a2a9829dc472e3419c9b124c9063f30dc2626449`  
		Last Modified: Wed, 28 Nov 2018 17:50:06 GMT  
		Size: 33.2 MB (33165422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e0cf076e5160ce3c17a98a0ecd407ca16d39da1478e4a6cc06d813cdfc322b`  
		Last Modified: Wed, 28 Nov 2018 17:49:58 GMT  
		Size: 1.1 MB (1084589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd9e6b27d9e0506bb6a180b481e39617b762ec9f2dd379146c639c85cd1c931`  
		Last Modified: Wed, 28 Nov 2018 18:26:12 GMT  
		Size: 4.4 KB (4449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde2408021e5267365a1315329055a2098cbce319b86df293d3cc5933495911e`  
		Last Modified: Wed, 28 Nov 2018 18:26:12 GMT  
		Size: 480.6 KB (480571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ad0bb97799a6535040781f2016906dda842de360b8dbf0b272d1a41c464093`  
		Last Modified: Wed, 28 Nov 2018 18:26:11 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf52b57f15ad854a7423e3d8a7ee7eb26e9dc551bb5ab9de06c5fb9eb88661c`  
		Last Modified: Wed, 28 Nov 2018 18:26:24 GMT  
		Size: 33.3 MB (33271700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5d82aebb4987b7e2511180cf569c4e4b072d73976d72ee9a790a1069924cf5`  
		Last Modified: Wed, 28 Nov 2018 18:26:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9822eeea55b8608d34e5740d0f61b25052a9040b2322dc28fcc51dddc6c7509f`  
		Last Modified: Wed, 28 Nov 2018 18:26:11 GMT  
		Size: 639.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b9c89f16333d8c263377d3b09eb2f3154b47e921cbeb2ad12bd70a68667d53`  
		Last Modified: Wed, 28 Nov 2018 18:26:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.14`

```console
$ docker pull ghost@sha256:48c4d5ec9bfe86a829f85291ce107724e8316007d912e33c82203015de55d250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `ghost:0.11.14` - linux; amd64

```console
$ docker pull ghost@sha256:5ea58aefdae7bfab18cec13f2d190cf1be6c835958cf17aa95666ce50a1e4d14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.3 MB (76263182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfc83b442d756fb9701be70349241bfd8c538b324ef74fbbf1d4594c2d90d646`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:07:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 04 Dec 2018 00:57:42 GMT
ENV NODE_VERSION=6.15.1
# Tue, 04 Dec 2018 00:58:11 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 04 Dec 2018 00:58:12 GMT
ENV YARN_VERSION=1.12.3
# Tue, 04 Dec 2018 00:58:16 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 04 Dec 2018 00:58:16 GMT
CMD ["node"]
# Tue, 04 Dec 2018 01:39:38 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 04 Dec 2018 01:39:38 GMT
ENV GOSU_VERSION=1.10
# Tue, 04 Dec 2018 01:39:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 04 Dec 2018 01:39:43 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 04 Dec 2018 01:39:43 GMT
WORKDIR /usr/src/ghost
# Tue, 04 Dec 2018 01:39:43 GMT
ENV GHOST_VERSION=0.11.14
# Tue, 04 Dec 2018 01:40:47 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 04 Dec 2018 01:40:48 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 04 Dec 2018 01:40:49 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 04 Dec 2018 01:40:49 GMT
VOLUME [/var/lib/ghost]
# Tue, 04 Dec 2018 01:40:49 GMT
COPY file:4bf52c5f3b7a65d22c9bcb7270767a1d61445c40c5d0b235d52a143a029740fc in /usr/local/bin/ 
# Tue, 04 Dec 2018 01:40:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 04 Dec 2018 01:40:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Dec 2018 01:40:51 GMT
EXPOSE 2368/tcp
# Tue, 04 Dec 2018 01:40:51 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd77ab8da06679825549b88b99b2e9277d0f548bcbe631450a3be48408c8256`  
		Last Modified: Fri, 16 Nov 2018 14:28:00 GMT  
		Size: 4.1 KB (4149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807d721c52c27019ef0a2b0f3e41a27966d7a6477521c18e09dab317b13241fa`  
		Last Modified: Tue, 04 Dec 2018 01:08:52 GMT  
		Size: 24.9 MB (24870077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0836be6d1865e3fc34aa191fb9789d2af20e8c0f421cae0542b30782c6eb9809`  
		Last Modified: Tue, 04 Dec 2018 01:08:45 GMT  
		Size: 1.3 MB (1312719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13f23d23ec714af897a29ea0b3abe6a9eada758cd66bf68f804569b32e0e456`  
		Last Modified: Tue, 04 Dec 2018 01:42:41 GMT  
		Size: 4.2 KB (4206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31b6babf7b2d800c60515f8b26d01f6eaa284af198bbcd235c73543f0073b2c`  
		Last Modified: Tue, 04 Dec 2018 01:42:41 GMT  
		Size: 500.9 KB (500918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d97f4ac0e702c75a306af0629125ea8b7be8c533c455d304b9238b4c6ebcca30`  
		Last Modified: Tue, 04 Dec 2018 01:42:40 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f80e8119cc6536efa524baacbc4a709af00f880e0e80c765efd55bd974ee0832`  
		Last Modified: Tue, 04 Dec 2018 01:42:47 GMT  
		Size: 27.1 MB (27083716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44ffc750f98a9eb55a3574b13ac3539b2ddde23f3151f3a1aa4ab24f3e49d51`  
		Last Modified: Tue, 04 Dec 2018 01:42:40 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb147783cd97a8165e292c63b53d64f2eb5065c516a9df02e2e6491b231456d1`  
		Last Modified: Tue, 04 Dec 2018 01:42:40 GMT  
		Size: 638.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b2c0729410ebfd2143d0c3208d0ae0cc82a954d33a8b46cbaefa90bbc530bb`  
		Last Modified: Tue, 04 Dec 2018 01:42:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.14` - linux; arm variant v7

```console
$ docker pull ghost@sha256:67502d4228b2bd2313ba471f8a3e294a37fc20d205d8e29fd98c0435af8af92f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90283159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5f4dc9180e3512ab60391523aafe2eeefb89bd7f21917baa047572aa57c4be1`
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
# Sat, 10 Nov 2018 13:09:31 GMT
ENV GHOST_VERSION=0.11.14
# Sat, 10 Nov 2018 13:13:25 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 10 Nov 2018 13:13:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 10 Nov 2018 13:13:29 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 10 Nov 2018 13:13:29 GMT
VOLUME [/var/lib/ghost]
# Sat, 10 Nov 2018 13:13:30 GMT
COPY file:4bf52c5f3b7a65d22c9bcb7270767a1d61445c40c5d0b235d52a143a029740fc in /usr/local/bin/ 
# Sat, 10 Nov 2018 13:13:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 10 Nov 2018 13:13:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 10 Nov 2018 13:13:32 GMT
EXPOSE 2368/tcp
# Sat, 10 Nov 2018 13:13:33 GMT
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
	-	`sha256:af6b6a72f444b82c8354987e8db72880f38ef6c63200a68a44404f72bb78886d`  
		Last Modified: Sat, 10 Nov 2018 13:16:22 GMT  
		Size: 32.9 MB (32863418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f9d6eab8a7288bc4217e696afd6c1cb9c8c728eb3b3d838bd7a3f6c5d4bc77`  
		Last Modified: Sat, 10 Nov 2018 13:16:08 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5bf36421e435e1bf96ba0d2557014d20961255578d4711111cb3e3bdacdf6b7`  
		Last Modified: Sat, 10 Nov 2018 13:16:08 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b950e62ea60b4e7f89a04663c879344b16dcc53a963dbcadc09e9ce6ce55f3`  
		Last Modified: Sat, 10 Nov 2018 13:16:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.14` - linux; 386

```console
$ docker pull ghost@sha256:aba4fdd98d2f11ef86faaa9dbf8f8b86e45064c25f22ca93f208108155c30275
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.4 MB (98432599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a38ed07d795ac862fc991520241d837b24fad11d677d62f4831fe61bc6172f1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 16 Nov 2018 12:27:08 GMT
ADD file:78e67c3bd2a85f8b06939a282c118818f354e8a045ae81ac223bbd8fd5a25ded in / 
# Fri, 16 Nov 2018 12:27:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 13:22:55 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 27 Nov 2018 14:22:28 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Wed, 28 Nov 2018 16:51:57 GMT
ENV NODE_VERSION=6.15.0
# Wed, 28 Nov 2018 16:52:52 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 16:52:52 GMT
ENV YARN_VERSION=1.6.0
# Wed, 28 Nov 2018 16:52:54 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 16:52:54 GMT
CMD ["node"]
# Wed, 28 Nov 2018 18:19:47 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 28 Nov 2018 18:19:47 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Nov 2018 18:19:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Nov 2018 18:19:49 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 28 Nov 2018 18:19:49 GMT
WORKDIR /usr/src/ghost
# Wed, 28 Nov 2018 18:19:49 GMT
ENV GHOST_VERSION=0.11.14
# Wed, 28 Nov 2018 18:22:26 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 28 Nov 2018 18:22:27 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 28 Nov 2018 18:22:28 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 28 Nov 2018 18:22:28 GMT
VOLUME [/var/lib/ghost]
# Wed, 28 Nov 2018 18:22:28 GMT
COPY file:4bf52c5f3b7a65d22c9bcb7270767a1d61445c40c5d0b235d52a143a029740fc in /usr/local/bin/ 
# Wed, 28 Nov 2018 18:22:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 28 Nov 2018 18:22:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 18:22:29 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 18:22:30 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:3141c499c103aa606c5213e7b03159670bbd0c82d7860890bf5f76d97255ab8a`  
		Last Modified: Thu, 15 Nov 2018 01:12:38 GMT  
		Size: 30.3 MB (30282191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1543f61f17fdbcb29ef2addb3bdf8d07a2ee00fa35a286da097182c7ec4f5bb5`  
		Last Modified: Sat, 17 Nov 2018 13:35:23 GMT  
		Size: 4.4 KB (4387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a11afa03c093458aab967ef9ebf5d4c831857abdfc2107bce4fda931740560`  
		Last Modified: Tue, 27 Nov 2018 15:20:02 GMT  
		Size: 138.2 KB (138174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b6744aa9dc6ba85571bb09a2a9829dc472e3419c9b124c9063f30dc2626449`  
		Last Modified: Wed, 28 Nov 2018 17:50:06 GMT  
		Size: 33.2 MB (33165422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e0cf076e5160ce3c17a98a0ecd407ca16d39da1478e4a6cc06d813cdfc322b`  
		Last Modified: Wed, 28 Nov 2018 17:49:58 GMT  
		Size: 1.1 MB (1084589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd9e6b27d9e0506bb6a180b481e39617b762ec9f2dd379146c639c85cd1c931`  
		Last Modified: Wed, 28 Nov 2018 18:26:12 GMT  
		Size: 4.4 KB (4449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde2408021e5267365a1315329055a2098cbce319b86df293d3cc5933495911e`  
		Last Modified: Wed, 28 Nov 2018 18:26:12 GMT  
		Size: 480.6 KB (480571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ad0bb97799a6535040781f2016906dda842de360b8dbf0b272d1a41c464093`  
		Last Modified: Wed, 28 Nov 2018 18:26:11 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf52b57f15ad854a7423e3d8a7ee7eb26e9dc551bb5ab9de06c5fb9eb88661c`  
		Last Modified: Wed, 28 Nov 2018 18:26:24 GMT  
		Size: 33.3 MB (33271700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5d82aebb4987b7e2511180cf569c4e4b072d73976d72ee9a790a1069924cf5`  
		Last Modified: Wed, 28 Nov 2018 18:26:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9822eeea55b8608d34e5740d0f61b25052a9040b2322dc28fcc51dddc6c7509f`  
		Last Modified: Wed, 28 Nov 2018 18:26:11 GMT  
		Size: 639.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b9c89f16333d8c263377d3b09eb2f3154b47e921cbeb2ad12bd70a68667d53`  
		Last Modified: Wed, 28 Nov 2018 18:26:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.14-alpine`

```console
$ docker pull ghost@sha256:ff7a9a9cfe5fc7a55ed9e5153619e8fedca04d1e2776e19968830867be83fd25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11.14-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:f343e0c2c898154c9fbe894aaa5d644f4a882de915ca0375ccb274431662188e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47444412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcbbf4b18cb505073a330e0817f9dfacfe2221bab96e8743016942781a23fb14`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 04 Dec 2018 00:37:48 GMT
ENV NODE_VERSION=6.15.1
# Tue, 04 Dec 2018 00:56:27 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 04 Dec 2018 00:56:27 GMT
ENV YARN_VERSION=1.12.3
# Tue, 04 Dec 2018 00:56:32 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Dec 2018 00:56:32 GMT
CMD ["node"]
# Tue, 04 Dec 2018 01:41:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 04 Dec 2018 01:41:13 GMT
RUN apk add --no-cache 		bash 		tar
# Tue, 04 Dec 2018 01:41:14 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 04 Dec 2018 01:41:14 GMT
WORKDIR /usr/src/ghost
# Tue, 04 Dec 2018 01:41:14 GMT
ENV GHOST_VERSION=0.11.14
# Tue, 04 Dec 2018 01:42:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 04 Dec 2018 01:42:06 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 04 Dec 2018 01:42:09 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 04 Dec 2018 01:42:09 GMT
VOLUME [/var/lib/ghost]
# Tue, 04 Dec 2018 01:42:10 GMT
COPY file:89e7330b48cbb0bdce59b338bf077606d284ce7048d42db76e653c91ee52a54e in /usr/local/bin/ 
# Tue, 04 Dec 2018 01:42:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Dec 2018 01:42:11 GMT
EXPOSE 2368/tcp
# Tue, 04 Dec 2018 01:42:11 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d503b632375e9a43f550de8fdecb31b8f20a21f0cb1b589946558ffca1e0e330`  
		Last Modified: Tue, 04 Dec 2018 01:04:06 GMT  
		Size: 15.7 MB (15650226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec2b615f4948b7d2e3aae84dd5f4992bdd906acf5aa5ce11f12943bb56b4a80`  
		Last Modified: Tue, 04 Dec 2018 01:04:01 GMT  
		Size: 1.3 MB (1319715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffb8fb6d0e45824bf4a2940153b42bf5a7b9cd285cf18784978bf439123f96f`  
		Last Modified: Tue, 04 Dec 2018 01:43:53 GMT  
		Size: 9.4 KB (9402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e21a0eac4df143801eb31047487a03f9e5890f52dad40c0fa2c48fc1ab1fdec`  
		Last Modified: Tue, 04 Dec 2018 01:43:52 GMT  
		Size: 1.4 MB (1414395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a5632f87ad76f893b3424a99f99594c0bdbc8e695c0075239f2c9df5ec01b3`  
		Last Modified: Tue, 04 Dec 2018 01:43:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c60dd55cb5aeb6a7447b5c05fa6ec4d2f2f20c07c9789159ad43c36f71b03b2`  
		Last Modified: Tue, 04 Dec 2018 01:43:59 GMT  
		Size: 26.8 MB (26842761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c886bfd7a3f26db6d6e2060d38dc90e5796dcd1b8b469dfc7f7a00c9b0bae1`  
		Last Modified: Tue, 04 Dec 2018 01:43:52 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f66d0a0d5be8b828684480bc6e0d885e625b4506f443f5d685d2331ec630b3d0`  
		Last Modified: Tue, 04 Dec 2018 01:43:51 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11-alpine`

```console
$ docker pull ghost@sha256:ff7a9a9cfe5fc7a55ed9e5153619e8fedca04d1e2776e19968830867be83fd25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:f343e0c2c898154c9fbe894aaa5d644f4a882de915ca0375ccb274431662188e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47444412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcbbf4b18cb505073a330e0817f9dfacfe2221bab96e8743016942781a23fb14`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 04 Dec 2018 00:37:48 GMT
ENV NODE_VERSION=6.15.1
# Tue, 04 Dec 2018 00:56:27 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 04 Dec 2018 00:56:27 GMT
ENV YARN_VERSION=1.12.3
# Tue, 04 Dec 2018 00:56:32 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Dec 2018 00:56:32 GMT
CMD ["node"]
# Tue, 04 Dec 2018 01:41:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 04 Dec 2018 01:41:13 GMT
RUN apk add --no-cache 		bash 		tar
# Tue, 04 Dec 2018 01:41:14 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 04 Dec 2018 01:41:14 GMT
WORKDIR /usr/src/ghost
# Tue, 04 Dec 2018 01:41:14 GMT
ENV GHOST_VERSION=0.11.14
# Tue, 04 Dec 2018 01:42:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 04 Dec 2018 01:42:06 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 04 Dec 2018 01:42:09 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 04 Dec 2018 01:42:09 GMT
VOLUME [/var/lib/ghost]
# Tue, 04 Dec 2018 01:42:10 GMT
COPY file:89e7330b48cbb0bdce59b338bf077606d284ce7048d42db76e653c91ee52a54e in /usr/local/bin/ 
# Tue, 04 Dec 2018 01:42:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Dec 2018 01:42:11 GMT
EXPOSE 2368/tcp
# Tue, 04 Dec 2018 01:42:11 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d503b632375e9a43f550de8fdecb31b8f20a21f0cb1b589946558ffca1e0e330`  
		Last Modified: Tue, 04 Dec 2018 01:04:06 GMT  
		Size: 15.7 MB (15650226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec2b615f4948b7d2e3aae84dd5f4992bdd906acf5aa5ce11f12943bb56b4a80`  
		Last Modified: Tue, 04 Dec 2018 01:04:01 GMT  
		Size: 1.3 MB (1319715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffb8fb6d0e45824bf4a2940153b42bf5a7b9cd285cf18784978bf439123f96f`  
		Last Modified: Tue, 04 Dec 2018 01:43:53 GMT  
		Size: 9.4 KB (9402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e21a0eac4df143801eb31047487a03f9e5890f52dad40c0fa2c48fc1ab1fdec`  
		Last Modified: Tue, 04 Dec 2018 01:43:52 GMT  
		Size: 1.4 MB (1414395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a5632f87ad76f893b3424a99f99594c0bdbc8e695c0075239f2c9df5ec01b3`  
		Last Modified: Tue, 04 Dec 2018 01:43:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c60dd55cb5aeb6a7447b5c05fa6ec4d2f2f20c07c9789159ad43c36f71b03b2`  
		Last Modified: Tue, 04 Dec 2018 01:43:59 GMT  
		Size: 26.8 MB (26842761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c886bfd7a3f26db6d6e2060d38dc90e5796dcd1b8b469dfc7f7a00c9b0bae1`  
		Last Modified: Tue, 04 Dec 2018 01:43:52 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f66d0a0d5be8b828684480bc6e0d885e625b4506f443f5d685d2331ec630b3d0`  
		Last Modified: Tue, 04 Dec 2018 01:43:51 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:ff7a9a9cfe5fc7a55ed9e5153619e8fedca04d1e2776e19968830867be83fd25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:f343e0c2c898154c9fbe894aaa5d644f4a882de915ca0375ccb274431662188e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47444412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcbbf4b18cb505073a330e0817f9dfacfe2221bab96e8743016942781a23fb14`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 04 Dec 2018 00:37:48 GMT
ENV NODE_VERSION=6.15.1
# Tue, 04 Dec 2018 00:56:27 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 04 Dec 2018 00:56:27 GMT
ENV YARN_VERSION=1.12.3
# Tue, 04 Dec 2018 00:56:32 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Dec 2018 00:56:32 GMT
CMD ["node"]
# Tue, 04 Dec 2018 01:41:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 04 Dec 2018 01:41:13 GMT
RUN apk add --no-cache 		bash 		tar
# Tue, 04 Dec 2018 01:41:14 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 04 Dec 2018 01:41:14 GMT
WORKDIR /usr/src/ghost
# Tue, 04 Dec 2018 01:41:14 GMT
ENV GHOST_VERSION=0.11.14
# Tue, 04 Dec 2018 01:42:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 04 Dec 2018 01:42:06 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 04 Dec 2018 01:42:09 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 04 Dec 2018 01:42:09 GMT
VOLUME [/var/lib/ghost]
# Tue, 04 Dec 2018 01:42:10 GMT
COPY file:89e7330b48cbb0bdce59b338bf077606d284ce7048d42db76e653c91ee52a54e in /usr/local/bin/ 
# Tue, 04 Dec 2018 01:42:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Dec 2018 01:42:11 GMT
EXPOSE 2368/tcp
# Tue, 04 Dec 2018 01:42:11 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d503b632375e9a43f550de8fdecb31b8f20a21f0cb1b589946558ffca1e0e330`  
		Last Modified: Tue, 04 Dec 2018 01:04:06 GMT  
		Size: 15.7 MB (15650226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec2b615f4948b7d2e3aae84dd5f4992bdd906acf5aa5ce11f12943bb56b4a80`  
		Last Modified: Tue, 04 Dec 2018 01:04:01 GMT  
		Size: 1.3 MB (1319715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffb8fb6d0e45824bf4a2940153b42bf5a7b9cd285cf18784978bf439123f96f`  
		Last Modified: Tue, 04 Dec 2018 01:43:53 GMT  
		Size: 9.4 KB (9402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e21a0eac4df143801eb31047487a03f9e5890f52dad40c0fa2c48fc1ab1fdec`  
		Last Modified: Tue, 04 Dec 2018 01:43:52 GMT  
		Size: 1.4 MB (1414395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a5632f87ad76f893b3424a99f99594c0bdbc8e695c0075239f2c9df5ec01b3`  
		Last Modified: Tue, 04 Dec 2018 01:43:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c60dd55cb5aeb6a7447b5c05fa6ec4d2f2f20c07c9789159ad43c36f71b03b2`  
		Last Modified: Tue, 04 Dec 2018 01:43:59 GMT  
		Size: 26.8 MB (26842761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c886bfd7a3f26db6d6e2060d38dc90e5796dcd1b8b469dfc7f7a00c9b0bae1`  
		Last Modified: Tue, 04 Dec 2018 01:43:52 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f66d0a0d5be8b828684480bc6e0d885e625b4506f443f5d685d2331ec630b3d0`  
		Last Modified: Tue, 04 Dec 2018 01:43:51 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1`

```console
$ docker pull ghost@sha256:557d893361ee109820f84880f4b0dedeb990137b3acae369613ca0e7281e8c15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:1` - linux; amd64

```console
$ docker pull ghost@sha256:995b015df1df3f8fbd604d7c29e75be8bc5f7df374470dfe30dfef9f0e0bac2d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.2 MB (274230342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce34bbb42227903637849b1c67e39e8bec579a3434ae17599aba061e295830ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:07:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 12:09:09 GMT
ENV NODE_VERSION=8.14.0
# Mon, 03 Dec 2018 21:41:03 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Mon, 03 Dec 2018 21:41:03 GMT
ENV YARN_VERSION=1.12.3
# Mon, 03 Dec 2018 21:41:08 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Mon, 03 Dec 2018 21:41:08 GMT
CMD ["node"]
# Mon, 03 Dec 2018 23:39:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 03 Dec 2018 23:39:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 03 Dec 2018 23:39:31 GMT
ENV NODE_ENV=production
# Mon, 03 Dec 2018 23:39:32 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Mon, 03 Dec 2018 23:39:55 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Dec 2018 23:40:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Dec 2018 23:40:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Dec 2018 23:43:20 GMT
ENV GHOST_VERSION=1.25.6
# Mon, 03 Dec 2018 23:43:52 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 03 Dec 2018 23:43:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 03 Dec 2018 23:44:24 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Dec 2018 23:44:26 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Dec 2018 23:44:26 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Dec 2018 23:44:26 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Mon, 03 Dec 2018 23:44:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Dec 2018 23:44:27 GMT
EXPOSE 2368/tcp
# Mon, 03 Dec 2018 23:44:27 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd77ab8da06679825549b88b99b2e9277d0f548bcbe631450a3be48408c8256`  
		Last Modified: Fri, 16 Nov 2018 14:28:00 GMT  
		Size: 4.1 KB (4149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f41ceffa9f20448582f818d80ad0ede610910ab85fbe149185348d0957e703`  
		Last Modified: Mon, 03 Dec 2018 22:53:57 GMT  
		Size: 28.0 MB (28009081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0780bb3d463704547a0e4065170553863f19f31d85108e29fd1a1450225097fd`  
		Last Modified: Mon, 03 Dec 2018 22:53:50 GMT  
		Size: 1.3 MB (1312712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:551fe63f1f02b08e3616a2256a55c721f7496fd47d5fa45f6caece9359947db7`  
		Last Modified: Mon, 03 Dec 2018 23:49:43 GMT  
		Size: 500.9 KB (500920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6968d4fce38e9918cb101fd9b3dacad8685254d831f0bc0e196049546c436ce8`  
		Last Modified: Mon, 03 Dec 2018 23:49:53 GMT  
		Size: 17.3 MB (17291868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ef653f68b2b654527440488541c20d820d76fad5c8fa6b2d7e84cf9fa477e3`  
		Last Modified: Mon, 03 Dec 2018 23:53:53 GMT  
		Size: 101.8 MB (101823823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a703ca45486542cfc5cc930786d421840dc12257a743087a0aff866a7eba1db3`  
		Last Modified: Mon, 03 Dec 2018 23:53:54 GMT  
		Size: 102.8 MB (102800927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3462e566e29e5042b79a057581f2ed4ef1bd2c4489b141076cc759d1a0ed825c`  
		Last Modified: Mon, 03 Dec 2018 23:53:22 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; arm variant v7

```console
$ docker pull ghost@sha256:eb11b3cf0b081b91ffe6d47fedcf70a0d7808ba89007aff312f62538f60582c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273572207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36939a77c6866ba4146df9d70b19af4f9d90ec389fa9b76b98bdd50c2c024b7c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:54:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 12:57:59 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 12:58:25 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 12:58:29 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 12:58:33 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 12:58:35 GMT
CMD ["node"]
# Wed, 28 Nov 2018 13:30:48 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Nov 2018 13:30:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Nov 2018 13:30:52 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 13:30:52 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 13:31:36 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 13:31:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 13:31:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 28 Nov 2018 13:37:40 GMT
ENV GHOST_VERSION=1.25.6
# Wed, 28 Nov 2018 13:39:12 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 28 Nov 2018 13:39:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 28 Nov 2018 13:43:18 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 28 Nov 2018 13:43:22 GMT
WORKDIR /var/lib/ghost
# Wed, 28 Nov 2018 13:43:22 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 28 Nov 2018 13:43:23 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Wed, 28 Nov 2018 13:43:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 13:43:24 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 13:43:24 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d593375e3e016efae3c2913bf9ec6a773d4d78912648d30765dc4d4b0a756a`  
		Last Modified: Fri, 16 Nov 2018 19:05:29 GMT  
		Size: 4.2 KB (4165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e20b4917aedccd552ac0cc78ed1e2104a3ca607c031ee2e99c8f5b3006d9ee`  
		Last Modified: Wed, 28 Nov 2018 13:06:18 GMT  
		Size: 25.5 MB (25452579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea0f8ab58b1fe09c50d6ec85b311a3723e8bee5dfa0f0fbff1fbf023c2f3cb2b`  
		Last Modified: Wed, 28 Nov 2018 13:06:10 GMT  
		Size: 1.3 MB (1310263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197be4c6f21e6ff0c9ac568b984e747b6da0ea3dd03188b575e82ee9cca33498`  
		Last Modified: Wed, 28 Nov 2018 13:50:41 GMT  
		Size: 475.4 KB (475434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb86a9a688bc50dadda629fcab35175ba4427f1797cebb1233534f7fbbb869b6`  
		Last Modified: Wed, 28 Nov 2018 13:50:50 GMT  
		Size: 17.3 MB (17292266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4231a08bb65e96bdfa769864a39c8c841852d584345a53ba27e0611cb933e949`  
		Last Modified: Wed, 28 Nov 2018 13:52:24 GMT  
		Size: 94.1 MB (94107514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb0f3eb025345ad07c78836f166a6ce972b2ecd37a71abbca5e37b76fedef2d`  
		Last Modified: Wed, 28 Nov 2018 13:52:29 GMT  
		Size: 115.7 MB (115659343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:071500058b69651fdb03762dfb5c2f10b4014a80f8968b2b2de3a79abec59942`  
		Last Modified: Wed, 28 Nov 2018 13:51:49 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:854bf27d9e65c10a46afec65e18339b283c83540db0ab004655969ad666c9a65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.5 MB (276463072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5792f6244dc7165a71279e38093b31cb197cb7aded81a6e2420ead198b424d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 03:05:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 16:55:37 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 16:56:35 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 16:56:36 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 16:56:42 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 16:56:43 GMT
CMD ["node"]
# Thu, 29 Nov 2018 09:43:31 GMT
ENV GOSU_VERSION=1.10
# Thu, 29 Nov 2018 09:43:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 29 Nov 2018 09:43:37 GMT
ENV NODE_ENV=production
# Thu, 29 Nov 2018 09:43:38 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 29 Nov 2018 09:44:13 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 29 Nov 2018 09:44:14 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 29 Nov 2018 09:44:15 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 29 Nov 2018 09:51:54 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 29 Nov 2018 09:53:03 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 29 Nov 2018 09:53:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 29 Nov 2018 09:58:13 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 29 Nov 2018 09:58:17 GMT
WORKDIR /var/lib/ghost
# Thu, 29 Nov 2018 09:58:17 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 29 Nov 2018 09:58:18 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Thu, 29 Nov 2018 09:58:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Nov 2018 09:58:19 GMT
EXPOSE 2368/tcp
# Thu, 29 Nov 2018 09:58:20 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4fc0c5fe73c64e6243ea741f24b5591b828ed247c4f9aefad5813804a12c18a`  
		Last Modified: Sat, 17 Nov 2018 03:10:34 GMT  
		Size: 4.2 KB (4167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195106867279a5ea2805300ddff9e0a5baaa5514d73dbd992ca0961a30dcdcd2`  
		Last Modified: Wed, 28 Nov 2018 18:03:22 GMT  
		Size: 26.7 MB (26679215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1e147cbe8fb30957c06a70aafd9c1d19022dd751001f50be91d07f63877b7c`  
		Last Modified: Wed, 28 Nov 2018 18:03:11 GMT  
		Size: 1.3 MB (1310264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7eac4afa60ee78744955d5914636728db7c19a7bf8cf564a95fb3294f65bddf`  
		Last Modified: Thu, 29 Nov 2018 09:59:11 GMT  
		Size: 468.9 KB (468938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff362a86d810de82a4076658effe4861165de002edd0a9942d4d5fbc7d6ca6db`  
		Last Modified: Thu, 29 Nov 2018 09:59:19 GMT  
		Size: 17.3 MB (17292884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e2ee39d1e6e7c46b4aff0bc77780d554b44eac6211f3f07450c2b28e4a29d3`  
		Last Modified: Thu, 29 Nov 2018 10:01:15 GMT  
		Size: 94.1 MB (94108029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c3b6da61ad9e10590a3bc2938194816b41bea8b7035ea3079ac8d8e9657135`  
		Last Modified: Thu, 29 Nov 2018 10:01:22 GMT  
		Size: 116.3 MB (116267681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f2f268220e077807e4263f2eebbecb59eebbb965e2f32ec3b6daf8e4da584e`  
		Last Modified: Thu, 29 Nov 2018 10:00:39 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; 386

```console
$ docker pull ghost@sha256:831ae62bd023d81e24783aee1f5279259889e7c36697bf84333d37dd939e522e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.1 MB (281124409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85052a852bb262c8357899ddc92f64e5bf3e16aff18d6df6560dc27c7d0ba30f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Tue, 27 Nov 2018 14:20:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 16:49:58 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 16:50:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 16:50:23 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 16:50:29 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 16:50:29 GMT
CMD ["node"]
# Wed, 28 Nov 2018 18:11:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Nov 2018 18:11:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Nov 2018 18:11:48 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 18:11:48 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 18:12:08 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 18:12:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 18:12:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 28 Nov 2018 18:16:02 GMT
ENV GHOST_VERSION=1.25.6
# Wed, 28 Nov 2018 18:16:38 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 28 Nov 2018 18:16:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 28 Nov 2018 18:18:37 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 28 Nov 2018 18:18:38 GMT
WORKDIR /var/lib/ghost
# Wed, 28 Nov 2018 18:18:39 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 28 Nov 2018 18:18:39 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Wed, 28 Nov 2018 18:18:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 18:18:39 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 18:18:40 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f393758efdde4e933c557f3f372621ebb2d7b6711b98741a1c8c23426030e867`  
		Last Modified: Tue, 27 Nov 2018 15:14:57 GMT  
		Size: 4.1 KB (4135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629585385db686ea51dbde250d8fb8535c936c9a4aae3d5071d5d5d9db4e7d6c`  
		Last Modified: Wed, 28 Nov 2018 17:45:01 GMT  
		Size: 27.8 MB (27819798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c0ec4bd20dc4ae2294747163ee251dadb6ab6ce1bb037b42fb5970771f81f5`  
		Last Modified: Wed, 28 Nov 2018 17:44:54 GMT  
		Size: 1.3 MB (1310263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e16a9ff05d4f1bd5ced25d3df057a511e9c714483fc8588907380d0f225933`  
		Last Modified: Wed, 28 Nov 2018 18:23:05 GMT  
		Size: 480.8 KB (480826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ef6f086b913c964498b258bdaea75cdb47910b8d548250b9245556141d4fb9`  
		Last Modified: Wed, 28 Nov 2018 18:23:22 GMT  
		Size: 17.3 MB (17287300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea45bdffb80e6a73ddf2cea77594bf0eedf47b3a8b4fe154b8cb35c5eb02215`  
		Last Modified: Wed, 28 Nov 2018 18:25:21 GMT  
		Size: 94.1 MB (94100891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26db75f9b38161f956c8f41c9649a547939e752a6479f094417731858f0142b1`  
		Last Modified: Wed, 28 Nov 2018 18:25:26 GMT  
		Size: 117.0 MB (116993835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75be1e9b0719adbee63f5dc8c59330f03e61d2c017b2e740e5c025a46a98fa62`  
		Last Modified: Wed, 28 Nov 2018 18:24:50 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; ppc64le

```console
$ docker pull ghost@sha256:c354cc3c1412a6f840feabbd777b0bfcee8d01eadf59e878e4d728e92f9a33d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.1 MB (280097200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:103d63d199ed7a46c27c9d31ad0d7aa41bbeacd540b904d6905b3328c44a1a27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:07:51 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 16:55:13 GMT
ENV NODE_VERSION=8.14.0
# Tue, 04 Dec 2018 10:50:39 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 04 Dec 2018 10:50:40 GMT
ENV YARN_VERSION=1.12.3
# Tue, 04 Dec 2018 10:50:49 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 04 Dec 2018 10:50:49 GMT
CMD ["node"]
# Tue, 04 Dec 2018 12:01:05 GMT
ENV GOSU_VERSION=1.10
# Tue, 04 Dec 2018 12:01:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 04 Dec 2018 12:01:14 GMT
ENV NODE_ENV=production
# Tue, 04 Dec 2018 12:01:14 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 04 Dec 2018 12:01:52 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 04 Dec 2018 12:01:57 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 04 Dec 2018 12:01:57 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 04 Dec 2018 12:18:25 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 04 Dec 2018 12:20:35 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 04 Dec 2018 12:21:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 04 Dec 2018 12:26:45 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 04 Dec 2018 12:27:05 GMT
WORKDIR /var/lib/ghost
# Tue, 04 Dec 2018 12:27:06 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 04 Dec 2018 12:27:09 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Tue, 04 Dec 2018 12:27:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Dec 2018 12:27:13 GMT
EXPOSE 2368/tcp
# Tue, 04 Dec 2018 12:27:15 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1afeea1085f7b2f8c5843b5f4cfab6c95444c74532315569e14b7459ea105b`  
		Last Modified: Fri, 16 Nov 2018 20:13:37 GMT  
		Size: 4.2 KB (4185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42739ce341e43f26dc0b14f38202e253774f4c322ebee85ad77d539ea1259e1`  
		Last Modified: Tue, 04 Dec 2018 11:23:57 GMT  
		Size: 27.0 MB (26963900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e73cc53546c556d816a25f199d9fb9d077bd3fae67dbbe5ea8a61302ffa438`  
		Last Modified: Tue, 04 Dec 2018 11:23:36 GMT  
		Size: 1.3 MB (1312722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3277339a1ef69cca91c0224830307d89781aedc903b6307b534827f9ba13e6`  
		Last Modified: Tue, 04 Dec 2018 12:31:21 GMT  
		Size: 470.1 KB (470078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3df051e834ca0dc3cea01be91c7cd9a0a1783e84964890d3adf80b897a3757`  
		Last Modified: Tue, 04 Dec 2018 12:32:03 GMT  
		Size: 17.3 MB (17293239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa9a51944b4694a8ac4306c9b58c8088078af93d872e2981ae3ead37a91ef09`  
		Last Modified: Tue, 04 Dec 2018 12:42:52 GMT  
		Size: 94.1 MB (94107986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:963766adcf8c1527d98fc24769ef47fcf4aa85761b70cd7fadea2fe098ee72ba`  
		Last Modified: Tue, 04 Dec 2018 12:43:07 GMT  
		Size: 117.2 MB (117203792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3a0a83c59fdfedfcb572d19d88177d24c058ee83323f9712173742d641f509`  
		Last Modified: Tue, 04 Dec 2018 12:41:27 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; s390x

```console
$ docker pull ghost@sha256:271e176c9dc3e2f5b5fe8bfe72ca8cde6abc10828d8eb3fb54bf8761efe2941a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.5 MB (280517202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7c82bfeb1313e9115b85340f1c43582be39cdd51a77610594674b91e521d5ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:39:43 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 13:27:02 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 13:27:28 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 13:27:29 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 13:27:33 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 13:27:34 GMT
CMD ["node"]
# Thu, 29 Nov 2018 12:43:28 GMT
ENV GOSU_VERSION=1.10
# Thu, 29 Nov 2018 12:43:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 29 Nov 2018 12:43:32 GMT
ENV NODE_ENV=production
# Thu, 29 Nov 2018 12:43:32 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 29 Nov 2018 12:43:49 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 29 Nov 2018 12:43:50 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 29 Nov 2018 12:43:50 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 29 Nov 2018 12:46:39 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 29 Nov 2018 12:47:08 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 29 Nov 2018 12:47:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 29 Nov 2018 12:48:44 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 29 Nov 2018 12:48:46 GMT
WORKDIR /var/lib/ghost
# Thu, 29 Nov 2018 12:48:46 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 29 Nov 2018 12:48:46 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Thu, 29 Nov 2018 12:48:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Nov 2018 12:48:47 GMT
EXPOSE 2368/tcp
# Thu, 29 Nov 2018 12:48:47 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:db7aa0264595016e37963ab9cf4e6fbfa7b19d99cb39b16bbb561a02b7b459d2`  
		Last Modified: Thu, 15 Nov 2018 02:03:05 GMT  
		Size: 22.3 MB (22334714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2801c348986bea5725dc642412a1130b6f77f3e4a15d3a5ab8d90b93bb96aad0`  
		Last Modified: Fri, 16 Nov 2018 20:42:10 GMT  
		Size: 4.2 KB (4150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b17408b2e243ccc39821963534cdf5f8eddaac5267dc9f28e635094953ba50`  
		Last Modified: Wed, 28 Nov 2018 14:04:43 GMT  
		Size: 27.8 MB (27836589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf4c04b048513ecc0deb58c3a802087a34607574fc49f8999b5c17cd69756f3`  
		Last Modified: Wed, 28 Nov 2018 14:04:37 GMT  
		Size: 1.3 MB (1310258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1186605b43f3fa11c94b829cac971a55c83362ec7a6cba3a82589ca798af34dc`  
		Last Modified: Thu, 29 Nov 2018 12:49:18 GMT  
		Size: 487.0 KB (487049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e367843ef942554f7ff07591dba68078d4dd1ec55acdb20afa015c666ea8f4d`  
		Last Modified: Thu, 29 Nov 2018 12:49:23 GMT  
		Size: 17.3 MB (17287465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5986df848c1e9f5cf828b0e076d51a7a9e822126f979acf21aa52f5f17635916`  
		Last Modified: Thu, 29 Nov 2018 12:50:16 GMT  
		Size: 94.1 MB (94105977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac47dd5698cc07d3c581ea7984d564241e11149c570d4d0297845c53f12b5b73`  
		Last Modified: Thu, 29 Nov 2018 12:50:19 GMT  
		Size: 117.2 MB (117150414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f1a54bf0687cbdab47b530dba73387f1f953832c4b70836849a67a6f5e55ef`  
		Last Modified: Thu, 29 Nov 2018 12:49:59 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25`

```console
$ docker pull ghost@sha256:557d893361ee109820f84880f4b0dedeb990137b3acae369613ca0e7281e8c15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:1.25` - linux; amd64

```console
$ docker pull ghost@sha256:995b015df1df3f8fbd604d7c29e75be8bc5f7df374470dfe30dfef9f0e0bac2d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.2 MB (274230342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce34bbb42227903637849b1c67e39e8bec579a3434ae17599aba061e295830ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:07:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 12:09:09 GMT
ENV NODE_VERSION=8.14.0
# Mon, 03 Dec 2018 21:41:03 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Mon, 03 Dec 2018 21:41:03 GMT
ENV YARN_VERSION=1.12.3
# Mon, 03 Dec 2018 21:41:08 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Mon, 03 Dec 2018 21:41:08 GMT
CMD ["node"]
# Mon, 03 Dec 2018 23:39:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 03 Dec 2018 23:39:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 03 Dec 2018 23:39:31 GMT
ENV NODE_ENV=production
# Mon, 03 Dec 2018 23:39:32 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Mon, 03 Dec 2018 23:39:55 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Dec 2018 23:40:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Dec 2018 23:40:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Dec 2018 23:43:20 GMT
ENV GHOST_VERSION=1.25.6
# Mon, 03 Dec 2018 23:43:52 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 03 Dec 2018 23:43:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 03 Dec 2018 23:44:24 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Dec 2018 23:44:26 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Dec 2018 23:44:26 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Dec 2018 23:44:26 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Mon, 03 Dec 2018 23:44:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Dec 2018 23:44:27 GMT
EXPOSE 2368/tcp
# Mon, 03 Dec 2018 23:44:27 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd77ab8da06679825549b88b99b2e9277d0f548bcbe631450a3be48408c8256`  
		Last Modified: Fri, 16 Nov 2018 14:28:00 GMT  
		Size: 4.1 KB (4149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f41ceffa9f20448582f818d80ad0ede610910ab85fbe149185348d0957e703`  
		Last Modified: Mon, 03 Dec 2018 22:53:57 GMT  
		Size: 28.0 MB (28009081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0780bb3d463704547a0e4065170553863f19f31d85108e29fd1a1450225097fd`  
		Last Modified: Mon, 03 Dec 2018 22:53:50 GMT  
		Size: 1.3 MB (1312712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:551fe63f1f02b08e3616a2256a55c721f7496fd47d5fa45f6caece9359947db7`  
		Last Modified: Mon, 03 Dec 2018 23:49:43 GMT  
		Size: 500.9 KB (500920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6968d4fce38e9918cb101fd9b3dacad8685254d831f0bc0e196049546c436ce8`  
		Last Modified: Mon, 03 Dec 2018 23:49:53 GMT  
		Size: 17.3 MB (17291868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ef653f68b2b654527440488541c20d820d76fad5c8fa6b2d7e84cf9fa477e3`  
		Last Modified: Mon, 03 Dec 2018 23:53:53 GMT  
		Size: 101.8 MB (101823823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a703ca45486542cfc5cc930786d421840dc12257a743087a0aff866a7eba1db3`  
		Last Modified: Mon, 03 Dec 2018 23:53:54 GMT  
		Size: 102.8 MB (102800927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3462e566e29e5042b79a057581f2ed4ef1bd2c4489b141076cc759d1a0ed825c`  
		Last Modified: Mon, 03 Dec 2018 23:53:22 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; arm variant v7

```console
$ docker pull ghost@sha256:eb11b3cf0b081b91ffe6d47fedcf70a0d7808ba89007aff312f62538f60582c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273572207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36939a77c6866ba4146df9d70b19af4f9d90ec389fa9b76b98bdd50c2c024b7c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:54:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 12:57:59 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 12:58:25 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 12:58:29 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 12:58:33 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 12:58:35 GMT
CMD ["node"]
# Wed, 28 Nov 2018 13:30:48 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Nov 2018 13:30:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Nov 2018 13:30:52 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 13:30:52 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 13:31:36 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 13:31:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 13:31:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 28 Nov 2018 13:37:40 GMT
ENV GHOST_VERSION=1.25.6
# Wed, 28 Nov 2018 13:39:12 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 28 Nov 2018 13:39:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 28 Nov 2018 13:43:18 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 28 Nov 2018 13:43:22 GMT
WORKDIR /var/lib/ghost
# Wed, 28 Nov 2018 13:43:22 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 28 Nov 2018 13:43:23 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Wed, 28 Nov 2018 13:43:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 13:43:24 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 13:43:24 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d593375e3e016efae3c2913bf9ec6a773d4d78912648d30765dc4d4b0a756a`  
		Last Modified: Fri, 16 Nov 2018 19:05:29 GMT  
		Size: 4.2 KB (4165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e20b4917aedccd552ac0cc78ed1e2104a3ca607c031ee2e99c8f5b3006d9ee`  
		Last Modified: Wed, 28 Nov 2018 13:06:18 GMT  
		Size: 25.5 MB (25452579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea0f8ab58b1fe09c50d6ec85b311a3723e8bee5dfa0f0fbff1fbf023c2f3cb2b`  
		Last Modified: Wed, 28 Nov 2018 13:06:10 GMT  
		Size: 1.3 MB (1310263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197be4c6f21e6ff0c9ac568b984e747b6da0ea3dd03188b575e82ee9cca33498`  
		Last Modified: Wed, 28 Nov 2018 13:50:41 GMT  
		Size: 475.4 KB (475434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb86a9a688bc50dadda629fcab35175ba4427f1797cebb1233534f7fbbb869b6`  
		Last Modified: Wed, 28 Nov 2018 13:50:50 GMT  
		Size: 17.3 MB (17292266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4231a08bb65e96bdfa769864a39c8c841852d584345a53ba27e0611cb933e949`  
		Last Modified: Wed, 28 Nov 2018 13:52:24 GMT  
		Size: 94.1 MB (94107514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb0f3eb025345ad07c78836f166a6ce972b2ecd37a71abbca5e37b76fedef2d`  
		Last Modified: Wed, 28 Nov 2018 13:52:29 GMT  
		Size: 115.7 MB (115659343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:071500058b69651fdb03762dfb5c2f10b4014a80f8968b2b2de3a79abec59942`  
		Last Modified: Wed, 28 Nov 2018 13:51:49 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:854bf27d9e65c10a46afec65e18339b283c83540db0ab004655969ad666c9a65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.5 MB (276463072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5792f6244dc7165a71279e38093b31cb197cb7aded81a6e2420ead198b424d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 03:05:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 16:55:37 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 16:56:35 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 16:56:36 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 16:56:42 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 16:56:43 GMT
CMD ["node"]
# Thu, 29 Nov 2018 09:43:31 GMT
ENV GOSU_VERSION=1.10
# Thu, 29 Nov 2018 09:43:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 29 Nov 2018 09:43:37 GMT
ENV NODE_ENV=production
# Thu, 29 Nov 2018 09:43:38 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 29 Nov 2018 09:44:13 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 29 Nov 2018 09:44:14 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 29 Nov 2018 09:44:15 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 29 Nov 2018 09:51:54 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 29 Nov 2018 09:53:03 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 29 Nov 2018 09:53:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 29 Nov 2018 09:58:13 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 29 Nov 2018 09:58:17 GMT
WORKDIR /var/lib/ghost
# Thu, 29 Nov 2018 09:58:17 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 29 Nov 2018 09:58:18 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Thu, 29 Nov 2018 09:58:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Nov 2018 09:58:19 GMT
EXPOSE 2368/tcp
# Thu, 29 Nov 2018 09:58:20 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4fc0c5fe73c64e6243ea741f24b5591b828ed247c4f9aefad5813804a12c18a`  
		Last Modified: Sat, 17 Nov 2018 03:10:34 GMT  
		Size: 4.2 KB (4167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195106867279a5ea2805300ddff9e0a5baaa5514d73dbd992ca0961a30dcdcd2`  
		Last Modified: Wed, 28 Nov 2018 18:03:22 GMT  
		Size: 26.7 MB (26679215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1e147cbe8fb30957c06a70aafd9c1d19022dd751001f50be91d07f63877b7c`  
		Last Modified: Wed, 28 Nov 2018 18:03:11 GMT  
		Size: 1.3 MB (1310264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7eac4afa60ee78744955d5914636728db7c19a7bf8cf564a95fb3294f65bddf`  
		Last Modified: Thu, 29 Nov 2018 09:59:11 GMT  
		Size: 468.9 KB (468938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff362a86d810de82a4076658effe4861165de002edd0a9942d4d5fbc7d6ca6db`  
		Last Modified: Thu, 29 Nov 2018 09:59:19 GMT  
		Size: 17.3 MB (17292884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e2ee39d1e6e7c46b4aff0bc77780d554b44eac6211f3f07450c2b28e4a29d3`  
		Last Modified: Thu, 29 Nov 2018 10:01:15 GMT  
		Size: 94.1 MB (94108029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c3b6da61ad9e10590a3bc2938194816b41bea8b7035ea3079ac8d8e9657135`  
		Last Modified: Thu, 29 Nov 2018 10:01:22 GMT  
		Size: 116.3 MB (116267681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f2f268220e077807e4263f2eebbecb59eebbb965e2f32ec3b6daf8e4da584e`  
		Last Modified: Thu, 29 Nov 2018 10:00:39 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; 386

```console
$ docker pull ghost@sha256:831ae62bd023d81e24783aee1f5279259889e7c36697bf84333d37dd939e522e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.1 MB (281124409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85052a852bb262c8357899ddc92f64e5bf3e16aff18d6df6560dc27c7d0ba30f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Tue, 27 Nov 2018 14:20:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 16:49:58 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 16:50:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 16:50:23 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 16:50:29 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 16:50:29 GMT
CMD ["node"]
# Wed, 28 Nov 2018 18:11:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Nov 2018 18:11:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Nov 2018 18:11:48 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 18:11:48 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 18:12:08 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 18:12:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 18:12:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 28 Nov 2018 18:16:02 GMT
ENV GHOST_VERSION=1.25.6
# Wed, 28 Nov 2018 18:16:38 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 28 Nov 2018 18:16:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 28 Nov 2018 18:18:37 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 28 Nov 2018 18:18:38 GMT
WORKDIR /var/lib/ghost
# Wed, 28 Nov 2018 18:18:39 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 28 Nov 2018 18:18:39 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Wed, 28 Nov 2018 18:18:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 18:18:39 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 18:18:40 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f393758efdde4e933c557f3f372621ebb2d7b6711b98741a1c8c23426030e867`  
		Last Modified: Tue, 27 Nov 2018 15:14:57 GMT  
		Size: 4.1 KB (4135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629585385db686ea51dbde250d8fb8535c936c9a4aae3d5071d5d5d9db4e7d6c`  
		Last Modified: Wed, 28 Nov 2018 17:45:01 GMT  
		Size: 27.8 MB (27819798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c0ec4bd20dc4ae2294747163ee251dadb6ab6ce1bb037b42fb5970771f81f5`  
		Last Modified: Wed, 28 Nov 2018 17:44:54 GMT  
		Size: 1.3 MB (1310263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e16a9ff05d4f1bd5ced25d3df057a511e9c714483fc8588907380d0f225933`  
		Last Modified: Wed, 28 Nov 2018 18:23:05 GMT  
		Size: 480.8 KB (480826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ef6f086b913c964498b258bdaea75cdb47910b8d548250b9245556141d4fb9`  
		Last Modified: Wed, 28 Nov 2018 18:23:22 GMT  
		Size: 17.3 MB (17287300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea45bdffb80e6a73ddf2cea77594bf0eedf47b3a8b4fe154b8cb35c5eb02215`  
		Last Modified: Wed, 28 Nov 2018 18:25:21 GMT  
		Size: 94.1 MB (94100891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26db75f9b38161f956c8f41c9649a547939e752a6479f094417731858f0142b1`  
		Last Modified: Wed, 28 Nov 2018 18:25:26 GMT  
		Size: 117.0 MB (116993835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75be1e9b0719adbee63f5dc8c59330f03e61d2c017b2e740e5c025a46a98fa62`  
		Last Modified: Wed, 28 Nov 2018 18:24:50 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; ppc64le

```console
$ docker pull ghost@sha256:c354cc3c1412a6f840feabbd777b0bfcee8d01eadf59e878e4d728e92f9a33d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.1 MB (280097200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:103d63d199ed7a46c27c9d31ad0d7aa41bbeacd540b904d6905b3328c44a1a27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:07:51 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 16:55:13 GMT
ENV NODE_VERSION=8.14.0
# Tue, 04 Dec 2018 10:50:39 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 04 Dec 2018 10:50:40 GMT
ENV YARN_VERSION=1.12.3
# Tue, 04 Dec 2018 10:50:49 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 04 Dec 2018 10:50:49 GMT
CMD ["node"]
# Tue, 04 Dec 2018 12:01:05 GMT
ENV GOSU_VERSION=1.10
# Tue, 04 Dec 2018 12:01:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 04 Dec 2018 12:01:14 GMT
ENV NODE_ENV=production
# Tue, 04 Dec 2018 12:01:14 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 04 Dec 2018 12:01:52 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 04 Dec 2018 12:01:57 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 04 Dec 2018 12:01:57 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 04 Dec 2018 12:18:25 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 04 Dec 2018 12:20:35 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 04 Dec 2018 12:21:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 04 Dec 2018 12:26:45 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 04 Dec 2018 12:27:05 GMT
WORKDIR /var/lib/ghost
# Tue, 04 Dec 2018 12:27:06 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 04 Dec 2018 12:27:09 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Tue, 04 Dec 2018 12:27:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Dec 2018 12:27:13 GMT
EXPOSE 2368/tcp
# Tue, 04 Dec 2018 12:27:15 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1afeea1085f7b2f8c5843b5f4cfab6c95444c74532315569e14b7459ea105b`  
		Last Modified: Fri, 16 Nov 2018 20:13:37 GMT  
		Size: 4.2 KB (4185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42739ce341e43f26dc0b14f38202e253774f4c322ebee85ad77d539ea1259e1`  
		Last Modified: Tue, 04 Dec 2018 11:23:57 GMT  
		Size: 27.0 MB (26963900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e73cc53546c556d816a25f199d9fb9d077bd3fae67dbbe5ea8a61302ffa438`  
		Last Modified: Tue, 04 Dec 2018 11:23:36 GMT  
		Size: 1.3 MB (1312722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3277339a1ef69cca91c0224830307d89781aedc903b6307b534827f9ba13e6`  
		Last Modified: Tue, 04 Dec 2018 12:31:21 GMT  
		Size: 470.1 KB (470078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3df051e834ca0dc3cea01be91c7cd9a0a1783e84964890d3adf80b897a3757`  
		Last Modified: Tue, 04 Dec 2018 12:32:03 GMT  
		Size: 17.3 MB (17293239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa9a51944b4694a8ac4306c9b58c8088078af93d872e2981ae3ead37a91ef09`  
		Last Modified: Tue, 04 Dec 2018 12:42:52 GMT  
		Size: 94.1 MB (94107986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:963766adcf8c1527d98fc24769ef47fcf4aa85761b70cd7fadea2fe098ee72ba`  
		Last Modified: Tue, 04 Dec 2018 12:43:07 GMT  
		Size: 117.2 MB (117203792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3a0a83c59fdfedfcb572d19d88177d24c058ee83323f9712173742d641f509`  
		Last Modified: Tue, 04 Dec 2018 12:41:27 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; s390x

```console
$ docker pull ghost@sha256:271e176c9dc3e2f5b5fe8bfe72ca8cde6abc10828d8eb3fb54bf8761efe2941a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.5 MB (280517202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7c82bfeb1313e9115b85340f1c43582be39cdd51a77610594674b91e521d5ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:39:43 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 13:27:02 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 13:27:28 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 13:27:29 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 13:27:33 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 13:27:34 GMT
CMD ["node"]
# Thu, 29 Nov 2018 12:43:28 GMT
ENV GOSU_VERSION=1.10
# Thu, 29 Nov 2018 12:43:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 29 Nov 2018 12:43:32 GMT
ENV NODE_ENV=production
# Thu, 29 Nov 2018 12:43:32 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 29 Nov 2018 12:43:49 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 29 Nov 2018 12:43:50 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 29 Nov 2018 12:43:50 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 29 Nov 2018 12:46:39 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 29 Nov 2018 12:47:08 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 29 Nov 2018 12:47:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 29 Nov 2018 12:48:44 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 29 Nov 2018 12:48:46 GMT
WORKDIR /var/lib/ghost
# Thu, 29 Nov 2018 12:48:46 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 29 Nov 2018 12:48:46 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Thu, 29 Nov 2018 12:48:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Nov 2018 12:48:47 GMT
EXPOSE 2368/tcp
# Thu, 29 Nov 2018 12:48:47 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:db7aa0264595016e37963ab9cf4e6fbfa7b19d99cb39b16bbb561a02b7b459d2`  
		Last Modified: Thu, 15 Nov 2018 02:03:05 GMT  
		Size: 22.3 MB (22334714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2801c348986bea5725dc642412a1130b6f77f3e4a15d3a5ab8d90b93bb96aad0`  
		Last Modified: Fri, 16 Nov 2018 20:42:10 GMT  
		Size: 4.2 KB (4150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b17408b2e243ccc39821963534cdf5f8eddaac5267dc9f28e635094953ba50`  
		Last Modified: Wed, 28 Nov 2018 14:04:43 GMT  
		Size: 27.8 MB (27836589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf4c04b048513ecc0deb58c3a802087a34607574fc49f8999b5c17cd69756f3`  
		Last Modified: Wed, 28 Nov 2018 14:04:37 GMT  
		Size: 1.3 MB (1310258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1186605b43f3fa11c94b829cac971a55c83362ec7a6cba3a82589ca798af34dc`  
		Last Modified: Thu, 29 Nov 2018 12:49:18 GMT  
		Size: 487.0 KB (487049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e367843ef942554f7ff07591dba68078d4dd1ec55acdb20afa015c666ea8f4d`  
		Last Modified: Thu, 29 Nov 2018 12:49:23 GMT  
		Size: 17.3 MB (17287465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5986df848c1e9f5cf828b0e076d51a7a9e822126f979acf21aa52f5f17635916`  
		Last Modified: Thu, 29 Nov 2018 12:50:16 GMT  
		Size: 94.1 MB (94105977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac47dd5698cc07d3c581ea7984d564241e11149c570d4d0297845c53f12b5b73`  
		Last Modified: Thu, 29 Nov 2018 12:50:19 GMT  
		Size: 117.2 MB (117150414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f1a54bf0687cbdab47b530dba73387f1f953832c4b70836849a67a6f5e55ef`  
		Last Modified: Thu, 29 Nov 2018 12:49:59 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25.6`

```console
$ docker pull ghost@sha256:557d893361ee109820f84880f4b0dedeb990137b3acae369613ca0e7281e8c15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:1.25.6` - linux; amd64

```console
$ docker pull ghost@sha256:995b015df1df3f8fbd604d7c29e75be8bc5f7df374470dfe30dfef9f0e0bac2d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.2 MB (274230342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce34bbb42227903637849b1c67e39e8bec579a3434ae17599aba061e295830ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:07:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 12:09:09 GMT
ENV NODE_VERSION=8.14.0
# Mon, 03 Dec 2018 21:41:03 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Mon, 03 Dec 2018 21:41:03 GMT
ENV YARN_VERSION=1.12.3
# Mon, 03 Dec 2018 21:41:08 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Mon, 03 Dec 2018 21:41:08 GMT
CMD ["node"]
# Mon, 03 Dec 2018 23:39:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 03 Dec 2018 23:39:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 03 Dec 2018 23:39:31 GMT
ENV NODE_ENV=production
# Mon, 03 Dec 2018 23:39:32 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Mon, 03 Dec 2018 23:39:55 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Dec 2018 23:40:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Dec 2018 23:40:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Dec 2018 23:43:20 GMT
ENV GHOST_VERSION=1.25.6
# Mon, 03 Dec 2018 23:43:52 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 03 Dec 2018 23:43:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 03 Dec 2018 23:44:24 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Dec 2018 23:44:26 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Dec 2018 23:44:26 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Dec 2018 23:44:26 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Mon, 03 Dec 2018 23:44:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Dec 2018 23:44:27 GMT
EXPOSE 2368/tcp
# Mon, 03 Dec 2018 23:44:27 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd77ab8da06679825549b88b99b2e9277d0f548bcbe631450a3be48408c8256`  
		Last Modified: Fri, 16 Nov 2018 14:28:00 GMT  
		Size: 4.1 KB (4149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f41ceffa9f20448582f818d80ad0ede610910ab85fbe149185348d0957e703`  
		Last Modified: Mon, 03 Dec 2018 22:53:57 GMT  
		Size: 28.0 MB (28009081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0780bb3d463704547a0e4065170553863f19f31d85108e29fd1a1450225097fd`  
		Last Modified: Mon, 03 Dec 2018 22:53:50 GMT  
		Size: 1.3 MB (1312712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:551fe63f1f02b08e3616a2256a55c721f7496fd47d5fa45f6caece9359947db7`  
		Last Modified: Mon, 03 Dec 2018 23:49:43 GMT  
		Size: 500.9 KB (500920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6968d4fce38e9918cb101fd9b3dacad8685254d831f0bc0e196049546c436ce8`  
		Last Modified: Mon, 03 Dec 2018 23:49:53 GMT  
		Size: 17.3 MB (17291868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ef653f68b2b654527440488541c20d820d76fad5c8fa6b2d7e84cf9fa477e3`  
		Last Modified: Mon, 03 Dec 2018 23:53:53 GMT  
		Size: 101.8 MB (101823823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a703ca45486542cfc5cc930786d421840dc12257a743087a0aff866a7eba1db3`  
		Last Modified: Mon, 03 Dec 2018 23:53:54 GMT  
		Size: 102.8 MB (102800927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3462e566e29e5042b79a057581f2ed4ef1bd2c4489b141076cc759d1a0ed825c`  
		Last Modified: Mon, 03 Dec 2018 23:53:22 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.6` - linux; arm variant v7

```console
$ docker pull ghost@sha256:eb11b3cf0b081b91ffe6d47fedcf70a0d7808ba89007aff312f62538f60582c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273572207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36939a77c6866ba4146df9d70b19af4f9d90ec389fa9b76b98bdd50c2c024b7c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:54:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 12:57:59 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 12:58:25 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 12:58:29 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 12:58:33 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 12:58:35 GMT
CMD ["node"]
# Wed, 28 Nov 2018 13:30:48 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Nov 2018 13:30:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Nov 2018 13:30:52 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 13:30:52 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 13:31:36 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 13:31:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 13:31:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 28 Nov 2018 13:37:40 GMT
ENV GHOST_VERSION=1.25.6
# Wed, 28 Nov 2018 13:39:12 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 28 Nov 2018 13:39:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 28 Nov 2018 13:43:18 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 28 Nov 2018 13:43:22 GMT
WORKDIR /var/lib/ghost
# Wed, 28 Nov 2018 13:43:22 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 28 Nov 2018 13:43:23 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Wed, 28 Nov 2018 13:43:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 13:43:24 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 13:43:24 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d593375e3e016efae3c2913bf9ec6a773d4d78912648d30765dc4d4b0a756a`  
		Last Modified: Fri, 16 Nov 2018 19:05:29 GMT  
		Size: 4.2 KB (4165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e20b4917aedccd552ac0cc78ed1e2104a3ca607c031ee2e99c8f5b3006d9ee`  
		Last Modified: Wed, 28 Nov 2018 13:06:18 GMT  
		Size: 25.5 MB (25452579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea0f8ab58b1fe09c50d6ec85b311a3723e8bee5dfa0f0fbff1fbf023c2f3cb2b`  
		Last Modified: Wed, 28 Nov 2018 13:06:10 GMT  
		Size: 1.3 MB (1310263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197be4c6f21e6ff0c9ac568b984e747b6da0ea3dd03188b575e82ee9cca33498`  
		Last Modified: Wed, 28 Nov 2018 13:50:41 GMT  
		Size: 475.4 KB (475434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb86a9a688bc50dadda629fcab35175ba4427f1797cebb1233534f7fbbb869b6`  
		Last Modified: Wed, 28 Nov 2018 13:50:50 GMT  
		Size: 17.3 MB (17292266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4231a08bb65e96bdfa769864a39c8c841852d584345a53ba27e0611cb933e949`  
		Last Modified: Wed, 28 Nov 2018 13:52:24 GMT  
		Size: 94.1 MB (94107514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb0f3eb025345ad07c78836f166a6ce972b2ecd37a71abbca5e37b76fedef2d`  
		Last Modified: Wed, 28 Nov 2018 13:52:29 GMT  
		Size: 115.7 MB (115659343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:071500058b69651fdb03762dfb5c2f10b4014a80f8968b2b2de3a79abec59942`  
		Last Modified: Wed, 28 Nov 2018 13:51:49 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.6` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:854bf27d9e65c10a46afec65e18339b283c83540db0ab004655969ad666c9a65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.5 MB (276463072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5792f6244dc7165a71279e38093b31cb197cb7aded81a6e2420ead198b424d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 03:05:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 16:55:37 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 16:56:35 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 16:56:36 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 16:56:42 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 16:56:43 GMT
CMD ["node"]
# Thu, 29 Nov 2018 09:43:31 GMT
ENV GOSU_VERSION=1.10
# Thu, 29 Nov 2018 09:43:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 29 Nov 2018 09:43:37 GMT
ENV NODE_ENV=production
# Thu, 29 Nov 2018 09:43:38 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 29 Nov 2018 09:44:13 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 29 Nov 2018 09:44:14 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 29 Nov 2018 09:44:15 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 29 Nov 2018 09:51:54 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 29 Nov 2018 09:53:03 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 29 Nov 2018 09:53:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 29 Nov 2018 09:58:13 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 29 Nov 2018 09:58:17 GMT
WORKDIR /var/lib/ghost
# Thu, 29 Nov 2018 09:58:17 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 29 Nov 2018 09:58:18 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Thu, 29 Nov 2018 09:58:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Nov 2018 09:58:19 GMT
EXPOSE 2368/tcp
# Thu, 29 Nov 2018 09:58:20 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4fc0c5fe73c64e6243ea741f24b5591b828ed247c4f9aefad5813804a12c18a`  
		Last Modified: Sat, 17 Nov 2018 03:10:34 GMT  
		Size: 4.2 KB (4167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195106867279a5ea2805300ddff9e0a5baaa5514d73dbd992ca0961a30dcdcd2`  
		Last Modified: Wed, 28 Nov 2018 18:03:22 GMT  
		Size: 26.7 MB (26679215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1e147cbe8fb30957c06a70aafd9c1d19022dd751001f50be91d07f63877b7c`  
		Last Modified: Wed, 28 Nov 2018 18:03:11 GMT  
		Size: 1.3 MB (1310264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7eac4afa60ee78744955d5914636728db7c19a7bf8cf564a95fb3294f65bddf`  
		Last Modified: Thu, 29 Nov 2018 09:59:11 GMT  
		Size: 468.9 KB (468938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff362a86d810de82a4076658effe4861165de002edd0a9942d4d5fbc7d6ca6db`  
		Last Modified: Thu, 29 Nov 2018 09:59:19 GMT  
		Size: 17.3 MB (17292884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e2ee39d1e6e7c46b4aff0bc77780d554b44eac6211f3f07450c2b28e4a29d3`  
		Last Modified: Thu, 29 Nov 2018 10:01:15 GMT  
		Size: 94.1 MB (94108029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c3b6da61ad9e10590a3bc2938194816b41bea8b7035ea3079ac8d8e9657135`  
		Last Modified: Thu, 29 Nov 2018 10:01:22 GMT  
		Size: 116.3 MB (116267681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f2f268220e077807e4263f2eebbecb59eebbb965e2f32ec3b6daf8e4da584e`  
		Last Modified: Thu, 29 Nov 2018 10:00:39 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.6` - linux; 386

```console
$ docker pull ghost@sha256:831ae62bd023d81e24783aee1f5279259889e7c36697bf84333d37dd939e522e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.1 MB (281124409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85052a852bb262c8357899ddc92f64e5bf3e16aff18d6df6560dc27c7d0ba30f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Tue, 27 Nov 2018 14:20:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 16:49:58 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 16:50:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 16:50:23 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 16:50:29 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 16:50:29 GMT
CMD ["node"]
# Wed, 28 Nov 2018 18:11:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Nov 2018 18:11:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Nov 2018 18:11:48 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 18:11:48 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 18:12:08 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 18:12:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 18:12:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 28 Nov 2018 18:16:02 GMT
ENV GHOST_VERSION=1.25.6
# Wed, 28 Nov 2018 18:16:38 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 28 Nov 2018 18:16:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 28 Nov 2018 18:18:37 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 28 Nov 2018 18:18:38 GMT
WORKDIR /var/lib/ghost
# Wed, 28 Nov 2018 18:18:39 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 28 Nov 2018 18:18:39 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Wed, 28 Nov 2018 18:18:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 18:18:39 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 18:18:40 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f393758efdde4e933c557f3f372621ebb2d7b6711b98741a1c8c23426030e867`  
		Last Modified: Tue, 27 Nov 2018 15:14:57 GMT  
		Size: 4.1 KB (4135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629585385db686ea51dbde250d8fb8535c936c9a4aae3d5071d5d5d9db4e7d6c`  
		Last Modified: Wed, 28 Nov 2018 17:45:01 GMT  
		Size: 27.8 MB (27819798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c0ec4bd20dc4ae2294747163ee251dadb6ab6ce1bb037b42fb5970771f81f5`  
		Last Modified: Wed, 28 Nov 2018 17:44:54 GMT  
		Size: 1.3 MB (1310263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e16a9ff05d4f1bd5ced25d3df057a511e9c714483fc8588907380d0f225933`  
		Last Modified: Wed, 28 Nov 2018 18:23:05 GMT  
		Size: 480.8 KB (480826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ef6f086b913c964498b258bdaea75cdb47910b8d548250b9245556141d4fb9`  
		Last Modified: Wed, 28 Nov 2018 18:23:22 GMT  
		Size: 17.3 MB (17287300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea45bdffb80e6a73ddf2cea77594bf0eedf47b3a8b4fe154b8cb35c5eb02215`  
		Last Modified: Wed, 28 Nov 2018 18:25:21 GMT  
		Size: 94.1 MB (94100891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26db75f9b38161f956c8f41c9649a547939e752a6479f094417731858f0142b1`  
		Last Modified: Wed, 28 Nov 2018 18:25:26 GMT  
		Size: 117.0 MB (116993835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75be1e9b0719adbee63f5dc8c59330f03e61d2c017b2e740e5c025a46a98fa62`  
		Last Modified: Wed, 28 Nov 2018 18:24:50 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.6` - linux; ppc64le

```console
$ docker pull ghost@sha256:c354cc3c1412a6f840feabbd777b0bfcee8d01eadf59e878e4d728e92f9a33d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.1 MB (280097200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:103d63d199ed7a46c27c9d31ad0d7aa41bbeacd540b904d6905b3328c44a1a27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:07:51 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 16:55:13 GMT
ENV NODE_VERSION=8.14.0
# Tue, 04 Dec 2018 10:50:39 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 04 Dec 2018 10:50:40 GMT
ENV YARN_VERSION=1.12.3
# Tue, 04 Dec 2018 10:50:49 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 04 Dec 2018 10:50:49 GMT
CMD ["node"]
# Tue, 04 Dec 2018 12:01:05 GMT
ENV GOSU_VERSION=1.10
# Tue, 04 Dec 2018 12:01:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 04 Dec 2018 12:01:14 GMT
ENV NODE_ENV=production
# Tue, 04 Dec 2018 12:01:14 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 04 Dec 2018 12:01:52 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 04 Dec 2018 12:01:57 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 04 Dec 2018 12:01:57 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 04 Dec 2018 12:18:25 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 04 Dec 2018 12:20:35 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 04 Dec 2018 12:21:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 04 Dec 2018 12:26:45 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 04 Dec 2018 12:27:05 GMT
WORKDIR /var/lib/ghost
# Tue, 04 Dec 2018 12:27:06 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 04 Dec 2018 12:27:09 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Tue, 04 Dec 2018 12:27:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Dec 2018 12:27:13 GMT
EXPOSE 2368/tcp
# Tue, 04 Dec 2018 12:27:15 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1afeea1085f7b2f8c5843b5f4cfab6c95444c74532315569e14b7459ea105b`  
		Last Modified: Fri, 16 Nov 2018 20:13:37 GMT  
		Size: 4.2 KB (4185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42739ce341e43f26dc0b14f38202e253774f4c322ebee85ad77d539ea1259e1`  
		Last Modified: Tue, 04 Dec 2018 11:23:57 GMT  
		Size: 27.0 MB (26963900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e73cc53546c556d816a25f199d9fb9d077bd3fae67dbbe5ea8a61302ffa438`  
		Last Modified: Tue, 04 Dec 2018 11:23:36 GMT  
		Size: 1.3 MB (1312722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3277339a1ef69cca91c0224830307d89781aedc903b6307b534827f9ba13e6`  
		Last Modified: Tue, 04 Dec 2018 12:31:21 GMT  
		Size: 470.1 KB (470078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3df051e834ca0dc3cea01be91c7cd9a0a1783e84964890d3adf80b897a3757`  
		Last Modified: Tue, 04 Dec 2018 12:32:03 GMT  
		Size: 17.3 MB (17293239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa9a51944b4694a8ac4306c9b58c8088078af93d872e2981ae3ead37a91ef09`  
		Last Modified: Tue, 04 Dec 2018 12:42:52 GMT  
		Size: 94.1 MB (94107986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:963766adcf8c1527d98fc24769ef47fcf4aa85761b70cd7fadea2fe098ee72ba`  
		Last Modified: Tue, 04 Dec 2018 12:43:07 GMT  
		Size: 117.2 MB (117203792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3a0a83c59fdfedfcb572d19d88177d24c058ee83323f9712173742d641f509`  
		Last Modified: Tue, 04 Dec 2018 12:41:27 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.6` - linux; s390x

```console
$ docker pull ghost@sha256:271e176c9dc3e2f5b5fe8bfe72ca8cde6abc10828d8eb3fb54bf8761efe2941a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.5 MB (280517202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7c82bfeb1313e9115b85340f1c43582be39cdd51a77610594674b91e521d5ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:39:43 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 13:27:02 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 13:27:28 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 13:27:29 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 13:27:33 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 13:27:34 GMT
CMD ["node"]
# Thu, 29 Nov 2018 12:43:28 GMT
ENV GOSU_VERSION=1.10
# Thu, 29 Nov 2018 12:43:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 29 Nov 2018 12:43:32 GMT
ENV NODE_ENV=production
# Thu, 29 Nov 2018 12:43:32 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 29 Nov 2018 12:43:49 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 29 Nov 2018 12:43:50 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 29 Nov 2018 12:43:50 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 29 Nov 2018 12:46:39 GMT
ENV GHOST_VERSION=1.25.6
# Thu, 29 Nov 2018 12:47:08 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 29 Nov 2018 12:47:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 29 Nov 2018 12:48:44 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 29 Nov 2018 12:48:46 GMT
WORKDIR /var/lib/ghost
# Thu, 29 Nov 2018 12:48:46 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 29 Nov 2018 12:48:46 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Thu, 29 Nov 2018 12:48:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Nov 2018 12:48:47 GMT
EXPOSE 2368/tcp
# Thu, 29 Nov 2018 12:48:47 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:db7aa0264595016e37963ab9cf4e6fbfa7b19d99cb39b16bbb561a02b7b459d2`  
		Last Modified: Thu, 15 Nov 2018 02:03:05 GMT  
		Size: 22.3 MB (22334714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2801c348986bea5725dc642412a1130b6f77f3e4a15d3a5ab8d90b93bb96aad0`  
		Last Modified: Fri, 16 Nov 2018 20:42:10 GMT  
		Size: 4.2 KB (4150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b17408b2e243ccc39821963534cdf5f8eddaac5267dc9f28e635094953ba50`  
		Last Modified: Wed, 28 Nov 2018 14:04:43 GMT  
		Size: 27.8 MB (27836589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf4c04b048513ecc0deb58c3a802087a34607574fc49f8999b5c17cd69756f3`  
		Last Modified: Wed, 28 Nov 2018 14:04:37 GMT  
		Size: 1.3 MB (1310258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1186605b43f3fa11c94b829cac971a55c83362ec7a6cba3a82589ca798af34dc`  
		Last Modified: Thu, 29 Nov 2018 12:49:18 GMT  
		Size: 487.0 KB (487049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e367843ef942554f7ff07591dba68078d4dd1ec55acdb20afa015c666ea8f4d`  
		Last Modified: Thu, 29 Nov 2018 12:49:23 GMT  
		Size: 17.3 MB (17287465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5986df848c1e9f5cf828b0e076d51a7a9e822126f979acf21aa52f5f17635916`  
		Last Modified: Thu, 29 Nov 2018 12:50:16 GMT  
		Size: 94.1 MB (94105977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac47dd5698cc07d3c581ea7984d564241e11149c570d4d0297845c53f12b5b73`  
		Last Modified: Thu, 29 Nov 2018 12:50:19 GMT  
		Size: 117.2 MB (117150414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f1a54bf0687cbdab47b530dba73387f1f953832c4b70836849a67a6f5e55ef`  
		Last Modified: Thu, 29 Nov 2018 12:49:59 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25.6-alpine`

```console
$ docker pull ghost@sha256:3af5bd47e12f23e5a6cb82e671ae764a0b6aa730de2c7fd7ab7f9a392f1bdfa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1.25.6-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:515382e2712b8fed911de79305bc154165a4e3c8a1aa594536903eb2f548e2cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.7 MB (142693839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10abe1adb5ae421da4720f163008d56e8620b2c5e86becff65584f2a18fad09c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 11:39:13 GMT
ENV NODE_VERSION=8.14.0
# Mon, 03 Dec 2018 21:39:31 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Mon, 03 Dec 2018 21:39:31 GMT
ENV YARN_VERSION=1.12.3
# Mon, 03 Dec 2018 21:39:35 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Mon, 03 Dec 2018 21:39:35 GMT
CMD ["node"]
# Mon, 03 Dec 2018 23:42:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 03 Dec 2018 23:42:03 GMT
RUN apk add --no-cache 		bash
# Mon, 03 Dec 2018 23:42:03 GMT
ENV NODE_ENV=production
# Mon, 03 Dec 2018 23:42:04 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Mon, 03 Dec 2018 23:42:24 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Dec 2018 23:42:24 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Dec 2018 23:42:25 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Dec 2018 23:45:31 GMT
ENV GHOST_VERSION=1.25.6
# Mon, 03 Dec 2018 23:46:03 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 03 Dec 2018 23:46:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 03 Dec 2018 23:46:06 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Dec 2018 23:46:06 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Dec 2018 23:46:07 GMT
COPY file:ec5f0dc0340c44f728261188497016ebbb720b84d4de7a293d7d96e1d7c20c56 in /usr/local/bin 
# Mon, 03 Dec 2018 23:46:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Dec 2018 23:46:07 GMT
EXPOSE 2368/tcp
# Mon, 03 Dec 2018 23:46:08 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ade4f5bae45b5678fab08368d912c93f22e2374f768e856a982f261f0822dbc`  
		Last Modified: Mon, 03 Dec 2018 22:50:36 GMT  
		Size: 18.9 MB (18869555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd1dceaf77f3a20e552ba30e8aa5b37fcf8805b5f85573833da022c23a6604fd`  
		Last Modified: Mon, 03 Dec 2018 22:50:31 GMT  
		Size: 1.3 MB (1319666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853685485e0b8deccb97259912b7f17a78c709a3aecb1cb896d661fca5f10c73`  
		Last Modified: Mon, 03 Dec 2018 23:51:24 GMT  
		Size: 9.4 KB (9397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368c1984e1970203331bad9080ce378135f54a4ad57c2d200507d3fd733c0f4b`  
		Last Modified: Mon, 03 Dec 2018 23:51:25 GMT  
		Size: 1.2 MB (1173429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d855f482ee4802de70fc113e840bb0c7f33197bbd573dc90a70e5d7cd96b0f22`  
		Last Modified: Mon, 03 Dec 2018 23:51:34 GMT  
		Size: 17.3 MB (17291335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56b92da1546304312c090779d1aa700219b391aa43b6be3a33bfcab5f39b820`  
		Last Modified: Mon, 03 Dec 2018 23:55:11 GMT  
		Size: 101.8 MB (101822952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b645d908a71d69a45d2bd67dc3ad6cf4d78075abf1a2ea939c1066e434c9f334`  
		Last Modified: Mon, 03 Dec 2018 23:54:42 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.6-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:f6124ab0d8fe5f8414fad87dcb19b6bf541ca1aa2df837d90158d296fd711b66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.8 MB (133833581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e47b474c8d57894f479854c937e4884180d924f4362417539e20ab3b3df7229`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 16:29:37 GMT
ENV NODE_VERSION=8.14.0
# Tue, 04 Dec 2018 08:56:32 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 04 Dec 2018 08:56:33 GMT
ENV YARN_VERSION=1.12.3
# Tue, 04 Dec 2018 08:56:38 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Dec 2018 08:56:39 GMT
CMD ["node"]
# Tue, 04 Dec 2018 09:24:49 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 04 Dec 2018 09:24:52 GMT
RUN apk add --no-cache 		bash
# Tue, 04 Dec 2018 09:24:53 GMT
ENV NODE_ENV=production
# Tue, 04 Dec 2018 09:24:53 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 04 Dec 2018 09:25:35 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 04 Dec 2018 09:25:37 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 04 Dec 2018 09:25:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 04 Dec 2018 09:27:37 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 04 Dec 2018 09:29:03 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 04 Dec 2018 09:29:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 04 Dec 2018 09:29:07 GMT
WORKDIR /var/lib/ghost
# Tue, 04 Dec 2018 09:29:07 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 04 Dec 2018 09:29:07 GMT
COPY file:ec5f0dc0340c44f728261188497016ebbb720b84d4de7a293d7d96e1d7c20c56 in /usr/local/bin 
# Tue, 04 Dec 2018 09:29:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Dec 2018 09:29:08 GMT
EXPOSE 2368/tcp
# Tue, 04 Dec 2018 09:29:08 GMT
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
	-	`sha256:894d68e3bb37cb357743461ffc288dc3167b0f360804fa964cb1ff3a747b532f`  
		Last Modified: Tue, 04 Dec 2018 09:08:09 GMT  
		Size: 17.8 MB (17826878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a3b3c5a363240b0582fbb31416514529694436aec223273bd6986c8825bebc`  
		Last Modified: Tue, 04 Dec 2018 09:08:04 GMT  
		Size: 1.3 MB (1319711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0027a54d65aa80bbb8764554f95d6b9fd424aaba7edc84507b8bee0d4f237cb0`  
		Last Modified: Tue, 04 Dec 2018 09:29:33 GMT  
		Size: 9.3 KB (9333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9171b24b0d8586be8712e61cb17160933543a7d4296773f42cc15d0bbf6c4359`  
		Last Modified: Tue, 04 Dec 2018 09:29:32 GMT  
		Size: 1.1 MB (1127596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be9b7b18d475a276a98b3621fe799327b16a15351901a3c4902ecbccfa2f200`  
		Last Modified: Tue, 04 Dec 2018 09:29:40 GMT  
		Size: 17.3 MB (17295860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2bdba98dfd043a2da20dbce4620d8537e69ef4a05021d33c9c280aa0a87a4da`  
		Last Modified: Tue, 04 Dec 2018 09:31:07 GMT  
		Size: 94.1 MB (94107000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b52c12ff34cbf83a0a6c0dfec23b1fb40a7119d2209841a6749fa02834b64b`  
		Last Modified: Tue, 04 Dec 2018 09:30:33 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.6-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:ab00d3c5ff502b016077e240091615d3c8fe65de6abb81a6f5fea359d5798634
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.8 MB (134756458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03ed56a9d52b62bdd329c55591edab79b13d7148a9b7145d9ba9840d2e10a077`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 16:30:31 GMT
ENV NODE_VERSION=8.14.0
# Tue, 04 Dec 2018 10:47:12 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 04 Dec 2018 10:47:15 GMT
ENV YARN_VERSION=1.12.3
# Tue, 04 Dec 2018 10:47:29 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Dec 2018 10:47:32 GMT
CMD ["node"]
# Tue, 04 Dec 2018 12:12:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 04 Dec 2018 12:12:50 GMT
RUN apk add --no-cache 		bash
# Tue, 04 Dec 2018 12:13:00 GMT
ENV NODE_ENV=production
# Tue, 04 Dec 2018 12:13:04 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 04 Dec 2018 12:14:01 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 04 Dec 2018 12:14:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 04 Dec 2018 12:14:08 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 04 Dec 2018 12:27:56 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 04 Dec 2018 12:30:10 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 04 Dec 2018 12:30:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 04 Dec 2018 12:30:24 GMT
WORKDIR /var/lib/ghost
# Tue, 04 Dec 2018 12:30:25 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 04 Dec 2018 12:30:26 GMT
COPY file:ec5f0dc0340c44f728261188497016ebbb720b84d4de7a293d7d96e1d7c20c56 in /usr/local/bin 
# Tue, 04 Dec 2018 12:30:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Dec 2018 12:30:30 GMT
EXPOSE 2368/tcp
# Tue, 04 Dec 2018 12:30:31 GMT
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
	-	`sha256:2ba36ac455767381bba38455ce88713153037b3580b29103615675c6e75251e2`  
		Last Modified: Tue, 04 Dec 2018 11:19:41 GMT  
		Size: 18.6 MB (18643492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a3c154921196337927cf1295c00a75a854d3a10f8949055d5b1f8838759a9a`  
		Last Modified: Tue, 04 Dec 2018 11:19:30 GMT  
		Size: 1.3 MB (1319676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05cf9a9ad04c4b25da5029b58cc0a318c5235f5bc1e88cb9f6830e0d1acc6624`  
		Last Modified: Tue, 04 Dec 2018 12:37:58 GMT  
		Size: 9.8 KB (9850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c913b7ed1155b8eb8bf22c30c46eb4ad2ff386fc63d6e69f8f9638521ff88b5`  
		Last Modified: Tue, 04 Dec 2018 12:38:01 GMT  
		Size: 1.2 MB (1188815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a902d76e84b9baf29cce1677a2d1aaaacc3a4e5daf0426c83489ba2734c649a`  
		Last Modified: Tue, 04 Dec 2018 12:38:38 GMT  
		Size: 17.3 MB (17292772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fca14961f38be293c2e195e32879cb14ef2a2e9c9ec2fcc7c226e3a6fae23f50`  
		Last Modified: Tue, 04 Dec 2018 12:46:04 GMT  
		Size: 94.1 MB (94105877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b033a56e7d8de7b531217d40e55e3c7b9d1177e4ab834ae89234f38598f429`  
		Last Modified: Tue, 04 Dec 2018 12:44:43 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25-alpine`

```console
$ docker pull ghost@sha256:3af5bd47e12f23e5a6cb82e671ae764a0b6aa730de2c7fd7ab7f9a392f1bdfa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1.25-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:515382e2712b8fed911de79305bc154165a4e3c8a1aa594536903eb2f548e2cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.7 MB (142693839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10abe1adb5ae421da4720f163008d56e8620b2c5e86becff65584f2a18fad09c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 11:39:13 GMT
ENV NODE_VERSION=8.14.0
# Mon, 03 Dec 2018 21:39:31 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Mon, 03 Dec 2018 21:39:31 GMT
ENV YARN_VERSION=1.12.3
# Mon, 03 Dec 2018 21:39:35 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Mon, 03 Dec 2018 21:39:35 GMT
CMD ["node"]
# Mon, 03 Dec 2018 23:42:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 03 Dec 2018 23:42:03 GMT
RUN apk add --no-cache 		bash
# Mon, 03 Dec 2018 23:42:03 GMT
ENV NODE_ENV=production
# Mon, 03 Dec 2018 23:42:04 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Mon, 03 Dec 2018 23:42:24 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Dec 2018 23:42:24 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Dec 2018 23:42:25 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Dec 2018 23:45:31 GMT
ENV GHOST_VERSION=1.25.6
# Mon, 03 Dec 2018 23:46:03 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 03 Dec 2018 23:46:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 03 Dec 2018 23:46:06 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Dec 2018 23:46:06 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Dec 2018 23:46:07 GMT
COPY file:ec5f0dc0340c44f728261188497016ebbb720b84d4de7a293d7d96e1d7c20c56 in /usr/local/bin 
# Mon, 03 Dec 2018 23:46:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Dec 2018 23:46:07 GMT
EXPOSE 2368/tcp
# Mon, 03 Dec 2018 23:46:08 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ade4f5bae45b5678fab08368d912c93f22e2374f768e856a982f261f0822dbc`  
		Last Modified: Mon, 03 Dec 2018 22:50:36 GMT  
		Size: 18.9 MB (18869555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd1dceaf77f3a20e552ba30e8aa5b37fcf8805b5f85573833da022c23a6604fd`  
		Last Modified: Mon, 03 Dec 2018 22:50:31 GMT  
		Size: 1.3 MB (1319666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853685485e0b8deccb97259912b7f17a78c709a3aecb1cb896d661fca5f10c73`  
		Last Modified: Mon, 03 Dec 2018 23:51:24 GMT  
		Size: 9.4 KB (9397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368c1984e1970203331bad9080ce378135f54a4ad57c2d200507d3fd733c0f4b`  
		Last Modified: Mon, 03 Dec 2018 23:51:25 GMT  
		Size: 1.2 MB (1173429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d855f482ee4802de70fc113e840bb0c7f33197bbd573dc90a70e5d7cd96b0f22`  
		Last Modified: Mon, 03 Dec 2018 23:51:34 GMT  
		Size: 17.3 MB (17291335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56b92da1546304312c090779d1aa700219b391aa43b6be3a33bfcab5f39b820`  
		Last Modified: Mon, 03 Dec 2018 23:55:11 GMT  
		Size: 101.8 MB (101822952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b645d908a71d69a45d2bd67dc3ad6cf4d78075abf1a2ea939c1066e434c9f334`  
		Last Modified: Mon, 03 Dec 2018 23:54:42 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:f6124ab0d8fe5f8414fad87dcb19b6bf541ca1aa2df837d90158d296fd711b66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.8 MB (133833581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e47b474c8d57894f479854c937e4884180d924f4362417539e20ab3b3df7229`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 16:29:37 GMT
ENV NODE_VERSION=8.14.0
# Tue, 04 Dec 2018 08:56:32 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 04 Dec 2018 08:56:33 GMT
ENV YARN_VERSION=1.12.3
# Tue, 04 Dec 2018 08:56:38 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Dec 2018 08:56:39 GMT
CMD ["node"]
# Tue, 04 Dec 2018 09:24:49 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 04 Dec 2018 09:24:52 GMT
RUN apk add --no-cache 		bash
# Tue, 04 Dec 2018 09:24:53 GMT
ENV NODE_ENV=production
# Tue, 04 Dec 2018 09:24:53 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 04 Dec 2018 09:25:35 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 04 Dec 2018 09:25:37 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 04 Dec 2018 09:25:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 04 Dec 2018 09:27:37 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 04 Dec 2018 09:29:03 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 04 Dec 2018 09:29:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 04 Dec 2018 09:29:07 GMT
WORKDIR /var/lib/ghost
# Tue, 04 Dec 2018 09:29:07 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 04 Dec 2018 09:29:07 GMT
COPY file:ec5f0dc0340c44f728261188497016ebbb720b84d4de7a293d7d96e1d7c20c56 in /usr/local/bin 
# Tue, 04 Dec 2018 09:29:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Dec 2018 09:29:08 GMT
EXPOSE 2368/tcp
# Tue, 04 Dec 2018 09:29:08 GMT
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
	-	`sha256:894d68e3bb37cb357743461ffc288dc3167b0f360804fa964cb1ff3a747b532f`  
		Last Modified: Tue, 04 Dec 2018 09:08:09 GMT  
		Size: 17.8 MB (17826878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a3b3c5a363240b0582fbb31416514529694436aec223273bd6986c8825bebc`  
		Last Modified: Tue, 04 Dec 2018 09:08:04 GMT  
		Size: 1.3 MB (1319711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0027a54d65aa80bbb8764554f95d6b9fd424aaba7edc84507b8bee0d4f237cb0`  
		Last Modified: Tue, 04 Dec 2018 09:29:33 GMT  
		Size: 9.3 KB (9333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9171b24b0d8586be8712e61cb17160933543a7d4296773f42cc15d0bbf6c4359`  
		Last Modified: Tue, 04 Dec 2018 09:29:32 GMT  
		Size: 1.1 MB (1127596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be9b7b18d475a276a98b3621fe799327b16a15351901a3c4902ecbccfa2f200`  
		Last Modified: Tue, 04 Dec 2018 09:29:40 GMT  
		Size: 17.3 MB (17295860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2bdba98dfd043a2da20dbce4620d8537e69ef4a05021d33c9c280aa0a87a4da`  
		Last Modified: Tue, 04 Dec 2018 09:31:07 GMT  
		Size: 94.1 MB (94107000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b52c12ff34cbf83a0a6c0dfec23b1fb40a7119d2209841a6749fa02834b64b`  
		Last Modified: Tue, 04 Dec 2018 09:30:33 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:ab00d3c5ff502b016077e240091615d3c8fe65de6abb81a6f5fea359d5798634
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.8 MB (134756458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03ed56a9d52b62bdd329c55591edab79b13d7148a9b7145d9ba9840d2e10a077`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 16:30:31 GMT
ENV NODE_VERSION=8.14.0
# Tue, 04 Dec 2018 10:47:12 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 04 Dec 2018 10:47:15 GMT
ENV YARN_VERSION=1.12.3
# Tue, 04 Dec 2018 10:47:29 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Dec 2018 10:47:32 GMT
CMD ["node"]
# Tue, 04 Dec 2018 12:12:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 04 Dec 2018 12:12:50 GMT
RUN apk add --no-cache 		bash
# Tue, 04 Dec 2018 12:13:00 GMT
ENV NODE_ENV=production
# Tue, 04 Dec 2018 12:13:04 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 04 Dec 2018 12:14:01 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 04 Dec 2018 12:14:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 04 Dec 2018 12:14:08 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 04 Dec 2018 12:27:56 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 04 Dec 2018 12:30:10 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 04 Dec 2018 12:30:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 04 Dec 2018 12:30:24 GMT
WORKDIR /var/lib/ghost
# Tue, 04 Dec 2018 12:30:25 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 04 Dec 2018 12:30:26 GMT
COPY file:ec5f0dc0340c44f728261188497016ebbb720b84d4de7a293d7d96e1d7c20c56 in /usr/local/bin 
# Tue, 04 Dec 2018 12:30:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Dec 2018 12:30:30 GMT
EXPOSE 2368/tcp
# Tue, 04 Dec 2018 12:30:31 GMT
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
	-	`sha256:2ba36ac455767381bba38455ce88713153037b3580b29103615675c6e75251e2`  
		Last Modified: Tue, 04 Dec 2018 11:19:41 GMT  
		Size: 18.6 MB (18643492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a3c154921196337927cf1295c00a75a854d3a10f8949055d5b1f8838759a9a`  
		Last Modified: Tue, 04 Dec 2018 11:19:30 GMT  
		Size: 1.3 MB (1319676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05cf9a9ad04c4b25da5029b58cc0a318c5235f5bc1e88cb9f6830e0d1acc6624`  
		Last Modified: Tue, 04 Dec 2018 12:37:58 GMT  
		Size: 9.8 KB (9850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c913b7ed1155b8eb8bf22c30c46eb4ad2ff386fc63d6e69f8f9638521ff88b5`  
		Last Modified: Tue, 04 Dec 2018 12:38:01 GMT  
		Size: 1.2 MB (1188815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a902d76e84b9baf29cce1677a2d1aaaacc3a4e5daf0426c83489ba2734c649a`  
		Last Modified: Tue, 04 Dec 2018 12:38:38 GMT  
		Size: 17.3 MB (17292772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fca14961f38be293c2e195e32879cb14ef2a2e9c9ec2fcc7c226e3a6fae23f50`  
		Last Modified: Tue, 04 Dec 2018 12:46:04 GMT  
		Size: 94.1 MB (94105877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b033a56e7d8de7b531217d40e55e3c7b9d1177e4ab834ae89234f38598f429`  
		Last Modified: Tue, 04 Dec 2018 12:44:43 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:3af5bd47e12f23e5a6cb82e671ae764a0b6aa730de2c7fd7ab7f9a392f1bdfa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:515382e2712b8fed911de79305bc154165a4e3c8a1aa594536903eb2f548e2cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.7 MB (142693839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10abe1adb5ae421da4720f163008d56e8620b2c5e86becff65584f2a18fad09c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 11:39:13 GMT
ENV NODE_VERSION=8.14.0
# Mon, 03 Dec 2018 21:39:31 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Mon, 03 Dec 2018 21:39:31 GMT
ENV YARN_VERSION=1.12.3
# Mon, 03 Dec 2018 21:39:35 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Mon, 03 Dec 2018 21:39:35 GMT
CMD ["node"]
# Mon, 03 Dec 2018 23:42:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 03 Dec 2018 23:42:03 GMT
RUN apk add --no-cache 		bash
# Mon, 03 Dec 2018 23:42:03 GMT
ENV NODE_ENV=production
# Mon, 03 Dec 2018 23:42:04 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Mon, 03 Dec 2018 23:42:24 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Dec 2018 23:42:24 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Dec 2018 23:42:25 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Dec 2018 23:45:31 GMT
ENV GHOST_VERSION=1.25.6
# Mon, 03 Dec 2018 23:46:03 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 03 Dec 2018 23:46:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 03 Dec 2018 23:46:06 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Dec 2018 23:46:06 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Dec 2018 23:46:07 GMT
COPY file:ec5f0dc0340c44f728261188497016ebbb720b84d4de7a293d7d96e1d7c20c56 in /usr/local/bin 
# Mon, 03 Dec 2018 23:46:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Dec 2018 23:46:07 GMT
EXPOSE 2368/tcp
# Mon, 03 Dec 2018 23:46:08 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ade4f5bae45b5678fab08368d912c93f22e2374f768e856a982f261f0822dbc`  
		Last Modified: Mon, 03 Dec 2018 22:50:36 GMT  
		Size: 18.9 MB (18869555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd1dceaf77f3a20e552ba30e8aa5b37fcf8805b5f85573833da022c23a6604fd`  
		Last Modified: Mon, 03 Dec 2018 22:50:31 GMT  
		Size: 1.3 MB (1319666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853685485e0b8deccb97259912b7f17a78c709a3aecb1cb896d661fca5f10c73`  
		Last Modified: Mon, 03 Dec 2018 23:51:24 GMT  
		Size: 9.4 KB (9397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368c1984e1970203331bad9080ce378135f54a4ad57c2d200507d3fd733c0f4b`  
		Last Modified: Mon, 03 Dec 2018 23:51:25 GMT  
		Size: 1.2 MB (1173429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d855f482ee4802de70fc113e840bb0c7f33197bbd573dc90a70e5d7cd96b0f22`  
		Last Modified: Mon, 03 Dec 2018 23:51:34 GMT  
		Size: 17.3 MB (17291335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56b92da1546304312c090779d1aa700219b391aa43b6be3a33bfcab5f39b820`  
		Last Modified: Mon, 03 Dec 2018 23:55:11 GMT  
		Size: 101.8 MB (101822952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b645d908a71d69a45d2bd67dc3ad6cf4d78075abf1a2ea939c1066e434c9f334`  
		Last Modified: Mon, 03 Dec 2018 23:54:42 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:f6124ab0d8fe5f8414fad87dcb19b6bf541ca1aa2df837d90158d296fd711b66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.8 MB (133833581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e47b474c8d57894f479854c937e4884180d924f4362417539e20ab3b3df7229`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 16:29:37 GMT
ENV NODE_VERSION=8.14.0
# Tue, 04 Dec 2018 08:56:32 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 04 Dec 2018 08:56:33 GMT
ENV YARN_VERSION=1.12.3
# Tue, 04 Dec 2018 08:56:38 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Dec 2018 08:56:39 GMT
CMD ["node"]
# Tue, 04 Dec 2018 09:24:49 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 04 Dec 2018 09:24:52 GMT
RUN apk add --no-cache 		bash
# Tue, 04 Dec 2018 09:24:53 GMT
ENV NODE_ENV=production
# Tue, 04 Dec 2018 09:24:53 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 04 Dec 2018 09:25:35 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 04 Dec 2018 09:25:37 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 04 Dec 2018 09:25:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 04 Dec 2018 09:27:37 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 04 Dec 2018 09:29:03 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 04 Dec 2018 09:29:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 04 Dec 2018 09:29:07 GMT
WORKDIR /var/lib/ghost
# Tue, 04 Dec 2018 09:29:07 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 04 Dec 2018 09:29:07 GMT
COPY file:ec5f0dc0340c44f728261188497016ebbb720b84d4de7a293d7d96e1d7c20c56 in /usr/local/bin 
# Tue, 04 Dec 2018 09:29:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Dec 2018 09:29:08 GMT
EXPOSE 2368/tcp
# Tue, 04 Dec 2018 09:29:08 GMT
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
	-	`sha256:894d68e3bb37cb357743461ffc288dc3167b0f360804fa964cb1ff3a747b532f`  
		Last Modified: Tue, 04 Dec 2018 09:08:09 GMT  
		Size: 17.8 MB (17826878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a3b3c5a363240b0582fbb31416514529694436aec223273bd6986c8825bebc`  
		Last Modified: Tue, 04 Dec 2018 09:08:04 GMT  
		Size: 1.3 MB (1319711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0027a54d65aa80bbb8764554f95d6b9fd424aaba7edc84507b8bee0d4f237cb0`  
		Last Modified: Tue, 04 Dec 2018 09:29:33 GMT  
		Size: 9.3 KB (9333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9171b24b0d8586be8712e61cb17160933543a7d4296773f42cc15d0bbf6c4359`  
		Last Modified: Tue, 04 Dec 2018 09:29:32 GMT  
		Size: 1.1 MB (1127596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be9b7b18d475a276a98b3621fe799327b16a15351901a3c4902ecbccfa2f200`  
		Last Modified: Tue, 04 Dec 2018 09:29:40 GMT  
		Size: 17.3 MB (17295860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2bdba98dfd043a2da20dbce4620d8537e69ef4a05021d33c9c280aa0a87a4da`  
		Last Modified: Tue, 04 Dec 2018 09:31:07 GMT  
		Size: 94.1 MB (94107000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b52c12ff34cbf83a0a6c0dfec23b1fb40a7119d2209841a6749fa02834b64b`  
		Last Modified: Tue, 04 Dec 2018 09:30:33 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:ab00d3c5ff502b016077e240091615d3c8fe65de6abb81a6f5fea359d5798634
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.8 MB (134756458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03ed56a9d52b62bdd329c55591edab79b13d7148a9b7145d9ba9840d2e10a077`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 16:30:31 GMT
ENV NODE_VERSION=8.14.0
# Tue, 04 Dec 2018 10:47:12 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 04 Dec 2018 10:47:15 GMT
ENV YARN_VERSION=1.12.3
# Tue, 04 Dec 2018 10:47:29 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Dec 2018 10:47:32 GMT
CMD ["node"]
# Tue, 04 Dec 2018 12:12:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 04 Dec 2018 12:12:50 GMT
RUN apk add --no-cache 		bash
# Tue, 04 Dec 2018 12:13:00 GMT
ENV NODE_ENV=production
# Tue, 04 Dec 2018 12:13:04 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 04 Dec 2018 12:14:01 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 04 Dec 2018 12:14:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 04 Dec 2018 12:14:08 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 04 Dec 2018 12:27:56 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 04 Dec 2018 12:30:10 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 04 Dec 2018 12:30:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 04 Dec 2018 12:30:24 GMT
WORKDIR /var/lib/ghost
# Tue, 04 Dec 2018 12:30:25 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 04 Dec 2018 12:30:26 GMT
COPY file:ec5f0dc0340c44f728261188497016ebbb720b84d4de7a293d7d96e1d7c20c56 in /usr/local/bin 
# Tue, 04 Dec 2018 12:30:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Dec 2018 12:30:30 GMT
EXPOSE 2368/tcp
# Tue, 04 Dec 2018 12:30:31 GMT
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
	-	`sha256:2ba36ac455767381bba38455ce88713153037b3580b29103615675c6e75251e2`  
		Last Modified: Tue, 04 Dec 2018 11:19:41 GMT  
		Size: 18.6 MB (18643492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a3c154921196337927cf1295c00a75a854d3a10f8949055d5b1f8838759a9a`  
		Last Modified: Tue, 04 Dec 2018 11:19:30 GMT  
		Size: 1.3 MB (1319676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05cf9a9ad04c4b25da5029b58cc0a318c5235f5bc1e88cb9f6830e0d1acc6624`  
		Last Modified: Tue, 04 Dec 2018 12:37:58 GMT  
		Size: 9.8 KB (9850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c913b7ed1155b8eb8bf22c30c46eb4ad2ff386fc63d6e69f8f9638521ff88b5`  
		Last Modified: Tue, 04 Dec 2018 12:38:01 GMT  
		Size: 1.2 MB (1188815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a902d76e84b9baf29cce1677a2d1aaaacc3a4e5daf0426c83489ba2734c649a`  
		Last Modified: Tue, 04 Dec 2018 12:38:38 GMT  
		Size: 17.3 MB (17292772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fca14961f38be293c2e195e32879cb14ef2a2e9c9ec2fcc7c226e3a6fae23f50`  
		Last Modified: Tue, 04 Dec 2018 12:46:04 GMT  
		Size: 94.1 MB (94105877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b033a56e7d8de7b531217d40e55e3c7b9d1177e4ab834ae89234f38598f429`  
		Last Modified: Tue, 04 Dec 2018 12:44:43 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2`

```console
$ docker pull ghost@sha256:4c108905b74381f199bb19b43ebeab9ac6d2439041576549ad11e175a98947d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:2` - linux; amd64

```console
$ docker pull ghost@sha256:0e718f0f46f76f89e29e0f95267c334faa4cd0f9ce93032f920e1b2321c85a1c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272588345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8862b4a50e1749131868104d3f3f8e3f383a11914799825695392c8a78257e0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:07:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 12:09:09 GMT
ENV NODE_VERSION=8.14.0
# Mon, 03 Dec 2018 21:41:03 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Mon, 03 Dec 2018 21:41:03 GMT
ENV YARN_VERSION=1.12.3
# Mon, 03 Dec 2018 21:41:08 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Mon, 03 Dec 2018 21:41:08 GMT
CMD ["node"]
# Mon, 03 Dec 2018 23:39:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 03 Dec 2018 23:39:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 03 Dec 2018 23:39:31 GMT
ENV NODE_ENV=production
# Mon, 03 Dec 2018 23:39:32 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Mon, 03 Dec 2018 23:39:55 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Dec 2018 23:40:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Dec 2018 23:40:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Dec 2018 23:40:10 GMT
ENV GHOST_VERSION=2.6.2
# Mon, 03 Dec 2018 23:40:48 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Dec 2018 23:41:28 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Dec 2018 23:41:29 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Dec 2018 23:41:30 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Dec 2018 23:41:30 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Mon, 03 Dec 2018 23:41:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Dec 2018 23:41:31 GMT
EXPOSE 2368/tcp
# Mon, 03 Dec 2018 23:41:31 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd77ab8da06679825549b88b99b2e9277d0f548bcbe631450a3be48408c8256`  
		Last Modified: Fri, 16 Nov 2018 14:28:00 GMT  
		Size: 4.1 KB (4149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f41ceffa9f20448582f818d80ad0ede610910ab85fbe149185348d0957e703`  
		Last Modified: Mon, 03 Dec 2018 22:53:57 GMT  
		Size: 28.0 MB (28009081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0780bb3d463704547a0e4065170553863f19f31d85108e29fd1a1450225097fd`  
		Last Modified: Mon, 03 Dec 2018 22:53:50 GMT  
		Size: 1.3 MB (1312712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:551fe63f1f02b08e3616a2256a55c721f7496fd47d5fa45f6caece9359947db7`  
		Last Modified: Mon, 03 Dec 2018 23:49:43 GMT  
		Size: 500.9 KB (500920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6968d4fce38e9918cb101fd9b3dacad8685254d831f0bc0e196049546c436ce8`  
		Last Modified: Mon, 03 Dec 2018 23:49:53 GMT  
		Size: 17.3 MB (17291868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3a7a1186734d0dc717c452eb458e061863504a375c1dd5727d6344663b873f`  
		Last Modified: Mon, 03 Dec 2018 23:50:18 GMT  
		Size: 110.9 MB (110901921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557e7c2e7a0f6b2dc326d258f7e6c362ec9af36bc3bb5215e7183c935052945f`  
		Last Modified: Mon, 03 Dec 2018 23:50:19 GMT  
		Size: 92.1 MB (92080860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b63c87000faa040f3a43535cb450ce199fbe227aa668f2422cda7d169bcb49`  
		Last Modified: Mon, 03 Dec 2018 23:49:42 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; arm variant v7

```console
$ docker pull ghost@sha256:11bd5509d2a4ba2a45754416912dbbb471f2fba307e22ced280434085f115bef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.1 MB (267144912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a496c2dc7ddacd230eeba2e539bd9172cf95be6a1b863b8c2d8cdb2e35a4723`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:54:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 12:57:59 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 12:58:25 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 12:58:29 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 12:58:33 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 12:58:35 GMT
CMD ["node"]
# Wed, 28 Nov 2018 13:30:48 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Nov 2018 13:30:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Nov 2018 13:30:52 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 13:30:52 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 13:31:36 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 13:31:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 13:31:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 29 Nov 2018 12:57:37 GMT
ENV GHOST_VERSION=2.6.2
# Thu, 29 Nov 2018 12:59:23 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 29 Nov 2018 13:03:50 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 29 Nov 2018 13:03:55 GMT
WORKDIR /var/lib/ghost
# Thu, 29 Nov 2018 13:03:59 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 29 Nov 2018 13:04:00 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Thu, 29 Nov 2018 13:04:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Nov 2018 13:04:01 GMT
EXPOSE 2368/tcp
# Thu, 29 Nov 2018 13:04:01 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d593375e3e016efae3c2913bf9ec6a773d4d78912648d30765dc4d4b0a756a`  
		Last Modified: Fri, 16 Nov 2018 19:05:29 GMT  
		Size: 4.2 KB (4165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e20b4917aedccd552ac0cc78ed1e2104a3ca607c031ee2e99c8f5b3006d9ee`  
		Last Modified: Wed, 28 Nov 2018 13:06:18 GMT  
		Size: 25.5 MB (25452579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea0f8ab58b1fe09c50d6ec85b311a3723e8bee5dfa0f0fbff1fbf023c2f3cb2b`  
		Last Modified: Wed, 28 Nov 2018 13:06:10 GMT  
		Size: 1.3 MB (1310263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197be4c6f21e6ff0c9ac568b984e747b6da0ea3dd03188b575e82ee9cca33498`  
		Last Modified: Wed, 28 Nov 2018 13:50:41 GMT  
		Size: 475.4 KB (475434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb86a9a688bc50dadda629fcab35175ba4427f1797cebb1233534f7fbbb869b6`  
		Last Modified: Wed, 28 Nov 2018 13:50:50 GMT  
		Size: 17.3 MB (17292266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b0829cd544774dff0d4dfab70643f00a70080ec33c7a1039444af49d85a0a5f`  
		Last Modified: Thu, 29 Nov 2018 13:12:29 GMT  
		Size: 96.1 MB (96068826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2ef3a64ca44358fdc3d30ec8e6d6e3737f459bc47e1eba6b742a5fef7de8a39`  
		Last Modified: Thu, 29 Nov 2018 13:12:33 GMT  
		Size: 107.3 MB (107270763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc45c96421416408fd1ff56de227028254074fb04587a6f0f3ce848a7242845`  
		Last Modified: Thu, 29 Nov 2018 13:11:48 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:7982954e3e7bad2b86d51f69e0ed9acef744bad1548282b8fe91ab3db26cdce8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.8 MB (267806058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97c607498e368da8555cf0eb05e31f7fa83b503038079026c60d1545e84d67d6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 03:05:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 16:55:37 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 16:56:35 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 16:56:36 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 16:56:42 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 16:56:43 GMT
CMD ["node"]
# Thu, 29 Nov 2018 09:43:31 GMT
ENV GOSU_VERSION=1.10
# Thu, 29 Nov 2018 09:43:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 29 Nov 2018 09:43:37 GMT
ENV NODE_ENV=production
# Thu, 29 Nov 2018 09:43:38 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 29 Nov 2018 09:44:13 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 29 Nov 2018 09:44:14 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 29 Nov 2018 09:44:15 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 29 Nov 2018 09:44:16 GMT
ENV GHOST_VERSION=2.6.2
# Thu, 29 Nov 2018 09:45:34 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 29 Nov 2018 09:50:50 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 29 Nov 2018 09:50:57 GMT
WORKDIR /var/lib/ghost
# Thu, 29 Nov 2018 09:50:57 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 29 Nov 2018 09:50:58 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Thu, 29 Nov 2018 09:50:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Nov 2018 09:51:00 GMT
EXPOSE 2368/tcp
# Thu, 29 Nov 2018 09:51:00 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4fc0c5fe73c64e6243ea741f24b5591b828ed247c4f9aefad5813804a12c18a`  
		Last Modified: Sat, 17 Nov 2018 03:10:34 GMT  
		Size: 4.2 KB (4167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195106867279a5ea2805300ddff9e0a5baaa5514d73dbd992ca0961a30dcdcd2`  
		Last Modified: Wed, 28 Nov 2018 18:03:22 GMT  
		Size: 26.7 MB (26679215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1e147cbe8fb30957c06a70aafd9c1d19022dd751001f50be91d07f63877b7c`  
		Last Modified: Wed, 28 Nov 2018 18:03:11 GMT  
		Size: 1.3 MB (1310264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7eac4afa60ee78744955d5914636728db7c19a7bf8cf564a95fb3294f65bddf`  
		Last Modified: Thu, 29 Nov 2018 09:59:11 GMT  
		Size: 468.9 KB (468938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff362a86d810de82a4076658effe4861165de002edd0a9942d4d5fbc7d6ca6db`  
		Last Modified: Thu, 29 Nov 2018 09:59:19 GMT  
		Size: 17.3 MB (17292884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0a34c1ef8245d19011ff57112e489bfb09a33abdedbd3bbca3a934113f1f02`  
		Last Modified: Thu, 29 Nov 2018 09:59:49 GMT  
		Size: 95.1 MB (95141875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a772c12f5c7d2cb11ed05ea948df7c5d3f06be04008d089b5ee558d90cf6cd6`  
		Last Modified: Thu, 29 Nov 2018 09:59:55 GMT  
		Size: 106.6 MB (106576849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b785b463d1b10be84dfa79b5823712938a38f165372e647d23d38105b004bb0`  
		Last Modified: Thu, 29 Nov 2018 09:59:09 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; 386

```console
$ docker pull ghost@sha256:faafeeb63fc838681a6c0a58044d7b905987fc7820f0a46f53b4a0af0eb350d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.8 MB (258805568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cf2863dbd87e24635a883717bd486a63121feddf3c21fc743cf8610892e9b6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Tue, 27 Nov 2018 14:20:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 16:49:58 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 16:50:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 16:50:23 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 16:50:29 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 16:50:29 GMT
CMD ["node"]
# Wed, 28 Nov 2018 18:11:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Nov 2018 18:11:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Nov 2018 18:11:48 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 18:11:48 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 18:12:08 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 18:12:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 18:12:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 29 Nov 2018 11:41:28 GMT
ENV GHOST_VERSION=2.6.2
# Thu, 29 Nov 2018 11:42:08 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 29 Nov 2018 11:44:12 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 29 Nov 2018 11:44:14 GMT
WORKDIR /var/lib/ghost
# Thu, 29 Nov 2018 11:44:14 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 29 Nov 2018 11:44:14 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Thu, 29 Nov 2018 11:44:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Nov 2018 11:44:15 GMT
EXPOSE 2368/tcp
# Thu, 29 Nov 2018 11:44:15 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f393758efdde4e933c557f3f372621ebb2d7b6711b98741a1c8c23426030e867`  
		Last Modified: Tue, 27 Nov 2018 15:14:57 GMT  
		Size: 4.1 KB (4135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629585385db686ea51dbde250d8fb8535c936c9a4aae3d5071d5d5d9db4e7d6c`  
		Last Modified: Wed, 28 Nov 2018 17:45:01 GMT  
		Size: 27.8 MB (27819798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c0ec4bd20dc4ae2294747163ee251dadb6ab6ce1bb037b42fb5970771f81f5`  
		Last Modified: Wed, 28 Nov 2018 17:44:54 GMT  
		Size: 1.3 MB (1310263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e16a9ff05d4f1bd5ced25d3df057a511e9c714483fc8588907380d0f225933`  
		Last Modified: Wed, 28 Nov 2018 18:23:05 GMT  
		Size: 480.8 KB (480826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ef6f086b913c964498b258bdaea75cdb47910b8d548250b9245556141d4fb9`  
		Last Modified: Wed, 28 Nov 2018 18:23:22 GMT  
		Size: 17.3 MB (17287300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6595505a0961053d69bbc8960b17ca1150ef6bc1241a6c56356e18a2e93eb8`  
		Last Modified: Thu, 29 Nov 2018 11:46:51 GMT  
		Size: 89.2 MB (89173734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c6228a57d917a048ce5366412bbc4302e4ac4df0faff4301b640a7233fcd5e`  
		Last Modified: Thu, 29 Nov 2018 11:46:54 GMT  
		Size: 99.6 MB (99602179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b5bed3a994e6199363bd0d984bda0119352892a87303b4a6d45a118f5c92c5`  
		Last Modified: Thu, 29 Nov 2018 11:46:19 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; ppc64le

```console
$ docker pull ghost@sha256:672ee312c93ce862c2283cbbaca50a0510f3d24dbfda706d1246eda61910b961
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.7 MB (257654977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5095dd957fa3d40b6adde7c438c78a30b63251d80547eaaba69191b0c44390e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:07:51 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 16:55:13 GMT
ENV NODE_VERSION=8.14.0
# Tue, 04 Dec 2018 10:50:39 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 04 Dec 2018 10:50:40 GMT
ENV YARN_VERSION=1.12.3
# Tue, 04 Dec 2018 10:50:49 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 04 Dec 2018 10:50:49 GMT
CMD ["node"]
# Tue, 04 Dec 2018 12:01:05 GMT
ENV GOSU_VERSION=1.10
# Tue, 04 Dec 2018 12:01:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 04 Dec 2018 12:01:14 GMT
ENV NODE_ENV=production
# Tue, 04 Dec 2018 12:01:14 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 04 Dec 2018 12:01:52 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 04 Dec 2018 12:01:57 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 04 Dec 2018 12:01:57 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 04 Dec 2018 12:01:58 GMT
ENV GHOST_VERSION=2.6.2
# Tue, 04 Dec 2018 12:04:04 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 04 Dec 2018 12:11:36 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 04 Dec 2018 12:12:04 GMT
WORKDIR /var/lib/ghost
# Tue, 04 Dec 2018 12:12:06 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 04 Dec 2018 12:12:07 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Tue, 04 Dec 2018 12:12:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Dec 2018 12:12:10 GMT
EXPOSE 2368/tcp
# Tue, 04 Dec 2018 12:12:11 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1afeea1085f7b2f8c5843b5f4cfab6c95444c74532315569e14b7459ea105b`  
		Last Modified: Fri, 16 Nov 2018 20:13:37 GMT  
		Size: 4.2 KB (4185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42739ce341e43f26dc0b14f38202e253774f4c322ebee85ad77d539ea1259e1`  
		Last Modified: Tue, 04 Dec 2018 11:23:57 GMT  
		Size: 27.0 MB (26963900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e73cc53546c556d816a25f199d9fb9d077bd3fae67dbbe5ea8a61302ffa438`  
		Last Modified: Tue, 04 Dec 2018 11:23:36 GMT  
		Size: 1.3 MB (1312722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3277339a1ef69cca91c0224830307d89781aedc903b6307b534827f9ba13e6`  
		Last Modified: Tue, 04 Dec 2018 12:31:21 GMT  
		Size: 470.1 KB (470078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3df051e834ca0dc3cea01be91c7cd9a0a1783e84964890d3adf80b897a3757`  
		Last Modified: Tue, 04 Dec 2018 12:32:03 GMT  
		Size: 17.3 MB (17293239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2896ed5ca550212e7072ecf03245b39b2477420b7101d8422308fa77788f9b1c`  
		Last Modified: Tue, 04 Dec 2018 12:33:25 GMT  
		Size: 89.2 MB (89176179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df9d46b33f4c60f08f757afcc7ab3097826b333cf16522ea4c8e5c0b08312708`  
		Last Modified: Tue, 04 Dec 2018 12:33:22 GMT  
		Size: 99.7 MB (99693403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068fd5d74169cec15bed5cccfd4639803f6266d85f400fa39aafd597b4c56a7e`  
		Last Modified: Tue, 04 Dec 2018 12:31:19 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; s390x

```console
$ docker pull ghost@sha256:acc0f3002f32ae224e18b347f3f719e33e561b8f97a85eb56f2b88b2fe60900c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.1 MB (258118060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea3dd6cbf89c42ced40775e295b0dc9f014f39bdbde8e60b091f9e8b138da57d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:39:43 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 13:27:02 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 13:27:28 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 13:27:29 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 13:27:33 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 13:27:34 GMT
CMD ["node"]
# Thu, 29 Nov 2018 12:43:28 GMT
ENV GOSU_VERSION=1.10
# Thu, 29 Nov 2018 12:43:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 29 Nov 2018 12:43:32 GMT
ENV NODE_ENV=production
# Thu, 29 Nov 2018 12:43:32 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 29 Nov 2018 12:43:49 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 29 Nov 2018 12:43:50 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 29 Nov 2018 12:43:50 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 29 Nov 2018 12:43:50 GMT
ENV GHOST_VERSION=2.6.2
# Thu, 29 Nov 2018 12:44:22 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 29 Nov 2018 12:46:08 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 29 Nov 2018 12:46:10 GMT
WORKDIR /var/lib/ghost
# Thu, 29 Nov 2018 12:46:10 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 29 Nov 2018 12:46:10 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Thu, 29 Nov 2018 12:46:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Nov 2018 12:46:11 GMT
EXPOSE 2368/tcp
# Thu, 29 Nov 2018 12:46:11 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:db7aa0264595016e37963ab9cf4e6fbfa7b19d99cb39b16bbb561a02b7b459d2`  
		Last Modified: Thu, 15 Nov 2018 02:03:05 GMT  
		Size: 22.3 MB (22334714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2801c348986bea5725dc642412a1130b6f77f3e4a15d3a5ab8d90b93bb96aad0`  
		Last Modified: Fri, 16 Nov 2018 20:42:10 GMT  
		Size: 4.2 KB (4150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b17408b2e243ccc39821963534cdf5f8eddaac5267dc9f28e635094953ba50`  
		Last Modified: Wed, 28 Nov 2018 14:04:43 GMT  
		Size: 27.8 MB (27836589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf4c04b048513ecc0deb58c3a802087a34607574fc49f8999b5c17cd69756f3`  
		Last Modified: Wed, 28 Nov 2018 14:04:37 GMT  
		Size: 1.3 MB (1310258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1186605b43f3fa11c94b829cac971a55c83362ec7a6cba3a82589ca798af34dc`  
		Last Modified: Thu, 29 Nov 2018 12:49:18 GMT  
		Size: 487.0 KB (487049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e367843ef942554f7ff07591dba68078d4dd1ec55acdb20afa015c666ea8f4d`  
		Last Modified: Thu, 29 Nov 2018 12:49:23 GMT  
		Size: 17.3 MB (17287465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a185605b81d50c4136b372134750ba99512a47e4b8d2562abc9c69c18d662960`  
		Last Modified: Thu, 29 Nov 2018 12:49:37 GMT  
		Size: 89.2 MB (89173596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0b1998d5bac924a56663a9a72adf36f77ba395ff9a151c8da775935739b0fa`  
		Last Modified: Thu, 29 Nov 2018 12:49:39 GMT  
		Size: 99.7 MB (99683680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48606189f73465d12332f0e2c1faa4124e8324fc9c42dd4a1b51720786bf8837`  
		Last Modified: Thu, 29 Nov 2018 12:49:18 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.6`

```console
$ docker pull ghost@sha256:4c108905b74381f199bb19b43ebeab9ac6d2439041576549ad11e175a98947d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:2.6` - linux; amd64

```console
$ docker pull ghost@sha256:0e718f0f46f76f89e29e0f95267c334faa4cd0f9ce93032f920e1b2321c85a1c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272588345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8862b4a50e1749131868104d3f3f8e3f383a11914799825695392c8a78257e0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:07:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 12:09:09 GMT
ENV NODE_VERSION=8.14.0
# Mon, 03 Dec 2018 21:41:03 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Mon, 03 Dec 2018 21:41:03 GMT
ENV YARN_VERSION=1.12.3
# Mon, 03 Dec 2018 21:41:08 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Mon, 03 Dec 2018 21:41:08 GMT
CMD ["node"]
# Mon, 03 Dec 2018 23:39:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 03 Dec 2018 23:39:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 03 Dec 2018 23:39:31 GMT
ENV NODE_ENV=production
# Mon, 03 Dec 2018 23:39:32 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Mon, 03 Dec 2018 23:39:55 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Dec 2018 23:40:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Dec 2018 23:40:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Dec 2018 23:40:10 GMT
ENV GHOST_VERSION=2.6.2
# Mon, 03 Dec 2018 23:40:48 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Dec 2018 23:41:28 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Dec 2018 23:41:29 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Dec 2018 23:41:30 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Dec 2018 23:41:30 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Mon, 03 Dec 2018 23:41:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Dec 2018 23:41:31 GMT
EXPOSE 2368/tcp
# Mon, 03 Dec 2018 23:41:31 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd77ab8da06679825549b88b99b2e9277d0f548bcbe631450a3be48408c8256`  
		Last Modified: Fri, 16 Nov 2018 14:28:00 GMT  
		Size: 4.1 KB (4149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f41ceffa9f20448582f818d80ad0ede610910ab85fbe149185348d0957e703`  
		Last Modified: Mon, 03 Dec 2018 22:53:57 GMT  
		Size: 28.0 MB (28009081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0780bb3d463704547a0e4065170553863f19f31d85108e29fd1a1450225097fd`  
		Last Modified: Mon, 03 Dec 2018 22:53:50 GMT  
		Size: 1.3 MB (1312712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:551fe63f1f02b08e3616a2256a55c721f7496fd47d5fa45f6caece9359947db7`  
		Last Modified: Mon, 03 Dec 2018 23:49:43 GMT  
		Size: 500.9 KB (500920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6968d4fce38e9918cb101fd9b3dacad8685254d831f0bc0e196049546c436ce8`  
		Last Modified: Mon, 03 Dec 2018 23:49:53 GMT  
		Size: 17.3 MB (17291868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3a7a1186734d0dc717c452eb458e061863504a375c1dd5727d6344663b873f`  
		Last Modified: Mon, 03 Dec 2018 23:50:18 GMT  
		Size: 110.9 MB (110901921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557e7c2e7a0f6b2dc326d258f7e6c362ec9af36bc3bb5215e7183c935052945f`  
		Last Modified: Mon, 03 Dec 2018 23:50:19 GMT  
		Size: 92.1 MB (92080860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b63c87000faa040f3a43535cb450ce199fbe227aa668f2422cda7d169bcb49`  
		Last Modified: Mon, 03 Dec 2018 23:49:42 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.6` - linux; arm variant v7

```console
$ docker pull ghost@sha256:11bd5509d2a4ba2a45754416912dbbb471f2fba307e22ced280434085f115bef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.1 MB (267144912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a496c2dc7ddacd230eeba2e539bd9172cf95be6a1b863b8c2d8cdb2e35a4723`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:54:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 12:57:59 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 12:58:25 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 12:58:29 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 12:58:33 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 12:58:35 GMT
CMD ["node"]
# Wed, 28 Nov 2018 13:30:48 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Nov 2018 13:30:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Nov 2018 13:30:52 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 13:30:52 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 13:31:36 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 13:31:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 13:31:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 29 Nov 2018 12:57:37 GMT
ENV GHOST_VERSION=2.6.2
# Thu, 29 Nov 2018 12:59:23 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 29 Nov 2018 13:03:50 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 29 Nov 2018 13:03:55 GMT
WORKDIR /var/lib/ghost
# Thu, 29 Nov 2018 13:03:59 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 29 Nov 2018 13:04:00 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Thu, 29 Nov 2018 13:04:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Nov 2018 13:04:01 GMT
EXPOSE 2368/tcp
# Thu, 29 Nov 2018 13:04:01 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d593375e3e016efae3c2913bf9ec6a773d4d78912648d30765dc4d4b0a756a`  
		Last Modified: Fri, 16 Nov 2018 19:05:29 GMT  
		Size: 4.2 KB (4165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e20b4917aedccd552ac0cc78ed1e2104a3ca607c031ee2e99c8f5b3006d9ee`  
		Last Modified: Wed, 28 Nov 2018 13:06:18 GMT  
		Size: 25.5 MB (25452579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea0f8ab58b1fe09c50d6ec85b311a3723e8bee5dfa0f0fbff1fbf023c2f3cb2b`  
		Last Modified: Wed, 28 Nov 2018 13:06:10 GMT  
		Size: 1.3 MB (1310263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197be4c6f21e6ff0c9ac568b984e747b6da0ea3dd03188b575e82ee9cca33498`  
		Last Modified: Wed, 28 Nov 2018 13:50:41 GMT  
		Size: 475.4 KB (475434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb86a9a688bc50dadda629fcab35175ba4427f1797cebb1233534f7fbbb869b6`  
		Last Modified: Wed, 28 Nov 2018 13:50:50 GMT  
		Size: 17.3 MB (17292266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b0829cd544774dff0d4dfab70643f00a70080ec33c7a1039444af49d85a0a5f`  
		Last Modified: Thu, 29 Nov 2018 13:12:29 GMT  
		Size: 96.1 MB (96068826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2ef3a64ca44358fdc3d30ec8e6d6e3737f459bc47e1eba6b742a5fef7de8a39`  
		Last Modified: Thu, 29 Nov 2018 13:12:33 GMT  
		Size: 107.3 MB (107270763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc45c96421416408fd1ff56de227028254074fb04587a6f0f3ce848a7242845`  
		Last Modified: Thu, 29 Nov 2018 13:11:48 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.6` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:7982954e3e7bad2b86d51f69e0ed9acef744bad1548282b8fe91ab3db26cdce8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.8 MB (267806058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97c607498e368da8555cf0eb05e31f7fa83b503038079026c60d1545e84d67d6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 03:05:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 16:55:37 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 16:56:35 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 16:56:36 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 16:56:42 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 16:56:43 GMT
CMD ["node"]
# Thu, 29 Nov 2018 09:43:31 GMT
ENV GOSU_VERSION=1.10
# Thu, 29 Nov 2018 09:43:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 29 Nov 2018 09:43:37 GMT
ENV NODE_ENV=production
# Thu, 29 Nov 2018 09:43:38 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 29 Nov 2018 09:44:13 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 29 Nov 2018 09:44:14 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 29 Nov 2018 09:44:15 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 29 Nov 2018 09:44:16 GMT
ENV GHOST_VERSION=2.6.2
# Thu, 29 Nov 2018 09:45:34 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 29 Nov 2018 09:50:50 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 29 Nov 2018 09:50:57 GMT
WORKDIR /var/lib/ghost
# Thu, 29 Nov 2018 09:50:57 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 29 Nov 2018 09:50:58 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Thu, 29 Nov 2018 09:50:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Nov 2018 09:51:00 GMT
EXPOSE 2368/tcp
# Thu, 29 Nov 2018 09:51:00 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4fc0c5fe73c64e6243ea741f24b5591b828ed247c4f9aefad5813804a12c18a`  
		Last Modified: Sat, 17 Nov 2018 03:10:34 GMT  
		Size: 4.2 KB (4167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195106867279a5ea2805300ddff9e0a5baaa5514d73dbd992ca0961a30dcdcd2`  
		Last Modified: Wed, 28 Nov 2018 18:03:22 GMT  
		Size: 26.7 MB (26679215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1e147cbe8fb30957c06a70aafd9c1d19022dd751001f50be91d07f63877b7c`  
		Last Modified: Wed, 28 Nov 2018 18:03:11 GMT  
		Size: 1.3 MB (1310264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7eac4afa60ee78744955d5914636728db7c19a7bf8cf564a95fb3294f65bddf`  
		Last Modified: Thu, 29 Nov 2018 09:59:11 GMT  
		Size: 468.9 KB (468938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff362a86d810de82a4076658effe4861165de002edd0a9942d4d5fbc7d6ca6db`  
		Last Modified: Thu, 29 Nov 2018 09:59:19 GMT  
		Size: 17.3 MB (17292884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0a34c1ef8245d19011ff57112e489bfb09a33abdedbd3bbca3a934113f1f02`  
		Last Modified: Thu, 29 Nov 2018 09:59:49 GMT  
		Size: 95.1 MB (95141875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a772c12f5c7d2cb11ed05ea948df7c5d3f06be04008d089b5ee558d90cf6cd6`  
		Last Modified: Thu, 29 Nov 2018 09:59:55 GMT  
		Size: 106.6 MB (106576849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b785b463d1b10be84dfa79b5823712938a38f165372e647d23d38105b004bb0`  
		Last Modified: Thu, 29 Nov 2018 09:59:09 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.6` - linux; 386

```console
$ docker pull ghost@sha256:faafeeb63fc838681a6c0a58044d7b905987fc7820f0a46f53b4a0af0eb350d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.8 MB (258805568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cf2863dbd87e24635a883717bd486a63121feddf3c21fc743cf8610892e9b6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Tue, 27 Nov 2018 14:20:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 16:49:58 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 16:50:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 16:50:23 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 16:50:29 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 16:50:29 GMT
CMD ["node"]
# Wed, 28 Nov 2018 18:11:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Nov 2018 18:11:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Nov 2018 18:11:48 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 18:11:48 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 18:12:08 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 18:12:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 18:12:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 29 Nov 2018 11:41:28 GMT
ENV GHOST_VERSION=2.6.2
# Thu, 29 Nov 2018 11:42:08 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 29 Nov 2018 11:44:12 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 29 Nov 2018 11:44:14 GMT
WORKDIR /var/lib/ghost
# Thu, 29 Nov 2018 11:44:14 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 29 Nov 2018 11:44:14 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Thu, 29 Nov 2018 11:44:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Nov 2018 11:44:15 GMT
EXPOSE 2368/tcp
# Thu, 29 Nov 2018 11:44:15 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f393758efdde4e933c557f3f372621ebb2d7b6711b98741a1c8c23426030e867`  
		Last Modified: Tue, 27 Nov 2018 15:14:57 GMT  
		Size: 4.1 KB (4135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629585385db686ea51dbde250d8fb8535c936c9a4aae3d5071d5d5d9db4e7d6c`  
		Last Modified: Wed, 28 Nov 2018 17:45:01 GMT  
		Size: 27.8 MB (27819798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c0ec4bd20dc4ae2294747163ee251dadb6ab6ce1bb037b42fb5970771f81f5`  
		Last Modified: Wed, 28 Nov 2018 17:44:54 GMT  
		Size: 1.3 MB (1310263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e16a9ff05d4f1bd5ced25d3df057a511e9c714483fc8588907380d0f225933`  
		Last Modified: Wed, 28 Nov 2018 18:23:05 GMT  
		Size: 480.8 KB (480826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ef6f086b913c964498b258bdaea75cdb47910b8d548250b9245556141d4fb9`  
		Last Modified: Wed, 28 Nov 2018 18:23:22 GMT  
		Size: 17.3 MB (17287300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6595505a0961053d69bbc8960b17ca1150ef6bc1241a6c56356e18a2e93eb8`  
		Last Modified: Thu, 29 Nov 2018 11:46:51 GMT  
		Size: 89.2 MB (89173734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c6228a57d917a048ce5366412bbc4302e4ac4df0faff4301b640a7233fcd5e`  
		Last Modified: Thu, 29 Nov 2018 11:46:54 GMT  
		Size: 99.6 MB (99602179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b5bed3a994e6199363bd0d984bda0119352892a87303b4a6d45a118f5c92c5`  
		Last Modified: Thu, 29 Nov 2018 11:46:19 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.6` - linux; ppc64le

```console
$ docker pull ghost@sha256:672ee312c93ce862c2283cbbaca50a0510f3d24dbfda706d1246eda61910b961
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.7 MB (257654977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5095dd957fa3d40b6adde7c438c78a30b63251d80547eaaba69191b0c44390e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:07:51 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 16:55:13 GMT
ENV NODE_VERSION=8.14.0
# Tue, 04 Dec 2018 10:50:39 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 04 Dec 2018 10:50:40 GMT
ENV YARN_VERSION=1.12.3
# Tue, 04 Dec 2018 10:50:49 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 04 Dec 2018 10:50:49 GMT
CMD ["node"]
# Tue, 04 Dec 2018 12:01:05 GMT
ENV GOSU_VERSION=1.10
# Tue, 04 Dec 2018 12:01:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 04 Dec 2018 12:01:14 GMT
ENV NODE_ENV=production
# Tue, 04 Dec 2018 12:01:14 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 04 Dec 2018 12:01:52 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 04 Dec 2018 12:01:57 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 04 Dec 2018 12:01:57 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 04 Dec 2018 12:01:58 GMT
ENV GHOST_VERSION=2.6.2
# Tue, 04 Dec 2018 12:04:04 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 04 Dec 2018 12:11:36 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 04 Dec 2018 12:12:04 GMT
WORKDIR /var/lib/ghost
# Tue, 04 Dec 2018 12:12:06 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 04 Dec 2018 12:12:07 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Tue, 04 Dec 2018 12:12:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Dec 2018 12:12:10 GMT
EXPOSE 2368/tcp
# Tue, 04 Dec 2018 12:12:11 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1afeea1085f7b2f8c5843b5f4cfab6c95444c74532315569e14b7459ea105b`  
		Last Modified: Fri, 16 Nov 2018 20:13:37 GMT  
		Size: 4.2 KB (4185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42739ce341e43f26dc0b14f38202e253774f4c322ebee85ad77d539ea1259e1`  
		Last Modified: Tue, 04 Dec 2018 11:23:57 GMT  
		Size: 27.0 MB (26963900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e73cc53546c556d816a25f199d9fb9d077bd3fae67dbbe5ea8a61302ffa438`  
		Last Modified: Tue, 04 Dec 2018 11:23:36 GMT  
		Size: 1.3 MB (1312722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3277339a1ef69cca91c0224830307d89781aedc903b6307b534827f9ba13e6`  
		Last Modified: Tue, 04 Dec 2018 12:31:21 GMT  
		Size: 470.1 KB (470078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3df051e834ca0dc3cea01be91c7cd9a0a1783e84964890d3adf80b897a3757`  
		Last Modified: Tue, 04 Dec 2018 12:32:03 GMT  
		Size: 17.3 MB (17293239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2896ed5ca550212e7072ecf03245b39b2477420b7101d8422308fa77788f9b1c`  
		Last Modified: Tue, 04 Dec 2018 12:33:25 GMT  
		Size: 89.2 MB (89176179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df9d46b33f4c60f08f757afcc7ab3097826b333cf16522ea4c8e5c0b08312708`  
		Last Modified: Tue, 04 Dec 2018 12:33:22 GMT  
		Size: 99.7 MB (99693403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068fd5d74169cec15bed5cccfd4639803f6266d85f400fa39aafd597b4c56a7e`  
		Last Modified: Tue, 04 Dec 2018 12:31:19 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.6` - linux; s390x

```console
$ docker pull ghost@sha256:acc0f3002f32ae224e18b347f3f719e33e561b8f97a85eb56f2b88b2fe60900c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.1 MB (258118060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea3dd6cbf89c42ced40775e295b0dc9f014f39bdbde8e60b091f9e8b138da57d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:39:43 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 13:27:02 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 13:27:28 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 13:27:29 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 13:27:33 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 13:27:34 GMT
CMD ["node"]
# Thu, 29 Nov 2018 12:43:28 GMT
ENV GOSU_VERSION=1.10
# Thu, 29 Nov 2018 12:43:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 29 Nov 2018 12:43:32 GMT
ENV NODE_ENV=production
# Thu, 29 Nov 2018 12:43:32 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 29 Nov 2018 12:43:49 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 29 Nov 2018 12:43:50 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 29 Nov 2018 12:43:50 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 29 Nov 2018 12:43:50 GMT
ENV GHOST_VERSION=2.6.2
# Thu, 29 Nov 2018 12:44:22 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 29 Nov 2018 12:46:08 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 29 Nov 2018 12:46:10 GMT
WORKDIR /var/lib/ghost
# Thu, 29 Nov 2018 12:46:10 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 29 Nov 2018 12:46:10 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Thu, 29 Nov 2018 12:46:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Nov 2018 12:46:11 GMT
EXPOSE 2368/tcp
# Thu, 29 Nov 2018 12:46:11 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:db7aa0264595016e37963ab9cf4e6fbfa7b19d99cb39b16bbb561a02b7b459d2`  
		Last Modified: Thu, 15 Nov 2018 02:03:05 GMT  
		Size: 22.3 MB (22334714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2801c348986bea5725dc642412a1130b6f77f3e4a15d3a5ab8d90b93bb96aad0`  
		Last Modified: Fri, 16 Nov 2018 20:42:10 GMT  
		Size: 4.2 KB (4150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b17408b2e243ccc39821963534cdf5f8eddaac5267dc9f28e635094953ba50`  
		Last Modified: Wed, 28 Nov 2018 14:04:43 GMT  
		Size: 27.8 MB (27836589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf4c04b048513ecc0deb58c3a802087a34607574fc49f8999b5c17cd69756f3`  
		Last Modified: Wed, 28 Nov 2018 14:04:37 GMT  
		Size: 1.3 MB (1310258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1186605b43f3fa11c94b829cac971a55c83362ec7a6cba3a82589ca798af34dc`  
		Last Modified: Thu, 29 Nov 2018 12:49:18 GMT  
		Size: 487.0 KB (487049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e367843ef942554f7ff07591dba68078d4dd1ec55acdb20afa015c666ea8f4d`  
		Last Modified: Thu, 29 Nov 2018 12:49:23 GMT  
		Size: 17.3 MB (17287465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a185605b81d50c4136b372134750ba99512a47e4b8d2562abc9c69c18d662960`  
		Last Modified: Thu, 29 Nov 2018 12:49:37 GMT  
		Size: 89.2 MB (89173596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0b1998d5bac924a56663a9a72adf36f77ba395ff9a151c8da775935739b0fa`  
		Last Modified: Thu, 29 Nov 2018 12:49:39 GMT  
		Size: 99.7 MB (99683680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48606189f73465d12332f0e2c1faa4124e8324fc9c42dd4a1b51720786bf8837`  
		Last Modified: Thu, 29 Nov 2018 12:49:18 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.6.2`

```console
$ docker pull ghost@sha256:4c108905b74381f199bb19b43ebeab9ac6d2439041576549ad11e175a98947d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:2.6.2` - linux; amd64

```console
$ docker pull ghost@sha256:0e718f0f46f76f89e29e0f95267c334faa4cd0f9ce93032f920e1b2321c85a1c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272588345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8862b4a50e1749131868104d3f3f8e3f383a11914799825695392c8a78257e0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:07:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 12:09:09 GMT
ENV NODE_VERSION=8.14.0
# Mon, 03 Dec 2018 21:41:03 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Mon, 03 Dec 2018 21:41:03 GMT
ENV YARN_VERSION=1.12.3
# Mon, 03 Dec 2018 21:41:08 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Mon, 03 Dec 2018 21:41:08 GMT
CMD ["node"]
# Mon, 03 Dec 2018 23:39:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 03 Dec 2018 23:39:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 03 Dec 2018 23:39:31 GMT
ENV NODE_ENV=production
# Mon, 03 Dec 2018 23:39:32 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Mon, 03 Dec 2018 23:39:55 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Dec 2018 23:40:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Dec 2018 23:40:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Dec 2018 23:40:10 GMT
ENV GHOST_VERSION=2.6.2
# Mon, 03 Dec 2018 23:40:48 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Dec 2018 23:41:28 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Dec 2018 23:41:29 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Dec 2018 23:41:30 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Dec 2018 23:41:30 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Mon, 03 Dec 2018 23:41:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Dec 2018 23:41:31 GMT
EXPOSE 2368/tcp
# Mon, 03 Dec 2018 23:41:31 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd77ab8da06679825549b88b99b2e9277d0f548bcbe631450a3be48408c8256`  
		Last Modified: Fri, 16 Nov 2018 14:28:00 GMT  
		Size: 4.1 KB (4149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f41ceffa9f20448582f818d80ad0ede610910ab85fbe149185348d0957e703`  
		Last Modified: Mon, 03 Dec 2018 22:53:57 GMT  
		Size: 28.0 MB (28009081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0780bb3d463704547a0e4065170553863f19f31d85108e29fd1a1450225097fd`  
		Last Modified: Mon, 03 Dec 2018 22:53:50 GMT  
		Size: 1.3 MB (1312712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:551fe63f1f02b08e3616a2256a55c721f7496fd47d5fa45f6caece9359947db7`  
		Last Modified: Mon, 03 Dec 2018 23:49:43 GMT  
		Size: 500.9 KB (500920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6968d4fce38e9918cb101fd9b3dacad8685254d831f0bc0e196049546c436ce8`  
		Last Modified: Mon, 03 Dec 2018 23:49:53 GMT  
		Size: 17.3 MB (17291868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3a7a1186734d0dc717c452eb458e061863504a375c1dd5727d6344663b873f`  
		Last Modified: Mon, 03 Dec 2018 23:50:18 GMT  
		Size: 110.9 MB (110901921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557e7c2e7a0f6b2dc326d258f7e6c362ec9af36bc3bb5215e7183c935052945f`  
		Last Modified: Mon, 03 Dec 2018 23:50:19 GMT  
		Size: 92.1 MB (92080860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b63c87000faa040f3a43535cb450ce199fbe227aa668f2422cda7d169bcb49`  
		Last Modified: Mon, 03 Dec 2018 23:49:42 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.6.2` - linux; arm variant v7

```console
$ docker pull ghost@sha256:11bd5509d2a4ba2a45754416912dbbb471f2fba307e22ced280434085f115bef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.1 MB (267144912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a496c2dc7ddacd230eeba2e539bd9172cf95be6a1b863b8c2d8cdb2e35a4723`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:54:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 12:57:59 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 12:58:25 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 12:58:29 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 12:58:33 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 12:58:35 GMT
CMD ["node"]
# Wed, 28 Nov 2018 13:30:48 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Nov 2018 13:30:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Nov 2018 13:30:52 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 13:30:52 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 13:31:36 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 13:31:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 13:31:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 29 Nov 2018 12:57:37 GMT
ENV GHOST_VERSION=2.6.2
# Thu, 29 Nov 2018 12:59:23 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 29 Nov 2018 13:03:50 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 29 Nov 2018 13:03:55 GMT
WORKDIR /var/lib/ghost
# Thu, 29 Nov 2018 13:03:59 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 29 Nov 2018 13:04:00 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Thu, 29 Nov 2018 13:04:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Nov 2018 13:04:01 GMT
EXPOSE 2368/tcp
# Thu, 29 Nov 2018 13:04:01 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d593375e3e016efae3c2913bf9ec6a773d4d78912648d30765dc4d4b0a756a`  
		Last Modified: Fri, 16 Nov 2018 19:05:29 GMT  
		Size: 4.2 KB (4165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e20b4917aedccd552ac0cc78ed1e2104a3ca607c031ee2e99c8f5b3006d9ee`  
		Last Modified: Wed, 28 Nov 2018 13:06:18 GMT  
		Size: 25.5 MB (25452579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea0f8ab58b1fe09c50d6ec85b311a3723e8bee5dfa0f0fbff1fbf023c2f3cb2b`  
		Last Modified: Wed, 28 Nov 2018 13:06:10 GMT  
		Size: 1.3 MB (1310263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197be4c6f21e6ff0c9ac568b984e747b6da0ea3dd03188b575e82ee9cca33498`  
		Last Modified: Wed, 28 Nov 2018 13:50:41 GMT  
		Size: 475.4 KB (475434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb86a9a688bc50dadda629fcab35175ba4427f1797cebb1233534f7fbbb869b6`  
		Last Modified: Wed, 28 Nov 2018 13:50:50 GMT  
		Size: 17.3 MB (17292266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b0829cd544774dff0d4dfab70643f00a70080ec33c7a1039444af49d85a0a5f`  
		Last Modified: Thu, 29 Nov 2018 13:12:29 GMT  
		Size: 96.1 MB (96068826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2ef3a64ca44358fdc3d30ec8e6d6e3737f459bc47e1eba6b742a5fef7de8a39`  
		Last Modified: Thu, 29 Nov 2018 13:12:33 GMT  
		Size: 107.3 MB (107270763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc45c96421416408fd1ff56de227028254074fb04587a6f0f3ce848a7242845`  
		Last Modified: Thu, 29 Nov 2018 13:11:48 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.6.2` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:7982954e3e7bad2b86d51f69e0ed9acef744bad1548282b8fe91ab3db26cdce8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.8 MB (267806058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97c607498e368da8555cf0eb05e31f7fa83b503038079026c60d1545e84d67d6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 03:05:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 16:55:37 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 16:56:35 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 16:56:36 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 16:56:42 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 16:56:43 GMT
CMD ["node"]
# Thu, 29 Nov 2018 09:43:31 GMT
ENV GOSU_VERSION=1.10
# Thu, 29 Nov 2018 09:43:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 29 Nov 2018 09:43:37 GMT
ENV NODE_ENV=production
# Thu, 29 Nov 2018 09:43:38 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 29 Nov 2018 09:44:13 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 29 Nov 2018 09:44:14 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 29 Nov 2018 09:44:15 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 29 Nov 2018 09:44:16 GMT
ENV GHOST_VERSION=2.6.2
# Thu, 29 Nov 2018 09:45:34 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 29 Nov 2018 09:50:50 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 29 Nov 2018 09:50:57 GMT
WORKDIR /var/lib/ghost
# Thu, 29 Nov 2018 09:50:57 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 29 Nov 2018 09:50:58 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Thu, 29 Nov 2018 09:50:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Nov 2018 09:51:00 GMT
EXPOSE 2368/tcp
# Thu, 29 Nov 2018 09:51:00 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4fc0c5fe73c64e6243ea741f24b5591b828ed247c4f9aefad5813804a12c18a`  
		Last Modified: Sat, 17 Nov 2018 03:10:34 GMT  
		Size: 4.2 KB (4167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195106867279a5ea2805300ddff9e0a5baaa5514d73dbd992ca0961a30dcdcd2`  
		Last Modified: Wed, 28 Nov 2018 18:03:22 GMT  
		Size: 26.7 MB (26679215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1e147cbe8fb30957c06a70aafd9c1d19022dd751001f50be91d07f63877b7c`  
		Last Modified: Wed, 28 Nov 2018 18:03:11 GMT  
		Size: 1.3 MB (1310264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7eac4afa60ee78744955d5914636728db7c19a7bf8cf564a95fb3294f65bddf`  
		Last Modified: Thu, 29 Nov 2018 09:59:11 GMT  
		Size: 468.9 KB (468938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff362a86d810de82a4076658effe4861165de002edd0a9942d4d5fbc7d6ca6db`  
		Last Modified: Thu, 29 Nov 2018 09:59:19 GMT  
		Size: 17.3 MB (17292884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0a34c1ef8245d19011ff57112e489bfb09a33abdedbd3bbca3a934113f1f02`  
		Last Modified: Thu, 29 Nov 2018 09:59:49 GMT  
		Size: 95.1 MB (95141875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a772c12f5c7d2cb11ed05ea948df7c5d3f06be04008d089b5ee558d90cf6cd6`  
		Last Modified: Thu, 29 Nov 2018 09:59:55 GMT  
		Size: 106.6 MB (106576849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b785b463d1b10be84dfa79b5823712938a38f165372e647d23d38105b004bb0`  
		Last Modified: Thu, 29 Nov 2018 09:59:09 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.6.2` - linux; 386

```console
$ docker pull ghost@sha256:faafeeb63fc838681a6c0a58044d7b905987fc7820f0a46f53b4a0af0eb350d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.8 MB (258805568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cf2863dbd87e24635a883717bd486a63121feddf3c21fc743cf8610892e9b6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Tue, 27 Nov 2018 14:20:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 16:49:58 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 16:50:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 16:50:23 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 16:50:29 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 16:50:29 GMT
CMD ["node"]
# Wed, 28 Nov 2018 18:11:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Nov 2018 18:11:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Nov 2018 18:11:48 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 18:11:48 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 18:12:08 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 18:12:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 18:12:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 29 Nov 2018 11:41:28 GMT
ENV GHOST_VERSION=2.6.2
# Thu, 29 Nov 2018 11:42:08 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 29 Nov 2018 11:44:12 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 29 Nov 2018 11:44:14 GMT
WORKDIR /var/lib/ghost
# Thu, 29 Nov 2018 11:44:14 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 29 Nov 2018 11:44:14 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Thu, 29 Nov 2018 11:44:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Nov 2018 11:44:15 GMT
EXPOSE 2368/tcp
# Thu, 29 Nov 2018 11:44:15 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f393758efdde4e933c557f3f372621ebb2d7b6711b98741a1c8c23426030e867`  
		Last Modified: Tue, 27 Nov 2018 15:14:57 GMT  
		Size: 4.1 KB (4135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629585385db686ea51dbde250d8fb8535c936c9a4aae3d5071d5d5d9db4e7d6c`  
		Last Modified: Wed, 28 Nov 2018 17:45:01 GMT  
		Size: 27.8 MB (27819798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c0ec4bd20dc4ae2294747163ee251dadb6ab6ce1bb037b42fb5970771f81f5`  
		Last Modified: Wed, 28 Nov 2018 17:44:54 GMT  
		Size: 1.3 MB (1310263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e16a9ff05d4f1bd5ced25d3df057a511e9c714483fc8588907380d0f225933`  
		Last Modified: Wed, 28 Nov 2018 18:23:05 GMT  
		Size: 480.8 KB (480826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ef6f086b913c964498b258bdaea75cdb47910b8d548250b9245556141d4fb9`  
		Last Modified: Wed, 28 Nov 2018 18:23:22 GMT  
		Size: 17.3 MB (17287300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6595505a0961053d69bbc8960b17ca1150ef6bc1241a6c56356e18a2e93eb8`  
		Last Modified: Thu, 29 Nov 2018 11:46:51 GMT  
		Size: 89.2 MB (89173734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c6228a57d917a048ce5366412bbc4302e4ac4df0faff4301b640a7233fcd5e`  
		Last Modified: Thu, 29 Nov 2018 11:46:54 GMT  
		Size: 99.6 MB (99602179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b5bed3a994e6199363bd0d984bda0119352892a87303b4a6d45a118f5c92c5`  
		Last Modified: Thu, 29 Nov 2018 11:46:19 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.6.2` - linux; ppc64le

```console
$ docker pull ghost@sha256:672ee312c93ce862c2283cbbaca50a0510f3d24dbfda706d1246eda61910b961
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.7 MB (257654977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5095dd957fa3d40b6adde7c438c78a30b63251d80547eaaba69191b0c44390e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:07:51 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 16:55:13 GMT
ENV NODE_VERSION=8.14.0
# Tue, 04 Dec 2018 10:50:39 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 04 Dec 2018 10:50:40 GMT
ENV YARN_VERSION=1.12.3
# Tue, 04 Dec 2018 10:50:49 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 04 Dec 2018 10:50:49 GMT
CMD ["node"]
# Tue, 04 Dec 2018 12:01:05 GMT
ENV GOSU_VERSION=1.10
# Tue, 04 Dec 2018 12:01:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 04 Dec 2018 12:01:14 GMT
ENV NODE_ENV=production
# Tue, 04 Dec 2018 12:01:14 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 04 Dec 2018 12:01:52 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 04 Dec 2018 12:01:57 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 04 Dec 2018 12:01:57 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 04 Dec 2018 12:01:58 GMT
ENV GHOST_VERSION=2.6.2
# Tue, 04 Dec 2018 12:04:04 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 04 Dec 2018 12:11:36 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 04 Dec 2018 12:12:04 GMT
WORKDIR /var/lib/ghost
# Tue, 04 Dec 2018 12:12:06 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 04 Dec 2018 12:12:07 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Tue, 04 Dec 2018 12:12:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Dec 2018 12:12:10 GMT
EXPOSE 2368/tcp
# Tue, 04 Dec 2018 12:12:11 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1afeea1085f7b2f8c5843b5f4cfab6c95444c74532315569e14b7459ea105b`  
		Last Modified: Fri, 16 Nov 2018 20:13:37 GMT  
		Size: 4.2 KB (4185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42739ce341e43f26dc0b14f38202e253774f4c322ebee85ad77d539ea1259e1`  
		Last Modified: Tue, 04 Dec 2018 11:23:57 GMT  
		Size: 27.0 MB (26963900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e73cc53546c556d816a25f199d9fb9d077bd3fae67dbbe5ea8a61302ffa438`  
		Last Modified: Tue, 04 Dec 2018 11:23:36 GMT  
		Size: 1.3 MB (1312722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3277339a1ef69cca91c0224830307d89781aedc903b6307b534827f9ba13e6`  
		Last Modified: Tue, 04 Dec 2018 12:31:21 GMT  
		Size: 470.1 KB (470078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3df051e834ca0dc3cea01be91c7cd9a0a1783e84964890d3adf80b897a3757`  
		Last Modified: Tue, 04 Dec 2018 12:32:03 GMT  
		Size: 17.3 MB (17293239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2896ed5ca550212e7072ecf03245b39b2477420b7101d8422308fa77788f9b1c`  
		Last Modified: Tue, 04 Dec 2018 12:33:25 GMT  
		Size: 89.2 MB (89176179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df9d46b33f4c60f08f757afcc7ab3097826b333cf16522ea4c8e5c0b08312708`  
		Last Modified: Tue, 04 Dec 2018 12:33:22 GMT  
		Size: 99.7 MB (99693403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068fd5d74169cec15bed5cccfd4639803f6266d85f400fa39aafd597b4c56a7e`  
		Last Modified: Tue, 04 Dec 2018 12:31:19 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.6.2` - linux; s390x

```console
$ docker pull ghost@sha256:acc0f3002f32ae224e18b347f3f719e33e561b8f97a85eb56f2b88b2fe60900c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.1 MB (258118060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea3dd6cbf89c42ced40775e295b0dc9f014f39bdbde8e60b091f9e8b138da57d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:39:43 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 13:27:02 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 13:27:28 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 13:27:29 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 13:27:33 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 13:27:34 GMT
CMD ["node"]
# Thu, 29 Nov 2018 12:43:28 GMT
ENV GOSU_VERSION=1.10
# Thu, 29 Nov 2018 12:43:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 29 Nov 2018 12:43:32 GMT
ENV NODE_ENV=production
# Thu, 29 Nov 2018 12:43:32 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 29 Nov 2018 12:43:49 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 29 Nov 2018 12:43:50 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 29 Nov 2018 12:43:50 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 29 Nov 2018 12:43:50 GMT
ENV GHOST_VERSION=2.6.2
# Thu, 29 Nov 2018 12:44:22 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 29 Nov 2018 12:46:08 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 29 Nov 2018 12:46:10 GMT
WORKDIR /var/lib/ghost
# Thu, 29 Nov 2018 12:46:10 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 29 Nov 2018 12:46:10 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Thu, 29 Nov 2018 12:46:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Nov 2018 12:46:11 GMT
EXPOSE 2368/tcp
# Thu, 29 Nov 2018 12:46:11 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:db7aa0264595016e37963ab9cf4e6fbfa7b19d99cb39b16bbb561a02b7b459d2`  
		Last Modified: Thu, 15 Nov 2018 02:03:05 GMT  
		Size: 22.3 MB (22334714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2801c348986bea5725dc642412a1130b6f77f3e4a15d3a5ab8d90b93bb96aad0`  
		Last Modified: Fri, 16 Nov 2018 20:42:10 GMT  
		Size: 4.2 KB (4150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b17408b2e243ccc39821963534cdf5f8eddaac5267dc9f28e635094953ba50`  
		Last Modified: Wed, 28 Nov 2018 14:04:43 GMT  
		Size: 27.8 MB (27836589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf4c04b048513ecc0deb58c3a802087a34607574fc49f8999b5c17cd69756f3`  
		Last Modified: Wed, 28 Nov 2018 14:04:37 GMT  
		Size: 1.3 MB (1310258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1186605b43f3fa11c94b829cac971a55c83362ec7a6cba3a82589ca798af34dc`  
		Last Modified: Thu, 29 Nov 2018 12:49:18 GMT  
		Size: 487.0 KB (487049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e367843ef942554f7ff07591dba68078d4dd1ec55acdb20afa015c666ea8f4d`  
		Last Modified: Thu, 29 Nov 2018 12:49:23 GMT  
		Size: 17.3 MB (17287465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a185605b81d50c4136b372134750ba99512a47e4b8d2562abc9c69c18d662960`  
		Last Modified: Thu, 29 Nov 2018 12:49:37 GMT  
		Size: 89.2 MB (89173596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0b1998d5bac924a56663a9a72adf36f77ba395ff9a151c8da775935739b0fa`  
		Last Modified: Thu, 29 Nov 2018 12:49:39 GMT  
		Size: 99.7 MB (99683680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48606189f73465d12332f0e2c1faa4124e8324fc9c42dd4a1b51720786bf8837`  
		Last Modified: Thu, 29 Nov 2018 12:49:18 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.6.2-alpine`

```console
$ docker pull ghost@sha256:7635938ca976b71a1d536289c65f3a94dd102511f661b10dca652710b22abdc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:2.6.2-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:591038bb2c6f32de3003a2130424c86ce48a160de3fa188bcf5305fa0391e2ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.7 MB (152685376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9e5a15b936374268d0b5d314ec2fc91c389c37a62124ba4af2ab3f8879d8be3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 11:39:13 GMT
ENV NODE_VERSION=8.14.0
# Mon, 03 Dec 2018 21:39:31 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Mon, 03 Dec 2018 21:39:31 GMT
ENV YARN_VERSION=1.12.3
# Mon, 03 Dec 2018 21:39:35 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Mon, 03 Dec 2018 21:39:35 GMT
CMD ["node"]
# Mon, 03 Dec 2018 23:42:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 03 Dec 2018 23:42:03 GMT
RUN apk add --no-cache 		bash
# Mon, 03 Dec 2018 23:42:03 GMT
ENV NODE_ENV=production
# Mon, 03 Dec 2018 23:42:04 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Mon, 03 Dec 2018 23:42:24 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Dec 2018 23:42:24 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Dec 2018 23:42:25 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Dec 2018 23:42:25 GMT
ENV GHOST_VERSION=2.6.2
# Mon, 03 Dec 2018 23:42:59 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Dec 2018 23:43:01 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Dec 2018 23:43:01 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Dec 2018 23:43:01 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Mon, 03 Dec 2018 23:43:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Dec 2018 23:43:02 GMT
EXPOSE 2368/tcp
# Mon, 03 Dec 2018 23:43:02 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ade4f5bae45b5678fab08368d912c93f22e2374f768e856a982f261f0822dbc`  
		Last Modified: Mon, 03 Dec 2018 22:50:36 GMT  
		Size: 18.9 MB (18869555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd1dceaf77f3a20e552ba30e8aa5b37fcf8805b5f85573833da022c23a6604fd`  
		Last Modified: Mon, 03 Dec 2018 22:50:31 GMT  
		Size: 1.3 MB (1319666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853685485e0b8deccb97259912b7f17a78c709a3aecb1cb896d661fca5f10c73`  
		Last Modified: Mon, 03 Dec 2018 23:51:24 GMT  
		Size: 9.4 KB (9397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368c1984e1970203331bad9080ce378135f54a4ad57c2d200507d3fd733c0f4b`  
		Last Modified: Mon, 03 Dec 2018 23:51:25 GMT  
		Size: 1.2 MB (1173429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d855f482ee4802de70fc113e840bb0c7f33197bbd573dc90a70e5d7cd96b0f22`  
		Last Modified: Mon, 03 Dec 2018 23:51:34 GMT  
		Size: 17.3 MB (17291335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b35fb81be987f37a3ebfc4143c865a1fef5b825da10dfe314ba6bdea4a3946`  
		Last Modified: Mon, 03 Dec 2018 23:52:00 GMT  
		Size: 111.8 MB (111814521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799d3b2ea91717133bc7413f0897f2cd544d6e639d9c5570be24f6d8221d8921`  
		Last Modified: Mon, 03 Dec 2018 23:51:23 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.6.2-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:dff64ee12a0faed9620e7a81f41471a1d501b82721a886d228ac77f28212ade1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128901430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67dfc628b7be6f0081d096b5ea7a4e149d3f1a39bc7646d999299c3ab8cef150`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 16:29:37 GMT
ENV NODE_VERSION=8.14.0
# Tue, 04 Dec 2018 08:56:32 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 04 Dec 2018 08:56:33 GMT
ENV YARN_VERSION=1.12.3
# Tue, 04 Dec 2018 08:56:38 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Dec 2018 08:56:39 GMT
CMD ["node"]
# Tue, 04 Dec 2018 09:24:49 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 04 Dec 2018 09:24:52 GMT
RUN apk add --no-cache 		bash
# Tue, 04 Dec 2018 09:24:53 GMT
ENV NODE_ENV=production
# Tue, 04 Dec 2018 09:24:53 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 04 Dec 2018 09:25:35 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 04 Dec 2018 09:25:37 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 04 Dec 2018 09:25:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 04 Dec 2018 09:25:38 GMT
ENV GHOST_VERSION=2.6.2
# Tue, 04 Dec 2018 09:27:13 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 04 Dec 2018 09:27:17 GMT
WORKDIR /var/lib/ghost
# Tue, 04 Dec 2018 09:27:17 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 04 Dec 2018 09:27:17 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Tue, 04 Dec 2018 09:27:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Dec 2018 09:27:18 GMT
EXPOSE 2368/tcp
# Tue, 04 Dec 2018 09:27:18 GMT
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
	-	`sha256:894d68e3bb37cb357743461ffc288dc3167b0f360804fa964cb1ff3a747b532f`  
		Last Modified: Tue, 04 Dec 2018 09:08:09 GMT  
		Size: 17.8 MB (17826878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a3b3c5a363240b0582fbb31416514529694436aec223273bd6986c8825bebc`  
		Last Modified: Tue, 04 Dec 2018 09:08:04 GMT  
		Size: 1.3 MB (1319711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0027a54d65aa80bbb8764554f95d6b9fd424aaba7edc84507b8bee0d4f237cb0`  
		Last Modified: Tue, 04 Dec 2018 09:29:33 GMT  
		Size: 9.3 KB (9333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9171b24b0d8586be8712e61cb17160933543a7d4296773f42cc15d0bbf6c4359`  
		Last Modified: Tue, 04 Dec 2018 09:29:32 GMT  
		Size: 1.1 MB (1127596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be9b7b18d475a276a98b3621fe799327b16a15351901a3c4902ecbccfa2f200`  
		Last Modified: Tue, 04 Dec 2018 09:29:40 GMT  
		Size: 17.3 MB (17295860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7c03a7db7e6d4df9ef57e17f46e673583fdd5f3e59c1df4d97d76202f150ca`  
		Last Modified: Tue, 04 Dec 2018 09:30:11 GMT  
		Size: 89.2 MB (89174880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf3d5f5d2b9d98c0de53b5f476ac23f7ed9569d644350501bd4e8fd375c7c2d`  
		Last Modified: Tue, 04 Dec 2018 09:29:31 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.6.2-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:64a19f0870b1021b8b5787b5f7aff508637c000598112c91d4fa6acf40b6fb10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129825077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e461f6ad94f73ad5586178f66eaeda79fa888c9bbe3c4bab64e6b590d0fd2336`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 16:30:31 GMT
ENV NODE_VERSION=8.14.0
# Tue, 04 Dec 2018 10:47:12 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 04 Dec 2018 10:47:15 GMT
ENV YARN_VERSION=1.12.3
# Tue, 04 Dec 2018 10:47:29 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Dec 2018 10:47:32 GMT
CMD ["node"]
# Tue, 04 Dec 2018 12:12:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 04 Dec 2018 12:12:50 GMT
RUN apk add --no-cache 		bash
# Tue, 04 Dec 2018 12:13:00 GMT
ENV NODE_ENV=production
# Tue, 04 Dec 2018 12:13:04 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 04 Dec 2018 12:14:01 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 04 Dec 2018 12:14:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 04 Dec 2018 12:14:08 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 04 Dec 2018 12:14:13 GMT
ENV GHOST_VERSION=2.6.2
# Tue, 04 Dec 2018 12:16:41 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 04 Dec 2018 12:17:32 GMT
WORKDIR /var/lib/ghost
# Tue, 04 Dec 2018 12:17:34 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 04 Dec 2018 12:17:36 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Tue, 04 Dec 2018 12:17:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Dec 2018 12:17:38 GMT
EXPOSE 2368/tcp
# Tue, 04 Dec 2018 12:17:39 GMT
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
	-	`sha256:2ba36ac455767381bba38455ce88713153037b3580b29103615675c6e75251e2`  
		Last Modified: Tue, 04 Dec 2018 11:19:41 GMT  
		Size: 18.6 MB (18643492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a3c154921196337927cf1295c00a75a854d3a10f8949055d5b1f8838759a9a`  
		Last Modified: Tue, 04 Dec 2018 11:19:30 GMT  
		Size: 1.3 MB (1319676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05cf9a9ad04c4b25da5029b58cc0a318c5235f5bc1e88cb9f6830e0d1acc6624`  
		Last Modified: Tue, 04 Dec 2018 12:37:58 GMT  
		Size: 9.8 KB (9850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c913b7ed1155b8eb8bf22c30c46eb4ad2ff386fc63d6e69f8f9638521ff88b5`  
		Last Modified: Tue, 04 Dec 2018 12:38:01 GMT  
		Size: 1.2 MB (1188815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a902d76e84b9baf29cce1677a2d1aaaacc3a4e5daf0426c83489ba2734c649a`  
		Last Modified: Tue, 04 Dec 2018 12:38:38 GMT  
		Size: 17.3 MB (17292772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40fa452fd1b8f3d50408059ab5bea895982d15eba11ebb9098eabd1753a6741`  
		Last Modified: Tue, 04 Dec 2018 12:39:31 GMT  
		Size: 89.2 MB (89174523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511374a39b2472150e8be048a7a279995925dcf41e518021e2f86074e598f3e6`  
		Last Modified: Tue, 04 Dec 2018 12:37:55 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.6-alpine`

```console
$ docker pull ghost@sha256:7635938ca976b71a1d536289c65f3a94dd102511f661b10dca652710b22abdc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:2.6-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:591038bb2c6f32de3003a2130424c86ce48a160de3fa188bcf5305fa0391e2ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.7 MB (152685376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9e5a15b936374268d0b5d314ec2fc91c389c37a62124ba4af2ab3f8879d8be3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 11:39:13 GMT
ENV NODE_VERSION=8.14.0
# Mon, 03 Dec 2018 21:39:31 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Mon, 03 Dec 2018 21:39:31 GMT
ENV YARN_VERSION=1.12.3
# Mon, 03 Dec 2018 21:39:35 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Mon, 03 Dec 2018 21:39:35 GMT
CMD ["node"]
# Mon, 03 Dec 2018 23:42:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 03 Dec 2018 23:42:03 GMT
RUN apk add --no-cache 		bash
# Mon, 03 Dec 2018 23:42:03 GMT
ENV NODE_ENV=production
# Mon, 03 Dec 2018 23:42:04 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Mon, 03 Dec 2018 23:42:24 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Dec 2018 23:42:24 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Dec 2018 23:42:25 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Dec 2018 23:42:25 GMT
ENV GHOST_VERSION=2.6.2
# Mon, 03 Dec 2018 23:42:59 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Dec 2018 23:43:01 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Dec 2018 23:43:01 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Dec 2018 23:43:01 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Mon, 03 Dec 2018 23:43:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Dec 2018 23:43:02 GMT
EXPOSE 2368/tcp
# Mon, 03 Dec 2018 23:43:02 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ade4f5bae45b5678fab08368d912c93f22e2374f768e856a982f261f0822dbc`  
		Last Modified: Mon, 03 Dec 2018 22:50:36 GMT  
		Size: 18.9 MB (18869555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd1dceaf77f3a20e552ba30e8aa5b37fcf8805b5f85573833da022c23a6604fd`  
		Last Modified: Mon, 03 Dec 2018 22:50:31 GMT  
		Size: 1.3 MB (1319666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853685485e0b8deccb97259912b7f17a78c709a3aecb1cb896d661fca5f10c73`  
		Last Modified: Mon, 03 Dec 2018 23:51:24 GMT  
		Size: 9.4 KB (9397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368c1984e1970203331bad9080ce378135f54a4ad57c2d200507d3fd733c0f4b`  
		Last Modified: Mon, 03 Dec 2018 23:51:25 GMT  
		Size: 1.2 MB (1173429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d855f482ee4802de70fc113e840bb0c7f33197bbd573dc90a70e5d7cd96b0f22`  
		Last Modified: Mon, 03 Dec 2018 23:51:34 GMT  
		Size: 17.3 MB (17291335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b35fb81be987f37a3ebfc4143c865a1fef5b825da10dfe314ba6bdea4a3946`  
		Last Modified: Mon, 03 Dec 2018 23:52:00 GMT  
		Size: 111.8 MB (111814521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799d3b2ea91717133bc7413f0897f2cd544d6e639d9c5570be24f6d8221d8921`  
		Last Modified: Mon, 03 Dec 2018 23:51:23 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.6-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:dff64ee12a0faed9620e7a81f41471a1d501b82721a886d228ac77f28212ade1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128901430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67dfc628b7be6f0081d096b5ea7a4e149d3f1a39bc7646d999299c3ab8cef150`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 16:29:37 GMT
ENV NODE_VERSION=8.14.0
# Tue, 04 Dec 2018 08:56:32 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 04 Dec 2018 08:56:33 GMT
ENV YARN_VERSION=1.12.3
# Tue, 04 Dec 2018 08:56:38 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Dec 2018 08:56:39 GMT
CMD ["node"]
# Tue, 04 Dec 2018 09:24:49 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 04 Dec 2018 09:24:52 GMT
RUN apk add --no-cache 		bash
# Tue, 04 Dec 2018 09:24:53 GMT
ENV NODE_ENV=production
# Tue, 04 Dec 2018 09:24:53 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 04 Dec 2018 09:25:35 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 04 Dec 2018 09:25:37 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 04 Dec 2018 09:25:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 04 Dec 2018 09:25:38 GMT
ENV GHOST_VERSION=2.6.2
# Tue, 04 Dec 2018 09:27:13 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 04 Dec 2018 09:27:17 GMT
WORKDIR /var/lib/ghost
# Tue, 04 Dec 2018 09:27:17 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 04 Dec 2018 09:27:17 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Tue, 04 Dec 2018 09:27:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Dec 2018 09:27:18 GMT
EXPOSE 2368/tcp
# Tue, 04 Dec 2018 09:27:18 GMT
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
	-	`sha256:894d68e3bb37cb357743461ffc288dc3167b0f360804fa964cb1ff3a747b532f`  
		Last Modified: Tue, 04 Dec 2018 09:08:09 GMT  
		Size: 17.8 MB (17826878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a3b3c5a363240b0582fbb31416514529694436aec223273bd6986c8825bebc`  
		Last Modified: Tue, 04 Dec 2018 09:08:04 GMT  
		Size: 1.3 MB (1319711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0027a54d65aa80bbb8764554f95d6b9fd424aaba7edc84507b8bee0d4f237cb0`  
		Last Modified: Tue, 04 Dec 2018 09:29:33 GMT  
		Size: 9.3 KB (9333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9171b24b0d8586be8712e61cb17160933543a7d4296773f42cc15d0bbf6c4359`  
		Last Modified: Tue, 04 Dec 2018 09:29:32 GMT  
		Size: 1.1 MB (1127596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be9b7b18d475a276a98b3621fe799327b16a15351901a3c4902ecbccfa2f200`  
		Last Modified: Tue, 04 Dec 2018 09:29:40 GMT  
		Size: 17.3 MB (17295860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7c03a7db7e6d4df9ef57e17f46e673583fdd5f3e59c1df4d97d76202f150ca`  
		Last Modified: Tue, 04 Dec 2018 09:30:11 GMT  
		Size: 89.2 MB (89174880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf3d5f5d2b9d98c0de53b5f476ac23f7ed9569d644350501bd4e8fd375c7c2d`  
		Last Modified: Tue, 04 Dec 2018 09:29:31 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.6-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:64a19f0870b1021b8b5787b5f7aff508637c000598112c91d4fa6acf40b6fb10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129825077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e461f6ad94f73ad5586178f66eaeda79fa888c9bbe3c4bab64e6b590d0fd2336`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 16:30:31 GMT
ENV NODE_VERSION=8.14.0
# Tue, 04 Dec 2018 10:47:12 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 04 Dec 2018 10:47:15 GMT
ENV YARN_VERSION=1.12.3
# Tue, 04 Dec 2018 10:47:29 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Dec 2018 10:47:32 GMT
CMD ["node"]
# Tue, 04 Dec 2018 12:12:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 04 Dec 2018 12:12:50 GMT
RUN apk add --no-cache 		bash
# Tue, 04 Dec 2018 12:13:00 GMT
ENV NODE_ENV=production
# Tue, 04 Dec 2018 12:13:04 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 04 Dec 2018 12:14:01 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 04 Dec 2018 12:14:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 04 Dec 2018 12:14:08 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 04 Dec 2018 12:14:13 GMT
ENV GHOST_VERSION=2.6.2
# Tue, 04 Dec 2018 12:16:41 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 04 Dec 2018 12:17:32 GMT
WORKDIR /var/lib/ghost
# Tue, 04 Dec 2018 12:17:34 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 04 Dec 2018 12:17:36 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Tue, 04 Dec 2018 12:17:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Dec 2018 12:17:38 GMT
EXPOSE 2368/tcp
# Tue, 04 Dec 2018 12:17:39 GMT
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
	-	`sha256:2ba36ac455767381bba38455ce88713153037b3580b29103615675c6e75251e2`  
		Last Modified: Tue, 04 Dec 2018 11:19:41 GMT  
		Size: 18.6 MB (18643492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a3c154921196337927cf1295c00a75a854d3a10f8949055d5b1f8838759a9a`  
		Last Modified: Tue, 04 Dec 2018 11:19:30 GMT  
		Size: 1.3 MB (1319676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05cf9a9ad04c4b25da5029b58cc0a318c5235f5bc1e88cb9f6830e0d1acc6624`  
		Last Modified: Tue, 04 Dec 2018 12:37:58 GMT  
		Size: 9.8 KB (9850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c913b7ed1155b8eb8bf22c30c46eb4ad2ff386fc63d6e69f8f9638521ff88b5`  
		Last Modified: Tue, 04 Dec 2018 12:38:01 GMT  
		Size: 1.2 MB (1188815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a902d76e84b9baf29cce1677a2d1aaaacc3a4e5daf0426c83489ba2734c649a`  
		Last Modified: Tue, 04 Dec 2018 12:38:38 GMT  
		Size: 17.3 MB (17292772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40fa452fd1b8f3d50408059ab5bea895982d15eba11ebb9098eabd1753a6741`  
		Last Modified: Tue, 04 Dec 2018 12:39:31 GMT  
		Size: 89.2 MB (89174523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511374a39b2472150e8be048a7a279995925dcf41e518021e2f86074e598f3e6`  
		Last Modified: Tue, 04 Dec 2018 12:37:55 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2-alpine`

```console
$ docker pull ghost@sha256:7635938ca976b71a1d536289c65f3a94dd102511f661b10dca652710b22abdc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:2-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:591038bb2c6f32de3003a2130424c86ce48a160de3fa188bcf5305fa0391e2ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.7 MB (152685376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9e5a15b936374268d0b5d314ec2fc91c389c37a62124ba4af2ab3f8879d8be3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 11:39:13 GMT
ENV NODE_VERSION=8.14.0
# Mon, 03 Dec 2018 21:39:31 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Mon, 03 Dec 2018 21:39:31 GMT
ENV YARN_VERSION=1.12.3
# Mon, 03 Dec 2018 21:39:35 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Mon, 03 Dec 2018 21:39:35 GMT
CMD ["node"]
# Mon, 03 Dec 2018 23:42:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 03 Dec 2018 23:42:03 GMT
RUN apk add --no-cache 		bash
# Mon, 03 Dec 2018 23:42:03 GMT
ENV NODE_ENV=production
# Mon, 03 Dec 2018 23:42:04 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Mon, 03 Dec 2018 23:42:24 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Dec 2018 23:42:24 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Dec 2018 23:42:25 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Dec 2018 23:42:25 GMT
ENV GHOST_VERSION=2.6.2
# Mon, 03 Dec 2018 23:42:59 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Dec 2018 23:43:01 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Dec 2018 23:43:01 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Dec 2018 23:43:01 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Mon, 03 Dec 2018 23:43:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Dec 2018 23:43:02 GMT
EXPOSE 2368/tcp
# Mon, 03 Dec 2018 23:43:02 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ade4f5bae45b5678fab08368d912c93f22e2374f768e856a982f261f0822dbc`  
		Last Modified: Mon, 03 Dec 2018 22:50:36 GMT  
		Size: 18.9 MB (18869555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd1dceaf77f3a20e552ba30e8aa5b37fcf8805b5f85573833da022c23a6604fd`  
		Last Modified: Mon, 03 Dec 2018 22:50:31 GMT  
		Size: 1.3 MB (1319666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853685485e0b8deccb97259912b7f17a78c709a3aecb1cb896d661fca5f10c73`  
		Last Modified: Mon, 03 Dec 2018 23:51:24 GMT  
		Size: 9.4 KB (9397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368c1984e1970203331bad9080ce378135f54a4ad57c2d200507d3fd733c0f4b`  
		Last Modified: Mon, 03 Dec 2018 23:51:25 GMT  
		Size: 1.2 MB (1173429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d855f482ee4802de70fc113e840bb0c7f33197bbd573dc90a70e5d7cd96b0f22`  
		Last Modified: Mon, 03 Dec 2018 23:51:34 GMT  
		Size: 17.3 MB (17291335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b35fb81be987f37a3ebfc4143c865a1fef5b825da10dfe314ba6bdea4a3946`  
		Last Modified: Mon, 03 Dec 2018 23:52:00 GMT  
		Size: 111.8 MB (111814521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799d3b2ea91717133bc7413f0897f2cd544d6e639d9c5570be24f6d8221d8921`  
		Last Modified: Mon, 03 Dec 2018 23:51:23 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:dff64ee12a0faed9620e7a81f41471a1d501b82721a886d228ac77f28212ade1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128901430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67dfc628b7be6f0081d096b5ea7a4e149d3f1a39bc7646d999299c3ab8cef150`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 16:29:37 GMT
ENV NODE_VERSION=8.14.0
# Tue, 04 Dec 2018 08:56:32 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 04 Dec 2018 08:56:33 GMT
ENV YARN_VERSION=1.12.3
# Tue, 04 Dec 2018 08:56:38 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Dec 2018 08:56:39 GMT
CMD ["node"]
# Tue, 04 Dec 2018 09:24:49 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 04 Dec 2018 09:24:52 GMT
RUN apk add --no-cache 		bash
# Tue, 04 Dec 2018 09:24:53 GMT
ENV NODE_ENV=production
# Tue, 04 Dec 2018 09:24:53 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 04 Dec 2018 09:25:35 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 04 Dec 2018 09:25:37 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 04 Dec 2018 09:25:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 04 Dec 2018 09:25:38 GMT
ENV GHOST_VERSION=2.6.2
# Tue, 04 Dec 2018 09:27:13 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 04 Dec 2018 09:27:17 GMT
WORKDIR /var/lib/ghost
# Tue, 04 Dec 2018 09:27:17 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 04 Dec 2018 09:27:17 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Tue, 04 Dec 2018 09:27:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Dec 2018 09:27:18 GMT
EXPOSE 2368/tcp
# Tue, 04 Dec 2018 09:27:18 GMT
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
	-	`sha256:894d68e3bb37cb357743461ffc288dc3167b0f360804fa964cb1ff3a747b532f`  
		Last Modified: Tue, 04 Dec 2018 09:08:09 GMT  
		Size: 17.8 MB (17826878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a3b3c5a363240b0582fbb31416514529694436aec223273bd6986c8825bebc`  
		Last Modified: Tue, 04 Dec 2018 09:08:04 GMT  
		Size: 1.3 MB (1319711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0027a54d65aa80bbb8764554f95d6b9fd424aaba7edc84507b8bee0d4f237cb0`  
		Last Modified: Tue, 04 Dec 2018 09:29:33 GMT  
		Size: 9.3 KB (9333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9171b24b0d8586be8712e61cb17160933543a7d4296773f42cc15d0bbf6c4359`  
		Last Modified: Tue, 04 Dec 2018 09:29:32 GMT  
		Size: 1.1 MB (1127596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be9b7b18d475a276a98b3621fe799327b16a15351901a3c4902ecbccfa2f200`  
		Last Modified: Tue, 04 Dec 2018 09:29:40 GMT  
		Size: 17.3 MB (17295860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7c03a7db7e6d4df9ef57e17f46e673583fdd5f3e59c1df4d97d76202f150ca`  
		Last Modified: Tue, 04 Dec 2018 09:30:11 GMT  
		Size: 89.2 MB (89174880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf3d5f5d2b9d98c0de53b5f476ac23f7ed9569d644350501bd4e8fd375c7c2d`  
		Last Modified: Tue, 04 Dec 2018 09:29:31 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:64a19f0870b1021b8b5787b5f7aff508637c000598112c91d4fa6acf40b6fb10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129825077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e461f6ad94f73ad5586178f66eaeda79fa888c9bbe3c4bab64e6b590d0fd2336`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 16:30:31 GMT
ENV NODE_VERSION=8.14.0
# Tue, 04 Dec 2018 10:47:12 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 04 Dec 2018 10:47:15 GMT
ENV YARN_VERSION=1.12.3
# Tue, 04 Dec 2018 10:47:29 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Dec 2018 10:47:32 GMT
CMD ["node"]
# Tue, 04 Dec 2018 12:12:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 04 Dec 2018 12:12:50 GMT
RUN apk add --no-cache 		bash
# Tue, 04 Dec 2018 12:13:00 GMT
ENV NODE_ENV=production
# Tue, 04 Dec 2018 12:13:04 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 04 Dec 2018 12:14:01 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 04 Dec 2018 12:14:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 04 Dec 2018 12:14:08 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 04 Dec 2018 12:14:13 GMT
ENV GHOST_VERSION=2.6.2
# Tue, 04 Dec 2018 12:16:41 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 04 Dec 2018 12:17:32 GMT
WORKDIR /var/lib/ghost
# Tue, 04 Dec 2018 12:17:34 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 04 Dec 2018 12:17:36 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Tue, 04 Dec 2018 12:17:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Dec 2018 12:17:38 GMT
EXPOSE 2368/tcp
# Tue, 04 Dec 2018 12:17:39 GMT
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
	-	`sha256:2ba36ac455767381bba38455ce88713153037b3580b29103615675c6e75251e2`  
		Last Modified: Tue, 04 Dec 2018 11:19:41 GMT  
		Size: 18.6 MB (18643492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a3c154921196337927cf1295c00a75a854d3a10f8949055d5b1f8838759a9a`  
		Last Modified: Tue, 04 Dec 2018 11:19:30 GMT  
		Size: 1.3 MB (1319676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05cf9a9ad04c4b25da5029b58cc0a318c5235f5bc1e88cb9f6830e0d1acc6624`  
		Last Modified: Tue, 04 Dec 2018 12:37:58 GMT  
		Size: 9.8 KB (9850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c913b7ed1155b8eb8bf22c30c46eb4ad2ff386fc63d6e69f8f9638521ff88b5`  
		Last Modified: Tue, 04 Dec 2018 12:38:01 GMT  
		Size: 1.2 MB (1188815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a902d76e84b9baf29cce1677a2d1aaaacc3a4e5daf0426c83489ba2734c649a`  
		Last Modified: Tue, 04 Dec 2018 12:38:38 GMT  
		Size: 17.3 MB (17292772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40fa452fd1b8f3d50408059ab5bea895982d15eba11ebb9098eabd1753a6741`  
		Last Modified: Tue, 04 Dec 2018 12:39:31 GMT  
		Size: 89.2 MB (89174523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511374a39b2472150e8be048a7a279995925dcf41e518021e2f86074e598f3e6`  
		Last Modified: Tue, 04 Dec 2018 12:37:55 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:7635938ca976b71a1d536289c65f3a94dd102511f661b10dca652710b22abdc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:591038bb2c6f32de3003a2130424c86ce48a160de3fa188bcf5305fa0391e2ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.7 MB (152685376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9e5a15b936374268d0b5d314ec2fc91c389c37a62124ba4af2ab3f8879d8be3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 11:39:13 GMT
ENV NODE_VERSION=8.14.0
# Mon, 03 Dec 2018 21:39:31 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Mon, 03 Dec 2018 21:39:31 GMT
ENV YARN_VERSION=1.12.3
# Mon, 03 Dec 2018 21:39:35 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Mon, 03 Dec 2018 21:39:35 GMT
CMD ["node"]
# Mon, 03 Dec 2018 23:42:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 03 Dec 2018 23:42:03 GMT
RUN apk add --no-cache 		bash
# Mon, 03 Dec 2018 23:42:03 GMT
ENV NODE_ENV=production
# Mon, 03 Dec 2018 23:42:04 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Mon, 03 Dec 2018 23:42:24 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Dec 2018 23:42:24 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Dec 2018 23:42:25 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Dec 2018 23:42:25 GMT
ENV GHOST_VERSION=2.6.2
# Mon, 03 Dec 2018 23:42:59 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Dec 2018 23:43:01 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Dec 2018 23:43:01 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Dec 2018 23:43:01 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Mon, 03 Dec 2018 23:43:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Dec 2018 23:43:02 GMT
EXPOSE 2368/tcp
# Mon, 03 Dec 2018 23:43:02 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ade4f5bae45b5678fab08368d912c93f22e2374f768e856a982f261f0822dbc`  
		Last Modified: Mon, 03 Dec 2018 22:50:36 GMT  
		Size: 18.9 MB (18869555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd1dceaf77f3a20e552ba30e8aa5b37fcf8805b5f85573833da022c23a6604fd`  
		Last Modified: Mon, 03 Dec 2018 22:50:31 GMT  
		Size: 1.3 MB (1319666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853685485e0b8deccb97259912b7f17a78c709a3aecb1cb896d661fca5f10c73`  
		Last Modified: Mon, 03 Dec 2018 23:51:24 GMT  
		Size: 9.4 KB (9397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368c1984e1970203331bad9080ce378135f54a4ad57c2d200507d3fd733c0f4b`  
		Last Modified: Mon, 03 Dec 2018 23:51:25 GMT  
		Size: 1.2 MB (1173429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d855f482ee4802de70fc113e840bb0c7f33197bbd573dc90a70e5d7cd96b0f22`  
		Last Modified: Mon, 03 Dec 2018 23:51:34 GMT  
		Size: 17.3 MB (17291335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b35fb81be987f37a3ebfc4143c865a1fef5b825da10dfe314ba6bdea4a3946`  
		Last Modified: Mon, 03 Dec 2018 23:52:00 GMT  
		Size: 111.8 MB (111814521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799d3b2ea91717133bc7413f0897f2cd544d6e639d9c5570be24f6d8221d8921`  
		Last Modified: Mon, 03 Dec 2018 23:51:23 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:dff64ee12a0faed9620e7a81f41471a1d501b82721a886d228ac77f28212ade1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128901430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67dfc628b7be6f0081d096b5ea7a4e149d3f1a39bc7646d999299c3ab8cef150`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 16:29:37 GMT
ENV NODE_VERSION=8.14.0
# Tue, 04 Dec 2018 08:56:32 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 04 Dec 2018 08:56:33 GMT
ENV YARN_VERSION=1.12.3
# Tue, 04 Dec 2018 08:56:38 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Dec 2018 08:56:39 GMT
CMD ["node"]
# Tue, 04 Dec 2018 09:24:49 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 04 Dec 2018 09:24:52 GMT
RUN apk add --no-cache 		bash
# Tue, 04 Dec 2018 09:24:53 GMT
ENV NODE_ENV=production
# Tue, 04 Dec 2018 09:24:53 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 04 Dec 2018 09:25:35 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 04 Dec 2018 09:25:37 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 04 Dec 2018 09:25:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 04 Dec 2018 09:25:38 GMT
ENV GHOST_VERSION=2.6.2
# Tue, 04 Dec 2018 09:27:13 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 04 Dec 2018 09:27:17 GMT
WORKDIR /var/lib/ghost
# Tue, 04 Dec 2018 09:27:17 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 04 Dec 2018 09:27:17 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Tue, 04 Dec 2018 09:27:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Dec 2018 09:27:18 GMT
EXPOSE 2368/tcp
# Tue, 04 Dec 2018 09:27:18 GMT
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
	-	`sha256:894d68e3bb37cb357743461ffc288dc3167b0f360804fa964cb1ff3a747b532f`  
		Last Modified: Tue, 04 Dec 2018 09:08:09 GMT  
		Size: 17.8 MB (17826878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a3b3c5a363240b0582fbb31416514529694436aec223273bd6986c8825bebc`  
		Last Modified: Tue, 04 Dec 2018 09:08:04 GMT  
		Size: 1.3 MB (1319711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0027a54d65aa80bbb8764554f95d6b9fd424aaba7edc84507b8bee0d4f237cb0`  
		Last Modified: Tue, 04 Dec 2018 09:29:33 GMT  
		Size: 9.3 KB (9333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9171b24b0d8586be8712e61cb17160933543a7d4296773f42cc15d0bbf6c4359`  
		Last Modified: Tue, 04 Dec 2018 09:29:32 GMT  
		Size: 1.1 MB (1127596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be9b7b18d475a276a98b3621fe799327b16a15351901a3c4902ecbccfa2f200`  
		Last Modified: Tue, 04 Dec 2018 09:29:40 GMT  
		Size: 17.3 MB (17295860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7c03a7db7e6d4df9ef57e17f46e673583fdd5f3e59c1df4d97d76202f150ca`  
		Last Modified: Tue, 04 Dec 2018 09:30:11 GMT  
		Size: 89.2 MB (89174880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf3d5f5d2b9d98c0de53b5f476ac23f7ed9569d644350501bd4e8fd375c7c2d`  
		Last Modified: Tue, 04 Dec 2018 09:29:31 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:64a19f0870b1021b8b5787b5f7aff508637c000598112c91d4fa6acf40b6fb10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129825077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e461f6ad94f73ad5586178f66eaeda79fa888c9bbe3c4bab64e6b590d0fd2336`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 16:30:31 GMT
ENV NODE_VERSION=8.14.0
# Tue, 04 Dec 2018 10:47:12 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 04 Dec 2018 10:47:15 GMT
ENV YARN_VERSION=1.12.3
# Tue, 04 Dec 2018 10:47:29 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 04 Dec 2018 10:47:32 GMT
CMD ["node"]
# Tue, 04 Dec 2018 12:12:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 04 Dec 2018 12:12:50 GMT
RUN apk add --no-cache 		bash
# Tue, 04 Dec 2018 12:13:00 GMT
ENV NODE_ENV=production
# Tue, 04 Dec 2018 12:13:04 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 04 Dec 2018 12:14:01 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 04 Dec 2018 12:14:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 04 Dec 2018 12:14:08 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 04 Dec 2018 12:14:13 GMT
ENV GHOST_VERSION=2.6.2
# Tue, 04 Dec 2018 12:16:41 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 04 Dec 2018 12:17:32 GMT
WORKDIR /var/lib/ghost
# Tue, 04 Dec 2018 12:17:34 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 04 Dec 2018 12:17:36 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Tue, 04 Dec 2018 12:17:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Dec 2018 12:17:38 GMT
EXPOSE 2368/tcp
# Tue, 04 Dec 2018 12:17:39 GMT
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
	-	`sha256:2ba36ac455767381bba38455ce88713153037b3580b29103615675c6e75251e2`  
		Last Modified: Tue, 04 Dec 2018 11:19:41 GMT  
		Size: 18.6 MB (18643492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a3c154921196337927cf1295c00a75a854d3a10f8949055d5b1f8838759a9a`  
		Last Modified: Tue, 04 Dec 2018 11:19:30 GMT  
		Size: 1.3 MB (1319676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05cf9a9ad04c4b25da5029b58cc0a318c5235f5bc1e88cb9f6830e0d1acc6624`  
		Last Modified: Tue, 04 Dec 2018 12:37:58 GMT  
		Size: 9.8 KB (9850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c913b7ed1155b8eb8bf22c30c46eb4ad2ff386fc63d6e69f8f9638521ff88b5`  
		Last Modified: Tue, 04 Dec 2018 12:38:01 GMT  
		Size: 1.2 MB (1188815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a902d76e84b9baf29cce1677a2d1aaaacc3a4e5daf0426c83489ba2734c649a`  
		Last Modified: Tue, 04 Dec 2018 12:38:38 GMT  
		Size: 17.3 MB (17292772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40fa452fd1b8f3d50408059ab5bea895982d15eba11ebb9098eabd1753a6741`  
		Last Modified: Tue, 04 Dec 2018 12:39:31 GMT  
		Size: 89.2 MB (89174523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511374a39b2472150e8be048a7a279995925dcf41e518021e2f86074e598f3e6`  
		Last Modified: Tue, 04 Dec 2018 12:37:55 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:4c108905b74381f199bb19b43ebeab9ac6d2439041576549ad11e175a98947d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:latest` - linux; amd64

```console
$ docker pull ghost@sha256:0e718f0f46f76f89e29e0f95267c334faa4cd0f9ce93032f920e1b2321c85a1c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272588345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8862b4a50e1749131868104d3f3f8e3f383a11914799825695392c8a78257e0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:07:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 12:09:09 GMT
ENV NODE_VERSION=8.14.0
# Mon, 03 Dec 2018 21:41:03 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Mon, 03 Dec 2018 21:41:03 GMT
ENV YARN_VERSION=1.12.3
# Mon, 03 Dec 2018 21:41:08 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Mon, 03 Dec 2018 21:41:08 GMT
CMD ["node"]
# Mon, 03 Dec 2018 23:39:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 03 Dec 2018 23:39:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 03 Dec 2018 23:39:31 GMT
ENV NODE_ENV=production
# Mon, 03 Dec 2018 23:39:32 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Mon, 03 Dec 2018 23:39:55 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Mon, 03 Dec 2018 23:40:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 03 Dec 2018 23:40:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 03 Dec 2018 23:40:10 GMT
ENV GHOST_VERSION=2.6.2
# Mon, 03 Dec 2018 23:40:48 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 03 Dec 2018 23:41:28 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 03 Dec 2018 23:41:29 GMT
WORKDIR /var/lib/ghost
# Mon, 03 Dec 2018 23:41:30 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 03 Dec 2018 23:41:30 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Mon, 03 Dec 2018 23:41:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Dec 2018 23:41:31 GMT
EXPOSE 2368/tcp
# Mon, 03 Dec 2018 23:41:31 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd77ab8da06679825549b88b99b2e9277d0f548bcbe631450a3be48408c8256`  
		Last Modified: Fri, 16 Nov 2018 14:28:00 GMT  
		Size: 4.1 KB (4149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f41ceffa9f20448582f818d80ad0ede610910ab85fbe149185348d0957e703`  
		Last Modified: Mon, 03 Dec 2018 22:53:57 GMT  
		Size: 28.0 MB (28009081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0780bb3d463704547a0e4065170553863f19f31d85108e29fd1a1450225097fd`  
		Last Modified: Mon, 03 Dec 2018 22:53:50 GMT  
		Size: 1.3 MB (1312712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:551fe63f1f02b08e3616a2256a55c721f7496fd47d5fa45f6caece9359947db7`  
		Last Modified: Mon, 03 Dec 2018 23:49:43 GMT  
		Size: 500.9 KB (500920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6968d4fce38e9918cb101fd9b3dacad8685254d831f0bc0e196049546c436ce8`  
		Last Modified: Mon, 03 Dec 2018 23:49:53 GMT  
		Size: 17.3 MB (17291868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3a7a1186734d0dc717c452eb458e061863504a375c1dd5727d6344663b873f`  
		Last Modified: Mon, 03 Dec 2018 23:50:18 GMT  
		Size: 110.9 MB (110901921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557e7c2e7a0f6b2dc326d258f7e6c362ec9af36bc3bb5215e7183c935052945f`  
		Last Modified: Mon, 03 Dec 2018 23:50:19 GMT  
		Size: 92.1 MB (92080860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b63c87000faa040f3a43535cb450ce199fbe227aa668f2422cda7d169bcb49`  
		Last Modified: Mon, 03 Dec 2018 23:49:42 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm variant v7

```console
$ docker pull ghost@sha256:11bd5509d2a4ba2a45754416912dbbb471f2fba307e22ced280434085f115bef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.1 MB (267144912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a496c2dc7ddacd230eeba2e539bd9172cf95be6a1b863b8c2d8cdb2e35a4723`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:54:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 12:57:59 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 12:58:25 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 12:58:29 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 12:58:33 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 12:58:35 GMT
CMD ["node"]
# Wed, 28 Nov 2018 13:30:48 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Nov 2018 13:30:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Nov 2018 13:30:52 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 13:30:52 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 13:31:36 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 13:31:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 13:31:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 29 Nov 2018 12:57:37 GMT
ENV GHOST_VERSION=2.6.2
# Thu, 29 Nov 2018 12:59:23 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 29 Nov 2018 13:03:50 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 29 Nov 2018 13:03:55 GMT
WORKDIR /var/lib/ghost
# Thu, 29 Nov 2018 13:03:59 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 29 Nov 2018 13:04:00 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Thu, 29 Nov 2018 13:04:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Nov 2018 13:04:01 GMT
EXPOSE 2368/tcp
# Thu, 29 Nov 2018 13:04:01 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d593375e3e016efae3c2913bf9ec6a773d4d78912648d30765dc4d4b0a756a`  
		Last Modified: Fri, 16 Nov 2018 19:05:29 GMT  
		Size: 4.2 KB (4165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e20b4917aedccd552ac0cc78ed1e2104a3ca607c031ee2e99c8f5b3006d9ee`  
		Last Modified: Wed, 28 Nov 2018 13:06:18 GMT  
		Size: 25.5 MB (25452579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea0f8ab58b1fe09c50d6ec85b311a3723e8bee5dfa0f0fbff1fbf023c2f3cb2b`  
		Last Modified: Wed, 28 Nov 2018 13:06:10 GMT  
		Size: 1.3 MB (1310263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197be4c6f21e6ff0c9ac568b984e747b6da0ea3dd03188b575e82ee9cca33498`  
		Last Modified: Wed, 28 Nov 2018 13:50:41 GMT  
		Size: 475.4 KB (475434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb86a9a688bc50dadda629fcab35175ba4427f1797cebb1233534f7fbbb869b6`  
		Last Modified: Wed, 28 Nov 2018 13:50:50 GMT  
		Size: 17.3 MB (17292266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b0829cd544774dff0d4dfab70643f00a70080ec33c7a1039444af49d85a0a5f`  
		Last Modified: Thu, 29 Nov 2018 13:12:29 GMT  
		Size: 96.1 MB (96068826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2ef3a64ca44358fdc3d30ec8e6d6e3737f459bc47e1eba6b742a5fef7de8a39`  
		Last Modified: Thu, 29 Nov 2018 13:12:33 GMT  
		Size: 107.3 MB (107270763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc45c96421416408fd1ff56de227028254074fb04587a6f0f3ce848a7242845`  
		Last Modified: Thu, 29 Nov 2018 13:11:48 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:7982954e3e7bad2b86d51f69e0ed9acef744bad1548282b8fe91ab3db26cdce8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.8 MB (267806058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97c607498e368da8555cf0eb05e31f7fa83b503038079026c60d1545e84d67d6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 03:05:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 16:55:37 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 16:56:35 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 16:56:36 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 16:56:42 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 16:56:43 GMT
CMD ["node"]
# Thu, 29 Nov 2018 09:43:31 GMT
ENV GOSU_VERSION=1.10
# Thu, 29 Nov 2018 09:43:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 29 Nov 2018 09:43:37 GMT
ENV NODE_ENV=production
# Thu, 29 Nov 2018 09:43:38 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 29 Nov 2018 09:44:13 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 29 Nov 2018 09:44:14 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 29 Nov 2018 09:44:15 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 29 Nov 2018 09:44:16 GMT
ENV GHOST_VERSION=2.6.2
# Thu, 29 Nov 2018 09:45:34 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 29 Nov 2018 09:50:50 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 29 Nov 2018 09:50:57 GMT
WORKDIR /var/lib/ghost
# Thu, 29 Nov 2018 09:50:57 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 29 Nov 2018 09:50:58 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Thu, 29 Nov 2018 09:50:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Nov 2018 09:51:00 GMT
EXPOSE 2368/tcp
# Thu, 29 Nov 2018 09:51:00 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4fc0c5fe73c64e6243ea741f24b5591b828ed247c4f9aefad5813804a12c18a`  
		Last Modified: Sat, 17 Nov 2018 03:10:34 GMT  
		Size: 4.2 KB (4167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195106867279a5ea2805300ddff9e0a5baaa5514d73dbd992ca0961a30dcdcd2`  
		Last Modified: Wed, 28 Nov 2018 18:03:22 GMT  
		Size: 26.7 MB (26679215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1e147cbe8fb30957c06a70aafd9c1d19022dd751001f50be91d07f63877b7c`  
		Last Modified: Wed, 28 Nov 2018 18:03:11 GMT  
		Size: 1.3 MB (1310264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7eac4afa60ee78744955d5914636728db7c19a7bf8cf564a95fb3294f65bddf`  
		Last Modified: Thu, 29 Nov 2018 09:59:11 GMT  
		Size: 468.9 KB (468938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff362a86d810de82a4076658effe4861165de002edd0a9942d4d5fbc7d6ca6db`  
		Last Modified: Thu, 29 Nov 2018 09:59:19 GMT  
		Size: 17.3 MB (17292884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0a34c1ef8245d19011ff57112e489bfb09a33abdedbd3bbca3a934113f1f02`  
		Last Modified: Thu, 29 Nov 2018 09:59:49 GMT  
		Size: 95.1 MB (95141875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a772c12f5c7d2cb11ed05ea948df7c5d3f06be04008d089b5ee558d90cf6cd6`  
		Last Modified: Thu, 29 Nov 2018 09:59:55 GMT  
		Size: 106.6 MB (106576849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b785b463d1b10be84dfa79b5823712938a38f165372e647d23d38105b004bb0`  
		Last Modified: Thu, 29 Nov 2018 09:59:09 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; 386

```console
$ docker pull ghost@sha256:faafeeb63fc838681a6c0a58044d7b905987fc7820f0a46f53b4a0af0eb350d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.8 MB (258805568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cf2863dbd87e24635a883717bd486a63121feddf3c21fc743cf8610892e9b6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Tue, 27 Nov 2018 14:20:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 16:49:58 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 16:50:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 16:50:23 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 16:50:29 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 16:50:29 GMT
CMD ["node"]
# Wed, 28 Nov 2018 18:11:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Nov 2018 18:11:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Nov 2018 18:11:48 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 18:11:48 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 18:12:08 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 18:12:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 18:12:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 29 Nov 2018 11:41:28 GMT
ENV GHOST_VERSION=2.6.2
# Thu, 29 Nov 2018 11:42:08 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 29 Nov 2018 11:44:12 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 29 Nov 2018 11:44:14 GMT
WORKDIR /var/lib/ghost
# Thu, 29 Nov 2018 11:44:14 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 29 Nov 2018 11:44:14 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Thu, 29 Nov 2018 11:44:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Nov 2018 11:44:15 GMT
EXPOSE 2368/tcp
# Thu, 29 Nov 2018 11:44:15 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f393758efdde4e933c557f3f372621ebb2d7b6711b98741a1c8c23426030e867`  
		Last Modified: Tue, 27 Nov 2018 15:14:57 GMT  
		Size: 4.1 KB (4135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629585385db686ea51dbde250d8fb8535c936c9a4aae3d5071d5d5d9db4e7d6c`  
		Last Modified: Wed, 28 Nov 2018 17:45:01 GMT  
		Size: 27.8 MB (27819798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c0ec4bd20dc4ae2294747163ee251dadb6ab6ce1bb037b42fb5970771f81f5`  
		Last Modified: Wed, 28 Nov 2018 17:44:54 GMT  
		Size: 1.3 MB (1310263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e16a9ff05d4f1bd5ced25d3df057a511e9c714483fc8588907380d0f225933`  
		Last Modified: Wed, 28 Nov 2018 18:23:05 GMT  
		Size: 480.8 KB (480826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ef6f086b913c964498b258bdaea75cdb47910b8d548250b9245556141d4fb9`  
		Last Modified: Wed, 28 Nov 2018 18:23:22 GMT  
		Size: 17.3 MB (17287300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6595505a0961053d69bbc8960b17ca1150ef6bc1241a6c56356e18a2e93eb8`  
		Last Modified: Thu, 29 Nov 2018 11:46:51 GMT  
		Size: 89.2 MB (89173734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c6228a57d917a048ce5366412bbc4302e4ac4df0faff4301b640a7233fcd5e`  
		Last Modified: Thu, 29 Nov 2018 11:46:54 GMT  
		Size: 99.6 MB (99602179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b5bed3a994e6199363bd0d984bda0119352892a87303b4a6d45a118f5c92c5`  
		Last Modified: Thu, 29 Nov 2018 11:46:19 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; ppc64le

```console
$ docker pull ghost@sha256:672ee312c93ce862c2283cbbaca50a0510f3d24dbfda706d1246eda61910b961
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.7 MB (257654977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5095dd957fa3d40b6adde7c438c78a30b63251d80547eaaba69191b0c44390e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:07:51 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 16:55:13 GMT
ENV NODE_VERSION=8.14.0
# Tue, 04 Dec 2018 10:50:39 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 04 Dec 2018 10:50:40 GMT
ENV YARN_VERSION=1.12.3
# Tue, 04 Dec 2018 10:50:49 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 04 Dec 2018 10:50:49 GMT
CMD ["node"]
# Tue, 04 Dec 2018 12:01:05 GMT
ENV GOSU_VERSION=1.10
# Tue, 04 Dec 2018 12:01:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 04 Dec 2018 12:01:14 GMT
ENV NODE_ENV=production
# Tue, 04 Dec 2018 12:01:14 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 04 Dec 2018 12:01:52 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 04 Dec 2018 12:01:57 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 04 Dec 2018 12:01:57 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 04 Dec 2018 12:01:58 GMT
ENV GHOST_VERSION=2.6.2
# Tue, 04 Dec 2018 12:04:04 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 04 Dec 2018 12:11:36 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 04 Dec 2018 12:12:04 GMT
WORKDIR /var/lib/ghost
# Tue, 04 Dec 2018 12:12:06 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 04 Dec 2018 12:12:07 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Tue, 04 Dec 2018 12:12:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Dec 2018 12:12:10 GMT
EXPOSE 2368/tcp
# Tue, 04 Dec 2018 12:12:11 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1afeea1085f7b2f8c5843b5f4cfab6c95444c74532315569e14b7459ea105b`  
		Last Modified: Fri, 16 Nov 2018 20:13:37 GMT  
		Size: 4.2 KB (4185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42739ce341e43f26dc0b14f38202e253774f4c322ebee85ad77d539ea1259e1`  
		Last Modified: Tue, 04 Dec 2018 11:23:57 GMT  
		Size: 27.0 MB (26963900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e73cc53546c556d816a25f199d9fb9d077bd3fae67dbbe5ea8a61302ffa438`  
		Last Modified: Tue, 04 Dec 2018 11:23:36 GMT  
		Size: 1.3 MB (1312722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3277339a1ef69cca91c0224830307d89781aedc903b6307b534827f9ba13e6`  
		Last Modified: Tue, 04 Dec 2018 12:31:21 GMT  
		Size: 470.1 KB (470078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3df051e834ca0dc3cea01be91c7cd9a0a1783e84964890d3adf80b897a3757`  
		Last Modified: Tue, 04 Dec 2018 12:32:03 GMT  
		Size: 17.3 MB (17293239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2896ed5ca550212e7072ecf03245b39b2477420b7101d8422308fa77788f9b1c`  
		Last Modified: Tue, 04 Dec 2018 12:33:25 GMT  
		Size: 89.2 MB (89176179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df9d46b33f4c60f08f757afcc7ab3097826b333cf16522ea4c8e5c0b08312708`  
		Last Modified: Tue, 04 Dec 2018 12:33:22 GMT  
		Size: 99.7 MB (99693403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068fd5d74169cec15bed5cccfd4639803f6266d85f400fa39aafd597b4c56a7e`  
		Last Modified: Tue, 04 Dec 2018 12:31:19 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; s390x

```console
$ docker pull ghost@sha256:acc0f3002f32ae224e18b347f3f719e33e561b8f97a85eb56f2b88b2fe60900c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.1 MB (258118060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea3dd6cbf89c42ced40775e295b0dc9f014f39bdbde8e60b091f9e8b138da57d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:39:43 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 28 Nov 2018 13:27:02 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 13:27:28 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 13:27:29 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 13:27:33 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 13:27:34 GMT
CMD ["node"]
# Thu, 29 Nov 2018 12:43:28 GMT
ENV GOSU_VERSION=1.10
# Thu, 29 Nov 2018 12:43:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 29 Nov 2018 12:43:32 GMT
ENV NODE_ENV=production
# Thu, 29 Nov 2018 12:43:32 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Thu, 29 Nov 2018 12:43:49 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 29 Nov 2018 12:43:50 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 29 Nov 2018 12:43:50 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 29 Nov 2018 12:43:50 GMT
ENV GHOST_VERSION=2.6.2
# Thu, 29 Nov 2018 12:44:22 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 29 Nov 2018 12:46:08 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 29 Nov 2018 12:46:10 GMT
WORKDIR /var/lib/ghost
# Thu, 29 Nov 2018 12:46:10 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 29 Nov 2018 12:46:10 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Thu, 29 Nov 2018 12:46:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Nov 2018 12:46:11 GMT
EXPOSE 2368/tcp
# Thu, 29 Nov 2018 12:46:11 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:db7aa0264595016e37963ab9cf4e6fbfa7b19d99cb39b16bbb561a02b7b459d2`  
		Last Modified: Thu, 15 Nov 2018 02:03:05 GMT  
		Size: 22.3 MB (22334714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2801c348986bea5725dc642412a1130b6f77f3e4a15d3a5ab8d90b93bb96aad0`  
		Last Modified: Fri, 16 Nov 2018 20:42:10 GMT  
		Size: 4.2 KB (4150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b17408b2e243ccc39821963534cdf5f8eddaac5267dc9f28e635094953ba50`  
		Last Modified: Wed, 28 Nov 2018 14:04:43 GMT  
		Size: 27.8 MB (27836589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf4c04b048513ecc0deb58c3a802087a34607574fc49f8999b5c17cd69756f3`  
		Last Modified: Wed, 28 Nov 2018 14:04:37 GMT  
		Size: 1.3 MB (1310258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1186605b43f3fa11c94b829cac971a55c83362ec7a6cba3a82589ca798af34dc`  
		Last Modified: Thu, 29 Nov 2018 12:49:18 GMT  
		Size: 487.0 KB (487049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e367843ef942554f7ff07591dba68078d4dd1ec55acdb20afa015c666ea8f4d`  
		Last Modified: Thu, 29 Nov 2018 12:49:23 GMT  
		Size: 17.3 MB (17287465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a185605b81d50c4136b372134750ba99512a47e4b8d2562abc9c69c18d662960`  
		Last Modified: Thu, 29 Nov 2018 12:49:37 GMT  
		Size: 89.2 MB (89173596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0b1998d5bac924a56663a9a72adf36f77ba395ff9a151c8da775935739b0fa`  
		Last Modified: Thu, 29 Nov 2018 12:49:39 GMT  
		Size: 99.7 MB (99683680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48606189f73465d12332f0e2c1faa4124e8324fc9c42dd4a1b51720786bf8837`  
		Last Modified: Thu, 29 Nov 2018 12:49:18 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

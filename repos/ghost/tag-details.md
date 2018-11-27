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
-	[`ghost:2.6.1`](#ghost261)
-	[`ghost:2.6.1-alpine`](#ghost261-alpine)
-	[`ghost:2.6-alpine`](#ghost26-alpine)
-	[`ghost:2-alpine`](#ghost2-alpine)
-	[`ghost:alpine`](#ghostalpine)
-	[`ghost:latest`](#ghostlatest)

## `ghost:0`

```console
$ docker pull ghost@sha256:49c3c979e60cb988ac90a7c8e9132534bc4769c77aa77b340b4d011f63803d00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `ghost:0` - linux; amd64

```console
$ docker pull ghost@sha256:5fdf2b87a01cdb0a4310bd48fb79b91633d4b8253653eba09dd39ae7b31d9cbf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90254541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4038d0817c1677bdefbf14314e523e2746fc8338e9d0446541aa622b60fbac64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Thu, 15 Nov 2018 22:34:24 GMT
ADD file:e9f2e31ca621ef0c68e6a429b08e2e874fb0a1b8f98fe675a5e036ccd9dd9e40 in / 
# Thu, 15 Nov 2018 22:34:24 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:00:23 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 27 Nov 2018 02:10:01 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 27 Nov 2018 02:10:02 GMT
ENV NODE_VERSION=6.14.4
# Tue, 27 Nov 2018 02:10:39 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 27 Nov 2018 02:10:39 GMT
ENV YARN_VERSION=1.6.0
# Tue, 27 Nov 2018 02:10:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 27 Nov 2018 02:10:41 GMT
CMD ["node"]
# Tue, 27 Nov 2018 03:55:01 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 27 Nov 2018 03:55:02 GMT
ENV GOSU_VERSION=1.10
# Tue, 27 Nov 2018 03:55:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 27 Nov 2018 03:55:03 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 27 Nov 2018 03:55:03 GMT
WORKDIR /usr/src/ghost
# Tue, 27 Nov 2018 03:55:04 GMT
ENV GHOST_VERSION=0.11.14
# Tue, 27 Nov 2018 03:56:26 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 27 Nov 2018 03:56:27 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 27 Nov 2018 03:56:28 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 27 Nov 2018 03:56:28 GMT
VOLUME [/var/lib/ghost]
# Tue, 27 Nov 2018 03:56:28 GMT
COPY file:4bf52c5f3b7a65d22c9bcb7270767a1d61445c40c5d0b235d52a143a029740fc in /usr/local/bin/ 
# Tue, 27 Nov 2018 03:56:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 27 Nov 2018 03:56:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 03:56:29 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 03:56:30 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:a92a4af0fb9c102a6d410fbd9c77c3119cd91a2230064f6c5b398fd97e3bff71`  
		Last Modified: Thu, 15 Nov 2018 22:56:37 GMT  
		Size: 30.1 MB (30129457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca548e841944b5c52baf85210601772a884bfe3f5d6e60ae06d27597a8cf5240`  
		Last Modified: Fri, 16 Nov 2018 14:19:49 GMT  
		Size: 4.4 KB (4401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9b18497123e56a128e7707ee8542b8d8f08edb9748c2debe588d9e1edf61fe`  
		Last Modified: Tue, 27 Nov 2018 03:16:34 GMT  
		Size: 138.2 KB (138169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1dc87aa04ebb2a240c645d3c80b4b3d2de967f705808d9ce4b85e971601fc3f`  
		Last Modified: Tue, 27 Nov 2018 03:16:41 GMT  
		Size: 31.3 MB (31303821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdd453fd8ac8770cb46513647fb93504dadd83b34276137ae5bb98f4ab5d46e5`  
		Last Modified: Tue, 27 Nov 2018 03:16:34 GMT  
		Size: 1.1 MB (1084583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbce933184cd5361026995ba2f6d3d2f04fe3b76c501938c2883cbb300b153ed`  
		Last Modified: Tue, 27 Nov 2018 04:04:22 GMT  
		Size: 4.5 KB (4456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ace7e831591ea95b2e4465b5279959091284711164ff719d696df07f324a1d4`  
		Last Modified: Tue, 27 Nov 2018 04:04:22 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3053f3643041e4063fadbf5e806f957a93fec79d4617790b3af71e474022d5c4`  
		Last Modified: Tue, 27 Nov 2018 04:04:21 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ec50ac8aa56cf765587a377f17281889260712d3126d355f40a4da0db5c3571`  
		Last Modified: Tue, 27 Nov 2018 04:04:33 GMT  
		Size: 27.1 MB (27087867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3daba589f3765956928da70b1484faa2199795251e83d794d0eace6c47da6d`  
		Last Modified: Tue, 27 Nov 2018 04:04:21 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dca91a5e6439c024419452beddbd7da885f65f79f6999eb96056aa51d61e5c8`  
		Last Modified: Tue, 27 Nov 2018 04:04:21 GMT  
		Size: 636.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea76149d38f20322ff9659333a5752bc94a095fc2ec051a9fdd0277892d4952`  
		Last Modified: Tue, 27 Nov 2018 04:04:21 GMT  
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
$ docker pull ghost@sha256:39dcb9a2c9fde7a9d053881c48c1734d6dc41c6b3810c4450740ea1dc08cb379
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.4 MB (98407530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cc2f074425581173a3f6e11128eee4eef48d19cf85874c21f795c3c21383531`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 16 Nov 2018 12:27:08 GMT
ADD file:78e67c3bd2a85f8b06939a282c118818f354e8a045ae81ac223bbd8fd5a25ded in / 
# Fri, 16 Nov 2018 12:27:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 13:22:55 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 17 Nov 2018 13:22:57 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 17 Nov 2018 13:27:06 GMT
ENV NODE_VERSION=6.14.4
# Sat, 17 Nov 2018 13:28:22 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 17 Nov 2018 13:28:22 GMT
ENV YARN_VERSION=1.6.0
# Sat, 17 Nov 2018 13:28:25 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 17 Nov 2018 13:28:25 GMT
CMD ["node"]
# Sun, 18 Nov 2018 01:53:11 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sun, 18 Nov 2018 01:53:11 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Nov 2018 01:53:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Nov 2018 01:53:13 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sun, 18 Nov 2018 01:53:13 GMT
WORKDIR /usr/src/ghost
# Sun, 18 Nov 2018 01:53:13 GMT
ENV GHOST_VERSION=0.11.14
# Sun, 18 Nov 2018 01:55:37 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sun, 18 Nov 2018 01:55:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sun, 18 Nov 2018 01:55:39 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sun, 18 Nov 2018 01:55:39 GMT
VOLUME [/var/lib/ghost]
# Sun, 18 Nov 2018 01:55:39 GMT
COPY file:4bf52c5f3b7a65d22c9bcb7270767a1d61445c40c5d0b235d52a143a029740fc in /usr/local/bin/ 
# Sun, 18 Nov 2018 01:55:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sun, 18 Nov 2018 01:55:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Nov 2018 01:55:40 GMT
EXPOSE 2368/tcp
# Sun, 18 Nov 2018 01:55:41 GMT
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
	-	`sha256:4fc8853513e9198532eb2940ed4ae33d09cbcad2272302e350fd7078f82dd9c7`  
		Last Modified: Sat, 17 Nov 2018 13:35:23 GMT  
		Size: 128.5 KB (128530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191c3b7bebb41da9edbd4305ddefdec96abeba4e0f55369c8e32c71670b50162`  
		Last Modified: Sat, 17 Nov 2018 13:41:51 GMT  
		Size: 33.2 MB (33157768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386fd2c7cc5c5e6d7b2c605dfe401a0f6826fef2a60e261ae09acd71d6edb8e2`  
		Last Modified: Sat, 17 Nov 2018 13:41:36 GMT  
		Size: 1.1 MB (1077113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82fe6e6b3adbb8d653e6ee53bab0b69375b0ee9fd458c7e913de1c94243debe`  
		Last Modified: Sun, 18 Nov 2018 01:58:40 GMT  
		Size: 4.4 KB (4444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:badaa0eed42bb6e9b98ab62b4118552a289eabc62cb3b2df8757f44ff2bc27bc`  
		Last Modified: Sun, 18 Nov 2018 01:58:40 GMT  
		Size: 480.6 KB (480567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9229d1c2fc5eb1460be7746d1d7d3e538de6ec5de8e9dd3c071201bffcd2044c`  
		Last Modified: Sun, 18 Nov 2018 01:58:39 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a8202fc619cba2f3bfa95091c3fcdd6335d5b63d4fba6c8e319e1b5c285cd9`  
		Last Modified: Sun, 18 Nov 2018 01:58:50 GMT  
		Size: 33.3 MB (33271412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b29ad43ca0a9c42acd1d72f37745b20a22763fad980005a75ca5ae220275ecbe`  
		Last Modified: Sun, 18 Nov 2018 01:58:39 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52bf8b17b9ddf44bf70cf9d47ce2c30bdcf13affbee1f329e9e154aa1d12fc0d`  
		Last Modified: Sun, 18 Nov 2018 01:58:39 GMT  
		Size: 639.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72adbb5a81705316e039c4c9419d88e0a81a0d8dcef41aab52f0942d892b0fc1`  
		Last Modified: Sun, 18 Nov 2018 01:58:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11`

```console
$ docker pull ghost@sha256:49c3c979e60cb988ac90a7c8e9132534bc4769c77aa77b340b4d011f63803d00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `ghost:0.11` - linux; amd64

```console
$ docker pull ghost@sha256:5fdf2b87a01cdb0a4310bd48fb79b91633d4b8253653eba09dd39ae7b31d9cbf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90254541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4038d0817c1677bdefbf14314e523e2746fc8338e9d0446541aa622b60fbac64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Thu, 15 Nov 2018 22:34:24 GMT
ADD file:e9f2e31ca621ef0c68e6a429b08e2e874fb0a1b8f98fe675a5e036ccd9dd9e40 in / 
# Thu, 15 Nov 2018 22:34:24 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:00:23 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 27 Nov 2018 02:10:01 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 27 Nov 2018 02:10:02 GMT
ENV NODE_VERSION=6.14.4
# Tue, 27 Nov 2018 02:10:39 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 27 Nov 2018 02:10:39 GMT
ENV YARN_VERSION=1.6.0
# Tue, 27 Nov 2018 02:10:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 27 Nov 2018 02:10:41 GMT
CMD ["node"]
# Tue, 27 Nov 2018 03:55:01 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 27 Nov 2018 03:55:02 GMT
ENV GOSU_VERSION=1.10
# Tue, 27 Nov 2018 03:55:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 27 Nov 2018 03:55:03 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 27 Nov 2018 03:55:03 GMT
WORKDIR /usr/src/ghost
# Tue, 27 Nov 2018 03:55:04 GMT
ENV GHOST_VERSION=0.11.14
# Tue, 27 Nov 2018 03:56:26 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 27 Nov 2018 03:56:27 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 27 Nov 2018 03:56:28 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 27 Nov 2018 03:56:28 GMT
VOLUME [/var/lib/ghost]
# Tue, 27 Nov 2018 03:56:28 GMT
COPY file:4bf52c5f3b7a65d22c9bcb7270767a1d61445c40c5d0b235d52a143a029740fc in /usr/local/bin/ 
# Tue, 27 Nov 2018 03:56:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 27 Nov 2018 03:56:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 03:56:29 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 03:56:30 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:a92a4af0fb9c102a6d410fbd9c77c3119cd91a2230064f6c5b398fd97e3bff71`  
		Last Modified: Thu, 15 Nov 2018 22:56:37 GMT  
		Size: 30.1 MB (30129457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca548e841944b5c52baf85210601772a884bfe3f5d6e60ae06d27597a8cf5240`  
		Last Modified: Fri, 16 Nov 2018 14:19:49 GMT  
		Size: 4.4 KB (4401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9b18497123e56a128e7707ee8542b8d8f08edb9748c2debe588d9e1edf61fe`  
		Last Modified: Tue, 27 Nov 2018 03:16:34 GMT  
		Size: 138.2 KB (138169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1dc87aa04ebb2a240c645d3c80b4b3d2de967f705808d9ce4b85e971601fc3f`  
		Last Modified: Tue, 27 Nov 2018 03:16:41 GMT  
		Size: 31.3 MB (31303821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdd453fd8ac8770cb46513647fb93504dadd83b34276137ae5bb98f4ab5d46e5`  
		Last Modified: Tue, 27 Nov 2018 03:16:34 GMT  
		Size: 1.1 MB (1084583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbce933184cd5361026995ba2f6d3d2f04fe3b76c501938c2883cbb300b153ed`  
		Last Modified: Tue, 27 Nov 2018 04:04:22 GMT  
		Size: 4.5 KB (4456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ace7e831591ea95b2e4465b5279959091284711164ff719d696df07f324a1d4`  
		Last Modified: Tue, 27 Nov 2018 04:04:22 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3053f3643041e4063fadbf5e806f957a93fec79d4617790b3af71e474022d5c4`  
		Last Modified: Tue, 27 Nov 2018 04:04:21 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ec50ac8aa56cf765587a377f17281889260712d3126d355f40a4da0db5c3571`  
		Last Modified: Tue, 27 Nov 2018 04:04:33 GMT  
		Size: 27.1 MB (27087867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3daba589f3765956928da70b1484faa2199795251e83d794d0eace6c47da6d`  
		Last Modified: Tue, 27 Nov 2018 04:04:21 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dca91a5e6439c024419452beddbd7da885f65f79f6999eb96056aa51d61e5c8`  
		Last Modified: Tue, 27 Nov 2018 04:04:21 GMT  
		Size: 636.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea76149d38f20322ff9659333a5752bc94a095fc2ec051a9fdd0277892d4952`  
		Last Modified: Tue, 27 Nov 2018 04:04:21 GMT  
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
$ docker pull ghost@sha256:39dcb9a2c9fde7a9d053881c48c1734d6dc41c6b3810c4450740ea1dc08cb379
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.4 MB (98407530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cc2f074425581173a3f6e11128eee4eef48d19cf85874c21f795c3c21383531`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 16 Nov 2018 12:27:08 GMT
ADD file:78e67c3bd2a85f8b06939a282c118818f354e8a045ae81ac223bbd8fd5a25ded in / 
# Fri, 16 Nov 2018 12:27:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 13:22:55 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 17 Nov 2018 13:22:57 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 17 Nov 2018 13:27:06 GMT
ENV NODE_VERSION=6.14.4
# Sat, 17 Nov 2018 13:28:22 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 17 Nov 2018 13:28:22 GMT
ENV YARN_VERSION=1.6.0
# Sat, 17 Nov 2018 13:28:25 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 17 Nov 2018 13:28:25 GMT
CMD ["node"]
# Sun, 18 Nov 2018 01:53:11 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sun, 18 Nov 2018 01:53:11 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Nov 2018 01:53:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Nov 2018 01:53:13 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sun, 18 Nov 2018 01:53:13 GMT
WORKDIR /usr/src/ghost
# Sun, 18 Nov 2018 01:53:13 GMT
ENV GHOST_VERSION=0.11.14
# Sun, 18 Nov 2018 01:55:37 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sun, 18 Nov 2018 01:55:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sun, 18 Nov 2018 01:55:39 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sun, 18 Nov 2018 01:55:39 GMT
VOLUME [/var/lib/ghost]
# Sun, 18 Nov 2018 01:55:39 GMT
COPY file:4bf52c5f3b7a65d22c9bcb7270767a1d61445c40c5d0b235d52a143a029740fc in /usr/local/bin/ 
# Sun, 18 Nov 2018 01:55:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sun, 18 Nov 2018 01:55:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Nov 2018 01:55:40 GMT
EXPOSE 2368/tcp
# Sun, 18 Nov 2018 01:55:41 GMT
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
	-	`sha256:4fc8853513e9198532eb2940ed4ae33d09cbcad2272302e350fd7078f82dd9c7`  
		Last Modified: Sat, 17 Nov 2018 13:35:23 GMT  
		Size: 128.5 KB (128530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191c3b7bebb41da9edbd4305ddefdec96abeba4e0f55369c8e32c71670b50162`  
		Last Modified: Sat, 17 Nov 2018 13:41:51 GMT  
		Size: 33.2 MB (33157768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386fd2c7cc5c5e6d7b2c605dfe401a0f6826fef2a60e261ae09acd71d6edb8e2`  
		Last Modified: Sat, 17 Nov 2018 13:41:36 GMT  
		Size: 1.1 MB (1077113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82fe6e6b3adbb8d653e6ee53bab0b69375b0ee9fd458c7e913de1c94243debe`  
		Last Modified: Sun, 18 Nov 2018 01:58:40 GMT  
		Size: 4.4 KB (4444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:badaa0eed42bb6e9b98ab62b4118552a289eabc62cb3b2df8757f44ff2bc27bc`  
		Last Modified: Sun, 18 Nov 2018 01:58:40 GMT  
		Size: 480.6 KB (480567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9229d1c2fc5eb1460be7746d1d7d3e538de6ec5de8e9dd3c071201bffcd2044c`  
		Last Modified: Sun, 18 Nov 2018 01:58:39 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a8202fc619cba2f3bfa95091c3fcdd6335d5b63d4fba6c8e319e1b5c285cd9`  
		Last Modified: Sun, 18 Nov 2018 01:58:50 GMT  
		Size: 33.3 MB (33271412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b29ad43ca0a9c42acd1d72f37745b20a22763fad980005a75ca5ae220275ecbe`  
		Last Modified: Sun, 18 Nov 2018 01:58:39 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52bf8b17b9ddf44bf70cf9d47ce2c30bdcf13affbee1f329e9e154aa1d12fc0d`  
		Last Modified: Sun, 18 Nov 2018 01:58:39 GMT  
		Size: 639.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72adbb5a81705316e039c4c9419d88e0a81a0d8dcef41aab52f0942d892b0fc1`  
		Last Modified: Sun, 18 Nov 2018 01:58:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.14`

```console
$ docker pull ghost@sha256:49c3c979e60cb988ac90a7c8e9132534bc4769c77aa77b340b4d011f63803d00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `ghost:0.11.14` - linux; amd64

```console
$ docker pull ghost@sha256:5fdf2b87a01cdb0a4310bd48fb79b91633d4b8253653eba09dd39ae7b31d9cbf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90254541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4038d0817c1677bdefbf14314e523e2746fc8338e9d0446541aa622b60fbac64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Thu, 15 Nov 2018 22:34:24 GMT
ADD file:e9f2e31ca621ef0c68e6a429b08e2e874fb0a1b8f98fe675a5e036ccd9dd9e40 in / 
# Thu, 15 Nov 2018 22:34:24 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:00:23 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 27 Nov 2018 02:10:01 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 27 Nov 2018 02:10:02 GMT
ENV NODE_VERSION=6.14.4
# Tue, 27 Nov 2018 02:10:39 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 27 Nov 2018 02:10:39 GMT
ENV YARN_VERSION=1.6.0
# Tue, 27 Nov 2018 02:10:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 27 Nov 2018 02:10:41 GMT
CMD ["node"]
# Tue, 27 Nov 2018 03:55:01 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 27 Nov 2018 03:55:02 GMT
ENV GOSU_VERSION=1.10
# Tue, 27 Nov 2018 03:55:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 27 Nov 2018 03:55:03 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 27 Nov 2018 03:55:03 GMT
WORKDIR /usr/src/ghost
# Tue, 27 Nov 2018 03:55:04 GMT
ENV GHOST_VERSION=0.11.14
# Tue, 27 Nov 2018 03:56:26 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 27 Nov 2018 03:56:27 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 27 Nov 2018 03:56:28 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 27 Nov 2018 03:56:28 GMT
VOLUME [/var/lib/ghost]
# Tue, 27 Nov 2018 03:56:28 GMT
COPY file:4bf52c5f3b7a65d22c9bcb7270767a1d61445c40c5d0b235d52a143a029740fc in /usr/local/bin/ 
# Tue, 27 Nov 2018 03:56:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 27 Nov 2018 03:56:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 03:56:29 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 03:56:30 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:a92a4af0fb9c102a6d410fbd9c77c3119cd91a2230064f6c5b398fd97e3bff71`  
		Last Modified: Thu, 15 Nov 2018 22:56:37 GMT  
		Size: 30.1 MB (30129457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca548e841944b5c52baf85210601772a884bfe3f5d6e60ae06d27597a8cf5240`  
		Last Modified: Fri, 16 Nov 2018 14:19:49 GMT  
		Size: 4.4 KB (4401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9b18497123e56a128e7707ee8542b8d8f08edb9748c2debe588d9e1edf61fe`  
		Last Modified: Tue, 27 Nov 2018 03:16:34 GMT  
		Size: 138.2 KB (138169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1dc87aa04ebb2a240c645d3c80b4b3d2de967f705808d9ce4b85e971601fc3f`  
		Last Modified: Tue, 27 Nov 2018 03:16:41 GMT  
		Size: 31.3 MB (31303821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdd453fd8ac8770cb46513647fb93504dadd83b34276137ae5bb98f4ab5d46e5`  
		Last Modified: Tue, 27 Nov 2018 03:16:34 GMT  
		Size: 1.1 MB (1084583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbce933184cd5361026995ba2f6d3d2f04fe3b76c501938c2883cbb300b153ed`  
		Last Modified: Tue, 27 Nov 2018 04:04:22 GMT  
		Size: 4.5 KB (4456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ace7e831591ea95b2e4465b5279959091284711164ff719d696df07f324a1d4`  
		Last Modified: Tue, 27 Nov 2018 04:04:22 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3053f3643041e4063fadbf5e806f957a93fec79d4617790b3af71e474022d5c4`  
		Last Modified: Tue, 27 Nov 2018 04:04:21 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ec50ac8aa56cf765587a377f17281889260712d3126d355f40a4da0db5c3571`  
		Last Modified: Tue, 27 Nov 2018 04:04:33 GMT  
		Size: 27.1 MB (27087867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3daba589f3765956928da70b1484faa2199795251e83d794d0eace6c47da6d`  
		Last Modified: Tue, 27 Nov 2018 04:04:21 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dca91a5e6439c024419452beddbd7da885f65f79f6999eb96056aa51d61e5c8`  
		Last Modified: Tue, 27 Nov 2018 04:04:21 GMT  
		Size: 636.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea76149d38f20322ff9659333a5752bc94a095fc2ec051a9fdd0277892d4952`  
		Last Modified: Tue, 27 Nov 2018 04:04:21 GMT  
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
$ docker pull ghost@sha256:39dcb9a2c9fde7a9d053881c48c1734d6dc41c6b3810c4450740ea1dc08cb379
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.4 MB (98407530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cc2f074425581173a3f6e11128eee4eef48d19cf85874c21f795c3c21383531`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 16 Nov 2018 12:27:08 GMT
ADD file:78e67c3bd2a85f8b06939a282c118818f354e8a045ae81ac223bbd8fd5a25ded in / 
# Fri, 16 Nov 2018 12:27:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 13:22:55 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 17 Nov 2018 13:22:57 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 17 Nov 2018 13:27:06 GMT
ENV NODE_VERSION=6.14.4
# Sat, 17 Nov 2018 13:28:22 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 17 Nov 2018 13:28:22 GMT
ENV YARN_VERSION=1.6.0
# Sat, 17 Nov 2018 13:28:25 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 17 Nov 2018 13:28:25 GMT
CMD ["node"]
# Sun, 18 Nov 2018 01:53:11 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sun, 18 Nov 2018 01:53:11 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Nov 2018 01:53:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Nov 2018 01:53:13 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sun, 18 Nov 2018 01:53:13 GMT
WORKDIR /usr/src/ghost
# Sun, 18 Nov 2018 01:53:13 GMT
ENV GHOST_VERSION=0.11.14
# Sun, 18 Nov 2018 01:55:37 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sun, 18 Nov 2018 01:55:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sun, 18 Nov 2018 01:55:39 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sun, 18 Nov 2018 01:55:39 GMT
VOLUME [/var/lib/ghost]
# Sun, 18 Nov 2018 01:55:39 GMT
COPY file:4bf52c5f3b7a65d22c9bcb7270767a1d61445c40c5d0b235d52a143a029740fc in /usr/local/bin/ 
# Sun, 18 Nov 2018 01:55:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sun, 18 Nov 2018 01:55:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Nov 2018 01:55:40 GMT
EXPOSE 2368/tcp
# Sun, 18 Nov 2018 01:55:41 GMT
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
	-	`sha256:4fc8853513e9198532eb2940ed4ae33d09cbcad2272302e350fd7078f82dd9c7`  
		Last Modified: Sat, 17 Nov 2018 13:35:23 GMT  
		Size: 128.5 KB (128530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191c3b7bebb41da9edbd4305ddefdec96abeba4e0f55369c8e32c71670b50162`  
		Last Modified: Sat, 17 Nov 2018 13:41:51 GMT  
		Size: 33.2 MB (33157768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386fd2c7cc5c5e6d7b2c605dfe401a0f6826fef2a60e261ae09acd71d6edb8e2`  
		Last Modified: Sat, 17 Nov 2018 13:41:36 GMT  
		Size: 1.1 MB (1077113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82fe6e6b3adbb8d653e6ee53bab0b69375b0ee9fd458c7e913de1c94243debe`  
		Last Modified: Sun, 18 Nov 2018 01:58:40 GMT  
		Size: 4.4 KB (4444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:badaa0eed42bb6e9b98ab62b4118552a289eabc62cb3b2df8757f44ff2bc27bc`  
		Last Modified: Sun, 18 Nov 2018 01:58:40 GMT  
		Size: 480.6 KB (480567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9229d1c2fc5eb1460be7746d1d7d3e538de6ec5de8e9dd3c071201bffcd2044c`  
		Last Modified: Sun, 18 Nov 2018 01:58:39 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a8202fc619cba2f3bfa95091c3fcdd6335d5b63d4fba6c8e319e1b5c285cd9`  
		Last Modified: Sun, 18 Nov 2018 01:58:50 GMT  
		Size: 33.3 MB (33271412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b29ad43ca0a9c42acd1d72f37745b20a22763fad980005a75ca5ae220275ecbe`  
		Last Modified: Sun, 18 Nov 2018 01:58:39 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52bf8b17b9ddf44bf70cf9d47ce2c30bdcf13affbee1f329e9e154aa1d12fc0d`  
		Last Modified: Sun, 18 Nov 2018 01:58:39 GMT  
		Size: 639.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72adbb5a81705316e039c4c9419d88e0a81a0d8dcef41aab52f0942d892b0fc1`  
		Last Modified: Sun, 18 Nov 2018 01:58:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.14-alpine`

```console
$ docker pull ghost@sha256:a11f0a98686000a3c6cc1f95d340e8bbf84481b280dd03fc4c2be74b04e4dc8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11.14-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:ae525a8c51a3acb8cdd8f169124ed80984bb04553c0828759af291ada1b4cc39
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47221626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e80fb95c728856ca95c6003777fd68dde2a417e93048585ad59b43fb4670b6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 11 Sep 2018 22:20:45 GMT
ADD file:4b806a0c031f19a4609ebde02464b2139efebfdf9f5d1bba13cf1c316938530d in / 
# Tue, 11 Sep 2018 22:20:45 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:37:35 GMT
ENV NODE_VERSION=6.14.4
# Tue, 27 Nov 2018 02:08:46 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 27 Nov 2018 02:08:46 GMT
ENV YARN_VERSION=1.6.0
# Tue, 27 Nov 2018 02:08:59 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 27 Nov 2018 02:08:59 GMT
CMD ["node"]
# Tue, 27 Nov 2018 03:56:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Nov 2018 03:57:01 GMT
RUN apk add --no-cache 		bash 		tar
# Tue, 27 Nov 2018 03:57:01 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 27 Nov 2018 03:57:01 GMT
WORKDIR /usr/src/ghost
# Tue, 27 Nov 2018 03:57:01 GMT
ENV GHOST_VERSION=0.11.14
# Tue, 27 Nov 2018 03:57:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 27 Nov 2018 03:57:50 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 27 Nov 2018 03:57:51 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 27 Nov 2018 03:57:51 GMT
VOLUME [/var/lib/ghost]
# Tue, 27 Nov 2018 03:57:51 GMT
COPY file:89e7330b48cbb0bdce59b338bf077606d284ce7048d42db76e653c91ee52a54e in /usr/local/bin/ 
# Tue, 27 Nov 2018 03:57:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 03:57:52 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 03:57:52 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:d6a5679aa3cfc52503fac8e2345790783537564df5af43355ec662d7703aacbf`  
		Last Modified: Tue, 11 Sep 2018 22:22:09 GMT  
		Size: 2.4 MB (2387846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724aea5043e4b16d40f70e0d95c693f84ad3d81f58964d6babb2a26a1d479b84`  
		Last Modified: Tue, 27 Nov 2018 03:14:29 GMT  
		Size: 15.5 MB (15531937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61349290a6053c2948dd128a8f49d325942d31e098aaceb22afa55ffa8f7f9d`  
		Last Modified: Tue, 27 Nov 2018 03:14:25 GMT  
		Size: 1.1 MB (1091424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5425766228fadd72c89e55ec90fde07d52bd0807959303a542ceff0a45ac59a0`  
		Last Modified: Tue, 27 Nov 2018 04:05:22 GMT  
		Size: 8.4 KB (8365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9984a619b5ad809be31c7fee023e05f59ddcab4b1dfe54d307692eab48821790`  
		Last Modified: Tue, 27 Nov 2018 04:05:22 GMT  
		Size: 1.4 MB (1360675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89fbecd26f0638bc8078de68a3f466286e1426a1e662ecb7b2a6de25b538c020`  
		Last Modified: Tue, 27 Nov 2018 04:05:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5eb54b46d3724a9d14e014210ac436fc480b6a9531a2566a34f64108657e18c`  
		Last Modified: Tue, 27 Nov 2018 04:05:33 GMT  
		Size: 26.8 MB (26840400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a0dca1b23ad033e3d8216ab42e461d968fbd60d34a6504b6bd80e4837c7a0a`  
		Last Modified: Tue, 27 Nov 2018 04:05:21 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:328f9457315cecae532cc938377b9b1610c80a8e4d96918ddae54c89d314a1fd`  
		Last Modified: Tue, 27 Nov 2018 04:05:26 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11-alpine`

```console
$ docker pull ghost@sha256:a11f0a98686000a3c6cc1f95d340e8bbf84481b280dd03fc4c2be74b04e4dc8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:ae525a8c51a3acb8cdd8f169124ed80984bb04553c0828759af291ada1b4cc39
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47221626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e80fb95c728856ca95c6003777fd68dde2a417e93048585ad59b43fb4670b6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 11 Sep 2018 22:20:45 GMT
ADD file:4b806a0c031f19a4609ebde02464b2139efebfdf9f5d1bba13cf1c316938530d in / 
# Tue, 11 Sep 2018 22:20:45 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:37:35 GMT
ENV NODE_VERSION=6.14.4
# Tue, 27 Nov 2018 02:08:46 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 27 Nov 2018 02:08:46 GMT
ENV YARN_VERSION=1.6.0
# Tue, 27 Nov 2018 02:08:59 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 27 Nov 2018 02:08:59 GMT
CMD ["node"]
# Tue, 27 Nov 2018 03:56:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Nov 2018 03:57:01 GMT
RUN apk add --no-cache 		bash 		tar
# Tue, 27 Nov 2018 03:57:01 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 27 Nov 2018 03:57:01 GMT
WORKDIR /usr/src/ghost
# Tue, 27 Nov 2018 03:57:01 GMT
ENV GHOST_VERSION=0.11.14
# Tue, 27 Nov 2018 03:57:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 27 Nov 2018 03:57:50 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 27 Nov 2018 03:57:51 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 27 Nov 2018 03:57:51 GMT
VOLUME [/var/lib/ghost]
# Tue, 27 Nov 2018 03:57:51 GMT
COPY file:89e7330b48cbb0bdce59b338bf077606d284ce7048d42db76e653c91ee52a54e in /usr/local/bin/ 
# Tue, 27 Nov 2018 03:57:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 03:57:52 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 03:57:52 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:d6a5679aa3cfc52503fac8e2345790783537564df5af43355ec662d7703aacbf`  
		Last Modified: Tue, 11 Sep 2018 22:22:09 GMT  
		Size: 2.4 MB (2387846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724aea5043e4b16d40f70e0d95c693f84ad3d81f58964d6babb2a26a1d479b84`  
		Last Modified: Tue, 27 Nov 2018 03:14:29 GMT  
		Size: 15.5 MB (15531937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61349290a6053c2948dd128a8f49d325942d31e098aaceb22afa55ffa8f7f9d`  
		Last Modified: Tue, 27 Nov 2018 03:14:25 GMT  
		Size: 1.1 MB (1091424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5425766228fadd72c89e55ec90fde07d52bd0807959303a542ceff0a45ac59a0`  
		Last Modified: Tue, 27 Nov 2018 04:05:22 GMT  
		Size: 8.4 KB (8365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9984a619b5ad809be31c7fee023e05f59ddcab4b1dfe54d307692eab48821790`  
		Last Modified: Tue, 27 Nov 2018 04:05:22 GMT  
		Size: 1.4 MB (1360675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89fbecd26f0638bc8078de68a3f466286e1426a1e662ecb7b2a6de25b538c020`  
		Last Modified: Tue, 27 Nov 2018 04:05:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5eb54b46d3724a9d14e014210ac436fc480b6a9531a2566a34f64108657e18c`  
		Last Modified: Tue, 27 Nov 2018 04:05:33 GMT  
		Size: 26.8 MB (26840400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a0dca1b23ad033e3d8216ab42e461d968fbd60d34a6504b6bd80e4837c7a0a`  
		Last Modified: Tue, 27 Nov 2018 04:05:21 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:328f9457315cecae532cc938377b9b1610c80a8e4d96918ddae54c89d314a1fd`  
		Last Modified: Tue, 27 Nov 2018 04:05:26 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:a11f0a98686000a3c6cc1f95d340e8bbf84481b280dd03fc4c2be74b04e4dc8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:ae525a8c51a3acb8cdd8f169124ed80984bb04553c0828759af291ada1b4cc39
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47221626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e80fb95c728856ca95c6003777fd68dde2a417e93048585ad59b43fb4670b6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 11 Sep 2018 22:20:45 GMT
ADD file:4b806a0c031f19a4609ebde02464b2139efebfdf9f5d1bba13cf1c316938530d in / 
# Tue, 11 Sep 2018 22:20:45 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:37:35 GMT
ENV NODE_VERSION=6.14.4
# Tue, 27 Nov 2018 02:08:46 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 27 Nov 2018 02:08:46 GMT
ENV YARN_VERSION=1.6.0
# Tue, 27 Nov 2018 02:08:59 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 27 Nov 2018 02:08:59 GMT
CMD ["node"]
# Tue, 27 Nov 2018 03:56:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Nov 2018 03:57:01 GMT
RUN apk add --no-cache 		bash 		tar
# Tue, 27 Nov 2018 03:57:01 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 27 Nov 2018 03:57:01 GMT
WORKDIR /usr/src/ghost
# Tue, 27 Nov 2018 03:57:01 GMT
ENV GHOST_VERSION=0.11.14
# Tue, 27 Nov 2018 03:57:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 27 Nov 2018 03:57:50 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 27 Nov 2018 03:57:51 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 27 Nov 2018 03:57:51 GMT
VOLUME [/var/lib/ghost]
# Tue, 27 Nov 2018 03:57:51 GMT
COPY file:89e7330b48cbb0bdce59b338bf077606d284ce7048d42db76e653c91ee52a54e in /usr/local/bin/ 
# Tue, 27 Nov 2018 03:57:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 03:57:52 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 03:57:52 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:d6a5679aa3cfc52503fac8e2345790783537564df5af43355ec662d7703aacbf`  
		Last Modified: Tue, 11 Sep 2018 22:22:09 GMT  
		Size: 2.4 MB (2387846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724aea5043e4b16d40f70e0d95c693f84ad3d81f58964d6babb2a26a1d479b84`  
		Last Modified: Tue, 27 Nov 2018 03:14:29 GMT  
		Size: 15.5 MB (15531937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61349290a6053c2948dd128a8f49d325942d31e098aaceb22afa55ffa8f7f9d`  
		Last Modified: Tue, 27 Nov 2018 03:14:25 GMT  
		Size: 1.1 MB (1091424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5425766228fadd72c89e55ec90fde07d52bd0807959303a542ceff0a45ac59a0`  
		Last Modified: Tue, 27 Nov 2018 04:05:22 GMT  
		Size: 8.4 KB (8365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9984a619b5ad809be31c7fee023e05f59ddcab4b1dfe54d307692eab48821790`  
		Last Modified: Tue, 27 Nov 2018 04:05:22 GMT  
		Size: 1.4 MB (1360675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89fbecd26f0638bc8078de68a3f466286e1426a1e662ecb7b2a6de25b538c020`  
		Last Modified: Tue, 27 Nov 2018 04:05:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5eb54b46d3724a9d14e014210ac436fc480b6a9531a2566a34f64108657e18c`  
		Last Modified: Tue, 27 Nov 2018 04:05:33 GMT  
		Size: 26.8 MB (26840400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a0dca1b23ad033e3d8216ab42e461d968fbd60d34a6504b6bd80e4837c7a0a`  
		Last Modified: Tue, 27 Nov 2018 04:05:21 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:328f9457315cecae532cc938377b9b1610c80a8e4d96918ddae54c89d314a1fd`  
		Last Modified: Tue, 27 Nov 2018 04:05:26 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1`

```console
$ docker pull ghost@sha256:a409bce789cedfb599de33b06e885a21fc452dd9e622b5cd2e53f68fe67de53b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `ghost:1` - linux; amd64

```console
$ docker pull ghost@sha256:2befb083c422dac355996ce915e90e0f6aa99d7077db499b4aad85e535619ece
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.2 MB (274212798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36b0b6a798f6735fb2a2576ce30ad8f49629898e98d6a1056992dd4a61955278`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:07:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 27 Nov 2018 01:54:03 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 01:54:21 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 27 Nov 2018 01:54:21 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 01:54:25 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 27 Nov 2018 01:54:25 GMT
CMD ["node"]
# Tue, 27 Nov 2018 03:49:09 GMT
ENV GOSU_VERSION=1.10
# Tue, 27 Nov 2018 03:49:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 27 Nov 2018 03:49:13 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 03:49:13 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 03:49:32 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 03:49:33 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 03:49:33 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 03:52:40 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 27 Nov 2018 03:53:11 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 27 Nov 2018 03:53:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 27 Nov 2018 03:53:43 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 27 Nov 2018 03:53:44 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 03:53:45 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 03:53:45 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Tue, 27 Nov 2018 03:53:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 03:53:46 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 03:53:46 GMT
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
	-	`sha256:49c9fc371242daedf4d046f5b434eda0b30ace04af380020a86852d0ec936625`  
		Last Modified: Tue, 27 Nov 2018 03:10:12 GMT  
		Size: 28.0 MB (27994657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f588c56e12defb8e208a16caaef6898c66a747c97b7367d843957cf81cb2a0bb`  
		Last Modified: Tue, 27 Nov 2018 03:10:06 GMT  
		Size: 1.3 MB (1310256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0453b67da30f718e94d1ec0c4e6246ee245782d980512cca0dca9515a7eb260`  
		Last Modified: Tue, 27 Nov 2018 03:58:21 GMT  
		Size: 500.9 KB (500918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78cf8054e81b24da0b428849ac087386665c4be52cd250ad74d27e0c031797a`  
		Last Modified: Tue, 27 Nov 2018 03:58:33 GMT  
		Size: 17.3 MB (17289446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2fa2431d18c6ace290a1bfd904fd113e37ab6ee54d2633d78401d1965722c3`  
		Last Modified: Tue, 27 Nov 2018 04:02:07 GMT  
		Size: 101.8 MB (101822276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08cbadce1ec4868e6d1862bf4e4c736f6e149307eb82065cd57b4df2955cd4a`  
		Last Modified: Tue, 27 Nov 2018 04:02:08 GMT  
		Size: 102.8 MB (102804236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628baa602f4d05dd4455838131cc99dcd785198a36d226a1d5b62d1034db9079`  
		Last Modified: Tue, 27 Nov 2018 04:01:36 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; arm variant v7

```console
$ docker pull ghost@sha256:d297c79ffc5111c2c8b112823b680b0012db2dd8b559ff83709fc8983327eff1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273569991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5ceb057ae85945e47fdf29e5155d0a31ae0f7612a0218da97556a9564c1069e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:54:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 27 Nov 2018 13:12:49 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 13:13:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 27 Nov 2018 13:13:24 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 13:13:34 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 27 Nov 2018 13:13:35 GMT
CMD ["node"]
# Tue, 27 Nov 2018 13:48:40 GMT
ENV GOSU_VERSION=1.10
# Tue, 27 Nov 2018 13:48:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 27 Nov 2018 13:48:46 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 13:48:46 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 13:49:26 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 13:49:28 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 13:49:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 13:55:53 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 27 Nov 2018 13:57:23 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 27 Nov 2018 13:57:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 27 Nov 2018 14:01:24 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 27 Nov 2018 14:01:29 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 14:01:29 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 14:01:29 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Tue, 27 Nov 2018 14:01:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 14:01:30 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 14:01:31 GMT
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
	-	`sha256:34aa5762fd0b82d9c740f390db51303989c0e6044c5e155b449fba9bbe150524`  
		Last Modified: Tue, 27 Nov 2018 13:21:55 GMT  
		Size: 25.5 MB (25452174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56a199a8f3ec52c065fb76c506624621a32987877c35b41585226cf92aeef9c`  
		Last Modified: Tue, 27 Nov 2018 13:21:46 GMT  
		Size: 1.3 MB (1310269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea81a8b94ecc11c68d0361e9146380822afee0f3c1232b26db6364b63ce8e36`  
		Last Modified: Tue, 27 Nov 2018 14:09:07 GMT  
		Size: 475.4 KB (475431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cfcbea0529e68e48dbce0e8ce2caebad0b032f1716b1934bdf71f7a1816cb35`  
		Last Modified: Tue, 27 Nov 2018 14:09:17 GMT  
		Size: 17.3 MB (17290871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab1efc0273e01447a49ce116b0abc8181c6ecb6ca414648c595d4db109da9ae`  
		Last Modified: Tue, 27 Nov 2018 14:11:17 GMT  
		Size: 94.1 MB (94107890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a395d29a8928aadcb3fb442cd97dd69e72a1219c81df4b0e5680f06d94980b9d`  
		Last Modified: Tue, 27 Nov 2018 14:11:27 GMT  
		Size: 115.7 MB (115658547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caba731ef696881b4f5b0dcd3f4b7e6636d1b386360fcff01415c5e76e09aad0`  
		Last Modified: Tue, 27 Nov 2018 14:10:40 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; 386

```console
$ docker pull ghost@sha256:72906d4f519ec37b6ffbd975adad0f8a222af35838f1ac484a2efd59197aa6b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.1 MB (209054591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3618b1a00136e060db4720a48f8e523ccf53e38980828c8628b4dbf9f7580e88`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:27:08 GMT
ADD file:78e67c3bd2a85f8b06939a282c118818f354e8a045ae81ac223bbd8fd5a25ded in / 
# Fri, 16 Nov 2018 12:27:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 13:22:55 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 17 Nov 2018 13:22:57 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 17 Nov 2018 13:22:57 GMT
ENV NODE_VERSION=8.12.0
# Sat, 17 Nov 2018 13:24:17 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 17 Nov 2018 13:24:17 GMT
ENV YARN_VERSION=1.9.4
# Sat, 17 Nov 2018 13:24:20 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 17 Nov 2018 13:24:20 GMT
CMD ["node"]
# Sun, 18 Nov 2018 01:44:41 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Nov 2018 01:44:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Nov 2018 01:44:43 GMT
ENV NODE_ENV=production
# Sun, 18 Nov 2018 01:44:43 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Sun, 18 Nov 2018 01:45:03 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sun, 18 Nov 2018 01:45:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sun, 18 Nov 2018 01:45:04 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sun, 18 Nov 2018 01:49:19 GMT
ENV GHOST_VERSION=1.25.6
# Sun, 18 Nov 2018 01:49:56 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sun, 18 Nov 2018 01:49:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sun, 18 Nov 2018 01:52:04 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sun, 18 Nov 2018 01:52:05 GMT
WORKDIR /var/lib/ghost
# Sun, 18 Nov 2018 01:52:05 GMT
VOLUME [/var/lib/ghost/content]
# Sun, 18 Nov 2018 01:52:05 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Sun, 18 Nov 2018 01:52:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Nov 2018 01:52:06 GMT
EXPOSE 2368/tcp
# Sun, 18 Nov 2018 01:52:06 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:4fc8853513e9198532eb2940ed4ae33d09cbcad2272302e350fd7078f82dd9c7`  
		Last Modified: Sat, 17 Nov 2018 13:35:23 GMT  
		Size: 128.5 KB (128530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35e8296baaa139f8d9ca1b200b6ae7167efe0486808054a4830bbcebc4b9439`  
		Last Modified: Sat, 17 Nov 2018 13:35:41 GMT  
		Size: 36.3 MB (36328143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86487fe4e10b1a0941f90df5d1623183083f4a4c16600c9c4994f7d2368a0710`  
		Last Modified: Sat, 17 Nov 2018 13:35:24 GMT  
		Size: 1.1 MB (1073700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812024e9c428735d8f9d28fe4dd3728d015150e98b7bdf5792c065f870ceeb4d`  
		Last Modified: Sun, 18 Nov 2018 01:56:13 GMT  
		Size: 480.6 KB (480561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1735753cf55d21468f115ce8415001ce713fd58b5d035e81cb237e71b51556`  
		Last Modified: Sun, 18 Nov 2018 01:56:21 GMT  
		Size: 17.3 MB (17274035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:721ba9e272fdef2ed6db6da77f1f00696f412c5e5451f5cb1e03b1b40ee0734a`  
		Last Modified: Sun, 18 Nov 2018 01:57:59 GMT  
		Size: 94.1 MB (94106389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94bcda7e96177955325fb85ffd8d669a1978ea180a8c7b4485458d390ee496c5`  
		Last Modified: Sun, 18 Nov 2018 01:57:41 GMT  
		Size: 29.4 MB (29376071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6330130296beb2768a90292dcb2e2900b03bcbff778c5cb9a55a6b4fc1d40a8`  
		Last Modified: Sun, 18 Nov 2018 01:57:33 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25`

```console
$ docker pull ghost@sha256:a409bce789cedfb599de33b06e885a21fc452dd9e622b5cd2e53f68fe67de53b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `ghost:1.25` - linux; amd64

```console
$ docker pull ghost@sha256:2befb083c422dac355996ce915e90e0f6aa99d7077db499b4aad85e535619ece
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.2 MB (274212798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36b0b6a798f6735fb2a2576ce30ad8f49629898e98d6a1056992dd4a61955278`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:07:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 27 Nov 2018 01:54:03 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 01:54:21 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 27 Nov 2018 01:54:21 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 01:54:25 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 27 Nov 2018 01:54:25 GMT
CMD ["node"]
# Tue, 27 Nov 2018 03:49:09 GMT
ENV GOSU_VERSION=1.10
# Tue, 27 Nov 2018 03:49:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 27 Nov 2018 03:49:13 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 03:49:13 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 03:49:32 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 03:49:33 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 03:49:33 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 03:52:40 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 27 Nov 2018 03:53:11 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 27 Nov 2018 03:53:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 27 Nov 2018 03:53:43 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 27 Nov 2018 03:53:44 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 03:53:45 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 03:53:45 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Tue, 27 Nov 2018 03:53:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 03:53:46 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 03:53:46 GMT
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
	-	`sha256:49c9fc371242daedf4d046f5b434eda0b30ace04af380020a86852d0ec936625`  
		Last Modified: Tue, 27 Nov 2018 03:10:12 GMT  
		Size: 28.0 MB (27994657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f588c56e12defb8e208a16caaef6898c66a747c97b7367d843957cf81cb2a0bb`  
		Last Modified: Tue, 27 Nov 2018 03:10:06 GMT  
		Size: 1.3 MB (1310256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0453b67da30f718e94d1ec0c4e6246ee245782d980512cca0dca9515a7eb260`  
		Last Modified: Tue, 27 Nov 2018 03:58:21 GMT  
		Size: 500.9 KB (500918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78cf8054e81b24da0b428849ac087386665c4be52cd250ad74d27e0c031797a`  
		Last Modified: Tue, 27 Nov 2018 03:58:33 GMT  
		Size: 17.3 MB (17289446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2fa2431d18c6ace290a1bfd904fd113e37ab6ee54d2633d78401d1965722c3`  
		Last Modified: Tue, 27 Nov 2018 04:02:07 GMT  
		Size: 101.8 MB (101822276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08cbadce1ec4868e6d1862bf4e4c736f6e149307eb82065cd57b4df2955cd4a`  
		Last Modified: Tue, 27 Nov 2018 04:02:08 GMT  
		Size: 102.8 MB (102804236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628baa602f4d05dd4455838131cc99dcd785198a36d226a1d5b62d1034db9079`  
		Last Modified: Tue, 27 Nov 2018 04:01:36 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; arm variant v7

```console
$ docker pull ghost@sha256:d297c79ffc5111c2c8b112823b680b0012db2dd8b559ff83709fc8983327eff1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273569991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5ceb057ae85945e47fdf29e5155d0a31ae0f7612a0218da97556a9564c1069e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:54:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 27 Nov 2018 13:12:49 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 13:13:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 27 Nov 2018 13:13:24 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 13:13:34 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 27 Nov 2018 13:13:35 GMT
CMD ["node"]
# Tue, 27 Nov 2018 13:48:40 GMT
ENV GOSU_VERSION=1.10
# Tue, 27 Nov 2018 13:48:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 27 Nov 2018 13:48:46 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 13:48:46 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 13:49:26 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 13:49:28 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 13:49:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 13:55:53 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 27 Nov 2018 13:57:23 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 27 Nov 2018 13:57:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 27 Nov 2018 14:01:24 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 27 Nov 2018 14:01:29 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 14:01:29 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 14:01:29 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Tue, 27 Nov 2018 14:01:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 14:01:30 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 14:01:31 GMT
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
	-	`sha256:34aa5762fd0b82d9c740f390db51303989c0e6044c5e155b449fba9bbe150524`  
		Last Modified: Tue, 27 Nov 2018 13:21:55 GMT  
		Size: 25.5 MB (25452174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56a199a8f3ec52c065fb76c506624621a32987877c35b41585226cf92aeef9c`  
		Last Modified: Tue, 27 Nov 2018 13:21:46 GMT  
		Size: 1.3 MB (1310269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea81a8b94ecc11c68d0361e9146380822afee0f3c1232b26db6364b63ce8e36`  
		Last Modified: Tue, 27 Nov 2018 14:09:07 GMT  
		Size: 475.4 KB (475431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cfcbea0529e68e48dbce0e8ce2caebad0b032f1716b1934bdf71f7a1816cb35`  
		Last Modified: Tue, 27 Nov 2018 14:09:17 GMT  
		Size: 17.3 MB (17290871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab1efc0273e01447a49ce116b0abc8181c6ecb6ca414648c595d4db109da9ae`  
		Last Modified: Tue, 27 Nov 2018 14:11:17 GMT  
		Size: 94.1 MB (94107890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a395d29a8928aadcb3fb442cd97dd69e72a1219c81df4b0e5680f06d94980b9d`  
		Last Modified: Tue, 27 Nov 2018 14:11:27 GMT  
		Size: 115.7 MB (115658547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caba731ef696881b4f5b0dcd3f4b7e6636d1b386360fcff01415c5e76e09aad0`  
		Last Modified: Tue, 27 Nov 2018 14:10:40 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; 386

```console
$ docker pull ghost@sha256:72906d4f519ec37b6ffbd975adad0f8a222af35838f1ac484a2efd59197aa6b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.1 MB (209054591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3618b1a00136e060db4720a48f8e523ccf53e38980828c8628b4dbf9f7580e88`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:27:08 GMT
ADD file:78e67c3bd2a85f8b06939a282c118818f354e8a045ae81ac223bbd8fd5a25ded in / 
# Fri, 16 Nov 2018 12:27:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 13:22:55 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 17 Nov 2018 13:22:57 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 17 Nov 2018 13:22:57 GMT
ENV NODE_VERSION=8.12.0
# Sat, 17 Nov 2018 13:24:17 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 17 Nov 2018 13:24:17 GMT
ENV YARN_VERSION=1.9.4
# Sat, 17 Nov 2018 13:24:20 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 17 Nov 2018 13:24:20 GMT
CMD ["node"]
# Sun, 18 Nov 2018 01:44:41 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Nov 2018 01:44:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Nov 2018 01:44:43 GMT
ENV NODE_ENV=production
# Sun, 18 Nov 2018 01:44:43 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Sun, 18 Nov 2018 01:45:03 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sun, 18 Nov 2018 01:45:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sun, 18 Nov 2018 01:45:04 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sun, 18 Nov 2018 01:49:19 GMT
ENV GHOST_VERSION=1.25.6
# Sun, 18 Nov 2018 01:49:56 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sun, 18 Nov 2018 01:49:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sun, 18 Nov 2018 01:52:04 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sun, 18 Nov 2018 01:52:05 GMT
WORKDIR /var/lib/ghost
# Sun, 18 Nov 2018 01:52:05 GMT
VOLUME [/var/lib/ghost/content]
# Sun, 18 Nov 2018 01:52:05 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Sun, 18 Nov 2018 01:52:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Nov 2018 01:52:06 GMT
EXPOSE 2368/tcp
# Sun, 18 Nov 2018 01:52:06 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:4fc8853513e9198532eb2940ed4ae33d09cbcad2272302e350fd7078f82dd9c7`  
		Last Modified: Sat, 17 Nov 2018 13:35:23 GMT  
		Size: 128.5 KB (128530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35e8296baaa139f8d9ca1b200b6ae7167efe0486808054a4830bbcebc4b9439`  
		Last Modified: Sat, 17 Nov 2018 13:35:41 GMT  
		Size: 36.3 MB (36328143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86487fe4e10b1a0941f90df5d1623183083f4a4c16600c9c4994f7d2368a0710`  
		Last Modified: Sat, 17 Nov 2018 13:35:24 GMT  
		Size: 1.1 MB (1073700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812024e9c428735d8f9d28fe4dd3728d015150e98b7bdf5792c065f870ceeb4d`  
		Last Modified: Sun, 18 Nov 2018 01:56:13 GMT  
		Size: 480.6 KB (480561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1735753cf55d21468f115ce8415001ce713fd58b5d035e81cb237e71b51556`  
		Last Modified: Sun, 18 Nov 2018 01:56:21 GMT  
		Size: 17.3 MB (17274035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:721ba9e272fdef2ed6db6da77f1f00696f412c5e5451f5cb1e03b1b40ee0734a`  
		Last Modified: Sun, 18 Nov 2018 01:57:59 GMT  
		Size: 94.1 MB (94106389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94bcda7e96177955325fb85ffd8d669a1978ea180a8c7b4485458d390ee496c5`  
		Last Modified: Sun, 18 Nov 2018 01:57:41 GMT  
		Size: 29.4 MB (29376071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6330130296beb2768a90292dcb2e2900b03bcbff778c5cb9a55a6b4fc1d40a8`  
		Last Modified: Sun, 18 Nov 2018 01:57:33 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25.6`

```console
$ docker pull ghost@sha256:a409bce789cedfb599de33b06e885a21fc452dd9e622b5cd2e53f68fe67de53b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `ghost:1.25.6` - linux; amd64

```console
$ docker pull ghost@sha256:2befb083c422dac355996ce915e90e0f6aa99d7077db499b4aad85e535619ece
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.2 MB (274212798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36b0b6a798f6735fb2a2576ce30ad8f49629898e98d6a1056992dd4a61955278`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:07:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 27 Nov 2018 01:54:03 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 01:54:21 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 27 Nov 2018 01:54:21 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 01:54:25 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 27 Nov 2018 01:54:25 GMT
CMD ["node"]
# Tue, 27 Nov 2018 03:49:09 GMT
ENV GOSU_VERSION=1.10
# Tue, 27 Nov 2018 03:49:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 27 Nov 2018 03:49:13 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 03:49:13 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 03:49:32 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 03:49:33 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 03:49:33 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 03:52:40 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 27 Nov 2018 03:53:11 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 27 Nov 2018 03:53:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 27 Nov 2018 03:53:43 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 27 Nov 2018 03:53:44 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 03:53:45 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 03:53:45 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Tue, 27 Nov 2018 03:53:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 03:53:46 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 03:53:46 GMT
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
	-	`sha256:49c9fc371242daedf4d046f5b434eda0b30ace04af380020a86852d0ec936625`  
		Last Modified: Tue, 27 Nov 2018 03:10:12 GMT  
		Size: 28.0 MB (27994657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f588c56e12defb8e208a16caaef6898c66a747c97b7367d843957cf81cb2a0bb`  
		Last Modified: Tue, 27 Nov 2018 03:10:06 GMT  
		Size: 1.3 MB (1310256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0453b67da30f718e94d1ec0c4e6246ee245782d980512cca0dca9515a7eb260`  
		Last Modified: Tue, 27 Nov 2018 03:58:21 GMT  
		Size: 500.9 KB (500918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78cf8054e81b24da0b428849ac087386665c4be52cd250ad74d27e0c031797a`  
		Last Modified: Tue, 27 Nov 2018 03:58:33 GMT  
		Size: 17.3 MB (17289446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2fa2431d18c6ace290a1bfd904fd113e37ab6ee54d2633d78401d1965722c3`  
		Last Modified: Tue, 27 Nov 2018 04:02:07 GMT  
		Size: 101.8 MB (101822276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08cbadce1ec4868e6d1862bf4e4c736f6e149307eb82065cd57b4df2955cd4a`  
		Last Modified: Tue, 27 Nov 2018 04:02:08 GMT  
		Size: 102.8 MB (102804236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628baa602f4d05dd4455838131cc99dcd785198a36d226a1d5b62d1034db9079`  
		Last Modified: Tue, 27 Nov 2018 04:01:36 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.6` - linux; arm variant v7

```console
$ docker pull ghost@sha256:d297c79ffc5111c2c8b112823b680b0012db2dd8b559ff83709fc8983327eff1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273569991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5ceb057ae85945e47fdf29e5155d0a31ae0f7612a0218da97556a9564c1069e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:54:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 27 Nov 2018 13:12:49 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 13:13:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 27 Nov 2018 13:13:24 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 13:13:34 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 27 Nov 2018 13:13:35 GMT
CMD ["node"]
# Tue, 27 Nov 2018 13:48:40 GMT
ENV GOSU_VERSION=1.10
# Tue, 27 Nov 2018 13:48:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 27 Nov 2018 13:48:46 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 13:48:46 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 13:49:26 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 13:49:28 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 13:49:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 13:55:53 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 27 Nov 2018 13:57:23 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 27 Nov 2018 13:57:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 27 Nov 2018 14:01:24 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 27 Nov 2018 14:01:29 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 14:01:29 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 14:01:29 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Tue, 27 Nov 2018 14:01:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 14:01:30 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 14:01:31 GMT
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
	-	`sha256:34aa5762fd0b82d9c740f390db51303989c0e6044c5e155b449fba9bbe150524`  
		Last Modified: Tue, 27 Nov 2018 13:21:55 GMT  
		Size: 25.5 MB (25452174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56a199a8f3ec52c065fb76c506624621a32987877c35b41585226cf92aeef9c`  
		Last Modified: Tue, 27 Nov 2018 13:21:46 GMT  
		Size: 1.3 MB (1310269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea81a8b94ecc11c68d0361e9146380822afee0f3c1232b26db6364b63ce8e36`  
		Last Modified: Tue, 27 Nov 2018 14:09:07 GMT  
		Size: 475.4 KB (475431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cfcbea0529e68e48dbce0e8ce2caebad0b032f1716b1934bdf71f7a1816cb35`  
		Last Modified: Tue, 27 Nov 2018 14:09:17 GMT  
		Size: 17.3 MB (17290871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab1efc0273e01447a49ce116b0abc8181c6ecb6ca414648c595d4db109da9ae`  
		Last Modified: Tue, 27 Nov 2018 14:11:17 GMT  
		Size: 94.1 MB (94107890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a395d29a8928aadcb3fb442cd97dd69e72a1219c81df4b0e5680f06d94980b9d`  
		Last Modified: Tue, 27 Nov 2018 14:11:27 GMT  
		Size: 115.7 MB (115658547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caba731ef696881b4f5b0dcd3f4b7e6636d1b386360fcff01415c5e76e09aad0`  
		Last Modified: Tue, 27 Nov 2018 14:10:40 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.6` - linux; 386

```console
$ docker pull ghost@sha256:72906d4f519ec37b6ffbd975adad0f8a222af35838f1ac484a2efd59197aa6b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.1 MB (209054591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3618b1a00136e060db4720a48f8e523ccf53e38980828c8628b4dbf9f7580e88`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:27:08 GMT
ADD file:78e67c3bd2a85f8b06939a282c118818f354e8a045ae81ac223bbd8fd5a25ded in / 
# Fri, 16 Nov 2018 12:27:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 13:22:55 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 17 Nov 2018 13:22:57 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 17 Nov 2018 13:22:57 GMT
ENV NODE_VERSION=8.12.0
# Sat, 17 Nov 2018 13:24:17 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 17 Nov 2018 13:24:17 GMT
ENV YARN_VERSION=1.9.4
# Sat, 17 Nov 2018 13:24:20 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 17 Nov 2018 13:24:20 GMT
CMD ["node"]
# Sun, 18 Nov 2018 01:44:41 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Nov 2018 01:44:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Nov 2018 01:44:43 GMT
ENV NODE_ENV=production
# Sun, 18 Nov 2018 01:44:43 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Sun, 18 Nov 2018 01:45:03 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sun, 18 Nov 2018 01:45:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sun, 18 Nov 2018 01:45:04 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sun, 18 Nov 2018 01:49:19 GMT
ENV GHOST_VERSION=1.25.6
# Sun, 18 Nov 2018 01:49:56 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sun, 18 Nov 2018 01:49:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sun, 18 Nov 2018 01:52:04 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sun, 18 Nov 2018 01:52:05 GMT
WORKDIR /var/lib/ghost
# Sun, 18 Nov 2018 01:52:05 GMT
VOLUME [/var/lib/ghost/content]
# Sun, 18 Nov 2018 01:52:05 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Sun, 18 Nov 2018 01:52:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Nov 2018 01:52:06 GMT
EXPOSE 2368/tcp
# Sun, 18 Nov 2018 01:52:06 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:4fc8853513e9198532eb2940ed4ae33d09cbcad2272302e350fd7078f82dd9c7`  
		Last Modified: Sat, 17 Nov 2018 13:35:23 GMT  
		Size: 128.5 KB (128530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35e8296baaa139f8d9ca1b200b6ae7167efe0486808054a4830bbcebc4b9439`  
		Last Modified: Sat, 17 Nov 2018 13:35:41 GMT  
		Size: 36.3 MB (36328143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86487fe4e10b1a0941f90df5d1623183083f4a4c16600c9c4994f7d2368a0710`  
		Last Modified: Sat, 17 Nov 2018 13:35:24 GMT  
		Size: 1.1 MB (1073700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812024e9c428735d8f9d28fe4dd3728d015150e98b7bdf5792c065f870ceeb4d`  
		Last Modified: Sun, 18 Nov 2018 01:56:13 GMT  
		Size: 480.6 KB (480561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1735753cf55d21468f115ce8415001ce713fd58b5d035e81cb237e71b51556`  
		Last Modified: Sun, 18 Nov 2018 01:56:21 GMT  
		Size: 17.3 MB (17274035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:721ba9e272fdef2ed6db6da77f1f00696f412c5e5451f5cb1e03b1b40ee0734a`  
		Last Modified: Sun, 18 Nov 2018 01:57:59 GMT  
		Size: 94.1 MB (94106389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94bcda7e96177955325fb85ffd8d669a1978ea180a8c7b4485458d390ee496c5`  
		Last Modified: Sun, 18 Nov 2018 01:57:41 GMT  
		Size: 29.4 MB (29376071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6330130296beb2768a90292dcb2e2900b03bcbff778c5cb9a55a6b4fc1d40a8`  
		Last Modified: Sun, 18 Nov 2018 01:57:33 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25.6-alpine`

```console
$ docker pull ghost@sha256:e8401e06c817c0734d058cc5d9e7f5599d4549fdc400123756440184cb531e9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1.25.6-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:60ba6f597ff5559b92c20ec2bac6c2666a75df93ff476ac4a2a88c79a03c99e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.7 MB (142679304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aea985ad2e3c119c9aae5eedee8bb96155d53940fab9fe3fa991d6cd19d8ec6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 27 Nov 2018 01:29:14 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 01:53:28 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 27 Nov 2018 01:53:29 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 01:53:33 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 27 Nov 2018 01:53:33 GMT
CMD ["node"]
# Tue, 27 Nov 2018 03:51:24 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Nov 2018 03:51:25 GMT
RUN apk add --no-cache 		bash
# Tue, 27 Nov 2018 03:51:25 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 03:51:26 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 03:51:44 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 03:51:45 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 03:51:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 03:54:09 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 27 Nov 2018 03:54:40 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 27 Nov 2018 03:54:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 27 Nov 2018 03:54:42 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 03:54:42 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 03:54:42 GMT
COPY file:ec5f0dc0340c44f728261188497016ebbb720b84d4de7a293d7d96e1d7c20c56 in /usr/local/bin 
# Tue, 27 Nov 2018 03:54:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 03:54:43 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 03:54:43 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4100456d729e7a0fc25c44963cd65fe83ab909c9d54b320d8f72e74b11057d4f`  
		Last Modified: Tue, 27 Nov 2018 03:09:03 GMT  
		Size: 18.9 MB (18858960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0140f4542cf5a1a1317695975b4edae06063b76669609ce34d3e6eaf478e39db`  
		Last Modified: Tue, 27 Nov 2018 03:08:58 GMT  
		Size: 1.3 MB (1317213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa56fa28fdc96e9f54dcb28827fa75cec6a752ac6dac0420ca1a14e10c71abb0`  
		Last Modified: Tue, 27 Nov 2018 04:00:00 GMT  
		Size: 9.4 KB (9399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce057720d08870aa7bc3124133d6b5adef77782b8631866c105039eb93fe8e5b`  
		Last Modified: Tue, 27 Nov 2018 04:00:01 GMT  
		Size: 1.2 MB (1173414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318b04b2e8858735c0e91cf51c7bdfbd506eb286c1b1fbaa4a74950d9499fd5b`  
		Last Modified: Tue, 27 Nov 2018 04:00:10 GMT  
		Size: 17.3 MB (17288800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcfb3d95e438d3425429aece31011bce8d63805f5c2fe41a5c8147d1d00cac6`  
		Last Modified: Tue, 27 Nov 2018 04:03:34 GMT  
		Size: 101.8 MB (101824013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:202c05944cb0406a4445caa54588681951306fea12f712c10bd9c7dee84324ad`  
		Last Modified: Tue, 27 Nov 2018 04:03:03 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.6-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:faae9e9a3e5d62a855073c443a59aa65e2a4e2fde254a3a15f678d86cf20c7c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.8 MB (133817652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c69b98641eb204293b7214e8db011f349065910a32456cba876efd2e7002687`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Tue, 27 Nov 2018 08:52:10 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 08:55:45 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 27 Nov 2018 08:55:45 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 08:55:51 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 27 Nov 2018 08:55:51 GMT
CMD ["node"]
# Tue, 27 Nov 2018 09:24:01 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Nov 2018 09:24:04 GMT
RUN apk add --no-cache 		bash
# Tue, 27 Nov 2018 09:24:04 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 09:24:05 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 09:24:45 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 09:24:47 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 09:24:47 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 09:26:33 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 27 Nov 2018 09:28:01 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 27 Nov 2018 09:28:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 27 Nov 2018 09:28:05 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 09:28:05 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 09:28:06 GMT
COPY file:ec5f0dc0340c44f728261188497016ebbb720b84d4de7a293d7d96e1d7c20c56 in /usr/local/bin 
# Tue, 27 Nov 2018 09:28:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 09:28:06 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 09:28:07 GMT
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
	-	`sha256:e34b6435578b93a1110f1451b0db1a969c675bb4407b942f2aeb618d9f8cc67a`  
		Last Modified: Tue, 27 Nov 2018 09:07:22 GMT  
		Size: 17.8 MB (17819429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29cb6c00e1ef26a3ddd761e1abd98e9c880da9a6fde739da0fba31c008f1427e`  
		Last Modified: Tue, 27 Nov 2018 09:07:16 GMT  
		Size: 1.3 MB (1317233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c93698f9770e2124b11c9d617b78b2debc0e47ffcac583e0da9bb1fd213e812`  
		Last Modified: Tue, 27 Nov 2018 09:28:27 GMT  
		Size: 9.3 KB (9333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e9b52bb8279767d072ee36ee1a6eaf23d436b20c0faabde4a3aff32eebbce8`  
		Last Modified: Tue, 27 Nov 2018 09:28:27 GMT  
		Size: 1.1 MB (1127578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7dc237585a3e09405ea8e6f184f28301cf59a71f31c48b9e780462e1185d57`  
		Last Modified: Tue, 27 Nov 2018 09:28:36 GMT  
		Size: 17.3 MB (17290707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d73e753876d90ae1d2ff4aca726962700edbeaaa838e1b321d1f98dc54644e`  
		Last Modified: Tue, 27 Nov 2018 09:29:57 GMT  
		Size: 94.1 MB (94106170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf1488338d29da90a450d15c79c489d0d06d3477ca41e863ea8b545527afecd`  
		Last Modified: Tue, 27 Nov 2018 09:29:23 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.6-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:9ffc6ef6b8e77e9d55ec3cec14c15faaa0498de49d8db75e97eae7848886be17
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.7 MB (134742814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30bd7f3c85553468d949ce86a42bb387d0fcc03d7841fd4821e408759f1b5278`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Tue, 27 Nov 2018 10:55:43 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 11:04:35 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 27 Nov 2018 11:09:04 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 11:09:18 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 27 Nov 2018 11:09:19 GMT
CMD ["node"]
# Tue, 27 Nov 2018 13:13:58 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Nov 2018 13:14:13 GMT
RUN apk add --no-cache 		bash
# Tue, 27 Nov 2018 13:14:26 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 13:14:28 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 13:15:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 13:15:30 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 13:17:32 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 13:29:32 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 27 Nov 2018 13:31:50 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 27 Nov 2018 13:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 27 Nov 2018 13:41:25 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 13:41:27 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 13:41:29 GMT
COPY file:ec5f0dc0340c44f728261188497016ebbb720b84d4de7a293d7d96e1d7c20c56 in /usr/local/bin 
# Tue, 27 Nov 2018 13:41:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 13:41:33 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 13:41:35 GMT
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
	-	`sha256:4fd15e708d9e2073708b80a7d6c70f1a79bb0cc818f695e7957447abc9003baf`  
		Last Modified: Tue, 27 Nov 2018 12:08:52 GMT  
		Size: 18.6 MB (18632830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ff065c37e8d99ec92a0db2f5598173c637c5bb488365a24f9f544eedc3a530`  
		Last Modified: Tue, 27 Nov 2018 12:08:40 GMT  
		Size: 1.3 MB (1317249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8234ae08c21afae51c5103bdc9d6a30e220869b3a791f0af4f507586122a758`  
		Last Modified: Tue, 27 Nov 2018 13:42:20 GMT  
		Size: 9.8 KB (9847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09330e47f232232ae2117dc7514be962764254707ebadd789d638b1c29b3c54f`  
		Last Modified: Tue, 27 Nov 2018 13:42:23 GMT  
		Size: 1.2 MB (1188827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c132f3581a4a470ce55a281a2fb73f8a7cb5b13247d65fdbed585d237143b30`  
		Last Modified: Tue, 27 Nov 2018 13:42:45 GMT  
		Size: 17.3 MB (17290736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff669bd1d035615c126614b6ca288ac20887e1d7c8d7923b68a49619e06b3701`  
		Last Modified: Tue, 27 Nov 2018 13:52:01 GMT  
		Size: 94.1 MB (94107347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b11d89150f92ea7912399e1be868b75684854a235f6b2a17ea1c05e8ab307f`  
		Last Modified: Tue, 27 Nov 2018 13:51:03 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25-alpine`

```console
$ docker pull ghost@sha256:e8401e06c817c0734d058cc5d9e7f5599d4549fdc400123756440184cb531e9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1.25-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:60ba6f597ff5559b92c20ec2bac6c2666a75df93ff476ac4a2a88c79a03c99e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.7 MB (142679304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aea985ad2e3c119c9aae5eedee8bb96155d53940fab9fe3fa991d6cd19d8ec6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 27 Nov 2018 01:29:14 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 01:53:28 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 27 Nov 2018 01:53:29 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 01:53:33 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 27 Nov 2018 01:53:33 GMT
CMD ["node"]
# Tue, 27 Nov 2018 03:51:24 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Nov 2018 03:51:25 GMT
RUN apk add --no-cache 		bash
# Tue, 27 Nov 2018 03:51:25 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 03:51:26 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 03:51:44 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 03:51:45 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 03:51:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 03:54:09 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 27 Nov 2018 03:54:40 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 27 Nov 2018 03:54:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 27 Nov 2018 03:54:42 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 03:54:42 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 03:54:42 GMT
COPY file:ec5f0dc0340c44f728261188497016ebbb720b84d4de7a293d7d96e1d7c20c56 in /usr/local/bin 
# Tue, 27 Nov 2018 03:54:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 03:54:43 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 03:54:43 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4100456d729e7a0fc25c44963cd65fe83ab909c9d54b320d8f72e74b11057d4f`  
		Last Modified: Tue, 27 Nov 2018 03:09:03 GMT  
		Size: 18.9 MB (18858960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0140f4542cf5a1a1317695975b4edae06063b76669609ce34d3e6eaf478e39db`  
		Last Modified: Tue, 27 Nov 2018 03:08:58 GMT  
		Size: 1.3 MB (1317213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa56fa28fdc96e9f54dcb28827fa75cec6a752ac6dac0420ca1a14e10c71abb0`  
		Last Modified: Tue, 27 Nov 2018 04:00:00 GMT  
		Size: 9.4 KB (9399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce057720d08870aa7bc3124133d6b5adef77782b8631866c105039eb93fe8e5b`  
		Last Modified: Tue, 27 Nov 2018 04:00:01 GMT  
		Size: 1.2 MB (1173414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318b04b2e8858735c0e91cf51c7bdfbd506eb286c1b1fbaa4a74950d9499fd5b`  
		Last Modified: Tue, 27 Nov 2018 04:00:10 GMT  
		Size: 17.3 MB (17288800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcfb3d95e438d3425429aece31011bce8d63805f5c2fe41a5c8147d1d00cac6`  
		Last Modified: Tue, 27 Nov 2018 04:03:34 GMT  
		Size: 101.8 MB (101824013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:202c05944cb0406a4445caa54588681951306fea12f712c10bd9c7dee84324ad`  
		Last Modified: Tue, 27 Nov 2018 04:03:03 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:faae9e9a3e5d62a855073c443a59aa65e2a4e2fde254a3a15f678d86cf20c7c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.8 MB (133817652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c69b98641eb204293b7214e8db011f349065910a32456cba876efd2e7002687`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Tue, 27 Nov 2018 08:52:10 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 08:55:45 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 27 Nov 2018 08:55:45 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 08:55:51 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 27 Nov 2018 08:55:51 GMT
CMD ["node"]
# Tue, 27 Nov 2018 09:24:01 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Nov 2018 09:24:04 GMT
RUN apk add --no-cache 		bash
# Tue, 27 Nov 2018 09:24:04 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 09:24:05 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 09:24:45 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 09:24:47 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 09:24:47 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 09:26:33 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 27 Nov 2018 09:28:01 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 27 Nov 2018 09:28:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 27 Nov 2018 09:28:05 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 09:28:05 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 09:28:06 GMT
COPY file:ec5f0dc0340c44f728261188497016ebbb720b84d4de7a293d7d96e1d7c20c56 in /usr/local/bin 
# Tue, 27 Nov 2018 09:28:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 09:28:06 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 09:28:07 GMT
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
	-	`sha256:e34b6435578b93a1110f1451b0db1a969c675bb4407b942f2aeb618d9f8cc67a`  
		Last Modified: Tue, 27 Nov 2018 09:07:22 GMT  
		Size: 17.8 MB (17819429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29cb6c00e1ef26a3ddd761e1abd98e9c880da9a6fde739da0fba31c008f1427e`  
		Last Modified: Tue, 27 Nov 2018 09:07:16 GMT  
		Size: 1.3 MB (1317233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c93698f9770e2124b11c9d617b78b2debc0e47ffcac583e0da9bb1fd213e812`  
		Last Modified: Tue, 27 Nov 2018 09:28:27 GMT  
		Size: 9.3 KB (9333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e9b52bb8279767d072ee36ee1a6eaf23d436b20c0faabde4a3aff32eebbce8`  
		Last Modified: Tue, 27 Nov 2018 09:28:27 GMT  
		Size: 1.1 MB (1127578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7dc237585a3e09405ea8e6f184f28301cf59a71f31c48b9e780462e1185d57`  
		Last Modified: Tue, 27 Nov 2018 09:28:36 GMT  
		Size: 17.3 MB (17290707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d73e753876d90ae1d2ff4aca726962700edbeaaa838e1b321d1f98dc54644e`  
		Last Modified: Tue, 27 Nov 2018 09:29:57 GMT  
		Size: 94.1 MB (94106170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf1488338d29da90a450d15c79c489d0d06d3477ca41e863ea8b545527afecd`  
		Last Modified: Tue, 27 Nov 2018 09:29:23 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:9ffc6ef6b8e77e9d55ec3cec14c15faaa0498de49d8db75e97eae7848886be17
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.7 MB (134742814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30bd7f3c85553468d949ce86a42bb387d0fcc03d7841fd4821e408759f1b5278`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Tue, 27 Nov 2018 10:55:43 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 11:04:35 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 27 Nov 2018 11:09:04 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 11:09:18 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 27 Nov 2018 11:09:19 GMT
CMD ["node"]
# Tue, 27 Nov 2018 13:13:58 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Nov 2018 13:14:13 GMT
RUN apk add --no-cache 		bash
# Tue, 27 Nov 2018 13:14:26 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 13:14:28 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 13:15:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 13:15:30 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 13:17:32 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 13:29:32 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 27 Nov 2018 13:31:50 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 27 Nov 2018 13:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 27 Nov 2018 13:41:25 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 13:41:27 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 13:41:29 GMT
COPY file:ec5f0dc0340c44f728261188497016ebbb720b84d4de7a293d7d96e1d7c20c56 in /usr/local/bin 
# Tue, 27 Nov 2018 13:41:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 13:41:33 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 13:41:35 GMT
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
	-	`sha256:4fd15e708d9e2073708b80a7d6c70f1a79bb0cc818f695e7957447abc9003baf`  
		Last Modified: Tue, 27 Nov 2018 12:08:52 GMT  
		Size: 18.6 MB (18632830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ff065c37e8d99ec92a0db2f5598173c637c5bb488365a24f9f544eedc3a530`  
		Last Modified: Tue, 27 Nov 2018 12:08:40 GMT  
		Size: 1.3 MB (1317249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8234ae08c21afae51c5103bdc9d6a30e220869b3a791f0af4f507586122a758`  
		Last Modified: Tue, 27 Nov 2018 13:42:20 GMT  
		Size: 9.8 KB (9847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09330e47f232232ae2117dc7514be962764254707ebadd789d638b1c29b3c54f`  
		Last Modified: Tue, 27 Nov 2018 13:42:23 GMT  
		Size: 1.2 MB (1188827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c132f3581a4a470ce55a281a2fb73f8a7cb5b13247d65fdbed585d237143b30`  
		Last Modified: Tue, 27 Nov 2018 13:42:45 GMT  
		Size: 17.3 MB (17290736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff669bd1d035615c126614b6ca288ac20887e1d7c8d7923b68a49619e06b3701`  
		Last Modified: Tue, 27 Nov 2018 13:52:01 GMT  
		Size: 94.1 MB (94107347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b11d89150f92ea7912399e1be868b75684854a235f6b2a17ea1c05e8ab307f`  
		Last Modified: Tue, 27 Nov 2018 13:51:03 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:e8401e06c817c0734d058cc5d9e7f5599d4549fdc400123756440184cb531e9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:60ba6f597ff5559b92c20ec2bac6c2666a75df93ff476ac4a2a88c79a03c99e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.7 MB (142679304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aea985ad2e3c119c9aae5eedee8bb96155d53940fab9fe3fa991d6cd19d8ec6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 27 Nov 2018 01:29:14 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 01:53:28 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 27 Nov 2018 01:53:29 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 01:53:33 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 27 Nov 2018 01:53:33 GMT
CMD ["node"]
# Tue, 27 Nov 2018 03:51:24 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Nov 2018 03:51:25 GMT
RUN apk add --no-cache 		bash
# Tue, 27 Nov 2018 03:51:25 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 03:51:26 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 03:51:44 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 03:51:45 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 03:51:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 03:54:09 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 27 Nov 2018 03:54:40 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 27 Nov 2018 03:54:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 27 Nov 2018 03:54:42 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 03:54:42 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 03:54:42 GMT
COPY file:ec5f0dc0340c44f728261188497016ebbb720b84d4de7a293d7d96e1d7c20c56 in /usr/local/bin 
# Tue, 27 Nov 2018 03:54:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 03:54:43 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 03:54:43 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4100456d729e7a0fc25c44963cd65fe83ab909c9d54b320d8f72e74b11057d4f`  
		Last Modified: Tue, 27 Nov 2018 03:09:03 GMT  
		Size: 18.9 MB (18858960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0140f4542cf5a1a1317695975b4edae06063b76669609ce34d3e6eaf478e39db`  
		Last Modified: Tue, 27 Nov 2018 03:08:58 GMT  
		Size: 1.3 MB (1317213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa56fa28fdc96e9f54dcb28827fa75cec6a752ac6dac0420ca1a14e10c71abb0`  
		Last Modified: Tue, 27 Nov 2018 04:00:00 GMT  
		Size: 9.4 KB (9399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce057720d08870aa7bc3124133d6b5adef77782b8631866c105039eb93fe8e5b`  
		Last Modified: Tue, 27 Nov 2018 04:00:01 GMT  
		Size: 1.2 MB (1173414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318b04b2e8858735c0e91cf51c7bdfbd506eb286c1b1fbaa4a74950d9499fd5b`  
		Last Modified: Tue, 27 Nov 2018 04:00:10 GMT  
		Size: 17.3 MB (17288800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcfb3d95e438d3425429aece31011bce8d63805f5c2fe41a5c8147d1d00cac6`  
		Last Modified: Tue, 27 Nov 2018 04:03:34 GMT  
		Size: 101.8 MB (101824013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:202c05944cb0406a4445caa54588681951306fea12f712c10bd9c7dee84324ad`  
		Last Modified: Tue, 27 Nov 2018 04:03:03 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:faae9e9a3e5d62a855073c443a59aa65e2a4e2fde254a3a15f678d86cf20c7c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.8 MB (133817652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c69b98641eb204293b7214e8db011f349065910a32456cba876efd2e7002687`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Tue, 27 Nov 2018 08:52:10 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 08:55:45 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 27 Nov 2018 08:55:45 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 08:55:51 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 27 Nov 2018 08:55:51 GMT
CMD ["node"]
# Tue, 27 Nov 2018 09:24:01 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Nov 2018 09:24:04 GMT
RUN apk add --no-cache 		bash
# Tue, 27 Nov 2018 09:24:04 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 09:24:05 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 09:24:45 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 09:24:47 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 09:24:47 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 09:26:33 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 27 Nov 2018 09:28:01 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 27 Nov 2018 09:28:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 27 Nov 2018 09:28:05 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 09:28:05 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 09:28:06 GMT
COPY file:ec5f0dc0340c44f728261188497016ebbb720b84d4de7a293d7d96e1d7c20c56 in /usr/local/bin 
# Tue, 27 Nov 2018 09:28:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 09:28:06 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 09:28:07 GMT
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
	-	`sha256:e34b6435578b93a1110f1451b0db1a969c675bb4407b942f2aeb618d9f8cc67a`  
		Last Modified: Tue, 27 Nov 2018 09:07:22 GMT  
		Size: 17.8 MB (17819429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29cb6c00e1ef26a3ddd761e1abd98e9c880da9a6fde739da0fba31c008f1427e`  
		Last Modified: Tue, 27 Nov 2018 09:07:16 GMT  
		Size: 1.3 MB (1317233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c93698f9770e2124b11c9d617b78b2debc0e47ffcac583e0da9bb1fd213e812`  
		Last Modified: Tue, 27 Nov 2018 09:28:27 GMT  
		Size: 9.3 KB (9333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e9b52bb8279767d072ee36ee1a6eaf23d436b20c0faabde4a3aff32eebbce8`  
		Last Modified: Tue, 27 Nov 2018 09:28:27 GMT  
		Size: 1.1 MB (1127578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7dc237585a3e09405ea8e6f184f28301cf59a71f31c48b9e780462e1185d57`  
		Last Modified: Tue, 27 Nov 2018 09:28:36 GMT  
		Size: 17.3 MB (17290707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d73e753876d90ae1d2ff4aca726962700edbeaaa838e1b321d1f98dc54644e`  
		Last Modified: Tue, 27 Nov 2018 09:29:57 GMT  
		Size: 94.1 MB (94106170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf1488338d29da90a450d15c79c489d0d06d3477ca41e863ea8b545527afecd`  
		Last Modified: Tue, 27 Nov 2018 09:29:23 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:9ffc6ef6b8e77e9d55ec3cec14c15faaa0498de49d8db75e97eae7848886be17
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.7 MB (134742814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30bd7f3c85553468d949ce86a42bb387d0fcc03d7841fd4821e408759f1b5278`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Tue, 27 Nov 2018 10:55:43 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 11:04:35 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 27 Nov 2018 11:09:04 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 11:09:18 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 27 Nov 2018 11:09:19 GMT
CMD ["node"]
# Tue, 27 Nov 2018 13:13:58 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Nov 2018 13:14:13 GMT
RUN apk add --no-cache 		bash
# Tue, 27 Nov 2018 13:14:26 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 13:14:28 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 13:15:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 13:15:30 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 13:17:32 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 13:29:32 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 27 Nov 2018 13:31:50 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 27 Nov 2018 13:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 27 Nov 2018 13:41:25 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 13:41:27 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 13:41:29 GMT
COPY file:ec5f0dc0340c44f728261188497016ebbb720b84d4de7a293d7d96e1d7c20c56 in /usr/local/bin 
# Tue, 27 Nov 2018 13:41:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 13:41:33 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 13:41:35 GMT
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
	-	`sha256:4fd15e708d9e2073708b80a7d6c70f1a79bb0cc818f695e7957447abc9003baf`  
		Last Modified: Tue, 27 Nov 2018 12:08:52 GMT  
		Size: 18.6 MB (18632830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ff065c37e8d99ec92a0db2f5598173c637c5bb488365a24f9f544eedc3a530`  
		Last Modified: Tue, 27 Nov 2018 12:08:40 GMT  
		Size: 1.3 MB (1317249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8234ae08c21afae51c5103bdc9d6a30e220869b3a791f0af4f507586122a758`  
		Last Modified: Tue, 27 Nov 2018 13:42:20 GMT  
		Size: 9.8 KB (9847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09330e47f232232ae2117dc7514be962764254707ebadd789d638b1c29b3c54f`  
		Last Modified: Tue, 27 Nov 2018 13:42:23 GMT  
		Size: 1.2 MB (1188827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c132f3581a4a470ce55a281a2fb73f8a7cb5b13247d65fdbed585d237143b30`  
		Last Modified: Tue, 27 Nov 2018 13:42:45 GMT  
		Size: 17.3 MB (17290736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff669bd1d035615c126614b6ca288ac20887e1d7c8d7923b68a49619e06b3701`  
		Last Modified: Tue, 27 Nov 2018 13:52:01 GMT  
		Size: 94.1 MB (94107347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b11d89150f92ea7912399e1be868b75684854a235f6b2a17ea1c05e8ab307f`  
		Last Modified: Tue, 27 Nov 2018 13:51:03 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2`

```console
$ docker pull ghost@sha256:be995eabd6d10f2a9e1e27a3699d4a4d452ed9607c107a5d6ec457a4b91800fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `ghost:2` - linux; amd64

```console
$ docker pull ghost@sha256:ea5631cd1164522580507f275a31c41c17418668f312442d3006be624d846e9b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272564899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dffc1260f5f5e52fd245deee210718fd65278d37d1a4fe8209641568907635fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:07:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 27 Nov 2018 01:54:03 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 01:54:21 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 27 Nov 2018 01:54:21 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 01:54:25 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 27 Nov 2018 01:54:25 GMT
CMD ["node"]
# Tue, 27 Nov 2018 03:49:09 GMT
ENV GOSU_VERSION=1.10
# Tue, 27 Nov 2018 03:49:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 27 Nov 2018 03:49:13 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 03:49:13 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 03:49:32 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 03:49:33 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 03:49:33 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 03:49:33 GMT
ENV GHOST_VERSION=2.6.1
# Tue, 27 Nov 2018 03:50:11 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 27 Nov 2018 03:50:52 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 27 Nov 2018 03:50:53 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 03:50:53 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 03:50:54 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Tue, 27 Nov 2018 03:50:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 03:50:54 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 03:50:55 GMT
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
	-	`sha256:49c9fc371242daedf4d046f5b434eda0b30ace04af380020a86852d0ec936625`  
		Last Modified: Tue, 27 Nov 2018 03:10:12 GMT  
		Size: 28.0 MB (27994657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f588c56e12defb8e208a16caaef6898c66a747c97b7367d843957cf81cb2a0bb`  
		Last Modified: Tue, 27 Nov 2018 03:10:06 GMT  
		Size: 1.3 MB (1310256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0453b67da30f718e94d1ec0c4e6246ee245782d980512cca0dca9515a7eb260`  
		Last Modified: Tue, 27 Nov 2018 03:58:21 GMT  
		Size: 500.9 KB (500918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78cf8054e81b24da0b428849ac087386665c4be52cd250ad74d27e0c031797a`  
		Last Modified: Tue, 27 Nov 2018 03:58:33 GMT  
		Size: 17.3 MB (17289446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29f90f3f1c5c4446261e8e5b3557da9d67482972aa95f233b01ce4bcbe1d05e`  
		Last Modified: Tue, 27 Nov 2018 03:58:58 GMT  
		Size: 110.9 MB (110900036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08312fdfe84a106139ba66eed8810ede51a39cfb835327749a305d4c9b55dec1`  
		Last Modified: Tue, 27 Nov 2018 03:58:57 GMT  
		Size: 92.1 MB (92078602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6086d1e31d0bcc4193165b4aabd8d1c97aab656cbaba93ec356e76df5f4950f9`  
		Last Modified: Tue, 27 Nov 2018 03:58:21 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; arm variant v7

```console
$ docker pull ghost@sha256:a1664fe8db3b3f67b764c230ded3260d82490e6a5a78196dab27ec4841aac7f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.1 MB (267140996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb1ba6afef9127eff533912eab889643b3d16cf2576746006a86f2472fd1644a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:54:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 27 Nov 2018 13:12:49 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 13:13:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 27 Nov 2018 13:13:24 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 13:13:34 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 27 Nov 2018 13:13:35 GMT
CMD ["node"]
# Tue, 27 Nov 2018 13:48:40 GMT
ENV GOSU_VERSION=1.10
# Tue, 27 Nov 2018 13:48:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 27 Nov 2018 13:48:46 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 13:48:46 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 13:49:26 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 13:49:28 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 13:49:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 13:49:29 GMT
ENV GHOST_VERSION=2.6.1
# Tue, 27 Nov 2018 13:51:11 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 27 Nov 2018 13:55:21 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 27 Nov 2018 13:55:31 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 13:55:31 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 13:55:32 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Tue, 27 Nov 2018 13:55:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 13:55:32 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 13:55:33 GMT
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
	-	`sha256:34aa5762fd0b82d9c740f390db51303989c0e6044c5e155b449fba9bbe150524`  
		Last Modified: Tue, 27 Nov 2018 13:21:55 GMT  
		Size: 25.5 MB (25452174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56a199a8f3ec52c065fb76c506624621a32987877c35b41585226cf92aeef9c`  
		Last Modified: Tue, 27 Nov 2018 13:21:46 GMT  
		Size: 1.3 MB (1310269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea81a8b94ecc11c68d0361e9146380822afee0f3c1232b26db6364b63ce8e36`  
		Last Modified: Tue, 27 Nov 2018 14:09:07 GMT  
		Size: 475.4 KB (475431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cfcbea0529e68e48dbce0e8ce2caebad0b032f1716b1934bdf71f7a1816cb35`  
		Last Modified: Tue, 27 Nov 2018 14:09:17 GMT  
		Size: 17.3 MB (17290871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816994f8095b25f3a7446a16bf6c2905ff5ef16d72f24788c9db7a81e782b502`  
		Last Modified: Tue, 27 Nov 2018 14:09:50 GMT  
		Size: 96.1 MB (96066565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e75f7cb5b708224c3f82d38e80b7948367cc0050f0abf18b10c910b055e5753`  
		Last Modified: Tue, 27 Nov 2018 14:09:51 GMT  
		Size: 107.3 MB (107270907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd25c1fb92309cab14f4a4ee07c128ea4f35fdeb382f29424fe8a126bafc65d`  
		Last Modified: Tue, 27 Nov 2018 14:09:06 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; 386

```console
$ docker pull ghost@sha256:fa4a8f8140e3ac0e6a005e2d3ac9bbbff6d1b32e34e52d7e8353bc90aa56048d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.0 MB (185961349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd9dbfaa0b95c4380c0ab5acacccfd047919ba68c8658cbf02c3c098aaf09a49`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:27:08 GMT
ADD file:78e67c3bd2a85f8b06939a282c118818f354e8a045ae81ac223bbd8fd5a25ded in / 
# Fri, 16 Nov 2018 12:27:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 13:22:55 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 17 Nov 2018 13:22:57 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 17 Nov 2018 13:22:57 GMT
ENV NODE_VERSION=8.12.0
# Sat, 17 Nov 2018 13:24:17 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 17 Nov 2018 13:24:17 GMT
ENV YARN_VERSION=1.9.4
# Sat, 17 Nov 2018 13:24:20 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 17 Nov 2018 13:24:20 GMT
CMD ["node"]
# Sun, 18 Nov 2018 01:44:41 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Nov 2018 01:44:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Nov 2018 01:44:43 GMT
ENV NODE_ENV=production
# Sun, 18 Nov 2018 01:44:43 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Sun, 18 Nov 2018 01:45:03 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sun, 18 Nov 2018 01:45:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sun, 18 Nov 2018 01:45:04 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 21 Nov 2018 11:40:29 GMT
ENV GHOST_VERSION=2.6.1
# Wed, 21 Nov 2018 11:41:09 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 21 Nov 2018 11:43:20 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 21 Nov 2018 11:43:20 GMT
WORKDIR /var/lib/ghost
# Wed, 21 Nov 2018 11:43:21 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 21 Nov 2018 11:43:21 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Wed, 21 Nov 2018 11:43:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Nov 2018 11:43:21 GMT
EXPOSE 2368/tcp
# Wed, 21 Nov 2018 11:43:22 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:4fc8853513e9198532eb2940ed4ae33d09cbcad2272302e350fd7078f82dd9c7`  
		Last Modified: Sat, 17 Nov 2018 13:35:23 GMT  
		Size: 128.5 KB (128530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35e8296baaa139f8d9ca1b200b6ae7167efe0486808054a4830bbcebc4b9439`  
		Last Modified: Sat, 17 Nov 2018 13:35:41 GMT  
		Size: 36.3 MB (36328143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86487fe4e10b1a0941f90df5d1623183083f4a4c16600c9c4994f7d2368a0710`  
		Last Modified: Sat, 17 Nov 2018 13:35:24 GMT  
		Size: 1.1 MB (1073700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812024e9c428735d8f9d28fe4dd3728d015150e98b7bdf5792c065f870ceeb4d`  
		Last Modified: Sun, 18 Nov 2018 01:56:13 GMT  
		Size: 480.6 KB (480561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1735753cf55d21468f115ce8415001ce713fd58b5d035e81cb237e71b51556`  
		Last Modified: Sun, 18 Nov 2018 01:56:21 GMT  
		Size: 17.3 MB (17274035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb050dc4c91da288be91efc585ad5eb9e5adad0deb31995c59220f1ad931d14`  
		Last Modified: Wed, 21 Nov 2018 11:45:43 GMT  
		Size: 89.2 MB (89173739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d596fa945c72ec000e8c96c117949889a3e7be181c5c1b6d0063c2d6c3786eaf`  
		Last Modified: Wed, 21 Nov 2018 11:45:21 GMT  
		Size: 11.2 MB (11215505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c40253f7bb903a2d1f12b869c94a2d19cb3726fa7c3d353d74e2a937f72a505`  
		Last Modified: Wed, 21 Nov 2018 11:45:22 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.6`

```console
$ docker pull ghost@sha256:be995eabd6d10f2a9e1e27a3699d4a4d452ed9607c107a5d6ec457a4b91800fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `ghost:2.6` - linux; amd64

```console
$ docker pull ghost@sha256:ea5631cd1164522580507f275a31c41c17418668f312442d3006be624d846e9b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272564899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dffc1260f5f5e52fd245deee210718fd65278d37d1a4fe8209641568907635fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:07:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 27 Nov 2018 01:54:03 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 01:54:21 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 27 Nov 2018 01:54:21 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 01:54:25 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 27 Nov 2018 01:54:25 GMT
CMD ["node"]
# Tue, 27 Nov 2018 03:49:09 GMT
ENV GOSU_VERSION=1.10
# Tue, 27 Nov 2018 03:49:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 27 Nov 2018 03:49:13 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 03:49:13 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 03:49:32 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 03:49:33 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 03:49:33 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 03:49:33 GMT
ENV GHOST_VERSION=2.6.1
# Tue, 27 Nov 2018 03:50:11 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 27 Nov 2018 03:50:52 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 27 Nov 2018 03:50:53 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 03:50:53 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 03:50:54 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Tue, 27 Nov 2018 03:50:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 03:50:54 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 03:50:55 GMT
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
	-	`sha256:49c9fc371242daedf4d046f5b434eda0b30ace04af380020a86852d0ec936625`  
		Last Modified: Tue, 27 Nov 2018 03:10:12 GMT  
		Size: 28.0 MB (27994657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f588c56e12defb8e208a16caaef6898c66a747c97b7367d843957cf81cb2a0bb`  
		Last Modified: Tue, 27 Nov 2018 03:10:06 GMT  
		Size: 1.3 MB (1310256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0453b67da30f718e94d1ec0c4e6246ee245782d980512cca0dca9515a7eb260`  
		Last Modified: Tue, 27 Nov 2018 03:58:21 GMT  
		Size: 500.9 KB (500918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78cf8054e81b24da0b428849ac087386665c4be52cd250ad74d27e0c031797a`  
		Last Modified: Tue, 27 Nov 2018 03:58:33 GMT  
		Size: 17.3 MB (17289446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29f90f3f1c5c4446261e8e5b3557da9d67482972aa95f233b01ce4bcbe1d05e`  
		Last Modified: Tue, 27 Nov 2018 03:58:58 GMT  
		Size: 110.9 MB (110900036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08312fdfe84a106139ba66eed8810ede51a39cfb835327749a305d4c9b55dec1`  
		Last Modified: Tue, 27 Nov 2018 03:58:57 GMT  
		Size: 92.1 MB (92078602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6086d1e31d0bcc4193165b4aabd8d1c97aab656cbaba93ec356e76df5f4950f9`  
		Last Modified: Tue, 27 Nov 2018 03:58:21 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.6` - linux; arm variant v7

```console
$ docker pull ghost@sha256:a1664fe8db3b3f67b764c230ded3260d82490e6a5a78196dab27ec4841aac7f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.1 MB (267140996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb1ba6afef9127eff533912eab889643b3d16cf2576746006a86f2472fd1644a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:54:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 27 Nov 2018 13:12:49 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 13:13:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 27 Nov 2018 13:13:24 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 13:13:34 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 27 Nov 2018 13:13:35 GMT
CMD ["node"]
# Tue, 27 Nov 2018 13:48:40 GMT
ENV GOSU_VERSION=1.10
# Tue, 27 Nov 2018 13:48:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 27 Nov 2018 13:48:46 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 13:48:46 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 13:49:26 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 13:49:28 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 13:49:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 13:49:29 GMT
ENV GHOST_VERSION=2.6.1
# Tue, 27 Nov 2018 13:51:11 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 27 Nov 2018 13:55:21 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 27 Nov 2018 13:55:31 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 13:55:31 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 13:55:32 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Tue, 27 Nov 2018 13:55:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 13:55:32 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 13:55:33 GMT
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
	-	`sha256:34aa5762fd0b82d9c740f390db51303989c0e6044c5e155b449fba9bbe150524`  
		Last Modified: Tue, 27 Nov 2018 13:21:55 GMT  
		Size: 25.5 MB (25452174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56a199a8f3ec52c065fb76c506624621a32987877c35b41585226cf92aeef9c`  
		Last Modified: Tue, 27 Nov 2018 13:21:46 GMT  
		Size: 1.3 MB (1310269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea81a8b94ecc11c68d0361e9146380822afee0f3c1232b26db6364b63ce8e36`  
		Last Modified: Tue, 27 Nov 2018 14:09:07 GMT  
		Size: 475.4 KB (475431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cfcbea0529e68e48dbce0e8ce2caebad0b032f1716b1934bdf71f7a1816cb35`  
		Last Modified: Tue, 27 Nov 2018 14:09:17 GMT  
		Size: 17.3 MB (17290871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816994f8095b25f3a7446a16bf6c2905ff5ef16d72f24788c9db7a81e782b502`  
		Last Modified: Tue, 27 Nov 2018 14:09:50 GMT  
		Size: 96.1 MB (96066565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e75f7cb5b708224c3f82d38e80b7948367cc0050f0abf18b10c910b055e5753`  
		Last Modified: Tue, 27 Nov 2018 14:09:51 GMT  
		Size: 107.3 MB (107270907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd25c1fb92309cab14f4a4ee07c128ea4f35fdeb382f29424fe8a126bafc65d`  
		Last Modified: Tue, 27 Nov 2018 14:09:06 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.6` - linux; 386

```console
$ docker pull ghost@sha256:fa4a8f8140e3ac0e6a005e2d3ac9bbbff6d1b32e34e52d7e8353bc90aa56048d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.0 MB (185961349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd9dbfaa0b95c4380c0ab5acacccfd047919ba68c8658cbf02c3c098aaf09a49`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:27:08 GMT
ADD file:78e67c3bd2a85f8b06939a282c118818f354e8a045ae81ac223bbd8fd5a25ded in / 
# Fri, 16 Nov 2018 12:27:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 13:22:55 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 17 Nov 2018 13:22:57 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 17 Nov 2018 13:22:57 GMT
ENV NODE_VERSION=8.12.0
# Sat, 17 Nov 2018 13:24:17 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 17 Nov 2018 13:24:17 GMT
ENV YARN_VERSION=1.9.4
# Sat, 17 Nov 2018 13:24:20 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 17 Nov 2018 13:24:20 GMT
CMD ["node"]
# Sun, 18 Nov 2018 01:44:41 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Nov 2018 01:44:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Nov 2018 01:44:43 GMT
ENV NODE_ENV=production
# Sun, 18 Nov 2018 01:44:43 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Sun, 18 Nov 2018 01:45:03 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sun, 18 Nov 2018 01:45:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sun, 18 Nov 2018 01:45:04 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 21 Nov 2018 11:40:29 GMT
ENV GHOST_VERSION=2.6.1
# Wed, 21 Nov 2018 11:41:09 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 21 Nov 2018 11:43:20 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 21 Nov 2018 11:43:20 GMT
WORKDIR /var/lib/ghost
# Wed, 21 Nov 2018 11:43:21 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 21 Nov 2018 11:43:21 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Wed, 21 Nov 2018 11:43:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Nov 2018 11:43:21 GMT
EXPOSE 2368/tcp
# Wed, 21 Nov 2018 11:43:22 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:4fc8853513e9198532eb2940ed4ae33d09cbcad2272302e350fd7078f82dd9c7`  
		Last Modified: Sat, 17 Nov 2018 13:35:23 GMT  
		Size: 128.5 KB (128530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35e8296baaa139f8d9ca1b200b6ae7167efe0486808054a4830bbcebc4b9439`  
		Last Modified: Sat, 17 Nov 2018 13:35:41 GMT  
		Size: 36.3 MB (36328143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86487fe4e10b1a0941f90df5d1623183083f4a4c16600c9c4994f7d2368a0710`  
		Last Modified: Sat, 17 Nov 2018 13:35:24 GMT  
		Size: 1.1 MB (1073700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812024e9c428735d8f9d28fe4dd3728d015150e98b7bdf5792c065f870ceeb4d`  
		Last Modified: Sun, 18 Nov 2018 01:56:13 GMT  
		Size: 480.6 KB (480561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1735753cf55d21468f115ce8415001ce713fd58b5d035e81cb237e71b51556`  
		Last Modified: Sun, 18 Nov 2018 01:56:21 GMT  
		Size: 17.3 MB (17274035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb050dc4c91da288be91efc585ad5eb9e5adad0deb31995c59220f1ad931d14`  
		Last Modified: Wed, 21 Nov 2018 11:45:43 GMT  
		Size: 89.2 MB (89173739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d596fa945c72ec000e8c96c117949889a3e7be181c5c1b6d0063c2d6c3786eaf`  
		Last Modified: Wed, 21 Nov 2018 11:45:21 GMT  
		Size: 11.2 MB (11215505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c40253f7bb903a2d1f12b869c94a2d19cb3726fa7c3d353d74e2a937f72a505`  
		Last Modified: Wed, 21 Nov 2018 11:45:22 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.6.1`

```console
$ docker pull ghost@sha256:be995eabd6d10f2a9e1e27a3699d4a4d452ed9607c107a5d6ec457a4b91800fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `ghost:2.6.1` - linux; amd64

```console
$ docker pull ghost@sha256:ea5631cd1164522580507f275a31c41c17418668f312442d3006be624d846e9b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272564899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dffc1260f5f5e52fd245deee210718fd65278d37d1a4fe8209641568907635fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:07:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 27 Nov 2018 01:54:03 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 01:54:21 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 27 Nov 2018 01:54:21 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 01:54:25 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 27 Nov 2018 01:54:25 GMT
CMD ["node"]
# Tue, 27 Nov 2018 03:49:09 GMT
ENV GOSU_VERSION=1.10
# Tue, 27 Nov 2018 03:49:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 27 Nov 2018 03:49:13 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 03:49:13 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 03:49:32 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 03:49:33 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 03:49:33 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 03:49:33 GMT
ENV GHOST_VERSION=2.6.1
# Tue, 27 Nov 2018 03:50:11 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 27 Nov 2018 03:50:52 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 27 Nov 2018 03:50:53 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 03:50:53 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 03:50:54 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Tue, 27 Nov 2018 03:50:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 03:50:54 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 03:50:55 GMT
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
	-	`sha256:49c9fc371242daedf4d046f5b434eda0b30ace04af380020a86852d0ec936625`  
		Last Modified: Tue, 27 Nov 2018 03:10:12 GMT  
		Size: 28.0 MB (27994657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f588c56e12defb8e208a16caaef6898c66a747c97b7367d843957cf81cb2a0bb`  
		Last Modified: Tue, 27 Nov 2018 03:10:06 GMT  
		Size: 1.3 MB (1310256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0453b67da30f718e94d1ec0c4e6246ee245782d980512cca0dca9515a7eb260`  
		Last Modified: Tue, 27 Nov 2018 03:58:21 GMT  
		Size: 500.9 KB (500918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78cf8054e81b24da0b428849ac087386665c4be52cd250ad74d27e0c031797a`  
		Last Modified: Tue, 27 Nov 2018 03:58:33 GMT  
		Size: 17.3 MB (17289446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29f90f3f1c5c4446261e8e5b3557da9d67482972aa95f233b01ce4bcbe1d05e`  
		Last Modified: Tue, 27 Nov 2018 03:58:58 GMT  
		Size: 110.9 MB (110900036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08312fdfe84a106139ba66eed8810ede51a39cfb835327749a305d4c9b55dec1`  
		Last Modified: Tue, 27 Nov 2018 03:58:57 GMT  
		Size: 92.1 MB (92078602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6086d1e31d0bcc4193165b4aabd8d1c97aab656cbaba93ec356e76df5f4950f9`  
		Last Modified: Tue, 27 Nov 2018 03:58:21 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.6.1` - linux; arm variant v7

```console
$ docker pull ghost@sha256:a1664fe8db3b3f67b764c230ded3260d82490e6a5a78196dab27ec4841aac7f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.1 MB (267140996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb1ba6afef9127eff533912eab889643b3d16cf2576746006a86f2472fd1644a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:54:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 27 Nov 2018 13:12:49 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 13:13:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 27 Nov 2018 13:13:24 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 13:13:34 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 27 Nov 2018 13:13:35 GMT
CMD ["node"]
# Tue, 27 Nov 2018 13:48:40 GMT
ENV GOSU_VERSION=1.10
# Tue, 27 Nov 2018 13:48:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 27 Nov 2018 13:48:46 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 13:48:46 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 13:49:26 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 13:49:28 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 13:49:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 13:49:29 GMT
ENV GHOST_VERSION=2.6.1
# Tue, 27 Nov 2018 13:51:11 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 27 Nov 2018 13:55:21 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 27 Nov 2018 13:55:31 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 13:55:31 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 13:55:32 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Tue, 27 Nov 2018 13:55:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 13:55:32 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 13:55:33 GMT
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
	-	`sha256:34aa5762fd0b82d9c740f390db51303989c0e6044c5e155b449fba9bbe150524`  
		Last Modified: Tue, 27 Nov 2018 13:21:55 GMT  
		Size: 25.5 MB (25452174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56a199a8f3ec52c065fb76c506624621a32987877c35b41585226cf92aeef9c`  
		Last Modified: Tue, 27 Nov 2018 13:21:46 GMT  
		Size: 1.3 MB (1310269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea81a8b94ecc11c68d0361e9146380822afee0f3c1232b26db6364b63ce8e36`  
		Last Modified: Tue, 27 Nov 2018 14:09:07 GMT  
		Size: 475.4 KB (475431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cfcbea0529e68e48dbce0e8ce2caebad0b032f1716b1934bdf71f7a1816cb35`  
		Last Modified: Tue, 27 Nov 2018 14:09:17 GMT  
		Size: 17.3 MB (17290871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816994f8095b25f3a7446a16bf6c2905ff5ef16d72f24788c9db7a81e782b502`  
		Last Modified: Tue, 27 Nov 2018 14:09:50 GMT  
		Size: 96.1 MB (96066565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e75f7cb5b708224c3f82d38e80b7948367cc0050f0abf18b10c910b055e5753`  
		Last Modified: Tue, 27 Nov 2018 14:09:51 GMT  
		Size: 107.3 MB (107270907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd25c1fb92309cab14f4a4ee07c128ea4f35fdeb382f29424fe8a126bafc65d`  
		Last Modified: Tue, 27 Nov 2018 14:09:06 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.6.1` - linux; 386

```console
$ docker pull ghost@sha256:fa4a8f8140e3ac0e6a005e2d3ac9bbbff6d1b32e34e52d7e8353bc90aa56048d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.0 MB (185961349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd9dbfaa0b95c4380c0ab5acacccfd047919ba68c8658cbf02c3c098aaf09a49`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:27:08 GMT
ADD file:78e67c3bd2a85f8b06939a282c118818f354e8a045ae81ac223bbd8fd5a25ded in / 
# Fri, 16 Nov 2018 12:27:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 13:22:55 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 17 Nov 2018 13:22:57 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 17 Nov 2018 13:22:57 GMT
ENV NODE_VERSION=8.12.0
# Sat, 17 Nov 2018 13:24:17 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 17 Nov 2018 13:24:17 GMT
ENV YARN_VERSION=1.9.4
# Sat, 17 Nov 2018 13:24:20 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 17 Nov 2018 13:24:20 GMT
CMD ["node"]
# Sun, 18 Nov 2018 01:44:41 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Nov 2018 01:44:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Nov 2018 01:44:43 GMT
ENV NODE_ENV=production
# Sun, 18 Nov 2018 01:44:43 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Sun, 18 Nov 2018 01:45:03 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sun, 18 Nov 2018 01:45:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sun, 18 Nov 2018 01:45:04 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 21 Nov 2018 11:40:29 GMT
ENV GHOST_VERSION=2.6.1
# Wed, 21 Nov 2018 11:41:09 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 21 Nov 2018 11:43:20 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 21 Nov 2018 11:43:20 GMT
WORKDIR /var/lib/ghost
# Wed, 21 Nov 2018 11:43:21 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 21 Nov 2018 11:43:21 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Wed, 21 Nov 2018 11:43:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Nov 2018 11:43:21 GMT
EXPOSE 2368/tcp
# Wed, 21 Nov 2018 11:43:22 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:4fc8853513e9198532eb2940ed4ae33d09cbcad2272302e350fd7078f82dd9c7`  
		Last Modified: Sat, 17 Nov 2018 13:35:23 GMT  
		Size: 128.5 KB (128530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35e8296baaa139f8d9ca1b200b6ae7167efe0486808054a4830bbcebc4b9439`  
		Last Modified: Sat, 17 Nov 2018 13:35:41 GMT  
		Size: 36.3 MB (36328143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86487fe4e10b1a0941f90df5d1623183083f4a4c16600c9c4994f7d2368a0710`  
		Last Modified: Sat, 17 Nov 2018 13:35:24 GMT  
		Size: 1.1 MB (1073700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812024e9c428735d8f9d28fe4dd3728d015150e98b7bdf5792c065f870ceeb4d`  
		Last Modified: Sun, 18 Nov 2018 01:56:13 GMT  
		Size: 480.6 KB (480561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1735753cf55d21468f115ce8415001ce713fd58b5d035e81cb237e71b51556`  
		Last Modified: Sun, 18 Nov 2018 01:56:21 GMT  
		Size: 17.3 MB (17274035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb050dc4c91da288be91efc585ad5eb9e5adad0deb31995c59220f1ad931d14`  
		Last Modified: Wed, 21 Nov 2018 11:45:43 GMT  
		Size: 89.2 MB (89173739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d596fa945c72ec000e8c96c117949889a3e7be181c5c1b6d0063c2d6c3786eaf`  
		Last Modified: Wed, 21 Nov 2018 11:45:21 GMT  
		Size: 11.2 MB (11215505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c40253f7bb903a2d1f12b869c94a2d19cb3726fa7c3d353d74e2a937f72a505`  
		Last Modified: Wed, 21 Nov 2018 11:45:22 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.6.1-alpine`

```console
$ docker pull ghost@sha256:278be7000e9c8e6f44cd6dfcc8b70c6b2e6d55b8605265213815cc25e7860ef0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:2.6.1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:4d30480fdf84dfdb94ec783619af949f26413593fd4af1dd3869ecbcdf78ce74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.7 MB (152668272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74a5e05f88a12c0ee87e032fb5ac914e11e4ac2d89af1514f921a0eb548885ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 27 Nov 2018 01:29:14 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 01:53:28 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 27 Nov 2018 01:53:29 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 01:53:33 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 27 Nov 2018 01:53:33 GMT
CMD ["node"]
# Tue, 27 Nov 2018 03:51:24 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Nov 2018 03:51:25 GMT
RUN apk add --no-cache 		bash
# Tue, 27 Nov 2018 03:51:25 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 03:51:26 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 03:51:44 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 03:51:45 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 03:51:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 03:51:45 GMT
ENV GHOST_VERSION=2.6.1
# Tue, 27 Nov 2018 03:52:19 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 27 Nov 2018 03:52:21 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 03:52:21 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 03:52:21 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Tue, 27 Nov 2018 03:52:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 03:52:22 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 03:52:22 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4100456d729e7a0fc25c44963cd65fe83ab909c9d54b320d8f72e74b11057d4f`  
		Last Modified: Tue, 27 Nov 2018 03:09:03 GMT  
		Size: 18.9 MB (18858960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0140f4542cf5a1a1317695975b4edae06063b76669609ce34d3e6eaf478e39db`  
		Last Modified: Tue, 27 Nov 2018 03:08:58 GMT  
		Size: 1.3 MB (1317213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa56fa28fdc96e9f54dcb28827fa75cec6a752ac6dac0420ca1a14e10c71abb0`  
		Last Modified: Tue, 27 Nov 2018 04:00:00 GMT  
		Size: 9.4 KB (9399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce057720d08870aa7bc3124133d6b5adef77782b8631866c105039eb93fe8e5b`  
		Last Modified: Tue, 27 Nov 2018 04:00:01 GMT  
		Size: 1.2 MB (1173414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318b04b2e8858735c0e91cf51c7bdfbd506eb286c1b1fbaa4a74950d9499fd5b`  
		Last Modified: Tue, 27 Nov 2018 04:00:10 GMT  
		Size: 17.3 MB (17288800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e891d20aa3ca7f9891149ac6ef9d39ac6ced8fed18279695e2853432f8858a`  
		Last Modified: Tue, 27 Nov 2018 04:00:34 GMT  
		Size: 111.8 MB (111813010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0fc53f2f207e1d47ee4b911ab3af78ef8dba02c36fbeee2f743b9ce2df8a01f`  
		Last Modified: Tue, 27 Nov 2018 04:00:00 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.6.1-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:8149627fe6e7b3ac0f5e6dcd0b3178b26f4a9d458d7d2bd1cca965e9f1c4c241
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128885645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dd1bc99cf3125ab4356cb07a0514c5755634e7e6870f246eaaedce1f59f8ad2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Tue, 27 Nov 2018 08:52:10 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 08:55:45 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 27 Nov 2018 08:55:45 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 08:55:51 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 27 Nov 2018 08:55:51 GMT
CMD ["node"]
# Tue, 27 Nov 2018 09:24:01 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Nov 2018 09:24:04 GMT
RUN apk add --no-cache 		bash
# Tue, 27 Nov 2018 09:24:04 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 09:24:05 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 09:24:45 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 09:24:47 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 09:24:47 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 09:24:48 GMT
ENV GHOST_VERSION=2.6.1
# Tue, 27 Nov 2018 09:26:22 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 27 Nov 2018 09:26:26 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 09:26:26 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 09:26:27 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Tue, 27 Nov 2018 09:26:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 09:26:27 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 09:26:28 GMT
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
	-	`sha256:e34b6435578b93a1110f1451b0db1a969c675bb4407b942f2aeb618d9f8cc67a`  
		Last Modified: Tue, 27 Nov 2018 09:07:22 GMT  
		Size: 17.8 MB (17819429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29cb6c00e1ef26a3ddd761e1abd98e9c880da9a6fde739da0fba31c008f1427e`  
		Last Modified: Tue, 27 Nov 2018 09:07:16 GMT  
		Size: 1.3 MB (1317233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c93698f9770e2124b11c9d617b78b2debc0e47ffcac583e0da9bb1fd213e812`  
		Last Modified: Tue, 27 Nov 2018 09:28:27 GMT  
		Size: 9.3 KB (9333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e9b52bb8279767d072ee36ee1a6eaf23d436b20c0faabde4a3aff32eebbce8`  
		Last Modified: Tue, 27 Nov 2018 09:28:27 GMT  
		Size: 1.1 MB (1127578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7dc237585a3e09405ea8e6f184f28301cf59a71f31c48b9e780462e1185d57`  
		Last Modified: Tue, 27 Nov 2018 09:28:36 GMT  
		Size: 17.3 MB (17290707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ef34b5b2ef696b94b9888eee76a6d87dbba646375fab2b4bd1566c4edbaec5`  
		Last Modified: Tue, 27 Nov 2018 09:29:04 GMT  
		Size: 89.2 MB (89174192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918ee61d2b12f9cb1e84711bc946519047f20b3b58e63b3be8e07b13834b970b`  
		Last Modified: Tue, 27 Nov 2018 09:28:27 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.6.1-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:ccf6903c7360378b04500964300a64dba13debb77f587c3b44514a70b26b0e27
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129812925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18eddd36e7b55074793f6a58fee7f9d38ee43213cbe0bff3137ce6443c6acdd2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Tue, 27 Nov 2018 10:55:43 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 11:04:35 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 27 Nov 2018 11:09:04 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 11:09:18 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 27 Nov 2018 11:09:19 GMT
CMD ["node"]
# Tue, 27 Nov 2018 13:13:58 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Nov 2018 13:14:13 GMT
RUN apk add --no-cache 		bash
# Tue, 27 Nov 2018 13:14:26 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 13:14:28 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 13:15:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 13:15:30 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 13:17:32 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 13:17:33 GMT
ENV GHOST_VERSION=2.6.1
# Tue, 27 Nov 2018 13:19:25 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 27 Nov 2018 13:23:21 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 13:29:01 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 13:29:02 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Tue, 27 Nov 2018 13:29:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 13:29:05 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 13:29:06 GMT
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
	-	`sha256:4fd15e708d9e2073708b80a7d6c70f1a79bb0cc818f695e7957447abc9003baf`  
		Last Modified: Tue, 27 Nov 2018 12:08:52 GMT  
		Size: 18.6 MB (18632830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ff065c37e8d99ec92a0db2f5598173c637c5bb488365a24f9f544eedc3a530`  
		Last Modified: Tue, 27 Nov 2018 12:08:40 GMT  
		Size: 1.3 MB (1317249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8234ae08c21afae51c5103bdc9d6a30e220869b3a791f0af4f507586122a758`  
		Last Modified: Tue, 27 Nov 2018 13:42:20 GMT  
		Size: 9.8 KB (9847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09330e47f232232ae2117dc7514be962764254707ebadd789d638b1c29b3c54f`  
		Last Modified: Tue, 27 Nov 2018 13:42:23 GMT  
		Size: 1.2 MB (1188827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c132f3581a4a470ce55a281a2fb73f8a7cb5b13247d65fdbed585d237143b30`  
		Last Modified: Tue, 27 Nov 2018 13:42:45 GMT  
		Size: 17.3 MB (17290736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011b92db2bc4ccf8b364c635c3832f10d0c6ad08db36987139c0febcd561465d`  
		Last Modified: Tue, 27 Nov 2018 13:43:28 GMT  
		Size: 89.2 MB (89177490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bcbc61adf97e3331ac87231c110573caafd1e10a36327e1f81a5291a92b84f`  
		Last Modified: Tue, 27 Nov 2018 13:42:20 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.6-alpine`

```console
$ docker pull ghost@sha256:278be7000e9c8e6f44cd6dfcc8b70c6b2e6d55b8605265213815cc25e7860ef0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:2.6-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:4d30480fdf84dfdb94ec783619af949f26413593fd4af1dd3869ecbcdf78ce74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.7 MB (152668272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74a5e05f88a12c0ee87e032fb5ac914e11e4ac2d89af1514f921a0eb548885ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 27 Nov 2018 01:29:14 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 01:53:28 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 27 Nov 2018 01:53:29 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 01:53:33 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 27 Nov 2018 01:53:33 GMT
CMD ["node"]
# Tue, 27 Nov 2018 03:51:24 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Nov 2018 03:51:25 GMT
RUN apk add --no-cache 		bash
# Tue, 27 Nov 2018 03:51:25 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 03:51:26 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 03:51:44 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 03:51:45 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 03:51:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 03:51:45 GMT
ENV GHOST_VERSION=2.6.1
# Tue, 27 Nov 2018 03:52:19 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 27 Nov 2018 03:52:21 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 03:52:21 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 03:52:21 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Tue, 27 Nov 2018 03:52:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 03:52:22 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 03:52:22 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4100456d729e7a0fc25c44963cd65fe83ab909c9d54b320d8f72e74b11057d4f`  
		Last Modified: Tue, 27 Nov 2018 03:09:03 GMT  
		Size: 18.9 MB (18858960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0140f4542cf5a1a1317695975b4edae06063b76669609ce34d3e6eaf478e39db`  
		Last Modified: Tue, 27 Nov 2018 03:08:58 GMT  
		Size: 1.3 MB (1317213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa56fa28fdc96e9f54dcb28827fa75cec6a752ac6dac0420ca1a14e10c71abb0`  
		Last Modified: Tue, 27 Nov 2018 04:00:00 GMT  
		Size: 9.4 KB (9399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce057720d08870aa7bc3124133d6b5adef77782b8631866c105039eb93fe8e5b`  
		Last Modified: Tue, 27 Nov 2018 04:00:01 GMT  
		Size: 1.2 MB (1173414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318b04b2e8858735c0e91cf51c7bdfbd506eb286c1b1fbaa4a74950d9499fd5b`  
		Last Modified: Tue, 27 Nov 2018 04:00:10 GMT  
		Size: 17.3 MB (17288800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e891d20aa3ca7f9891149ac6ef9d39ac6ced8fed18279695e2853432f8858a`  
		Last Modified: Tue, 27 Nov 2018 04:00:34 GMT  
		Size: 111.8 MB (111813010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0fc53f2f207e1d47ee4b911ab3af78ef8dba02c36fbeee2f743b9ce2df8a01f`  
		Last Modified: Tue, 27 Nov 2018 04:00:00 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.6-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:8149627fe6e7b3ac0f5e6dcd0b3178b26f4a9d458d7d2bd1cca965e9f1c4c241
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128885645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dd1bc99cf3125ab4356cb07a0514c5755634e7e6870f246eaaedce1f59f8ad2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Tue, 27 Nov 2018 08:52:10 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 08:55:45 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 27 Nov 2018 08:55:45 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 08:55:51 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 27 Nov 2018 08:55:51 GMT
CMD ["node"]
# Tue, 27 Nov 2018 09:24:01 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Nov 2018 09:24:04 GMT
RUN apk add --no-cache 		bash
# Tue, 27 Nov 2018 09:24:04 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 09:24:05 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 09:24:45 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 09:24:47 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 09:24:47 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 09:24:48 GMT
ENV GHOST_VERSION=2.6.1
# Tue, 27 Nov 2018 09:26:22 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 27 Nov 2018 09:26:26 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 09:26:26 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 09:26:27 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Tue, 27 Nov 2018 09:26:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 09:26:27 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 09:26:28 GMT
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
	-	`sha256:e34b6435578b93a1110f1451b0db1a969c675bb4407b942f2aeb618d9f8cc67a`  
		Last Modified: Tue, 27 Nov 2018 09:07:22 GMT  
		Size: 17.8 MB (17819429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29cb6c00e1ef26a3ddd761e1abd98e9c880da9a6fde739da0fba31c008f1427e`  
		Last Modified: Tue, 27 Nov 2018 09:07:16 GMT  
		Size: 1.3 MB (1317233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c93698f9770e2124b11c9d617b78b2debc0e47ffcac583e0da9bb1fd213e812`  
		Last Modified: Tue, 27 Nov 2018 09:28:27 GMT  
		Size: 9.3 KB (9333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e9b52bb8279767d072ee36ee1a6eaf23d436b20c0faabde4a3aff32eebbce8`  
		Last Modified: Tue, 27 Nov 2018 09:28:27 GMT  
		Size: 1.1 MB (1127578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7dc237585a3e09405ea8e6f184f28301cf59a71f31c48b9e780462e1185d57`  
		Last Modified: Tue, 27 Nov 2018 09:28:36 GMT  
		Size: 17.3 MB (17290707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ef34b5b2ef696b94b9888eee76a6d87dbba646375fab2b4bd1566c4edbaec5`  
		Last Modified: Tue, 27 Nov 2018 09:29:04 GMT  
		Size: 89.2 MB (89174192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918ee61d2b12f9cb1e84711bc946519047f20b3b58e63b3be8e07b13834b970b`  
		Last Modified: Tue, 27 Nov 2018 09:28:27 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.6-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:ccf6903c7360378b04500964300a64dba13debb77f587c3b44514a70b26b0e27
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129812925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18eddd36e7b55074793f6a58fee7f9d38ee43213cbe0bff3137ce6443c6acdd2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Tue, 27 Nov 2018 10:55:43 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 11:04:35 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 27 Nov 2018 11:09:04 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 11:09:18 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 27 Nov 2018 11:09:19 GMT
CMD ["node"]
# Tue, 27 Nov 2018 13:13:58 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Nov 2018 13:14:13 GMT
RUN apk add --no-cache 		bash
# Tue, 27 Nov 2018 13:14:26 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 13:14:28 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 13:15:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 13:15:30 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 13:17:32 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 13:17:33 GMT
ENV GHOST_VERSION=2.6.1
# Tue, 27 Nov 2018 13:19:25 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 27 Nov 2018 13:23:21 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 13:29:01 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 13:29:02 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Tue, 27 Nov 2018 13:29:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 13:29:05 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 13:29:06 GMT
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
	-	`sha256:4fd15e708d9e2073708b80a7d6c70f1a79bb0cc818f695e7957447abc9003baf`  
		Last Modified: Tue, 27 Nov 2018 12:08:52 GMT  
		Size: 18.6 MB (18632830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ff065c37e8d99ec92a0db2f5598173c637c5bb488365a24f9f544eedc3a530`  
		Last Modified: Tue, 27 Nov 2018 12:08:40 GMT  
		Size: 1.3 MB (1317249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8234ae08c21afae51c5103bdc9d6a30e220869b3a791f0af4f507586122a758`  
		Last Modified: Tue, 27 Nov 2018 13:42:20 GMT  
		Size: 9.8 KB (9847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09330e47f232232ae2117dc7514be962764254707ebadd789d638b1c29b3c54f`  
		Last Modified: Tue, 27 Nov 2018 13:42:23 GMT  
		Size: 1.2 MB (1188827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c132f3581a4a470ce55a281a2fb73f8a7cb5b13247d65fdbed585d237143b30`  
		Last Modified: Tue, 27 Nov 2018 13:42:45 GMT  
		Size: 17.3 MB (17290736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011b92db2bc4ccf8b364c635c3832f10d0c6ad08db36987139c0febcd561465d`  
		Last Modified: Tue, 27 Nov 2018 13:43:28 GMT  
		Size: 89.2 MB (89177490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bcbc61adf97e3331ac87231c110573caafd1e10a36327e1f81a5291a92b84f`  
		Last Modified: Tue, 27 Nov 2018 13:42:20 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2-alpine`

```console
$ docker pull ghost@sha256:278be7000e9c8e6f44cd6dfcc8b70c6b2e6d55b8605265213815cc25e7860ef0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:2-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:4d30480fdf84dfdb94ec783619af949f26413593fd4af1dd3869ecbcdf78ce74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.7 MB (152668272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74a5e05f88a12c0ee87e032fb5ac914e11e4ac2d89af1514f921a0eb548885ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 27 Nov 2018 01:29:14 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 01:53:28 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 27 Nov 2018 01:53:29 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 01:53:33 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 27 Nov 2018 01:53:33 GMT
CMD ["node"]
# Tue, 27 Nov 2018 03:51:24 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Nov 2018 03:51:25 GMT
RUN apk add --no-cache 		bash
# Tue, 27 Nov 2018 03:51:25 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 03:51:26 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 03:51:44 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 03:51:45 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 03:51:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 03:51:45 GMT
ENV GHOST_VERSION=2.6.1
# Tue, 27 Nov 2018 03:52:19 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 27 Nov 2018 03:52:21 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 03:52:21 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 03:52:21 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Tue, 27 Nov 2018 03:52:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 03:52:22 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 03:52:22 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4100456d729e7a0fc25c44963cd65fe83ab909c9d54b320d8f72e74b11057d4f`  
		Last Modified: Tue, 27 Nov 2018 03:09:03 GMT  
		Size: 18.9 MB (18858960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0140f4542cf5a1a1317695975b4edae06063b76669609ce34d3e6eaf478e39db`  
		Last Modified: Tue, 27 Nov 2018 03:08:58 GMT  
		Size: 1.3 MB (1317213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa56fa28fdc96e9f54dcb28827fa75cec6a752ac6dac0420ca1a14e10c71abb0`  
		Last Modified: Tue, 27 Nov 2018 04:00:00 GMT  
		Size: 9.4 KB (9399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce057720d08870aa7bc3124133d6b5adef77782b8631866c105039eb93fe8e5b`  
		Last Modified: Tue, 27 Nov 2018 04:00:01 GMT  
		Size: 1.2 MB (1173414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318b04b2e8858735c0e91cf51c7bdfbd506eb286c1b1fbaa4a74950d9499fd5b`  
		Last Modified: Tue, 27 Nov 2018 04:00:10 GMT  
		Size: 17.3 MB (17288800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e891d20aa3ca7f9891149ac6ef9d39ac6ced8fed18279695e2853432f8858a`  
		Last Modified: Tue, 27 Nov 2018 04:00:34 GMT  
		Size: 111.8 MB (111813010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0fc53f2f207e1d47ee4b911ab3af78ef8dba02c36fbeee2f743b9ce2df8a01f`  
		Last Modified: Tue, 27 Nov 2018 04:00:00 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:8149627fe6e7b3ac0f5e6dcd0b3178b26f4a9d458d7d2bd1cca965e9f1c4c241
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128885645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dd1bc99cf3125ab4356cb07a0514c5755634e7e6870f246eaaedce1f59f8ad2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Tue, 27 Nov 2018 08:52:10 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 08:55:45 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 27 Nov 2018 08:55:45 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 08:55:51 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 27 Nov 2018 08:55:51 GMT
CMD ["node"]
# Tue, 27 Nov 2018 09:24:01 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Nov 2018 09:24:04 GMT
RUN apk add --no-cache 		bash
# Tue, 27 Nov 2018 09:24:04 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 09:24:05 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 09:24:45 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 09:24:47 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 09:24:47 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 09:24:48 GMT
ENV GHOST_VERSION=2.6.1
# Tue, 27 Nov 2018 09:26:22 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 27 Nov 2018 09:26:26 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 09:26:26 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 09:26:27 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Tue, 27 Nov 2018 09:26:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 09:26:27 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 09:26:28 GMT
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
	-	`sha256:e34b6435578b93a1110f1451b0db1a969c675bb4407b942f2aeb618d9f8cc67a`  
		Last Modified: Tue, 27 Nov 2018 09:07:22 GMT  
		Size: 17.8 MB (17819429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29cb6c00e1ef26a3ddd761e1abd98e9c880da9a6fde739da0fba31c008f1427e`  
		Last Modified: Tue, 27 Nov 2018 09:07:16 GMT  
		Size: 1.3 MB (1317233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c93698f9770e2124b11c9d617b78b2debc0e47ffcac583e0da9bb1fd213e812`  
		Last Modified: Tue, 27 Nov 2018 09:28:27 GMT  
		Size: 9.3 KB (9333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e9b52bb8279767d072ee36ee1a6eaf23d436b20c0faabde4a3aff32eebbce8`  
		Last Modified: Tue, 27 Nov 2018 09:28:27 GMT  
		Size: 1.1 MB (1127578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7dc237585a3e09405ea8e6f184f28301cf59a71f31c48b9e780462e1185d57`  
		Last Modified: Tue, 27 Nov 2018 09:28:36 GMT  
		Size: 17.3 MB (17290707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ef34b5b2ef696b94b9888eee76a6d87dbba646375fab2b4bd1566c4edbaec5`  
		Last Modified: Tue, 27 Nov 2018 09:29:04 GMT  
		Size: 89.2 MB (89174192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918ee61d2b12f9cb1e84711bc946519047f20b3b58e63b3be8e07b13834b970b`  
		Last Modified: Tue, 27 Nov 2018 09:28:27 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:ccf6903c7360378b04500964300a64dba13debb77f587c3b44514a70b26b0e27
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129812925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18eddd36e7b55074793f6a58fee7f9d38ee43213cbe0bff3137ce6443c6acdd2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Tue, 27 Nov 2018 10:55:43 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 11:04:35 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 27 Nov 2018 11:09:04 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 11:09:18 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 27 Nov 2018 11:09:19 GMT
CMD ["node"]
# Tue, 27 Nov 2018 13:13:58 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Nov 2018 13:14:13 GMT
RUN apk add --no-cache 		bash
# Tue, 27 Nov 2018 13:14:26 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 13:14:28 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 13:15:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 13:15:30 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 13:17:32 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 13:17:33 GMT
ENV GHOST_VERSION=2.6.1
# Tue, 27 Nov 2018 13:19:25 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 27 Nov 2018 13:23:21 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 13:29:01 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 13:29:02 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Tue, 27 Nov 2018 13:29:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 13:29:05 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 13:29:06 GMT
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
	-	`sha256:4fd15e708d9e2073708b80a7d6c70f1a79bb0cc818f695e7957447abc9003baf`  
		Last Modified: Tue, 27 Nov 2018 12:08:52 GMT  
		Size: 18.6 MB (18632830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ff065c37e8d99ec92a0db2f5598173c637c5bb488365a24f9f544eedc3a530`  
		Last Modified: Tue, 27 Nov 2018 12:08:40 GMT  
		Size: 1.3 MB (1317249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8234ae08c21afae51c5103bdc9d6a30e220869b3a791f0af4f507586122a758`  
		Last Modified: Tue, 27 Nov 2018 13:42:20 GMT  
		Size: 9.8 KB (9847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09330e47f232232ae2117dc7514be962764254707ebadd789d638b1c29b3c54f`  
		Last Modified: Tue, 27 Nov 2018 13:42:23 GMT  
		Size: 1.2 MB (1188827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c132f3581a4a470ce55a281a2fb73f8a7cb5b13247d65fdbed585d237143b30`  
		Last Modified: Tue, 27 Nov 2018 13:42:45 GMT  
		Size: 17.3 MB (17290736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011b92db2bc4ccf8b364c635c3832f10d0c6ad08db36987139c0febcd561465d`  
		Last Modified: Tue, 27 Nov 2018 13:43:28 GMT  
		Size: 89.2 MB (89177490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bcbc61adf97e3331ac87231c110573caafd1e10a36327e1f81a5291a92b84f`  
		Last Modified: Tue, 27 Nov 2018 13:42:20 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:278be7000e9c8e6f44cd6dfcc8b70c6b2e6d55b8605265213815cc25e7860ef0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:4d30480fdf84dfdb94ec783619af949f26413593fd4af1dd3869ecbcdf78ce74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.7 MB (152668272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74a5e05f88a12c0ee87e032fb5ac914e11e4ac2d89af1514f921a0eb548885ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 27 Nov 2018 01:29:14 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 01:53:28 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 27 Nov 2018 01:53:29 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 01:53:33 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 27 Nov 2018 01:53:33 GMT
CMD ["node"]
# Tue, 27 Nov 2018 03:51:24 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Nov 2018 03:51:25 GMT
RUN apk add --no-cache 		bash
# Tue, 27 Nov 2018 03:51:25 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 03:51:26 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 03:51:44 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 03:51:45 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 03:51:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 03:51:45 GMT
ENV GHOST_VERSION=2.6.1
# Tue, 27 Nov 2018 03:52:19 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 27 Nov 2018 03:52:21 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 03:52:21 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 03:52:21 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Tue, 27 Nov 2018 03:52:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 03:52:22 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 03:52:22 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4100456d729e7a0fc25c44963cd65fe83ab909c9d54b320d8f72e74b11057d4f`  
		Last Modified: Tue, 27 Nov 2018 03:09:03 GMT  
		Size: 18.9 MB (18858960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0140f4542cf5a1a1317695975b4edae06063b76669609ce34d3e6eaf478e39db`  
		Last Modified: Tue, 27 Nov 2018 03:08:58 GMT  
		Size: 1.3 MB (1317213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa56fa28fdc96e9f54dcb28827fa75cec6a752ac6dac0420ca1a14e10c71abb0`  
		Last Modified: Tue, 27 Nov 2018 04:00:00 GMT  
		Size: 9.4 KB (9399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce057720d08870aa7bc3124133d6b5adef77782b8631866c105039eb93fe8e5b`  
		Last Modified: Tue, 27 Nov 2018 04:00:01 GMT  
		Size: 1.2 MB (1173414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318b04b2e8858735c0e91cf51c7bdfbd506eb286c1b1fbaa4a74950d9499fd5b`  
		Last Modified: Tue, 27 Nov 2018 04:00:10 GMT  
		Size: 17.3 MB (17288800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e891d20aa3ca7f9891149ac6ef9d39ac6ced8fed18279695e2853432f8858a`  
		Last Modified: Tue, 27 Nov 2018 04:00:34 GMT  
		Size: 111.8 MB (111813010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0fc53f2f207e1d47ee4b911ab3af78ef8dba02c36fbeee2f743b9ce2df8a01f`  
		Last Modified: Tue, 27 Nov 2018 04:00:00 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:8149627fe6e7b3ac0f5e6dcd0b3178b26f4a9d458d7d2bd1cca965e9f1c4c241
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128885645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dd1bc99cf3125ab4356cb07a0514c5755634e7e6870f246eaaedce1f59f8ad2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Tue, 27 Nov 2018 08:52:10 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 08:55:45 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 27 Nov 2018 08:55:45 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 08:55:51 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 27 Nov 2018 08:55:51 GMT
CMD ["node"]
# Tue, 27 Nov 2018 09:24:01 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Nov 2018 09:24:04 GMT
RUN apk add --no-cache 		bash
# Tue, 27 Nov 2018 09:24:04 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 09:24:05 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 09:24:45 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 09:24:47 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 09:24:47 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 09:24:48 GMT
ENV GHOST_VERSION=2.6.1
# Tue, 27 Nov 2018 09:26:22 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 27 Nov 2018 09:26:26 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 09:26:26 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 09:26:27 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Tue, 27 Nov 2018 09:26:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 09:26:27 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 09:26:28 GMT
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
	-	`sha256:e34b6435578b93a1110f1451b0db1a969c675bb4407b942f2aeb618d9f8cc67a`  
		Last Modified: Tue, 27 Nov 2018 09:07:22 GMT  
		Size: 17.8 MB (17819429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29cb6c00e1ef26a3ddd761e1abd98e9c880da9a6fde739da0fba31c008f1427e`  
		Last Modified: Tue, 27 Nov 2018 09:07:16 GMT  
		Size: 1.3 MB (1317233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c93698f9770e2124b11c9d617b78b2debc0e47ffcac583e0da9bb1fd213e812`  
		Last Modified: Tue, 27 Nov 2018 09:28:27 GMT  
		Size: 9.3 KB (9333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e9b52bb8279767d072ee36ee1a6eaf23d436b20c0faabde4a3aff32eebbce8`  
		Last Modified: Tue, 27 Nov 2018 09:28:27 GMT  
		Size: 1.1 MB (1127578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7dc237585a3e09405ea8e6f184f28301cf59a71f31c48b9e780462e1185d57`  
		Last Modified: Tue, 27 Nov 2018 09:28:36 GMT  
		Size: 17.3 MB (17290707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ef34b5b2ef696b94b9888eee76a6d87dbba646375fab2b4bd1566c4edbaec5`  
		Last Modified: Tue, 27 Nov 2018 09:29:04 GMT  
		Size: 89.2 MB (89174192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918ee61d2b12f9cb1e84711bc946519047f20b3b58e63b3be8e07b13834b970b`  
		Last Modified: Tue, 27 Nov 2018 09:28:27 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:ccf6903c7360378b04500964300a64dba13debb77f587c3b44514a70b26b0e27
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129812925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18eddd36e7b55074793f6a58fee7f9d38ee43213cbe0bff3137ce6443c6acdd2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Tue, 27 Nov 2018 10:55:43 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 11:04:35 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 27 Nov 2018 11:09:04 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 11:09:18 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 27 Nov 2018 11:09:19 GMT
CMD ["node"]
# Tue, 27 Nov 2018 13:13:58 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Nov 2018 13:14:13 GMT
RUN apk add --no-cache 		bash
# Tue, 27 Nov 2018 13:14:26 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 13:14:28 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 13:15:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 13:15:30 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 13:17:32 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 13:17:33 GMT
ENV GHOST_VERSION=2.6.1
# Tue, 27 Nov 2018 13:19:25 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 27 Nov 2018 13:23:21 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 13:29:01 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 13:29:02 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Tue, 27 Nov 2018 13:29:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 13:29:05 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 13:29:06 GMT
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
	-	`sha256:4fd15e708d9e2073708b80a7d6c70f1a79bb0cc818f695e7957447abc9003baf`  
		Last Modified: Tue, 27 Nov 2018 12:08:52 GMT  
		Size: 18.6 MB (18632830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ff065c37e8d99ec92a0db2f5598173c637c5bb488365a24f9f544eedc3a530`  
		Last Modified: Tue, 27 Nov 2018 12:08:40 GMT  
		Size: 1.3 MB (1317249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8234ae08c21afae51c5103bdc9d6a30e220869b3a791f0af4f507586122a758`  
		Last Modified: Tue, 27 Nov 2018 13:42:20 GMT  
		Size: 9.8 KB (9847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09330e47f232232ae2117dc7514be962764254707ebadd789d638b1c29b3c54f`  
		Last Modified: Tue, 27 Nov 2018 13:42:23 GMT  
		Size: 1.2 MB (1188827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c132f3581a4a470ce55a281a2fb73f8a7cb5b13247d65fdbed585d237143b30`  
		Last Modified: Tue, 27 Nov 2018 13:42:45 GMT  
		Size: 17.3 MB (17290736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011b92db2bc4ccf8b364c635c3832f10d0c6ad08db36987139c0febcd561465d`  
		Last Modified: Tue, 27 Nov 2018 13:43:28 GMT  
		Size: 89.2 MB (89177490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bcbc61adf97e3331ac87231c110573caafd1e10a36327e1f81a5291a92b84f`  
		Last Modified: Tue, 27 Nov 2018 13:42:20 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:be995eabd6d10f2a9e1e27a3699d4a4d452ed9607c107a5d6ec457a4b91800fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `ghost:latest` - linux; amd64

```console
$ docker pull ghost@sha256:ea5631cd1164522580507f275a31c41c17418668f312442d3006be624d846e9b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272564899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dffc1260f5f5e52fd245deee210718fd65278d37d1a4fe8209641568907635fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:07:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 27 Nov 2018 01:54:03 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 01:54:21 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 27 Nov 2018 01:54:21 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 01:54:25 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 27 Nov 2018 01:54:25 GMT
CMD ["node"]
# Tue, 27 Nov 2018 03:49:09 GMT
ENV GOSU_VERSION=1.10
# Tue, 27 Nov 2018 03:49:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 27 Nov 2018 03:49:13 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 03:49:13 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 03:49:32 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 03:49:33 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 03:49:33 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 03:49:33 GMT
ENV GHOST_VERSION=2.6.1
# Tue, 27 Nov 2018 03:50:11 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 27 Nov 2018 03:50:52 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 27 Nov 2018 03:50:53 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 03:50:53 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 03:50:54 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Tue, 27 Nov 2018 03:50:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 03:50:54 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 03:50:55 GMT
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
	-	`sha256:49c9fc371242daedf4d046f5b434eda0b30ace04af380020a86852d0ec936625`  
		Last Modified: Tue, 27 Nov 2018 03:10:12 GMT  
		Size: 28.0 MB (27994657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f588c56e12defb8e208a16caaef6898c66a747c97b7367d843957cf81cb2a0bb`  
		Last Modified: Tue, 27 Nov 2018 03:10:06 GMT  
		Size: 1.3 MB (1310256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0453b67da30f718e94d1ec0c4e6246ee245782d980512cca0dca9515a7eb260`  
		Last Modified: Tue, 27 Nov 2018 03:58:21 GMT  
		Size: 500.9 KB (500918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78cf8054e81b24da0b428849ac087386665c4be52cd250ad74d27e0c031797a`  
		Last Modified: Tue, 27 Nov 2018 03:58:33 GMT  
		Size: 17.3 MB (17289446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29f90f3f1c5c4446261e8e5b3557da9d67482972aa95f233b01ce4bcbe1d05e`  
		Last Modified: Tue, 27 Nov 2018 03:58:58 GMT  
		Size: 110.9 MB (110900036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08312fdfe84a106139ba66eed8810ede51a39cfb835327749a305d4c9b55dec1`  
		Last Modified: Tue, 27 Nov 2018 03:58:57 GMT  
		Size: 92.1 MB (92078602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6086d1e31d0bcc4193165b4aabd8d1c97aab656cbaba93ec356e76df5f4950f9`  
		Last Modified: Tue, 27 Nov 2018 03:58:21 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm variant v7

```console
$ docker pull ghost@sha256:a1664fe8db3b3f67b764c230ded3260d82490e6a5a78196dab27ec4841aac7f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.1 MB (267140996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb1ba6afef9127eff533912eab889643b3d16cf2576746006a86f2472fd1644a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:54:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 27 Nov 2018 13:12:49 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 13:13:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 27 Nov 2018 13:13:24 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 13:13:34 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 27 Nov 2018 13:13:35 GMT
CMD ["node"]
# Tue, 27 Nov 2018 13:48:40 GMT
ENV GOSU_VERSION=1.10
# Tue, 27 Nov 2018 13:48:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 27 Nov 2018 13:48:46 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 13:48:46 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 13:49:26 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 13:49:28 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 13:49:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 13:49:29 GMT
ENV GHOST_VERSION=2.6.1
# Tue, 27 Nov 2018 13:51:11 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 27 Nov 2018 13:55:21 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 27 Nov 2018 13:55:31 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 13:55:31 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 13:55:32 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Tue, 27 Nov 2018 13:55:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 13:55:32 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 13:55:33 GMT
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
	-	`sha256:34aa5762fd0b82d9c740f390db51303989c0e6044c5e155b449fba9bbe150524`  
		Last Modified: Tue, 27 Nov 2018 13:21:55 GMT  
		Size: 25.5 MB (25452174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56a199a8f3ec52c065fb76c506624621a32987877c35b41585226cf92aeef9c`  
		Last Modified: Tue, 27 Nov 2018 13:21:46 GMT  
		Size: 1.3 MB (1310269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea81a8b94ecc11c68d0361e9146380822afee0f3c1232b26db6364b63ce8e36`  
		Last Modified: Tue, 27 Nov 2018 14:09:07 GMT  
		Size: 475.4 KB (475431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cfcbea0529e68e48dbce0e8ce2caebad0b032f1716b1934bdf71f7a1816cb35`  
		Last Modified: Tue, 27 Nov 2018 14:09:17 GMT  
		Size: 17.3 MB (17290871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816994f8095b25f3a7446a16bf6c2905ff5ef16d72f24788c9db7a81e782b502`  
		Last Modified: Tue, 27 Nov 2018 14:09:50 GMT  
		Size: 96.1 MB (96066565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e75f7cb5b708224c3f82d38e80b7948367cc0050f0abf18b10c910b055e5753`  
		Last Modified: Tue, 27 Nov 2018 14:09:51 GMT  
		Size: 107.3 MB (107270907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd25c1fb92309cab14f4a4ee07c128ea4f35fdeb382f29424fe8a126bafc65d`  
		Last Modified: Tue, 27 Nov 2018 14:09:06 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; 386

```console
$ docker pull ghost@sha256:fa4a8f8140e3ac0e6a005e2d3ac9bbbff6d1b32e34e52d7e8353bc90aa56048d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.0 MB (185961349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd9dbfaa0b95c4380c0ab5acacccfd047919ba68c8658cbf02c3c098aaf09a49`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:27:08 GMT
ADD file:78e67c3bd2a85f8b06939a282c118818f354e8a045ae81ac223bbd8fd5a25ded in / 
# Fri, 16 Nov 2018 12:27:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 13:22:55 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 17 Nov 2018 13:22:57 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 17 Nov 2018 13:22:57 GMT
ENV NODE_VERSION=8.12.0
# Sat, 17 Nov 2018 13:24:17 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 17 Nov 2018 13:24:17 GMT
ENV YARN_VERSION=1.9.4
# Sat, 17 Nov 2018 13:24:20 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 17 Nov 2018 13:24:20 GMT
CMD ["node"]
# Sun, 18 Nov 2018 01:44:41 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Nov 2018 01:44:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Nov 2018 01:44:43 GMT
ENV NODE_ENV=production
# Sun, 18 Nov 2018 01:44:43 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Sun, 18 Nov 2018 01:45:03 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sun, 18 Nov 2018 01:45:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sun, 18 Nov 2018 01:45:04 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 21 Nov 2018 11:40:29 GMT
ENV GHOST_VERSION=2.6.1
# Wed, 21 Nov 2018 11:41:09 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 21 Nov 2018 11:43:20 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 21 Nov 2018 11:43:20 GMT
WORKDIR /var/lib/ghost
# Wed, 21 Nov 2018 11:43:21 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 21 Nov 2018 11:43:21 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Wed, 21 Nov 2018 11:43:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Nov 2018 11:43:21 GMT
EXPOSE 2368/tcp
# Wed, 21 Nov 2018 11:43:22 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:4fc8853513e9198532eb2940ed4ae33d09cbcad2272302e350fd7078f82dd9c7`  
		Last Modified: Sat, 17 Nov 2018 13:35:23 GMT  
		Size: 128.5 KB (128530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35e8296baaa139f8d9ca1b200b6ae7167efe0486808054a4830bbcebc4b9439`  
		Last Modified: Sat, 17 Nov 2018 13:35:41 GMT  
		Size: 36.3 MB (36328143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86487fe4e10b1a0941f90df5d1623183083f4a4c16600c9c4994f7d2368a0710`  
		Last Modified: Sat, 17 Nov 2018 13:35:24 GMT  
		Size: 1.1 MB (1073700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812024e9c428735d8f9d28fe4dd3728d015150e98b7bdf5792c065f870ceeb4d`  
		Last Modified: Sun, 18 Nov 2018 01:56:13 GMT  
		Size: 480.6 KB (480561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1735753cf55d21468f115ce8415001ce713fd58b5d035e81cb237e71b51556`  
		Last Modified: Sun, 18 Nov 2018 01:56:21 GMT  
		Size: 17.3 MB (17274035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb050dc4c91da288be91efc585ad5eb9e5adad0deb31995c59220f1ad931d14`  
		Last Modified: Wed, 21 Nov 2018 11:45:43 GMT  
		Size: 89.2 MB (89173739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d596fa945c72ec000e8c96c117949889a3e7be181c5c1b6d0063c2d6c3786eaf`  
		Last Modified: Wed, 21 Nov 2018 11:45:21 GMT  
		Size: 11.2 MB (11215505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c40253f7bb903a2d1f12b869c94a2d19cb3726fa7c3d353d74e2a937f72a505`  
		Last Modified: Wed, 21 Nov 2018 11:45:22 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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
-	[`ghost:2.4`](#ghost24)
-	[`ghost:2.4.0`](#ghost240)
-	[`ghost:2.4.0-alpine`](#ghost240-alpine)
-	[`ghost:2.4-alpine`](#ghost24-alpine)
-	[`ghost:2-alpine`](#ghost2-alpine)
-	[`ghost:alpine`](#ghostalpine)
-	[`ghost:latest`](#ghostlatest)

## `ghost:0`

```console
$ docker pull ghost@sha256:d823164bd594b9c06a2102602329e7378e1a09dee35ca60bd92182fab5443e4a
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
$ docker pull ghost@sha256:cf3db6eec8355fd156c661659d6f65f27651b634dfa3bf913dfb3504d5d0bea0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.5 MB (89454758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3432010fb4079bf5a9be4ef109f8babdce30c831905aeba1613d7c7d15d09070`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:23:09 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 16 Oct 2018 06:23:11 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 16 Oct 2018 06:25:03 GMT
ENV NODE_VERSION=6.14.4
# Tue, 16 Oct 2018 06:25:42 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 16 Oct 2018 06:25:43 GMT
ENV YARN_VERSION=1.6.0
# Tue, 16 Oct 2018 06:25:44 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 16 Oct 2018 06:25:45 GMT
CMD ["node"]
# Tue, 16 Oct 2018 19:20:22 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 16 Oct 2018 19:20:23 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 19:20:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 16 Oct 2018 19:20:24 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 16 Oct 2018 19:20:25 GMT
WORKDIR /usr/src/ghost
# Tue, 16 Oct 2018 19:20:25 GMT
ENV GHOST_VERSION=0.11.13
# Tue, 16 Oct 2018 19:22:18 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 16 Oct 2018 19:22:22 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 16 Oct 2018 19:22:23 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 16 Oct 2018 19:22:34 GMT
VOLUME [/var/lib/ghost]
# Tue, 16 Oct 2018 19:22:34 GMT
COPY file:4bf52c5f3b7a65d22c9bcb7270767a1d61445c40c5d0b235d52a143a029740fc in /usr/local/bin/ 
# Tue, 16 Oct 2018 19:22:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 16 Oct 2018 19:22:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 19:22:45 GMT
EXPOSE 2368/tcp
# Tue, 16 Oct 2018 19:22:46 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c7020e9265938dfd1537010da855743d4c5ad1f29580c74d9710c324e540bf`  
		Last Modified: Tue, 16 Oct 2018 06:31:23 GMT  
		Size: 4.4 KB (4402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02415c59bfcbeef0b3f11920ef1cec01a4e78929a783524d553e85e4b7470b2f`  
		Last Modified: Tue, 16 Oct 2018 06:31:22 GMT  
		Size: 124.7 KB (124683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bdb2af4c77eef7f28e246aa364779b45296a7067cf52fef62bf3565dfeb266a`  
		Last Modified: Tue, 16 Oct 2018 06:35:50 GMT  
		Size: 31.3 MB (31281040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2078122fcdea04c71c546656ac0389ce668729a3c69635d4796dd149e8949f0`  
		Last Modified: Tue, 16 Oct 2018 06:35:41 GMT  
		Size: 1.1 MB (1073257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6098d314cd5ab6a7d8888cdca4fc7ad76dec752e3e7fcb397699706b94b54d91`  
		Last Modified: Tue, 16 Oct 2018 19:27:32 GMT  
		Size: 4.5 KB (4451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea82adf64da66db8812d6b327571680162669db50964ea2b5798f4c926b548a2`  
		Last Modified: Tue, 16 Oct 2018 19:27:05 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde6bbf78bb2812e43a13713a284be70518c44196e0cd445ac99c6fcafedc245`  
		Last Modified: Tue, 16 Oct 2018 19:27:06 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16f8104d7ac92cd12fd3a9aea3cb3ddd0bc482209cc8fd264f3180294823e8a`  
		Last Modified: Tue, 16 Oct 2018 19:27:14 GMT  
		Size: 26.3 MB (26344510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9373da1cf2ecf38fb74d987743c1762674fe3351ec839ac57d2ceb72084e0f`  
		Last Modified: Tue, 16 Oct 2018 19:27:04 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c640c0fc2b3c55e2d29e6e6da1670b00aae150f73ab367274e95b17f77ab10a`  
		Last Modified: Tue, 16 Oct 2018 19:27:04 GMT  
		Size: 641.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308326587482986675c8bd3fb49f34e3e5904c5798621eab06e51a020823503b`  
		Last Modified: Tue, 16 Oct 2018 19:27:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; arm variant v7

```console
$ docker pull ghost@sha256:56794367d7fc3aca48db766170b7bdfd67841ec1c845bf075500813496749aec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.5 MB (89537849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d60f8fd98d71e96146a17fdcc15b9f2481d082456dad1539c7e06bbc51d75e0`
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
# Wed, 03 Oct 2018 11:59:07 GMT
COPY file:4bf52c5f3b7a65d22c9bcb7270767a1d61445c40c5d0b235d52a143a029740fc in /usr/local/bin/ 
# Wed, 03 Oct 2018 11:59:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 03 Oct 2018 11:59:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 11:59:17 GMT
EXPOSE 2368/tcp
# Wed, 03 Oct 2018 11:59:18 GMT
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
	-	`sha256:11893acbb317ac12b0f2c22b1231c7d1b9754c4ebf92adb37e47a00b9b187bed`  
		Last Modified: Wed, 03 Oct 2018 12:02:34 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57c0fcceefb68586afa40beaa54fed849443d77349ed449aa53b9e2cb7e3dac`  
		Last Modified: Wed, 03 Oct 2018 12:02:34 GMT  
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
$ docker pull ghost@sha256:2452a25690c53d3587e3b0cfd56debbc5cf3853374b651224370a40ccfb9af3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.6 MB (97635260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca552e481d343468667e9bcadbdaabd842d4c4df3ce55bb61b5923a2935036a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:56 GMT
ADD file:805bcf9c1da55b8a2fe5407bcea59a7af4f4e70001d03f514f31e4bafcb20a1c in / 
# Tue, 16 Oct 2018 10:41:56 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 23:00:58 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 16 Oct 2018 23:01:00 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 16 Oct 2018 23:02:54 GMT
ENV NODE_VERSION=6.14.4
# Tue, 16 Oct 2018 23:03:42 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 16 Oct 2018 23:03:43 GMT
ENV YARN_VERSION=1.6.0
# Tue, 16 Oct 2018 23:03:44 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 16 Oct 2018 23:03:44 GMT
CMD ["node"]
# Wed, 17 Oct 2018 10:23:51 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 17 Oct 2018 10:23:51 GMT
ENV GOSU_VERSION=1.10
# Wed, 17 Oct 2018 10:23:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 17 Oct 2018 10:23:52 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 17 Oct 2018 10:23:52 GMT
WORKDIR /usr/src/ghost
# Wed, 17 Oct 2018 10:23:53 GMT
ENV GHOST_VERSION=0.11.13
# Wed, 17 Oct 2018 10:26:15 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 17 Oct 2018 10:26:15 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 17 Oct 2018 10:26:16 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 17 Oct 2018 10:26:16 GMT
VOLUME [/var/lib/ghost]
# Wed, 17 Oct 2018 10:26:17 GMT
COPY file:4bf52c5f3b7a65d22c9bcb7270767a1d61445c40c5d0b235d52a143a029740fc in /usr/local/bin/ 
# Wed, 17 Oct 2018 10:26:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 17 Oct 2018 10:26:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 17 Oct 2018 10:26:18 GMT
EXPOSE 2368/tcp
# Wed, 17 Oct 2018 10:26:18 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:8fa4cce02855aa948a5b8498a42eb08255f5ed0b56d7820985ad2853ff0a254a`  
		Last Modified: Tue, 16 Oct 2018 10:57:05 GMT  
		Size: 30.3 MB (30270032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fec25e63b2f6b72046290fce9c37fedd19663754f05030df28f8ecfe9e04db`  
		Last Modified: Tue, 16 Oct 2018 23:09:08 GMT  
		Size: 4.4 KB (4387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce81d04ef17865a77b4bab21aca35b02627110cffa32c2b4b211622522c78c11`  
		Last Modified: Tue, 16 Oct 2018 23:09:08 GMT  
		Size: 124.7 KB (124680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad8ef653e828848300e1b6c8867df991bd3c308033a24f34fa2e06aad27ddf7`  
		Last Modified: Tue, 16 Oct 2018 23:12:24 GMT  
		Size: 33.2 MB (33153112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fac8295ea9a63f794f90a458b3768f16b426aacd438fe3c0869d44c0abde37a`  
		Last Modified: Tue, 16 Oct 2018 23:12:17 GMT  
		Size: 1.1 MB (1073254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa510d0dd2576d1264b5fe2feec9dae512e5c1b81c10f43fc3dd68ad4c21cd01`  
		Last Modified: Wed, 17 Oct 2018 10:28:34 GMT  
		Size: 4.4 KB (4442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4112c1df474bb6e8a65ba0bc4496ddbe0510fd5114731f2ddf139efef890f286`  
		Last Modified: Wed, 17 Oct 2018 10:28:34 GMT  
		Size: 480.6 KB (480571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d60c02d304f23be161559a145eadd04d17bf73235f210cf1d1ab80bfc6714f07`  
		Last Modified: Wed, 17 Oct 2018 10:28:33 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff5a5eb503f1d49b5a16466395b9716e738636f5444c73523bc04e806128914a`  
		Last Modified: Wed, 17 Oct 2018 10:28:44 GMT  
		Size: 32.5 MB (32523662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef7b5a8367189bebee82be542a55505f1bbcba6a6edb16613be53a70e4fd2d1`  
		Last Modified: Wed, 17 Oct 2018 10:28:33 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab209c433ef3e6e8af932bb0bca4dd230bca2e0b2dcad6b110543af74728a4e`  
		Last Modified: Wed, 17 Oct 2018 10:28:33 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f0bc83f0ee5fdfd7a1c8856ea3ce43c79be1472f5f226481af744d20264120`  
		Last Modified: Wed, 17 Oct 2018 10:28:33 GMT  
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
$ docker pull ghost@sha256:d823164bd594b9c06a2102602329e7378e1a09dee35ca60bd92182fab5443e4a
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
$ docker pull ghost@sha256:cf3db6eec8355fd156c661659d6f65f27651b634dfa3bf913dfb3504d5d0bea0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.5 MB (89454758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3432010fb4079bf5a9be4ef109f8babdce30c831905aeba1613d7c7d15d09070`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:23:09 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 16 Oct 2018 06:23:11 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 16 Oct 2018 06:25:03 GMT
ENV NODE_VERSION=6.14.4
# Tue, 16 Oct 2018 06:25:42 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 16 Oct 2018 06:25:43 GMT
ENV YARN_VERSION=1.6.0
# Tue, 16 Oct 2018 06:25:44 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 16 Oct 2018 06:25:45 GMT
CMD ["node"]
# Tue, 16 Oct 2018 19:20:22 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 16 Oct 2018 19:20:23 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 19:20:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 16 Oct 2018 19:20:24 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 16 Oct 2018 19:20:25 GMT
WORKDIR /usr/src/ghost
# Tue, 16 Oct 2018 19:20:25 GMT
ENV GHOST_VERSION=0.11.13
# Tue, 16 Oct 2018 19:22:18 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 16 Oct 2018 19:22:22 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 16 Oct 2018 19:22:23 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 16 Oct 2018 19:22:34 GMT
VOLUME [/var/lib/ghost]
# Tue, 16 Oct 2018 19:22:34 GMT
COPY file:4bf52c5f3b7a65d22c9bcb7270767a1d61445c40c5d0b235d52a143a029740fc in /usr/local/bin/ 
# Tue, 16 Oct 2018 19:22:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 16 Oct 2018 19:22:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 19:22:45 GMT
EXPOSE 2368/tcp
# Tue, 16 Oct 2018 19:22:46 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c7020e9265938dfd1537010da855743d4c5ad1f29580c74d9710c324e540bf`  
		Last Modified: Tue, 16 Oct 2018 06:31:23 GMT  
		Size: 4.4 KB (4402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02415c59bfcbeef0b3f11920ef1cec01a4e78929a783524d553e85e4b7470b2f`  
		Last Modified: Tue, 16 Oct 2018 06:31:22 GMT  
		Size: 124.7 KB (124683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bdb2af4c77eef7f28e246aa364779b45296a7067cf52fef62bf3565dfeb266a`  
		Last Modified: Tue, 16 Oct 2018 06:35:50 GMT  
		Size: 31.3 MB (31281040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2078122fcdea04c71c546656ac0389ce668729a3c69635d4796dd149e8949f0`  
		Last Modified: Tue, 16 Oct 2018 06:35:41 GMT  
		Size: 1.1 MB (1073257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6098d314cd5ab6a7d8888cdca4fc7ad76dec752e3e7fcb397699706b94b54d91`  
		Last Modified: Tue, 16 Oct 2018 19:27:32 GMT  
		Size: 4.5 KB (4451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea82adf64da66db8812d6b327571680162669db50964ea2b5798f4c926b548a2`  
		Last Modified: Tue, 16 Oct 2018 19:27:05 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde6bbf78bb2812e43a13713a284be70518c44196e0cd445ac99c6fcafedc245`  
		Last Modified: Tue, 16 Oct 2018 19:27:06 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16f8104d7ac92cd12fd3a9aea3cb3ddd0bc482209cc8fd264f3180294823e8a`  
		Last Modified: Tue, 16 Oct 2018 19:27:14 GMT  
		Size: 26.3 MB (26344510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9373da1cf2ecf38fb74d987743c1762674fe3351ec839ac57d2ceb72084e0f`  
		Last Modified: Tue, 16 Oct 2018 19:27:04 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c640c0fc2b3c55e2d29e6e6da1670b00aae150f73ab367274e95b17f77ab10a`  
		Last Modified: Tue, 16 Oct 2018 19:27:04 GMT  
		Size: 641.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308326587482986675c8bd3fb49f34e3e5904c5798621eab06e51a020823503b`  
		Last Modified: Tue, 16 Oct 2018 19:27:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; arm variant v7

```console
$ docker pull ghost@sha256:56794367d7fc3aca48db766170b7bdfd67841ec1c845bf075500813496749aec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.5 MB (89537849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d60f8fd98d71e96146a17fdcc15b9f2481d082456dad1539c7e06bbc51d75e0`
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
# Wed, 03 Oct 2018 11:59:07 GMT
COPY file:4bf52c5f3b7a65d22c9bcb7270767a1d61445c40c5d0b235d52a143a029740fc in /usr/local/bin/ 
# Wed, 03 Oct 2018 11:59:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 03 Oct 2018 11:59:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 11:59:17 GMT
EXPOSE 2368/tcp
# Wed, 03 Oct 2018 11:59:18 GMT
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
	-	`sha256:11893acbb317ac12b0f2c22b1231c7d1b9754c4ebf92adb37e47a00b9b187bed`  
		Last Modified: Wed, 03 Oct 2018 12:02:34 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57c0fcceefb68586afa40beaa54fed849443d77349ed449aa53b9e2cb7e3dac`  
		Last Modified: Wed, 03 Oct 2018 12:02:34 GMT  
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
$ docker pull ghost@sha256:2452a25690c53d3587e3b0cfd56debbc5cf3853374b651224370a40ccfb9af3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.6 MB (97635260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca552e481d343468667e9bcadbdaabd842d4c4df3ce55bb61b5923a2935036a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:56 GMT
ADD file:805bcf9c1da55b8a2fe5407bcea59a7af4f4e70001d03f514f31e4bafcb20a1c in / 
# Tue, 16 Oct 2018 10:41:56 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 23:00:58 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 16 Oct 2018 23:01:00 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 16 Oct 2018 23:02:54 GMT
ENV NODE_VERSION=6.14.4
# Tue, 16 Oct 2018 23:03:42 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 16 Oct 2018 23:03:43 GMT
ENV YARN_VERSION=1.6.0
# Tue, 16 Oct 2018 23:03:44 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 16 Oct 2018 23:03:44 GMT
CMD ["node"]
# Wed, 17 Oct 2018 10:23:51 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 17 Oct 2018 10:23:51 GMT
ENV GOSU_VERSION=1.10
# Wed, 17 Oct 2018 10:23:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 17 Oct 2018 10:23:52 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 17 Oct 2018 10:23:52 GMT
WORKDIR /usr/src/ghost
# Wed, 17 Oct 2018 10:23:53 GMT
ENV GHOST_VERSION=0.11.13
# Wed, 17 Oct 2018 10:26:15 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 17 Oct 2018 10:26:15 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 17 Oct 2018 10:26:16 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 17 Oct 2018 10:26:16 GMT
VOLUME [/var/lib/ghost]
# Wed, 17 Oct 2018 10:26:17 GMT
COPY file:4bf52c5f3b7a65d22c9bcb7270767a1d61445c40c5d0b235d52a143a029740fc in /usr/local/bin/ 
# Wed, 17 Oct 2018 10:26:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 17 Oct 2018 10:26:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 17 Oct 2018 10:26:18 GMT
EXPOSE 2368/tcp
# Wed, 17 Oct 2018 10:26:18 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:8fa4cce02855aa948a5b8498a42eb08255f5ed0b56d7820985ad2853ff0a254a`  
		Last Modified: Tue, 16 Oct 2018 10:57:05 GMT  
		Size: 30.3 MB (30270032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fec25e63b2f6b72046290fce9c37fedd19663754f05030df28f8ecfe9e04db`  
		Last Modified: Tue, 16 Oct 2018 23:09:08 GMT  
		Size: 4.4 KB (4387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce81d04ef17865a77b4bab21aca35b02627110cffa32c2b4b211622522c78c11`  
		Last Modified: Tue, 16 Oct 2018 23:09:08 GMT  
		Size: 124.7 KB (124680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad8ef653e828848300e1b6c8867df991bd3c308033a24f34fa2e06aad27ddf7`  
		Last Modified: Tue, 16 Oct 2018 23:12:24 GMT  
		Size: 33.2 MB (33153112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fac8295ea9a63f794f90a458b3768f16b426aacd438fe3c0869d44c0abde37a`  
		Last Modified: Tue, 16 Oct 2018 23:12:17 GMT  
		Size: 1.1 MB (1073254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa510d0dd2576d1264b5fe2feec9dae512e5c1b81c10f43fc3dd68ad4c21cd01`  
		Last Modified: Wed, 17 Oct 2018 10:28:34 GMT  
		Size: 4.4 KB (4442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4112c1df474bb6e8a65ba0bc4496ddbe0510fd5114731f2ddf139efef890f286`  
		Last Modified: Wed, 17 Oct 2018 10:28:34 GMT  
		Size: 480.6 KB (480571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d60c02d304f23be161559a145eadd04d17bf73235f210cf1d1ab80bfc6714f07`  
		Last Modified: Wed, 17 Oct 2018 10:28:33 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff5a5eb503f1d49b5a16466395b9716e738636f5444c73523bc04e806128914a`  
		Last Modified: Wed, 17 Oct 2018 10:28:44 GMT  
		Size: 32.5 MB (32523662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef7b5a8367189bebee82be542a55505f1bbcba6a6edb16613be53a70e4fd2d1`  
		Last Modified: Wed, 17 Oct 2018 10:28:33 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab209c433ef3e6e8af932bb0bca4dd230bca2e0b2dcad6b110543af74728a4e`  
		Last Modified: Wed, 17 Oct 2018 10:28:33 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f0bc83f0ee5fdfd7a1c8856ea3ce43c79be1472f5f226481af744d20264120`  
		Last Modified: Wed, 17 Oct 2018 10:28:33 GMT  
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
$ docker pull ghost@sha256:d823164bd594b9c06a2102602329e7378e1a09dee35ca60bd92182fab5443e4a
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
$ docker pull ghost@sha256:cf3db6eec8355fd156c661659d6f65f27651b634dfa3bf913dfb3504d5d0bea0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.5 MB (89454758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3432010fb4079bf5a9be4ef109f8babdce30c831905aeba1613d7c7d15d09070`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:23:09 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 16 Oct 2018 06:23:11 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 16 Oct 2018 06:25:03 GMT
ENV NODE_VERSION=6.14.4
# Tue, 16 Oct 2018 06:25:42 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 16 Oct 2018 06:25:43 GMT
ENV YARN_VERSION=1.6.0
# Tue, 16 Oct 2018 06:25:44 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 16 Oct 2018 06:25:45 GMT
CMD ["node"]
# Tue, 16 Oct 2018 19:20:22 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 16 Oct 2018 19:20:23 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 19:20:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 16 Oct 2018 19:20:24 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 16 Oct 2018 19:20:25 GMT
WORKDIR /usr/src/ghost
# Tue, 16 Oct 2018 19:20:25 GMT
ENV GHOST_VERSION=0.11.13
# Tue, 16 Oct 2018 19:22:18 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 16 Oct 2018 19:22:22 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 16 Oct 2018 19:22:23 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 16 Oct 2018 19:22:34 GMT
VOLUME [/var/lib/ghost]
# Tue, 16 Oct 2018 19:22:34 GMT
COPY file:4bf52c5f3b7a65d22c9bcb7270767a1d61445c40c5d0b235d52a143a029740fc in /usr/local/bin/ 
# Tue, 16 Oct 2018 19:22:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 16 Oct 2018 19:22:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 19:22:45 GMT
EXPOSE 2368/tcp
# Tue, 16 Oct 2018 19:22:46 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c7020e9265938dfd1537010da855743d4c5ad1f29580c74d9710c324e540bf`  
		Last Modified: Tue, 16 Oct 2018 06:31:23 GMT  
		Size: 4.4 KB (4402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02415c59bfcbeef0b3f11920ef1cec01a4e78929a783524d553e85e4b7470b2f`  
		Last Modified: Tue, 16 Oct 2018 06:31:22 GMT  
		Size: 124.7 KB (124683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bdb2af4c77eef7f28e246aa364779b45296a7067cf52fef62bf3565dfeb266a`  
		Last Modified: Tue, 16 Oct 2018 06:35:50 GMT  
		Size: 31.3 MB (31281040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2078122fcdea04c71c546656ac0389ce668729a3c69635d4796dd149e8949f0`  
		Last Modified: Tue, 16 Oct 2018 06:35:41 GMT  
		Size: 1.1 MB (1073257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6098d314cd5ab6a7d8888cdca4fc7ad76dec752e3e7fcb397699706b94b54d91`  
		Last Modified: Tue, 16 Oct 2018 19:27:32 GMT  
		Size: 4.5 KB (4451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea82adf64da66db8812d6b327571680162669db50964ea2b5798f4c926b548a2`  
		Last Modified: Tue, 16 Oct 2018 19:27:05 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde6bbf78bb2812e43a13713a284be70518c44196e0cd445ac99c6fcafedc245`  
		Last Modified: Tue, 16 Oct 2018 19:27:06 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16f8104d7ac92cd12fd3a9aea3cb3ddd0bc482209cc8fd264f3180294823e8a`  
		Last Modified: Tue, 16 Oct 2018 19:27:14 GMT  
		Size: 26.3 MB (26344510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9373da1cf2ecf38fb74d987743c1762674fe3351ec839ac57d2ceb72084e0f`  
		Last Modified: Tue, 16 Oct 2018 19:27:04 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c640c0fc2b3c55e2d29e6e6da1670b00aae150f73ab367274e95b17f77ab10a`  
		Last Modified: Tue, 16 Oct 2018 19:27:04 GMT  
		Size: 641.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308326587482986675c8bd3fb49f34e3e5904c5798621eab06e51a020823503b`  
		Last Modified: Tue, 16 Oct 2018 19:27:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.13` - linux; arm variant v7

```console
$ docker pull ghost@sha256:56794367d7fc3aca48db766170b7bdfd67841ec1c845bf075500813496749aec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.5 MB (89537849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d60f8fd98d71e96146a17fdcc15b9f2481d082456dad1539c7e06bbc51d75e0`
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
# Wed, 03 Oct 2018 11:59:07 GMT
COPY file:4bf52c5f3b7a65d22c9bcb7270767a1d61445c40c5d0b235d52a143a029740fc in /usr/local/bin/ 
# Wed, 03 Oct 2018 11:59:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 03 Oct 2018 11:59:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 11:59:17 GMT
EXPOSE 2368/tcp
# Wed, 03 Oct 2018 11:59:18 GMT
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
	-	`sha256:11893acbb317ac12b0f2c22b1231c7d1b9754c4ebf92adb37e47a00b9b187bed`  
		Last Modified: Wed, 03 Oct 2018 12:02:34 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57c0fcceefb68586afa40beaa54fed849443d77349ed449aa53b9e2cb7e3dac`  
		Last Modified: Wed, 03 Oct 2018 12:02:34 GMT  
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
$ docker pull ghost@sha256:2452a25690c53d3587e3b0cfd56debbc5cf3853374b651224370a40ccfb9af3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.6 MB (97635260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca552e481d343468667e9bcadbdaabd842d4c4df3ce55bb61b5923a2935036a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:56 GMT
ADD file:805bcf9c1da55b8a2fe5407bcea59a7af4f4e70001d03f514f31e4bafcb20a1c in / 
# Tue, 16 Oct 2018 10:41:56 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 23:00:58 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 16 Oct 2018 23:01:00 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 16 Oct 2018 23:02:54 GMT
ENV NODE_VERSION=6.14.4
# Tue, 16 Oct 2018 23:03:42 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 16 Oct 2018 23:03:43 GMT
ENV YARN_VERSION=1.6.0
# Tue, 16 Oct 2018 23:03:44 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 16 Oct 2018 23:03:44 GMT
CMD ["node"]
# Wed, 17 Oct 2018 10:23:51 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 17 Oct 2018 10:23:51 GMT
ENV GOSU_VERSION=1.10
# Wed, 17 Oct 2018 10:23:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 17 Oct 2018 10:23:52 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 17 Oct 2018 10:23:52 GMT
WORKDIR /usr/src/ghost
# Wed, 17 Oct 2018 10:23:53 GMT
ENV GHOST_VERSION=0.11.13
# Wed, 17 Oct 2018 10:26:15 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 17 Oct 2018 10:26:15 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 17 Oct 2018 10:26:16 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 17 Oct 2018 10:26:16 GMT
VOLUME [/var/lib/ghost]
# Wed, 17 Oct 2018 10:26:17 GMT
COPY file:4bf52c5f3b7a65d22c9bcb7270767a1d61445c40c5d0b235d52a143a029740fc in /usr/local/bin/ 
# Wed, 17 Oct 2018 10:26:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 17 Oct 2018 10:26:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 17 Oct 2018 10:26:18 GMT
EXPOSE 2368/tcp
# Wed, 17 Oct 2018 10:26:18 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:8fa4cce02855aa948a5b8498a42eb08255f5ed0b56d7820985ad2853ff0a254a`  
		Last Modified: Tue, 16 Oct 2018 10:57:05 GMT  
		Size: 30.3 MB (30270032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fec25e63b2f6b72046290fce9c37fedd19663754f05030df28f8ecfe9e04db`  
		Last Modified: Tue, 16 Oct 2018 23:09:08 GMT  
		Size: 4.4 KB (4387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce81d04ef17865a77b4bab21aca35b02627110cffa32c2b4b211622522c78c11`  
		Last Modified: Tue, 16 Oct 2018 23:09:08 GMT  
		Size: 124.7 KB (124680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad8ef653e828848300e1b6c8867df991bd3c308033a24f34fa2e06aad27ddf7`  
		Last Modified: Tue, 16 Oct 2018 23:12:24 GMT  
		Size: 33.2 MB (33153112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fac8295ea9a63f794f90a458b3768f16b426aacd438fe3c0869d44c0abde37a`  
		Last Modified: Tue, 16 Oct 2018 23:12:17 GMT  
		Size: 1.1 MB (1073254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa510d0dd2576d1264b5fe2feec9dae512e5c1b81c10f43fc3dd68ad4c21cd01`  
		Last Modified: Wed, 17 Oct 2018 10:28:34 GMT  
		Size: 4.4 KB (4442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4112c1df474bb6e8a65ba0bc4496ddbe0510fd5114731f2ddf139efef890f286`  
		Last Modified: Wed, 17 Oct 2018 10:28:34 GMT  
		Size: 480.6 KB (480571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d60c02d304f23be161559a145eadd04d17bf73235f210cf1d1ab80bfc6714f07`  
		Last Modified: Wed, 17 Oct 2018 10:28:33 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff5a5eb503f1d49b5a16466395b9716e738636f5444c73523bc04e806128914a`  
		Last Modified: Wed, 17 Oct 2018 10:28:44 GMT  
		Size: 32.5 MB (32523662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef7b5a8367189bebee82be542a55505f1bbcba6a6edb16613be53a70e4fd2d1`  
		Last Modified: Wed, 17 Oct 2018 10:28:33 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab209c433ef3e6e8af932bb0bca4dd230bca2e0b2dcad6b110543af74728a4e`  
		Last Modified: Wed, 17 Oct 2018 10:28:33 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f0bc83f0ee5fdfd7a1c8856ea3ce43c79be1472f5f226481af744d20264120`  
		Last Modified: Wed, 17 Oct 2018 10:28:33 GMT  
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
$ docker pull ghost@sha256:0f433205dd58ecc88453fbc7ac5eda66572e7127ab40ee6b64e17c6f434c1006
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11.13-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:848e6d84369558febc2bad3da81d92ff87485d929c08a1862447ed2141c65cfa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.5 MB (46450449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0a356b9e0823ee7b436ba6eb2f42d8df0fe5f2f6a7faa4677eba33163deadc4`
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
# Tue, 02 Oct 2018 17:25:03 GMT
COPY file:89e7330b48cbb0bdce59b338bf077606d284ce7048d42db76e653c91ee52a54e in /usr/local/bin/ 
# Tue, 02 Oct 2018 17:25:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 02 Oct 2018 17:25:04 GMT
EXPOSE 2368/tcp
# Tue, 02 Oct 2018 17:25:04 GMT
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
	-	`sha256:dbdf8b2c191972fefc5c563e4a97e1870a0a1e3460e6d8c81d6db53f94dc4cb7`  
		Last Modified: Tue, 02 Oct 2018 17:28:27 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11-alpine`

```console
$ docker pull ghost@sha256:0f433205dd58ecc88453fbc7ac5eda66572e7127ab40ee6b64e17c6f434c1006
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:848e6d84369558febc2bad3da81d92ff87485d929c08a1862447ed2141c65cfa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.5 MB (46450449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0a356b9e0823ee7b436ba6eb2f42d8df0fe5f2f6a7faa4677eba33163deadc4`
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
# Tue, 02 Oct 2018 17:25:03 GMT
COPY file:89e7330b48cbb0bdce59b338bf077606d284ce7048d42db76e653c91ee52a54e in /usr/local/bin/ 
# Tue, 02 Oct 2018 17:25:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 02 Oct 2018 17:25:04 GMT
EXPOSE 2368/tcp
# Tue, 02 Oct 2018 17:25:04 GMT
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
	-	`sha256:dbdf8b2c191972fefc5c563e4a97e1870a0a1e3460e6d8c81d6db53f94dc4cb7`  
		Last Modified: Tue, 02 Oct 2018 17:28:27 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:0f433205dd58ecc88453fbc7ac5eda66572e7127ab40ee6b64e17c6f434c1006
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:848e6d84369558febc2bad3da81d92ff87485d929c08a1862447ed2141c65cfa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.5 MB (46450449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0a356b9e0823ee7b436ba6eb2f42d8df0fe5f2f6a7faa4677eba33163deadc4`
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
# Tue, 02 Oct 2018 17:25:03 GMT
COPY file:89e7330b48cbb0bdce59b338bf077606d284ce7048d42db76e653c91ee52a54e in /usr/local/bin/ 
# Tue, 02 Oct 2018 17:25:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 02 Oct 2018 17:25:04 GMT
EXPOSE 2368/tcp
# Tue, 02 Oct 2018 17:25:04 GMT
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
	-	`sha256:dbdf8b2c191972fefc5c563e4a97e1870a0a1e3460e6d8c81d6db53f94dc4cb7`  
		Last Modified: Tue, 02 Oct 2018 17:28:27 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1`

```console
$ docker pull ghost@sha256:d3ffc0614c5e61ea615055055ab8023020dff7b5b2d74459c34cec6b766b1eda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `ghost:1` - linux; amd64

```console
$ docker pull ghost@sha256:cd117d4cbd139f57f130c73f342f8c45c6bed565446f42fc3f431d5a2c769b77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.1 MB (196066964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:437d46349427f7b73b42c446a4256bbf6d2cc516f1bb109d0b70906bd553e671`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:23:09 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 16 Oct 2018 06:23:11 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 16 Oct 2018 06:23:11 GMT
ENV NODE_VERSION=8.12.0
# Tue, 16 Oct 2018 06:23:54 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 16 Oct 2018 06:23:55 GMT
ENV YARN_VERSION=1.9.4
# Tue, 16 Oct 2018 06:23:56 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 16 Oct 2018 06:23:56 GMT
CMD ["node"]
# Tue, 16 Oct 2018 19:16:12 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 19:16:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 16 Oct 2018 19:16:14 GMT
ENV NODE_ENV=production
# Thu, 01 Nov 2018 20:24:28 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Thu, 01 Nov 2018 20:24:50 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 01 Nov 2018 20:24:58 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 01 Nov 2018 20:24:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 01 Nov 2018 20:27:57 GMT
ENV GHOST_VERSION=1.25.5
# Thu, 01 Nov 2018 20:28:31 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 01 Nov 2018 20:28:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 01 Nov 2018 20:28:52 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 01 Nov 2018 20:28:52 GMT
WORKDIR /var/lib/ghost
# Thu, 01 Nov 2018 20:29:03 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 01 Nov 2018 20:29:04 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Thu, 01 Nov 2018 20:29:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 01 Nov 2018 20:29:04 GMT
EXPOSE 2368/tcp
# Thu, 01 Nov 2018 20:29:04 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c7020e9265938dfd1537010da855743d4c5ad1f29580c74d9710c324e540bf`  
		Last Modified: Tue, 16 Oct 2018 06:31:23 GMT  
		Size: 4.4 KB (4402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02415c59bfcbeef0b3f11920ef1cec01a4e78929a783524d553e85e4b7470b2f`  
		Last Modified: Tue, 16 Oct 2018 06:31:22 GMT  
		Size: 124.7 KB (124683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b94195c82796a706cb3a7771674d8cb1ef49504ab5215715d7aa0eedb2b3ed17`  
		Last Modified: Tue, 16 Oct 2018 06:31:33 GMT  
		Size: 34.4 MB (34396999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595fff18a493c38cee9bd969d57fb363c3419f4d5df1ce5285ea3548b668159d`  
		Last Modified: Tue, 16 Oct 2018 06:31:23 GMT  
		Size: 1.1 MB (1069854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0589974b7401fe0ee2e4f1f4ec50853b8f6631d126736e0a8210996401a70747`  
		Last Modified: Tue, 16 Oct 2018 19:23:06 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7ce5f8b0fb64a903f0621644c0ddca2aab9351162442dedaee670f2fb7399c`  
		Last Modified: Thu, 01 Nov 2018 20:31:46 GMT  
		Size: 17.2 MB (17247142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c02bacc0c3d628d71ca989a1594d53bdaaf2702a910cbc79eb1f1cae8c3cf8`  
		Last Modified: Thu, 01 Nov 2018 20:35:48 GMT  
		Size: 101.8 MB (101824655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f762155cdfd4587121f1dd4537f6ed495369d1cc0cc01f92d8ad8e02f8afe5`  
		Last Modified: Thu, 01 Nov 2018 20:35:29 GMT  
		Size: 10.8 MB (10777346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc7f2622c266f1afa599fdc58a9d8ca7b8a28d16025cdb0c373939b83a4b289`  
		Last Modified: Thu, 01 Nov 2018 20:35:27 GMT  
		Size: 588.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; arm variant v7

```console
$ docker pull ghost@sha256:b2bfdeda273bf2aafe3d6eee733ac15bd348ed27b790d280ca6b7f60508d242c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.4 MB (192403432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88ce54e75c2f4603f569bdf021783a865b34e2765ee51d69b57a85ea2fce2c2f`
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
# Thu, 04 Oct 2018 11:57:39 GMT
ENV GHOST_CLI_VERSION=1.9.6
# Thu, 04 Oct 2018 11:58:19 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 04 Oct 2018 11:58:30 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 04 Oct 2018 11:58:30 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 04 Oct 2018 12:04:22 GMT
ENV GHOST_VERSION=1.25.5
# Thu, 04 Oct 2018 12:05:49 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 04 Oct 2018 12:05:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 04 Oct 2018 12:09:18 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 04 Oct 2018 12:09:19 GMT
WORKDIR /var/lib/ghost
# Thu, 04 Oct 2018 12:09:19 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 04 Oct 2018 12:09:20 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Thu, 04 Oct 2018 12:09:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 04 Oct 2018 12:09:20 GMT
EXPOSE 2368/tcp
# Thu, 04 Oct 2018 12:09:21 GMT
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
	-	`sha256:16ec17ba64ed82c051cfc1e210db0d3e636464e6b59d78776b3fa9b914a95714`  
		Last Modified: Thu, 04 Oct 2018 12:09:48 GMT  
		Size: 17.2 MB (17215030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10dcba5e9ced554485c8ab3245f5a258f7ed0c88409f4f01319909875c12eff9`  
		Last Modified: Thu, 04 Oct 2018 12:11:31 GMT  
		Size: 94.1 MB (94105470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fcb124503f32dafa4e443e02c6a403dee4c4f21934c1f2abeb7572fa8f19dd`  
		Last Modified: Thu, 04 Oct 2018 12:11:04 GMT  
		Size: 20.5 MB (20545831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6484202ad5977caa3b3f09259bbfe4ceebdecab2b9b32210dac1c6e76a4149`  
		Last Modified: Thu, 04 Oct 2018 12:10:59 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; 386

```console
$ docker pull ghost@sha256:ce1452b1efa0e8c70a4198e043a5e990c87f438003303adbb2d00e98d29055ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.9 MB (207930096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf17e743a6a116b27ba816d8a68c2d8209fed67b4d07c3df1e2a46253b376010`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:56 GMT
ADD file:805bcf9c1da55b8a2fe5407bcea59a7af4f4e70001d03f514f31e4bafcb20a1c in / 
# Tue, 16 Oct 2018 10:41:56 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 23:00:58 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 16 Oct 2018 23:01:00 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 16 Oct 2018 23:01:00 GMT
ENV NODE_VERSION=8.12.0
# Tue, 16 Oct 2018 23:01:50 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 16 Oct 2018 23:01:50 GMT
ENV YARN_VERSION=1.9.4
# Tue, 16 Oct 2018 23:01:51 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 16 Oct 2018 23:01:52 GMT
CMD ["node"]
# Wed, 17 Oct 2018 10:16:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 17 Oct 2018 10:16:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 17 Oct 2018 10:16:51 GMT
ENV NODE_ENV=production
# Fri, 02 Nov 2018 10:47:32 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Fri, 02 Nov 2018 10:47:51 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 02 Nov 2018 10:47:51 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 02 Nov 2018 10:47:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 02 Nov 2018 10:51:30 GMT
ENV GHOST_VERSION=1.25.5
# Fri, 02 Nov 2018 10:52:06 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 02 Nov 2018 10:52:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 02 Nov 2018 10:54:11 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 02 Nov 2018 10:54:11 GMT
WORKDIR /var/lib/ghost
# Fri, 02 Nov 2018 10:54:12 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 02 Nov 2018 10:54:12 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Fri, 02 Nov 2018 10:54:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Nov 2018 10:54:12 GMT
EXPOSE 2368/tcp
# Fri, 02 Nov 2018 10:54:13 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:8fa4cce02855aa948a5b8498a42eb08255f5ed0b56d7820985ad2853ff0a254a`  
		Last Modified: Tue, 16 Oct 2018 10:57:05 GMT  
		Size: 30.3 MB (30270032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fec25e63b2f6b72046290fce9c37fedd19663754f05030df28f8ecfe9e04db`  
		Last Modified: Tue, 16 Oct 2018 23:09:08 GMT  
		Size: 4.4 KB (4387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce81d04ef17865a77b4bab21aca35b02627110cffa32c2b4b211622522c78c11`  
		Last Modified: Tue, 16 Oct 2018 23:09:08 GMT  
		Size: 124.7 KB (124680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f139290f43e80f12b353d7d9a03664371a8a1348ab8bedc57c805d52c9e34d`  
		Last Modified: Tue, 16 Oct 2018 23:09:17 GMT  
		Size: 36.3 MB (36322141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6270620ae4811d55fe24122f02608155597be84b9052ca607e362d185b590a16`  
		Last Modified: Tue, 16 Oct 2018 23:09:08 GMT  
		Size: 1.1 MB (1069851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297abab428933768443992128d0613e3a15d60359a1364aba27f1fb0cfbd7612`  
		Last Modified: Wed, 17 Oct 2018 10:26:32 GMT  
		Size: 480.6 KB (480569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865f0ed9e2b23ee0eda61134005d8542440d6e4b480effef680e6c5c917f959d`  
		Last Modified: Fri, 02 Nov 2018 10:55:39 GMT  
		Size: 17.2 MB (17249614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2874417580de17c5c4d2f9b1874b898cbdbaf41e8eac778dcbeabf5885412d08`  
		Last Modified: Fri, 02 Nov 2018 10:57:06 GMT  
		Size: 94.1 MB (94107051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:007f6ae7c5c5c033b95aab979bb56f4c2331bb898e323ac36cc6bfa94ecbac52`  
		Last Modified: Fri, 02 Nov 2018 10:56:47 GMT  
		Size: 28.3 MB (28301185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9a187b58e8b1e6bbcf112c6a7f6242c8d76fd78a009c853a7754501706d9e9`  
		Last Modified: Fri, 02 Nov 2018 10:56:40 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25`

```console
$ docker pull ghost@sha256:d3ffc0614c5e61ea615055055ab8023020dff7b5b2d74459c34cec6b766b1eda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `ghost:1.25` - linux; amd64

```console
$ docker pull ghost@sha256:cd117d4cbd139f57f130c73f342f8c45c6bed565446f42fc3f431d5a2c769b77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.1 MB (196066964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:437d46349427f7b73b42c446a4256bbf6d2cc516f1bb109d0b70906bd553e671`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:23:09 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 16 Oct 2018 06:23:11 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 16 Oct 2018 06:23:11 GMT
ENV NODE_VERSION=8.12.0
# Tue, 16 Oct 2018 06:23:54 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 16 Oct 2018 06:23:55 GMT
ENV YARN_VERSION=1.9.4
# Tue, 16 Oct 2018 06:23:56 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 16 Oct 2018 06:23:56 GMT
CMD ["node"]
# Tue, 16 Oct 2018 19:16:12 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 19:16:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 16 Oct 2018 19:16:14 GMT
ENV NODE_ENV=production
# Thu, 01 Nov 2018 20:24:28 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Thu, 01 Nov 2018 20:24:50 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 01 Nov 2018 20:24:58 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 01 Nov 2018 20:24:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 01 Nov 2018 20:27:57 GMT
ENV GHOST_VERSION=1.25.5
# Thu, 01 Nov 2018 20:28:31 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 01 Nov 2018 20:28:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 01 Nov 2018 20:28:52 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 01 Nov 2018 20:28:52 GMT
WORKDIR /var/lib/ghost
# Thu, 01 Nov 2018 20:29:03 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 01 Nov 2018 20:29:04 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Thu, 01 Nov 2018 20:29:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 01 Nov 2018 20:29:04 GMT
EXPOSE 2368/tcp
# Thu, 01 Nov 2018 20:29:04 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c7020e9265938dfd1537010da855743d4c5ad1f29580c74d9710c324e540bf`  
		Last Modified: Tue, 16 Oct 2018 06:31:23 GMT  
		Size: 4.4 KB (4402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02415c59bfcbeef0b3f11920ef1cec01a4e78929a783524d553e85e4b7470b2f`  
		Last Modified: Tue, 16 Oct 2018 06:31:22 GMT  
		Size: 124.7 KB (124683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b94195c82796a706cb3a7771674d8cb1ef49504ab5215715d7aa0eedb2b3ed17`  
		Last Modified: Tue, 16 Oct 2018 06:31:33 GMT  
		Size: 34.4 MB (34396999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595fff18a493c38cee9bd969d57fb363c3419f4d5df1ce5285ea3548b668159d`  
		Last Modified: Tue, 16 Oct 2018 06:31:23 GMT  
		Size: 1.1 MB (1069854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0589974b7401fe0ee2e4f1f4ec50853b8f6631d126736e0a8210996401a70747`  
		Last Modified: Tue, 16 Oct 2018 19:23:06 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7ce5f8b0fb64a903f0621644c0ddca2aab9351162442dedaee670f2fb7399c`  
		Last Modified: Thu, 01 Nov 2018 20:31:46 GMT  
		Size: 17.2 MB (17247142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c02bacc0c3d628d71ca989a1594d53bdaaf2702a910cbc79eb1f1cae8c3cf8`  
		Last Modified: Thu, 01 Nov 2018 20:35:48 GMT  
		Size: 101.8 MB (101824655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f762155cdfd4587121f1dd4537f6ed495369d1cc0cc01f92d8ad8e02f8afe5`  
		Last Modified: Thu, 01 Nov 2018 20:35:29 GMT  
		Size: 10.8 MB (10777346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc7f2622c266f1afa599fdc58a9d8ca7b8a28d16025cdb0c373939b83a4b289`  
		Last Modified: Thu, 01 Nov 2018 20:35:27 GMT  
		Size: 588.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; arm variant v7

```console
$ docker pull ghost@sha256:b2bfdeda273bf2aafe3d6eee733ac15bd348ed27b790d280ca6b7f60508d242c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.4 MB (192403432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88ce54e75c2f4603f569bdf021783a865b34e2765ee51d69b57a85ea2fce2c2f`
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
# Thu, 04 Oct 2018 11:57:39 GMT
ENV GHOST_CLI_VERSION=1.9.6
# Thu, 04 Oct 2018 11:58:19 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 04 Oct 2018 11:58:30 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 04 Oct 2018 11:58:30 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 04 Oct 2018 12:04:22 GMT
ENV GHOST_VERSION=1.25.5
# Thu, 04 Oct 2018 12:05:49 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 04 Oct 2018 12:05:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 04 Oct 2018 12:09:18 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 04 Oct 2018 12:09:19 GMT
WORKDIR /var/lib/ghost
# Thu, 04 Oct 2018 12:09:19 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 04 Oct 2018 12:09:20 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Thu, 04 Oct 2018 12:09:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 04 Oct 2018 12:09:20 GMT
EXPOSE 2368/tcp
# Thu, 04 Oct 2018 12:09:21 GMT
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
	-	`sha256:16ec17ba64ed82c051cfc1e210db0d3e636464e6b59d78776b3fa9b914a95714`  
		Last Modified: Thu, 04 Oct 2018 12:09:48 GMT  
		Size: 17.2 MB (17215030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10dcba5e9ced554485c8ab3245f5a258f7ed0c88409f4f01319909875c12eff9`  
		Last Modified: Thu, 04 Oct 2018 12:11:31 GMT  
		Size: 94.1 MB (94105470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fcb124503f32dafa4e443e02c6a403dee4c4f21934c1f2abeb7572fa8f19dd`  
		Last Modified: Thu, 04 Oct 2018 12:11:04 GMT  
		Size: 20.5 MB (20545831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6484202ad5977caa3b3f09259bbfe4ceebdecab2b9b32210dac1c6e76a4149`  
		Last Modified: Thu, 04 Oct 2018 12:10:59 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25` - linux; 386

```console
$ docker pull ghost@sha256:ce1452b1efa0e8c70a4198e043a5e990c87f438003303adbb2d00e98d29055ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.9 MB (207930096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf17e743a6a116b27ba816d8a68c2d8209fed67b4d07c3df1e2a46253b376010`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:56 GMT
ADD file:805bcf9c1da55b8a2fe5407bcea59a7af4f4e70001d03f514f31e4bafcb20a1c in / 
# Tue, 16 Oct 2018 10:41:56 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 23:00:58 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 16 Oct 2018 23:01:00 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 16 Oct 2018 23:01:00 GMT
ENV NODE_VERSION=8.12.0
# Tue, 16 Oct 2018 23:01:50 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 16 Oct 2018 23:01:50 GMT
ENV YARN_VERSION=1.9.4
# Tue, 16 Oct 2018 23:01:51 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 16 Oct 2018 23:01:52 GMT
CMD ["node"]
# Wed, 17 Oct 2018 10:16:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 17 Oct 2018 10:16:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 17 Oct 2018 10:16:51 GMT
ENV NODE_ENV=production
# Fri, 02 Nov 2018 10:47:32 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Fri, 02 Nov 2018 10:47:51 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 02 Nov 2018 10:47:51 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 02 Nov 2018 10:47:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 02 Nov 2018 10:51:30 GMT
ENV GHOST_VERSION=1.25.5
# Fri, 02 Nov 2018 10:52:06 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 02 Nov 2018 10:52:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 02 Nov 2018 10:54:11 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 02 Nov 2018 10:54:11 GMT
WORKDIR /var/lib/ghost
# Fri, 02 Nov 2018 10:54:12 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 02 Nov 2018 10:54:12 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Fri, 02 Nov 2018 10:54:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Nov 2018 10:54:12 GMT
EXPOSE 2368/tcp
# Fri, 02 Nov 2018 10:54:13 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:8fa4cce02855aa948a5b8498a42eb08255f5ed0b56d7820985ad2853ff0a254a`  
		Last Modified: Tue, 16 Oct 2018 10:57:05 GMT  
		Size: 30.3 MB (30270032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fec25e63b2f6b72046290fce9c37fedd19663754f05030df28f8ecfe9e04db`  
		Last Modified: Tue, 16 Oct 2018 23:09:08 GMT  
		Size: 4.4 KB (4387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce81d04ef17865a77b4bab21aca35b02627110cffa32c2b4b211622522c78c11`  
		Last Modified: Tue, 16 Oct 2018 23:09:08 GMT  
		Size: 124.7 KB (124680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f139290f43e80f12b353d7d9a03664371a8a1348ab8bedc57c805d52c9e34d`  
		Last Modified: Tue, 16 Oct 2018 23:09:17 GMT  
		Size: 36.3 MB (36322141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6270620ae4811d55fe24122f02608155597be84b9052ca607e362d185b590a16`  
		Last Modified: Tue, 16 Oct 2018 23:09:08 GMT  
		Size: 1.1 MB (1069851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297abab428933768443992128d0613e3a15d60359a1364aba27f1fb0cfbd7612`  
		Last Modified: Wed, 17 Oct 2018 10:26:32 GMT  
		Size: 480.6 KB (480569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865f0ed9e2b23ee0eda61134005d8542440d6e4b480effef680e6c5c917f959d`  
		Last Modified: Fri, 02 Nov 2018 10:55:39 GMT  
		Size: 17.2 MB (17249614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2874417580de17c5c4d2f9b1874b898cbdbaf41e8eac778dcbeabf5885412d08`  
		Last Modified: Fri, 02 Nov 2018 10:57:06 GMT  
		Size: 94.1 MB (94107051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:007f6ae7c5c5c033b95aab979bb56f4c2331bb898e323ac36cc6bfa94ecbac52`  
		Last Modified: Fri, 02 Nov 2018 10:56:47 GMT  
		Size: 28.3 MB (28301185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9a187b58e8b1e6bbcf112c6a7f6242c8d76fd78a009c853a7754501706d9e9`  
		Last Modified: Fri, 02 Nov 2018 10:56:40 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25.5`

```console
$ docker pull ghost@sha256:d3ffc0614c5e61ea615055055ab8023020dff7b5b2d74459c34cec6b766b1eda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `ghost:1.25.5` - linux; amd64

```console
$ docker pull ghost@sha256:cd117d4cbd139f57f130c73f342f8c45c6bed565446f42fc3f431d5a2c769b77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.1 MB (196066964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:437d46349427f7b73b42c446a4256bbf6d2cc516f1bb109d0b70906bd553e671`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:23:09 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 16 Oct 2018 06:23:11 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 16 Oct 2018 06:23:11 GMT
ENV NODE_VERSION=8.12.0
# Tue, 16 Oct 2018 06:23:54 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 16 Oct 2018 06:23:55 GMT
ENV YARN_VERSION=1.9.4
# Tue, 16 Oct 2018 06:23:56 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 16 Oct 2018 06:23:56 GMT
CMD ["node"]
# Tue, 16 Oct 2018 19:16:12 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 19:16:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 16 Oct 2018 19:16:14 GMT
ENV NODE_ENV=production
# Thu, 01 Nov 2018 20:24:28 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Thu, 01 Nov 2018 20:24:50 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 01 Nov 2018 20:24:58 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 01 Nov 2018 20:24:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 01 Nov 2018 20:27:57 GMT
ENV GHOST_VERSION=1.25.5
# Thu, 01 Nov 2018 20:28:31 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 01 Nov 2018 20:28:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 01 Nov 2018 20:28:52 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 01 Nov 2018 20:28:52 GMT
WORKDIR /var/lib/ghost
# Thu, 01 Nov 2018 20:29:03 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 01 Nov 2018 20:29:04 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Thu, 01 Nov 2018 20:29:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 01 Nov 2018 20:29:04 GMT
EXPOSE 2368/tcp
# Thu, 01 Nov 2018 20:29:04 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c7020e9265938dfd1537010da855743d4c5ad1f29580c74d9710c324e540bf`  
		Last Modified: Tue, 16 Oct 2018 06:31:23 GMT  
		Size: 4.4 KB (4402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02415c59bfcbeef0b3f11920ef1cec01a4e78929a783524d553e85e4b7470b2f`  
		Last Modified: Tue, 16 Oct 2018 06:31:22 GMT  
		Size: 124.7 KB (124683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b94195c82796a706cb3a7771674d8cb1ef49504ab5215715d7aa0eedb2b3ed17`  
		Last Modified: Tue, 16 Oct 2018 06:31:33 GMT  
		Size: 34.4 MB (34396999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595fff18a493c38cee9bd969d57fb363c3419f4d5df1ce5285ea3548b668159d`  
		Last Modified: Tue, 16 Oct 2018 06:31:23 GMT  
		Size: 1.1 MB (1069854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0589974b7401fe0ee2e4f1f4ec50853b8f6631d126736e0a8210996401a70747`  
		Last Modified: Tue, 16 Oct 2018 19:23:06 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7ce5f8b0fb64a903f0621644c0ddca2aab9351162442dedaee670f2fb7399c`  
		Last Modified: Thu, 01 Nov 2018 20:31:46 GMT  
		Size: 17.2 MB (17247142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c02bacc0c3d628d71ca989a1594d53bdaaf2702a910cbc79eb1f1cae8c3cf8`  
		Last Modified: Thu, 01 Nov 2018 20:35:48 GMT  
		Size: 101.8 MB (101824655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f762155cdfd4587121f1dd4537f6ed495369d1cc0cc01f92d8ad8e02f8afe5`  
		Last Modified: Thu, 01 Nov 2018 20:35:29 GMT  
		Size: 10.8 MB (10777346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc7f2622c266f1afa599fdc58a9d8ca7b8a28d16025cdb0c373939b83a4b289`  
		Last Modified: Thu, 01 Nov 2018 20:35:27 GMT  
		Size: 588.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.5` - linux; arm variant v7

```console
$ docker pull ghost@sha256:b2bfdeda273bf2aafe3d6eee733ac15bd348ed27b790d280ca6b7f60508d242c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.4 MB (192403432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88ce54e75c2f4603f569bdf021783a865b34e2765ee51d69b57a85ea2fce2c2f`
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
# Thu, 04 Oct 2018 11:57:39 GMT
ENV GHOST_CLI_VERSION=1.9.6
# Thu, 04 Oct 2018 11:58:19 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 04 Oct 2018 11:58:30 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 04 Oct 2018 11:58:30 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 04 Oct 2018 12:04:22 GMT
ENV GHOST_VERSION=1.25.5
# Thu, 04 Oct 2018 12:05:49 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 04 Oct 2018 12:05:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 04 Oct 2018 12:09:18 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 04 Oct 2018 12:09:19 GMT
WORKDIR /var/lib/ghost
# Thu, 04 Oct 2018 12:09:19 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 04 Oct 2018 12:09:20 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Thu, 04 Oct 2018 12:09:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 04 Oct 2018 12:09:20 GMT
EXPOSE 2368/tcp
# Thu, 04 Oct 2018 12:09:21 GMT
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
	-	`sha256:16ec17ba64ed82c051cfc1e210db0d3e636464e6b59d78776b3fa9b914a95714`  
		Last Modified: Thu, 04 Oct 2018 12:09:48 GMT  
		Size: 17.2 MB (17215030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10dcba5e9ced554485c8ab3245f5a258f7ed0c88409f4f01319909875c12eff9`  
		Last Modified: Thu, 04 Oct 2018 12:11:31 GMT  
		Size: 94.1 MB (94105470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fcb124503f32dafa4e443e02c6a403dee4c4f21934c1f2abeb7572fa8f19dd`  
		Last Modified: Thu, 04 Oct 2018 12:11:04 GMT  
		Size: 20.5 MB (20545831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6484202ad5977caa3b3f09259bbfe4ceebdecab2b9b32210dac1c6e76a4149`  
		Last Modified: Thu, 04 Oct 2018 12:10:59 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.5` - linux; 386

```console
$ docker pull ghost@sha256:ce1452b1efa0e8c70a4198e043a5e990c87f438003303adbb2d00e98d29055ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.9 MB (207930096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf17e743a6a116b27ba816d8a68c2d8209fed67b4d07c3df1e2a46253b376010`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:56 GMT
ADD file:805bcf9c1da55b8a2fe5407bcea59a7af4f4e70001d03f514f31e4bafcb20a1c in / 
# Tue, 16 Oct 2018 10:41:56 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 23:00:58 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 16 Oct 2018 23:01:00 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 16 Oct 2018 23:01:00 GMT
ENV NODE_VERSION=8.12.0
# Tue, 16 Oct 2018 23:01:50 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 16 Oct 2018 23:01:50 GMT
ENV YARN_VERSION=1.9.4
# Tue, 16 Oct 2018 23:01:51 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 16 Oct 2018 23:01:52 GMT
CMD ["node"]
# Wed, 17 Oct 2018 10:16:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 17 Oct 2018 10:16:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 17 Oct 2018 10:16:51 GMT
ENV NODE_ENV=production
# Fri, 02 Nov 2018 10:47:32 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Fri, 02 Nov 2018 10:47:51 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 02 Nov 2018 10:47:51 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 02 Nov 2018 10:47:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 02 Nov 2018 10:51:30 GMT
ENV GHOST_VERSION=1.25.5
# Fri, 02 Nov 2018 10:52:06 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 02 Nov 2018 10:52:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 02 Nov 2018 10:54:11 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 02 Nov 2018 10:54:11 GMT
WORKDIR /var/lib/ghost
# Fri, 02 Nov 2018 10:54:12 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 02 Nov 2018 10:54:12 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Fri, 02 Nov 2018 10:54:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Nov 2018 10:54:12 GMT
EXPOSE 2368/tcp
# Fri, 02 Nov 2018 10:54:13 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:8fa4cce02855aa948a5b8498a42eb08255f5ed0b56d7820985ad2853ff0a254a`  
		Last Modified: Tue, 16 Oct 2018 10:57:05 GMT  
		Size: 30.3 MB (30270032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fec25e63b2f6b72046290fce9c37fedd19663754f05030df28f8ecfe9e04db`  
		Last Modified: Tue, 16 Oct 2018 23:09:08 GMT  
		Size: 4.4 KB (4387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce81d04ef17865a77b4bab21aca35b02627110cffa32c2b4b211622522c78c11`  
		Last Modified: Tue, 16 Oct 2018 23:09:08 GMT  
		Size: 124.7 KB (124680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f139290f43e80f12b353d7d9a03664371a8a1348ab8bedc57c805d52c9e34d`  
		Last Modified: Tue, 16 Oct 2018 23:09:17 GMT  
		Size: 36.3 MB (36322141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6270620ae4811d55fe24122f02608155597be84b9052ca607e362d185b590a16`  
		Last Modified: Tue, 16 Oct 2018 23:09:08 GMT  
		Size: 1.1 MB (1069851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297abab428933768443992128d0613e3a15d60359a1364aba27f1fb0cfbd7612`  
		Last Modified: Wed, 17 Oct 2018 10:26:32 GMT  
		Size: 480.6 KB (480569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865f0ed9e2b23ee0eda61134005d8542440d6e4b480effef680e6c5c917f959d`  
		Last Modified: Fri, 02 Nov 2018 10:55:39 GMT  
		Size: 17.2 MB (17249614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2874417580de17c5c4d2f9b1874b898cbdbaf41e8eac778dcbeabf5885412d08`  
		Last Modified: Fri, 02 Nov 2018 10:57:06 GMT  
		Size: 94.1 MB (94107051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:007f6ae7c5c5c033b95aab979bb56f4c2331bb898e323ac36cc6bfa94ecbac52`  
		Last Modified: Fri, 02 Nov 2018 10:56:47 GMT  
		Size: 28.3 MB (28301185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9a187b58e8b1e6bbcf112c6a7f6242c8d76fd78a009c853a7754501706d9e9`  
		Last Modified: Fri, 02 Nov 2018 10:56:40 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25.5-alpine`

```console
$ docker pull ghost@sha256:658201822fc0c1f04d8f20fa1453443714061c14ddd3a9ed6865853b6d1f986a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1.25.5-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:e0317fe824242809b119d59aa7ad5611e0ada1b89589a9dd3c8ea267321c48ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142358703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d9269695d7b85edd8506447c1d8d8ae979ffe5bbc8ebc38f76170d06a474786`
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
# Thu, 01 Nov 2018 20:26:18 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Thu, 01 Nov 2018 20:26:39 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 01 Nov 2018 20:26:39 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 01 Nov 2018 20:26:39 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 01 Nov 2018 20:29:33 GMT
ENV GHOST_VERSION=1.25.5
# Thu, 01 Nov 2018 20:30:07 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 01 Nov 2018 20:30:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 01 Nov 2018 20:30:19 GMT
WORKDIR /var/lib/ghost
# Thu, 01 Nov 2018 20:30:19 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 01 Nov 2018 20:30:19 GMT
COPY file:ec5f0dc0340c44f728261188497016ebbb720b84d4de7a293d7d96e1d7c20c56 in /usr/local/bin 
# Thu, 01 Nov 2018 20:30:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 01 Nov 2018 20:30:20 GMT
EXPOSE 2368/tcp
# Thu, 01 Nov 2018 20:30:20 GMT
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
	-	`sha256:83f47d2e5bc6a302e96738a9d93b7c417963c32ecaa7e99026c2b63db10ec880`  
		Last Modified: Thu, 01 Nov 2018 20:33:43 GMT  
		Size: 17.2 MB (17247271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5455b3cd5ca87473f5a4b4548f0e978d0f1179ace53b467adce15356d368f620`  
		Last Modified: Thu, 01 Nov 2018 20:37:09 GMT  
		Size: 101.8 MB (101823561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb71225b0db51cf64df9e458f98adc04014b915434606b5a75863bda2d10e16`  
		Last Modified: Thu, 01 Nov 2018 20:36:49 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.5-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:afc36ab4e8b3058e93c9cd689a128d72457e6a19d5b913644bbc99c20d8d8b00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133514675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c03decb13daf69822825d3737669b9d4364f77d41033196aba10119cbc8af3fd`
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
# Fri, 02 Nov 2018 07:50:08 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Fri, 02 Nov 2018 07:50:50 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 02 Nov 2018 07:50:52 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 02 Nov 2018 07:50:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 02 Nov 2018 07:52:58 GMT
ENV GHOST_VERSION=1.25.5
# Fri, 02 Nov 2018 07:54:31 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 02 Nov 2018 07:54:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 02 Nov 2018 07:54:36 GMT
WORKDIR /var/lib/ghost
# Fri, 02 Nov 2018 07:54:37 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 02 Nov 2018 07:54:37 GMT
COPY file:ec5f0dc0340c44f728261188497016ebbb720b84d4de7a293d7d96e1d7c20c56 in /usr/local/bin 
# Fri, 02 Nov 2018 07:54:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Nov 2018 07:54:39 GMT
EXPOSE 2368/tcp
# Fri, 02 Nov 2018 07:54:39 GMT
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
	-	`sha256:6c976e41baf7f4d29496ff1361194fd7ed0f03475ade3110dd25a95294f0d0b3`  
		Last Modified: Fri, 02 Nov 2018 07:55:19 GMT  
		Size: 17.3 MB (17252802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4173d776161429252bec34b8dcb526d2c95e91b142148f5d0b206898e4411961`  
		Last Modified: Fri, 02 Nov 2018 07:56:48 GMT  
		Size: 94.1 MB (94105679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c6bd96413e2de1db45be4d1f3644c492e4068992fc29d5cffbd9b39e572bc8`  
		Last Modified: Fri, 02 Nov 2018 07:56:17 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.5-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:4c49601cbdd14a4c09f06f91807c676ba4b9c844b4b86c1e1821c363e565a9a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.4 MB (134435377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:250c82a57f87dd1ca32752402c0e4647d2d24990579a19d355bea9221fc3a063`
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
# Fri, 02 Nov 2018 08:28:03 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Fri, 02 Nov 2018 08:28:47 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 02 Nov 2018 08:28:50 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 02 Nov 2018 08:28:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 02 Nov 2018 08:40:59 GMT
ENV GHOST_VERSION=1.25.5
# Fri, 02 Nov 2018 08:43:03 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 02 Nov 2018 08:43:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 02 Nov 2018 08:43:18 GMT
WORKDIR /var/lib/ghost
# Fri, 02 Nov 2018 08:43:21 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 02 Nov 2018 08:43:24 GMT
COPY file:ec5f0dc0340c44f728261188497016ebbb720b84d4de7a293d7d96e1d7c20c56 in /usr/local/bin 
# Fri, 02 Nov 2018 08:43:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Nov 2018 08:43:30 GMT
EXPOSE 2368/tcp
# Fri, 02 Nov 2018 08:43:31 GMT
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
	-	`sha256:97ba8dc98a78a80e77dd5e48567476d1f3cbca2ea2aac7dedce160c8df438c0e`  
		Last Modified: Fri, 02 Nov 2018 08:46:08 GMT  
		Size: 17.2 MB (17248938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c4504d9aee2ee2b699642814bc6b6b630dd5604f670a2a18930ae689b89ed7`  
		Last Modified: Fri, 02 Nov 2018 08:49:55 GMT  
		Size: 94.1 MB (94106682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4474980a0b671f1c06c98f2a574dd7f81109d7e59be0718c13ea28ae1710dee4`  
		Last Modified: Fri, 02 Nov 2018 08:48:33 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25-alpine`

```console
$ docker pull ghost@sha256:658201822fc0c1f04d8f20fa1453443714061c14ddd3a9ed6865853b6d1f986a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1.25-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:e0317fe824242809b119d59aa7ad5611e0ada1b89589a9dd3c8ea267321c48ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142358703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d9269695d7b85edd8506447c1d8d8ae979ffe5bbc8ebc38f76170d06a474786`
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
# Thu, 01 Nov 2018 20:26:18 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Thu, 01 Nov 2018 20:26:39 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 01 Nov 2018 20:26:39 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 01 Nov 2018 20:26:39 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 01 Nov 2018 20:29:33 GMT
ENV GHOST_VERSION=1.25.5
# Thu, 01 Nov 2018 20:30:07 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 01 Nov 2018 20:30:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 01 Nov 2018 20:30:19 GMT
WORKDIR /var/lib/ghost
# Thu, 01 Nov 2018 20:30:19 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 01 Nov 2018 20:30:19 GMT
COPY file:ec5f0dc0340c44f728261188497016ebbb720b84d4de7a293d7d96e1d7c20c56 in /usr/local/bin 
# Thu, 01 Nov 2018 20:30:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 01 Nov 2018 20:30:20 GMT
EXPOSE 2368/tcp
# Thu, 01 Nov 2018 20:30:20 GMT
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
	-	`sha256:83f47d2e5bc6a302e96738a9d93b7c417963c32ecaa7e99026c2b63db10ec880`  
		Last Modified: Thu, 01 Nov 2018 20:33:43 GMT  
		Size: 17.2 MB (17247271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5455b3cd5ca87473f5a4b4548f0e978d0f1179ace53b467adce15356d368f620`  
		Last Modified: Thu, 01 Nov 2018 20:37:09 GMT  
		Size: 101.8 MB (101823561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb71225b0db51cf64df9e458f98adc04014b915434606b5a75863bda2d10e16`  
		Last Modified: Thu, 01 Nov 2018 20:36:49 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:afc36ab4e8b3058e93c9cd689a128d72457e6a19d5b913644bbc99c20d8d8b00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133514675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c03decb13daf69822825d3737669b9d4364f77d41033196aba10119cbc8af3fd`
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
# Fri, 02 Nov 2018 07:50:08 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Fri, 02 Nov 2018 07:50:50 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 02 Nov 2018 07:50:52 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 02 Nov 2018 07:50:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 02 Nov 2018 07:52:58 GMT
ENV GHOST_VERSION=1.25.5
# Fri, 02 Nov 2018 07:54:31 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 02 Nov 2018 07:54:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 02 Nov 2018 07:54:36 GMT
WORKDIR /var/lib/ghost
# Fri, 02 Nov 2018 07:54:37 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 02 Nov 2018 07:54:37 GMT
COPY file:ec5f0dc0340c44f728261188497016ebbb720b84d4de7a293d7d96e1d7c20c56 in /usr/local/bin 
# Fri, 02 Nov 2018 07:54:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Nov 2018 07:54:39 GMT
EXPOSE 2368/tcp
# Fri, 02 Nov 2018 07:54:39 GMT
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
	-	`sha256:6c976e41baf7f4d29496ff1361194fd7ed0f03475ade3110dd25a95294f0d0b3`  
		Last Modified: Fri, 02 Nov 2018 07:55:19 GMT  
		Size: 17.3 MB (17252802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4173d776161429252bec34b8dcb526d2c95e91b142148f5d0b206898e4411961`  
		Last Modified: Fri, 02 Nov 2018 07:56:48 GMT  
		Size: 94.1 MB (94105679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c6bd96413e2de1db45be4d1f3644c492e4068992fc29d5cffbd9b39e572bc8`  
		Last Modified: Fri, 02 Nov 2018 07:56:17 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:4c49601cbdd14a4c09f06f91807c676ba4b9c844b4b86c1e1821c363e565a9a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.4 MB (134435377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:250c82a57f87dd1ca32752402c0e4647d2d24990579a19d355bea9221fc3a063`
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
# Fri, 02 Nov 2018 08:28:03 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Fri, 02 Nov 2018 08:28:47 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 02 Nov 2018 08:28:50 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 02 Nov 2018 08:28:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 02 Nov 2018 08:40:59 GMT
ENV GHOST_VERSION=1.25.5
# Fri, 02 Nov 2018 08:43:03 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 02 Nov 2018 08:43:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 02 Nov 2018 08:43:18 GMT
WORKDIR /var/lib/ghost
# Fri, 02 Nov 2018 08:43:21 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 02 Nov 2018 08:43:24 GMT
COPY file:ec5f0dc0340c44f728261188497016ebbb720b84d4de7a293d7d96e1d7c20c56 in /usr/local/bin 
# Fri, 02 Nov 2018 08:43:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Nov 2018 08:43:30 GMT
EXPOSE 2368/tcp
# Fri, 02 Nov 2018 08:43:31 GMT
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
	-	`sha256:97ba8dc98a78a80e77dd5e48567476d1f3cbca2ea2aac7dedce160c8df438c0e`  
		Last Modified: Fri, 02 Nov 2018 08:46:08 GMT  
		Size: 17.2 MB (17248938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c4504d9aee2ee2b699642814bc6b6b630dd5604f670a2a18930ae689b89ed7`  
		Last Modified: Fri, 02 Nov 2018 08:49:55 GMT  
		Size: 94.1 MB (94106682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4474980a0b671f1c06c98f2a574dd7f81109d7e59be0718c13ea28ae1710dee4`  
		Last Modified: Fri, 02 Nov 2018 08:48:33 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:658201822fc0c1f04d8f20fa1453443714061c14ddd3a9ed6865853b6d1f986a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:e0317fe824242809b119d59aa7ad5611e0ada1b89589a9dd3c8ea267321c48ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142358703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d9269695d7b85edd8506447c1d8d8ae979ffe5bbc8ebc38f76170d06a474786`
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
# Thu, 01 Nov 2018 20:26:18 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Thu, 01 Nov 2018 20:26:39 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 01 Nov 2018 20:26:39 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 01 Nov 2018 20:26:39 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 01 Nov 2018 20:29:33 GMT
ENV GHOST_VERSION=1.25.5
# Thu, 01 Nov 2018 20:30:07 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 01 Nov 2018 20:30:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 01 Nov 2018 20:30:19 GMT
WORKDIR /var/lib/ghost
# Thu, 01 Nov 2018 20:30:19 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 01 Nov 2018 20:30:19 GMT
COPY file:ec5f0dc0340c44f728261188497016ebbb720b84d4de7a293d7d96e1d7c20c56 in /usr/local/bin 
# Thu, 01 Nov 2018 20:30:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 01 Nov 2018 20:30:20 GMT
EXPOSE 2368/tcp
# Thu, 01 Nov 2018 20:30:20 GMT
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
	-	`sha256:83f47d2e5bc6a302e96738a9d93b7c417963c32ecaa7e99026c2b63db10ec880`  
		Last Modified: Thu, 01 Nov 2018 20:33:43 GMT  
		Size: 17.2 MB (17247271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5455b3cd5ca87473f5a4b4548f0e978d0f1179ace53b467adce15356d368f620`  
		Last Modified: Thu, 01 Nov 2018 20:37:09 GMT  
		Size: 101.8 MB (101823561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb71225b0db51cf64df9e458f98adc04014b915434606b5a75863bda2d10e16`  
		Last Modified: Thu, 01 Nov 2018 20:36:49 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:afc36ab4e8b3058e93c9cd689a128d72457e6a19d5b913644bbc99c20d8d8b00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133514675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c03decb13daf69822825d3737669b9d4364f77d41033196aba10119cbc8af3fd`
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
# Fri, 02 Nov 2018 07:50:08 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Fri, 02 Nov 2018 07:50:50 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 02 Nov 2018 07:50:52 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 02 Nov 2018 07:50:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 02 Nov 2018 07:52:58 GMT
ENV GHOST_VERSION=1.25.5
# Fri, 02 Nov 2018 07:54:31 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 02 Nov 2018 07:54:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 02 Nov 2018 07:54:36 GMT
WORKDIR /var/lib/ghost
# Fri, 02 Nov 2018 07:54:37 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 02 Nov 2018 07:54:37 GMT
COPY file:ec5f0dc0340c44f728261188497016ebbb720b84d4de7a293d7d96e1d7c20c56 in /usr/local/bin 
# Fri, 02 Nov 2018 07:54:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Nov 2018 07:54:39 GMT
EXPOSE 2368/tcp
# Fri, 02 Nov 2018 07:54:39 GMT
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
	-	`sha256:6c976e41baf7f4d29496ff1361194fd7ed0f03475ade3110dd25a95294f0d0b3`  
		Last Modified: Fri, 02 Nov 2018 07:55:19 GMT  
		Size: 17.3 MB (17252802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4173d776161429252bec34b8dcb526d2c95e91b142148f5d0b206898e4411961`  
		Last Modified: Fri, 02 Nov 2018 07:56:48 GMT  
		Size: 94.1 MB (94105679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c6bd96413e2de1db45be4d1f3644c492e4068992fc29d5cffbd9b39e572bc8`  
		Last Modified: Fri, 02 Nov 2018 07:56:17 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:4c49601cbdd14a4c09f06f91807c676ba4b9c844b4b86c1e1821c363e565a9a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.4 MB (134435377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:250c82a57f87dd1ca32752402c0e4647d2d24990579a19d355bea9221fc3a063`
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
# Fri, 02 Nov 2018 08:28:03 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Fri, 02 Nov 2018 08:28:47 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 02 Nov 2018 08:28:50 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 02 Nov 2018 08:28:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 02 Nov 2018 08:40:59 GMT
ENV GHOST_VERSION=1.25.5
# Fri, 02 Nov 2018 08:43:03 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 02 Nov 2018 08:43:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 02 Nov 2018 08:43:18 GMT
WORKDIR /var/lib/ghost
# Fri, 02 Nov 2018 08:43:21 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 02 Nov 2018 08:43:24 GMT
COPY file:ec5f0dc0340c44f728261188497016ebbb720b84d4de7a293d7d96e1d7c20c56 in /usr/local/bin 
# Fri, 02 Nov 2018 08:43:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Nov 2018 08:43:30 GMT
EXPOSE 2368/tcp
# Fri, 02 Nov 2018 08:43:31 GMT
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
	-	`sha256:97ba8dc98a78a80e77dd5e48567476d1f3cbca2ea2aac7dedce160c8df438c0e`  
		Last Modified: Fri, 02 Nov 2018 08:46:08 GMT  
		Size: 17.2 MB (17248938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c4504d9aee2ee2b699642814bc6b6b630dd5604f670a2a18930ae689b89ed7`  
		Last Modified: Fri, 02 Nov 2018 08:49:55 GMT  
		Size: 94.1 MB (94106682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4474980a0b671f1c06c98f2a574dd7f81109d7e59be0718c13ea28ae1710dee4`  
		Last Modified: Fri, 02 Nov 2018 08:48:33 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2`

```console
$ docker pull ghost@sha256:adc27e22a21c0447b918b3865962335b0582743fa4c3407aa0ba4b5b0c4020f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `ghost:2` - linux; amd64

```console
$ docker pull ghost@sha256:108a6a2c8c34420861a3fb57d5a41fcc6a6d2a5b4721353b592bb7f8fdf64a75
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.8 MB (192812741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:410f631b01765aa71a55b7d615f504a8f66212aa8f3a60bf1cbf6e7ae6c829f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:23:09 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 16 Oct 2018 06:23:11 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 16 Oct 2018 06:23:11 GMT
ENV NODE_VERSION=8.12.0
# Tue, 16 Oct 2018 06:23:54 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 16 Oct 2018 06:23:55 GMT
ENV YARN_VERSION=1.9.4
# Tue, 16 Oct 2018 06:23:56 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 16 Oct 2018 06:23:56 GMT
CMD ["node"]
# Tue, 16 Oct 2018 19:16:12 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 19:16:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 16 Oct 2018 19:16:14 GMT
ENV NODE_ENV=production
# Thu, 01 Nov 2018 20:24:28 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Thu, 01 Nov 2018 20:24:50 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 01 Nov 2018 20:24:58 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 01 Nov 2018 20:24:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 01 Nov 2018 20:24:59 GMT
ENV GHOST_VERSION=2.4.0
# Thu, 01 Nov 2018 20:25:36 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 01 Nov 2018 20:25:45 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 01 Nov 2018 20:25:46 GMT
WORKDIR /var/lib/ghost
# Thu, 01 Nov 2018 20:25:46 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 01 Nov 2018 20:25:46 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Thu, 01 Nov 2018 20:25:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 01 Nov 2018 20:25:47 GMT
EXPOSE 2368/tcp
# Thu, 01 Nov 2018 20:25:47 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c7020e9265938dfd1537010da855743d4c5ad1f29580c74d9710c324e540bf`  
		Last Modified: Tue, 16 Oct 2018 06:31:23 GMT  
		Size: 4.4 KB (4402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02415c59bfcbeef0b3f11920ef1cec01a4e78929a783524d553e85e4b7470b2f`  
		Last Modified: Tue, 16 Oct 2018 06:31:22 GMT  
		Size: 124.7 KB (124683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b94195c82796a706cb3a7771674d8cb1ef49504ab5215715d7aa0eedb2b3ed17`  
		Last Modified: Tue, 16 Oct 2018 06:31:33 GMT  
		Size: 34.4 MB (34396999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595fff18a493c38cee9bd969d57fb363c3419f4d5df1ce5285ea3548b668159d`  
		Last Modified: Tue, 16 Oct 2018 06:31:23 GMT  
		Size: 1.1 MB (1069854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0589974b7401fe0ee2e4f1f4ec50853b8f6631d126736e0a8210996401a70747`  
		Last Modified: Tue, 16 Oct 2018 19:23:06 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7ce5f8b0fb64a903f0621644c0ddca2aab9351162442dedaee670f2fb7399c`  
		Last Modified: Thu, 01 Nov 2018 20:31:46 GMT  
		Size: 17.2 MB (17247142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c8a2122c58038ecbe73d2567b35b4eee1dd02dc57d726f146a9bd7d28592cf`  
		Last Modified: Thu, 01 Nov 2018 20:32:11 GMT  
		Size: 109.0 MB (109043548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a738c467137dbdb88822ed50599bbb7e09d6a86c84cecbc1378a72e4b3d6c2c4`  
		Last Modified: Thu, 01 Nov 2018 20:31:33 GMT  
		Size: 304.3 KB (304260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a0de8ccd4d87f1f84790ed5a4b4bc0373c77ef7bed83ae04637e660f173daf`  
		Last Modified: Thu, 01 Nov 2018 20:31:33 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; 386

```console
$ docker pull ghost@sha256:5c4a262d712977090160511b84ee22fbc3a7ce075e923fa1badc0b515ab2c20f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.6 MB (185603360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1bac11acf9ca807ad6f7c464a8f7f180d3d2c598571c5d54e53160a35c7f08c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:56 GMT
ADD file:805bcf9c1da55b8a2fe5407bcea59a7af4f4e70001d03f514f31e4bafcb20a1c in / 
# Tue, 16 Oct 2018 10:41:56 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 23:00:58 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 16 Oct 2018 23:01:00 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 16 Oct 2018 23:01:00 GMT
ENV NODE_VERSION=8.12.0
# Tue, 16 Oct 2018 23:01:50 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 16 Oct 2018 23:01:50 GMT
ENV YARN_VERSION=1.9.4
# Tue, 16 Oct 2018 23:01:51 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 16 Oct 2018 23:01:52 GMT
CMD ["node"]
# Wed, 17 Oct 2018 10:16:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 17 Oct 2018 10:16:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 17 Oct 2018 10:16:51 GMT
ENV NODE_ENV=production
# Fri, 02 Nov 2018 10:47:32 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Fri, 02 Nov 2018 10:47:51 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 02 Nov 2018 10:47:51 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 02 Nov 2018 10:47:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 02 Nov 2018 10:47:52 GMT
ENV GHOST_VERSION=2.4.0
# Fri, 02 Nov 2018 10:48:31 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 02 Nov 2018 10:50:38 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 02 Nov 2018 10:50:38 GMT
WORKDIR /var/lib/ghost
# Fri, 02 Nov 2018 10:50:38 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 02 Nov 2018 10:50:39 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Fri, 02 Nov 2018 10:50:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Nov 2018 10:50:39 GMT
EXPOSE 2368/tcp
# Fri, 02 Nov 2018 10:50:39 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:8fa4cce02855aa948a5b8498a42eb08255f5ed0b56d7820985ad2853ff0a254a`  
		Last Modified: Tue, 16 Oct 2018 10:57:05 GMT  
		Size: 30.3 MB (30270032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fec25e63b2f6b72046290fce9c37fedd19663754f05030df28f8ecfe9e04db`  
		Last Modified: Tue, 16 Oct 2018 23:09:08 GMT  
		Size: 4.4 KB (4387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce81d04ef17865a77b4bab21aca35b02627110cffa32c2b4b211622522c78c11`  
		Last Modified: Tue, 16 Oct 2018 23:09:08 GMT  
		Size: 124.7 KB (124680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f139290f43e80f12b353d7d9a03664371a8a1348ab8bedc57c805d52c9e34d`  
		Last Modified: Tue, 16 Oct 2018 23:09:17 GMT  
		Size: 36.3 MB (36322141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6270620ae4811d55fe24122f02608155597be84b9052ca607e362d185b590a16`  
		Last Modified: Tue, 16 Oct 2018 23:09:08 GMT  
		Size: 1.1 MB (1069851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297abab428933768443992128d0613e3a15d60359a1364aba27f1fb0cfbd7612`  
		Last Modified: Wed, 17 Oct 2018 10:26:32 GMT  
		Size: 480.6 KB (480569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865f0ed9e2b23ee0eda61134005d8542440d6e4b480effef680e6c5c917f959d`  
		Last Modified: Fri, 02 Nov 2018 10:55:39 GMT  
		Size: 17.2 MB (17249614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9384f34862d6722156503e047c93c21b010eb225735dc63b9bec01313a258036`  
		Last Modified: Fri, 02 Nov 2018 10:55:58 GMT  
		Size: 88.9 MB (88866952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e9f26f8754dd7e5a5cabf80cf2e8014c2055ec963aeb74b6d61f71b933381f`  
		Last Modified: Fri, 02 Nov 2018 10:55:34 GMT  
		Size: 11.2 MB (11214575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20732708e7fcb9a8c4fc9e445caf57892b2ac61b5240526a344d0aae8ddd9e39`  
		Last Modified: Fri, 02 Nov 2018 10:55:30 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.4`

```console
$ docker pull ghost@sha256:adc27e22a21c0447b918b3865962335b0582743fa4c3407aa0ba4b5b0c4020f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `ghost:2.4` - linux; amd64

```console
$ docker pull ghost@sha256:108a6a2c8c34420861a3fb57d5a41fcc6a6d2a5b4721353b592bb7f8fdf64a75
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.8 MB (192812741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:410f631b01765aa71a55b7d615f504a8f66212aa8f3a60bf1cbf6e7ae6c829f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:23:09 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 16 Oct 2018 06:23:11 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 16 Oct 2018 06:23:11 GMT
ENV NODE_VERSION=8.12.0
# Tue, 16 Oct 2018 06:23:54 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 16 Oct 2018 06:23:55 GMT
ENV YARN_VERSION=1.9.4
# Tue, 16 Oct 2018 06:23:56 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 16 Oct 2018 06:23:56 GMT
CMD ["node"]
# Tue, 16 Oct 2018 19:16:12 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 19:16:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 16 Oct 2018 19:16:14 GMT
ENV NODE_ENV=production
# Thu, 01 Nov 2018 20:24:28 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Thu, 01 Nov 2018 20:24:50 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 01 Nov 2018 20:24:58 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 01 Nov 2018 20:24:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 01 Nov 2018 20:24:59 GMT
ENV GHOST_VERSION=2.4.0
# Thu, 01 Nov 2018 20:25:36 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 01 Nov 2018 20:25:45 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 01 Nov 2018 20:25:46 GMT
WORKDIR /var/lib/ghost
# Thu, 01 Nov 2018 20:25:46 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 01 Nov 2018 20:25:46 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Thu, 01 Nov 2018 20:25:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 01 Nov 2018 20:25:47 GMT
EXPOSE 2368/tcp
# Thu, 01 Nov 2018 20:25:47 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c7020e9265938dfd1537010da855743d4c5ad1f29580c74d9710c324e540bf`  
		Last Modified: Tue, 16 Oct 2018 06:31:23 GMT  
		Size: 4.4 KB (4402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02415c59bfcbeef0b3f11920ef1cec01a4e78929a783524d553e85e4b7470b2f`  
		Last Modified: Tue, 16 Oct 2018 06:31:22 GMT  
		Size: 124.7 KB (124683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b94195c82796a706cb3a7771674d8cb1ef49504ab5215715d7aa0eedb2b3ed17`  
		Last Modified: Tue, 16 Oct 2018 06:31:33 GMT  
		Size: 34.4 MB (34396999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595fff18a493c38cee9bd969d57fb363c3419f4d5df1ce5285ea3548b668159d`  
		Last Modified: Tue, 16 Oct 2018 06:31:23 GMT  
		Size: 1.1 MB (1069854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0589974b7401fe0ee2e4f1f4ec50853b8f6631d126736e0a8210996401a70747`  
		Last Modified: Tue, 16 Oct 2018 19:23:06 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7ce5f8b0fb64a903f0621644c0ddca2aab9351162442dedaee670f2fb7399c`  
		Last Modified: Thu, 01 Nov 2018 20:31:46 GMT  
		Size: 17.2 MB (17247142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c8a2122c58038ecbe73d2567b35b4eee1dd02dc57d726f146a9bd7d28592cf`  
		Last Modified: Thu, 01 Nov 2018 20:32:11 GMT  
		Size: 109.0 MB (109043548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a738c467137dbdb88822ed50599bbb7e09d6a86c84cecbc1378a72e4b3d6c2c4`  
		Last Modified: Thu, 01 Nov 2018 20:31:33 GMT  
		Size: 304.3 KB (304260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a0de8ccd4d87f1f84790ed5a4b4bc0373c77ef7bed83ae04637e660f173daf`  
		Last Modified: Thu, 01 Nov 2018 20:31:33 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.4` - linux; 386

```console
$ docker pull ghost@sha256:5c4a262d712977090160511b84ee22fbc3a7ce075e923fa1badc0b515ab2c20f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.6 MB (185603360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1bac11acf9ca807ad6f7c464a8f7f180d3d2c598571c5d54e53160a35c7f08c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:56 GMT
ADD file:805bcf9c1da55b8a2fe5407bcea59a7af4f4e70001d03f514f31e4bafcb20a1c in / 
# Tue, 16 Oct 2018 10:41:56 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 23:00:58 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 16 Oct 2018 23:01:00 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 16 Oct 2018 23:01:00 GMT
ENV NODE_VERSION=8.12.0
# Tue, 16 Oct 2018 23:01:50 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 16 Oct 2018 23:01:50 GMT
ENV YARN_VERSION=1.9.4
# Tue, 16 Oct 2018 23:01:51 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 16 Oct 2018 23:01:52 GMT
CMD ["node"]
# Wed, 17 Oct 2018 10:16:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 17 Oct 2018 10:16:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 17 Oct 2018 10:16:51 GMT
ENV NODE_ENV=production
# Fri, 02 Nov 2018 10:47:32 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Fri, 02 Nov 2018 10:47:51 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 02 Nov 2018 10:47:51 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 02 Nov 2018 10:47:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 02 Nov 2018 10:47:52 GMT
ENV GHOST_VERSION=2.4.0
# Fri, 02 Nov 2018 10:48:31 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 02 Nov 2018 10:50:38 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 02 Nov 2018 10:50:38 GMT
WORKDIR /var/lib/ghost
# Fri, 02 Nov 2018 10:50:38 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 02 Nov 2018 10:50:39 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Fri, 02 Nov 2018 10:50:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Nov 2018 10:50:39 GMT
EXPOSE 2368/tcp
# Fri, 02 Nov 2018 10:50:39 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:8fa4cce02855aa948a5b8498a42eb08255f5ed0b56d7820985ad2853ff0a254a`  
		Last Modified: Tue, 16 Oct 2018 10:57:05 GMT  
		Size: 30.3 MB (30270032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fec25e63b2f6b72046290fce9c37fedd19663754f05030df28f8ecfe9e04db`  
		Last Modified: Tue, 16 Oct 2018 23:09:08 GMT  
		Size: 4.4 KB (4387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce81d04ef17865a77b4bab21aca35b02627110cffa32c2b4b211622522c78c11`  
		Last Modified: Tue, 16 Oct 2018 23:09:08 GMT  
		Size: 124.7 KB (124680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f139290f43e80f12b353d7d9a03664371a8a1348ab8bedc57c805d52c9e34d`  
		Last Modified: Tue, 16 Oct 2018 23:09:17 GMT  
		Size: 36.3 MB (36322141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6270620ae4811d55fe24122f02608155597be84b9052ca607e362d185b590a16`  
		Last Modified: Tue, 16 Oct 2018 23:09:08 GMT  
		Size: 1.1 MB (1069851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297abab428933768443992128d0613e3a15d60359a1364aba27f1fb0cfbd7612`  
		Last Modified: Wed, 17 Oct 2018 10:26:32 GMT  
		Size: 480.6 KB (480569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865f0ed9e2b23ee0eda61134005d8542440d6e4b480effef680e6c5c917f959d`  
		Last Modified: Fri, 02 Nov 2018 10:55:39 GMT  
		Size: 17.2 MB (17249614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9384f34862d6722156503e047c93c21b010eb225735dc63b9bec01313a258036`  
		Last Modified: Fri, 02 Nov 2018 10:55:58 GMT  
		Size: 88.9 MB (88866952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e9f26f8754dd7e5a5cabf80cf2e8014c2055ec963aeb74b6d61f71b933381f`  
		Last Modified: Fri, 02 Nov 2018 10:55:34 GMT  
		Size: 11.2 MB (11214575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20732708e7fcb9a8c4fc9e445caf57892b2ac61b5240526a344d0aae8ddd9e39`  
		Last Modified: Fri, 02 Nov 2018 10:55:30 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.4.0`

```console
$ docker pull ghost@sha256:adc27e22a21c0447b918b3865962335b0582743fa4c3407aa0ba4b5b0c4020f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `ghost:2.4.0` - linux; amd64

```console
$ docker pull ghost@sha256:108a6a2c8c34420861a3fb57d5a41fcc6a6d2a5b4721353b592bb7f8fdf64a75
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.8 MB (192812741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:410f631b01765aa71a55b7d615f504a8f66212aa8f3a60bf1cbf6e7ae6c829f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:23:09 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 16 Oct 2018 06:23:11 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 16 Oct 2018 06:23:11 GMT
ENV NODE_VERSION=8.12.0
# Tue, 16 Oct 2018 06:23:54 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 16 Oct 2018 06:23:55 GMT
ENV YARN_VERSION=1.9.4
# Tue, 16 Oct 2018 06:23:56 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 16 Oct 2018 06:23:56 GMT
CMD ["node"]
# Tue, 16 Oct 2018 19:16:12 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 19:16:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 16 Oct 2018 19:16:14 GMT
ENV NODE_ENV=production
# Thu, 01 Nov 2018 20:24:28 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Thu, 01 Nov 2018 20:24:50 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 01 Nov 2018 20:24:58 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 01 Nov 2018 20:24:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 01 Nov 2018 20:24:59 GMT
ENV GHOST_VERSION=2.4.0
# Thu, 01 Nov 2018 20:25:36 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 01 Nov 2018 20:25:45 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 01 Nov 2018 20:25:46 GMT
WORKDIR /var/lib/ghost
# Thu, 01 Nov 2018 20:25:46 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 01 Nov 2018 20:25:46 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Thu, 01 Nov 2018 20:25:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 01 Nov 2018 20:25:47 GMT
EXPOSE 2368/tcp
# Thu, 01 Nov 2018 20:25:47 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c7020e9265938dfd1537010da855743d4c5ad1f29580c74d9710c324e540bf`  
		Last Modified: Tue, 16 Oct 2018 06:31:23 GMT  
		Size: 4.4 KB (4402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02415c59bfcbeef0b3f11920ef1cec01a4e78929a783524d553e85e4b7470b2f`  
		Last Modified: Tue, 16 Oct 2018 06:31:22 GMT  
		Size: 124.7 KB (124683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b94195c82796a706cb3a7771674d8cb1ef49504ab5215715d7aa0eedb2b3ed17`  
		Last Modified: Tue, 16 Oct 2018 06:31:33 GMT  
		Size: 34.4 MB (34396999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595fff18a493c38cee9bd969d57fb363c3419f4d5df1ce5285ea3548b668159d`  
		Last Modified: Tue, 16 Oct 2018 06:31:23 GMT  
		Size: 1.1 MB (1069854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0589974b7401fe0ee2e4f1f4ec50853b8f6631d126736e0a8210996401a70747`  
		Last Modified: Tue, 16 Oct 2018 19:23:06 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7ce5f8b0fb64a903f0621644c0ddca2aab9351162442dedaee670f2fb7399c`  
		Last Modified: Thu, 01 Nov 2018 20:31:46 GMT  
		Size: 17.2 MB (17247142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c8a2122c58038ecbe73d2567b35b4eee1dd02dc57d726f146a9bd7d28592cf`  
		Last Modified: Thu, 01 Nov 2018 20:32:11 GMT  
		Size: 109.0 MB (109043548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a738c467137dbdb88822ed50599bbb7e09d6a86c84cecbc1378a72e4b3d6c2c4`  
		Last Modified: Thu, 01 Nov 2018 20:31:33 GMT  
		Size: 304.3 KB (304260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a0de8ccd4d87f1f84790ed5a4b4bc0373c77ef7bed83ae04637e660f173daf`  
		Last Modified: Thu, 01 Nov 2018 20:31:33 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.4.0` - linux; 386

```console
$ docker pull ghost@sha256:5c4a262d712977090160511b84ee22fbc3a7ce075e923fa1badc0b515ab2c20f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.6 MB (185603360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1bac11acf9ca807ad6f7c464a8f7f180d3d2c598571c5d54e53160a35c7f08c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:56 GMT
ADD file:805bcf9c1da55b8a2fe5407bcea59a7af4f4e70001d03f514f31e4bafcb20a1c in / 
# Tue, 16 Oct 2018 10:41:56 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 23:00:58 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 16 Oct 2018 23:01:00 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 16 Oct 2018 23:01:00 GMT
ENV NODE_VERSION=8.12.0
# Tue, 16 Oct 2018 23:01:50 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 16 Oct 2018 23:01:50 GMT
ENV YARN_VERSION=1.9.4
# Tue, 16 Oct 2018 23:01:51 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 16 Oct 2018 23:01:52 GMT
CMD ["node"]
# Wed, 17 Oct 2018 10:16:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 17 Oct 2018 10:16:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 17 Oct 2018 10:16:51 GMT
ENV NODE_ENV=production
# Fri, 02 Nov 2018 10:47:32 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Fri, 02 Nov 2018 10:47:51 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 02 Nov 2018 10:47:51 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 02 Nov 2018 10:47:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 02 Nov 2018 10:47:52 GMT
ENV GHOST_VERSION=2.4.0
# Fri, 02 Nov 2018 10:48:31 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 02 Nov 2018 10:50:38 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 02 Nov 2018 10:50:38 GMT
WORKDIR /var/lib/ghost
# Fri, 02 Nov 2018 10:50:38 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 02 Nov 2018 10:50:39 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Fri, 02 Nov 2018 10:50:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Nov 2018 10:50:39 GMT
EXPOSE 2368/tcp
# Fri, 02 Nov 2018 10:50:39 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:8fa4cce02855aa948a5b8498a42eb08255f5ed0b56d7820985ad2853ff0a254a`  
		Last Modified: Tue, 16 Oct 2018 10:57:05 GMT  
		Size: 30.3 MB (30270032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fec25e63b2f6b72046290fce9c37fedd19663754f05030df28f8ecfe9e04db`  
		Last Modified: Tue, 16 Oct 2018 23:09:08 GMT  
		Size: 4.4 KB (4387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce81d04ef17865a77b4bab21aca35b02627110cffa32c2b4b211622522c78c11`  
		Last Modified: Tue, 16 Oct 2018 23:09:08 GMT  
		Size: 124.7 KB (124680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f139290f43e80f12b353d7d9a03664371a8a1348ab8bedc57c805d52c9e34d`  
		Last Modified: Tue, 16 Oct 2018 23:09:17 GMT  
		Size: 36.3 MB (36322141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6270620ae4811d55fe24122f02608155597be84b9052ca607e362d185b590a16`  
		Last Modified: Tue, 16 Oct 2018 23:09:08 GMT  
		Size: 1.1 MB (1069851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297abab428933768443992128d0613e3a15d60359a1364aba27f1fb0cfbd7612`  
		Last Modified: Wed, 17 Oct 2018 10:26:32 GMT  
		Size: 480.6 KB (480569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865f0ed9e2b23ee0eda61134005d8542440d6e4b480effef680e6c5c917f959d`  
		Last Modified: Fri, 02 Nov 2018 10:55:39 GMT  
		Size: 17.2 MB (17249614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9384f34862d6722156503e047c93c21b010eb225735dc63b9bec01313a258036`  
		Last Modified: Fri, 02 Nov 2018 10:55:58 GMT  
		Size: 88.9 MB (88866952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e9f26f8754dd7e5a5cabf80cf2e8014c2055ec963aeb74b6d61f71b933381f`  
		Last Modified: Fri, 02 Nov 2018 10:55:34 GMT  
		Size: 11.2 MB (11214575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20732708e7fcb9a8c4fc9e445caf57892b2ac61b5240526a344d0aae8ddd9e39`  
		Last Modified: Fri, 02 Nov 2018 10:55:30 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.4.0-alpine`

```console
$ docker pull ghost@sha256:129a54541d6b96927ab88bb5f25c9b0aa7f07c45b5df3a8e4a79b4c8601ca464
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:2.4.0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:fe8ac1ab33fbd79e63abb49ba13f059e80d2f69bb790b54094c016ea7f0a3c00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.1 MB (133136568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f26a51836da72f9351f36d54fbbe704fc6128ea090d785c3a943d0f4eaf0c8b`
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
# Thu, 01 Nov 2018 20:26:18 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Thu, 01 Nov 2018 20:26:39 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 01 Nov 2018 20:26:39 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 01 Nov 2018 20:26:39 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 01 Nov 2018 20:26:40 GMT
ENV GHOST_VERSION=2.4.0
# Thu, 01 Nov 2018 20:27:16 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 01 Nov 2018 20:27:27 GMT
WORKDIR /var/lib/ghost
# Thu, 01 Nov 2018 20:27:28 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 01 Nov 2018 20:27:28 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Thu, 01 Nov 2018 20:27:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 01 Nov 2018 20:27:28 GMT
EXPOSE 2368/tcp
# Thu, 01 Nov 2018 20:27:29 GMT
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
	-	`sha256:83f47d2e5bc6a302e96738a9d93b7c417963c32ecaa7e99026c2b63db10ec880`  
		Last Modified: Thu, 01 Nov 2018 20:33:43 GMT  
		Size: 17.2 MB (17247271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1a2d51fe5be828d37c5c34ead207b5f09766c7a360d14e9ec3eda8fc33bb15`  
		Last Modified: Thu, 01 Nov 2018 20:34:09 GMT  
		Size: 92.6 MB (92601458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099f73f519cbc648129cbfe62a0b5ad9755ac9e7e2557e3a16a611b39edf3732`  
		Last Modified: Thu, 01 Nov 2018 20:33:31 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.4.0-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:fd21b2bc848eb869c92249bf2bf0d0b2f004c8f9b26ee453843707df4e5e0709
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128279801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5b2cb337cd3e817eee4cd4351bfb8b56c31da708be3479a77638a10e28e8567`
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
# Fri, 02 Nov 2018 07:50:08 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Fri, 02 Nov 2018 07:50:50 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 02 Nov 2018 07:50:52 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 02 Nov 2018 07:50:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 02 Nov 2018 07:50:53 GMT
ENV GHOST_VERSION=2.4.0
# Fri, 02 Nov 2018 07:52:29 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 02 Nov 2018 07:52:32 GMT
WORKDIR /var/lib/ghost
# Fri, 02 Nov 2018 07:52:33 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 02 Nov 2018 07:52:34 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Fri, 02 Nov 2018 07:52:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Nov 2018 07:52:35 GMT
EXPOSE 2368/tcp
# Fri, 02 Nov 2018 07:52:35 GMT
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
	-	`sha256:6c976e41baf7f4d29496ff1361194fd7ed0f03475ade3110dd25a95294f0d0b3`  
		Last Modified: Fri, 02 Nov 2018 07:55:19 GMT  
		Size: 17.3 MB (17252802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ad4e8a88b6f681711d857b55b5cc2ad4555b31459e2d169cee72e7c7e292da`  
		Last Modified: Fri, 02 Nov 2018 07:55:53 GMT  
		Size: 88.9 MB (88870837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2fb65614a31dddcca45b7e77ab78dd4a68d7331bb7327525bc417f732fbe2cc`  
		Last Modified: Fri, 02 Nov 2018 07:55:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.4.0-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:c335bf3516b8b1a42235f5e17a11e34fb4a440f876536cb035f97dce3668d757
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.2 MB (129197070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85b8b177317fe86dc3d2073782167f6ca4e3046d0d5ba09b83977e8e2a6458ae`
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
# Fri, 02 Nov 2018 08:28:03 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Fri, 02 Nov 2018 08:28:47 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 02 Nov 2018 08:28:50 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 02 Nov 2018 08:28:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 02 Nov 2018 08:28:54 GMT
ENV GHOST_VERSION=2.4.0
# Fri, 02 Nov 2018 08:31:19 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 02 Nov 2018 08:31:35 GMT
WORKDIR /var/lib/ghost
# Fri, 02 Nov 2018 08:31:39 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 02 Nov 2018 08:31:43 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Fri, 02 Nov 2018 08:31:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Nov 2018 08:31:48 GMT
EXPOSE 2368/tcp
# Fri, 02 Nov 2018 08:31:49 GMT
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
	-	`sha256:97ba8dc98a78a80e77dd5e48567476d1f3cbca2ea2aac7dedce160c8df438c0e`  
		Last Modified: Fri, 02 Nov 2018 08:46:08 GMT  
		Size: 17.2 MB (17248938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d98c63a264179dbe4c330d44999bd923689a5a6cd92463b1b7da105c72fec3`  
		Last Modified: Fri, 02 Nov 2018 08:47:33 GMT  
		Size: 88.9 MB (88868402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49603182c2bee910ee0777d830073f5998505001353ae8f6702fccd1f4ebe562`  
		Last Modified: Fri, 02 Nov 2018 08:45:38 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.4-alpine`

```console
$ docker pull ghost@sha256:129a54541d6b96927ab88bb5f25c9b0aa7f07c45b5df3a8e4a79b4c8601ca464
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:2.4-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:fe8ac1ab33fbd79e63abb49ba13f059e80d2f69bb790b54094c016ea7f0a3c00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.1 MB (133136568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f26a51836da72f9351f36d54fbbe704fc6128ea090d785c3a943d0f4eaf0c8b`
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
# Thu, 01 Nov 2018 20:26:18 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Thu, 01 Nov 2018 20:26:39 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 01 Nov 2018 20:26:39 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 01 Nov 2018 20:26:39 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 01 Nov 2018 20:26:40 GMT
ENV GHOST_VERSION=2.4.0
# Thu, 01 Nov 2018 20:27:16 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 01 Nov 2018 20:27:27 GMT
WORKDIR /var/lib/ghost
# Thu, 01 Nov 2018 20:27:28 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 01 Nov 2018 20:27:28 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Thu, 01 Nov 2018 20:27:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 01 Nov 2018 20:27:28 GMT
EXPOSE 2368/tcp
# Thu, 01 Nov 2018 20:27:29 GMT
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
	-	`sha256:83f47d2e5bc6a302e96738a9d93b7c417963c32ecaa7e99026c2b63db10ec880`  
		Last Modified: Thu, 01 Nov 2018 20:33:43 GMT  
		Size: 17.2 MB (17247271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1a2d51fe5be828d37c5c34ead207b5f09766c7a360d14e9ec3eda8fc33bb15`  
		Last Modified: Thu, 01 Nov 2018 20:34:09 GMT  
		Size: 92.6 MB (92601458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099f73f519cbc648129cbfe62a0b5ad9755ac9e7e2557e3a16a611b39edf3732`  
		Last Modified: Thu, 01 Nov 2018 20:33:31 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.4-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:fd21b2bc848eb869c92249bf2bf0d0b2f004c8f9b26ee453843707df4e5e0709
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128279801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5b2cb337cd3e817eee4cd4351bfb8b56c31da708be3479a77638a10e28e8567`
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
# Fri, 02 Nov 2018 07:50:08 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Fri, 02 Nov 2018 07:50:50 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 02 Nov 2018 07:50:52 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 02 Nov 2018 07:50:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 02 Nov 2018 07:50:53 GMT
ENV GHOST_VERSION=2.4.0
# Fri, 02 Nov 2018 07:52:29 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 02 Nov 2018 07:52:32 GMT
WORKDIR /var/lib/ghost
# Fri, 02 Nov 2018 07:52:33 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 02 Nov 2018 07:52:34 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Fri, 02 Nov 2018 07:52:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Nov 2018 07:52:35 GMT
EXPOSE 2368/tcp
# Fri, 02 Nov 2018 07:52:35 GMT
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
	-	`sha256:6c976e41baf7f4d29496ff1361194fd7ed0f03475ade3110dd25a95294f0d0b3`  
		Last Modified: Fri, 02 Nov 2018 07:55:19 GMT  
		Size: 17.3 MB (17252802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ad4e8a88b6f681711d857b55b5cc2ad4555b31459e2d169cee72e7c7e292da`  
		Last Modified: Fri, 02 Nov 2018 07:55:53 GMT  
		Size: 88.9 MB (88870837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2fb65614a31dddcca45b7e77ab78dd4a68d7331bb7327525bc417f732fbe2cc`  
		Last Modified: Fri, 02 Nov 2018 07:55:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.4-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:c335bf3516b8b1a42235f5e17a11e34fb4a440f876536cb035f97dce3668d757
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.2 MB (129197070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85b8b177317fe86dc3d2073782167f6ca4e3046d0d5ba09b83977e8e2a6458ae`
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
# Fri, 02 Nov 2018 08:28:03 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Fri, 02 Nov 2018 08:28:47 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 02 Nov 2018 08:28:50 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 02 Nov 2018 08:28:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 02 Nov 2018 08:28:54 GMT
ENV GHOST_VERSION=2.4.0
# Fri, 02 Nov 2018 08:31:19 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 02 Nov 2018 08:31:35 GMT
WORKDIR /var/lib/ghost
# Fri, 02 Nov 2018 08:31:39 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 02 Nov 2018 08:31:43 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Fri, 02 Nov 2018 08:31:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Nov 2018 08:31:48 GMT
EXPOSE 2368/tcp
# Fri, 02 Nov 2018 08:31:49 GMT
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
	-	`sha256:97ba8dc98a78a80e77dd5e48567476d1f3cbca2ea2aac7dedce160c8df438c0e`  
		Last Modified: Fri, 02 Nov 2018 08:46:08 GMT  
		Size: 17.2 MB (17248938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d98c63a264179dbe4c330d44999bd923689a5a6cd92463b1b7da105c72fec3`  
		Last Modified: Fri, 02 Nov 2018 08:47:33 GMT  
		Size: 88.9 MB (88868402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49603182c2bee910ee0777d830073f5998505001353ae8f6702fccd1f4ebe562`  
		Last Modified: Fri, 02 Nov 2018 08:45:38 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2-alpine`

```console
$ docker pull ghost@sha256:129a54541d6b96927ab88bb5f25c9b0aa7f07c45b5df3a8e4a79b4c8601ca464
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:2-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:fe8ac1ab33fbd79e63abb49ba13f059e80d2f69bb790b54094c016ea7f0a3c00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.1 MB (133136568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f26a51836da72f9351f36d54fbbe704fc6128ea090d785c3a943d0f4eaf0c8b`
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
# Thu, 01 Nov 2018 20:26:18 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Thu, 01 Nov 2018 20:26:39 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 01 Nov 2018 20:26:39 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 01 Nov 2018 20:26:39 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 01 Nov 2018 20:26:40 GMT
ENV GHOST_VERSION=2.4.0
# Thu, 01 Nov 2018 20:27:16 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 01 Nov 2018 20:27:27 GMT
WORKDIR /var/lib/ghost
# Thu, 01 Nov 2018 20:27:28 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 01 Nov 2018 20:27:28 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Thu, 01 Nov 2018 20:27:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 01 Nov 2018 20:27:28 GMT
EXPOSE 2368/tcp
# Thu, 01 Nov 2018 20:27:29 GMT
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
	-	`sha256:83f47d2e5bc6a302e96738a9d93b7c417963c32ecaa7e99026c2b63db10ec880`  
		Last Modified: Thu, 01 Nov 2018 20:33:43 GMT  
		Size: 17.2 MB (17247271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1a2d51fe5be828d37c5c34ead207b5f09766c7a360d14e9ec3eda8fc33bb15`  
		Last Modified: Thu, 01 Nov 2018 20:34:09 GMT  
		Size: 92.6 MB (92601458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099f73f519cbc648129cbfe62a0b5ad9755ac9e7e2557e3a16a611b39edf3732`  
		Last Modified: Thu, 01 Nov 2018 20:33:31 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:fd21b2bc848eb869c92249bf2bf0d0b2f004c8f9b26ee453843707df4e5e0709
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128279801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5b2cb337cd3e817eee4cd4351bfb8b56c31da708be3479a77638a10e28e8567`
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
# Fri, 02 Nov 2018 07:50:08 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Fri, 02 Nov 2018 07:50:50 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 02 Nov 2018 07:50:52 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 02 Nov 2018 07:50:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 02 Nov 2018 07:50:53 GMT
ENV GHOST_VERSION=2.4.0
# Fri, 02 Nov 2018 07:52:29 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 02 Nov 2018 07:52:32 GMT
WORKDIR /var/lib/ghost
# Fri, 02 Nov 2018 07:52:33 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 02 Nov 2018 07:52:34 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Fri, 02 Nov 2018 07:52:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Nov 2018 07:52:35 GMT
EXPOSE 2368/tcp
# Fri, 02 Nov 2018 07:52:35 GMT
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
	-	`sha256:6c976e41baf7f4d29496ff1361194fd7ed0f03475ade3110dd25a95294f0d0b3`  
		Last Modified: Fri, 02 Nov 2018 07:55:19 GMT  
		Size: 17.3 MB (17252802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ad4e8a88b6f681711d857b55b5cc2ad4555b31459e2d169cee72e7c7e292da`  
		Last Modified: Fri, 02 Nov 2018 07:55:53 GMT  
		Size: 88.9 MB (88870837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2fb65614a31dddcca45b7e77ab78dd4a68d7331bb7327525bc417f732fbe2cc`  
		Last Modified: Fri, 02 Nov 2018 07:55:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:c335bf3516b8b1a42235f5e17a11e34fb4a440f876536cb035f97dce3668d757
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.2 MB (129197070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85b8b177317fe86dc3d2073782167f6ca4e3046d0d5ba09b83977e8e2a6458ae`
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
# Fri, 02 Nov 2018 08:28:03 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Fri, 02 Nov 2018 08:28:47 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 02 Nov 2018 08:28:50 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 02 Nov 2018 08:28:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 02 Nov 2018 08:28:54 GMT
ENV GHOST_VERSION=2.4.0
# Fri, 02 Nov 2018 08:31:19 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 02 Nov 2018 08:31:35 GMT
WORKDIR /var/lib/ghost
# Fri, 02 Nov 2018 08:31:39 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 02 Nov 2018 08:31:43 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Fri, 02 Nov 2018 08:31:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Nov 2018 08:31:48 GMT
EXPOSE 2368/tcp
# Fri, 02 Nov 2018 08:31:49 GMT
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
	-	`sha256:97ba8dc98a78a80e77dd5e48567476d1f3cbca2ea2aac7dedce160c8df438c0e`  
		Last Modified: Fri, 02 Nov 2018 08:46:08 GMT  
		Size: 17.2 MB (17248938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d98c63a264179dbe4c330d44999bd923689a5a6cd92463b1b7da105c72fec3`  
		Last Modified: Fri, 02 Nov 2018 08:47:33 GMT  
		Size: 88.9 MB (88868402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49603182c2bee910ee0777d830073f5998505001353ae8f6702fccd1f4ebe562`  
		Last Modified: Fri, 02 Nov 2018 08:45:38 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:129a54541d6b96927ab88bb5f25c9b0aa7f07c45b5df3a8e4a79b4c8601ca464
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:fe8ac1ab33fbd79e63abb49ba13f059e80d2f69bb790b54094c016ea7f0a3c00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.1 MB (133136568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f26a51836da72f9351f36d54fbbe704fc6128ea090d785c3a943d0f4eaf0c8b`
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
# Thu, 01 Nov 2018 20:26:18 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Thu, 01 Nov 2018 20:26:39 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 01 Nov 2018 20:26:39 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 01 Nov 2018 20:26:39 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 01 Nov 2018 20:26:40 GMT
ENV GHOST_VERSION=2.4.0
# Thu, 01 Nov 2018 20:27:16 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 01 Nov 2018 20:27:27 GMT
WORKDIR /var/lib/ghost
# Thu, 01 Nov 2018 20:27:28 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 01 Nov 2018 20:27:28 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Thu, 01 Nov 2018 20:27:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 01 Nov 2018 20:27:28 GMT
EXPOSE 2368/tcp
# Thu, 01 Nov 2018 20:27:29 GMT
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
	-	`sha256:83f47d2e5bc6a302e96738a9d93b7c417963c32ecaa7e99026c2b63db10ec880`  
		Last Modified: Thu, 01 Nov 2018 20:33:43 GMT  
		Size: 17.2 MB (17247271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1a2d51fe5be828d37c5c34ead207b5f09766c7a360d14e9ec3eda8fc33bb15`  
		Last Modified: Thu, 01 Nov 2018 20:34:09 GMT  
		Size: 92.6 MB (92601458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099f73f519cbc648129cbfe62a0b5ad9755ac9e7e2557e3a16a611b39edf3732`  
		Last Modified: Thu, 01 Nov 2018 20:33:31 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:fd21b2bc848eb869c92249bf2bf0d0b2f004c8f9b26ee453843707df4e5e0709
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128279801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5b2cb337cd3e817eee4cd4351bfb8b56c31da708be3479a77638a10e28e8567`
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
# Fri, 02 Nov 2018 07:50:08 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Fri, 02 Nov 2018 07:50:50 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 02 Nov 2018 07:50:52 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 02 Nov 2018 07:50:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 02 Nov 2018 07:50:53 GMT
ENV GHOST_VERSION=2.4.0
# Fri, 02 Nov 2018 07:52:29 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 02 Nov 2018 07:52:32 GMT
WORKDIR /var/lib/ghost
# Fri, 02 Nov 2018 07:52:33 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 02 Nov 2018 07:52:34 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Fri, 02 Nov 2018 07:52:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Nov 2018 07:52:35 GMT
EXPOSE 2368/tcp
# Fri, 02 Nov 2018 07:52:35 GMT
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
	-	`sha256:6c976e41baf7f4d29496ff1361194fd7ed0f03475ade3110dd25a95294f0d0b3`  
		Last Modified: Fri, 02 Nov 2018 07:55:19 GMT  
		Size: 17.3 MB (17252802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ad4e8a88b6f681711d857b55b5cc2ad4555b31459e2d169cee72e7c7e292da`  
		Last Modified: Fri, 02 Nov 2018 07:55:53 GMT  
		Size: 88.9 MB (88870837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2fb65614a31dddcca45b7e77ab78dd4a68d7331bb7327525bc417f732fbe2cc`  
		Last Modified: Fri, 02 Nov 2018 07:55:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; ppc64le

```console
$ docker pull ghost@sha256:c335bf3516b8b1a42235f5e17a11e34fb4a440f876536cb035f97dce3668d757
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.2 MB (129197070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85b8b177317fe86dc3d2073782167f6ca4e3046d0d5ba09b83977e8e2a6458ae`
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
# Fri, 02 Nov 2018 08:28:03 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Fri, 02 Nov 2018 08:28:47 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 02 Nov 2018 08:28:50 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 02 Nov 2018 08:28:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 02 Nov 2018 08:28:54 GMT
ENV GHOST_VERSION=2.4.0
# Fri, 02 Nov 2018 08:31:19 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 02 Nov 2018 08:31:35 GMT
WORKDIR /var/lib/ghost
# Fri, 02 Nov 2018 08:31:39 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 02 Nov 2018 08:31:43 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Fri, 02 Nov 2018 08:31:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Nov 2018 08:31:48 GMT
EXPOSE 2368/tcp
# Fri, 02 Nov 2018 08:31:49 GMT
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
	-	`sha256:97ba8dc98a78a80e77dd5e48567476d1f3cbca2ea2aac7dedce160c8df438c0e`  
		Last Modified: Fri, 02 Nov 2018 08:46:08 GMT  
		Size: 17.2 MB (17248938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d98c63a264179dbe4c330d44999bd923689a5a6cd92463b1b7da105c72fec3`  
		Last Modified: Fri, 02 Nov 2018 08:47:33 GMT  
		Size: 88.9 MB (88868402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49603182c2bee910ee0777d830073f5998505001353ae8f6702fccd1f4ebe562`  
		Last Modified: Fri, 02 Nov 2018 08:45:38 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:adc27e22a21c0447b918b3865962335b0582743fa4c3407aa0ba4b5b0c4020f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `ghost:latest` - linux; amd64

```console
$ docker pull ghost@sha256:108a6a2c8c34420861a3fb57d5a41fcc6a6d2a5b4721353b592bb7f8fdf64a75
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.8 MB (192812741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:410f631b01765aa71a55b7d615f504a8f66212aa8f3a60bf1cbf6e7ae6c829f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:23:09 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 16 Oct 2018 06:23:11 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 16 Oct 2018 06:23:11 GMT
ENV NODE_VERSION=8.12.0
# Tue, 16 Oct 2018 06:23:54 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 16 Oct 2018 06:23:55 GMT
ENV YARN_VERSION=1.9.4
# Tue, 16 Oct 2018 06:23:56 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 16 Oct 2018 06:23:56 GMT
CMD ["node"]
# Tue, 16 Oct 2018 19:16:12 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 19:16:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 16 Oct 2018 19:16:14 GMT
ENV NODE_ENV=production
# Thu, 01 Nov 2018 20:24:28 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Thu, 01 Nov 2018 20:24:50 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 01 Nov 2018 20:24:58 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 01 Nov 2018 20:24:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 01 Nov 2018 20:24:59 GMT
ENV GHOST_VERSION=2.4.0
# Thu, 01 Nov 2018 20:25:36 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 01 Nov 2018 20:25:45 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 01 Nov 2018 20:25:46 GMT
WORKDIR /var/lib/ghost
# Thu, 01 Nov 2018 20:25:46 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 01 Nov 2018 20:25:46 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Thu, 01 Nov 2018 20:25:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 01 Nov 2018 20:25:47 GMT
EXPOSE 2368/tcp
# Thu, 01 Nov 2018 20:25:47 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c7020e9265938dfd1537010da855743d4c5ad1f29580c74d9710c324e540bf`  
		Last Modified: Tue, 16 Oct 2018 06:31:23 GMT  
		Size: 4.4 KB (4402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02415c59bfcbeef0b3f11920ef1cec01a4e78929a783524d553e85e4b7470b2f`  
		Last Modified: Tue, 16 Oct 2018 06:31:22 GMT  
		Size: 124.7 KB (124683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b94195c82796a706cb3a7771674d8cb1ef49504ab5215715d7aa0eedb2b3ed17`  
		Last Modified: Tue, 16 Oct 2018 06:31:33 GMT  
		Size: 34.4 MB (34396999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595fff18a493c38cee9bd969d57fb363c3419f4d5df1ce5285ea3548b668159d`  
		Last Modified: Tue, 16 Oct 2018 06:31:23 GMT  
		Size: 1.1 MB (1069854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0589974b7401fe0ee2e4f1f4ec50853b8f6631d126736e0a8210996401a70747`  
		Last Modified: Tue, 16 Oct 2018 19:23:06 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7ce5f8b0fb64a903f0621644c0ddca2aab9351162442dedaee670f2fb7399c`  
		Last Modified: Thu, 01 Nov 2018 20:31:46 GMT  
		Size: 17.2 MB (17247142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c8a2122c58038ecbe73d2567b35b4eee1dd02dc57d726f146a9bd7d28592cf`  
		Last Modified: Thu, 01 Nov 2018 20:32:11 GMT  
		Size: 109.0 MB (109043548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a738c467137dbdb88822ed50599bbb7e09d6a86c84cecbc1378a72e4b3d6c2c4`  
		Last Modified: Thu, 01 Nov 2018 20:31:33 GMT  
		Size: 304.3 KB (304260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a0de8ccd4d87f1f84790ed5a4b4bc0373c77ef7bed83ae04637e660f173daf`  
		Last Modified: Thu, 01 Nov 2018 20:31:33 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; 386

```console
$ docker pull ghost@sha256:5c4a262d712977090160511b84ee22fbc3a7ce075e923fa1badc0b515ab2c20f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.6 MB (185603360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1bac11acf9ca807ad6f7c464a8f7f180d3d2c598571c5d54e53160a35c7f08c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:56 GMT
ADD file:805bcf9c1da55b8a2fe5407bcea59a7af4f4e70001d03f514f31e4bafcb20a1c in / 
# Tue, 16 Oct 2018 10:41:56 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 23:00:58 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 16 Oct 2018 23:01:00 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 16 Oct 2018 23:01:00 GMT
ENV NODE_VERSION=8.12.0
# Tue, 16 Oct 2018 23:01:50 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 16 Oct 2018 23:01:50 GMT
ENV YARN_VERSION=1.9.4
# Tue, 16 Oct 2018 23:01:51 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 16 Oct 2018 23:01:52 GMT
CMD ["node"]
# Wed, 17 Oct 2018 10:16:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 17 Oct 2018 10:16:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 17 Oct 2018 10:16:51 GMT
ENV NODE_ENV=production
# Fri, 02 Nov 2018 10:47:32 GMT
ENV GHOST_CLI_VERSION=1.9.7
# Fri, 02 Nov 2018 10:47:51 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 02 Nov 2018 10:47:51 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 02 Nov 2018 10:47:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 02 Nov 2018 10:47:52 GMT
ENV GHOST_VERSION=2.4.0
# Fri, 02 Nov 2018 10:48:31 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 02 Nov 2018 10:50:38 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 02 Nov 2018 10:50:38 GMT
WORKDIR /var/lib/ghost
# Fri, 02 Nov 2018 10:50:38 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 02 Nov 2018 10:50:39 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Fri, 02 Nov 2018 10:50:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Nov 2018 10:50:39 GMT
EXPOSE 2368/tcp
# Fri, 02 Nov 2018 10:50:39 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:8fa4cce02855aa948a5b8498a42eb08255f5ed0b56d7820985ad2853ff0a254a`  
		Last Modified: Tue, 16 Oct 2018 10:57:05 GMT  
		Size: 30.3 MB (30270032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fec25e63b2f6b72046290fce9c37fedd19663754f05030df28f8ecfe9e04db`  
		Last Modified: Tue, 16 Oct 2018 23:09:08 GMT  
		Size: 4.4 KB (4387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce81d04ef17865a77b4bab21aca35b02627110cffa32c2b4b211622522c78c11`  
		Last Modified: Tue, 16 Oct 2018 23:09:08 GMT  
		Size: 124.7 KB (124680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f139290f43e80f12b353d7d9a03664371a8a1348ab8bedc57c805d52c9e34d`  
		Last Modified: Tue, 16 Oct 2018 23:09:17 GMT  
		Size: 36.3 MB (36322141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6270620ae4811d55fe24122f02608155597be84b9052ca607e362d185b590a16`  
		Last Modified: Tue, 16 Oct 2018 23:09:08 GMT  
		Size: 1.1 MB (1069851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297abab428933768443992128d0613e3a15d60359a1364aba27f1fb0cfbd7612`  
		Last Modified: Wed, 17 Oct 2018 10:26:32 GMT  
		Size: 480.6 KB (480569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865f0ed9e2b23ee0eda61134005d8542440d6e4b480effef680e6c5c917f959d`  
		Last Modified: Fri, 02 Nov 2018 10:55:39 GMT  
		Size: 17.2 MB (17249614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9384f34862d6722156503e047c93c21b010eb225735dc63b9bec01313a258036`  
		Last Modified: Fri, 02 Nov 2018 10:55:58 GMT  
		Size: 88.9 MB (88866952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e9f26f8754dd7e5a5cabf80cf2e8014c2055ec963aeb74b6d61f71b933381f`  
		Last Modified: Fri, 02 Nov 2018 10:55:34 GMT  
		Size: 11.2 MB (11214575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20732708e7fcb9a8c4fc9e445caf57892b2ac61b5240526a344d0aae8ddd9e39`  
		Last Modified: Fri, 02 Nov 2018 10:55:30 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

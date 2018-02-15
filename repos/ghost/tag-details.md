<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:0`](#ghost0)
-	[`ghost:0.11`](#ghost011)
-	[`ghost:0.11.12`](#ghost01112)
-	[`ghost:0.11.12-alpine`](#ghost01112-alpine)
-	[`ghost:0.11-alpine`](#ghost011-alpine)
-	[`ghost:0-alpine`](#ghost0-alpine)
-	[`ghost:1`](#ghost1)
-	[`ghost:1.21`](#ghost121)
-	[`ghost:1.21.1`](#ghost1211)
-	[`ghost:1.21.1-alpine`](#ghost1211-alpine)
-	[`ghost:1.21-alpine`](#ghost121-alpine)
-	[`ghost:1-alpine`](#ghost1-alpine)
-	[`ghost:alpine`](#ghostalpine)
-	[`ghost:latest`](#ghostlatest)

## `ghost:0`

```console
$ docker pull ghost@sha256:f208c1dd8e5116e94fdf4b3c38bd9ef000cbb85ebbc26b30f24894e9f32996c8
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
$ docker pull ghost@sha256:3b5854cda28824b9e2fe9ae38e4265944f81a6a5753dcb7f551885ef0b8c77a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.8 MB (113758549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb0b64686d94d68efbaeba7712e540ad4fac1536a64382fa379c7c2cedd8e0e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:49:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:49:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 13:13:39 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Feb 2018 01:48:29 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Wed, 14 Feb 2018 23:00:17 GMT
ENV NODE_VERSION=6.13.0
# Wed, 14 Feb 2018 23:00:34 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 14 Feb 2018 23:00:36 GMT
ENV YARN_VERSION=1.3.2
# Wed, 14 Feb 2018 23:00:39 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 14 Feb 2018 23:00:40 GMT
CMD ["node"]
# Wed, 14 Feb 2018 23:45:29 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 14 Feb 2018 23:45:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Feb 2018 23:45:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Feb 2018 23:45:35 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 14 Feb 2018 23:45:35 GMT
WORKDIR /usr/src/ghost
# Wed, 14 Feb 2018 23:45:35 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 14 Feb 2018 23:46:50 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 14 Feb 2018 23:46:51 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 14 Feb 2018 23:46:51 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 14 Feb 2018 23:46:52 GMT
VOLUME [/var/lib/ghost]
# Wed, 14 Feb 2018 23:46:52 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 14 Feb 2018 23:46:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 23:46:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 23:46:53 GMT
EXPOSE 2368/tcp
# Wed, 14 Feb 2018 23:46:53 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b491c575b06601bb07a2d88bfc3ace6c6005edc1b4d8da3ba6e37e04e9592d6`  
		Last Modified: Tue, 12 Dec 2017 08:00:34 GMT  
		Size: 19.3 MB (19266203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1158f3983ca33dc1c4dbe34b00e765d0ea636226aab430e807c2bbc930d125e`  
		Last Modified: Tue, 12 Dec 2017 14:15:00 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3aad0879886e1ecb871203c9efc849b0f1d96bb6308919ab06dbbd199ecec1d`  
		Last Modified: Wed, 14 Feb 2018 03:36:17 GMT  
		Size: 117.6 KB (117626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f16410675778e9eb3e43eb48e912cee920fbaa3a71d6d3d6664cf4cac3db1be`  
		Last Modified: Wed, 14 Feb 2018 23:07:50 GMT  
		Size: 14.8 MB (14775292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa056059478a2615239aed96f90b98b0d72e6059dd8423728145384f0c5fe60`  
		Last Modified: Wed, 14 Feb 2018 23:07:48 GMT  
		Size: 1.0 MB (1010355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e5da8b0f47b307e554582e884e92caba1875c86ec28d68562178803558ea43c`  
		Last Modified: Thu, 15 Feb 2018 00:25:17 GMT  
		Size: 4.5 KB (4455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ebcfd1147f6579b6c078853e00484d72851c101ffcea61ade367fa836c2167`  
		Last Modified: Thu, 15 Feb 2018 00:25:19 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5732818a5fcc12bca50a46718997bd20fb307698ac369e561f81ced2afb1ef0`  
		Last Modified: Thu, 15 Feb 2018 00:25:15 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213a8f7058ab17679dceaedbbe4e62e1cedb209511ff62bee202762da3476b7f`  
		Last Modified: Thu, 15 Feb 2018 00:25:32 GMT  
		Size: 25.5 MB (25478740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e118cf329b69b52f58b62d48e3926efbb76e8de837c82b30bde7c447e008c8b`  
		Last Modified: Thu, 15 Feb 2018 00:25:15 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d1cbacf15cfb01a65a969758c25a17d689ac93c1a8b5f3685e5b364ffbbebe`  
		Last Modified: Thu, 15 Feb 2018 00:25:15 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e15bd4cb3b83fcd480593bd4aef9ca78523cbeb612e3f3d5ff080ab7422ab6`  
		Last Modified: Thu, 15 Feb 2018 00:25:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; arm variant v7

```console
$ docker pull ghost@sha256:8f5618b2a3def4ba2b777bed71b4f6bdfa57d96b9591fa81d40769b804096325
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114292463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c0bf8068e56597b32dff6a34f2f52cdbf822c6f47d12af9038f1814589bdf97`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:05 GMT
ADD file:aeb57f3a84dc1b93e1d38a80409a407df553344149d5070ed79b656865c90c54 in / 
# Tue, 12 Dec 2017 13:27:06 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:14:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:14:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 16:51:00 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 12 Dec 2017 16:51:03 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 04 Jan 2018 05:56:34 GMT
ENV NODE_VERSION=6.12.3
# Thu, 04 Jan 2018 05:57:13 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 04 Jan 2018 05:57:13 GMT
ENV YARN_VERSION=1.3.2
# Thu, 04 Jan 2018 05:57:15 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 04 Jan 2018 05:57:15 GMT
CMD ["node"]
# Thu, 04 Jan 2018 06:21:23 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 04 Jan 2018 06:21:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 04 Jan 2018 06:21:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 04 Jan 2018 06:21:25 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 04 Jan 2018 06:21:25 GMT
WORKDIR /usr/src/ghost
# Thu, 04 Jan 2018 06:21:26 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 04 Jan 2018 06:24:44 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 04 Jan 2018 06:24:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 04 Jan 2018 06:24:46 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 04 Jan 2018 06:24:46 GMT
VOLUME [/var/lib/ghost]
# Thu, 04 Jan 2018 06:24:46 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 04 Jan 2018 06:24:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 04 Jan 2018 06:24:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 04 Jan 2018 06:24:48 GMT
EXPOSE 2368/tcp
# Thu, 04 Jan 2018 06:24:48 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:95e140a16c792899abc97cadee0138064dd21346fe51aa332ca4cbbd5563383c`  
		Last Modified: Tue, 12 Dec 2017 13:38:47 GMT  
		Size: 48.7 MB (48691755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237499cbbf2c5155fadc128c997700f0c5ec6355ba9704d0ec3f81c29640c9c4`  
		Last Modified: Tue, 12 Dec 2017 14:30:53 GMT  
		Size: 18.3 MB (18265038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7408ea57a3c623d05d98e0e2a8d1a36968f3cfb919f8eb77dd0f3c8b0c43e2f6`  
		Last Modified: Tue, 12 Dec 2017 17:08:14 GMT  
		Size: 4.4 KB (4421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305f0215d0d14824f8aa396ea7e1c57ce35f615a7ec5940d7b062e0910fb762b`  
		Last Modified: Tue, 12 Dec 2017 17:08:15 GMT  
		Size: 117.7 KB (117653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e91ca6e2c719405e37da625085a7a2a0a6bfaa5cf524106550961274aa6511c3`  
		Last Modified: Thu, 04 Jan 2018 06:00:16 GMT  
		Size: 13.9 MB (13893491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed646e769eb45256e10211baf583c05c0fd8c1c5744512e9be2a1c91d5183a3`  
		Last Modified: Thu, 04 Jan 2018 06:00:12 GMT  
		Size: 1.0 MB (1010387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dcd75a03ea7f7e96329e123b1b30f8b3122525ee95867980110c3f94a9f5017`  
		Last Modified: Thu, 04 Jan 2018 06:25:54 GMT  
		Size: 4.5 KB (4475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79eef35f1ac351e8eb84a1fad4985e259c4fa1ef9a1b554b80f9bf113c9c004`  
		Last Modified: Thu, 04 Jan 2018 06:25:54 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62750cfb0e5747c2bf6c266163dd1cd28cdc449df05d1fdc1e7adc0839857116`  
		Last Modified: Thu, 04 Jan 2018 06:25:53 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cadecc065c3066d71e27fe78d5aeaff9da878a4ff15f10b2eabd84df0ac6d454`  
		Last Modified: Thu, 04 Jan 2018 06:26:06 GMT  
		Size: 31.8 MB (31828808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17650e651bcba806d752e675d63c28b1088d0182a62283d9cfb4ad1c1e71bc34`  
		Last Modified: Thu, 04 Jan 2018 06:25:52 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2678a13fe628a7dadef3c86ebf430ccc7ae1032d23718373657b6d030aee945`  
		Last Modified: Thu, 04 Jan 2018 06:25:52 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7ee4f5126794b668943996d328e05c783429a6757f53b198fc2aa42f106d8db`  
		Last Modified: Thu, 04 Jan 2018 06:25:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:857d51660fc994243e31748190013df1f90907a1ce234bc0ea11eb7630fd870f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117200347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c135fc4b8557a6310ea9f490990f6dfb8a521da9e35d7cc3e720224385a6a81`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 15:52:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:52:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 16 Dec 2017 06:29:23 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Feb 2018 13:31:13 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Thu, 15 Feb 2018 13:01:31 GMT
ENV NODE_VERSION=6.13.0
# Thu, 15 Feb 2018 13:02:00 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 15 Feb 2018 13:02:00 GMT
ENV YARN_VERSION=1.3.2
# Thu, 15 Feb 2018 13:02:04 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 15 Feb 2018 13:02:05 GMT
CMD ["node"]
# Thu, 15 Feb 2018 13:30:26 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 15 Feb 2018 13:30:26 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 13:30:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 13:30:31 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 15 Feb 2018 13:30:32 GMT
WORKDIR /usr/src/ghost
# Thu, 15 Feb 2018 13:30:33 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 15 Feb 2018 13:35:36 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 15 Feb 2018 13:35:37 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 15 Feb 2018 13:35:39 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 15 Feb 2018 13:35:39 GMT
VOLUME [/var/lib/ghost]
# Thu, 15 Feb 2018 13:35:40 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 15 Feb 2018 13:35:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 13:35:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 13:35:43 GMT
EXPOSE 2368/tcp
# Thu, 15 Feb 2018 13:35:43 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f2d61ff35851bad52cd6e85a1aa2c7b986069f0e062b7199ea07bc705f60cc`  
		Last Modified: Fri, 15 Dec 2017 17:15:45 GMT  
		Size: 18.7 MB (18739771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d9246f833963aa2ce4f131418473bc7e6e17640b47a659b95d414bd27c414a`  
		Last Modified: Sat, 16 Dec 2017 06:37:05 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24560a166b63ce533ff6e75ead9a1d193e5b80d5478347196d8af5b3a37e66cb`  
		Last Modified: Wed, 14 Feb 2018 14:17:24 GMT  
		Size: 117.6 KB (117628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7a1036685c8f48dcd925dbeee5443276ceac7f9bb07ec0b34727710461e39a`  
		Last Modified: Thu, 15 Feb 2018 13:05:21 GMT  
		Size: 14.8 MB (14762398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:341ebc71ff83b825b097142aa9f790d2bf2853bff3ad3b71e32ffc299c926aca`  
		Last Modified: Thu, 15 Feb 2018 13:05:14 GMT  
		Size: 1.0 MB (1010356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3caf42529e7237e0fdbc9057fe35bd6d552cb2f6d84c909e01114ce916ef704`  
		Last Modified: Thu, 15 Feb 2018 13:39:09 GMT  
		Size: 4.5 KB (4472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a79990abfe9116d4a6ec08a626cf2171fddac0c720a50bac8325e93c8fc5e4e3`  
		Last Modified: Thu, 15 Feb 2018 13:39:08 GMT  
		Size: 468.7 KB (468703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32de6f3f95fcc9e8f5f9401293b402d570f6c0334bebcecf69b936d7fd91ec1`  
		Last Modified: Thu, 15 Feb 2018 13:39:06 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea3373597aa474700de2f4cde46063ea53733a8852403a260c95270d94b99ba`  
		Last Modified: Thu, 15 Feb 2018 13:39:22 GMT  
		Size: 32.2 MB (32164828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2594b30bd37740981fa5d6549c4e052667aeaa3be897609bfa75e5a29e305a2`  
		Last Modified: Thu, 15 Feb 2018 13:39:06 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98ebda4331e3ceb3b02f748b5640b66cd60d547f947b7d80ab302ffd703fc829`  
		Last Modified: Thu, 15 Feb 2018 13:39:06 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d1481e16dfa08be1f150c96ce2e5621eb2639c1c2b0c4ec8ed6212d7916c56`  
		Last Modified: Thu, 15 Feb 2018 13:39:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; 386

```console
$ docker pull ghost@sha256:57d82b14aa4b9539d1e092633324d1262c78540b9b419a98515749b78a133586
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.5 MB (122524521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2acdfa11f4829b604f8254e5a0ba71e0be44e7ef2a3fadde3760d22a1480f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 16:53:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 16:53:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 18:51:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Feb 2018 06:12:11 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Thu, 15 Feb 2018 07:57:43 GMT
ENV NODE_VERSION=6.13.0
# Thu, 15 Feb 2018 07:58:16 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 15 Feb 2018 08:04:13 GMT
ENV YARN_VERSION=1.3.2
# Thu, 15 Feb 2018 08:04:51 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 15 Feb 2018 08:04:59 GMT
CMD ["node"]
# Thu, 15 Feb 2018 12:04:59 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 15 Feb 2018 12:09:36 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 12:09:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 12:12:46 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 15 Feb 2018 12:12:47 GMT
WORKDIR /usr/src/ghost
# Thu, 15 Feb 2018 12:12:47 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 15 Feb 2018 12:16:33 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 15 Feb 2018 12:19:25 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 15 Feb 2018 12:19:26 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 15 Feb 2018 12:33:00 GMT
VOLUME [/var/lib/ghost]
# Thu, 15 Feb 2018 12:33:01 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 15 Feb 2018 12:33:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 12:33:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 12:33:02 GMT
EXPOSE 2368/tcp
# Thu, 15 Feb 2018 12:33:03 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94aafa6d6f35f82e1fdc93cd4f7f6ab829f6297c8defaaa911dfb2de063bf3d`  
		Last Modified: Tue, 12 Dec 2017 17:27:39 GMT  
		Size: 21.6 MB (21596374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d080d3b5e7c0e87584e0bc0c3c7fb0a6abad953ee94752ff71f7cd32934e6831`  
		Last Modified: Tue, 12 Dec 2017 19:21:31 GMT  
		Size: 4.4 KB (4392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379dc5fa7e32891851fbd2f09acd244ef1937b2ee61cc9d73a6f456c44f4dc5e`  
		Last Modified: Wed, 14 Feb 2018 09:05:31 GMT  
		Size: 117.6 KB (117624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99bb229995039bdc211ed3406eaacbb0a56310f628a8e12b06753b09f6f0fc5`  
		Last Modified: Thu, 15 Feb 2018 09:02:53 GMT  
		Size: 14.3 MB (14295255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834b410c57e839b45b15977ac9c689fab15e53295e88a56c673fbc20c9ef60a0`  
		Last Modified: Thu, 15 Feb 2018 09:02:47 GMT  
		Size: 1.0 MB (1010362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa17bedd2a1dbd9ece2c1c9c10d81f4f66330cea1cb0522dd6f3767a5195181`  
		Last Modified: Thu, 15 Feb 2018 13:21:00 GMT  
		Size: 4.4 KB (4445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dddeddab6a7264f5a875317b9d23a602e1cc4cff4a1afa155c342ed0fb00093`  
		Last Modified: Thu, 15 Feb 2018 13:21:00 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a3559573e8de38cfe88d7f1ee89fd83b5a12a7f2fc9c6ceffcde763608499a4`  
		Last Modified: Thu, 15 Feb 2018 13:20:59 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022e04ab85335562fe520873bc5930ad9b6ee794f2f9af137b5137c75b693dd1`  
		Last Modified: Thu, 15 Feb 2018 13:21:24 GMT  
		Size: 32.2 MB (32237026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9ece665ac4e8e3fc7740d4afa885fbd493f08131d691a9ab37e71e9b4e177b`  
		Last Modified: Thu, 15 Feb 2018 13:20:59 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f347d44b99c177afaad5ccc2b9c7fb227454e18e2484f5deb50a60895f6bee1`  
		Last Modified: Thu, 15 Feb 2018 13:21:01 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be050a95921e3466be44d11928e692655c5a5aaa0a487a4dfd403798f369a08`  
		Last Modified: Thu, 15 Feb 2018 13:20:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; ppc64le

```console
$ docker pull ghost@sha256:179253a0f86e787617aa1bde8aacd6a98176be201b032061797edeece0ec707f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119746615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3089ef1e6c9cf4049cfe7133516aa2bb81a115fa2ac22c71704ed271b671837`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:52:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:52:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 06:11:54 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Feb 2018 05:23:37 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Wed, 14 Feb 2018 05:38:29 GMT
ENV NODE_VERSION=6.12.3
# Wed, 14 Feb 2018 05:39:32 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 14 Feb 2018 05:39:34 GMT
ENV YARN_VERSION=1.3.2
# Wed, 14 Feb 2018 05:39:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 14 Feb 2018 05:39:44 GMT
CMD ["node"]
# Wed, 14 Feb 2018 06:14:22 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 14 Feb 2018 06:14:23 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Feb 2018 06:14:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Feb 2018 06:14:30 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 14 Feb 2018 06:14:31 GMT
WORKDIR /usr/src/ghost
# Wed, 14 Feb 2018 06:14:33 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 14 Feb 2018 06:18:19 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 14 Feb 2018 06:18:21 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 14 Feb 2018 06:18:25 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 14 Feb 2018 06:18:26 GMT
VOLUME [/var/lib/ghost]
# Wed, 14 Feb 2018 06:18:28 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 14 Feb 2018 06:18:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 06:18:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 06:18:34 GMT
EXPOSE 2368/tcp
# Wed, 14 Feb 2018 06:18:35 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6994e7d2dd732e57cd3bac94b995dab8a2711f30cf738f70bd4730a512f403ca`  
		Last Modified: Tue, 12 Dec 2017 03:53:30 GMT  
		Size: 19.2 MB (19202627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bf85c5e59d6cff0e6275da09c076b0d44a8ee93fbcd23bbf44b20d54b4df33`  
		Last Modified: Fri, 15 Dec 2017 06:17:38 GMT  
		Size: 4.4 KB (4442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2462c2e2b1f7df15b2a864fea8c7086465d7c52eae407ea8dcdc1788a9b0c438`  
		Last Modified: Wed, 14 Feb 2018 05:44:50 GMT  
		Size: 117.7 KB (117652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d281f3e1f168da87f18564a53419bb4ba5207e0844dac746df4bf71d1bec4b9`  
		Last Modified: Wed, 14 Feb 2018 05:50:14 GMT  
		Size: 14.5 MB (14491647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:113d85a612c7b302a8ef17f26baed9bc11a81a7d05ab7d1a646de02e2c911888`  
		Last Modified: Wed, 14 Feb 2018 05:50:10 GMT  
		Size: 1.0 MB (1010380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47972269b4a0a6a12a9bfb2d46e8edf4c8eaabcad57ee0ef56285083893b7dd3`  
		Last Modified: Wed, 14 Feb 2018 06:19:48 GMT  
		Size: 4.5 KB (4501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e411560ca620dc52f99fe874a95c0d4cd260c444f01e41d1a89cd44820ca752`  
		Last Modified: Wed, 14 Feb 2018 06:19:48 GMT  
		Size: 469.9 KB (469852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74300529358b60b39f6a5ab78a32945d59550d57d100a58cac78ae1d0e2ab816`  
		Last Modified: Wed, 14 Feb 2018 06:19:47 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a50ebd70033fa548d966c2d4fba56e8901f3c039f4d65c9ebda01bc17c6ed51`  
		Last Modified: Wed, 14 Feb 2018 06:19:59 GMT  
		Size: 32.6 MB (32635346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598639795d089826b093c6c64434c61e0c3ef3dd166723b446cc2878ad23e6bc`  
		Last Modified: Wed, 14 Feb 2018 06:19:46 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17a24dd28a47b6a39c6210c82a1c3577f0def5153144dfe7caf72458b3186d9`  
		Last Modified: Wed, 14 Feb 2018 06:19:45 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce00f16ee8dcbe6dc40c080762d2af3fab59ba247b0f51e78709e2da7f8a821b`  
		Last Modified: Wed, 14 Feb 2018 06:19:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; s390x

```console
$ docker pull ghost@sha256:35aebe409949e2c2f13b62f0ec81d4ccd6cfddc511cad11b330a0a3a4115bee8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.5 MB (121474796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e3367b1b20ea65e3c415a7bce25c5b9a2182809872611a09b427108eaf1c9be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Thu, 15 Feb 2018 06:22:37 GMT
ADD file:aa3302b8380a38a7e51533d16a139a3cc5604bde2e860a555777b2f2d1fc1fec in / 
# Thu, 15 Feb 2018 06:22:37 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:50:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:50:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 09:45:11 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 15 Feb 2018 09:49:17 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Thu, 15 Feb 2018 10:49:38 GMT
ENV NODE_VERSION=6.13.0
# Thu, 15 Feb 2018 10:49:51 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 15 Feb 2018 10:49:51 GMT
ENV YARN_VERSION=1.3.2
# Thu, 15 Feb 2018 10:49:53 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 15 Feb 2018 10:49:53 GMT
CMD ["node"]
# Thu, 15 Feb 2018 13:13:20 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 15 Feb 2018 13:13:21 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 13:13:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 13:13:24 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 15 Feb 2018 13:13:24 GMT
WORKDIR /usr/src/ghost
# Thu, 15 Feb 2018 13:13:24 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 15 Feb 2018 13:14:50 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 15 Feb 2018 13:14:50 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 15 Feb 2018 13:14:51 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 15 Feb 2018 13:14:51 GMT
VOLUME [/var/lib/ghost]
# Thu, 15 Feb 2018 13:14:51 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 15 Feb 2018 13:14:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 13:14:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 13:14:52 GMT
EXPOSE 2368/tcp
# Thu, 15 Feb 2018 13:14:52 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:9c41e82a505c62c52ff8e8d0b157b438dad9642bc97d4389c8156b3dd4ae3b9e`  
		Last Modified: Thu, 15 Feb 2018 00:56:06 GMT  
		Size: 52.8 MB (52794833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efefd31a422fb0b403b87e38d05eaff8c9155ca71c8861f706f26301e8a74ce8`  
		Last Modified: Thu, 15 Feb 2018 06:58:44 GMT  
		Size: 19.5 MB (19472074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6083eddabf78dfd3a7d6a440d59fb267cffad8f780c5c865773b6a3fe7d57828`  
		Last Modified: Thu, 15 Feb 2018 10:50:57 GMT  
		Size: 4.4 KB (4409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4580e8335ca2949a7c46f056f8ac1e30432f8ed0b6796da80c01d7a01159bb`  
		Last Modified: Thu, 15 Feb 2018 10:50:57 GMT  
		Size: 117.6 KB (117627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760b8cc5d41563baeb59c771eda9a4fc3fa2eec54929fbbafb869525cbff5f1e`  
		Last Modified: Thu, 15 Feb 2018 10:53:30 GMT  
		Size: 14.9 MB (14912339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6f884ed9243f6bd17590e3f827e1a2600fbeaf2a350e1c9e7ce6a6213e45b3`  
		Last Modified: Thu, 15 Feb 2018 10:53:27 GMT  
		Size: 1.0 MB (1010352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b6c72e84f7400780131bc8d95830dd7e1d81c9b1843ce007bf7479a7baee00`  
		Last Modified: Thu, 15 Feb 2018 13:16:04 GMT  
		Size: 4.5 KB (4455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:574877c565bc1c2513fa6ef722010aff9a1a418c1b937b10fecff82e0fccc3e0`  
		Last Modified: Thu, 15 Feb 2018 13:16:05 GMT  
		Size: 486.8 KB (486825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a00cee8f77d3f37bbe765fcb13514c5ad27b1f458130ce74fee0ffeb1c81f3b`  
		Last Modified: Thu, 15 Feb 2018 13:16:02 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ae57b95768bbdcde61bb1af67535845e3cadd3085da70385bb8c367953a1b5`  
		Last Modified: Thu, 15 Feb 2018 13:16:14 GMT  
		Size: 32.7 MB (32670784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70895d3cf70496a25fd4187d832c27eb90e7378439fdf56e41bcbb70b462df21`  
		Last Modified: Thu, 15 Feb 2018 13:16:04 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb33fc4e00c7219c70061e91635d584bd5277ae7f9e4bace492354b1b1d4b3f3`  
		Last Modified: Thu, 15 Feb 2018 13:16:02 GMT  
		Size: 623.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6692d3d110d6c5ff6ebcbc021c7c745b9e74e4fd9b6bf03979744c5c7d1ead`  
		Last Modified: Thu, 15 Feb 2018 13:16:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11`

```console
$ docker pull ghost@sha256:f208c1dd8e5116e94fdf4b3c38bd9ef000cbb85ebbc26b30f24894e9f32996c8
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
$ docker pull ghost@sha256:3b5854cda28824b9e2fe9ae38e4265944f81a6a5753dcb7f551885ef0b8c77a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.8 MB (113758549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb0b64686d94d68efbaeba7712e540ad4fac1536a64382fa379c7c2cedd8e0e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:49:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:49:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 13:13:39 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Feb 2018 01:48:29 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Wed, 14 Feb 2018 23:00:17 GMT
ENV NODE_VERSION=6.13.0
# Wed, 14 Feb 2018 23:00:34 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 14 Feb 2018 23:00:36 GMT
ENV YARN_VERSION=1.3.2
# Wed, 14 Feb 2018 23:00:39 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 14 Feb 2018 23:00:40 GMT
CMD ["node"]
# Wed, 14 Feb 2018 23:45:29 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 14 Feb 2018 23:45:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Feb 2018 23:45:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Feb 2018 23:45:35 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 14 Feb 2018 23:45:35 GMT
WORKDIR /usr/src/ghost
# Wed, 14 Feb 2018 23:45:35 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 14 Feb 2018 23:46:50 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 14 Feb 2018 23:46:51 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 14 Feb 2018 23:46:51 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 14 Feb 2018 23:46:52 GMT
VOLUME [/var/lib/ghost]
# Wed, 14 Feb 2018 23:46:52 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 14 Feb 2018 23:46:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 23:46:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 23:46:53 GMT
EXPOSE 2368/tcp
# Wed, 14 Feb 2018 23:46:53 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b491c575b06601bb07a2d88bfc3ace6c6005edc1b4d8da3ba6e37e04e9592d6`  
		Last Modified: Tue, 12 Dec 2017 08:00:34 GMT  
		Size: 19.3 MB (19266203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1158f3983ca33dc1c4dbe34b00e765d0ea636226aab430e807c2bbc930d125e`  
		Last Modified: Tue, 12 Dec 2017 14:15:00 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3aad0879886e1ecb871203c9efc849b0f1d96bb6308919ab06dbbd199ecec1d`  
		Last Modified: Wed, 14 Feb 2018 03:36:17 GMT  
		Size: 117.6 KB (117626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f16410675778e9eb3e43eb48e912cee920fbaa3a71d6d3d6664cf4cac3db1be`  
		Last Modified: Wed, 14 Feb 2018 23:07:50 GMT  
		Size: 14.8 MB (14775292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa056059478a2615239aed96f90b98b0d72e6059dd8423728145384f0c5fe60`  
		Last Modified: Wed, 14 Feb 2018 23:07:48 GMT  
		Size: 1.0 MB (1010355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e5da8b0f47b307e554582e884e92caba1875c86ec28d68562178803558ea43c`  
		Last Modified: Thu, 15 Feb 2018 00:25:17 GMT  
		Size: 4.5 KB (4455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ebcfd1147f6579b6c078853e00484d72851c101ffcea61ade367fa836c2167`  
		Last Modified: Thu, 15 Feb 2018 00:25:19 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5732818a5fcc12bca50a46718997bd20fb307698ac369e561f81ced2afb1ef0`  
		Last Modified: Thu, 15 Feb 2018 00:25:15 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213a8f7058ab17679dceaedbbe4e62e1cedb209511ff62bee202762da3476b7f`  
		Last Modified: Thu, 15 Feb 2018 00:25:32 GMT  
		Size: 25.5 MB (25478740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e118cf329b69b52f58b62d48e3926efbb76e8de837c82b30bde7c447e008c8b`  
		Last Modified: Thu, 15 Feb 2018 00:25:15 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d1cbacf15cfb01a65a969758c25a17d689ac93c1a8b5f3685e5b364ffbbebe`  
		Last Modified: Thu, 15 Feb 2018 00:25:15 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e15bd4cb3b83fcd480593bd4aef9ca78523cbeb612e3f3d5ff080ab7422ab6`  
		Last Modified: Thu, 15 Feb 2018 00:25:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; arm variant v7

```console
$ docker pull ghost@sha256:8f5618b2a3def4ba2b777bed71b4f6bdfa57d96b9591fa81d40769b804096325
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114292463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c0bf8068e56597b32dff6a34f2f52cdbf822c6f47d12af9038f1814589bdf97`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:05 GMT
ADD file:aeb57f3a84dc1b93e1d38a80409a407df553344149d5070ed79b656865c90c54 in / 
# Tue, 12 Dec 2017 13:27:06 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:14:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:14:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 16:51:00 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 12 Dec 2017 16:51:03 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 04 Jan 2018 05:56:34 GMT
ENV NODE_VERSION=6.12.3
# Thu, 04 Jan 2018 05:57:13 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 04 Jan 2018 05:57:13 GMT
ENV YARN_VERSION=1.3.2
# Thu, 04 Jan 2018 05:57:15 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 04 Jan 2018 05:57:15 GMT
CMD ["node"]
# Thu, 04 Jan 2018 06:21:23 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 04 Jan 2018 06:21:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 04 Jan 2018 06:21:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 04 Jan 2018 06:21:25 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 04 Jan 2018 06:21:25 GMT
WORKDIR /usr/src/ghost
# Thu, 04 Jan 2018 06:21:26 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 04 Jan 2018 06:24:44 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 04 Jan 2018 06:24:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 04 Jan 2018 06:24:46 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 04 Jan 2018 06:24:46 GMT
VOLUME [/var/lib/ghost]
# Thu, 04 Jan 2018 06:24:46 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 04 Jan 2018 06:24:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 04 Jan 2018 06:24:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 04 Jan 2018 06:24:48 GMT
EXPOSE 2368/tcp
# Thu, 04 Jan 2018 06:24:48 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:95e140a16c792899abc97cadee0138064dd21346fe51aa332ca4cbbd5563383c`  
		Last Modified: Tue, 12 Dec 2017 13:38:47 GMT  
		Size: 48.7 MB (48691755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237499cbbf2c5155fadc128c997700f0c5ec6355ba9704d0ec3f81c29640c9c4`  
		Last Modified: Tue, 12 Dec 2017 14:30:53 GMT  
		Size: 18.3 MB (18265038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7408ea57a3c623d05d98e0e2a8d1a36968f3cfb919f8eb77dd0f3c8b0c43e2f6`  
		Last Modified: Tue, 12 Dec 2017 17:08:14 GMT  
		Size: 4.4 KB (4421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305f0215d0d14824f8aa396ea7e1c57ce35f615a7ec5940d7b062e0910fb762b`  
		Last Modified: Tue, 12 Dec 2017 17:08:15 GMT  
		Size: 117.7 KB (117653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e91ca6e2c719405e37da625085a7a2a0a6bfaa5cf524106550961274aa6511c3`  
		Last Modified: Thu, 04 Jan 2018 06:00:16 GMT  
		Size: 13.9 MB (13893491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed646e769eb45256e10211baf583c05c0fd8c1c5744512e9be2a1c91d5183a3`  
		Last Modified: Thu, 04 Jan 2018 06:00:12 GMT  
		Size: 1.0 MB (1010387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dcd75a03ea7f7e96329e123b1b30f8b3122525ee95867980110c3f94a9f5017`  
		Last Modified: Thu, 04 Jan 2018 06:25:54 GMT  
		Size: 4.5 KB (4475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79eef35f1ac351e8eb84a1fad4985e259c4fa1ef9a1b554b80f9bf113c9c004`  
		Last Modified: Thu, 04 Jan 2018 06:25:54 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62750cfb0e5747c2bf6c266163dd1cd28cdc449df05d1fdc1e7adc0839857116`  
		Last Modified: Thu, 04 Jan 2018 06:25:53 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cadecc065c3066d71e27fe78d5aeaff9da878a4ff15f10b2eabd84df0ac6d454`  
		Last Modified: Thu, 04 Jan 2018 06:26:06 GMT  
		Size: 31.8 MB (31828808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17650e651bcba806d752e675d63c28b1088d0182a62283d9cfb4ad1c1e71bc34`  
		Last Modified: Thu, 04 Jan 2018 06:25:52 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2678a13fe628a7dadef3c86ebf430ccc7ae1032d23718373657b6d030aee945`  
		Last Modified: Thu, 04 Jan 2018 06:25:52 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7ee4f5126794b668943996d328e05c783429a6757f53b198fc2aa42f106d8db`  
		Last Modified: Thu, 04 Jan 2018 06:25:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:857d51660fc994243e31748190013df1f90907a1ce234bc0ea11eb7630fd870f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117200347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c135fc4b8557a6310ea9f490990f6dfb8a521da9e35d7cc3e720224385a6a81`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 15:52:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:52:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 16 Dec 2017 06:29:23 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Feb 2018 13:31:13 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Thu, 15 Feb 2018 13:01:31 GMT
ENV NODE_VERSION=6.13.0
# Thu, 15 Feb 2018 13:02:00 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 15 Feb 2018 13:02:00 GMT
ENV YARN_VERSION=1.3.2
# Thu, 15 Feb 2018 13:02:04 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 15 Feb 2018 13:02:05 GMT
CMD ["node"]
# Thu, 15 Feb 2018 13:30:26 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 15 Feb 2018 13:30:26 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 13:30:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 13:30:31 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 15 Feb 2018 13:30:32 GMT
WORKDIR /usr/src/ghost
# Thu, 15 Feb 2018 13:30:33 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 15 Feb 2018 13:35:36 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 15 Feb 2018 13:35:37 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 15 Feb 2018 13:35:39 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 15 Feb 2018 13:35:39 GMT
VOLUME [/var/lib/ghost]
# Thu, 15 Feb 2018 13:35:40 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 15 Feb 2018 13:35:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 13:35:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 13:35:43 GMT
EXPOSE 2368/tcp
# Thu, 15 Feb 2018 13:35:43 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f2d61ff35851bad52cd6e85a1aa2c7b986069f0e062b7199ea07bc705f60cc`  
		Last Modified: Fri, 15 Dec 2017 17:15:45 GMT  
		Size: 18.7 MB (18739771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d9246f833963aa2ce4f131418473bc7e6e17640b47a659b95d414bd27c414a`  
		Last Modified: Sat, 16 Dec 2017 06:37:05 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24560a166b63ce533ff6e75ead9a1d193e5b80d5478347196d8af5b3a37e66cb`  
		Last Modified: Wed, 14 Feb 2018 14:17:24 GMT  
		Size: 117.6 KB (117628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7a1036685c8f48dcd925dbeee5443276ceac7f9bb07ec0b34727710461e39a`  
		Last Modified: Thu, 15 Feb 2018 13:05:21 GMT  
		Size: 14.8 MB (14762398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:341ebc71ff83b825b097142aa9f790d2bf2853bff3ad3b71e32ffc299c926aca`  
		Last Modified: Thu, 15 Feb 2018 13:05:14 GMT  
		Size: 1.0 MB (1010356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3caf42529e7237e0fdbc9057fe35bd6d552cb2f6d84c909e01114ce916ef704`  
		Last Modified: Thu, 15 Feb 2018 13:39:09 GMT  
		Size: 4.5 KB (4472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a79990abfe9116d4a6ec08a626cf2171fddac0c720a50bac8325e93c8fc5e4e3`  
		Last Modified: Thu, 15 Feb 2018 13:39:08 GMT  
		Size: 468.7 KB (468703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32de6f3f95fcc9e8f5f9401293b402d570f6c0334bebcecf69b936d7fd91ec1`  
		Last Modified: Thu, 15 Feb 2018 13:39:06 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea3373597aa474700de2f4cde46063ea53733a8852403a260c95270d94b99ba`  
		Last Modified: Thu, 15 Feb 2018 13:39:22 GMT  
		Size: 32.2 MB (32164828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2594b30bd37740981fa5d6549c4e052667aeaa3be897609bfa75e5a29e305a2`  
		Last Modified: Thu, 15 Feb 2018 13:39:06 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98ebda4331e3ceb3b02f748b5640b66cd60d547f947b7d80ab302ffd703fc829`  
		Last Modified: Thu, 15 Feb 2018 13:39:06 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d1481e16dfa08be1f150c96ce2e5621eb2639c1c2b0c4ec8ed6212d7916c56`  
		Last Modified: Thu, 15 Feb 2018 13:39:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; 386

```console
$ docker pull ghost@sha256:57d82b14aa4b9539d1e092633324d1262c78540b9b419a98515749b78a133586
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.5 MB (122524521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2acdfa11f4829b604f8254e5a0ba71e0be44e7ef2a3fadde3760d22a1480f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 16:53:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 16:53:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 18:51:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Feb 2018 06:12:11 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Thu, 15 Feb 2018 07:57:43 GMT
ENV NODE_VERSION=6.13.0
# Thu, 15 Feb 2018 07:58:16 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 15 Feb 2018 08:04:13 GMT
ENV YARN_VERSION=1.3.2
# Thu, 15 Feb 2018 08:04:51 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 15 Feb 2018 08:04:59 GMT
CMD ["node"]
# Thu, 15 Feb 2018 12:04:59 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 15 Feb 2018 12:09:36 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 12:09:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 12:12:46 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 15 Feb 2018 12:12:47 GMT
WORKDIR /usr/src/ghost
# Thu, 15 Feb 2018 12:12:47 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 15 Feb 2018 12:16:33 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 15 Feb 2018 12:19:25 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 15 Feb 2018 12:19:26 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 15 Feb 2018 12:33:00 GMT
VOLUME [/var/lib/ghost]
# Thu, 15 Feb 2018 12:33:01 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 15 Feb 2018 12:33:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 12:33:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 12:33:02 GMT
EXPOSE 2368/tcp
# Thu, 15 Feb 2018 12:33:03 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94aafa6d6f35f82e1fdc93cd4f7f6ab829f6297c8defaaa911dfb2de063bf3d`  
		Last Modified: Tue, 12 Dec 2017 17:27:39 GMT  
		Size: 21.6 MB (21596374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d080d3b5e7c0e87584e0bc0c3c7fb0a6abad953ee94752ff71f7cd32934e6831`  
		Last Modified: Tue, 12 Dec 2017 19:21:31 GMT  
		Size: 4.4 KB (4392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379dc5fa7e32891851fbd2f09acd244ef1937b2ee61cc9d73a6f456c44f4dc5e`  
		Last Modified: Wed, 14 Feb 2018 09:05:31 GMT  
		Size: 117.6 KB (117624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99bb229995039bdc211ed3406eaacbb0a56310f628a8e12b06753b09f6f0fc5`  
		Last Modified: Thu, 15 Feb 2018 09:02:53 GMT  
		Size: 14.3 MB (14295255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834b410c57e839b45b15977ac9c689fab15e53295e88a56c673fbc20c9ef60a0`  
		Last Modified: Thu, 15 Feb 2018 09:02:47 GMT  
		Size: 1.0 MB (1010362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa17bedd2a1dbd9ece2c1c9c10d81f4f66330cea1cb0522dd6f3767a5195181`  
		Last Modified: Thu, 15 Feb 2018 13:21:00 GMT  
		Size: 4.4 KB (4445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dddeddab6a7264f5a875317b9d23a602e1cc4cff4a1afa155c342ed0fb00093`  
		Last Modified: Thu, 15 Feb 2018 13:21:00 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a3559573e8de38cfe88d7f1ee89fd83b5a12a7f2fc9c6ceffcde763608499a4`  
		Last Modified: Thu, 15 Feb 2018 13:20:59 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022e04ab85335562fe520873bc5930ad9b6ee794f2f9af137b5137c75b693dd1`  
		Last Modified: Thu, 15 Feb 2018 13:21:24 GMT  
		Size: 32.2 MB (32237026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9ece665ac4e8e3fc7740d4afa885fbd493f08131d691a9ab37e71e9b4e177b`  
		Last Modified: Thu, 15 Feb 2018 13:20:59 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f347d44b99c177afaad5ccc2b9c7fb227454e18e2484f5deb50a60895f6bee1`  
		Last Modified: Thu, 15 Feb 2018 13:21:01 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be050a95921e3466be44d11928e692655c5a5aaa0a487a4dfd403798f369a08`  
		Last Modified: Thu, 15 Feb 2018 13:20:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; ppc64le

```console
$ docker pull ghost@sha256:179253a0f86e787617aa1bde8aacd6a98176be201b032061797edeece0ec707f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119746615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3089ef1e6c9cf4049cfe7133516aa2bb81a115fa2ac22c71704ed271b671837`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:52:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:52:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 06:11:54 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Feb 2018 05:23:37 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Wed, 14 Feb 2018 05:38:29 GMT
ENV NODE_VERSION=6.12.3
# Wed, 14 Feb 2018 05:39:32 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 14 Feb 2018 05:39:34 GMT
ENV YARN_VERSION=1.3.2
# Wed, 14 Feb 2018 05:39:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 14 Feb 2018 05:39:44 GMT
CMD ["node"]
# Wed, 14 Feb 2018 06:14:22 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 14 Feb 2018 06:14:23 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Feb 2018 06:14:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Feb 2018 06:14:30 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 14 Feb 2018 06:14:31 GMT
WORKDIR /usr/src/ghost
# Wed, 14 Feb 2018 06:14:33 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 14 Feb 2018 06:18:19 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 14 Feb 2018 06:18:21 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 14 Feb 2018 06:18:25 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 14 Feb 2018 06:18:26 GMT
VOLUME [/var/lib/ghost]
# Wed, 14 Feb 2018 06:18:28 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 14 Feb 2018 06:18:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 06:18:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 06:18:34 GMT
EXPOSE 2368/tcp
# Wed, 14 Feb 2018 06:18:35 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6994e7d2dd732e57cd3bac94b995dab8a2711f30cf738f70bd4730a512f403ca`  
		Last Modified: Tue, 12 Dec 2017 03:53:30 GMT  
		Size: 19.2 MB (19202627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bf85c5e59d6cff0e6275da09c076b0d44a8ee93fbcd23bbf44b20d54b4df33`  
		Last Modified: Fri, 15 Dec 2017 06:17:38 GMT  
		Size: 4.4 KB (4442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2462c2e2b1f7df15b2a864fea8c7086465d7c52eae407ea8dcdc1788a9b0c438`  
		Last Modified: Wed, 14 Feb 2018 05:44:50 GMT  
		Size: 117.7 KB (117652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d281f3e1f168da87f18564a53419bb4ba5207e0844dac746df4bf71d1bec4b9`  
		Last Modified: Wed, 14 Feb 2018 05:50:14 GMT  
		Size: 14.5 MB (14491647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:113d85a612c7b302a8ef17f26baed9bc11a81a7d05ab7d1a646de02e2c911888`  
		Last Modified: Wed, 14 Feb 2018 05:50:10 GMT  
		Size: 1.0 MB (1010380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47972269b4a0a6a12a9bfb2d46e8edf4c8eaabcad57ee0ef56285083893b7dd3`  
		Last Modified: Wed, 14 Feb 2018 06:19:48 GMT  
		Size: 4.5 KB (4501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e411560ca620dc52f99fe874a95c0d4cd260c444f01e41d1a89cd44820ca752`  
		Last Modified: Wed, 14 Feb 2018 06:19:48 GMT  
		Size: 469.9 KB (469852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74300529358b60b39f6a5ab78a32945d59550d57d100a58cac78ae1d0e2ab816`  
		Last Modified: Wed, 14 Feb 2018 06:19:47 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a50ebd70033fa548d966c2d4fba56e8901f3c039f4d65c9ebda01bc17c6ed51`  
		Last Modified: Wed, 14 Feb 2018 06:19:59 GMT  
		Size: 32.6 MB (32635346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598639795d089826b093c6c64434c61e0c3ef3dd166723b446cc2878ad23e6bc`  
		Last Modified: Wed, 14 Feb 2018 06:19:46 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17a24dd28a47b6a39c6210c82a1c3577f0def5153144dfe7caf72458b3186d9`  
		Last Modified: Wed, 14 Feb 2018 06:19:45 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce00f16ee8dcbe6dc40c080762d2af3fab59ba247b0f51e78709e2da7f8a821b`  
		Last Modified: Wed, 14 Feb 2018 06:19:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; s390x

```console
$ docker pull ghost@sha256:35aebe409949e2c2f13b62f0ec81d4ccd6cfddc511cad11b330a0a3a4115bee8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.5 MB (121474796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e3367b1b20ea65e3c415a7bce25c5b9a2182809872611a09b427108eaf1c9be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Thu, 15 Feb 2018 06:22:37 GMT
ADD file:aa3302b8380a38a7e51533d16a139a3cc5604bde2e860a555777b2f2d1fc1fec in / 
# Thu, 15 Feb 2018 06:22:37 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:50:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:50:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 09:45:11 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 15 Feb 2018 09:49:17 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Thu, 15 Feb 2018 10:49:38 GMT
ENV NODE_VERSION=6.13.0
# Thu, 15 Feb 2018 10:49:51 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 15 Feb 2018 10:49:51 GMT
ENV YARN_VERSION=1.3.2
# Thu, 15 Feb 2018 10:49:53 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 15 Feb 2018 10:49:53 GMT
CMD ["node"]
# Thu, 15 Feb 2018 13:13:20 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 15 Feb 2018 13:13:21 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 13:13:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 13:13:24 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 15 Feb 2018 13:13:24 GMT
WORKDIR /usr/src/ghost
# Thu, 15 Feb 2018 13:13:24 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 15 Feb 2018 13:14:50 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 15 Feb 2018 13:14:50 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 15 Feb 2018 13:14:51 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 15 Feb 2018 13:14:51 GMT
VOLUME [/var/lib/ghost]
# Thu, 15 Feb 2018 13:14:51 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 15 Feb 2018 13:14:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 13:14:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 13:14:52 GMT
EXPOSE 2368/tcp
# Thu, 15 Feb 2018 13:14:52 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:9c41e82a505c62c52ff8e8d0b157b438dad9642bc97d4389c8156b3dd4ae3b9e`  
		Last Modified: Thu, 15 Feb 2018 00:56:06 GMT  
		Size: 52.8 MB (52794833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efefd31a422fb0b403b87e38d05eaff8c9155ca71c8861f706f26301e8a74ce8`  
		Last Modified: Thu, 15 Feb 2018 06:58:44 GMT  
		Size: 19.5 MB (19472074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6083eddabf78dfd3a7d6a440d59fb267cffad8f780c5c865773b6a3fe7d57828`  
		Last Modified: Thu, 15 Feb 2018 10:50:57 GMT  
		Size: 4.4 KB (4409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4580e8335ca2949a7c46f056f8ac1e30432f8ed0b6796da80c01d7a01159bb`  
		Last Modified: Thu, 15 Feb 2018 10:50:57 GMT  
		Size: 117.6 KB (117627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760b8cc5d41563baeb59c771eda9a4fc3fa2eec54929fbbafb869525cbff5f1e`  
		Last Modified: Thu, 15 Feb 2018 10:53:30 GMT  
		Size: 14.9 MB (14912339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6f884ed9243f6bd17590e3f827e1a2600fbeaf2a350e1c9e7ce6a6213e45b3`  
		Last Modified: Thu, 15 Feb 2018 10:53:27 GMT  
		Size: 1.0 MB (1010352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b6c72e84f7400780131bc8d95830dd7e1d81c9b1843ce007bf7479a7baee00`  
		Last Modified: Thu, 15 Feb 2018 13:16:04 GMT  
		Size: 4.5 KB (4455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:574877c565bc1c2513fa6ef722010aff9a1a418c1b937b10fecff82e0fccc3e0`  
		Last Modified: Thu, 15 Feb 2018 13:16:05 GMT  
		Size: 486.8 KB (486825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a00cee8f77d3f37bbe765fcb13514c5ad27b1f458130ce74fee0ffeb1c81f3b`  
		Last Modified: Thu, 15 Feb 2018 13:16:02 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ae57b95768bbdcde61bb1af67535845e3cadd3085da70385bb8c367953a1b5`  
		Last Modified: Thu, 15 Feb 2018 13:16:14 GMT  
		Size: 32.7 MB (32670784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70895d3cf70496a25fd4187d832c27eb90e7378439fdf56e41bcbb70b462df21`  
		Last Modified: Thu, 15 Feb 2018 13:16:04 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb33fc4e00c7219c70061e91635d584bd5277ae7f9e4bace492354b1b1d4b3f3`  
		Last Modified: Thu, 15 Feb 2018 13:16:02 GMT  
		Size: 623.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6692d3d110d6c5ff6ebcbc021c7c745b9e74e4fd9b6bf03979744c5c7d1ead`  
		Last Modified: Thu, 15 Feb 2018 13:16:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.12`

```console
$ docker pull ghost@sha256:f208c1dd8e5116e94fdf4b3c38bd9ef000cbb85ebbc26b30f24894e9f32996c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:0.11.12` - linux; amd64

```console
$ docker pull ghost@sha256:3b5854cda28824b9e2fe9ae38e4265944f81a6a5753dcb7f551885ef0b8c77a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.8 MB (113758549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb0b64686d94d68efbaeba7712e540ad4fac1536a64382fa379c7c2cedd8e0e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:49:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:49:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 13:13:39 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Feb 2018 01:48:29 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Wed, 14 Feb 2018 23:00:17 GMT
ENV NODE_VERSION=6.13.0
# Wed, 14 Feb 2018 23:00:34 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 14 Feb 2018 23:00:36 GMT
ENV YARN_VERSION=1.3.2
# Wed, 14 Feb 2018 23:00:39 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 14 Feb 2018 23:00:40 GMT
CMD ["node"]
# Wed, 14 Feb 2018 23:45:29 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 14 Feb 2018 23:45:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Feb 2018 23:45:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Feb 2018 23:45:35 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 14 Feb 2018 23:45:35 GMT
WORKDIR /usr/src/ghost
# Wed, 14 Feb 2018 23:45:35 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 14 Feb 2018 23:46:50 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 14 Feb 2018 23:46:51 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 14 Feb 2018 23:46:51 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 14 Feb 2018 23:46:52 GMT
VOLUME [/var/lib/ghost]
# Wed, 14 Feb 2018 23:46:52 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 14 Feb 2018 23:46:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 23:46:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 23:46:53 GMT
EXPOSE 2368/tcp
# Wed, 14 Feb 2018 23:46:53 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b491c575b06601bb07a2d88bfc3ace6c6005edc1b4d8da3ba6e37e04e9592d6`  
		Last Modified: Tue, 12 Dec 2017 08:00:34 GMT  
		Size: 19.3 MB (19266203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1158f3983ca33dc1c4dbe34b00e765d0ea636226aab430e807c2bbc930d125e`  
		Last Modified: Tue, 12 Dec 2017 14:15:00 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3aad0879886e1ecb871203c9efc849b0f1d96bb6308919ab06dbbd199ecec1d`  
		Last Modified: Wed, 14 Feb 2018 03:36:17 GMT  
		Size: 117.6 KB (117626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f16410675778e9eb3e43eb48e912cee920fbaa3a71d6d3d6664cf4cac3db1be`  
		Last Modified: Wed, 14 Feb 2018 23:07:50 GMT  
		Size: 14.8 MB (14775292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa056059478a2615239aed96f90b98b0d72e6059dd8423728145384f0c5fe60`  
		Last Modified: Wed, 14 Feb 2018 23:07:48 GMT  
		Size: 1.0 MB (1010355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e5da8b0f47b307e554582e884e92caba1875c86ec28d68562178803558ea43c`  
		Last Modified: Thu, 15 Feb 2018 00:25:17 GMT  
		Size: 4.5 KB (4455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ebcfd1147f6579b6c078853e00484d72851c101ffcea61ade367fa836c2167`  
		Last Modified: Thu, 15 Feb 2018 00:25:19 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5732818a5fcc12bca50a46718997bd20fb307698ac369e561f81ced2afb1ef0`  
		Last Modified: Thu, 15 Feb 2018 00:25:15 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213a8f7058ab17679dceaedbbe4e62e1cedb209511ff62bee202762da3476b7f`  
		Last Modified: Thu, 15 Feb 2018 00:25:32 GMT  
		Size: 25.5 MB (25478740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e118cf329b69b52f58b62d48e3926efbb76e8de837c82b30bde7c447e008c8b`  
		Last Modified: Thu, 15 Feb 2018 00:25:15 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d1cbacf15cfb01a65a969758c25a17d689ac93c1a8b5f3685e5b364ffbbebe`  
		Last Modified: Thu, 15 Feb 2018 00:25:15 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e15bd4cb3b83fcd480593bd4aef9ca78523cbeb612e3f3d5ff080ab7422ab6`  
		Last Modified: Thu, 15 Feb 2018 00:25:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.12` - linux; arm variant v7

```console
$ docker pull ghost@sha256:8f5618b2a3def4ba2b777bed71b4f6bdfa57d96b9591fa81d40769b804096325
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114292463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c0bf8068e56597b32dff6a34f2f52cdbf822c6f47d12af9038f1814589bdf97`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:05 GMT
ADD file:aeb57f3a84dc1b93e1d38a80409a407df553344149d5070ed79b656865c90c54 in / 
# Tue, 12 Dec 2017 13:27:06 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:14:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:14:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 16:51:00 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 12 Dec 2017 16:51:03 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 04 Jan 2018 05:56:34 GMT
ENV NODE_VERSION=6.12.3
# Thu, 04 Jan 2018 05:57:13 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 04 Jan 2018 05:57:13 GMT
ENV YARN_VERSION=1.3.2
# Thu, 04 Jan 2018 05:57:15 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 04 Jan 2018 05:57:15 GMT
CMD ["node"]
# Thu, 04 Jan 2018 06:21:23 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 04 Jan 2018 06:21:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 04 Jan 2018 06:21:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 04 Jan 2018 06:21:25 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 04 Jan 2018 06:21:25 GMT
WORKDIR /usr/src/ghost
# Thu, 04 Jan 2018 06:21:26 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 04 Jan 2018 06:24:44 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 04 Jan 2018 06:24:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 04 Jan 2018 06:24:46 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 04 Jan 2018 06:24:46 GMT
VOLUME [/var/lib/ghost]
# Thu, 04 Jan 2018 06:24:46 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 04 Jan 2018 06:24:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 04 Jan 2018 06:24:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 04 Jan 2018 06:24:48 GMT
EXPOSE 2368/tcp
# Thu, 04 Jan 2018 06:24:48 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:95e140a16c792899abc97cadee0138064dd21346fe51aa332ca4cbbd5563383c`  
		Last Modified: Tue, 12 Dec 2017 13:38:47 GMT  
		Size: 48.7 MB (48691755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237499cbbf2c5155fadc128c997700f0c5ec6355ba9704d0ec3f81c29640c9c4`  
		Last Modified: Tue, 12 Dec 2017 14:30:53 GMT  
		Size: 18.3 MB (18265038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7408ea57a3c623d05d98e0e2a8d1a36968f3cfb919f8eb77dd0f3c8b0c43e2f6`  
		Last Modified: Tue, 12 Dec 2017 17:08:14 GMT  
		Size: 4.4 KB (4421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305f0215d0d14824f8aa396ea7e1c57ce35f615a7ec5940d7b062e0910fb762b`  
		Last Modified: Tue, 12 Dec 2017 17:08:15 GMT  
		Size: 117.7 KB (117653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e91ca6e2c719405e37da625085a7a2a0a6bfaa5cf524106550961274aa6511c3`  
		Last Modified: Thu, 04 Jan 2018 06:00:16 GMT  
		Size: 13.9 MB (13893491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed646e769eb45256e10211baf583c05c0fd8c1c5744512e9be2a1c91d5183a3`  
		Last Modified: Thu, 04 Jan 2018 06:00:12 GMT  
		Size: 1.0 MB (1010387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dcd75a03ea7f7e96329e123b1b30f8b3122525ee95867980110c3f94a9f5017`  
		Last Modified: Thu, 04 Jan 2018 06:25:54 GMT  
		Size: 4.5 KB (4475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79eef35f1ac351e8eb84a1fad4985e259c4fa1ef9a1b554b80f9bf113c9c004`  
		Last Modified: Thu, 04 Jan 2018 06:25:54 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62750cfb0e5747c2bf6c266163dd1cd28cdc449df05d1fdc1e7adc0839857116`  
		Last Modified: Thu, 04 Jan 2018 06:25:53 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cadecc065c3066d71e27fe78d5aeaff9da878a4ff15f10b2eabd84df0ac6d454`  
		Last Modified: Thu, 04 Jan 2018 06:26:06 GMT  
		Size: 31.8 MB (31828808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17650e651bcba806d752e675d63c28b1088d0182a62283d9cfb4ad1c1e71bc34`  
		Last Modified: Thu, 04 Jan 2018 06:25:52 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2678a13fe628a7dadef3c86ebf430ccc7ae1032d23718373657b6d030aee945`  
		Last Modified: Thu, 04 Jan 2018 06:25:52 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7ee4f5126794b668943996d328e05c783429a6757f53b198fc2aa42f106d8db`  
		Last Modified: Thu, 04 Jan 2018 06:25:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.12` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:857d51660fc994243e31748190013df1f90907a1ce234bc0ea11eb7630fd870f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117200347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c135fc4b8557a6310ea9f490990f6dfb8a521da9e35d7cc3e720224385a6a81`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 15:52:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:52:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 16 Dec 2017 06:29:23 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Feb 2018 13:31:13 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Thu, 15 Feb 2018 13:01:31 GMT
ENV NODE_VERSION=6.13.0
# Thu, 15 Feb 2018 13:02:00 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 15 Feb 2018 13:02:00 GMT
ENV YARN_VERSION=1.3.2
# Thu, 15 Feb 2018 13:02:04 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 15 Feb 2018 13:02:05 GMT
CMD ["node"]
# Thu, 15 Feb 2018 13:30:26 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 15 Feb 2018 13:30:26 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 13:30:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 13:30:31 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 15 Feb 2018 13:30:32 GMT
WORKDIR /usr/src/ghost
# Thu, 15 Feb 2018 13:30:33 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 15 Feb 2018 13:35:36 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 15 Feb 2018 13:35:37 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 15 Feb 2018 13:35:39 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 15 Feb 2018 13:35:39 GMT
VOLUME [/var/lib/ghost]
# Thu, 15 Feb 2018 13:35:40 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 15 Feb 2018 13:35:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 13:35:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 13:35:43 GMT
EXPOSE 2368/tcp
# Thu, 15 Feb 2018 13:35:43 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f2d61ff35851bad52cd6e85a1aa2c7b986069f0e062b7199ea07bc705f60cc`  
		Last Modified: Fri, 15 Dec 2017 17:15:45 GMT  
		Size: 18.7 MB (18739771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d9246f833963aa2ce4f131418473bc7e6e17640b47a659b95d414bd27c414a`  
		Last Modified: Sat, 16 Dec 2017 06:37:05 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24560a166b63ce533ff6e75ead9a1d193e5b80d5478347196d8af5b3a37e66cb`  
		Last Modified: Wed, 14 Feb 2018 14:17:24 GMT  
		Size: 117.6 KB (117628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7a1036685c8f48dcd925dbeee5443276ceac7f9bb07ec0b34727710461e39a`  
		Last Modified: Thu, 15 Feb 2018 13:05:21 GMT  
		Size: 14.8 MB (14762398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:341ebc71ff83b825b097142aa9f790d2bf2853bff3ad3b71e32ffc299c926aca`  
		Last Modified: Thu, 15 Feb 2018 13:05:14 GMT  
		Size: 1.0 MB (1010356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3caf42529e7237e0fdbc9057fe35bd6d552cb2f6d84c909e01114ce916ef704`  
		Last Modified: Thu, 15 Feb 2018 13:39:09 GMT  
		Size: 4.5 KB (4472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a79990abfe9116d4a6ec08a626cf2171fddac0c720a50bac8325e93c8fc5e4e3`  
		Last Modified: Thu, 15 Feb 2018 13:39:08 GMT  
		Size: 468.7 KB (468703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32de6f3f95fcc9e8f5f9401293b402d570f6c0334bebcecf69b936d7fd91ec1`  
		Last Modified: Thu, 15 Feb 2018 13:39:06 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea3373597aa474700de2f4cde46063ea53733a8852403a260c95270d94b99ba`  
		Last Modified: Thu, 15 Feb 2018 13:39:22 GMT  
		Size: 32.2 MB (32164828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2594b30bd37740981fa5d6549c4e052667aeaa3be897609bfa75e5a29e305a2`  
		Last Modified: Thu, 15 Feb 2018 13:39:06 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98ebda4331e3ceb3b02f748b5640b66cd60d547f947b7d80ab302ffd703fc829`  
		Last Modified: Thu, 15 Feb 2018 13:39:06 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d1481e16dfa08be1f150c96ce2e5621eb2639c1c2b0c4ec8ed6212d7916c56`  
		Last Modified: Thu, 15 Feb 2018 13:39:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.12` - linux; 386

```console
$ docker pull ghost@sha256:57d82b14aa4b9539d1e092633324d1262c78540b9b419a98515749b78a133586
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.5 MB (122524521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2acdfa11f4829b604f8254e5a0ba71e0be44e7ef2a3fadde3760d22a1480f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 16:53:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 16:53:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 18:51:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Feb 2018 06:12:11 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Thu, 15 Feb 2018 07:57:43 GMT
ENV NODE_VERSION=6.13.0
# Thu, 15 Feb 2018 07:58:16 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 15 Feb 2018 08:04:13 GMT
ENV YARN_VERSION=1.3.2
# Thu, 15 Feb 2018 08:04:51 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 15 Feb 2018 08:04:59 GMT
CMD ["node"]
# Thu, 15 Feb 2018 12:04:59 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 15 Feb 2018 12:09:36 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 12:09:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 12:12:46 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 15 Feb 2018 12:12:47 GMT
WORKDIR /usr/src/ghost
# Thu, 15 Feb 2018 12:12:47 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 15 Feb 2018 12:16:33 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 15 Feb 2018 12:19:25 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 15 Feb 2018 12:19:26 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 15 Feb 2018 12:33:00 GMT
VOLUME [/var/lib/ghost]
# Thu, 15 Feb 2018 12:33:01 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 15 Feb 2018 12:33:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 12:33:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 12:33:02 GMT
EXPOSE 2368/tcp
# Thu, 15 Feb 2018 12:33:03 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94aafa6d6f35f82e1fdc93cd4f7f6ab829f6297c8defaaa911dfb2de063bf3d`  
		Last Modified: Tue, 12 Dec 2017 17:27:39 GMT  
		Size: 21.6 MB (21596374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d080d3b5e7c0e87584e0bc0c3c7fb0a6abad953ee94752ff71f7cd32934e6831`  
		Last Modified: Tue, 12 Dec 2017 19:21:31 GMT  
		Size: 4.4 KB (4392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379dc5fa7e32891851fbd2f09acd244ef1937b2ee61cc9d73a6f456c44f4dc5e`  
		Last Modified: Wed, 14 Feb 2018 09:05:31 GMT  
		Size: 117.6 KB (117624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99bb229995039bdc211ed3406eaacbb0a56310f628a8e12b06753b09f6f0fc5`  
		Last Modified: Thu, 15 Feb 2018 09:02:53 GMT  
		Size: 14.3 MB (14295255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834b410c57e839b45b15977ac9c689fab15e53295e88a56c673fbc20c9ef60a0`  
		Last Modified: Thu, 15 Feb 2018 09:02:47 GMT  
		Size: 1.0 MB (1010362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa17bedd2a1dbd9ece2c1c9c10d81f4f66330cea1cb0522dd6f3767a5195181`  
		Last Modified: Thu, 15 Feb 2018 13:21:00 GMT  
		Size: 4.4 KB (4445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dddeddab6a7264f5a875317b9d23a602e1cc4cff4a1afa155c342ed0fb00093`  
		Last Modified: Thu, 15 Feb 2018 13:21:00 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a3559573e8de38cfe88d7f1ee89fd83b5a12a7f2fc9c6ceffcde763608499a4`  
		Last Modified: Thu, 15 Feb 2018 13:20:59 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022e04ab85335562fe520873bc5930ad9b6ee794f2f9af137b5137c75b693dd1`  
		Last Modified: Thu, 15 Feb 2018 13:21:24 GMT  
		Size: 32.2 MB (32237026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9ece665ac4e8e3fc7740d4afa885fbd493f08131d691a9ab37e71e9b4e177b`  
		Last Modified: Thu, 15 Feb 2018 13:20:59 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f347d44b99c177afaad5ccc2b9c7fb227454e18e2484f5deb50a60895f6bee1`  
		Last Modified: Thu, 15 Feb 2018 13:21:01 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be050a95921e3466be44d11928e692655c5a5aaa0a487a4dfd403798f369a08`  
		Last Modified: Thu, 15 Feb 2018 13:20:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.12` - linux; ppc64le

```console
$ docker pull ghost@sha256:179253a0f86e787617aa1bde8aacd6a98176be201b032061797edeece0ec707f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119746615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3089ef1e6c9cf4049cfe7133516aa2bb81a115fa2ac22c71704ed271b671837`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:52:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:52:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 06:11:54 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Feb 2018 05:23:37 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Wed, 14 Feb 2018 05:38:29 GMT
ENV NODE_VERSION=6.12.3
# Wed, 14 Feb 2018 05:39:32 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 14 Feb 2018 05:39:34 GMT
ENV YARN_VERSION=1.3.2
# Wed, 14 Feb 2018 05:39:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 14 Feb 2018 05:39:44 GMT
CMD ["node"]
# Wed, 14 Feb 2018 06:14:22 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 14 Feb 2018 06:14:23 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Feb 2018 06:14:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Feb 2018 06:14:30 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 14 Feb 2018 06:14:31 GMT
WORKDIR /usr/src/ghost
# Wed, 14 Feb 2018 06:14:33 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 14 Feb 2018 06:18:19 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 14 Feb 2018 06:18:21 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 14 Feb 2018 06:18:25 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 14 Feb 2018 06:18:26 GMT
VOLUME [/var/lib/ghost]
# Wed, 14 Feb 2018 06:18:28 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 14 Feb 2018 06:18:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 06:18:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 06:18:34 GMT
EXPOSE 2368/tcp
# Wed, 14 Feb 2018 06:18:35 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6994e7d2dd732e57cd3bac94b995dab8a2711f30cf738f70bd4730a512f403ca`  
		Last Modified: Tue, 12 Dec 2017 03:53:30 GMT  
		Size: 19.2 MB (19202627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bf85c5e59d6cff0e6275da09c076b0d44a8ee93fbcd23bbf44b20d54b4df33`  
		Last Modified: Fri, 15 Dec 2017 06:17:38 GMT  
		Size: 4.4 KB (4442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2462c2e2b1f7df15b2a864fea8c7086465d7c52eae407ea8dcdc1788a9b0c438`  
		Last Modified: Wed, 14 Feb 2018 05:44:50 GMT  
		Size: 117.7 KB (117652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d281f3e1f168da87f18564a53419bb4ba5207e0844dac746df4bf71d1bec4b9`  
		Last Modified: Wed, 14 Feb 2018 05:50:14 GMT  
		Size: 14.5 MB (14491647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:113d85a612c7b302a8ef17f26baed9bc11a81a7d05ab7d1a646de02e2c911888`  
		Last Modified: Wed, 14 Feb 2018 05:50:10 GMT  
		Size: 1.0 MB (1010380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47972269b4a0a6a12a9bfb2d46e8edf4c8eaabcad57ee0ef56285083893b7dd3`  
		Last Modified: Wed, 14 Feb 2018 06:19:48 GMT  
		Size: 4.5 KB (4501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e411560ca620dc52f99fe874a95c0d4cd260c444f01e41d1a89cd44820ca752`  
		Last Modified: Wed, 14 Feb 2018 06:19:48 GMT  
		Size: 469.9 KB (469852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74300529358b60b39f6a5ab78a32945d59550d57d100a58cac78ae1d0e2ab816`  
		Last Modified: Wed, 14 Feb 2018 06:19:47 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a50ebd70033fa548d966c2d4fba56e8901f3c039f4d65c9ebda01bc17c6ed51`  
		Last Modified: Wed, 14 Feb 2018 06:19:59 GMT  
		Size: 32.6 MB (32635346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598639795d089826b093c6c64434c61e0c3ef3dd166723b446cc2878ad23e6bc`  
		Last Modified: Wed, 14 Feb 2018 06:19:46 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17a24dd28a47b6a39c6210c82a1c3577f0def5153144dfe7caf72458b3186d9`  
		Last Modified: Wed, 14 Feb 2018 06:19:45 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce00f16ee8dcbe6dc40c080762d2af3fab59ba247b0f51e78709e2da7f8a821b`  
		Last Modified: Wed, 14 Feb 2018 06:19:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.12` - linux; s390x

```console
$ docker pull ghost@sha256:35aebe409949e2c2f13b62f0ec81d4ccd6cfddc511cad11b330a0a3a4115bee8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.5 MB (121474796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e3367b1b20ea65e3c415a7bce25c5b9a2182809872611a09b427108eaf1c9be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Thu, 15 Feb 2018 06:22:37 GMT
ADD file:aa3302b8380a38a7e51533d16a139a3cc5604bde2e860a555777b2f2d1fc1fec in / 
# Thu, 15 Feb 2018 06:22:37 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:50:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:50:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 09:45:11 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 15 Feb 2018 09:49:17 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Thu, 15 Feb 2018 10:49:38 GMT
ENV NODE_VERSION=6.13.0
# Thu, 15 Feb 2018 10:49:51 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 15 Feb 2018 10:49:51 GMT
ENV YARN_VERSION=1.3.2
# Thu, 15 Feb 2018 10:49:53 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 15 Feb 2018 10:49:53 GMT
CMD ["node"]
# Thu, 15 Feb 2018 13:13:20 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 15 Feb 2018 13:13:21 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 13:13:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 13:13:24 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 15 Feb 2018 13:13:24 GMT
WORKDIR /usr/src/ghost
# Thu, 15 Feb 2018 13:13:24 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 15 Feb 2018 13:14:50 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 15 Feb 2018 13:14:50 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 15 Feb 2018 13:14:51 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 15 Feb 2018 13:14:51 GMT
VOLUME [/var/lib/ghost]
# Thu, 15 Feb 2018 13:14:51 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 15 Feb 2018 13:14:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 13:14:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 13:14:52 GMT
EXPOSE 2368/tcp
# Thu, 15 Feb 2018 13:14:52 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:9c41e82a505c62c52ff8e8d0b157b438dad9642bc97d4389c8156b3dd4ae3b9e`  
		Last Modified: Thu, 15 Feb 2018 00:56:06 GMT  
		Size: 52.8 MB (52794833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efefd31a422fb0b403b87e38d05eaff8c9155ca71c8861f706f26301e8a74ce8`  
		Last Modified: Thu, 15 Feb 2018 06:58:44 GMT  
		Size: 19.5 MB (19472074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6083eddabf78dfd3a7d6a440d59fb267cffad8f780c5c865773b6a3fe7d57828`  
		Last Modified: Thu, 15 Feb 2018 10:50:57 GMT  
		Size: 4.4 KB (4409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4580e8335ca2949a7c46f056f8ac1e30432f8ed0b6796da80c01d7a01159bb`  
		Last Modified: Thu, 15 Feb 2018 10:50:57 GMT  
		Size: 117.6 KB (117627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760b8cc5d41563baeb59c771eda9a4fc3fa2eec54929fbbafb869525cbff5f1e`  
		Last Modified: Thu, 15 Feb 2018 10:53:30 GMT  
		Size: 14.9 MB (14912339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6f884ed9243f6bd17590e3f827e1a2600fbeaf2a350e1c9e7ce6a6213e45b3`  
		Last Modified: Thu, 15 Feb 2018 10:53:27 GMT  
		Size: 1.0 MB (1010352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b6c72e84f7400780131bc8d95830dd7e1d81c9b1843ce007bf7479a7baee00`  
		Last Modified: Thu, 15 Feb 2018 13:16:04 GMT  
		Size: 4.5 KB (4455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:574877c565bc1c2513fa6ef722010aff9a1a418c1b937b10fecff82e0fccc3e0`  
		Last Modified: Thu, 15 Feb 2018 13:16:05 GMT  
		Size: 486.8 KB (486825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a00cee8f77d3f37bbe765fcb13514c5ad27b1f458130ce74fee0ffeb1c81f3b`  
		Last Modified: Thu, 15 Feb 2018 13:16:02 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ae57b95768bbdcde61bb1af67535845e3cadd3085da70385bb8c367953a1b5`  
		Last Modified: Thu, 15 Feb 2018 13:16:14 GMT  
		Size: 32.7 MB (32670784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70895d3cf70496a25fd4187d832c27eb90e7378439fdf56e41bcbb70b462df21`  
		Last Modified: Thu, 15 Feb 2018 13:16:04 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb33fc4e00c7219c70061e91635d584bd5277ae7f9e4bace492354b1b1d4b3f3`  
		Last Modified: Thu, 15 Feb 2018 13:16:02 GMT  
		Size: 623.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6692d3d110d6c5ff6ebcbc021c7c745b9e74e4fd9b6bf03979744c5c7d1ead`  
		Last Modified: Thu, 15 Feb 2018 13:16:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.12-alpine`

```console
$ docker pull ghost@sha256:1bfcaa8094871f7ea80b2b5e08d352ad4ad1ff5a9280afc7468ca93d2c4bfdef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11.12-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:ce48277b3f2a2da82fcc54a254ec66ae27e8f84a9ca16940a331941050ed8907
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45511628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dceb4f36e3157845a5975cb25f2818655e1bf7d5f1d7729daf320f398a56987`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 14 Feb 2018 22:32:45 GMT
ENV NODE_VERSION=6.13.0
# Wed, 14 Feb 2018 22:44:56 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 14 Feb 2018 22:45:17 GMT
ENV YARN_VERSION=1.3.2
# Wed, 14 Feb 2018 22:45:25 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 14 Feb 2018 22:45:26 GMT
CMD ["node"]
# Wed, 14 Feb 2018 23:33:01 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 15 Feb 2018 00:01:50 GMT
RUN apk add --no-cache 		bash 		tar
# Thu, 15 Feb 2018 00:01:59 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 15 Feb 2018 00:01:59 GMT
WORKDIR /usr/src/ghost
# Thu, 15 Feb 2018 00:01:59 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 15 Feb 2018 00:02:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 15 Feb 2018 00:02:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 15 Feb 2018 00:02:55 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 15 Feb 2018 00:03:07 GMT
VOLUME [/var/lib/ghost]
# Thu, 15 Feb 2018 00:03:07 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Thu, 15 Feb 2018 00:03:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 00:03:07 GMT
EXPOSE 2368/tcp
# Thu, 15 Feb 2018 00:03:19 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d048a060ac1159afe54b6e56ee0fcfd13181f22dad7fd1933dcf429bc0d0a9`  
		Last Modified: Wed, 14 Feb 2018 23:04:58 GMT  
		Size: 15.5 MB (15505787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de2c120ca6ee406577b5773dac679594d5e645e75a5f014d4d207ba798d9c94`  
		Last Modified: Wed, 14 Feb 2018 23:04:52 GMT  
		Size: 1.0 MB (1017581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177783ca219420ed6c755293c27b22ccb508acbe34c4175b0a10d3f7be3a8de7`  
		Last Modified: Thu, 15 Feb 2018 00:05:55 GMT  
		Size: 8.4 KB (8366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3835ec5c814d2ee0dbde5670303c1d03ffd17fdeb00dac2bc01920f601c4de`  
		Last Modified: Thu, 15 Feb 2018 00:26:21 GMT  
		Size: 1.4 MB (1360629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470f63f8f9f49366c16c45063371b24ce68b27cd46d09b466bdf9fadd7a6ddd5`  
		Last Modified: Thu, 15 Feb 2018 00:26:19 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b95406fa41cb452a513bf84cb76dd6dcf8343938b777960033248e57c5f99011`  
		Last Modified: Thu, 15 Feb 2018 00:26:34 GMT  
		Size: 25.2 MB (25230731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56ed8abfce35d7d1ea6abc67b2238e62ae4ac2acf02fb95bfa55b9ff96403f5`  
		Last Modified: Thu, 15 Feb 2018 00:26:20 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b26b89f8a766312cd8e0a6d8cc40adc93a5bfb5a16b36eaf74d29685199640b7`  
		Last Modified: Thu, 15 Feb 2018 00:26:19 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11-alpine`

```console
$ docker pull ghost@sha256:1bfcaa8094871f7ea80b2b5e08d352ad4ad1ff5a9280afc7468ca93d2c4bfdef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:ce48277b3f2a2da82fcc54a254ec66ae27e8f84a9ca16940a331941050ed8907
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45511628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dceb4f36e3157845a5975cb25f2818655e1bf7d5f1d7729daf320f398a56987`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 14 Feb 2018 22:32:45 GMT
ENV NODE_VERSION=6.13.0
# Wed, 14 Feb 2018 22:44:56 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 14 Feb 2018 22:45:17 GMT
ENV YARN_VERSION=1.3.2
# Wed, 14 Feb 2018 22:45:25 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 14 Feb 2018 22:45:26 GMT
CMD ["node"]
# Wed, 14 Feb 2018 23:33:01 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 15 Feb 2018 00:01:50 GMT
RUN apk add --no-cache 		bash 		tar
# Thu, 15 Feb 2018 00:01:59 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 15 Feb 2018 00:01:59 GMT
WORKDIR /usr/src/ghost
# Thu, 15 Feb 2018 00:01:59 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 15 Feb 2018 00:02:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 15 Feb 2018 00:02:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 15 Feb 2018 00:02:55 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 15 Feb 2018 00:03:07 GMT
VOLUME [/var/lib/ghost]
# Thu, 15 Feb 2018 00:03:07 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Thu, 15 Feb 2018 00:03:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 00:03:07 GMT
EXPOSE 2368/tcp
# Thu, 15 Feb 2018 00:03:19 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d048a060ac1159afe54b6e56ee0fcfd13181f22dad7fd1933dcf429bc0d0a9`  
		Last Modified: Wed, 14 Feb 2018 23:04:58 GMT  
		Size: 15.5 MB (15505787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de2c120ca6ee406577b5773dac679594d5e645e75a5f014d4d207ba798d9c94`  
		Last Modified: Wed, 14 Feb 2018 23:04:52 GMT  
		Size: 1.0 MB (1017581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177783ca219420ed6c755293c27b22ccb508acbe34c4175b0a10d3f7be3a8de7`  
		Last Modified: Thu, 15 Feb 2018 00:05:55 GMT  
		Size: 8.4 KB (8366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3835ec5c814d2ee0dbde5670303c1d03ffd17fdeb00dac2bc01920f601c4de`  
		Last Modified: Thu, 15 Feb 2018 00:26:21 GMT  
		Size: 1.4 MB (1360629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470f63f8f9f49366c16c45063371b24ce68b27cd46d09b466bdf9fadd7a6ddd5`  
		Last Modified: Thu, 15 Feb 2018 00:26:19 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b95406fa41cb452a513bf84cb76dd6dcf8343938b777960033248e57c5f99011`  
		Last Modified: Thu, 15 Feb 2018 00:26:34 GMT  
		Size: 25.2 MB (25230731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56ed8abfce35d7d1ea6abc67b2238e62ae4ac2acf02fb95bfa55b9ff96403f5`  
		Last Modified: Thu, 15 Feb 2018 00:26:20 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b26b89f8a766312cd8e0a6d8cc40adc93a5bfb5a16b36eaf74d29685199640b7`  
		Last Modified: Thu, 15 Feb 2018 00:26:19 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:1bfcaa8094871f7ea80b2b5e08d352ad4ad1ff5a9280afc7468ca93d2c4bfdef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:ce48277b3f2a2da82fcc54a254ec66ae27e8f84a9ca16940a331941050ed8907
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45511628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dceb4f36e3157845a5975cb25f2818655e1bf7d5f1d7729daf320f398a56987`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 14 Feb 2018 22:32:45 GMT
ENV NODE_VERSION=6.13.0
# Wed, 14 Feb 2018 22:44:56 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 14 Feb 2018 22:45:17 GMT
ENV YARN_VERSION=1.3.2
# Wed, 14 Feb 2018 22:45:25 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 14 Feb 2018 22:45:26 GMT
CMD ["node"]
# Wed, 14 Feb 2018 23:33:01 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 15 Feb 2018 00:01:50 GMT
RUN apk add --no-cache 		bash 		tar
# Thu, 15 Feb 2018 00:01:59 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 15 Feb 2018 00:01:59 GMT
WORKDIR /usr/src/ghost
# Thu, 15 Feb 2018 00:01:59 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 15 Feb 2018 00:02:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 15 Feb 2018 00:02:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 15 Feb 2018 00:02:55 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 15 Feb 2018 00:03:07 GMT
VOLUME [/var/lib/ghost]
# Thu, 15 Feb 2018 00:03:07 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Thu, 15 Feb 2018 00:03:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 00:03:07 GMT
EXPOSE 2368/tcp
# Thu, 15 Feb 2018 00:03:19 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d048a060ac1159afe54b6e56ee0fcfd13181f22dad7fd1933dcf429bc0d0a9`  
		Last Modified: Wed, 14 Feb 2018 23:04:58 GMT  
		Size: 15.5 MB (15505787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de2c120ca6ee406577b5773dac679594d5e645e75a5f014d4d207ba798d9c94`  
		Last Modified: Wed, 14 Feb 2018 23:04:52 GMT  
		Size: 1.0 MB (1017581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177783ca219420ed6c755293c27b22ccb508acbe34c4175b0a10d3f7be3a8de7`  
		Last Modified: Thu, 15 Feb 2018 00:05:55 GMT  
		Size: 8.4 KB (8366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3835ec5c814d2ee0dbde5670303c1d03ffd17fdeb00dac2bc01920f601c4de`  
		Last Modified: Thu, 15 Feb 2018 00:26:21 GMT  
		Size: 1.4 MB (1360629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470f63f8f9f49366c16c45063371b24ce68b27cd46d09b466bdf9fadd7a6ddd5`  
		Last Modified: Thu, 15 Feb 2018 00:26:19 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b95406fa41cb452a513bf84cb76dd6dcf8343938b777960033248e57c5f99011`  
		Last Modified: Thu, 15 Feb 2018 00:26:34 GMT  
		Size: 25.2 MB (25230731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56ed8abfce35d7d1ea6abc67b2238e62ae4ac2acf02fb95bfa55b9ff96403f5`  
		Last Modified: Thu, 15 Feb 2018 00:26:20 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b26b89f8a766312cd8e0a6d8cc40adc93a5bfb5a16b36eaf74d29685199640b7`  
		Last Modified: Thu, 15 Feb 2018 00:26:19 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1`

```console
$ docker pull ghost@sha256:0d1c1f63c6ce23e0b874642a258beaf75d331e7eec7c9064f65a39504c2a1896
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
$ docker pull ghost@sha256:bd877652f3a6f533fff85d6b9ece50b0a108381aebb7215ca1c36720b78ab66b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.8 MB (211805247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adebbe0a5934184ada821d66a6bbb1a70aa70fcdfd1f16cf87ae9f2d9f632975`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:49:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:49:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 13:13:39 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Feb 2018 01:48:29 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Wed, 14 Feb 2018 23:00:17 GMT
ENV NODE_VERSION=6.13.0
# Wed, 14 Feb 2018 23:00:34 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 14 Feb 2018 23:00:36 GMT
ENV YARN_VERSION=1.3.2
# Wed, 14 Feb 2018 23:00:39 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 14 Feb 2018 23:00:40 GMT
CMD ["node"]
# Wed, 14 Feb 2018 23:16:07 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Feb 2018 23:16:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Feb 2018 23:16:12 GMT
ENV NODE_ENV=production
# Wed, 14 Feb 2018 23:16:12 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Wed, 14 Feb 2018 23:16:34 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 14 Feb 2018 23:16:45 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 14 Feb 2018 23:16:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 14 Feb 2018 23:16:46 GMT
ENV GHOST_VERSION=1.21.1
# Wed, 14 Feb 2018 23:17:22 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 14 Feb 2018 23:21:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 14 Feb 2018 23:31:47 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 14 Feb 2018 23:31:48 GMT
WORKDIR /var/lib/ghost
# Wed, 14 Feb 2018 23:31:48 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 14 Feb 2018 23:31:48 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 14 Feb 2018 23:31:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 23:31:49 GMT
EXPOSE 2368/tcp
# Wed, 14 Feb 2018 23:31:49 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b491c575b06601bb07a2d88bfc3ace6c6005edc1b4d8da3ba6e37e04e9592d6`  
		Last Modified: Tue, 12 Dec 2017 08:00:34 GMT  
		Size: 19.3 MB (19266203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1158f3983ca33dc1c4dbe34b00e765d0ea636226aab430e807c2bbc930d125e`  
		Last Modified: Tue, 12 Dec 2017 14:15:00 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3aad0879886e1ecb871203c9efc849b0f1d96bb6308919ab06dbbd199ecec1d`  
		Last Modified: Wed, 14 Feb 2018 03:36:17 GMT  
		Size: 117.6 KB (117626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f16410675778e9eb3e43eb48e912cee920fbaa3a71d6d3d6664cf4cac3db1be`  
		Last Modified: Wed, 14 Feb 2018 23:07:50 GMT  
		Size: 14.8 MB (14775292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa056059478a2615239aed96f90b98b0d72e6059dd8423728145384f0c5fe60`  
		Last Modified: Wed, 14 Feb 2018 23:07:48 GMT  
		Size: 1.0 MB (1010355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f2880da81dc4fa8593df30f00683fa4d9bb31d2a30c1b146ac499384094d51`  
		Last Modified: Thu, 15 Feb 2018 00:03:47 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bcccae4867c61eea6b527550ff88653fef79a113df2cc2bb556d8f6265072a3`  
		Last Modified: Thu, 15 Feb 2018 00:04:09 GMT  
		Size: 19.5 MB (19450258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2edb00df06e2cbc3c262f0b6365fab851d42abf508bd42752634000f1f77c5e5`  
		Last Modified: Thu, 15 Feb 2018 00:04:40 GMT  
		Size: 96.3 MB (96266108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c96ecd2db9e69d6e21f0ab59cb862c9029b38c8b4c770857902b8a23c599987`  
		Last Modified: Thu, 15 Feb 2018 00:03:47 GMT  
		Size: 7.8 MB (7814063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73549fccbe40a974f9d198a703d807a47be49ad206c1783cbc4ba0edfb5330ee`  
		Last Modified: Thu, 15 Feb 2018 00:03:47 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:3aa79290e754fd9aec92a0d4ddffc3f25e3e7e7659a30fde57de00254c3abcea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.2 MB (212212176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b3f39c36e5bcebed5b5849629919776405c26390caed7fd486b1c419d24f0a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 15:52:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:52:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 16 Dec 2017 06:29:23 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Feb 2018 13:31:13 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Thu, 15 Feb 2018 13:01:31 GMT
ENV NODE_VERSION=6.13.0
# Thu, 15 Feb 2018 13:02:00 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 15 Feb 2018 13:02:00 GMT
ENV YARN_VERSION=1.3.2
# Thu, 15 Feb 2018 13:02:04 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 15 Feb 2018 13:02:05 GMT
CMD ["node"]
# Thu, 15 Feb 2018 13:22:41 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 13:22:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 13:22:48 GMT
ENV NODE_ENV=production
# Thu, 15 Feb 2018 13:22:48 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Thu, 15 Feb 2018 13:23:47 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 15 Feb 2018 13:23:48 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 15 Feb 2018 13:23:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 15 Feb 2018 13:23:49 GMT
ENV GHOST_VERSION=1.21.1
# Thu, 15 Feb 2018 13:25:37 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 15 Feb 2018 13:25:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 15 Feb 2018 13:29:55 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 15 Feb 2018 13:29:56 GMT
WORKDIR /var/lib/ghost
# Thu, 15 Feb 2018 13:29:56 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 15 Feb 2018 13:29:57 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 15 Feb 2018 13:29:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 13:29:59 GMT
EXPOSE 2368/tcp
# Thu, 15 Feb 2018 13:29:59 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f2d61ff35851bad52cd6e85a1aa2c7b986069f0e062b7199ea07bc705f60cc`  
		Last Modified: Fri, 15 Dec 2017 17:15:45 GMT  
		Size: 18.7 MB (18739771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d9246f833963aa2ce4f131418473bc7e6e17640b47a659b95d414bd27c414a`  
		Last Modified: Sat, 16 Dec 2017 06:37:05 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24560a166b63ce533ff6e75ead9a1d193e5b80d5478347196d8af5b3a37e66cb`  
		Last Modified: Wed, 14 Feb 2018 14:17:24 GMT  
		Size: 117.6 KB (117628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7a1036685c8f48dcd925dbeee5443276ceac7f9bb07ec0b34727710461e39a`  
		Last Modified: Thu, 15 Feb 2018 13:05:21 GMT  
		Size: 14.8 MB (14762398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:341ebc71ff83b825b097142aa9f790d2bf2853bff3ad3b71e32ffc299c926aca`  
		Last Modified: Thu, 15 Feb 2018 13:05:14 GMT  
		Size: 1.0 MB (1010356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1d5a42f6bb881c427a968396c8bd97b4651ba6e0d01b1b226684aaa491e004`  
		Last Modified: Thu, 15 Feb 2018 13:36:10 GMT  
		Size: 468.7 KB (468702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f8c1f7393c67d40180cdb97579b9a6dc553ba6dd9cc56996ea37bb6e8bd31e`  
		Last Modified: Thu, 15 Feb 2018 13:36:34 GMT  
		Size: 19.5 MB (19451033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5359ff085283d5e40573af1c1676aea4b27e0070a04e76eca4286b3cd8b9a013`  
		Last Modified: Thu, 15 Feb 2018 13:38:12 GMT  
		Size: 91.2 MB (91174836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a48871cc61bb6c107e172f8f034a4969c41ec8d3c73c89d911c5c69b840db5`  
		Last Modified: Thu, 15 Feb 2018 13:36:27 GMT  
		Size: 16.6 MB (16555795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34fe24378a4c67eeae09382740f70256d5e34e5ac41588876a0f46cee21767dc`  
		Last Modified: Thu, 15 Feb 2018 13:36:10 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; 386

```console
$ docker pull ghost@sha256:1ce92786749e640016de2ab62e331b89c20d8896d376dff65c2301837874c91a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.5 MB (217527034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75fb1239526246d0aa83612d3696f9de2a91f91f664b81ad2da48a741ab4802e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 16:53:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 16:53:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 18:51:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Feb 2018 06:12:11 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Thu, 15 Feb 2018 07:57:43 GMT
ENV NODE_VERSION=6.13.0
# Thu, 15 Feb 2018 07:58:16 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 15 Feb 2018 08:04:13 GMT
ENV YARN_VERSION=1.3.2
# Thu, 15 Feb 2018 08:04:51 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 15 Feb 2018 08:04:59 GMT
CMD ["node"]
# Thu, 15 Feb 2018 11:02:10 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 11:02:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 11:02:23 GMT
ENV NODE_ENV=production
# Thu, 15 Feb 2018 11:02:24 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Thu, 15 Feb 2018 11:02:58 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 15 Feb 2018 11:02:59 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 15 Feb 2018 11:02:59 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 15 Feb 2018 11:02:59 GMT
ENV GHOST_VERSION=1.21.1
# Thu, 15 Feb 2018 11:05:55 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 15 Feb 2018 11:22:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 15 Feb 2018 11:30:51 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 15 Feb 2018 11:39:58 GMT
WORKDIR /var/lib/ghost
# Thu, 15 Feb 2018 11:39:58 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 15 Feb 2018 11:39:59 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 15 Feb 2018 11:47:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 11:47:18 GMT
EXPOSE 2368/tcp
# Thu, 15 Feb 2018 11:47:18 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94aafa6d6f35f82e1fdc93cd4f7f6ab829f6297c8defaaa911dfb2de063bf3d`  
		Last Modified: Tue, 12 Dec 2017 17:27:39 GMT  
		Size: 21.6 MB (21596374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d080d3b5e7c0e87584e0bc0c3c7fb0a6abad953ee94752ff71f7cd32934e6831`  
		Last Modified: Tue, 12 Dec 2017 19:21:31 GMT  
		Size: 4.4 KB (4392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379dc5fa7e32891851fbd2f09acd244ef1937b2ee61cc9d73a6f456c44f4dc5e`  
		Last Modified: Wed, 14 Feb 2018 09:05:31 GMT  
		Size: 117.6 KB (117624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99bb229995039bdc211ed3406eaacbb0a56310f628a8e12b06753b09f6f0fc5`  
		Last Modified: Thu, 15 Feb 2018 09:02:53 GMT  
		Size: 14.3 MB (14295255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834b410c57e839b45b15977ac9c689fab15e53295e88a56c673fbc20c9ef60a0`  
		Last Modified: Thu, 15 Feb 2018 09:02:47 GMT  
		Size: 1.0 MB (1010362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a133b6749437cf55497fe8140336969cca2c90cfed31265ecc16aa0cc81f9d7`  
		Last Modified: Thu, 15 Feb 2018 12:41:44 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a25a21421cb4e4959dceafaf34dfec01c929ed3f35bc022e6c561100ae8be1`  
		Last Modified: Thu, 15 Feb 2018 12:42:19 GMT  
		Size: 19.5 MB (19450167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b02a6371633e3e96736e6d4d3c1b69bdff3adf0a5e3283ea3b8389d4646d4d`  
		Last Modified: Thu, 15 Feb 2018 12:43:04 GMT  
		Size: 91.2 MB (91159466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f893839348276846b0881b309f44d1b4af1dcb307383f1a3a8f1949605a5fde`  
		Last Modified: Thu, 15 Feb 2018 12:41:54 GMT  
		Size: 16.6 MB (16634888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b8d72599f949404bc51839831c72038f0149d0a14699908252c1e760055e18`  
		Last Modified: Thu, 15 Feb 2018 12:41:44 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; ppc64le

```console
$ docker pull ghost@sha256:dfbed7eb1c8ef0d2598772cd42e9ab9113a959678f77643cf62c82968d75fa4c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214735388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d866ebee7e6188d0a13f7998eeb46045e8ce4a120c591ba3b3166bf14b1682f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:52:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:52:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 06:11:54 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Feb 2018 05:23:37 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Wed, 14 Feb 2018 05:38:29 GMT
ENV NODE_VERSION=6.12.3
# Wed, 14 Feb 2018 05:39:32 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 14 Feb 2018 05:39:34 GMT
ENV YARN_VERSION=1.3.2
# Wed, 14 Feb 2018 05:39:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 14 Feb 2018 05:39:44 GMT
CMD ["node"]
# Wed, 14 Feb 2018 06:08:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Feb 2018 06:08:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Feb 2018 06:08:42 GMT
ENV NODE_ENV=production
# Wed, 14 Feb 2018 06:08:43 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Wed, 14 Feb 2018 06:09:17 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 14 Feb 2018 06:09:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 14 Feb 2018 06:09:20 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 14 Feb 2018 06:09:22 GMT
ENV GHOST_VERSION=1.21.1
# Wed, 14 Feb 2018 06:10:30 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 14 Feb 2018 06:10:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 14 Feb 2018 06:13:59 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 14 Feb 2018 06:14:00 GMT
WORKDIR /var/lib/ghost
# Wed, 14 Feb 2018 06:14:02 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 14 Feb 2018 06:14:03 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 14 Feb 2018 06:14:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 06:14:07 GMT
EXPOSE 2368/tcp
# Wed, 14 Feb 2018 06:14:08 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6994e7d2dd732e57cd3bac94b995dab8a2711f30cf738f70bd4730a512f403ca`  
		Last Modified: Tue, 12 Dec 2017 03:53:30 GMT  
		Size: 19.2 MB (19202627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bf85c5e59d6cff0e6275da09c076b0d44a8ee93fbcd23bbf44b20d54b4df33`  
		Last Modified: Fri, 15 Dec 2017 06:17:38 GMT  
		Size: 4.4 KB (4442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2462c2e2b1f7df15b2a864fea8c7086465d7c52eae407ea8dcdc1788a9b0c438`  
		Last Modified: Wed, 14 Feb 2018 05:44:50 GMT  
		Size: 117.7 KB (117652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d281f3e1f168da87f18564a53419bb4ba5207e0844dac746df4bf71d1bec4b9`  
		Last Modified: Wed, 14 Feb 2018 05:50:14 GMT  
		Size: 14.5 MB (14491647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:113d85a612c7b302a8ef17f26baed9bc11a81a7d05ab7d1a646de02e2c911888`  
		Last Modified: Wed, 14 Feb 2018 05:50:10 GMT  
		Size: 1.0 MB (1010380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74952e532fc8f1805cfac9e83d1710326bffe6a6f6e71d78801a9ecdc9aaa8ef`  
		Last Modified: Wed, 14 Feb 2018 06:18:59 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8243d7c30fbf474e0360a1656d7826ea610cb4f304e8d46f4563472b1fd8807`  
		Last Modified: Wed, 14 Feb 2018 06:18:59 GMT  
		Size: 19.5 MB (19450527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5963b7c7872e8613fb6dabcdb394af503ec068d5f3ae420e990d87c7125c5a`  
		Last Modified: Wed, 14 Feb 2018 06:19:16 GMT  
		Size: 91.2 MB (91153550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79af01e2888776c19b50fcc4cf4dfb1af812dd2a22552b90b487c7a445feab70`  
		Last Modified: Wed, 14 Feb 2018 06:18:56 GMT  
		Size: 17.0 MB (17025147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616788d93f9e5e67abf3921147a352837463527a2064c59d962cd16522a155b4`  
		Last Modified: Wed, 14 Feb 2018 06:18:52 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; s390x

```console
$ docker pull ghost@sha256:8ff69d39f666ee181963d3caa1cf3d2223d5bf06ba58398c316479c5849ed397
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.5 MB (216474205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:414bd6d27deed0b9ffadcde1a07117301ae2ee1b6eb9f2b3a452df4b64f8d763`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 15 Feb 2018 06:22:37 GMT
ADD file:aa3302b8380a38a7e51533d16a139a3cc5604bde2e860a555777b2f2d1fc1fec in / 
# Thu, 15 Feb 2018 06:22:37 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:50:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:50:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 09:45:11 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 15 Feb 2018 09:49:17 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Thu, 15 Feb 2018 10:49:38 GMT
ENV NODE_VERSION=6.13.0
# Thu, 15 Feb 2018 10:49:51 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 15 Feb 2018 10:49:51 GMT
ENV YARN_VERSION=1.3.2
# Thu, 15 Feb 2018 10:49:53 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 15 Feb 2018 10:49:53 GMT
CMD ["node"]
# Thu, 15 Feb 2018 13:10:46 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 13:10:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 13:10:50 GMT
ENV NODE_ENV=production
# Thu, 15 Feb 2018 13:10:50 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Thu, 15 Feb 2018 13:11:12 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 15 Feb 2018 13:11:12 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 15 Feb 2018 13:11:12 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 15 Feb 2018 13:11:12 GMT
ENV GHOST_VERSION=1.21.1
# Thu, 15 Feb 2018 13:11:37 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 15 Feb 2018 13:11:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 15 Feb 2018 13:13:00 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 15 Feb 2018 13:13:00 GMT
WORKDIR /var/lib/ghost
# Thu, 15 Feb 2018 13:13:00 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 15 Feb 2018 13:13:00 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 15 Feb 2018 13:13:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 13:13:00 GMT
EXPOSE 2368/tcp
# Thu, 15 Feb 2018 13:13:01 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:9c41e82a505c62c52ff8e8d0b157b438dad9642bc97d4389c8156b3dd4ae3b9e`  
		Last Modified: Thu, 15 Feb 2018 00:56:06 GMT  
		Size: 52.8 MB (52794833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efefd31a422fb0b403b87e38d05eaff8c9155ca71c8861f706f26301e8a74ce8`  
		Last Modified: Thu, 15 Feb 2018 06:58:44 GMT  
		Size: 19.5 MB (19472074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6083eddabf78dfd3a7d6a440d59fb267cffad8f780c5c865773b6a3fe7d57828`  
		Last Modified: Thu, 15 Feb 2018 10:50:57 GMT  
		Size: 4.4 KB (4409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4580e8335ca2949a7c46f056f8ac1e30432f8ed0b6796da80c01d7a01159bb`  
		Last Modified: Thu, 15 Feb 2018 10:50:57 GMT  
		Size: 117.6 KB (117627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760b8cc5d41563baeb59c771eda9a4fc3fa2eec54929fbbafb869525cbff5f1e`  
		Last Modified: Thu, 15 Feb 2018 10:53:30 GMT  
		Size: 14.9 MB (14912339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6f884ed9243f6bd17590e3f827e1a2600fbeaf2a350e1c9e7ce6a6213e45b3`  
		Last Modified: Thu, 15 Feb 2018 10:53:27 GMT  
		Size: 1.0 MB (1010352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f136756db31c261173d4e895239110f8a9f85293aca936323058cd73a696539`  
		Last Modified: Thu, 15 Feb 2018 13:15:14 GMT  
		Size: 486.8 KB (486829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05020d04bede2d688c9b334465c09f050db72d0f54b15ed9e61e359fe08957e1`  
		Last Modified: Thu, 15 Feb 2018 13:15:27 GMT  
		Size: 19.5 MB (19450180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08ebed6af056c193e2399bf6644044f2f5a7a61b9e6877491d87f38b622bac6`  
		Last Modified: Thu, 15 Feb 2018 13:15:46 GMT  
		Size: 91.2 MB (91159957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e816c4b68ec26df9f7b1a30181872eba97e0d52f5ee62679285217dac27704f4`  
		Last Modified: Thu, 15 Feb 2018 13:15:27 GMT  
		Size: 17.1 MB (17065037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a678e3e44aeb5de33884b7e9a52f1d3a7b9d3deff241f8a741b40d6d0dc933cc`  
		Last Modified: Thu, 15 Feb 2018 13:15:12 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.21`

```console
$ docker pull ghost@sha256:0d1c1f63c6ce23e0b874642a258beaf75d331e7eec7c9064f65a39504c2a1896
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:1.21` - linux; amd64

```console
$ docker pull ghost@sha256:bd877652f3a6f533fff85d6b9ece50b0a108381aebb7215ca1c36720b78ab66b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.8 MB (211805247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adebbe0a5934184ada821d66a6bbb1a70aa70fcdfd1f16cf87ae9f2d9f632975`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:49:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:49:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 13:13:39 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Feb 2018 01:48:29 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Wed, 14 Feb 2018 23:00:17 GMT
ENV NODE_VERSION=6.13.0
# Wed, 14 Feb 2018 23:00:34 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 14 Feb 2018 23:00:36 GMT
ENV YARN_VERSION=1.3.2
# Wed, 14 Feb 2018 23:00:39 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 14 Feb 2018 23:00:40 GMT
CMD ["node"]
# Wed, 14 Feb 2018 23:16:07 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Feb 2018 23:16:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Feb 2018 23:16:12 GMT
ENV NODE_ENV=production
# Wed, 14 Feb 2018 23:16:12 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Wed, 14 Feb 2018 23:16:34 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 14 Feb 2018 23:16:45 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 14 Feb 2018 23:16:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 14 Feb 2018 23:16:46 GMT
ENV GHOST_VERSION=1.21.1
# Wed, 14 Feb 2018 23:17:22 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 14 Feb 2018 23:21:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 14 Feb 2018 23:31:47 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 14 Feb 2018 23:31:48 GMT
WORKDIR /var/lib/ghost
# Wed, 14 Feb 2018 23:31:48 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 14 Feb 2018 23:31:48 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 14 Feb 2018 23:31:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 23:31:49 GMT
EXPOSE 2368/tcp
# Wed, 14 Feb 2018 23:31:49 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b491c575b06601bb07a2d88bfc3ace6c6005edc1b4d8da3ba6e37e04e9592d6`  
		Last Modified: Tue, 12 Dec 2017 08:00:34 GMT  
		Size: 19.3 MB (19266203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1158f3983ca33dc1c4dbe34b00e765d0ea636226aab430e807c2bbc930d125e`  
		Last Modified: Tue, 12 Dec 2017 14:15:00 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3aad0879886e1ecb871203c9efc849b0f1d96bb6308919ab06dbbd199ecec1d`  
		Last Modified: Wed, 14 Feb 2018 03:36:17 GMT  
		Size: 117.6 KB (117626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f16410675778e9eb3e43eb48e912cee920fbaa3a71d6d3d6664cf4cac3db1be`  
		Last Modified: Wed, 14 Feb 2018 23:07:50 GMT  
		Size: 14.8 MB (14775292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa056059478a2615239aed96f90b98b0d72e6059dd8423728145384f0c5fe60`  
		Last Modified: Wed, 14 Feb 2018 23:07:48 GMT  
		Size: 1.0 MB (1010355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f2880da81dc4fa8593df30f00683fa4d9bb31d2a30c1b146ac499384094d51`  
		Last Modified: Thu, 15 Feb 2018 00:03:47 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bcccae4867c61eea6b527550ff88653fef79a113df2cc2bb556d8f6265072a3`  
		Last Modified: Thu, 15 Feb 2018 00:04:09 GMT  
		Size: 19.5 MB (19450258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2edb00df06e2cbc3c262f0b6365fab851d42abf508bd42752634000f1f77c5e5`  
		Last Modified: Thu, 15 Feb 2018 00:04:40 GMT  
		Size: 96.3 MB (96266108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c96ecd2db9e69d6e21f0ab59cb862c9029b38c8b4c770857902b8a23c599987`  
		Last Modified: Thu, 15 Feb 2018 00:03:47 GMT  
		Size: 7.8 MB (7814063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73549fccbe40a974f9d198a703d807a47be49ad206c1783cbc4ba0edfb5330ee`  
		Last Modified: Thu, 15 Feb 2018 00:03:47 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.21` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:3aa79290e754fd9aec92a0d4ddffc3f25e3e7e7659a30fde57de00254c3abcea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.2 MB (212212176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b3f39c36e5bcebed5b5849629919776405c26390caed7fd486b1c419d24f0a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 15:52:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:52:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 16 Dec 2017 06:29:23 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Feb 2018 13:31:13 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Thu, 15 Feb 2018 13:01:31 GMT
ENV NODE_VERSION=6.13.0
# Thu, 15 Feb 2018 13:02:00 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 15 Feb 2018 13:02:00 GMT
ENV YARN_VERSION=1.3.2
# Thu, 15 Feb 2018 13:02:04 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 15 Feb 2018 13:02:05 GMT
CMD ["node"]
# Thu, 15 Feb 2018 13:22:41 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 13:22:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 13:22:48 GMT
ENV NODE_ENV=production
# Thu, 15 Feb 2018 13:22:48 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Thu, 15 Feb 2018 13:23:47 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 15 Feb 2018 13:23:48 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 15 Feb 2018 13:23:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 15 Feb 2018 13:23:49 GMT
ENV GHOST_VERSION=1.21.1
# Thu, 15 Feb 2018 13:25:37 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 15 Feb 2018 13:25:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 15 Feb 2018 13:29:55 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 15 Feb 2018 13:29:56 GMT
WORKDIR /var/lib/ghost
# Thu, 15 Feb 2018 13:29:56 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 15 Feb 2018 13:29:57 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 15 Feb 2018 13:29:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 13:29:59 GMT
EXPOSE 2368/tcp
# Thu, 15 Feb 2018 13:29:59 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f2d61ff35851bad52cd6e85a1aa2c7b986069f0e062b7199ea07bc705f60cc`  
		Last Modified: Fri, 15 Dec 2017 17:15:45 GMT  
		Size: 18.7 MB (18739771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d9246f833963aa2ce4f131418473bc7e6e17640b47a659b95d414bd27c414a`  
		Last Modified: Sat, 16 Dec 2017 06:37:05 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24560a166b63ce533ff6e75ead9a1d193e5b80d5478347196d8af5b3a37e66cb`  
		Last Modified: Wed, 14 Feb 2018 14:17:24 GMT  
		Size: 117.6 KB (117628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7a1036685c8f48dcd925dbeee5443276ceac7f9bb07ec0b34727710461e39a`  
		Last Modified: Thu, 15 Feb 2018 13:05:21 GMT  
		Size: 14.8 MB (14762398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:341ebc71ff83b825b097142aa9f790d2bf2853bff3ad3b71e32ffc299c926aca`  
		Last Modified: Thu, 15 Feb 2018 13:05:14 GMT  
		Size: 1.0 MB (1010356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1d5a42f6bb881c427a968396c8bd97b4651ba6e0d01b1b226684aaa491e004`  
		Last Modified: Thu, 15 Feb 2018 13:36:10 GMT  
		Size: 468.7 KB (468702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f8c1f7393c67d40180cdb97579b9a6dc553ba6dd9cc56996ea37bb6e8bd31e`  
		Last Modified: Thu, 15 Feb 2018 13:36:34 GMT  
		Size: 19.5 MB (19451033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5359ff085283d5e40573af1c1676aea4b27e0070a04e76eca4286b3cd8b9a013`  
		Last Modified: Thu, 15 Feb 2018 13:38:12 GMT  
		Size: 91.2 MB (91174836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a48871cc61bb6c107e172f8f034a4969c41ec8d3c73c89d911c5c69b840db5`  
		Last Modified: Thu, 15 Feb 2018 13:36:27 GMT  
		Size: 16.6 MB (16555795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34fe24378a4c67eeae09382740f70256d5e34e5ac41588876a0f46cee21767dc`  
		Last Modified: Thu, 15 Feb 2018 13:36:10 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.21` - linux; 386

```console
$ docker pull ghost@sha256:1ce92786749e640016de2ab62e331b89c20d8896d376dff65c2301837874c91a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.5 MB (217527034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75fb1239526246d0aa83612d3696f9de2a91f91f664b81ad2da48a741ab4802e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 16:53:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 16:53:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 18:51:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Feb 2018 06:12:11 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Thu, 15 Feb 2018 07:57:43 GMT
ENV NODE_VERSION=6.13.0
# Thu, 15 Feb 2018 07:58:16 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 15 Feb 2018 08:04:13 GMT
ENV YARN_VERSION=1.3.2
# Thu, 15 Feb 2018 08:04:51 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 15 Feb 2018 08:04:59 GMT
CMD ["node"]
# Thu, 15 Feb 2018 11:02:10 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 11:02:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 11:02:23 GMT
ENV NODE_ENV=production
# Thu, 15 Feb 2018 11:02:24 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Thu, 15 Feb 2018 11:02:58 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 15 Feb 2018 11:02:59 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 15 Feb 2018 11:02:59 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 15 Feb 2018 11:02:59 GMT
ENV GHOST_VERSION=1.21.1
# Thu, 15 Feb 2018 11:05:55 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 15 Feb 2018 11:22:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 15 Feb 2018 11:30:51 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 15 Feb 2018 11:39:58 GMT
WORKDIR /var/lib/ghost
# Thu, 15 Feb 2018 11:39:58 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 15 Feb 2018 11:39:59 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 15 Feb 2018 11:47:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 11:47:18 GMT
EXPOSE 2368/tcp
# Thu, 15 Feb 2018 11:47:18 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94aafa6d6f35f82e1fdc93cd4f7f6ab829f6297c8defaaa911dfb2de063bf3d`  
		Last Modified: Tue, 12 Dec 2017 17:27:39 GMT  
		Size: 21.6 MB (21596374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d080d3b5e7c0e87584e0bc0c3c7fb0a6abad953ee94752ff71f7cd32934e6831`  
		Last Modified: Tue, 12 Dec 2017 19:21:31 GMT  
		Size: 4.4 KB (4392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379dc5fa7e32891851fbd2f09acd244ef1937b2ee61cc9d73a6f456c44f4dc5e`  
		Last Modified: Wed, 14 Feb 2018 09:05:31 GMT  
		Size: 117.6 KB (117624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99bb229995039bdc211ed3406eaacbb0a56310f628a8e12b06753b09f6f0fc5`  
		Last Modified: Thu, 15 Feb 2018 09:02:53 GMT  
		Size: 14.3 MB (14295255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834b410c57e839b45b15977ac9c689fab15e53295e88a56c673fbc20c9ef60a0`  
		Last Modified: Thu, 15 Feb 2018 09:02:47 GMT  
		Size: 1.0 MB (1010362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a133b6749437cf55497fe8140336969cca2c90cfed31265ecc16aa0cc81f9d7`  
		Last Modified: Thu, 15 Feb 2018 12:41:44 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a25a21421cb4e4959dceafaf34dfec01c929ed3f35bc022e6c561100ae8be1`  
		Last Modified: Thu, 15 Feb 2018 12:42:19 GMT  
		Size: 19.5 MB (19450167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b02a6371633e3e96736e6d4d3c1b69bdff3adf0a5e3283ea3b8389d4646d4d`  
		Last Modified: Thu, 15 Feb 2018 12:43:04 GMT  
		Size: 91.2 MB (91159466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f893839348276846b0881b309f44d1b4af1dcb307383f1a3a8f1949605a5fde`  
		Last Modified: Thu, 15 Feb 2018 12:41:54 GMT  
		Size: 16.6 MB (16634888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b8d72599f949404bc51839831c72038f0149d0a14699908252c1e760055e18`  
		Last Modified: Thu, 15 Feb 2018 12:41:44 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.21` - linux; ppc64le

```console
$ docker pull ghost@sha256:dfbed7eb1c8ef0d2598772cd42e9ab9113a959678f77643cf62c82968d75fa4c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214735388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d866ebee7e6188d0a13f7998eeb46045e8ce4a120c591ba3b3166bf14b1682f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:52:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:52:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 06:11:54 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Feb 2018 05:23:37 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Wed, 14 Feb 2018 05:38:29 GMT
ENV NODE_VERSION=6.12.3
# Wed, 14 Feb 2018 05:39:32 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 14 Feb 2018 05:39:34 GMT
ENV YARN_VERSION=1.3.2
# Wed, 14 Feb 2018 05:39:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 14 Feb 2018 05:39:44 GMT
CMD ["node"]
# Wed, 14 Feb 2018 06:08:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Feb 2018 06:08:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Feb 2018 06:08:42 GMT
ENV NODE_ENV=production
# Wed, 14 Feb 2018 06:08:43 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Wed, 14 Feb 2018 06:09:17 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 14 Feb 2018 06:09:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 14 Feb 2018 06:09:20 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 14 Feb 2018 06:09:22 GMT
ENV GHOST_VERSION=1.21.1
# Wed, 14 Feb 2018 06:10:30 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 14 Feb 2018 06:10:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 14 Feb 2018 06:13:59 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 14 Feb 2018 06:14:00 GMT
WORKDIR /var/lib/ghost
# Wed, 14 Feb 2018 06:14:02 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 14 Feb 2018 06:14:03 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 14 Feb 2018 06:14:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 06:14:07 GMT
EXPOSE 2368/tcp
# Wed, 14 Feb 2018 06:14:08 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6994e7d2dd732e57cd3bac94b995dab8a2711f30cf738f70bd4730a512f403ca`  
		Last Modified: Tue, 12 Dec 2017 03:53:30 GMT  
		Size: 19.2 MB (19202627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bf85c5e59d6cff0e6275da09c076b0d44a8ee93fbcd23bbf44b20d54b4df33`  
		Last Modified: Fri, 15 Dec 2017 06:17:38 GMT  
		Size: 4.4 KB (4442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2462c2e2b1f7df15b2a864fea8c7086465d7c52eae407ea8dcdc1788a9b0c438`  
		Last Modified: Wed, 14 Feb 2018 05:44:50 GMT  
		Size: 117.7 KB (117652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d281f3e1f168da87f18564a53419bb4ba5207e0844dac746df4bf71d1bec4b9`  
		Last Modified: Wed, 14 Feb 2018 05:50:14 GMT  
		Size: 14.5 MB (14491647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:113d85a612c7b302a8ef17f26baed9bc11a81a7d05ab7d1a646de02e2c911888`  
		Last Modified: Wed, 14 Feb 2018 05:50:10 GMT  
		Size: 1.0 MB (1010380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74952e532fc8f1805cfac9e83d1710326bffe6a6f6e71d78801a9ecdc9aaa8ef`  
		Last Modified: Wed, 14 Feb 2018 06:18:59 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8243d7c30fbf474e0360a1656d7826ea610cb4f304e8d46f4563472b1fd8807`  
		Last Modified: Wed, 14 Feb 2018 06:18:59 GMT  
		Size: 19.5 MB (19450527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5963b7c7872e8613fb6dabcdb394af503ec068d5f3ae420e990d87c7125c5a`  
		Last Modified: Wed, 14 Feb 2018 06:19:16 GMT  
		Size: 91.2 MB (91153550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79af01e2888776c19b50fcc4cf4dfb1af812dd2a22552b90b487c7a445feab70`  
		Last Modified: Wed, 14 Feb 2018 06:18:56 GMT  
		Size: 17.0 MB (17025147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616788d93f9e5e67abf3921147a352837463527a2064c59d962cd16522a155b4`  
		Last Modified: Wed, 14 Feb 2018 06:18:52 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.21` - linux; s390x

```console
$ docker pull ghost@sha256:8ff69d39f666ee181963d3caa1cf3d2223d5bf06ba58398c316479c5849ed397
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.5 MB (216474205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:414bd6d27deed0b9ffadcde1a07117301ae2ee1b6eb9f2b3a452df4b64f8d763`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 15 Feb 2018 06:22:37 GMT
ADD file:aa3302b8380a38a7e51533d16a139a3cc5604bde2e860a555777b2f2d1fc1fec in / 
# Thu, 15 Feb 2018 06:22:37 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:50:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:50:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 09:45:11 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 15 Feb 2018 09:49:17 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Thu, 15 Feb 2018 10:49:38 GMT
ENV NODE_VERSION=6.13.0
# Thu, 15 Feb 2018 10:49:51 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 15 Feb 2018 10:49:51 GMT
ENV YARN_VERSION=1.3.2
# Thu, 15 Feb 2018 10:49:53 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 15 Feb 2018 10:49:53 GMT
CMD ["node"]
# Thu, 15 Feb 2018 13:10:46 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 13:10:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 13:10:50 GMT
ENV NODE_ENV=production
# Thu, 15 Feb 2018 13:10:50 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Thu, 15 Feb 2018 13:11:12 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 15 Feb 2018 13:11:12 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 15 Feb 2018 13:11:12 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 15 Feb 2018 13:11:12 GMT
ENV GHOST_VERSION=1.21.1
# Thu, 15 Feb 2018 13:11:37 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 15 Feb 2018 13:11:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 15 Feb 2018 13:13:00 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 15 Feb 2018 13:13:00 GMT
WORKDIR /var/lib/ghost
# Thu, 15 Feb 2018 13:13:00 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 15 Feb 2018 13:13:00 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 15 Feb 2018 13:13:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 13:13:00 GMT
EXPOSE 2368/tcp
# Thu, 15 Feb 2018 13:13:01 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:9c41e82a505c62c52ff8e8d0b157b438dad9642bc97d4389c8156b3dd4ae3b9e`  
		Last Modified: Thu, 15 Feb 2018 00:56:06 GMT  
		Size: 52.8 MB (52794833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efefd31a422fb0b403b87e38d05eaff8c9155ca71c8861f706f26301e8a74ce8`  
		Last Modified: Thu, 15 Feb 2018 06:58:44 GMT  
		Size: 19.5 MB (19472074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6083eddabf78dfd3a7d6a440d59fb267cffad8f780c5c865773b6a3fe7d57828`  
		Last Modified: Thu, 15 Feb 2018 10:50:57 GMT  
		Size: 4.4 KB (4409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4580e8335ca2949a7c46f056f8ac1e30432f8ed0b6796da80c01d7a01159bb`  
		Last Modified: Thu, 15 Feb 2018 10:50:57 GMT  
		Size: 117.6 KB (117627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760b8cc5d41563baeb59c771eda9a4fc3fa2eec54929fbbafb869525cbff5f1e`  
		Last Modified: Thu, 15 Feb 2018 10:53:30 GMT  
		Size: 14.9 MB (14912339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6f884ed9243f6bd17590e3f827e1a2600fbeaf2a350e1c9e7ce6a6213e45b3`  
		Last Modified: Thu, 15 Feb 2018 10:53:27 GMT  
		Size: 1.0 MB (1010352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f136756db31c261173d4e895239110f8a9f85293aca936323058cd73a696539`  
		Last Modified: Thu, 15 Feb 2018 13:15:14 GMT  
		Size: 486.8 KB (486829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05020d04bede2d688c9b334465c09f050db72d0f54b15ed9e61e359fe08957e1`  
		Last Modified: Thu, 15 Feb 2018 13:15:27 GMT  
		Size: 19.5 MB (19450180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08ebed6af056c193e2399bf6644044f2f5a7a61b9e6877491d87f38b622bac6`  
		Last Modified: Thu, 15 Feb 2018 13:15:46 GMT  
		Size: 91.2 MB (91159957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e816c4b68ec26df9f7b1a30181872eba97e0d52f5ee62679285217dac27704f4`  
		Last Modified: Thu, 15 Feb 2018 13:15:27 GMT  
		Size: 17.1 MB (17065037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a678e3e44aeb5de33884b7e9a52f1d3a7b9d3deff241f8a741b40d6d0dc933cc`  
		Last Modified: Thu, 15 Feb 2018 13:15:12 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.21.1`

```console
$ docker pull ghost@sha256:0d1c1f63c6ce23e0b874642a258beaf75d331e7eec7c9064f65a39504c2a1896
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:1.21.1` - linux; amd64

```console
$ docker pull ghost@sha256:bd877652f3a6f533fff85d6b9ece50b0a108381aebb7215ca1c36720b78ab66b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.8 MB (211805247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adebbe0a5934184ada821d66a6bbb1a70aa70fcdfd1f16cf87ae9f2d9f632975`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:49:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:49:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 13:13:39 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Feb 2018 01:48:29 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Wed, 14 Feb 2018 23:00:17 GMT
ENV NODE_VERSION=6.13.0
# Wed, 14 Feb 2018 23:00:34 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 14 Feb 2018 23:00:36 GMT
ENV YARN_VERSION=1.3.2
# Wed, 14 Feb 2018 23:00:39 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 14 Feb 2018 23:00:40 GMT
CMD ["node"]
# Wed, 14 Feb 2018 23:16:07 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Feb 2018 23:16:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Feb 2018 23:16:12 GMT
ENV NODE_ENV=production
# Wed, 14 Feb 2018 23:16:12 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Wed, 14 Feb 2018 23:16:34 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 14 Feb 2018 23:16:45 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 14 Feb 2018 23:16:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 14 Feb 2018 23:16:46 GMT
ENV GHOST_VERSION=1.21.1
# Wed, 14 Feb 2018 23:17:22 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 14 Feb 2018 23:21:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 14 Feb 2018 23:31:47 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 14 Feb 2018 23:31:48 GMT
WORKDIR /var/lib/ghost
# Wed, 14 Feb 2018 23:31:48 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 14 Feb 2018 23:31:48 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 14 Feb 2018 23:31:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 23:31:49 GMT
EXPOSE 2368/tcp
# Wed, 14 Feb 2018 23:31:49 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b491c575b06601bb07a2d88bfc3ace6c6005edc1b4d8da3ba6e37e04e9592d6`  
		Last Modified: Tue, 12 Dec 2017 08:00:34 GMT  
		Size: 19.3 MB (19266203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1158f3983ca33dc1c4dbe34b00e765d0ea636226aab430e807c2bbc930d125e`  
		Last Modified: Tue, 12 Dec 2017 14:15:00 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3aad0879886e1ecb871203c9efc849b0f1d96bb6308919ab06dbbd199ecec1d`  
		Last Modified: Wed, 14 Feb 2018 03:36:17 GMT  
		Size: 117.6 KB (117626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f16410675778e9eb3e43eb48e912cee920fbaa3a71d6d3d6664cf4cac3db1be`  
		Last Modified: Wed, 14 Feb 2018 23:07:50 GMT  
		Size: 14.8 MB (14775292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa056059478a2615239aed96f90b98b0d72e6059dd8423728145384f0c5fe60`  
		Last Modified: Wed, 14 Feb 2018 23:07:48 GMT  
		Size: 1.0 MB (1010355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f2880da81dc4fa8593df30f00683fa4d9bb31d2a30c1b146ac499384094d51`  
		Last Modified: Thu, 15 Feb 2018 00:03:47 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bcccae4867c61eea6b527550ff88653fef79a113df2cc2bb556d8f6265072a3`  
		Last Modified: Thu, 15 Feb 2018 00:04:09 GMT  
		Size: 19.5 MB (19450258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2edb00df06e2cbc3c262f0b6365fab851d42abf508bd42752634000f1f77c5e5`  
		Last Modified: Thu, 15 Feb 2018 00:04:40 GMT  
		Size: 96.3 MB (96266108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c96ecd2db9e69d6e21f0ab59cb862c9029b38c8b4c770857902b8a23c599987`  
		Last Modified: Thu, 15 Feb 2018 00:03:47 GMT  
		Size: 7.8 MB (7814063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73549fccbe40a974f9d198a703d807a47be49ad206c1783cbc4ba0edfb5330ee`  
		Last Modified: Thu, 15 Feb 2018 00:03:47 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.21.1` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:3aa79290e754fd9aec92a0d4ddffc3f25e3e7e7659a30fde57de00254c3abcea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.2 MB (212212176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b3f39c36e5bcebed5b5849629919776405c26390caed7fd486b1c419d24f0a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 15:52:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:52:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 16 Dec 2017 06:29:23 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Feb 2018 13:31:13 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Thu, 15 Feb 2018 13:01:31 GMT
ENV NODE_VERSION=6.13.0
# Thu, 15 Feb 2018 13:02:00 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 15 Feb 2018 13:02:00 GMT
ENV YARN_VERSION=1.3.2
# Thu, 15 Feb 2018 13:02:04 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 15 Feb 2018 13:02:05 GMT
CMD ["node"]
# Thu, 15 Feb 2018 13:22:41 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 13:22:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 13:22:48 GMT
ENV NODE_ENV=production
# Thu, 15 Feb 2018 13:22:48 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Thu, 15 Feb 2018 13:23:47 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 15 Feb 2018 13:23:48 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 15 Feb 2018 13:23:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 15 Feb 2018 13:23:49 GMT
ENV GHOST_VERSION=1.21.1
# Thu, 15 Feb 2018 13:25:37 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 15 Feb 2018 13:25:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 15 Feb 2018 13:29:55 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 15 Feb 2018 13:29:56 GMT
WORKDIR /var/lib/ghost
# Thu, 15 Feb 2018 13:29:56 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 15 Feb 2018 13:29:57 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 15 Feb 2018 13:29:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 13:29:59 GMT
EXPOSE 2368/tcp
# Thu, 15 Feb 2018 13:29:59 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f2d61ff35851bad52cd6e85a1aa2c7b986069f0e062b7199ea07bc705f60cc`  
		Last Modified: Fri, 15 Dec 2017 17:15:45 GMT  
		Size: 18.7 MB (18739771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d9246f833963aa2ce4f131418473bc7e6e17640b47a659b95d414bd27c414a`  
		Last Modified: Sat, 16 Dec 2017 06:37:05 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24560a166b63ce533ff6e75ead9a1d193e5b80d5478347196d8af5b3a37e66cb`  
		Last Modified: Wed, 14 Feb 2018 14:17:24 GMT  
		Size: 117.6 KB (117628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7a1036685c8f48dcd925dbeee5443276ceac7f9bb07ec0b34727710461e39a`  
		Last Modified: Thu, 15 Feb 2018 13:05:21 GMT  
		Size: 14.8 MB (14762398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:341ebc71ff83b825b097142aa9f790d2bf2853bff3ad3b71e32ffc299c926aca`  
		Last Modified: Thu, 15 Feb 2018 13:05:14 GMT  
		Size: 1.0 MB (1010356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1d5a42f6bb881c427a968396c8bd97b4651ba6e0d01b1b226684aaa491e004`  
		Last Modified: Thu, 15 Feb 2018 13:36:10 GMT  
		Size: 468.7 KB (468702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f8c1f7393c67d40180cdb97579b9a6dc553ba6dd9cc56996ea37bb6e8bd31e`  
		Last Modified: Thu, 15 Feb 2018 13:36:34 GMT  
		Size: 19.5 MB (19451033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5359ff085283d5e40573af1c1676aea4b27e0070a04e76eca4286b3cd8b9a013`  
		Last Modified: Thu, 15 Feb 2018 13:38:12 GMT  
		Size: 91.2 MB (91174836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a48871cc61bb6c107e172f8f034a4969c41ec8d3c73c89d911c5c69b840db5`  
		Last Modified: Thu, 15 Feb 2018 13:36:27 GMT  
		Size: 16.6 MB (16555795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34fe24378a4c67eeae09382740f70256d5e34e5ac41588876a0f46cee21767dc`  
		Last Modified: Thu, 15 Feb 2018 13:36:10 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.21.1` - linux; 386

```console
$ docker pull ghost@sha256:1ce92786749e640016de2ab62e331b89c20d8896d376dff65c2301837874c91a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.5 MB (217527034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75fb1239526246d0aa83612d3696f9de2a91f91f664b81ad2da48a741ab4802e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 16:53:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 16:53:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 18:51:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Feb 2018 06:12:11 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Thu, 15 Feb 2018 07:57:43 GMT
ENV NODE_VERSION=6.13.0
# Thu, 15 Feb 2018 07:58:16 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 15 Feb 2018 08:04:13 GMT
ENV YARN_VERSION=1.3.2
# Thu, 15 Feb 2018 08:04:51 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 15 Feb 2018 08:04:59 GMT
CMD ["node"]
# Thu, 15 Feb 2018 11:02:10 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 11:02:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 11:02:23 GMT
ENV NODE_ENV=production
# Thu, 15 Feb 2018 11:02:24 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Thu, 15 Feb 2018 11:02:58 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 15 Feb 2018 11:02:59 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 15 Feb 2018 11:02:59 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 15 Feb 2018 11:02:59 GMT
ENV GHOST_VERSION=1.21.1
# Thu, 15 Feb 2018 11:05:55 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 15 Feb 2018 11:22:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 15 Feb 2018 11:30:51 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 15 Feb 2018 11:39:58 GMT
WORKDIR /var/lib/ghost
# Thu, 15 Feb 2018 11:39:58 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 15 Feb 2018 11:39:59 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 15 Feb 2018 11:47:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 11:47:18 GMT
EXPOSE 2368/tcp
# Thu, 15 Feb 2018 11:47:18 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94aafa6d6f35f82e1fdc93cd4f7f6ab829f6297c8defaaa911dfb2de063bf3d`  
		Last Modified: Tue, 12 Dec 2017 17:27:39 GMT  
		Size: 21.6 MB (21596374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d080d3b5e7c0e87584e0bc0c3c7fb0a6abad953ee94752ff71f7cd32934e6831`  
		Last Modified: Tue, 12 Dec 2017 19:21:31 GMT  
		Size: 4.4 KB (4392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379dc5fa7e32891851fbd2f09acd244ef1937b2ee61cc9d73a6f456c44f4dc5e`  
		Last Modified: Wed, 14 Feb 2018 09:05:31 GMT  
		Size: 117.6 KB (117624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99bb229995039bdc211ed3406eaacbb0a56310f628a8e12b06753b09f6f0fc5`  
		Last Modified: Thu, 15 Feb 2018 09:02:53 GMT  
		Size: 14.3 MB (14295255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834b410c57e839b45b15977ac9c689fab15e53295e88a56c673fbc20c9ef60a0`  
		Last Modified: Thu, 15 Feb 2018 09:02:47 GMT  
		Size: 1.0 MB (1010362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a133b6749437cf55497fe8140336969cca2c90cfed31265ecc16aa0cc81f9d7`  
		Last Modified: Thu, 15 Feb 2018 12:41:44 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a25a21421cb4e4959dceafaf34dfec01c929ed3f35bc022e6c561100ae8be1`  
		Last Modified: Thu, 15 Feb 2018 12:42:19 GMT  
		Size: 19.5 MB (19450167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b02a6371633e3e96736e6d4d3c1b69bdff3adf0a5e3283ea3b8389d4646d4d`  
		Last Modified: Thu, 15 Feb 2018 12:43:04 GMT  
		Size: 91.2 MB (91159466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f893839348276846b0881b309f44d1b4af1dcb307383f1a3a8f1949605a5fde`  
		Last Modified: Thu, 15 Feb 2018 12:41:54 GMT  
		Size: 16.6 MB (16634888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b8d72599f949404bc51839831c72038f0149d0a14699908252c1e760055e18`  
		Last Modified: Thu, 15 Feb 2018 12:41:44 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.21.1` - linux; ppc64le

```console
$ docker pull ghost@sha256:dfbed7eb1c8ef0d2598772cd42e9ab9113a959678f77643cf62c82968d75fa4c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214735388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d866ebee7e6188d0a13f7998eeb46045e8ce4a120c591ba3b3166bf14b1682f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:52:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:52:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 06:11:54 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Feb 2018 05:23:37 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Wed, 14 Feb 2018 05:38:29 GMT
ENV NODE_VERSION=6.12.3
# Wed, 14 Feb 2018 05:39:32 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 14 Feb 2018 05:39:34 GMT
ENV YARN_VERSION=1.3.2
# Wed, 14 Feb 2018 05:39:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 14 Feb 2018 05:39:44 GMT
CMD ["node"]
# Wed, 14 Feb 2018 06:08:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Feb 2018 06:08:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Feb 2018 06:08:42 GMT
ENV NODE_ENV=production
# Wed, 14 Feb 2018 06:08:43 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Wed, 14 Feb 2018 06:09:17 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 14 Feb 2018 06:09:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 14 Feb 2018 06:09:20 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 14 Feb 2018 06:09:22 GMT
ENV GHOST_VERSION=1.21.1
# Wed, 14 Feb 2018 06:10:30 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 14 Feb 2018 06:10:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 14 Feb 2018 06:13:59 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 14 Feb 2018 06:14:00 GMT
WORKDIR /var/lib/ghost
# Wed, 14 Feb 2018 06:14:02 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 14 Feb 2018 06:14:03 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 14 Feb 2018 06:14:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 06:14:07 GMT
EXPOSE 2368/tcp
# Wed, 14 Feb 2018 06:14:08 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6994e7d2dd732e57cd3bac94b995dab8a2711f30cf738f70bd4730a512f403ca`  
		Last Modified: Tue, 12 Dec 2017 03:53:30 GMT  
		Size: 19.2 MB (19202627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bf85c5e59d6cff0e6275da09c076b0d44a8ee93fbcd23bbf44b20d54b4df33`  
		Last Modified: Fri, 15 Dec 2017 06:17:38 GMT  
		Size: 4.4 KB (4442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2462c2e2b1f7df15b2a864fea8c7086465d7c52eae407ea8dcdc1788a9b0c438`  
		Last Modified: Wed, 14 Feb 2018 05:44:50 GMT  
		Size: 117.7 KB (117652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d281f3e1f168da87f18564a53419bb4ba5207e0844dac746df4bf71d1bec4b9`  
		Last Modified: Wed, 14 Feb 2018 05:50:14 GMT  
		Size: 14.5 MB (14491647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:113d85a612c7b302a8ef17f26baed9bc11a81a7d05ab7d1a646de02e2c911888`  
		Last Modified: Wed, 14 Feb 2018 05:50:10 GMT  
		Size: 1.0 MB (1010380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74952e532fc8f1805cfac9e83d1710326bffe6a6f6e71d78801a9ecdc9aaa8ef`  
		Last Modified: Wed, 14 Feb 2018 06:18:59 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8243d7c30fbf474e0360a1656d7826ea610cb4f304e8d46f4563472b1fd8807`  
		Last Modified: Wed, 14 Feb 2018 06:18:59 GMT  
		Size: 19.5 MB (19450527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5963b7c7872e8613fb6dabcdb394af503ec068d5f3ae420e990d87c7125c5a`  
		Last Modified: Wed, 14 Feb 2018 06:19:16 GMT  
		Size: 91.2 MB (91153550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79af01e2888776c19b50fcc4cf4dfb1af812dd2a22552b90b487c7a445feab70`  
		Last Modified: Wed, 14 Feb 2018 06:18:56 GMT  
		Size: 17.0 MB (17025147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616788d93f9e5e67abf3921147a352837463527a2064c59d962cd16522a155b4`  
		Last Modified: Wed, 14 Feb 2018 06:18:52 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.21.1` - linux; s390x

```console
$ docker pull ghost@sha256:8ff69d39f666ee181963d3caa1cf3d2223d5bf06ba58398c316479c5849ed397
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.5 MB (216474205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:414bd6d27deed0b9ffadcde1a07117301ae2ee1b6eb9f2b3a452df4b64f8d763`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 15 Feb 2018 06:22:37 GMT
ADD file:aa3302b8380a38a7e51533d16a139a3cc5604bde2e860a555777b2f2d1fc1fec in / 
# Thu, 15 Feb 2018 06:22:37 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:50:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:50:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 09:45:11 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 15 Feb 2018 09:49:17 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Thu, 15 Feb 2018 10:49:38 GMT
ENV NODE_VERSION=6.13.0
# Thu, 15 Feb 2018 10:49:51 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 15 Feb 2018 10:49:51 GMT
ENV YARN_VERSION=1.3.2
# Thu, 15 Feb 2018 10:49:53 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 15 Feb 2018 10:49:53 GMT
CMD ["node"]
# Thu, 15 Feb 2018 13:10:46 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 13:10:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 13:10:50 GMT
ENV NODE_ENV=production
# Thu, 15 Feb 2018 13:10:50 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Thu, 15 Feb 2018 13:11:12 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 15 Feb 2018 13:11:12 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 15 Feb 2018 13:11:12 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 15 Feb 2018 13:11:12 GMT
ENV GHOST_VERSION=1.21.1
# Thu, 15 Feb 2018 13:11:37 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 15 Feb 2018 13:11:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 15 Feb 2018 13:13:00 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 15 Feb 2018 13:13:00 GMT
WORKDIR /var/lib/ghost
# Thu, 15 Feb 2018 13:13:00 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 15 Feb 2018 13:13:00 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 15 Feb 2018 13:13:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 13:13:00 GMT
EXPOSE 2368/tcp
# Thu, 15 Feb 2018 13:13:01 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:9c41e82a505c62c52ff8e8d0b157b438dad9642bc97d4389c8156b3dd4ae3b9e`  
		Last Modified: Thu, 15 Feb 2018 00:56:06 GMT  
		Size: 52.8 MB (52794833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efefd31a422fb0b403b87e38d05eaff8c9155ca71c8861f706f26301e8a74ce8`  
		Last Modified: Thu, 15 Feb 2018 06:58:44 GMT  
		Size: 19.5 MB (19472074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6083eddabf78dfd3a7d6a440d59fb267cffad8f780c5c865773b6a3fe7d57828`  
		Last Modified: Thu, 15 Feb 2018 10:50:57 GMT  
		Size: 4.4 KB (4409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4580e8335ca2949a7c46f056f8ac1e30432f8ed0b6796da80c01d7a01159bb`  
		Last Modified: Thu, 15 Feb 2018 10:50:57 GMT  
		Size: 117.6 KB (117627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760b8cc5d41563baeb59c771eda9a4fc3fa2eec54929fbbafb869525cbff5f1e`  
		Last Modified: Thu, 15 Feb 2018 10:53:30 GMT  
		Size: 14.9 MB (14912339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6f884ed9243f6bd17590e3f827e1a2600fbeaf2a350e1c9e7ce6a6213e45b3`  
		Last Modified: Thu, 15 Feb 2018 10:53:27 GMT  
		Size: 1.0 MB (1010352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f136756db31c261173d4e895239110f8a9f85293aca936323058cd73a696539`  
		Last Modified: Thu, 15 Feb 2018 13:15:14 GMT  
		Size: 486.8 KB (486829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05020d04bede2d688c9b334465c09f050db72d0f54b15ed9e61e359fe08957e1`  
		Last Modified: Thu, 15 Feb 2018 13:15:27 GMT  
		Size: 19.5 MB (19450180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08ebed6af056c193e2399bf6644044f2f5a7a61b9e6877491d87f38b622bac6`  
		Last Modified: Thu, 15 Feb 2018 13:15:46 GMT  
		Size: 91.2 MB (91159957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e816c4b68ec26df9f7b1a30181872eba97e0d52f5ee62679285217dac27704f4`  
		Last Modified: Thu, 15 Feb 2018 13:15:27 GMT  
		Size: 17.1 MB (17065037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a678e3e44aeb5de33884b7e9a52f1d3a7b9d3deff241f8a741b40d6d0dc933cc`  
		Last Modified: Thu, 15 Feb 2018 13:15:12 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.21.1-alpine`

```console
$ docker pull ghost@sha256:999dfb5c93706b794ff5c0e93cb6f6ee0f1d96590dc0cd48590b752c89979997
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1.21.1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:5e2aa5f1f25e557adac3e133b9c112bc666201446a3440aa8302e35e5f7d4924
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.8 MB (135760322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:177e5ba8b545cbd66f938da3e835a3bdcebf3a4d924511a9ac27cf87fcf62449`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 14 Feb 2018 22:32:45 GMT
ENV NODE_VERSION=6.13.0
# Wed, 14 Feb 2018 22:44:56 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 14 Feb 2018 22:45:17 GMT
ENV YARN_VERSION=1.3.2
# Wed, 14 Feb 2018 22:45:25 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 14 Feb 2018 22:45:26 GMT
CMD ["node"]
# Wed, 14 Feb 2018 23:33:01 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 14 Feb 2018 23:33:04 GMT
RUN apk add --no-cache 		bash
# Wed, 14 Feb 2018 23:33:04 GMT
ENV NODE_ENV=production
# Wed, 14 Feb 2018 23:33:05 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Wed, 14 Feb 2018 23:33:32 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 14 Feb 2018 23:33:37 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 14 Feb 2018 23:33:37 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 14 Feb 2018 23:33:38 GMT
ENV GHOST_VERSION=1.21.1
# Wed, 14 Feb 2018 23:34:13 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 14 Feb 2018 23:44:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 14 Feb 2018 23:44:56 GMT
WORKDIR /var/lib/ghost
# Wed, 14 Feb 2018 23:44:56 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 14 Feb 2018 23:44:56 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Wed, 14 Feb 2018 23:44:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 23:44:57 GMT
EXPOSE 2368/tcp
# Wed, 14 Feb 2018 23:44:57 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d048a060ac1159afe54b6e56ee0fcfd13181f22dad7fd1933dcf429bc0d0a9`  
		Last Modified: Wed, 14 Feb 2018 23:04:58 GMT  
		Size: 15.5 MB (15505787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de2c120ca6ee406577b5773dac679594d5e645e75a5f014d4d207ba798d9c94`  
		Last Modified: Wed, 14 Feb 2018 23:04:52 GMT  
		Size: 1.0 MB (1017581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177783ca219420ed6c755293c27b22ccb508acbe34c4175b0a10d3f7be3a8de7`  
		Last Modified: Thu, 15 Feb 2018 00:05:55 GMT  
		Size: 8.4 KB (8366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878dddaa7ad291ccbc89b436be60aaf76c0dcca5c721c06cf9617aa753285ca6`  
		Last Modified: Thu, 15 Feb 2018 00:06:02 GMT  
		Size: 1.1 MB (1119096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19a0cf29c8d02cb3b7b6f7e222c436d6cfac760d42b9aa2205276e1b4e45403`  
		Last Modified: Thu, 15 Feb 2018 00:06:21 GMT  
		Size: 19.5 MB (19450308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c294b8773aba455d62c67052b39f7404cf36260124f6b1f17fc018733a30ee63`  
		Last Modified: Thu, 15 Feb 2018 00:06:57 GMT  
		Size: 96.3 MB (96271056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2940e60866eb3cca837fb068c48cc6d8834ba7783aec51cda484cd4405209eed`  
		Last Modified: Thu, 15 Feb 2018 00:05:55 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.21-alpine`

```console
$ docker pull ghost@sha256:999dfb5c93706b794ff5c0e93cb6f6ee0f1d96590dc0cd48590b752c89979997
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1.21-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:5e2aa5f1f25e557adac3e133b9c112bc666201446a3440aa8302e35e5f7d4924
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.8 MB (135760322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:177e5ba8b545cbd66f938da3e835a3bdcebf3a4d924511a9ac27cf87fcf62449`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 14 Feb 2018 22:32:45 GMT
ENV NODE_VERSION=6.13.0
# Wed, 14 Feb 2018 22:44:56 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 14 Feb 2018 22:45:17 GMT
ENV YARN_VERSION=1.3.2
# Wed, 14 Feb 2018 22:45:25 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 14 Feb 2018 22:45:26 GMT
CMD ["node"]
# Wed, 14 Feb 2018 23:33:01 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 14 Feb 2018 23:33:04 GMT
RUN apk add --no-cache 		bash
# Wed, 14 Feb 2018 23:33:04 GMT
ENV NODE_ENV=production
# Wed, 14 Feb 2018 23:33:05 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Wed, 14 Feb 2018 23:33:32 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 14 Feb 2018 23:33:37 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 14 Feb 2018 23:33:37 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 14 Feb 2018 23:33:38 GMT
ENV GHOST_VERSION=1.21.1
# Wed, 14 Feb 2018 23:34:13 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 14 Feb 2018 23:44:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 14 Feb 2018 23:44:56 GMT
WORKDIR /var/lib/ghost
# Wed, 14 Feb 2018 23:44:56 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 14 Feb 2018 23:44:56 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Wed, 14 Feb 2018 23:44:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 23:44:57 GMT
EXPOSE 2368/tcp
# Wed, 14 Feb 2018 23:44:57 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d048a060ac1159afe54b6e56ee0fcfd13181f22dad7fd1933dcf429bc0d0a9`  
		Last Modified: Wed, 14 Feb 2018 23:04:58 GMT  
		Size: 15.5 MB (15505787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de2c120ca6ee406577b5773dac679594d5e645e75a5f014d4d207ba798d9c94`  
		Last Modified: Wed, 14 Feb 2018 23:04:52 GMT  
		Size: 1.0 MB (1017581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177783ca219420ed6c755293c27b22ccb508acbe34c4175b0a10d3f7be3a8de7`  
		Last Modified: Thu, 15 Feb 2018 00:05:55 GMT  
		Size: 8.4 KB (8366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878dddaa7ad291ccbc89b436be60aaf76c0dcca5c721c06cf9617aa753285ca6`  
		Last Modified: Thu, 15 Feb 2018 00:06:02 GMT  
		Size: 1.1 MB (1119096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19a0cf29c8d02cb3b7b6f7e222c436d6cfac760d42b9aa2205276e1b4e45403`  
		Last Modified: Thu, 15 Feb 2018 00:06:21 GMT  
		Size: 19.5 MB (19450308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c294b8773aba455d62c67052b39f7404cf36260124f6b1f17fc018733a30ee63`  
		Last Modified: Thu, 15 Feb 2018 00:06:57 GMT  
		Size: 96.3 MB (96271056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2940e60866eb3cca837fb068c48cc6d8834ba7783aec51cda484cd4405209eed`  
		Last Modified: Thu, 15 Feb 2018 00:05:55 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:999dfb5c93706b794ff5c0e93cb6f6ee0f1d96590dc0cd48590b752c89979997
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:5e2aa5f1f25e557adac3e133b9c112bc666201446a3440aa8302e35e5f7d4924
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.8 MB (135760322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:177e5ba8b545cbd66f938da3e835a3bdcebf3a4d924511a9ac27cf87fcf62449`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 14 Feb 2018 22:32:45 GMT
ENV NODE_VERSION=6.13.0
# Wed, 14 Feb 2018 22:44:56 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 14 Feb 2018 22:45:17 GMT
ENV YARN_VERSION=1.3.2
# Wed, 14 Feb 2018 22:45:25 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 14 Feb 2018 22:45:26 GMT
CMD ["node"]
# Wed, 14 Feb 2018 23:33:01 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 14 Feb 2018 23:33:04 GMT
RUN apk add --no-cache 		bash
# Wed, 14 Feb 2018 23:33:04 GMT
ENV NODE_ENV=production
# Wed, 14 Feb 2018 23:33:05 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Wed, 14 Feb 2018 23:33:32 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 14 Feb 2018 23:33:37 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 14 Feb 2018 23:33:37 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 14 Feb 2018 23:33:38 GMT
ENV GHOST_VERSION=1.21.1
# Wed, 14 Feb 2018 23:34:13 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 14 Feb 2018 23:44:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 14 Feb 2018 23:44:56 GMT
WORKDIR /var/lib/ghost
# Wed, 14 Feb 2018 23:44:56 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 14 Feb 2018 23:44:56 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Wed, 14 Feb 2018 23:44:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 23:44:57 GMT
EXPOSE 2368/tcp
# Wed, 14 Feb 2018 23:44:57 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d048a060ac1159afe54b6e56ee0fcfd13181f22dad7fd1933dcf429bc0d0a9`  
		Last Modified: Wed, 14 Feb 2018 23:04:58 GMT  
		Size: 15.5 MB (15505787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de2c120ca6ee406577b5773dac679594d5e645e75a5f014d4d207ba798d9c94`  
		Last Modified: Wed, 14 Feb 2018 23:04:52 GMT  
		Size: 1.0 MB (1017581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177783ca219420ed6c755293c27b22ccb508acbe34c4175b0a10d3f7be3a8de7`  
		Last Modified: Thu, 15 Feb 2018 00:05:55 GMT  
		Size: 8.4 KB (8366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878dddaa7ad291ccbc89b436be60aaf76c0dcca5c721c06cf9617aa753285ca6`  
		Last Modified: Thu, 15 Feb 2018 00:06:02 GMT  
		Size: 1.1 MB (1119096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19a0cf29c8d02cb3b7b6f7e222c436d6cfac760d42b9aa2205276e1b4e45403`  
		Last Modified: Thu, 15 Feb 2018 00:06:21 GMT  
		Size: 19.5 MB (19450308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c294b8773aba455d62c67052b39f7404cf36260124f6b1f17fc018733a30ee63`  
		Last Modified: Thu, 15 Feb 2018 00:06:57 GMT  
		Size: 96.3 MB (96271056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2940e60866eb3cca837fb068c48cc6d8834ba7783aec51cda484cd4405209eed`  
		Last Modified: Thu, 15 Feb 2018 00:05:55 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:999dfb5c93706b794ff5c0e93cb6f6ee0f1d96590dc0cd48590b752c89979997
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:5e2aa5f1f25e557adac3e133b9c112bc666201446a3440aa8302e35e5f7d4924
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.8 MB (135760322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:177e5ba8b545cbd66f938da3e835a3bdcebf3a4d924511a9ac27cf87fcf62449`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 14 Feb 2018 22:32:45 GMT
ENV NODE_VERSION=6.13.0
# Wed, 14 Feb 2018 22:44:56 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 14 Feb 2018 22:45:17 GMT
ENV YARN_VERSION=1.3.2
# Wed, 14 Feb 2018 22:45:25 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 14 Feb 2018 22:45:26 GMT
CMD ["node"]
# Wed, 14 Feb 2018 23:33:01 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 14 Feb 2018 23:33:04 GMT
RUN apk add --no-cache 		bash
# Wed, 14 Feb 2018 23:33:04 GMT
ENV NODE_ENV=production
# Wed, 14 Feb 2018 23:33:05 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Wed, 14 Feb 2018 23:33:32 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 14 Feb 2018 23:33:37 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 14 Feb 2018 23:33:37 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 14 Feb 2018 23:33:38 GMT
ENV GHOST_VERSION=1.21.1
# Wed, 14 Feb 2018 23:34:13 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 14 Feb 2018 23:44:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 14 Feb 2018 23:44:56 GMT
WORKDIR /var/lib/ghost
# Wed, 14 Feb 2018 23:44:56 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 14 Feb 2018 23:44:56 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Wed, 14 Feb 2018 23:44:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 23:44:57 GMT
EXPOSE 2368/tcp
# Wed, 14 Feb 2018 23:44:57 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d048a060ac1159afe54b6e56ee0fcfd13181f22dad7fd1933dcf429bc0d0a9`  
		Last Modified: Wed, 14 Feb 2018 23:04:58 GMT  
		Size: 15.5 MB (15505787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de2c120ca6ee406577b5773dac679594d5e645e75a5f014d4d207ba798d9c94`  
		Last Modified: Wed, 14 Feb 2018 23:04:52 GMT  
		Size: 1.0 MB (1017581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177783ca219420ed6c755293c27b22ccb508acbe34c4175b0a10d3f7be3a8de7`  
		Last Modified: Thu, 15 Feb 2018 00:05:55 GMT  
		Size: 8.4 KB (8366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878dddaa7ad291ccbc89b436be60aaf76c0dcca5c721c06cf9617aa753285ca6`  
		Last Modified: Thu, 15 Feb 2018 00:06:02 GMT  
		Size: 1.1 MB (1119096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19a0cf29c8d02cb3b7b6f7e222c436d6cfac760d42b9aa2205276e1b4e45403`  
		Last Modified: Thu, 15 Feb 2018 00:06:21 GMT  
		Size: 19.5 MB (19450308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c294b8773aba455d62c67052b39f7404cf36260124f6b1f17fc018733a30ee63`  
		Last Modified: Thu, 15 Feb 2018 00:06:57 GMT  
		Size: 96.3 MB (96271056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2940e60866eb3cca837fb068c48cc6d8834ba7783aec51cda484cd4405209eed`  
		Last Modified: Thu, 15 Feb 2018 00:05:55 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:0d1c1f63c6ce23e0b874642a258beaf75d331e7eec7c9064f65a39504c2a1896
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
$ docker pull ghost@sha256:bd877652f3a6f533fff85d6b9ece50b0a108381aebb7215ca1c36720b78ab66b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.8 MB (211805247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adebbe0a5934184ada821d66a6bbb1a70aa70fcdfd1f16cf87ae9f2d9f632975`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:49:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:49:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 13:13:39 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Feb 2018 01:48:29 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Wed, 14 Feb 2018 23:00:17 GMT
ENV NODE_VERSION=6.13.0
# Wed, 14 Feb 2018 23:00:34 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 14 Feb 2018 23:00:36 GMT
ENV YARN_VERSION=1.3.2
# Wed, 14 Feb 2018 23:00:39 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 14 Feb 2018 23:00:40 GMT
CMD ["node"]
# Wed, 14 Feb 2018 23:16:07 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Feb 2018 23:16:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Feb 2018 23:16:12 GMT
ENV NODE_ENV=production
# Wed, 14 Feb 2018 23:16:12 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Wed, 14 Feb 2018 23:16:34 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 14 Feb 2018 23:16:45 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 14 Feb 2018 23:16:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 14 Feb 2018 23:16:46 GMT
ENV GHOST_VERSION=1.21.1
# Wed, 14 Feb 2018 23:17:22 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 14 Feb 2018 23:21:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 14 Feb 2018 23:31:47 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 14 Feb 2018 23:31:48 GMT
WORKDIR /var/lib/ghost
# Wed, 14 Feb 2018 23:31:48 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 14 Feb 2018 23:31:48 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 14 Feb 2018 23:31:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 23:31:49 GMT
EXPOSE 2368/tcp
# Wed, 14 Feb 2018 23:31:49 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b491c575b06601bb07a2d88bfc3ace6c6005edc1b4d8da3ba6e37e04e9592d6`  
		Last Modified: Tue, 12 Dec 2017 08:00:34 GMT  
		Size: 19.3 MB (19266203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1158f3983ca33dc1c4dbe34b00e765d0ea636226aab430e807c2bbc930d125e`  
		Last Modified: Tue, 12 Dec 2017 14:15:00 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3aad0879886e1ecb871203c9efc849b0f1d96bb6308919ab06dbbd199ecec1d`  
		Last Modified: Wed, 14 Feb 2018 03:36:17 GMT  
		Size: 117.6 KB (117626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f16410675778e9eb3e43eb48e912cee920fbaa3a71d6d3d6664cf4cac3db1be`  
		Last Modified: Wed, 14 Feb 2018 23:07:50 GMT  
		Size: 14.8 MB (14775292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa056059478a2615239aed96f90b98b0d72e6059dd8423728145384f0c5fe60`  
		Last Modified: Wed, 14 Feb 2018 23:07:48 GMT  
		Size: 1.0 MB (1010355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f2880da81dc4fa8593df30f00683fa4d9bb31d2a30c1b146ac499384094d51`  
		Last Modified: Thu, 15 Feb 2018 00:03:47 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bcccae4867c61eea6b527550ff88653fef79a113df2cc2bb556d8f6265072a3`  
		Last Modified: Thu, 15 Feb 2018 00:04:09 GMT  
		Size: 19.5 MB (19450258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2edb00df06e2cbc3c262f0b6365fab851d42abf508bd42752634000f1f77c5e5`  
		Last Modified: Thu, 15 Feb 2018 00:04:40 GMT  
		Size: 96.3 MB (96266108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c96ecd2db9e69d6e21f0ab59cb862c9029b38c8b4c770857902b8a23c599987`  
		Last Modified: Thu, 15 Feb 2018 00:03:47 GMT  
		Size: 7.8 MB (7814063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73549fccbe40a974f9d198a703d807a47be49ad206c1783cbc4ba0edfb5330ee`  
		Last Modified: Thu, 15 Feb 2018 00:03:47 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:3aa79290e754fd9aec92a0d4ddffc3f25e3e7e7659a30fde57de00254c3abcea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.2 MB (212212176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b3f39c36e5bcebed5b5849629919776405c26390caed7fd486b1c419d24f0a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 15:52:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:52:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 16 Dec 2017 06:29:23 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Feb 2018 13:31:13 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Thu, 15 Feb 2018 13:01:31 GMT
ENV NODE_VERSION=6.13.0
# Thu, 15 Feb 2018 13:02:00 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 15 Feb 2018 13:02:00 GMT
ENV YARN_VERSION=1.3.2
# Thu, 15 Feb 2018 13:02:04 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 15 Feb 2018 13:02:05 GMT
CMD ["node"]
# Thu, 15 Feb 2018 13:22:41 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 13:22:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 13:22:48 GMT
ENV NODE_ENV=production
# Thu, 15 Feb 2018 13:22:48 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Thu, 15 Feb 2018 13:23:47 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 15 Feb 2018 13:23:48 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 15 Feb 2018 13:23:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 15 Feb 2018 13:23:49 GMT
ENV GHOST_VERSION=1.21.1
# Thu, 15 Feb 2018 13:25:37 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 15 Feb 2018 13:25:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 15 Feb 2018 13:29:55 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 15 Feb 2018 13:29:56 GMT
WORKDIR /var/lib/ghost
# Thu, 15 Feb 2018 13:29:56 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 15 Feb 2018 13:29:57 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 15 Feb 2018 13:29:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 13:29:59 GMT
EXPOSE 2368/tcp
# Thu, 15 Feb 2018 13:29:59 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f2d61ff35851bad52cd6e85a1aa2c7b986069f0e062b7199ea07bc705f60cc`  
		Last Modified: Fri, 15 Dec 2017 17:15:45 GMT  
		Size: 18.7 MB (18739771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d9246f833963aa2ce4f131418473bc7e6e17640b47a659b95d414bd27c414a`  
		Last Modified: Sat, 16 Dec 2017 06:37:05 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24560a166b63ce533ff6e75ead9a1d193e5b80d5478347196d8af5b3a37e66cb`  
		Last Modified: Wed, 14 Feb 2018 14:17:24 GMT  
		Size: 117.6 KB (117628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7a1036685c8f48dcd925dbeee5443276ceac7f9bb07ec0b34727710461e39a`  
		Last Modified: Thu, 15 Feb 2018 13:05:21 GMT  
		Size: 14.8 MB (14762398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:341ebc71ff83b825b097142aa9f790d2bf2853bff3ad3b71e32ffc299c926aca`  
		Last Modified: Thu, 15 Feb 2018 13:05:14 GMT  
		Size: 1.0 MB (1010356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1d5a42f6bb881c427a968396c8bd97b4651ba6e0d01b1b226684aaa491e004`  
		Last Modified: Thu, 15 Feb 2018 13:36:10 GMT  
		Size: 468.7 KB (468702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f8c1f7393c67d40180cdb97579b9a6dc553ba6dd9cc56996ea37bb6e8bd31e`  
		Last Modified: Thu, 15 Feb 2018 13:36:34 GMT  
		Size: 19.5 MB (19451033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5359ff085283d5e40573af1c1676aea4b27e0070a04e76eca4286b3cd8b9a013`  
		Last Modified: Thu, 15 Feb 2018 13:38:12 GMT  
		Size: 91.2 MB (91174836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a48871cc61bb6c107e172f8f034a4969c41ec8d3c73c89d911c5c69b840db5`  
		Last Modified: Thu, 15 Feb 2018 13:36:27 GMT  
		Size: 16.6 MB (16555795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34fe24378a4c67eeae09382740f70256d5e34e5ac41588876a0f46cee21767dc`  
		Last Modified: Thu, 15 Feb 2018 13:36:10 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; 386

```console
$ docker pull ghost@sha256:1ce92786749e640016de2ab62e331b89c20d8896d376dff65c2301837874c91a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.5 MB (217527034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75fb1239526246d0aa83612d3696f9de2a91f91f664b81ad2da48a741ab4802e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 16:53:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 16:53:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 18:51:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Feb 2018 06:12:11 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Thu, 15 Feb 2018 07:57:43 GMT
ENV NODE_VERSION=6.13.0
# Thu, 15 Feb 2018 07:58:16 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 15 Feb 2018 08:04:13 GMT
ENV YARN_VERSION=1.3.2
# Thu, 15 Feb 2018 08:04:51 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 15 Feb 2018 08:04:59 GMT
CMD ["node"]
# Thu, 15 Feb 2018 11:02:10 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 11:02:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 11:02:23 GMT
ENV NODE_ENV=production
# Thu, 15 Feb 2018 11:02:24 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Thu, 15 Feb 2018 11:02:58 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 15 Feb 2018 11:02:59 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 15 Feb 2018 11:02:59 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 15 Feb 2018 11:02:59 GMT
ENV GHOST_VERSION=1.21.1
# Thu, 15 Feb 2018 11:05:55 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 15 Feb 2018 11:22:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 15 Feb 2018 11:30:51 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 15 Feb 2018 11:39:58 GMT
WORKDIR /var/lib/ghost
# Thu, 15 Feb 2018 11:39:58 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 15 Feb 2018 11:39:59 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 15 Feb 2018 11:47:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 11:47:18 GMT
EXPOSE 2368/tcp
# Thu, 15 Feb 2018 11:47:18 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94aafa6d6f35f82e1fdc93cd4f7f6ab829f6297c8defaaa911dfb2de063bf3d`  
		Last Modified: Tue, 12 Dec 2017 17:27:39 GMT  
		Size: 21.6 MB (21596374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d080d3b5e7c0e87584e0bc0c3c7fb0a6abad953ee94752ff71f7cd32934e6831`  
		Last Modified: Tue, 12 Dec 2017 19:21:31 GMT  
		Size: 4.4 KB (4392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379dc5fa7e32891851fbd2f09acd244ef1937b2ee61cc9d73a6f456c44f4dc5e`  
		Last Modified: Wed, 14 Feb 2018 09:05:31 GMT  
		Size: 117.6 KB (117624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99bb229995039bdc211ed3406eaacbb0a56310f628a8e12b06753b09f6f0fc5`  
		Last Modified: Thu, 15 Feb 2018 09:02:53 GMT  
		Size: 14.3 MB (14295255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834b410c57e839b45b15977ac9c689fab15e53295e88a56c673fbc20c9ef60a0`  
		Last Modified: Thu, 15 Feb 2018 09:02:47 GMT  
		Size: 1.0 MB (1010362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a133b6749437cf55497fe8140336969cca2c90cfed31265ecc16aa0cc81f9d7`  
		Last Modified: Thu, 15 Feb 2018 12:41:44 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a25a21421cb4e4959dceafaf34dfec01c929ed3f35bc022e6c561100ae8be1`  
		Last Modified: Thu, 15 Feb 2018 12:42:19 GMT  
		Size: 19.5 MB (19450167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b02a6371633e3e96736e6d4d3c1b69bdff3adf0a5e3283ea3b8389d4646d4d`  
		Last Modified: Thu, 15 Feb 2018 12:43:04 GMT  
		Size: 91.2 MB (91159466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f893839348276846b0881b309f44d1b4af1dcb307383f1a3a8f1949605a5fde`  
		Last Modified: Thu, 15 Feb 2018 12:41:54 GMT  
		Size: 16.6 MB (16634888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b8d72599f949404bc51839831c72038f0149d0a14699908252c1e760055e18`  
		Last Modified: Thu, 15 Feb 2018 12:41:44 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; ppc64le

```console
$ docker pull ghost@sha256:dfbed7eb1c8ef0d2598772cd42e9ab9113a959678f77643cf62c82968d75fa4c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214735388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d866ebee7e6188d0a13f7998eeb46045e8ce4a120c591ba3b3166bf14b1682f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:52:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:52:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 06:11:54 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Feb 2018 05:23:37 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Wed, 14 Feb 2018 05:38:29 GMT
ENV NODE_VERSION=6.12.3
# Wed, 14 Feb 2018 05:39:32 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 14 Feb 2018 05:39:34 GMT
ENV YARN_VERSION=1.3.2
# Wed, 14 Feb 2018 05:39:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 14 Feb 2018 05:39:44 GMT
CMD ["node"]
# Wed, 14 Feb 2018 06:08:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Feb 2018 06:08:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Feb 2018 06:08:42 GMT
ENV NODE_ENV=production
# Wed, 14 Feb 2018 06:08:43 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Wed, 14 Feb 2018 06:09:17 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 14 Feb 2018 06:09:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 14 Feb 2018 06:09:20 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 14 Feb 2018 06:09:22 GMT
ENV GHOST_VERSION=1.21.1
# Wed, 14 Feb 2018 06:10:30 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 14 Feb 2018 06:10:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 14 Feb 2018 06:13:59 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 14 Feb 2018 06:14:00 GMT
WORKDIR /var/lib/ghost
# Wed, 14 Feb 2018 06:14:02 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 14 Feb 2018 06:14:03 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 14 Feb 2018 06:14:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 06:14:07 GMT
EXPOSE 2368/tcp
# Wed, 14 Feb 2018 06:14:08 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6994e7d2dd732e57cd3bac94b995dab8a2711f30cf738f70bd4730a512f403ca`  
		Last Modified: Tue, 12 Dec 2017 03:53:30 GMT  
		Size: 19.2 MB (19202627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bf85c5e59d6cff0e6275da09c076b0d44a8ee93fbcd23bbf44b20d54b4df33`  
		Last Modified: Fri, 15 Dec 2017 06:17:38 GMT  
		Size: 4.4 KB (4442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2462c2e2b1f7df15b2a864fea8c7086465d7c52eae407ea8dcdc1788a9b0c438`  
		Last Modified: Wed, 14 Feb 2018 05:44:50 GMT  
		Size: 117.7 KB (117652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d281f3e1f168da87f18564a53419bb4ba5207e0844dac746df4bf71d1bec4b9`  
		Last Modified: Wed, 14 Feb 2018 05:50:14 GMT  
		Size: 14.5 MB (14491647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:113d85a612c7b302a8ef17f26baed9bc11a81a7d05ab7d1a646de02e2c911888`  
		Last Modified: Wed, 14 Feb 2018 05:50:10 GMT  
		Size: 1.0 MB (1010380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74952e532fc8f1805cfac9e83d1710326bffe6a6f6e71d78801a9ecdc9aaa8ef`  
		Last Modified: Wed, 14 Feb 2018 06:18:59 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8243d7c30fbf474e0360a1656d7826ea610cb4f304e8d46f4563472b1fd8807`  
		Last Modified: Wed, 14 Feb 2018 06:18:59 GMT  
		Size: 19.5 MB (19450527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5963b7c7872e8613fb6dabcdb394af503ec068d5f3ae420e990d87c7125c5a`  
		Last Modified: Wed, 14 Feb 2018 06:19:16 GMT  
		Size: 91.2 MB (91153550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79af01e2888776c19b50fcc4cf4dfb1af812dd2a22552b90b487c7a445feab70`  
		Last Modified: Wed, 14 Feb 2018 06:18:56 GMT  
		Size: 17.0 MB (17025147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616788d93f9e5e67abf3921147a352837463527a2064c59d962cd16522a155b4`  
		Last Modified: Wed, 14 Feb 2018 06:18:52 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; s390x

```console
$ docker pull ghost@sha256:8ff69d39f666ee181963d3caa1cf3d2223d5bf06ba58398c316479c5849ed397
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.5 MB (216474205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:414bd6d27deed0b9ffadcde1a07117301ae2ee1b6eb9f2b3a452df4b64f8d763`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 15 Feb 2018 06:22:37 GMT
ADD file:aa3302b8380a38a7e51533d16a139a3cc5604bde2e860a555777b2f2d1fc1fec in / 
# Thu, 15 Feb 2018 06:22:37 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:50:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:50:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 09:45:11 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 15 Feb 2018 09:49:17 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Thu, 15 Feb 2018 10:49:38 GMT
ENV NODE_VERSION=6.13.0
# Thu, 15 Feb 2018 10:49:51 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 15 Feb 2018 10:49:51 GMT
ENV YARN_VERSION=1.3.2
# Thu, 15 Feb 2018 10:49:53 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 15 Feb 2018 10:49:53 GMT
CMD ["node"]
# Thu, 15 Feb 2018 13:10:46 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 13:10:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 13:10:50 GMT
ENV NODE_ENV=production
# Thu, 15 Feb 2018 13:10:50 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Thu, 15 Feb 2018 13:11:12 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 15 Feb 2018 13:11:12 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 15 Feb 2018 13:11:12 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 15 Feb 2018 13:11:12 GMT
ENV GHOST_VERSION=1.21.1
# Thu, 15 Feb 2018 13:11:37 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Thu, 15 Feb 2018 13:11:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Thu, 15 Feb 2018 13:13:00 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Thu, 15 Feb 2018 13:13:00 GMT
WORKDIR /var/lib/ghost
# Thu, 15 Feb 2018 13:13:00 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 15 Feb 2018 13:13:00 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 15 Feb 2018 13:13:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 13:13:00 GMT
EXPOSE 2368/tcp
# Thu, 15 Feb 2018 13:13:01 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:9c41e82a505c62c52ff8e8d0b157b438dad9642bc97d4389c8156b3dd4ae3b9e`  
		Last Modified: Thu, 15 Feb 2018 00:56:06 GMT  
		Size: 52.8 MB (52794833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efefd31a422fb0b403b87e38d05eaff8c9155ca71c8861f706f26301e8a74ce8`  
		Last Modified: Thu, 15 Feb 2018 06:58:44 GMT  
		Size: 19.5 MB (19472074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6083eddabf78dfd3a7d6a440d59fb267cffad8f780c5c865773b6a3fe7d57828`  
		Last Modified: Thu, 15 Feb 2018 10:50:57 GMT  
		Size: 4.4 KB (4409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4580e8335ca2949a7c46f056f8ac1e30432f8ed0b6796da80c01d7a01159bb`  
		Last Modified: Thu, 15 Feb 2018 10:50:57 GMT  
		Size: 117.6 KB (117627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760b8cc5d41563baeb59c771eda9a4fc3fa2eec54929fbbafb869525cbff5f1e`  
		Last Modified: Thu, 15 Feb 2018 10:53:30 GMT  
		Size: 14.9 MB (14912339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6f884ed9243f6bd17590e3f827e1a2600fbeaf2a350e1c9e7ce6a6213e45b3`  
		Last Modified: Thu, 15 Feb 2018 10:53:27 GMT  
		Size: 1.0 MB (1010352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f136756db31c261173d4e895239110f8a9f85293aca936323058cd73a696539`  
		Last Modified: Thu, 15 Feb 2018 13:15:14 GMT  
		Size: 486.8 KB (486829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05020d04bede2d688c9b334465c09f050db72d0f54b15ed9e61e359fe08957e1`  
		Last Modified: Thu, 15 Feb 2018 13:15:27 GMT  
		Size: 19.5 MB (19450180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08ebed6af056c193e2399bf6644044f2f5a7a61b9e6877491d87f38b622bac6`  
		Last Modified: Thu, 15 Feb 2018 13:15:46 GMT  
		Size: 91.2 MB (91159957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e816c4b68ec26df9f7b1a30181872eba97e0d52f5ee62679285217dac27704f4`  
		Last Modified: Thu, 15 Feb 2018 13:15:27 GMT  
		Size: 17.1 MB (17065037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a678e3e44aeb5de33884b7e9a52f1d3a7b9d3deff241f8a741b40d6d0dc933cc`  
		Last Modified: Thu, 15 Feb 2018 13:15:12 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

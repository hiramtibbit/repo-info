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
$ docker pull ghost@sha256:0684ebd12298ee4b80c01bff7e28a0e16fd681d1341054f7dac1ac6270c62493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `ghost:0` - linux; amd64

```console
$ docker pull ghost@sha256:d7b8690a311e05a58cc19fbec19ce337c1a7843805c749c6737e55179b8b2bb1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90257854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd5a3294ccafdf2d06dc3ef8a6e407a52d2a71eccb62918647872e9c507a0cc2`
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
# Wed, 28 Nov 2018 12:33:37 GMT
ENV NODE_VERSION=6.15.0
# Wed, 28 Nov 2018 12:34:25 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 12:34:25 GMT
ENV YARN_VERSION=1.6.0
# Wed, 28 Nov 2018 12:34:27 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 12:34:27 GMT
CMD ["node"]
# Wed, 28 Nov 2018 14:42:21 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 28 Nov 2018 14:42:21 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Nov 2018 14:42:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Nov 2018 14:42:22 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 28 Nov 2018 14:42:23 GMT
WORKDIR /usr/src/ghost
# Wed, 28 Nov 2018 14:42:23 GMT
ENV GHOST_VERSION=0.11.14
# Wed, 28 Nov 2018 14:43:43 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 28 Nov 2018 14:43:44 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 28 Nov 2018 14:43:44 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 28 Nov 2018 14:43:45 GMT
VOLUME [/var/lib/ghost]
# Wed, 28 Nov 2018 14:43:45 GMT
COPY file:4bf52c5f3b7a65d22c9bcb7270767a1d61445c40c5d0b235d52a143a029740fc in /usr/local/bin/ 
# Wed, 28 Nov 2018 14:43:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 28 Nov 2018 14:43:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 14:43:46 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 14:43:46 GMT
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
	-	`sha256:a98cda22ab6b3c016d6adc25b43ac2cec739040bd35cf14e7f7dad3076217d19`  
		Last Modified: Wed, 28 Nov 2018 14:03:28 GMT  
		Size: 31.3 MB (31306971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d46c5ecdb12833e6e6ad85015e77ed9691ac45060183b4ead6d1ed44ac04b26`  
		Last Modified: Wed, 28 Nov 2018 14:03:21 GMT  
		Size: 1.1 MB (1084586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64aff4973d72f4d320b2a9f5f580f453ae930e619b3633633e3ad4205a00d20e`  
		Last Modified: Wed, 28 Nov 2018 14:51:32 GMT  
		Size: 4.5 KB (4455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e91855dc357908c9c3442428d305fb6e7be6e421380ff045976c055811f5553c`  
		Last Modified: Wed, 28 Nov 2018 14:51:32 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd65772576b24e325a6af7b874df169cae6d08228c68014c05d35fee7ea948d0`  
		Last Modified: Wed, 28 Nov 2018 14:51:31 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ad6e657011447a678a2cbb38bcf8caba03039da9768a7b006f6a7e545d555a`  
		Last Modified: Wed, 28 Nov 2018 14:51:43 GMT  
		Size: 27.1 MB (27088032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e11154cdad66192895892dbbd8e13cb566f2f0b2fd196118d1d2e3854d18738`  
		Last Modified: Wed, 28 Nov 2018 14:51:31 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3608eb85ec768fc35d3dfde4ff5ee06b48bc408fb5308d328bec75c51f92af9a`  
		Last Modified: Wed, 28 Nov 2018 14:51:31 GMT  
		Size: 639.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d8e3003432ee1a9fd47780c86869689d35d38df3390c57c734ede9cc4b6a34`  
		Last Modified: Wed, 28 Nov 2018 14:51:31 GMT  
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
$ docker pull ghost@sha256:89247478139f2982bc3cc8fd5a055e3278ef0ec73fdb15b778648787d3f35f12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.4 MB (98427484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9057dbc2fef71debe89ea7c50a249ee507f453896036af85b664ddbf7046dfc`
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
# Tue, 27 Nov 2018 14:22:28 GMT
ENV NODE_VERSION=6.14.4
# Tue, 27 Nov 2018 14:23:22 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 27 Nov 2018 14:23:22 GMT
ENV YARN_VERSION=1.6.0
# Tue, 27 Nov 2018 14:23:23 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 27 Nov 2018 14:23:24 GMT
CMD ["node"]
# Tue, 27 Nov 2018 15:54:31 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 27 Nov 2018 15:54:31 GMT
ENV GOSU_VERSION=1.10
# Tue, 27 Nov 2018 15:54:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 27 Nov 2018 15:54:33 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 27 Nov 2018 15:54:33 GMT
WORKDIR /usr/src/ghost
# Tue, 27 Nov 2018 15:54:33 GMT
ENV GHOST_VERSION=0.11.14
# Tue, 27 Nov 2018 15:57:01 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 27 Nov 2018 15:57:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 27 Nov 2018 15:57:02 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 27 Nov 2018 15:57:02 GMT
VOLUME [/var/lib/ghost]
# Tue, 27 Nov 2018 15:57:03 GMT
COPY file:4bf52c5f3b7a65d22c9bcb7270767a1d61445c40c5d0b235d52a143a029740fc in /usr/local/bin/ 
# Tue, 27 Nov 2018 15:57:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 27 Nov 2018 15:57:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 15:57:04 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 15:57:04 GMT
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
	-	`sha256:49992ff699e7e336a50fdd83ed6a27c747711c872101192afe05a965394e5123`  
		Last Modified: Tue, 27 Nov 2018 15:20:10 GMT  
		Size: 33.2 MB (33160474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890ec63c9ff652129492b2cfb804a2aa62361a9dcbe5d7c4f75238e4e0bf1b24`  
		Last Modified: Tue, 27 Nov 2018 15:20:02 GMT  
		Size: 1.1 MB (1084582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755d462a71f331d26a7fe2493431997c7173310fef8f4f922b8428ac6a97507b`  
		Last Modified: Tue, 27 Nov 2018 16:00:35 GMT  
		Size: 4.4 KB (4444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81c2c0a90f84e1a768e4b468b941fab244953c728669ac0ee44bb78585aed2d`  
		Last Modified: Tue, 27 Nov 2018 16:00:35 GMT  
		Size: 480.6 KB (480564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665e36264b1d45dc24d6211ed8991d8d3ab4f0621da9865524f00460f07f26ac`  
		Last Modified: Tue, 27 Nov 2018 16:00:34 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53d9d4328b219f03e373ada817d68bf9f48ed2574c9df032eca36a96c275bee8`  
		Last Modified: Tue, 27 Nov 2018 16:00:45 GMT  
		Size: 33.3 MB (33271552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24afd2304d722bf57f8be4b74217c9dabee92059bee3828a092580164387867e`  
		Last Modified: Tue, 27 Nov 2018 16:00:34 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a37afbe811a62e26cc9f6e0553df079621ec50df60d30b59fb7569b601f59c`  
		Last Modified: Tue, 27 Nov 2018 16:00:34 GMT  
		Size: 637.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379c66037e15708c78b498dd6ac9fe763b2b8103153579dc235d4589a497c93a`  
		Last Modified: Tue, 27 Nov 2018 16:00:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11`

```console
$ docker pull ghost@sha256:0684ebd12298ee4b80c01bff7e28a0e16fd681d1341054f7dac1ac6270c62493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `ghost:0.11` - linux; amd64

```console
$ docker pull ghost@sha256:d7b8690a311e05a58cc19fbec19ce337c1a7843805c749c6737e55179b8b2bb1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90257854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd5a3294ccafdf2d06dc3ef8a6e407a52d2a71eccb62918647872e9c507a0cc2`
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
# Wed, 28 Nov 2018 12:33:37 GMT
ENV NODE_VERSION=6.15.0
# Wed, 28 Nov 2018 12:34:25 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 12:34:25 GMT
ENV YARN_VERSION=1.6.0
# Wed, 28 Nov 2018 12:34:27 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 12:34:27 GMT
CMD ["node"]
# Wed, 28 Nov 2018 14:42:21 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 28 Nov 2018 14:42:21 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Nov 2018 14:42:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Nov 2018 14:42:22 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 28 Nov 2018 14:42:23 GMT
WORKDIR /usr/src/ghost
# Wed, 28 Nov 2018 14:42:23 GMT
ENV GHOST_VERSION=0.11.14
# Wed, 28 Nov 2018 14:43:43 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 28 Nov 2018 14:43:44 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 28 Nov 2018 14:43:44 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 28 Nov 2018 14:43:45 GMT
VOLUME [/var/lib/ghost]
# Wed, 28 Nov 2018 14:43:45 GMT
COPY file:4bf52c5f3b7a65d22c9bcb7270767a1d61445c40c5d0b235d52a143a029740fc in /usr/local/bin/ 
# Wed, 28 Nov 2018 14:43:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 28 Nov 2018 14:43:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 14:43:46 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 14:43:46 GMT
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
	-	`sha256:a98cda22ab6b3c016d6adc25b43ac2cec739040bd35cf14e7f7dad3076217d19`  
		Last Modified: Wed, 28 Nov 2018 14:03:28 GMT  
		Size: 31.3 MB (31306971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d46c5ecdb12833e6e6ad85015e77ed9691ac45060183b4ead6d1ed44ac04b26`  
		Last Modified: Wed, 28 Nov 2018 14:03:21 GMT  
		Size: 1.1 MB (1084586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64aff4973d72f4d320b2a9f5f580f453ae930e619b3633633e3ad4205a00d20e`  
		Last Modified: Wed, 28 Nov 2018 14:51:32 GMT  
		Size: 4.5 KB (4455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e91855dc357908c9c3442428d305fb6e7be6e421380ff045976c055811f5553c`  
		Last Modified: Wed, 28 Nov 2018 14:51:32 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd65772576b24e325a6af7b874df169cae6d08228c68014c05d35fee7ea948d0`  
		Last Modified: Wed, 28 Nov 2018 14:51:31 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ad6e657011447a678a2cbb38bcf8caba03039da9768a7b006f6a7e545d555a`  
		Last Modified: Wed, 28 Nov 2018 14:51:43 GMT  
		Size: 27.1 MB (27088032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e11154cdad66192895892dbbd8e13cb566f2f0b2fd196118d1d2e3854d18738`  
		Last Modified: Wed, 28 Nov 2018 14:51:31 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3608eb85ec768fc35d3dfde4ff5ee06b48bc408fb5308d328bec75c51f92af9a`  
		Last Modified: Wed, 28 Nov 2018 14:51:31 GMT  
		Size: 639.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d8e3003432ee1a9fd47780c86869689d35d38df3390c57c734ede9cc4b6a34`  
		Last Modified: Wed, 28 Nov 2018 14:51:31 GMT  
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
$ docker pull ghost@sha256:89247478139f2982bc3cc8fd5a055e3278ef0ec73fdb15b778648787d3f35f12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.4 MB (98427484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9057dbc2fef71debe89ea7c50a249ee507f453896036af85b664ddbf7046dfc`
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
# Tue, 27 Nov 2018 14:22:28 GMT
ENV NODE_VERSION=6.14.4
# Tue, 27 Nov 2018 14:23:22 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 27 Nov 2018 14:23:22 GMT
ENV YARN_VERSION=1.6.0
# Tue, 27 Nov 2018 14:23:23 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 27 Nov 2018 14:23:24 GMT
CMD ["node"]
# Tue, 27 Nov 2018 15:54:31 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 27 Nov 2018 15:54:31 GMT
ENV GOSU_VERSION=1.10
# Tue, 27 Nov 2018 15:54:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 27 Nov 2018 15:54:33 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 27 Nov 2018 15:54:33 GMT
WORKDIR /usr/src/ghost
# Tue, 27 Nov 2018 15:54:33 GMT
ENV GHOST_VERSION=0.11.14
# Tue, 27 Nov 2018 15:57:01 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 27 Nov 2018 15:57:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 27 Nov 2018 15:57:02 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 27 Nov 2018 15:57:02 GMT
VOLUME [/var/lib/ghost]
# Tue, 27 Nov 2018 15:57:03 GMT
COPY file:4bf52c5f3b7a65d22c9bcb7270767a1d61445c40c5d0b235d52a143a029740fc in /usr/local/bin/ 
# Tue, 27 Nov 2018 15:57:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 27 Nov 2018 15:57:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 15:57:04 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 15:57:04 GMT
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
	-	`sha256:49992ff699e7e336a50fdd83ed6a27c747711c872101192afe05a965394e5123`  
		Last Modified: Tue, 27 Nov 2018 15:20:10 GMT  
		Size: 33.2 MB (33160474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890ec63c9ff652129492b2cfb804a2aa62361a9dcbe5d7c4f75238e4e0bf1b24`  
		Last Modified: Tue, 27 Nov 2018 15:20:02 GMT  
		Size: 1.1 MB (1084582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755d462a71f331d26a7fe2493431997c7173310fef8f4f922b8428ac6a97507b`  
		Last Modified: Tue, 27 Nov 2018 16:00:35 GMT  
		Size: 4.4 KB (4444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81c2c0a90f84e1a768e4b468b941fab244953c728669ac0ee44bb78585aed2d`  
		Last Modified: Tue, 27 Nov 2018 16:00:35 GMT  
		Size: 480.6 KB (480564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665e36264b1d45dc24d6211ed8991d8d3ab4f0621da9865524f00460f07f26ac`  
		Last Modified: Tue, 27 Nov 2018 16:00:34 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53d9d4328b219f03e373ada817d68bf9f48ed2574c9df032eca36a96c275bee8`  
		Last Modified: Tue, 27 Nov 2018 16:00:45 GMT  
		Size: 33.3 MB (33271552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24afd2304d722bf57f8be4b74217c9dabee92059bee3828a092580164387867e`  
		Last Modified: Tue, 27 Nov 2018 16:00:34 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a37afbe811a62e26cc9f6e0553df079621ec50df60d30b59fb7569b601f59c`  
		Last Modified: Tue, 27 Nov 2018 16:00:34 GMT  
		Size: 637.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379c66037e15708c78b498dd6ac9fe763b2b8103153579dc235d4589a497c93a`  
		Last Modified: Tue, 27 Nov 2018 16:00:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.14`

```console
$ docker pull ghost@sha256:0684ebd12298ee4b80c01bff7e28a0e16fd681d1341054f7dac1ac6270c62493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `ghost:0.11.14` - linux; amd64

```console
$ docker pull ghost@sha256:d7b8690a311e05a58cc19fbec19ce337c1a7843805c749c6737e55179b8b2bb1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90257854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd5a3294ccafdf2d06dc3ef8a6e407a52d2a71eccb62918647872e9c507a0cc2`
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
# Wed, 28 Nov 2018 12:33:37 GMT
ENV NODE_VERSION=6.15.0
# Wed, 28 Nov 2018 12:34:25 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 12:34:25 GMT
ENV YARN_VERSION=1.6.0
# Wed, 28 Nov 2018 12:34:27 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 12:34:27 GMT
CMD ["node"]
# Wed, 28 Nov 2018 14:42:21 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 28 Nov 2018 14:42:21 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Nov 2018 14:42:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Nov 2018 14:42:22 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 28 Nov 2018 14:42:23 GMT
WORKDIR /usr/src/ghost
# Wed, 28 Nov 2018 14:42:23 GMT
ENV GHOST_VERSION=0.11.14
# Wed, 28 Nov 2018 14:43:43 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 28 Nov 2018 14:43:44 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 28 Nov 2018 14:43:44 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 28 Nov 2018 14:43:45 GMT
VOLUME [/var/lib/ghost]
# Wed, 28 Nov 2018 14:43:45 GMT
COPY file:4bf52c5f3b7a65d22c9bcb7270767a1d61445c40c5d0b235d52a143a029740fc in /usr/local/bin/ 
# Wed, 28 Nov 2018 14:43:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 28 Nov 2018 14:43:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 14:43:46 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 14:43:46 GMT
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
	-	`sha256:a98cda22ab6b3c016d6adc25b43ac2cec739040bd35cf14e7f7dad3076217d19`  
		Last Modified: Wed, 28 Nov 2018 14:03:28 GMT  
		Size: 31.3 MB (31306971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d46c5ecdb12833e6e6ad85015e77ed9691ac45060183b4ead6d1ed44ac04b26`  
		Last Modified: Wed, 28 Nov 2018 14:03:21 GMT  
		Size: 1.1 MB (1084586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64aff4973d72f4d320b2a9f5f580f453ae930e619b3633633e3ad4205a00d20e`  
		Last Modified: Wed, 28 Nov 2018 14:51:32 GMT  
		Size: 4.5 KB (4455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e91855dc357908c9c3442428d305fb6e7be6e421380ff045976c055811f5553c`  
		Last Modified: Wed, 28 Nov 2018 14:51:32 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd65772576b24e325a6af7b874df169cae6d08228c68014c05d35fee7ea948d0`  
		Last Modified: Wed, 28 Nov 2018 14:51:31 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ad6e657011447a678a2cbb38bcf8caba03039da9768a7b006f6a7e545d555a`  
		Last Modified: Wed, 28 Nov 2018 14:51:43 GMT  
		Size: 27.1 MB (27088032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e11154cdad66192895892dbbd8e13cb566f2f0b2fd196118d1d2e3854d18738`  
		Last Modified: Wed, 28 Nov 2018 14:51:31 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3608eb85ec768fc35d3dfde4ff5ee06b48bc408fb5308d328bec75c51f92af9a`  
		Last Modified: Wed, 28 Nov 2018 14:51:31 GMT  
		Size: 639.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d8e3003432ee1a9fd47780c86869689d35d38df3390c57c734ede9cc4b6a34`  
		Last Modified: Wed, 28 Nov 2018 14:51:31 GMT  
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
$ docker pull ghost@sha256:89247478139f2982bc3cc8fd5a055e3278ef0ec73fdb15b778648787d3f35f12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.4 MB (98427484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9057dbc2fef71debe89ea7c50a249ee507f453896036af85b664ddbf7046dfc`
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
# Tue, 27 Nov 2018 14:22:28 GMT
ENV NODE_VERSION=6.14.4
# Tue, 27 Nov 2018 14:23:22 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 27 Nov 2018 14:23:22 GMT
ENV YARN_VERSION=1.6.0
# Tue, 27 Nov 2018 14:23:23 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 27 Nov 2018 14:23:24 GMT
CMD ["node"]
# Tue, 27 Nov 2018 15:54:31 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 27 Nov 2018 15:54:31 GMT
ENV GOSU_VERSION=1.10
# Tue, 27 Nov 2018 15:54:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 27 Nov 2018 15:54:33 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 27 Nov 2018 15:54:33 GMT
WORKDIR /usr/src/ghost
# Tue, 27 Nov 2018 15:54:33 GMT
ENV GHOST_VERSION=0.11.14
# Tue, 27 Nov 2018 15:57:01 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 27 Nov 2018 15:57:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 27 Nov 2018 15:57:02 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 27 Nov 2018 15:57:02 GMT
VOLUME [/var/lib/ghost]
# Tue, 27 Nov 2018 15:57:03 GMT
COPY file:4bf52c5f3b7a65d22c9bcb7270767a1d61445c40c5d0b235d52a143a029740fc in /usr/local/bin/ 
# Tue, 27 Nov 2018 15:57:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 27 Nov 2018 15:57:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 15:57:04 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 15:57:04 GMT
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
	-	`sha256:49992ff699e7e336a50fdd83ed6a27c747711c872101192afe05a965394e5123`  
		Last Modified: Tue, 27 Nov 2018 15:20:10 GMT  
		Size: 33.2 MB (33160474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890ec63c9ff652129492b2cfb804a2aa62361a9dcbe5d7c4f75238e4e0bf1b24`  
		Last Modified: Tue, 27 Nov 2018 15:20:02 GMT  
		Size: 1.1 MB (1084582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755d462a71f331d26a7fe2493431997c7173310fef8f4f922b8428ac6a97507b`  
		Last Modified: Tue, 27 Nov 2018 16:00:35 GMT  
		Size: 4.4 KB (4444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81c2c0a90f84e1a768e4b468b941fab244953c728669ac0ee44bb78585aed2d`  
		Last Modified: Tue, 27 Nov 2018 16:00:35 GMT  
		Size: 480.6 KB (480564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665e36264b1d45dc24d6211ed8991d8d3ab4f0621da9865524f00460f07f26ac`  
		Last Modified: Tue, 27 Nov 2018 16:00:34 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53d9d4328b219f03e373ada817d68bf9f48ed2574c9df032eca36a96c275bee8`  
		Last Modified: Tue, 27 Nov 2018 16:00:45 GMT  
		Size: 33.3 MB (33271552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24afd2304d722bf57f8be4b74217c9dabee92059bee3828a092580164387867e`  
		Last Modified: Tue, 27 Nov 2018 16:00:34 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a37afbe811a62e26cc9f6e0553df079621ec50df60d30b59fb7569b601f59c`  
		Last Modified: Tue, 27 Nov 2018 16:00:34 GMT  
		Size: 637.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379c66037e15708c78b498dd6ac9fe763b2b8103153579dc235d4589a497c93a`  
		Last Modified: Tue, 27 Nov 2018 16:00:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.14-alpine`

```console
$ docker pull ghost@sha256:760e1d0c88cae904e8915ee68402f56e5ff0af0c21a568f104a701f8751c0275
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11.14-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:6291c09f993471e690f040af0546bf53a6b29226ced1a4d87476f125ea2e7859
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47224102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e3f8892c32e67f2f0dc57e55015ba613511d8092332899e62c324a0f156ce64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 11 Sep 2018 22:20:45 GMT
ADD file:4b806a0c031f19a4609ebde02464b2139efebfdf9f5d1bba13cf1c316938530d in / 
# Tue, 11 Sep 2018 22:20:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 12:11:15 GMT
ENV NODE_VERSION=6.15.0
# Wed, 28 Nov 2018 12:32:05 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 28 Nov 2018 12:32:06 GMT
ENV YARN_VERSION=1.6.0
# Wed, 28 Nov 2018 12:32:11 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 28 Nov 2018 12:32:11 GMT
CMD ["node"]
# Wed, 28 Nov 2018 14:44:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Nov 2018 14:44:20 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 28 Nov 2018 14:44:20 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 28 Nov 2018 14:44:20 GMT
WORKDIR /usr/src/ghost
# Wed, 28 Nov 2018 14:44:21 GMT
ENV GHOST_VERSION=0.11.14
# Wed, 28 Nov 2018 14:45:06 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 28 Nov 2018 14:45:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 28 Nov 2018 14:45:08 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 28 Nov 2018 14:45:08 GMT
VOLUME [/var/lib/ghost]
# Wed, 28 Nov 2018 14:45:08 GMT
COPY file:89e7330b48cbb0bdce59b338bf077606d284ce7048d42db76e653c91ee52a54e in /usr/local/bin/ 
# Wed, 28 Nov 2018 14:45:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 14:45:09 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 14:45:09 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:d6a5679aa3cfc52503fac8e2345790783537564df5af43355ec662d7703aacbf`  
		Last Modified: Tue, 11 Sep 2018 22:22:09 GMT  
		Size: 2.4 MB (2387846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edea020bf427c2da0dd8665b7611315e850c96fd03eb2c51b8e57d6fe7ea24ea`  
		Last Modified: Wed, 28 Nov 2018 14:01:02 GMT  
		Size: 15.5 MB (15534285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64388a1d080446084347f73ae6feaac8d53c4b8bcd45b56c6febc5b397277095`  
		Last Modified: Wed, 28 Nov 2018 14:00:58 GMT  
		Size: 1.1 MB (1091471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26d595ebae02cfe9e6d052eab5e867a21f8217e368d46280a25185d695e487e`  
		Last Modified: Wed, 28 Nov 2018 14:52:30 GMT  
		Size: 8.4 KB (8361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f2ee4c1477fafe7ca17087ca2348c0d13cd68ba5d3c2a11e0bc3178ecf958b`  
		Last Modified: Wed, 28 Nov 2018 14:52:30 GMT  
		Size: 1.4 MB (1360694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cbcee409a3868fdcf32750474bffc9ba6f5c7a3c79b18e4d814990defba4133`  
		Last Modified: Wed, 28 Nov 2018 14:52:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d471c017e30e3635f18d8bf1b5ca3f8f012d34edc62ff2ad525aeade8a87e`  
		Last Modified: Wed, 28 Nov 2018 14:52:41 GMT  
		Size: 26.8 MB (26840470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2543b861dfb50712b1f8450ba9ce149e48425c59e1389d16853957d5a244aa2a`  
		Last Modified: Wed, 28 Nov 2018 14:52:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64c9b148722ce0df67b5b3ee43720035ac4b45092ed3efa14d4118cd6c33958`  
		Last Modified: Wed, 28 Nov 2018 14:52:30 GMT  
		Size: 622.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11-alpine`

```console
$ docker pull ghost@sha256:760e1d0c88cae904e8915ee68402f56e5ff0af0c21a568f104a701f8751c0275
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:6291c09f993471e690f040af0546bf53a6b29226ced1a4d87476f125ea2e7859
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47224102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e3f8892c32e67f2f0dc57e55015ba613511d8092332899e62c324a0f156ce64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 11 Sep 2018 22:20:45 GMT
ADD file:4b806a0c031f19a4609ebde02464b2139efebfdf9f5d1bba13cf1c316938530d in / 
# Tue, 11 Sep 2018 22:20:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 12:11:15 GMT
ENV NODE_VERSION=6.15.0
# Wed, 28 Nov 2018 12:32:05 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 28 Nov 2018 12:32:06 GMT
ENV YARN_VERSION=1.6.0
# Wed, 28 Nov 2018 12:32:11 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 28 Nov 2018 12:32:11 GMT
CMD ["node"]
# Wed, 28 Nov 2018 14:44:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Nov 2018 14:44:20 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 28 Nov 2018 14:44:20 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 28 Nov 2018 14:44:20 GMT
WORKDIR /usr/src/ghost
# Wed, 28 Nov 2018 14:44:21 GMT
ENV GHOST_VERSION=0.11.14
# Wed, 28 Nov 2018 14:45:06 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 28 Nov 2018 14:45:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 28 Nov 2018 14:45:08 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 28 Nov 2018 14:45:08 GMT
VOLUME [/var/lib/ghost]
# Wed, 28 Nov 2018 14:45:08 GMT
COPY file:89e7330b48cbb0bdce59b338bf077606d284ce7048d42db76e653c91ee52a54e in /usr/local/bin/ 
# Wed, 28 Nov 2018 14:45:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 14:45:09 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 14:45:09 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:d6a5679aa3cfc52503fac8e2345790783537564df5af43355ec662d7703aacbf`  
		Last Modified: Tue, 11 Sep 2018 22:22:09 GMT  
		Size: 2.4 MB (2387846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edea020bf427c2da0dd8665b7611315e850c96fd03eb2c51b8e57d6fe7ea24ea`  
		Last Modified: Wed, 28 Nov 2018 14:01:02 GMT  
		Size: 15.5 MB (15534285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64388a1d080446084347f73ae6feaac8d53c4b8bcd45b56c6febc5b397277095`  
		Last Modified: Wed, 28 Nov 2018 14:00:58 GMT  
		Size: 1.1 MB (1091471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26d595ebae02cfe9e6d052eab5e867a21f8217e368d46280a25185d695e487e`  
		Last Modified: Wed, 28 Nov 2018 14:52:30 GMT  
		Size: 8.4 KB (8361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f2ee4c1477fafe7ca17087ca2348c0d13cd68ba5d3c2a11e0bc3178ecf958b`  
		Last Modified: Wed, 28 Nov 2018 14:52:30 GMT  
		Size: 1.4 MB (1360694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cbcee409a3868fdcf32750474bffc9ba6f5c7a3c79b18e4d814990defba4133`  
		Last Modified: Wed, 28 Nov 2018 14:52:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d471c017e30e3635f18d8bf1b5ca3f8f012d34edc62ff2ad525aeade8a87e`  
		Last Modified: Wed, 28 Nov 2018 14:52:41 GMT  
		Size: 26.8 MB (26840470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2543b861dfb50712b1f8450ba9ce149e48425c59e1389d16853957d5a244aa2a`  
		Last Modified: Wed, 28 Nov 2018 14:52:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64c9b148722ce0df67b5b3ee43720035ac4b45092ed3efa14d4118cd6c33958`  
		Last Modified: Wed, 28 Nov 2018 14:52:30 GMT  
		Size: 622.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:760e1d0c88cae904e8915ee68402f56e5ff0af0c21a568f104a701f8751c0275
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:6291c09f993471e690f040af0546bf53a6b29226ced1a4d87476f125ea2e7859
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47224102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e3f8892c32e67f2f0dc57e55015ba613511d8092332899e62c324a0f156ce64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 11 Sep 2018 22:20:45 GMT
ADD file:4b806a0c031f19a4609ebde02464b2139efebfdf9f5d1bba13cf1c316938530d in / 
# Tue, 11 Sep 2018 22:20:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 12:11:15 GMT
ENV NODE_VERSION=6.15.0
# Wed, 28 Nov 2018 12:32:05 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 28 Nov 2018 12:32:06 GMT
ENV YARN_VERSION=1.6.0
# Wed, 28 Nov 2018 12:32:11 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 28 Nov 2018 12:32:11 GMT
CMD ["node"]
# Wed, 28 Nov 2018 14:44:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Nov 2018 14:44:20 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 28 Nov 2018 14:44:20 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 28 Nov 2018 14:44:20 GMT
WORKDIR /usr/src/ghost
# Wed, 28 Nov 2018 14:44:21 GMT
ENV GHOST_VERSION=0.11.14
# Wed, 28 Nov 2018 14:45:06 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 28 Nov 2018 14:45:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 28 Nov 2018 14:45:08 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 28 Nov 2018 14:45:08 GMT
VOLUME [/var/lib/ghost]
# Wed, 28 Nov 2018 14:45:08 GMT
COPY file:89e7330b48cbb0bdce59b338bf077606d284ce7048d42db76e653c91ee52a54e in /usr/local/bin/ 
# Wed, 28 Nov 2018 14:45:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 14:45:09 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 14:45:09 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:d6a5679aa3cfc52503fac8e2345790783537564df5af43355ec662d7703aacbf`  
		Last Modified: Tue, 11 Sep 2018 22:22:09 GMT  
		Size: 2.4 MB (2387846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edea020bf427c2da0dd8665b7611315e850c96fd03eb2c51b8e57d6fe7ea24ea`  
		Last Modified: Wed, 28 Nov 2018 14:01:02 GMT  
		Size: 15.5 MB (15534285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64388a1d080446084347f73ae6feaac8d53c4b8bcd45b56c6febc5b397277095`  
		Last Modified: Wed, 28 Nov 2018 14:00:58 GMT  
		Size: 1.1 MB (1091471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26d595ebae02cfe9e6d052eab5e867a21f8217e368d46280a25185d695e487e`  
		Last Modified: Wed, 28 Nov 2018 14:52:30 GMT  
		Size: 8.4 KB (8361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f2ee4c1477fafe7ca17087ca2348c0d13cd68ba5d3c2a11e0bc3178ecf958b`  
		Last Modified: Wed, 28 Nov 2018 14:52:30 GMT  
		Size: 1.4 MB (1360694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cbcee409a3868fdcf32750474bffc9ba6f5c7a3c79b18e4d814990defba4133`  
		Last Modified: Wed, 28 Nov 2018 14:52:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d471c017e30e3635f18d8bf1b5ca3f8f012d34edc62ff2ad525aeade8a87e`  
		Last Modified: Wed, 28 Nov 2018 14:52:41 GMT  
		Size: 26.8 MB (26840470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2543b861dfb50712b1f8450ba9ce149e48425c59e1389d16853957d5a244aa2a`  
		Last Modified: Wed, 28 Nov 2018 14:52:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64c9b148722ce0df67b5b3ee43720035ac4b45092ed3efa14d4118cd6c33958`  
		Last Modified: Wed, 28 Nov 2018 14:52:30 GMT  
		Size: 622.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1`

```console
$ docker pull ghost@sha256:64450e0b947cf2ea42b53f834128469619cd075c95577f9f41a5a1ec934c280d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `ghost:1` - linux; amd64

```console
$ docker pull ghost@sha256:583752ce24f316ed7497027d07c961d9413682e409fa0a673771d03201596d0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.2 MB (274217105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d8bd5ed2fe12bf18264be7a3c4ce828ac446310ce594cf46766e200b2f1b65`
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
# Wed, 28 Nov 2018 12:09:38 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 12:09:39 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 12:09:43 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 12:09:43 GMT
CMD ["node"]
# Wed, 28 Nov 2018 14:36:01 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Nov 2018 14:36:04 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Nov 2018 14:36:04 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 14:36:05 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 14:36:26 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 14:36:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 14:36:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 28 Nov 2018 14:40:06 GMT
ENV GHOST_VERSION=1.25.6
# Wed, 28 Nov 2018 14:40:36 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 28 Nov 2018 14:40:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 28 Nov 2018 14:41:07 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 28 Nov 2018 14:41:08 GMT
WORKDIR /var/lib/ghost
# Wed, 28 Nov 2018 14:41:08 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 28 Nov 2018 14:41:09 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Wed, 28 Nov 2018 14:41:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 14:41:09 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 14:41:10 GMT
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
	-	`sha256:ca21c60a948df4e5de9c6f3024538c43fb49cf35ace0a334d5d8a8948fa508ae`  
		Last Modified: Wed, 28 Nov 2018 13:56:39 GMT  
		Size: 28.0 MB (28000886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c00305525dc4f948837673928e53e93bb634f174a17451bf643ff1555205dc`  
		Last Modified: Wed, 28 Nov 2018 13:56:33 GMT  
		Size: 1.3 MB (1310258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:172fa9ad846dcfd07b5a38cdc92c350d0c6518fc3e1f743b6d8ca03f9795e563`  
		Last Modified: Wed, 28 Nov 2018 14:45:41 GMT  
		Size: 500.9 KB (500918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c0e8add91546198d3e9766319b33ed5cd98d6eabce4a1fe2834eebacf8e55d`  
		Last Modified: Wed, 28 Nov 2018 14:45:53 GMT  
		Size: 17.3 MB (17287753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f7db6f88f0e66d9f90a794b0ee51f7d72a1d7f33cfb1a5a5f9a88b99ae07ed`  
		Last Modified: Wed, 28 Nov 2018 14:49:26 GMT  
		Size: 101.8 MB (101823419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d15fea94d0b6d4ec9a111b5f0545d7168ffa7a42bfb010baa2cba6123b3b093`  
		Last Modified: Wed, 28 Nov 2018 14:49:28 GMT  
		Size: 102.8 MB (102802861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdb110026cad3d0bb744efe54e07f99a9a512be62a1573f9d4bb386f06d5ba6`  
		Last Modified: Wed, 28 Nov 2018 14:48:56 GMT  
		Size: 584.0 B  
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

### `ghost:1` - linux; 386

```console
$ docker pull ghost@sha256:35c5b061a79a05240b5ffafa7529babac3a18dabd93129ed00f59583063fcfff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.1 MB (281127989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1924d6a9cbcaacac5c938b137e037068885e9e1086211bc684326d77688790b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Tue, 27 Nov 2018 14:20:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 27 Nov 2018 14:20:36 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 14:20:59 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 27 Nov 2018 14:20:59 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 14:21:03 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 27 Nov 2018 14:21:03 GMT
CMD ["node"]
# Tue, 27 Nov 2018 15:46:31 GMT
ENV GOSU_VERSION=1.10
# Tue, 27 Nov 2018 15:46:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 27 Nov 2018 15:46:35 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 15:46:36 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 15:46:59 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 15:47:00 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 15:47:00 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 15:50:48 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 27 Nov 2018 15:51:25 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 27 Nov 2018 15:51:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 27 Nov 2018 15:53:25 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 27 Nov 2018 15:53:26 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 15:53:27 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 15:53:27 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Tue, 27 Nov 2018 15:53:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 15:53:27 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 15:53:28 GMT
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
	-	`sha256:a55564c19a8378b6dafc5ce5088bd410f8a3441b736293309675461f6570f952`  
		Last Modified: Tue, 27 Nov 2018 15:15:05 GMT  
		Size: 27.8 MB (27815634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e35121dc2767442c3996e3939de26f5c92ccae0a1f7ceebc168413ceed6bad1`  
		Last Modified: Tue, 27 Nov 2018 15:14:58 GMT  
		Size: 1.3 MB (1310242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e30a6285d814f6f3f52127a4d4265915821a51ff52ae3eb71733f3288c4c5d79`  
		Last Modified: Tue, 27 Nov 2018 15:57:34 GMT  
		Size: 480.8 KB (480826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d331319c907952e3008adbc12f9ace82f14c58b4c3c19d8ab3c2762242e5e9`  
		Last Modified: Tue, 27 Nov 2018 15:57:52 GMT  
		Size: 17.3 MB (17290241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58c208c6144e928bbe6945a450d2f21539bf4afde7f4297e4b7872a6b8ff4c90`  
		Last Modified: Tue, 27 Nov 2018 15:59:44 GMT  
		Size: 94.1 MB (94106755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a4a5e7b567ca8593d3f0ff8d5189e25d9e7351443494e1fa5cf17f7aed9e2c0`  
		Last Modified: Tue, 27 Nov 2018 15:59:48 GMT  
		Size: 117.0 MB (116992796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20c85025243ed06d0513a26fe74fffedc89bb8df273da79f295ddba86c0a547`  
		Last Modified: Tue, 27 Nov 2018 15:59:13 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25`

```console
$ docker pull ghost@sha256:64450e0b947cf2ea42b53f834128469619cd075c95577f9f41a5a1ec934c280d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `ghost:1.25` - linux; amd64

```console
$ docker pull ghost@sha256:583752ce24f316ed7497027d07c961d9413682e409fa0a673771d03201596d0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.2 MB (274217105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d8bd5ed2fe12bf18264be7a3c4ce828ac446310ce594cf46766e200b2f1b65`
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
# Wed, 28 Nov 2018 12:09:38 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 12:09:39 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 12:09:43 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 12:09:43 GMT
CMD ["node"]
# Wed, 28 Nov 2018 14:36:01 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Nov 2018 14:36:04 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Nov 2018 14:36:04 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 14:36:05 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 14:36:26 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 14:36:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 14:36:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 28 Nov 2018 14:40:06 GMT
ENV GHOST_VERSION=1.25.6
# Wed, 28 Nov 2018 14:40:36 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 28 Nov 2018 14:40:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 28 Nov 2018 14:41:07 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 28 Nov 2018 14:41:08 GMT
WORKDIR /var/lib/ghost
# Wed, 28 Nov 2018 14:41:08 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 28 Nov 2018 14:41:09 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Wed, 28 Nov 2018 14:41:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 14:41:09 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 14:41:10 GMT
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
	-	`sha256:ca21c60a948df4e5de9c6f3024538c43fb49cf35ace0a334d5d8a8948fa508ae`  
		Last Modified: Wed, 28 Nov 2018 13:56:39 GMT  
		Size: 28.0 MB (28000886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c00305525dc4f948837673928e53e93bb634f174a17451bf643ff1555205dc`  
		Last Modified: Wed, 28 Nov 2018 13:56:33 GMT  
		Size: 1.3 MB (1310258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:172fa9ad846dcfd07b5a38cdc92c350d0c6518fc3e1f743b6d8ca03f9795e563`  
		Last Modified: Wed, 28 Nov 2018 14:45:41 GMT  
		Size: 500.9 KB (500918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c0e8add91546198d3e9766319b33ed5cd98d6eabce4a1fe2834eebacf8e55d`  
		Last Modified: Wed, 28 Nov 2018 14:45:53 GMT  
		Size: 17.3 MB (17287753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f7db6f88f0e66d9f90a794b0ee51f7d72a1d7f33cfb1a5a5f9a88b99ae07ed`  
		Last Modified: Wed, 28 Nov 2018 14:49:26 GMT  
		Size: 101.8 MB (101823419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d15fea94d0b6d4ec9a111b5f0545d7168ffa7a42bfb010baa2cba6123b3b093`  
		Last Modified: Wed, 28 Nov 2018 14:49:28 GMT  
		Size: 102.8 MB (102802861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdb110026cad3d0bb744efe54e07f99a9a512be62a1573f9d4bb386f06d5ba6`  
		Last Modified: Wed, 28 Nov 2018 14:48:56 GMT  
		Size: 584.0 B  
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

### `ghost:1.25` - linux; 386

```console
$ docker pull ghost@sha256:35c5b061a79a05240b5ffafa7529babac3a18dabd93129ed00f59583063fcfff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.1 MB (281127989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1924d6a9cbcaacac5c938b137e037068885e9e1086211bc684326d77688790b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Tue, 27 Nov 2018 14:20:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 27 Nov 2018 14:20:36 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 14:20:59 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 27 Nov 2018 14:20:59 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 14:21:03 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 27 Nov 2018 14:21:03 GMT
CMD ["node"]
# Tue, 27 Nov 2018 15:46:31 GMT
ENV GOSU_VERSION=1.10
# Tue, 27 Nov 2018 15:46:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 27 Nov 2018 15:46:35 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 15:46:36 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 15:46:59 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 15:47:00 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 15:47:00 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 15:50:48 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 27 Nov 2018 15:51:25 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 27 Nov 2018 15:51:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 27 Nov 2018 15:53:25 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 27 Nov 2018 15:53:26 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 15:53:27 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 15:53:27 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Tue, 27 Nov 2018 15:53:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 15:53:27 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 15:53:28 GMT
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
	-	`sha256:a55564c19a8378b6dafc5ce5088bd410f8a3441b736293309675461f6570f952`  
		Last Modified: Tue, 27 Nov 2018 15:15:05 GMT  
		Size: 27.8 MB (27815634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e35121dc2767442c3996e3939de26f5c92ccae0a1f7ceebc168413ceed6bad1`  
		Last Modified: Tue, 27 Nov 2018 15:14:58 GMT  
		Size: 1.3 MB (1310242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e30a6285d814f6f3f52127a4d4265915821a51ff52ae3eb71733f3288c4c5d79`  
		Last Modified: Tue, 27 Nov 2018 15:57:34 GMT  
		Size: 480.8 KB (480826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d331319c907952e3008adbc12f9ace82f14c58b4c3c19d8ab3c2762242e5e9`  
		Last Modified: Tue, 27 Nov 2018 15:57:52 GMT  
		Size: 17.3 MB (17290241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58c208c6144e928bbe6945a450d2f21539bf4afde7f4297e4b7872a6b8ff4c90`  
		Last Modified: Tue, 27 Nov 2018 15:59:44 GMT  
		Size: 94.1 MB (94106755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a4a5e7b567ca8593d3f0ff8d5189e25d9e7351443494e1fa5cf17f7aed9e2c0`  
		Last Modified: Tue, 27 Nov 2018 15:59:48 GMT  
		Size: 117.0 MB (116992796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20c85025243ed06d0513a26fe74fffedc89bb8df273da79f295ddba86c0a547`  
		Last Modified: Tue, 27 Nov 2018 15:59:13 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25.6`

```console
$ docker pull ghost@sha256:64450e0b947cf2ea42b53f834128469619cd075c95577f9f41a5a1ec934c280d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `ghost:1.25.6` - linux; amd64

```console
$ docker pull ghost@sha256:583752ce24f316ed7497027d07c961d9413682e409fa0a673771d03201596d0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.2 MB (274217105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d8bd5ed2fe12bf18264be7a3c4ce828ac446310ce594cf46766e200b2f1b65`
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
# Wed, 28 Nov 2018 12:09:38 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 12:09:39 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 12:09:43 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 12:09:43 GMT
CMD ["node"]
# Wed, 28 Nov 2018 14:36:01 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Nov 2018 14:36:04 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Nov 2018 14:36:04 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 14:36:05 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 14:36:26 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 14:36:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 14:36:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 28 Nov 2018 14:40:06 GMT
ENV GHOST_VERSION=1.25.6
# Wed, 28 Nov 2018 14:40:36 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 28 Nov 2018 14:40:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 28 Nov 2018 14:41:07 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 28 Nov 2018 14:41:08 GMT
WORKDIR /var/lib/ghost
# Wed, 28 Nov 2018 14:41:08 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 28 Nov 2018 14:41:09 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Wed, 28 Nov 2018 14:41:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 14:41:09 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 14:41:10 GMT
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
	-	`sha256:ca21c60a948df4e5de9c6f3024538c43fb49cf35ace0a334d5d8a8948fa508ae`  
		Last Modified: Wed, 28 Nov 2018 13:56:39 GMT  
		Size: 28.0 MB (28000886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c00305525dc4f948837673928e53e93bb634f174a17451bf643ff1555205dc`  
		Last Modified: Wed, 28 Nov 2018 13:56:33 GMT  
		Size: 1.3 MB (1310258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:172fa9ad846dcfd07b5a38cdc92c350d0c6518fc3e1f743b6d8ca03f9795e563`  
		Last Modified: Wed, 28 Nov 2018 14:45:41 GMT  
		Size: 500.9 KB (500918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c0e8add91546198d3e9766319b33ed5cd98d6eabce4a1fe2834eebacf8e55d`  
		Last Modified: Wed, 28 Nov 2018 14:45:53 GMT  
		Size: 17.3 MB (17287753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f7db6f88f0e66d9f90a794b0ee51f7d72a1d7f33cfb1a5a5f9a88b99ae07ed`  
		Last Modified: Wed, 28 Nov 2018 14:49:26 GMT  
		Size: 101.8 MB (101823419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d15fea94d0b6d4ec9a111b5f0545d7168ffa7a42bfb010baa2cba6123b3b093`  
		Last Modified: Wed, 28 Nov 2018 14:49:28 GMT  
		Size: 102.8 MB (102802861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdb110026cad3d0bb744efe54e07f99a9a512be62a1573f9d4bb386f06d5ba6`  
		Last Modified: Wed, 28 Nov 2018 14:48:56 GMT  
		Size: 584.0 B  
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

### `ghost:1.25.6` - linux; 386

```console
$ docker pull ghost@sha256:35c5b061a79a05240b5ffafa7529babac3a18dabd93129ed00f59583063fcfff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.1 MB (281127989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1924d6a9cbcaacac5c938b137e037068885e9e1086211bc684326d77688790b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Tue, 27 Nov 2018 14:20:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 27 Nov 2018 14:20:36 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 14:20:59 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 27 Nov 2018 14:20:59 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 14:21:03 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 27 Nov 2018 14:21:03 GMT
CMD ["node"]
# Tue, 27 Nov 2018 15:46:31 GMT
ENV GOSU_VERSION=1.10
# Tue, 27 Nov 2018 15:46:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 27 Nov 2018 15:46:35 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 15:46:36 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 15:46:59 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 15:47:00 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 15:47:00 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 15:50:48 GMT
ENV GHOST_VERSION=1.25.6
# Tue, 27 Nov 2018 15:51:25 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 27 Nov 2018 15:51:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 27 Nov 2018 15:53:25 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 27 Nov 2018 15:53:26 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 15:53:27 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 15:53:27 GMT
COPY file:20a7201fb54f2c8af74961ae79d09584f1b5db0724ffc062cfe5b717a977385b in /usr/local/bin 
# Tue, 27 Nov 2018 15:53:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 15:53:27 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 15:53:28 GMT
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
	-	`sha256:a55564c19a8378b6dafc5ce5088bd410f8a3441b736293309675461f6570f952`  
		Last Modified: Tue, 27 Nov 2018 15:15:05 GMT  
		Size: 27.8 MB (27815634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e35121dc2767442c3996e3939de26f5c92ccae0a1f7ceebc168413ceed6bad1`  
		Last Modified: Tue, 27 Nov 2018 15:14:58 GMT  
		Size: 1.3 MB (1310242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e30a6285d814f6f3f52127a4d4265915821a51ff52ae3eb71733f3288c4c5d79`  
		Last Modified: Tue, 27 Nov 2018 15:57:34 GMT  
		Size: 480.8 KB (480826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d331319c907952e3008adbc12f9ace82f14c58b4c3c19d8ab3c2762242e5e9`  
		Last Modified: Tue, 27 Nov 2018 15:57:52 GMT  
		Size: 17.3 MB (17290241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58c208c6144e928bbe6945a450d2f21539bf4afde7f4297e4b7872a6b8ff4c90`  
		Last Modified: Tue, 27 Nov 2018 15:59:44 GMT  
		Size: 94.1 MB (94106755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a4a5e7b567ca8593d3f0ff8d5189e25d9e7351443494e1fa5cf17f7aed9e2c0`  
		Last Modified: Tue, 27 Nov 2018 15:59:48 GMT  
		Size: 117.0 MB (116992796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20c85025243ed06d0513a26fe74fffedc89bb8df273da79f295ddba86c0a547`  
		Last Modified: Tue, 27 Nov 2018 15:59:13 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.25.6-alpine`

```console
$ docker pull ghost@sha256:44db522d1bf783066525f9b1544a970d2833698af2f93710c68782161c69bd37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1.25.6-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:5a04556d0a13ab151678a5998d49ddd0e5e087cfb3964ccbe76681dd71656fae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.7 MB (142684221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ed0acbd46dd89425570227f3342d7250b05af68bdc516ba6239a95367e9d74d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 11:39:13 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 12:08:04 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 28 Nov 2018 12:08:04 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 12:08:09 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 28 Nov 2018 12:08:09 GMT
CMD ["node"]
# Wed, 28 Nov 2018 14:38:22 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Nov 2018 14:38:25 GMT
RUN apk add --no-cache 		bash
# Wed, 28 Nov 2018 14:38:25 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 14:38:25 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 14:38:44 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 14:38:45 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 14:38:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 28 Nov 2018 14:41:28 GMT
ENV GHOST_VERSION=1.25.6
# Wed, 28 Nov 2018 14:41:59 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 28 Nov 2018 14:42:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 28 Nov 2018 14:42:00 GMT
WORKDIR /var/lib/ghost
# Wed, 28 Nov 2018 14:42:00 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 28 Nov 2018 14:42:01 GMT
COPY file:ec5f0dc0340c44f728261188497016ebbb720b84d4de7a293d7d96e1d7c20c56 in /usr/local/bin 
# Wed, 28 Nov 2018 14:42:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 14:42:01 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 14:42:02 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c94b1665db914ebb8891bac4827866afab60f591d4daac509a7835f6737ad0c`  
		Last Modified: Wed, 28 Nov 2018 13:55:31 GMT  
		Size: 18.9 MB (18866675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b413d1ce95e31d6d84931b0e90047fc35a08e27666a4a49215beb348e8a6e72`  
		Last Modified: Wed, 28 Nov 2018 13:55:26 GMT  
		Size: 1.3 MB (1317204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f98855f60604696ba7a2fd012036f34c419bfb9698bd0e3cae659f0e69ee6c`  
		Last Modified: Wed, 28 Nov 2018 14:47:19 GMT  
		Size: 9.4 KB (9398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c6562885fbc90200594692442efc4b2cb4e34986cff012ddfda476f2ca82e8`  
		Last Modified: Wed, 28 Nov 2018 14:47:20 GMT  
		Size: 1.2 MB (1173407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a9dca7362f42889f5dcca32a9c38065458c1534be16ad230c34c12286d0a9a`  
		Last Modified: Wed, 28 Nov 2018 14:47:30 GMT  
		Size: 17.3 MB (17287230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0dd0c3d3ebd9dad53bac53bef8f4f05dd7ada9ca4f7af088b4c32f32a38b914`  
		Last Modified: Wed, 28 Nov 2018 14:50:44 GMT  
		Size: 101.8 MB (101822805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f2f2fa61d24a224294e61908557ad9085c561c0a4fe374c9f6c644d042eb4d`  
		Last Modified: Wed, 28 Nov 2018 14:50:15 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25.6-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:34fd052b3a0c4d5051dbc556c73fd0784ea6143e4caf6c972fa837728bb2d135
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.8 MB (133825972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2711477c424a094b9f62367616c2e0d50c5844c81552cb83ea42c32ad9f47980`
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
# Wed, 28 Nov 2018 16:33:09 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 28 Nov 2018 16:33:10 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 16:33:15 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 28 Nov 2018 16:33:15 GMT
CMD ["node"]
# Wed, 28 Nov 2018 17:01:01 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Nov 2018 17:01:03 GMT
RUN apk add --no-cache 		bash
# Wed, 28 Nov 2018 17:01:04 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 17:01:04 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 17:01:47 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 17:01:49 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 17:01:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 28 Nov 2018 17:03:48 GMT
ENV GHOST_VERSION=1.25.6
# Wed, 28 Nov 2018 17:05:14 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 28 Nov 2018 17:05:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 28 Nov 2018 17:05:18 GMT
WORKDIR /var/lib/ghost
# Wed, 28 Nov 2018 17:05:18 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 28 Nov 2018 17:05:19 GMT
COPY file:ec5f0dc0340c44f728261188497016ebbb720b84d4de7a293d7d96e1d7c20c56 in /usr/local/bin 
# Wed, 28 Nov 2018 17:05:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 17:05:20 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 17:05:20 GMT
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
	-	`sha256:c4ec439a39e3b0fdbea3cf8896d20d924e40704d176ba240730deacc80f57392`  
		Last Modified: Wed, 28 Nov 2018 16:44:21 GMT  
		Size: 17.8 MB (17825471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3eed698e36754e32a9463e4e72da1989d5b8229aba48c7a102857aebfd1347a`  
		Last Modified: Wed, 28 Nov 2018 16:44:15 GMT  
		Size: 1.3 MB (1317224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd90f22e6b7454bf07dad9010673ab5e4d2b0302d349d4d4664494daccbd5a61`  
		Last Modified: Wed, 28 Nov 2018 17:05:44 GMT  
		Size: 9.3 KB (9327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135797a263e53ea3965a78af7317b822730798a808125de2f64db89578e45f84`  
		Last Modified: Wed, 28 Nov 2018 17:05:45 GMT  
		Size: 1.1 MB (1127583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628c3e9fab37932d472ea6c5f437ae66aa7ea0e2bb0e755788493156641c3b7c`  
		Last Modified: Wed, 28 Nov 2018 17:05:49 GMT  
		Size: 17.3 MB (17292386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be61f40680b070240969ebd8b39b88220cc43a4090d517f4e4d4d4b936a68527`  
		Last Modified: Wed, 28 Nov 2018 17:07:18 GMT  
		Size: 94.1 MB (94106780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b69ac8171205d84ce62a82c32d59023c70f3a3139d108601b1d550710efd852a`  
		Last Modified: Wed, 28 Nov 2018 17:06:43 GMT  
		Size: 573.0 B  
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
$ docker pull ghost@sha256:44db522d1bf783066525f9b1544a970d2833698af2f93710c68782161c69bd37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1.25-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:5a04556d0a13ab151678a5998d49ddd0e5e087cfb3964ccbe76681dd71656fae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.7 MB (142684221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ed0acbd46dd89425570227f3342d7250b05af68bdc516ba6239a95367e9d74d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 11:39:13 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 12:08:04 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 28 Nov 2018 12:08:04 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 12:08:09 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 28 Nov 2018 12:08:09 GMT
CMD ["node"]
# Wed, 28 Nov 2018 14:38:22 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Nov 2018 14:38:25 GMT
RUN apk add --no-cache 		bash
# Wed, 28 Nov 2018 14:38:25 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 14:38:25 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 14:38:44 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 14:38:45 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 14:38:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 28 Nov 2018 14:41:28 GMT
ENV GHOST_VERSION=1.25.6
# Wed, 28 Nov 2018 14:41:59 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 28 Nov 2018 14:42:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 28 Nov 2018 14:42:00 GMT
WORKDIR /var/lib/ghost
# Wed, 28 Nov 2018 14:42:00 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 28 Nov 2018 14:42:01 GMT
COPY file:ec5f0dc0340c44f728261188497016ebbb720b84d4de7a293d7d96e1d7c20c56 in /usr/local/bin 
# Wed, 28 Nov 2018 14:42:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 14:42:01 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 14:42:02 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c94b1665db914ebb8891bac4827866afab60f591d4daac509a7835f6737ad0c`  
		Last Modified: Wed, 28 Nov 2018 13:55:31 GMT  
		Size: 18.9 MB (18866675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b413d1ce95e31d6d84931b0e90047fc35a08e27666a4a49215beb348e8a6e72`  
		Last Modified: Wed, 28 Nov 2018 13:55:26 GMT  
		Size: 1.3 MB (1317204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f98855f60604696ba7a2fd012036f34c419bfb9698bd0e3cae659f0e69ee6c`  
		Last Modified: Wed, 28 Nov 2018 14:47:19 GMT  
		Size: 9.4 KB (9398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c6562885fbc90200594692442efc4b2cb4e34986cff012ddfda476f2ca82e8`  
		Last Modified: Wed, 28 Nov 2018 14:47:20 GMT  
		Size: 1.2 MB (1173407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a9dca7362f42889f5dcca32a9c38065458c1534be16ad230c34c12286d0a9a`  
		Last Modified: Wed, 28 Nov 2018 14:47:30 GMT  
		Size: 17.3 MB (17287230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0dd0c3d3ebd9dad53bac53bef8f4f05dd7ada9ca4f7af088b4c32f32a38b914`  
		Last Modified: Wed, 28 Nov 2018 14:50:44 GMT  
		Size: 101.8 MB (101822805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f2f2fa61d24a224294e61908557ad9085c561c0a4fe374c9f6c644d042eb4d`  
		Last Modified: Wed, 28 Nov 2018 14:50:15 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.25-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:34fd052b3a0c4d5051dbc556c73fd0784ea6143e4caf6c972fa837728bb2d135
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.8 MB (133825972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2711477c424a094b9f62367616c2e0d50c5844c81552cb83ea42c32ad9f47980`
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
# Wed, 28 Nov 2018 16:33:09 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 28 Nov 2018 16:33:10 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 16:33:15 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 28 Nov 2018 16:33:15 GMT
CMD ["node"]
# Wed, 28 Nov 2018 17:01:01 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Nov 2018 17:01:03 GMT
RUN apk add --no-cache 		bash
# Wed, 28 Nov 2018 17:01:04 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 17:01:04 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 17:01:47 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 17:01:49 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 17:01:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 28 Nov 2018 17:03:48 GMT
ENV GHOST_VERSION=1.25.6
# Wed, 28 Nov 2018 17:05:14 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 28 Nov 2018 17:05:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 28 Nov 2018 17:05:18 GMT
WORKDIR /var/lib/ghost
# Wed, 28 Nov 2018 17:05:18 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 28 Nov 2018 17:05:19 GMT
COPY file:ec5f0dc0340c44f728261188497016ebbb720b84d4de7a293d7d96e1d7c20c56 in /usr/local/bin 
# Wed, 28 Nov 2018 17:05:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 17:05:20 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 17:05:20 GMT
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
	-	`sha256:c4ec439a39e3b0fdbea3cf8896d20d924e40704d176ba240730deacc80f57392`  
		Last Modified: Wed, 28 Nov 2018 16:44:21 GMT  
		Size: 17.8 MB (17825471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3eed698e36754e32a9463e4e72da1989d5b8229aba48c7a102857aebfd1347a`  
		Last Modified: Wed, 28 Nov 2018 16:44:15 GMT  
		Size: 1.3 MB (1317224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd90f22e6b7454bf07dad9010673ab5e4d2b0302d349d4d4664494daccbd5a61`  
		Last Modified: Wed, 28 Nov 2018 17:05:44 GMT  
		Size: 9.3 KB (9327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135797a263e53ea3965a78af7317b822730798a808125de2f64db89578e45f84`  
		Last Modified: Wed, 28 Nov 2018 17:05:45 GMT  
		Size: 1.1 MB (1127583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628c3e9fab37932d472ea6c5f437ae66aa7ea0e2bb0e755788493156641c3b7c`  
		Last Modified: Wed, 28 Nov 2018 17:05:49 GMT  
		Size: 17.3 MB (17292386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be61f40680b070240969ebd8b39b88220cc43a4090d517f4e4d4d4b936a68527`  
		Last Modified: Wed, 28 Nov 2018 17:07:18 GMT  
		Size: 94.1 MB (94106780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b69ac8171205d84ce62a82c32d59023c70f3a3139d108601b1d550710efd852a`  
		Last Modified: Wed, 28 Nov 2018 17:06:43 GMT  
		Size: 573.0 B  
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
$ docker pull ghost@sha256:44db522d1bf783066525f9b1544a970d2833698af2f93710c68782161c69bd37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:5a04556d0a13ab151678a5998d49ddd0e5e087cfb3964ccbe76681dd71656fae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.7 MB (142684221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ed0acbd46dd89425570227f3342d7250b05af68bdc516ba6239a95367e9d74d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 11:39:13 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 12:08:04 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 28 Nov 2018 12:08:04 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 12:08:09 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 28 Nov 2018 12:08:09 GMT
CMD ["node"]
# Wed, 28 Nov 2018 14:38:22 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Nov 2018 14:38:25 GMT
RUN apk add --no-cache 		bash
# Wed, 28 Nov 2018 14:38:25 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 14:38:25 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 14:38:44 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 14:38:45 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 14:38:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 28 Nov 2018 14:41:28 GMT
ENV GHOST_VERSION=1.25.6
# Wed, 28 Nov 2018 14:41:59 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 28 Nov 2018 14:42:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 28 Nov 2018 14:42:00 GMT
WORKDIR /var/lib/ghost
# Wed, 28 Nov 2018 14:42:00 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 28 Nov 2018 14:42:01 GMT
COPY file:ec5f0dc0340c44f728261188497016ebbb720b84d4de7a293d7d96e1d7c20c56 in /usr/local/bin 
# Wed, 28 Nov 2018 14:42:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 14:42:01 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 14:42:02 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c94b1665db914ebb8891bac4827866afab60f591d4daac509a7835f6737ad0c`  
		Last Modified: Wed, 28 Nov 2018 13:55:31 GMT  
		Size: 18.9 MB (18866675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b413d1ce95e31d6d84931b0e90047fc35a08e27666a4a49215beb348e8a6e72`  
		Last Modified: Wed, 28 Nov 2018 13:55:26 GMT  
		Size: 1.3 MB (1317204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f98855f60604696ba7a2fd012036f34c419bfb9698bd0e3cae659f0e69ee6c`  
		Last Modified: Wed, 28 Nov 2018 14:47:19 GMT  
		Size: 9.4 KB (9398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c6562885fbc90200594692442efc4b2cb4e34986cff012ddfda476f2ca82e8`  
		Last Modified: Wed, 28 Nov 2018 14:47:20 GMT  
		Size: 1.2 MB (1173407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a9dca7362f42889f5dcca32a9c38065458c1534be16ad230c34c12286d0a9a`  
		Last Modified: Wed, 28 Nov 2018 14:47:30 GMT  
		Size: 17.3 MB (17287230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0dd0c3d3ebd9dad53bac53bef8f4f05dd7ada9ca4f7af088b4c32f32a38b914`  
		Last Modified: Wed, 28 Nov 2018 14:50:44 GMT  
		Size: 101.8 MB (101822805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f2f2fa61d24a224294e61908557ad9085c561c0a4fe374c9f6c644d042eb4d`  
		Last Modified: Wed, 28 Nov 2018 14:50:15 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:34fd052b3a0c4d5051dbc556c73fd0784ea6143e4caf6c972fa837728bb2d135
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.8 MB (133825972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2711477c424a094b9f62367616c2e0d50c5844c81552cb83ea42c32ad9f47980`
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
# Wed, 28 Nov 2018 16:33:09 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 28 Nov 2018 16:33:10 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 16:33:15 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 28 Nov 2018 16:33:15 GMT
CMD ["node"]
# Wed, 28 Nov 2018 17:01:01 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Nov 2018 17:01:03 GMT
RUN apk add --no-cache 		bash
# Wed, 28 Nov 2018 17:01:04 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 17:01:04 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 17:01:47 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 17:01:49 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 17:01:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 28 Nov 2018 17:03:48 GMT
ENV GHOST_VERSION=1.25.6
# Wed, 28 Nov 2018 17:05:14 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 28 Nov 2018 17:05:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 28 Nov 2018 17:05:18 GMT
WORKDIR /var/lib/ghost
# Wed, 28 Nov 2018 17:05:18 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 28 Nov 2018 17:05:19 GMT
COPY file:ec5f0dc0340c44f728261188497016ebbb720b84d4de7a293d7d96e1d7c20c56 in /usr/local/bin 
# Wed, 28 Nov 2018 17:05:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 17:05:20 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 17:05:20 GMT
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
	-	`sha256:c4ec439a39e3b0fdbea3cf8896d20d924e40704d176ba240730deacc80f57392`  
		Last Modified: Wed, 28 Nov 2018 16:44:21 GMT  
		Size: 17.8 MB (17825471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3eed698e36754e32a9463e4e72da1989d5b8229aba48c7a102857aebfd1347a`  
		Last Modified: Wed, 28 Nov 2018 16:44:15 GMT  
		Size: 1.3 MB (1317224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd90f22e6b7454bf07dad9010673ab5e4d2b0302d349d4d4664494daccbd5a61`  
		Last Modified: Wed, 28 Nov 2018 17:05:44 GMT  
		Size: 9.3 KB (9327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135797a263e53ea3965a78af7317b822730798a808125de2f64db89578e45f84`  
		Last Modified: Wed, 28 Nov 2018 17:05:45 GMT  
		Size: 1.1 MB (1127583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628c3e9fab37932d472ea6c5f437ae66aa7ea0e2bb0e755788493156641c3b7c`  
		Last Modified: Wed, 28 Nov 2018 17:05:49 GMT  
		Size: 17.3 MB (17292386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be61f40680b070240969ebd8b39b88220cc43a4090d517f4e4d4d4b936a68527`  
		Last Modified: Wed, 28 Nov 2018 17:07:18 GMT  
		Size: 94.1 MB (94106780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b69ac8171205d84ce62a82c32d59023c70f3a3139d108601b1d550710efd852a`  
		Last Modified: Wed, 28 Nov 2018 17:06:43 GMT  
		Size: 573.0 B  
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
$ docker pull ghost@sha256:d1b7bbe99ccbd06cdb625c92f9f2130dac697ae894299b47d99b4a384dbe2073
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `ghost:2` - linux; amd64

```console
$ docker pull ghost@sha256:dacdf4cb19a4073f453752bb4e9d1c6b84592235ccf7f3274028c0e9a89135b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272576051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30aaff2202641e315c3d434cbeae820759a78f5b664cced30ec65fda6de2d3f9`
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
# Wed, 28 Nov 2018 12:09:38 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 12:09:39 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 12:09:43 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 12:09:43 GMT
CMD ["node"]
# Wed, 28 Nov 2018 14:36:01 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Nov 2018 14:36:04 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Nov 2018 14:36:04 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 14:36:05 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 14:36:26 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 14:36:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 14:36:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 28 Nov 2018 14:36:38 GMT
ENV GHOST_VERSION=2.6.1
# Wed, 28 Nov 2018 14:37:14 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 28 Nov 2018 14:37:52 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 28 Nov 2018 14:37:53 GMT
WORKDIR /var/lib/ghost
# Wed, 28 Nov 2018 14:37:54 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 28 Nov 2018 14:37:54 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Wed, 28 Nov 2018 14:37:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 14:37:54 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 14:37:55 GMT
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
	-	`sha256:ca21c60a948df4e5de9c6f3024538c43fb49cf35ace0a334d5d8a8948fa508ae`  
		Last Modified: Wed, 28 Nov 2018 13:56:39 GMT  
		Size: 28.0 MB (28000886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c00305525dc4f948837673928e53e93bb634f174a17451bf643ff1555205dc`  
		Last Modified: Wed, 28 Nov 2018 13:56:33 GMT  
		Size: 1.3 MB (1310258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:172fa9ad846dcfd07b5a38cdc92c350d0c6518fc3e1f743b6d8ca03f9795e563`  
		Last Modified: Wed, 28 Nov 2018 14:45:41 GMT  
		Size: 500.9 KB (500918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c0e8add91546198d3e9766319b33ed5cd98d6eabce4a1fe2834eebacf8e55d`  
		Last Modified: Wed, 28 Nov 2018 14:45:53 GMT  
		Size: 17.3 MB (17287753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a937677988731e57605e0c274b7e06ce3a68fd455b1fb42bce0ef25ff33d7a6`  
		Last Modified: Wed, 28 Nov 2018 14:46:18 GMT  
		Size: 110.9 MB (110902717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:788272ed4d8c18c600cea6da11c9cb9ff924bfe04bd8dfc31b956a9ffe5c7f1d`  
		Last Modified: Wed, 28 Nov 2018 14:46:16 GMT  
		Size: 92.1 MB (92082536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110f5a24fa9eba2bcdbedae55c3abbb3731060129d420cc7ae72df7aacc597e0`  
		Last Modified: Wed, 28 Nov 2018 14:45:41 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; arm variant v7

```console
$ docker pull ghost@sha256:b2462e84637169bb4aee4964f9f5061b50b631a2222bc43b71549533bd7a7bef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.1 MB (267143083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88b361557ee2ee242dd3c0ca9a8a2a9bcfbff8c3f5af0cd08271d2ebb3452b9d`
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
# Wed, 28 Nov 2018 13:31:39 GMT
ENV GHOST_VERSION=2.6.1
# Wed, 28 Nov 2018 13:33:14 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 28 Nov 2018 13:37:26 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 28 Nov 2018 13:37:30 GMT
WORKDIR /var/lib/ghost
# Wed, 28 Nov 2018 13:37:30 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 28 Nov 2018 13:37:31 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Wed, 28 Nov 2018 13:37:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 13:37:32 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 13:37:32 GMT
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
	-	`sha256:92fb1eea70548d1f74a0622992cb8103bb8d9806e7618f7e2a1c58643f29c94d`  
		Last Modified: Wed, 28 Nov 2018 13:51:18 GMT  
		Size: 96.1 MB (96067321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e5eea8c6d712174f96eafb37c6f3116761cd85561acf484ed78c7f510a3048`  
		Last Modified: Wed, 28 Nov 2018 13:51:22 GMT  
		Size: 107.3 MB (107270439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d74fd5b9d1e8b9b126f45071c1fc5d311eb05b563f9ad20c4001da3590da28d`  
		Last Modified: Wed, 28 Nov 2018 13:50:41 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2` - linux; 386

```console
$ docker pull ghost@sha256:76278e5d7c4056a4bb1062a45ca2a91426cb7abb597dd6209e9c10132e503a8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.8 MB (258805016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6b061d4a956e64558973e28b0bc0beedb76a81435e7fc6506564f1dd25ab942`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Tue, 27 Nov 2018 14:20:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 27 Nov 2018 14:20:36 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 14:20:59 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 27 Nov 2018 14:20:59 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 14:21:03 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 27 Nov 2018 14:21:03 GMT
CMD ["node"]
# Tue, 27 Nov 2018 15:46:31 GMT
ENV GOSU_VERSION=1.10
# Tue, 27 Nov 2018 15:46:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 27 Nov 2018 15:46:35 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 15:46:36 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 15:46:59 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 15:47:00 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 15:47:00 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 15:47:00 GMT
ENV GHOST_VERSION=2.6.1
# Tue, 27 Nov 2018 15:47:39 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 27 Nov 2018 15:49:42 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 27 Nov 2018 15:49:44 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 15:49:44 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 15:49:44 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Tue, 27 Nov 2018 15:49:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 15:49:45 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 15:49:45 GMT
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
	-	`sha256:a55564c19a8378b6dafc5ce5088bd410f8a3441b736293309675461f6570f952`  
		Last Modified: Tue, 27 Nov 2018 15:15:05 GMT  
		Size: 27.8 MB (27815634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e35121dc2767442c3996e3939de26f5c92ccae0a1f7ceebc168413ceed6bad1`  
		Last Modified: Tue, 27 Nov 2018 15:14:58 GMT  
		Size: 1.3 MB (1310242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e30a6285d814f6f3f52127a4d4265915821a51ff52ae3eb71733f3288c4c5d79`  
		Last Modified: Tue, 27 Nov 2018 15:57:34 GMT  
		Size: 480.8 KB (480826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d331319c907952e3008adbc12f9ace82f14c58b4c3c19d8ab3c2762242e5e9`  
		Last Modified: Tue, 27 Nov 2018 15:57:52 GMT  
		Size: 17.3 MB (17290241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6998ecb8a6680df2ca88f657df3ca7494473da131e4a053e74478c2177e0f552`  
		Last Modified: Tue, 27 Nov 2018 15:58:15 GMT  
		Size: 89.2 MB (89174013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acea2d92cccc957adce8255d8383ba6216cb50247bca2bfe42521988625d9d4`  
		Last Modified: Tue, 27 Nov 2018 15:58:12 GMT  
		Size: 99.6 MB (99602593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb3a4264966b026fe9d59a03025c926b6c854eee601fa445b123cb23abd4bd5`  
		Last Modified: Tue, 27 Nov 2018 15:57:34 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.6`

```console
$ docker pull ghost@sha256:d1b7bbe99ccbd06cdb625c92f9f2130dac697ae894299b47d99b4a384dbe2073
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `ghost:2.6` - linux; amd64

```console
$ docker pull ghost@sha256:dacdf4cb19a4073f453752bb4e9d1c6b84592235ccf7f3274028c0e9a89135b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272576051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30aaff2202641e315c3d434cbeae820759a78f5b664cced30ec65fda6de2d3f9`
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
# Wed, 28 Nov 2018 12:09:38 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 12:09:39 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 12:09:43 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 12:09:43 GMT
CMD ["node"]
# Wed, 28 Nov 2018 14:36:01 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Nov 2018 14:36:04 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Nov 2018 14:36:04 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 14:36:05 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 14:36:26 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 14:36:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 14:36:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 28 Nov 2018 14:36:38 GMT
ENV GHOST_VERSION=2.6.1
# Wed, 28 Nov 2018 14:37:14 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 28 Nov 2018 14:37:52 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 28 Nov 2018 14:37:53 GMT
WORKDIR /var/lib/ghost
# Wed, 28 Nov 2018 14:37:54 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 28 Nov 2018 14:37:54 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Wed, 28 Nov 2018 14:37:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 14:37:54 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 14:37:55 GMT
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
	-	`sha256:ca21c60a948df4e5de9c6f3024538c43fb49cf35ace0a334d5d8a8948fa508ae`  
		Last Modified: Wed, 28 Nov 2018 13:56:39 GMT  
		Size: 28.0 MB (28000886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c00305525dc4f948837673928e53e93bb634f174a17451bf643ff1555205dc`  
		Last Modified: Wed, 28 Nov 2018 13:56:33 GMT  
		Size: 1.3 MB (1310258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:172fa9ad846dcfd07b5a38cdc92c350d0c6518fc3e1f743b6d8ca03f9795e563`  
		Last Modified: Wed, 28 Nov 2018 14:45:41 GMT  
		Size: 500.9 KB (500918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c0e8add91546198d3e9766319b33ed5cd98d6eabce4a1fe2834eebacf8e55d`  
		Last Modified: Wed, 28 Nov 2018 14:45:53 GMT  
		Size: 17.3 MB (17287753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a937677988731e57605e0c274b7e06ce3a68fd455b1fb42bce0ef25ff33d7a6`  
		Last Modified: Wed, 28 Nov 2018 14:46:18 GMT  
		Size: 110.9 MB (110902717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:788272ed4d8c18c600cea6da11c9cb9ff924bfe04bd8dfc31b956a9ffe5c7f1d`  
		Last Modified: Wed, 28 Nov 2018 14:46:16 GMT  
		Size: 92.1 MB (92082536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110f5a24fa9eba2bcdbedae55c3abbb3731060129d420cc7ae72df7aacc597e0`  
		Last Modified: Wed, 28 Nov 2018 14:45:41 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.6` - linux; arm variant v7

```console
$ docker pull ghost@sha256:b2462e84637169bb4aee4964f9f5061b50b631a2222bc43b71549533bd7a7bef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.1 MB (267143083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88b361557ee2ee242dd3c0ca9a8a2a9bcfbff8c3f5af0cd08271d2ebb3452b9d`
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
# Wed, 28 Nov 2018 13:31:39 GMT
ENV GHOST_VERSION=2.6.1
# Wed, 28 Nov 2018 13:33:14 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 28 Nov 2018 13:37:26 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 28 Nov 2018 13:37:30 GMT
WORKDIR /var/lib/ghost
# Wed, 28 Nov 2018 13:37:30 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 28 Nov 2018 13:37:31 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Wed, 28 Nov 2018 13:37:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 13:37:32 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 13:37:32 GMT
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
	-	`sha256:92fb1eea70548d1f74a0622992cb8103bb8d9806e7618f7e2a1c58643f29c94d`  
		Last Modified: Wed, 28 Nov 2018 13:51:18 GMT  
		Size: 96.1 MB (96067321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e5eea8c6d712174f96eafb37c6f3116761cd85561acf484ed78c7f510a3048`  
		Last Modified: Wed, 28 Nov 2018 13:51:22 GMT  
		Size: 107.3 MB (107270439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d74fd5b9d1e8b9b126f45071c1fc5d311eb05b563f9ad20c4001da3590da28d`  
		Last Modified: Wed, 28 Nov 2018 13:50:41 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.6` - linux; 386

```console
$ docker pull ghost@sha256:76278e5d7c4056a4bb1062a45ca2a91426cb7abb597dd6209e9c10132e503a8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.8 MB (258805016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6b061d4a956e64558973e28b0bc0beedb76a81435e7fc6506564f1dd25ab942`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Tue, 27 Nov 2018 14:20:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 27 Nov 2018 14:20:36 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 14:20:59 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 27 Nov 2018 14:20:59 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 14:21:03 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 27 Nov 2018 14:21:03 GMT
CMD ["node"]
# Tue, 27 Nov 2018 15:46:31 GMT
ENV GOSU_VERSION=1.10
# Tue, 27 Nov 2018 15:46:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 27 Nov 2018 15:46:35 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 15:46:36 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 15:46:59 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 15:47:00 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 15:47:00 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 15:47:00 GMT
ENV GHOST_VERSION=2.6.1
# Tue, 27 Nov 2018 15:47:39 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 27 Nov 2018 15:49:42 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 27 Nov 2018 15:49:44 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 15:49:44 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 15:49:44 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Tue, 27 Nov 2018 15:49:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 15:49:45 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 15:49:45 GMT
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
	-	`sha256:a55564c19a8378b6dafc5ce5088bd410f8a3441b736293309675461f6570f952`  
		Last Modified: Tue, 27 Nov 2018 15:15:05 GMT  
		Size: 27.8 MB (27815634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e35121dc2767442c3996e3939de26f5c92ccae0a1f7ceebc168413ceed6bad1`  
		Last Modified: Tue, 27 Nov 2018 15:14:58 GMT  
		Size: 1.3 MB (1310242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e30a6285d814f6f3f52127a4d4265915821a51ff52ae3eb71733f3288c4c5d79`  
		Last Modified: Tue, 27 Nov 2018 15:57:34 GMT  
		Size: 480.8 KB (480826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d331319c907952e3008adbc12f9ace82f14c58b4c3c19d8ab3c2762242e5e9`  
		Last Modified: Tue, 27 Nov 2018 15:57:52 GMT  
		Size: 17.3 MB (17290241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6998ecb8a6680df2ca88f657df3ca7494473da131e4a053e74478c2177e0f552`  
		Last Modified: Tue, 27 Nov 2018 15:58:15 GMT  
		Size: 89.2 MB (89174013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acea2d92cccc957adce8255d8383ba6216cb50247bca2bfe42521988625d9d4`  
		Last Modified: Tue, 27 Nov 2018 15:58:12 GMT  
		Size: 99.6 MB (99602593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb3a4264966b026fe9d59a03025c926b6c854eee601fa445b123cb23abd4bd5`  
		Last Modified: Tue, 27 Nov 2018 15:57:34 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.6.1`

```console
$ docker pull ghost@sha256:d1b7bbe99ccbd06cdb625c92f9f2130dac697ae894299b47d99b4a384dbe2073
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `ghost:2.6.1` - linux; amd64

```console
$ docker pull ghost@sha256:dacdf4cb19a4073f453752bb4e9d1c6b84592235ccf7f3274028c0e9a89135b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272576051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30aaff2202641e315c3d434cbeae820759a78f5b664cced30ec65fda6de2d3f9`
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
# Wed, 28 Nov 2018 12:09:38 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 12:09:39 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 12:09:43 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 12:09:43 GMT
CMD ["node"]
# Wed, 28 Nov 2018 14:36:01 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Nov 2018 14:36:04 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Nov 2018 14:36:04 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 14:36:05 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 14:36:26 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 14:36:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 14:36:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 28 Nov 2018 14:36:38 GMT
ENV GHOST_VERSION=2.6.1
# Wed, 28 Nov 2018 14:37:14 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 28 Nov 2018 14:37:52 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 28 Nov 2018 14:37:53 GMT
WORKDIR /var/lib/ghost
# Wed, 28 Nov 2018 14:37:54 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 28 Nov 2018 14:37:54 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Wed, 28 Nov 2018 14:37:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 14:37:54 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 14:37:55 GMT
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
	-	`sha256:ca21c60a948df4e5de9c6f3024538c43fb49cf35ace0a334d5d8a8948fa508ae`  
		Last Modified: Wed, 28 Nov 2018 13:56:39 GMT  
		Size: 28.0 MB (28000886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c00305525dc4f948837673928e53e93bb634f174a17451bf643ff1555205dc`  
		Last Modified: Wed, 28 Nov 2018 13:56:33 GMT  
		Size: 1.3 MB (1310258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:172fa9ad846dcfd07b5a38cdc92c350d0c6518fc3e1f743b6d8ca03f9795e563`  
		Last Modified: Wed, 28 Nov 2018 14:45:41 GMT  
		Size: 500.9 KB (500918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c0e8add91546198d3e9766319b33ed5cd98d6eabce4a1fe2834eebacf8e55d`  
		Last Modified: Wed, 28 Nov 2018 14:45:53 GMT  
		Size: 17.3 MB (17287753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a937677988731e57605e0c274b7e06ce3a68fd455b1fb42bce0ef25ff33d7a6`  
		Last Modified: Wed, 28 Nov 2018 14:46:18 GMT  
		Size: 110.9 MB (110902717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:788272ed4d8c18c600cea6da11c9cb9ff924bfe04bd8dfc31b956a9ffe5c7f1d`  
		Last Modified: Wed, 28 Nov 2018 14:46:16 GMT  
		Size: 92.1 MB (92082536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110f5a24fa9eba2bcdbedae55c3abbb3731060129d420cc7ae72df7aacc597e0`  
		Last Modified: Wed, 28 Nov 2018 14:45:41 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.6.1` - linux; arm variant v7

```console
$ docker pull ghost@sha256:b2462e84637169bb4aee4964f9f5061b50b631a2222bc43b71549533bd7a7bef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.1 MB (267143083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88b361557ee2ee242dd3c0ca9a8a2a9bcfbff8c3f5af0cd08271d2ebb3452b9d`
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
# Wed, 28 Nov 2018 13:31:39 GMT
ENV GHOST_VERSION=2.6.1
# Wed, 28 Nov 2018 13:33:14 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 28 Nov 2018 13:37:26 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 28 Nov 2018 13:37:30 GMT
WORKDIR /var/lib/ghost
# Wed, 28 Nov 2018 13:37:30 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 28 Nov 2018 13:37:31 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Wed, 28 Nov 2018 13:37:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 13:37:32 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 13:37:32 GMT
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
	-	`sha256:92fb1eea70548d1f74a0622992cb8103bb8d9806e7618f7e2a1c58643f29c94d`  
		Last Modified: Wed, 28 Nov 2018 13:51:18 GMT  
		Size: 96.1 MB (96067321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e5eea8c6d712174f96eafb37c6f3116761cd85561acf484ed78c7f510a3048`  
		Last Modified: Wed, 28 Nov 2018 13:51:22 GMT  
		Size: 107.3 MB (107270439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d74fd5b9d1e8b9b126f45071c1fc5d311eb05b563f9ad20c4001da3590da28d`  
		Last Modified: Wed, 28 Nov 2018 13:50:41 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.6.1` - linux; 386

```console
$ docker pull ghost@sha256:76278e5d7c4056a4bb1062a45ca2a91426cb7abb597dd6209e9c10132e503a8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.8 MB (258805016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6b061d4a956e64558973e28b0bc0beedb76a81435e7fc6506564f1dd25ab942`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Tue, 27 Nov 2018 14:20:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 27 Nov 2018 14:20:36 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 14:20:59 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 27 Nov 2018 14:20:59 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 14:21:03 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 27 Nov 2018 14:21:03 GMT
CMD ["node"]
# Tue, 27 Nov 2018 15:46:31 GMT
ENV GOSU_VERSION=1.10
# Tue, 27 Nov 2018 15:46:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 27 Nov 2018 15:46:35 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 15:46:36 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 15:46:59 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 15:47:00 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 15:47:00 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 15:47:00 GMT
ENV GHOST_VERSION=2.6.1
# Tue, 27 Nov 2018 15:47:39 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 27 Nov 2018 15:49:42 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 27 Nov 2018 15:49:44 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 15:49:44 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 15:49:44 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Tue, 27 Nov 2018 15:49:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 15:49:45 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 15:49:45 GMT
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
	-	`sha256:a55564c19a8378b6dafc5ce5088bd410f8a3441b736293309675461f6570f952`  
		Last Modified: Tue, 27 Nov 2018 15:15:05 GMT  
		Size: 27.8 MB (27815634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e35121dc2767442c3996e3939de26f5c92ccae0a1f7ceebc168413ceed6bad1`  
		Last Modified: Tue, 27 Nov 2018 15:14:58 GMT  
		Size: 1.3 MB (1310242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e30a6285d814f6f3f52127a4d4265915821a51ff52ae3eb71733f3288c4c5d79`  
		Last Modified: Tue, 27 Nov 2018 15:57:34 GMT  
		Size: 480.8 KB (480826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d331319c907952e3008adbc12f9ace82f14c58b4c3c19d8ab3c2762242e5e9`  
		Last Modified: Tue, 27 Nov 2018 15:57:52 GMT  
		Size: 17.3 MB (17290241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6998ecb8a6680df2ca88f657df3ca7494473da131e4a053e74478c2177e0f552`  
		Last Modified: Tue, 27 Nov 2018 15:58:15 GMT  
		Size: 89.2 MB (89174013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acea2d92cccc957adce8255d8383ba6216cb50247bca2bfe42521988625d9d4`  
		Last Modified: Tue, 27 Nov 2018 15:58:12 GMT  
		Size: 99.6 MB (99602593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb3a4264966b026fe9d59a03025c926b6c854eee601fa445b123cb23abd4bd5`  
		Last Modified: Tue, 27 Nov 2018 15:57:34 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:2.6.1-alpine`

```console
$ docker pull ghost@sha256:76be12468adc7702ab3e524a2b1ccbc2e2284d64fe3b264fd5a9965903ab5f29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:2.6.1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:21bfb64f9ba639644d6ed1e38de927a2664a8b6e1c03b44f21ac85b0bec855d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.7 MB (152675690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac9290a926e8fa72275ed194e5f880761d2e885cc0b16ace404a0a7d9f3a4696`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 11:39:13 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 12:08:04 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 28 Nov 2018 12:08:04 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 12:08:09 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 28 Nov 2018 12:08:09 GMT
CMD ["node"]
# Wed, 28 Nov 2018 14:38:22 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Nov 2018 14:38:25 GMT
RUN apk add --no-cache 		bash
# Wed, 28 Nov 2018 14:38:25 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 14:38:25 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 14:38:44 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 14:38:45 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 14:38:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 28 Nov 2018 14:38:45 GMT
ENV GHOST_VERSION=2.6.1
# Wed, 28 Nov 2018 14:39:20 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 28 Nov 2018 14:39:21 GMT
WORKDIR /var/lib/ghost
# Wed, 28 Nov 2018 14:39:21 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 28 Nov 2018 14:39:21 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Wed, 28 Nov 2018 14:39:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 14:39:22 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 14:39:22 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c94b1665db914ebb8891bac4827866afab60f591d4daac509a7835f6737ad0c`  
		Last Modified: Wed, 28 Nov 2018 13:55:31 GMT  
		Size: 18.9 MB (18866675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b413d1ce95e31d6d84931b0e90047fc35a08e27666a4a49215beb348e8a6e72`  
		Last Modified: Wed, 28 Nov 2018 13:55:26 GMT  
		Size: 1.3 MB (1317204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f98855f60604696ba7a2fd012036f34c419bfb9698bd0e3cae659f0e69ee6c`  
		Last Modified: Wed, 28 Nov 2018 14:47:19 GMT  
		Size: 9.4 KB (9398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c6562885fbc90200594692442efc4b2cb4e34986cff012ddfda476f2ca82e8`  
		Last Modified: Wed, 28 Nov 2018 14:47:20 GMT  
		Size: 1.2 MB (1173407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a9dca7362f42889f5dcca32a9c38065458c1534be16ad230c34c12286d0a9a`  
		Last Modified: Wed, 28 Nov 2018 14:47:30 GMT  
		Size: 17.3 MB (17287230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6dc5dacfd56481a33eb23b0520354d4c5213bda4e05ab272ed31dd4ac59c67`  
		Last Modified: Wed, 28 Nov 2018 14:47:54 GMT  
		Size: 111.8 MB (111814300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65792c0012568fe197e05ff3fcf7c48cb3a02427b4a1cd539a7bf415729c5a2c`  
		Last Modified: Wed, 28 Nov 2018 14:47:19 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.6.1-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:ef5f28e4bc5e828e9c86a40a5bf8ed22053b04e61d51877dddaa3ebccd157507
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128894242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:928094c88d9c859c97cd00a74f81a0bca49c309e662b28df23b793233acd08c1`
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
# Wed, 28 Nov 2018 16:33:09 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 28 Nov 2018 16:33:10 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 16:33:15 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 28 Nov 2018 16:33:15 GMT
CMD ["node"]
# Wed, 28 Nov 2018 17:01:01 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Nov 2018 17:01:03 GMT
RUN apk add --no-cache 		bash
# Wed, 28 Nov 2018 17:01:04 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 17:01:04 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 17:01:47 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 17:01:49 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 17:01:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 28 Nov 2018 17:01:49 GMT
ENV GHOST_VERSION=2.6.1
# Wed, 28 Nov 2018 17:03:24 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 28 Nov 2018 17:03:29 GMT
WORKDIR /var/lib/ghost
# Wed, 28 Nov 2018 17:03:29 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 28 Nov 2018 17:03:29 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Wed, 28 Nov 2018 17:03:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 17:03:30 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 17:03:30 GMT
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
	-	`sha256:c4ec439a39e3b0fdbea3cf8896d20d924e40704d176ba240730deacc80f57392`  
		Last Modified: Wed, 28 Nov 2018 16:44:21 GMT  
		Size: 17.8 MB (17825471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3eed698e36754e32a9463e4e72da1989d5b8229aba48c7a102857aebfd1347a`  
		Last Modified: Wed, 28 Nov 2018 16:44:15 GMT  
		Size: 1.3 MB (1317224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd90f22e6b7454bf07dad9010673ab5e4d2b0302d349d4d4664494daccbd5a61`  
		Last Modified: Wed, 28 Nov 2018 17:05:44 GMT  
		Size: 9.3 KB (9327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135797a263e53ea3965a78af7317b822730798a808125de2f64db89578e45f84`  
		Last Modified: Wed, 28 Nov 2018 17:05:45 GMT  
		Size: 1.1 MB (1127583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628c3e9fab37932d472ea6c5f437ae66aa7ea0e2bb0e755788493156641c3b7c`  
		Last Modified: Wed, 28 Nov 2018 17:05:49 GMT  
		Size: 17.3 MB (17292386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca28e9797a2c3774a66be85d11ddb668a741eaa161eecc1ca68472a9d2406d8`  
		Last Modified: Wed, 28 Nov 2018 17:06:22 GMT  
		Size: 89.2 MB (89175081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292e09fccdda9cca9e1f91b8c4f6e80f66a8656da575676373da340c077e8b1d`  
		Last Modified: Wed, 28 Nov 2018 17:05:44 GMT  
		Size: 542.0 B  
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
$ docker pull ghost@sha256:76be12468adc7702ab3e524a2b1ccbc2e2284d64fe3b264fd5a9965903ab5f29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:2.6-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:21bfb64f9ba639644d6ed1e38de927a2664a8b6e1c03b44f21ac85b0bec855d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.7 MB (152675690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac9290a926e8fa72275ed194e5f880761d2e885cc0b16ace404a0a7d9f3a4696`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 11:39:13 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 12:08:04 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 28 Nov 2018 12:08:04 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 12:08:09 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 28 Nov 2018 12:08:09 GMT
CMD ["node"]
# Wed, 28 Nov 2018 14:38:22 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Nov 2018 14:38:25 GMT
RUN apk add --no-cache 		bash
# Wed, 28 Nov 2018 14:38:25 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 14:38:25 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 14:38:44 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 14:38:45 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 14:38:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 28 Nov 2018 14:38:45 GMT
ENV GHOST_VERSION=2.6.1
# Wed, 28 Nov 2018 14:39:20 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 28 Nov 2018 14:39:21 GMT
WORKDIR /var/lib/ghost
# Wed, 28 Nov 2018 14:39:21 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 28 Nov 2018 14:39:21 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Wed, 28 Nov 2018 14:39:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 14:39:22 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 14:39:22 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c94b1665db914ebb8891bac4827866afab60f591d4daac509a7835f6737ad0c`  
		Last Modified: Wed, 28 Nov 2018 13:55:31 GMT  
		Size: 18.9 MB (18866675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b413d1ce95e31d6d84931b0e90047fc35a08e27666a4a49215beb348e8a6e72`  
		Last Modified: Wed, 28 Nov 2018 13:55:26 GMT  
		Size: 1.3 MB (1317204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f98855f60604696ba7a2fd012036f34c419bfb9698bd0e3cae659f0e69ee6c`  
		Last Modified: Wed, 28 Nov 2018 14:47:19 GMT  
		Size: 9.4 KB (9398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c6562885fbc90200594692442efc4b2cb4e34986cff012ddfda476f2ca82e8`  
		Last Modified: Wed, 28 Nov 2018 14:47:20 GMT  
		Size: 1.2 MB (1173407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a9dca7362f42889f5dcca32a9c38065458c1534be16ad230c34c12286d0a9a`  
		Last Modified: Wed, 28 Nov 2018 14:47:30 GMT  
		Size: 17.3 MB (17287230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6dc5dacfd56481a33eb23b0520354d4c5213bda4e05ab272ed31dd4ac59c67`  
		Last Modified: Wed, 28 Nov 2018 14:47:54 GMT  
		Size: 111.8 MB (111814300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65792c0012568fe197e05ff3fcf7c48cb3a02427b4a1cd539a7bf415729c5a2c`  
		Last Modified: Wed, 28 Nov 2018 14:47:19 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2.6-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:ef5f28e4bc5e828e9c86a40a5bf8ed22053b04e61d51877dddaa3ebccd157507
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128894242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:928094c88d9c859c97cd00a74f81a0bca49c309e662b28df23b793233acd08c1`
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
# Wed, 28 Nov 2018 16:33:09 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 28 Nov 2018 16:33:10 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 16:33:15 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 28 Nov 2018 16:33:15 GMT
CMD ["node"]
# Wed, 28 Nov 2018 17:01:01 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Nov 2018 17:01:03 GMT
RUN apk add --no-cache 		bash
# Wed, 28 Nov 2018 17:01:04 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 17:01:04 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 17:01:47 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 17:01:49 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 17:01:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 28 Nov 2018 17:01:49 GMT
ENV GHOST_VERSION=2.6.1
# Wed, 28 Nov 2018 17:03:24 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 28 Nov 2018 17:03:29 GMT
WORKDIR /var/lib/ghost
# Wed, 28 Nov 2018 17:03:29 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 28 Nov 2018 17:03:29 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Wed, 28 Nov 2018 17:03:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 17:03:30 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 17:03:30 GMT
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
	-	`sha256:c4ec439a39e3b0fdbea3cf8896d20d924e40704d176ba240730deacc80f57392`  
		Last Modified: Wed, 28 Nov 2018 16:44:21 GMT  
		Size: 17.8 MB (17825471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3eed698e36754e32a9463e4e72da1989d5b8229aba48c7a102857aebfd1347a`  
		Last Modified: Wed, 28 Nov 2018 16:44:15 GMT  
		Size: 1.3 MB (1317224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd90f22e6b7454bf07dad9010673ab5e4d2b0302d349d4d4664494daccbd5a61`  
		Last Modified: Wed, 28 Nov 2018 17:05:44 GMT  
		Size: 9.3 KB (9327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135797a263e53ea3965a78af7317b822730798a808125de2f64db89578e45f84`  
		Last Modified: Wed, 28 Nov 2018 17:05:45 GMT  
		Size: 1.1 MB (1127583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628c3e9fab37932d472ea6c5f437ae66aa7ea0e2bb0e755788493156641c3b7c`  
		Last Modified: Wed, 28 Nov 2018 17:05:49 GMT  
		Size: 17.3 MB (17292386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca28e9797a2c3774a66be85d11ddb668a741eaa161eecc1ca68472a9d2406d8`  
		Last Modified: Wed, 28 Nov 2018 17:06:22 GMT  
		Size: 89.2 MB (89175081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292e09fccdda9cca9e1f91b8c4f6e80f66a8656da575676373da340c077e8b1d`  
		Last Modified: Wed, 28 Nov 2018 17:05:44 GMT  
		Size: 542.0 B  
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
$ docker pull ghost@sha256:76be12468adc7702ab3e524a2b1ccbc2e2284d64fe3b264fd5a9965903ab5f29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:2-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:21bfb64f9ba639644d6ed1e38de927a2664a8b6e1c03b44f21ac85b0bec855d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.7 MB (152675690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac9290a926e8fa72275ed194e5f880761d2e885cc0b16ace404a0a7d9f3a4696`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 11:39:13 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 12:08:04 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 28 Nov 2018 12:08:04 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 12:08:09 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 28 Nov 2018 12:08:09 GMT
CMD ["node"]
# Wed, 28 Nov 2018 14:38:22 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Nov 2018 14:38:25 GMT
RUN apk add --no-cache 		bash
# Wed, 28 Nov 2018 14:38:25 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 14:38:25 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 14:38:44 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 14:38:45 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 14:38:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 28 Nov 2018 14:38:45 GMT
ENV GHOST_VERSION=2.6.1
# Wed, 28 Nov 2018 14:39:20 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 28 Nov 2018 14:39:21 GMT
WORKDIR /var/lib/ghost
# Wed, 28 Nov 2018 14:39:21 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 28 Nov 2018 14:39:21 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Wed, 28 Nov 2018 14:39:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 14:39:22 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 14:39:22 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c94b1665db914ebb8891bac4827866afab60f591d4daac509a7835f6737ad0c`  
		Last Modified: Wed, 28 Nov 2018 13:55:31 GMT  
		Size: 18.9 MB (18866675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b413d1ce95e31d6d84931b0e90047fc35a08e27666a4a49215beb348e8a6e72`  
		Last Modified: Wed, 28 Nov 2018 13:55:26 GMT  
		Size: 1.3 MB (1317204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f98855f60604696ba7a2fd012036f34c419bfb9698bd0e3cae659f0e69ee6c`  
		Last Modified: Wed, 28 Nov 2018 14:47:19 GMT  
		Size: 9.4 KB (9398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c6562885fbc90200594692442efc4b2cb4e34986cff012ddfda476f2ca82e8`  
		Last Modified: Wed, 28 Nov 2018 14:47:20 GMT  
		Size: 1.2 MB (1173407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a9dca7362f42889f5dcca32a9c38065458c1534be16ad230c34c12286d0a9a`  
		Last Modified: Wed, 28 Nov 2018 14:47:30 GMT  
		Size: 17.3 MB (17287230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6dc5dacfd56481a33eb23b0520354d4c5213bda4e05ab272ed31dd4ac59c67`  
		Last Modified: Wed, 28 Nov 2018 14:47:54 GMT  
		Size: 111.8 MB (111814300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65792c0012568fe197e05ff3fcf7c48cb3a02427b4a1cd539a7bf415729c5a2c`  
		Last Modified: Wed, 28 Nov 2018 14:47:19 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:2-alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:ef5f28e4bc5e828e9c86a40a5bf8ed22053b04e61d51877dddaa3ebccd157507
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128894242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:928094c88d9c859c97cd00a74f81a0bca49c309e662b28df23b793233acd08c1`
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
# Wed, 28 Nov 2018 16:33:09 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 28 Nov 2018 16:33:10 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 16:33:15 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 28 Nov 2018 16:33:15 GMT
CMD ["node"]
# Wed, 28 Nov 2018 17:01:01 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Nov 2018 17:01:03 GMT
RUN apk add --no-cache 		bash
# Wed, 28 Nov 2018 17:01:04 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 17:01:04 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 17:01:47 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 17:01:49 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 17:01:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 28 Nov 2018 17:01:49 GMT
ENV GHOST_VERSION=2.6.1
# Wed, 28 Nov 2018 17:03:24 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 28 Nov 2018 17:03:29 GMT
WORKDIR /var/lib/ghost
# Wed, 28 Nov 2018 17:03:29 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 28 Nov 2018 17:03:29 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Wed, 28 Nov 2018 17:03:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 17:03:30 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 17:03:30 GMT
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
	-	`sha256:c4ec439a39e3b0fdbea3cf8896d20d924e40704d176ba240730deacc80f57392`  
		Last Modified: Wed, 28 Nov 2018 16:44:21 GMT  
		Size: 17.8 MB (17825471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3eed698e36754e32a9463e4e72da1989d5b8229aba48c7a102857aebfd1347a`  
		Last Modified: Wed, 28 Nov 2018 16:44:15 GMT  
		Size: 1.3 MB (1317224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd90f22e6b7454bf07dad9010673ab5e4d2b0302d349d4d4664494daccbd5a61`  
		Last Modified: Wed, 28 Nov 2018 17:05:44 GMT  
		Size: 9.3 KB (9327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135797a263e53ea3965a78af7317b822730798a808125de2f64db89578e45f84`  
		Last Modified: Wed, 28 Nov 2018 17:05:45 GMT  
		Size: 1.1 MB (1127583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628c3e9fab37932d472ea6c5f437ae66aa7ea0e2bb0e755788493156641c3b7c`  
		Last Modified: Wed, 28 Nov 2018 17:05:49 GMT  
		Size: 17.3 MB (17292386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca28e9797a2c3774a66be85d11ddb668a741eaa161eecc1ca68472a9d2406d8`  
		Last Modified: Wed, 28 Nov 2018 17:06:22 GMT  
		Size: 89.2 MB (89175081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292e09fccdda9cca9e1f91b8c4f6e80f66a8656da575676373da340c077e8b1d`  
		Last Modified: Wed, 28 Nov 2018 17:05:44 GMT  
		Size: 542.0 B  
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
$ docker pull ghost@sha256:76be12468adc7702ab3e524a2b1ccbc2e2284d64fe3b264fd5a9965903ab5f29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:21bfb64f9ba639644d6ed1e38de927a2664a8b6e1c03b44f21ac85b0bec855d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.7 MB (152675690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac9290a926e8fa72275ed194e5f880761d2e885cc0b16ace404a0a7d9f3a4696`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 28 Nov 2018 11:39:13 GMT
ENV NODE_VERSION=8.14.0
# Wed, 28 Nov 2018 12:08:04 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 28 Nov 2018 12:08:04 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 12:08:09 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 28 Nov 2018 12:08:09 GMT
CMD ["node"]
# Wed, 28 Nov 2018 14:38:22 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Nov 2018 14:38:25 GMT
RUN apk add --no-cache 		bash
# Wed, 28 Nov 2018 14:38:25 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 14:38:25 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 14:38:44 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 14:38:45 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 14:38:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 28 Nov 2018 14:38:45 GMT
ENV GHOST_VERSION=2.6.1
# Wed, 28 Nov 2018 14:39:20 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 28 Nov 2018 14:39:21 GMT
WORKDIR /var/lib/ghost
# Wed, 28 Nov 2018 14:39:21 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 28 Nov 2018 14:39:21 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Wed, 28 Nov 2018 14:39:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 14:39:22 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 14:39:22 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c94b1665db914ebb8891bac4827866afab60f591d4daac509a7835f6737ad0c`  
		Last Modified: Wed, 28 Nov 2018 13:55:31 GMT  
		Size: 18.9 MB (18866675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b413d1ce95e31d6d84931b0e90047fc35a08e27666a4a49215beb348e8a6e72`  
		Last Modified: Wed, 28 Nov 2018 13:55:26 GMT  
		Size: 1.3 MB (1317204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f98855f60604696ba7a2fd012036f34c419bfb9698bd0e3cae659f0e69ee6c`  
		Last Modified: Wed, 28 Nov 2018 14:47:19 GMT  
		Size: 9.4 KB (9398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c6562885fbc90200594692442efc4b2cb4e34986cff012ddfda476f2ca82e8`  
		Last Modified: Wed, 28 Nov 2018 14:47:20 GMT  
		Size: 1.2 MB (1173407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a9dca7362f42889f5dcca32a9c38065458c1534be16ad230c34c12286d0a9a`  
		Last Modified: Wed, 28 Nov 2018 14:47:30 GMT  
		Size: 17.3 MB (17287230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6dc5dacfd56481a33eb23b0520354d4c5213bda4e05ab272ed31dd4ac59c67`  
		Last Modified: Wed, 28 Nov 2018 14:47:54 GMT  
		Size: 111.8 MB (111814300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65792c0012568fe197e05ff3fcf7c48cb3a02427b4a1cd539a7bf415729c5a2c`  
		Last Modified: Wed, 28 Nov 2018 14:47:19 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:alpine` - linux; arm variant v6

```console
$ docker pull ghost@sha256:ef5f28e4bc5e828e9c86a40a5bf8ed22053b04e61d51877dddaa3ebccd157507
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128894242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:928094c88d9c859c97cd00a74f81a0bca49c309e662b28df23b793233acd08c1`
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
# Wed, 28 Nov 2018 16:33:09 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 28 Nov 2018 16:33:10 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 16:33:15 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 28 Nov 2018 16:33:15 GMT
CMD ["node"]
# Wed, 28 Nov 2018 17:01:01 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Nov 2018 17:01:03 GMT
RUN apk add --no-cache 		bash
# Wed, 28 Nov 2018 17:01:04 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 17:01:04 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 17:01:47 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 17:01:49 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 17:01:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 28 Nov 2018 17:01:49 GMT
ENV GHOST_VERSION=2.6.1
# Wed, 28 Nov 2018 17:03:24 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 28 Nov 2018 17:03:29 GMT
WORKDIR /var/lib/ghost
# Wed, 28 Nov 2018 17:03:29 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 28 Nov 2018 17:03:29 GMT
COPY file:6efbd4a67b1b40a219c8e02dd7e0531b9697bf5f2fc014c4937439cf14c8a59a in /usr/local/bin 
# Wed, 28 Nov 2018 17:03:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 17:03:30 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 17:03:30 GMT
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
	-	`sha256:c4ec439a39e3b0fdbea3cf8896d20d924e40704d176ba240730deacc80f57392`  
		Last Modified: Wed, 28 Nov 2018 16:44:21 GMT  
		Size: 17.8 MB (17825471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3eed698e36754e32a9463e4e72da1989d5b8229aba48c7a102857aebfd1347a`  
		Last Modified: Wed, 28 Nov 2018 16:44:15 GMT  
		Size: 1.3 MB (1317224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd90f22e6b7454bf07dad9010673ab5e4d2b0302d349d4d4664494daccbd5a61`  
		Last Modified: Wed, 28 Nov 2018 17:05:44 GMT  
		Size: 9.3 KB (9327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135797a263e53ea3965a78af7317b822730798a808125de2f64db89578e45f84`  
		Last Modified: Wed, 28 Nov 2018 17:05:45 GMT  
		Size: 1.1 MB (1127583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628c3e9fab37932d472ea6c5f437ae66aa7ea0e2bb0e755788493156641c3b7c`  
		Last Modified: Wed, 28 Nov 2018 17:05:49 GMT  
		Size: 17.3 MB (17292386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca28e9797a2c3774a66be85d11ddb668a741eaa161eecc1ca68472a9d2406d8`  
		Last Modified: Wed, 28 Nov 2018 17:06:22 GMT  
		Size: 89.2 MB (89175081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292e09fccdda9cca9e1f91b8c4f6e80f66a8656da575676373da340c077e8b1d`  
		Last Modified: Wed, 28 Nov 2018 17:05:44 GMT  
		Size: 542.0 B  
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
$ docker pull ghost@sha256:d1b7bbe99ccbd06cdb625c92f9f2130dac697ae894299b47d99b4a384dbe2073
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `ghost:latest` - linux; amd64

```console
$ docker pull ghost@sha256:dacdf4cb19a4073f453752bb4e9d1c6b84592235ccf7f3274028c0e9a89135b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272576051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30aaff2202641e315c3d434cbeae820759a78f5b664cced30ec65fda6de2d3f9`
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
# Wed, 28 Nov 2018 12:09:38 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 28 Nov 2018 12:09:39 GMT
ENV YARN_VERSION=1.12.3
# Wed, 28 Nov 2018 12:09:43 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 28 Nov 2018 12:09:43 GMT
CMD ["node"]
# Wed, 28 Nov 2018 14:36:01 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Nov 2018 14:36:04 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Nov 2018 14:36:04 GMT
ENV NODE_ENV=production
# Wed, 28 Nov 2018 14:36:05 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Wed, 28 Nov 2018 14:36:26 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 28 Nov 2018 14:36:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 28 Nov 2018 14:36:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 28 Nov 2018 14:36:38 GMT
ENV GHOST_VERSION=2.6.1
# Wed, 28 Nov 2018 14:37:14 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 28 Nov 2018 14:37:52 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 28 Nov 2018 14:37:53 GMT
WORKDIR /var/lib/ghost
# Wed, 28 Nov 2018 14:37:54 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 28 Nov 2018 14:37:54 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Wed, 28 Nov 2018 14:37:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 14:37:54 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 14:37:55 GMT
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
	-	`sha256:ca21c60a948df4e5de9c6f3024538c43fb49cf35ace0a334d5d8a8948fa508ae`  
		Last Modified: Wed, 28 Nov 2018 13:56:39 GMT  
		Size: 28.0 MB (28000886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c00305525dc4f948837673928e53e93bb634f174a17451bf643ff1555205dc`  
		Last Modified: Wed, 28 Nov 2018 13:56:33 GMT  
		Size: 1.3 MB (1310258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:172fa9ad846dcfd07b5a38cdc92c350d0c6518fc3e1f743b6d8ca03f9795e563`  
		Last Modified: Wed, 28 Nov 2018 14:45:41 GMT  
		Size: 500.9 KB (500918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c0e8add91546198d3e9766319b33ed5cd98d6eabce4a1fe2834eebacf8e55d`  
		Last Modified: Wed, 28 Nov 2018 14:45:53 GMT  
		Size: 17.3 MB (17287753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a937677988731e57605e0c274b7e06ce3a68fd455b1fb42bce0ef25ff33d7a6`  
		Last Modified: Wed, 28 Nov 2018 14:46:18 GMT  
		Size: 110.9 MB (110902717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:788272ed4d8c18c600cea6da11c9cb9ff924bfe04bd8dfc31b956a9ffe5c7f1d`  
		Last Modified: Wed, 28 Nov 2018 14:46:16 GMT  
		Size: 92.1 MB (92082536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110f5a24fa9eba2bcdbedae55c3abbb3731060129d420cc7ae72df7aacc597e0`  
		Last Modified: Wed, 28 Nov 2018 14:45:41 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm variant v7

```console
$ docker pull ghost@sha256:b2462e84637169bb4aee4964f9f5061b50b631a2222bc43b71549533bd7a7bef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.1 MB (267143083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88b361557ee2ee242dd3c0ca9a8a2a9bcfbff8c3f5af0cd08271d2ebb3452b9d`
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
# Wed, 28 Nov 2018 13:31:39 GMT
ENV GHOST_VERSION=2.6.1
# Wed, 28 Nov 2018 13:33:14 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 28 Nov 2018 13:37:26 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 28 Nov 2018 13:37:30 GMT
WORKDIR /var/lib/ghost
# Wed, 28 Nov 2018 13:37:30 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 28 Nov 2018 13:37:31 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Wed, 28 Nov 2018 13:37:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 13:37:32 GMT
EXPOSE 2368/tcp
# Wed, 28 Nov 2018 13:37:32 GMT
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
	-	`sha256:92fb1eea70548d1f74a0622992cb8103bb8d9806e7618f7e2a1c58643f29c94d`  
		Last Modified: Wed, 28 Nov 2018 13:51:18 GMT  
		Size: 96.1 MB (96067321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e5eea8c6d712174f96eafb37c6f3116761cd85561acf484ed78c7f510a3048`  
		Last Modified: Wed, 28 Nov 2018 13:51:22 GMT  
		Size: 107.3 MB (107270439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d74fd5b9d1e8b9b126f45071c1fc5d311eb05b563f9ad20c4001da3590da28d`  
		Last Modified: Wed, 28 Nov 2018 13:50:41 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; 386

```console
$ docker pull ghost@sha256:76278e5d7c4056a4bb1062a45ca2a91426cb7abb597dd6209e9c10132e503a8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.8 MB (258805016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6b061d4a956e64558973e28b0bc0beedb76a81435e7fc6506564f1dd25ab942`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Tue, 27 Nov 2018 14:20:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 27 Nov 2018 14:20:36 GMT
ENV NODE_VERSION=8.13.0
# Tue, 27 Nov 2018 14:20:59 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 27 Nov 2018 14:20:59 GMT
ENV YARN_VERSION=1.12.3
# Tue, 27 Nov 2018 14:21:03 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 27 Nov 2018 14:21:03 GMT
CMD ["node"]
# Tue, 27 Nov 2018 15:46:31 GMT
ENV GOSU_VERSION=1.10
# Tue, 27 Nov 2018 15:46:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 27 Nov 2018 15:46:35 GMT
ENV NODE_ENV=production
# Tue, 27 Nov 2018 15:46:36 GMT
ENV GHOST_CLI_VERSION=1.9.8
# Tue, 27 Nov 2018 15:46:59 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 27 Nov 2018 15:47:00 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Nov 2018 15:47:00 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Nov 2018 15:47:00 GMT
ENV GHOST_VERSION=2.6.1
# Tue, 27 Nov 2018 15:47:39 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 27 Nov 2018 15:49:42 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node yarn add "sqlite3@$sqlite3Version" --force; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node yarn add "sqlite3@$sqlite3Version" --force --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 27 Nov 2018 15:49:44 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Nov 2018 15:49:44 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Nov 2018 15:49:44 GMT
COPY file:7506b3ef7258a846f24475ab99d94ad2e3b8266ff8eae403e930109d5a07d00c in /usr/local/bin 
# Tue, 27 Nov 2018 15:49:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Nov 2018 15:49:45 GMT
EXPOSE 2368/tcp
# Tue, 27 Nov 2018 15:49:45 GMT
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
	-	`sha256:a55564c19a8378b6dafc5ce5088bd410f8a3441b736293309675461f6570f952`  
		Last Modified: Tue, 27 Nov 2018 15:15:05 GMT  
		Size: 27.8 MB (27815634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e35121dc2767442c3996e3939de26f5c92ccae0a1f7ceebc168413ceed6bad1`  
		Last Modified: Tue, 27 Nov 2018 15:14:58 GMT  
		Size: 1.3 MB (1310242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e30a6285d814f6f3f52127a4d4265915821a51ff52ae3eb71733f3288c4c5d79`  
		Last Modified: Tue, 27 Nov 2018 15:57:34 GMT  
		Size: 480.8 KB (480826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d331319c907952e3008adbc12f9ace82f14c58b4c3c19d8ab3c2762242e5e9`  
		Last Modified: Tue, 27 Nov 2018 15:57:52 GMT  
		Size: 17.3 MB (17290241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6998ecb8a6680df2ca88f657df3ca7494473da131e4a053e74478c2177e0f552`  
		Last Modified: Tue, 27 Nov 2018 15:58:15 GMT  
		Size: 89.2 MB (89174013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acea2d92cccc957adce8255d8383ba6216cb50247bca2bfe42521988625d9d4`  
		Last Modified: Tue, 27 Nov 2018 15:58:12 GMT  
		Size: 99.6 MB (99602593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb3a4264966b026fe9d59a03025c926b6c854eee601fa445b123cb23abd4bd5`  
		Last Modified: Tue, 27 Nov 2018 15:57:34 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

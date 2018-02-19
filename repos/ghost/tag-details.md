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
-	[`ghost:1.21.2`](#ghost1212)
-	[`ghost:1.21.2-alpine`](#ghost1212-alpine)
-	[`ghost:1.21-alpine`](#ghost121-alpine)
-	[`ghost:1-alpine`](#ghost1-alpine)
-	[`ghost:alpine`](#ghostalpine)
-	[`ghost:latest`](#ghostlatest)

## `ghost:0`

```console
$ docker pull ghost@sha256:b3ace1ed6bdbfcace18306bd6a5690a8cafe5a7bcdea39f04c79f4751e612f34
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
$ docker pull ghost@sha256:6e8f15c9c7c0d176ff5cc0fe32c2296af693570389a7a3df4445e5a4872b89f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114331772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42acbb29f2e76175d6385c1495883b231b5270a805665354bf54e320fb888d03`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:01:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:01:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Feb 2018 15:37:54 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 17 Feb 2018 15:37:57 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Sat, 17 Feb 2018 15:41:38 GMT
ENV NODE_VERSION=6.13.0
# Sat, 17 Feb 2018 15:41:52 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 17 Feb 2018 15:41:52 GMT
ENV YARN_VERSION=1.3.2
# Sat, 17 Feb 2018 15:41:56 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 17 Feb 2018 15:41:57 GMT
CMD ["node"]
# Sat, 17 Feb 2018 22:28:54 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 17 Feb 2018 22:28:55 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Feb 2018 22:29:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 17 Feb 2018 22:29:01 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 17 Feb 2018 22:29:02 GMT
WORKDIR /usr/src/ghost
# Sat, 17 Feb 2018 22:29:02 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 17 Feb 2018 22:30:39 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 17 Feb 2018 22:30:40 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 17 Feb 2018 22:30:41 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 17 Feb 2018 22:30:42 GMT
VOLUME [/var/lib/ghost]
# Sat, 17 Feb 2018 22:30:42 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 17 Feb 2018 22:30:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 17 Feb 2018 22:44:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 22:44:15 GMT
EXPOSE 2368/tcp
# Sat, 17 Feb 2018 22:44:15 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851356ecf618f41550b3b8696fb9aad7925f72929c8345453107cce510437608`  
		Last Modified: Sat, 17 Feb 2018 07:15:16 GMT  
		Size: 19.3 MB (19266391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb492416b9f4f2bd1af663d5226ecf80d681762041ccb5d76988655b9ee802d4`  
		Last Modified: Sat, 17 Feb 2018 15:50:22 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c188a47fbe667aa0070347aeb8ccef1e1f7f488a51ce9975942a88c0f8bf14e4`  
		Last Modified: Sat, 17 Feb 2018 15:50:22 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b150b07b7e1a7551f5e310a67960814de62229410dc5b7804956754ce5efd6`  
		Last Modified: Sat, 17 Feb 2018 16:00:01 GMT  
		Size: 14.8 MB (14775283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599d78299041bba51883fdc6b8468f6752ca0a4c754d80ed3fea32043e6575dc`  
		Last Modified: Sat, 17 Feb 2018 15:59:56 GMT  
		Size: 1.0 MB (1010351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf99004a458574ec121e8d3b4dc68ee8f7dc4a9831c67eaff090e2fc5b1c92bc`  
		Last Modified: Sat, 17 Feb 2018 22:48:58 GMT  
		Size: 4.5 KB (4451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b744c9b214b933a521d79a55103bbf10de116103b4d2b037437c86e847bf54d`  
		Last Modified: Sat, 17 Feb 2018 22:48:58 GMT  
		Size: 500.7 KB (500667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5995ae125a790a6a93b22374fafdb094a51d930b48690cf1798492ec915733`  
		Last Modified: Sat, 17 Feb 2018 22:48:55 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b72ed42c698888e80365f914037ecd1e7e9125672c4c98c10bb78a800233fae`  
		Last Modified: Sat, 17 Feb 2018 22:49:15 GMT  
		Size: 26.0 MB (26043214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30fef2bc314d8cd6c3f824459a4cf5983aad15c03f9d7be86377490eebf200cd`  
		Last Modified: Sat, 17 Feb 2018 22:48:56 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec84097966ebbe8be529a1a42925dfc1eb3c7edd8019cc1a87a9a3e33f97b6a`  
		Last Modified: Sat, 17 Feb 2018 22:48:56 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e413fa9f5a469d47a08a31b18597aec617e0ecea1d9fa4c33482818e2c1f1d8`  
		Last Modified: Sat, 17 Feb 2018 22:48:55 GMT  
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
$ docker pull ghost@sha256:1b51b6c0b390a2fa75c25924677afcf5a09b3379049c30c875dcad0b5483e5e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117207451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99d9c8be8fdf2cf666e137e508a349764c79235e25aa984a400e528784f695a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:21:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:21:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 05:59:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 16 Feb 2018 05:59:27 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Fri, 16 Feb 2018 06:10:09 GMT
ENV NODE_VERSION=6.13.0
# Fri, 16 Feb 2018 06:10:57 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 16 Feb 2018 06:10:58 GMT
ENV YARN_VERSION=1.3.2
# Fri, 16 Feb 2018 06:11:04 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 16 Feb 2018 06:11:05 GMT
CMD ["node"]
# Fri, 16 Feb 2018 14:34:50 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 16 Feb 2018 14:34:51 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 14:34:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Feb 2018 14:34:55 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 16 Feb 2018 14:34:56 GMT
WORKDIR /usr/src/ghost
# Fri, 16 Feb 2018 14:34:57 GMT
ENV GHOST_VERSION=0.11.12
# Fri, 16 Feb 2018 14:39:52 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 16 Feb 2018 14:39:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 16 Feb 2018 14:39:55 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 16 Feb 2018 14:39:56 GMT
VOLUME [/var/lib/ghost]
# Fri, 16 Feb 2018 14:39:57 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 16 Feb 2018 14:39:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 16 Feb 2018 14:39:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Feb 2018 14:39:59 GMT
EXPOSE 2368/tcp
# Fri, 16 Feb 2018 14:40:00 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fdcdd98e305e9efc04799bdb8847b90cb4ea01a307f40fc9c372e2f9324a7c`  
		Last Modified: Thu, 15 Feb 2018 20:10:59 GMT  
		Size: 18.7 MB (18739852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee810e1ee468f4c114517395096d66f196a185c58cc1632fe5f9038a9a04328`  
		Last Modified: Fri, 16 Feb 2018 06:19:02 GMT  
		Size: 4.4 KB (4410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d10c4b66b3f23d5c2b78efa44492779a927d05781936d4fd77957485e4af280`  
		Last Modified: Fri, 16 Feb 2018 06:19:02 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a646e953333e866324ea23469494de5d25636462aa423254a700faa03ff62705`  
		Last Modified: Fri, 16 Feb 2018 06:31:21 GMT  
		Size: 14.8 MB (14762409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6e0dfe7d0a945a0282fdce87b61791264daa473c0f4677bf47c683ec54bc31`  
		Last Modified: Fri, 16 Feb 2018 06:31:09 GMT  
		Size: 1.0 MB (1010352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0a68eab9156b1cf721f7b26d4302aad07e025ffee3f7d12c2ed348e88ba297`  
		Last Modified: Fri, 16 Feb 2018 14:44:07 GMT  
		Size: 4.5 KB (4460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a2c66e5dd8d0f58c2a2c119fccf0e3484f937dbe02904bf98af9993026292b`  
		Last Modified: Fri, 16 Feb 2018 14:44:07 GMT  
		Size: 468.7 KB (468698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074e8f1367b34b515baca61929a1c7fd2d32b4f1f7c3357730403413fb9bb481`  
		Last Modified: Fri, 16 Feb 2018 14:44:05 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fd37bcb7b8cf1f9a8f68ceb7981223b3a54da517d289dd50e41eb6f1db9372`  
		Last Modified: Fri, 16 Feb 2018 14:44:22 GMT  
		Size: 32.2 MB (32164699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd6b02e5a7b31bd2f2ff547d7a6d041a9f9a0f04b03700ad9c7805a65247cde`  
		Last Modified: Fri, 16 Feb 2018 14:44:05 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83df7a9bf7d7328d92e47af3e219976343763cf7eadb2d9b784ac4c171c4bce`  
		Last Modified: Fri, 16 Feb 2018 14:44:05 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e84815c89e02973d5b5ce8099d58a3b500d3704906442b315d85bde16f51d1e0`  
		Last Modified: Fri, 16 Feb 2018 14:44:06 GMT  
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
$ docker pull ghost@sha256:dcecfafd3e0a414d54ca9c8960adebecb85a0c46a4ea62798dc1b9cd111e78e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.8 MB (119799524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1142cecdda27a164378e3c3c38077496b1d8f25456d97e7894fe20b78b52dd77`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:09:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:09:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 09:07:51 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 15 Feb 2018 09:11:34 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Thu, 15 Feb 2018 09:25:56 GMT
ENV NODE_VERSION=6.13.0
# Thu, 15 Feb 2018 09:26:48 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 15 Feb 2018 09:26:51 GMT
ENV YARN_VERSION=1.3.2
# Thu, 15 Feb 2018 09:27:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 15 Feb 2018 09:27:06 GMT
CMD ["node"]
# Thu, 15 Feb 2018 16:59:07 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 15 Feb 2018 16:59:08 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 16:59:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 16:59:27 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 15 Feb 2018 16:59:30 GMT
WORKDIR /usr/src/ghost
# Thu, 15 Feb 2018 16:59:34 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 15 Feb 2018 17:05:10 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 15 Feb 2018 17:05:13 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 15 Feb 2018 17:05:16 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 15 Feb 2018 17:05:22 GMT
VOLUME [/var/lib/ghost]
# Thu, 15 Feb 2018 17:05:25 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 15 Feb 2018 17:05:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 17:05:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 17:05:35 GMT
EXPOSE 2368/tcp
# Thu, 15 Feb 2018 17:05:37 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e115caf0b90102f293e585f18e067814aabf94a3b5e0cdd0faf1c4225f6c962`  
		Last Modified: Thu, 15 Feb 2018 08:22:40 GMT  
		Size: 19.2 MB (19202823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26e6ed61267c5a5ca8c980bb108155e7a0a0a422cbae93a1cb3f47f94da0a0a`  
		Last Modified: Thu, 15 Feb 2018 09:35:31 GMT  
		Size: 4.4 KB (4444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a915866d9e1c3883ce9f6fa6e2f97d3531fd7ce4939166bc2b53fdcb90c1c049`  
		Last Modified: Thu, 15 Feb 2018 09:35:32 GMT  
		Size: 117.7 KB (117660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cab87c0c409899a617e272987827c20b15e7b754db3af15f0408c6c67cf2c67`  
		Last Modified: Thu, 15 Feb 2018 09:40:24 GMT  
		Size: 14.5 MB (14537508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72a51a4b245046cd778d97210de6520a1414b17245d9ea05fe8d671c4e0ea3a`  
		Last Modified: Thu, 15 Feb 2018 09:40:23 GMT  
		Size: 1.0 MB (1010386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59f69834421475a2b359d3a9409f4b94b490b5e496220ed370167f344691d2e`  
		Last Modified: Thu, 15 Feb 2018 17:07:23 GMT  
		Size: 4.5 KB (4505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811491748c38b1e1cc81915b2e61318614c4ba873af4ab046d77900347b72247`  
		Last Modified: Thu, 15 Feb 2018 17:07:23 GMT  
		Size: 469.8 KB (469845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d99eda859349debb7053a422a0613bee2ec17bef7e6fd892395d31fd000d23`  
		Last Modified: Thu, 15 Feb 2018 17:07:20 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ae6acfdae36598d8e0fec9104d153adb954181571dbe10c7b3b118a05425f5f`  
		Last Modified: Thu, 15 Feb 2018 17:07:31 GMT  
		Size: 32.6 MB (32634116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29192608ff96778a54a75be050cecdda269ec215c4d9e288e0027e64e35cdf3c`  
		Last Modified: Thu, 15 Feb 2018 17:07:20 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbde55a3dd55b419cc78a87b8408687121841c3d8bb21dbdfde12cfb53cc4b3`  
		Last Modified: Thu, 15 Feb 2018 17:07:20 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a539fa416602dd4915409f12e91febabd77649db5246e71c453c0e8e9acda794`  
		Last Modified: Thu, 15 Feb 2018 17:07:20 GMT  
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
$ docker pull ghost@sha256:b3ace1ed6bdbfcace18306bd6a5690a8cafe5a7bcdea39f04c79f4751e612f34
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
$ docker pull ghost@sha256:6e8f15c9c7c0d176ff5cc0fe32c2296af693570389a7a3df4445e5a4872b89f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114331772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42acbb29f2e76175d6385c1495883b231b5270a805665354bf54e320fb888d03`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:01:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:01:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Feb 2018 15:37:54 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 17 Feb 2018 15:37:57 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Sat, 17 Feb 2018 15:41:38 GMT
ENV NODE_VERSION=6.13.0
# Sat, 17 Feb 2018 15:41:52 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 17 Feb 2018 15:41:52 GMT
ENV YARN_VERSION=1.3.2
# Sat, 17 Feb 2018 15:41:56 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 17 Feb 2018 15:41:57 GMT
CMD ["node"]
# Sat, 17 Feb 2018 22:28:54 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 17 Feb 2018 22:28:55 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Feb 2018 22:29:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 17 Feb 2018 22:29:01 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 17 Feb 2018 22:29:02 GMT
WORKDIR /usr/src/ghost
# Sat, 17 Feb 2018 22:29:02 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 17 Feb 2018 22:30:39 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 17 Feb 2018 22:30:40 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 17 Feb 2018 22:30:41 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 17 Feb 2018 22:30:42 GMT
VOLUME [/var/lib/ghost]
# Sat, 17 Feb 2018 22:30:42 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 17 Feb 2018 22:30:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 17 Feb 2018 22:44:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 22:44:15 GMT
EXPOSE 2368/tcp
# Sat, 17 Feb 2018 22:44:15 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851356ecf618f41550b3b8696fb9aad7925f72929c8345453107cce510437608`  
		Last Modified: Sat, 17 Feb 2018 07:15:16 GMT  
		Size: 19.3 MB (19266391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb492416b9f4f2bd1af663d5226ecf80d681762041ccb5d76988655b9ee802d4`  
		Last Modified: Sat, 17 Feb 2018 15:50:22 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c188a47fbe667aa0070347aeb8ccef1e1f7f488a51ce9975942a88c0f8bf14e4`  
		Last Modified: Sat, 17 Feb 2018 15:50:22 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b150b07b7e1a7551f5e310a67960814de62229410dc5b7804956754ce5efd6`  
		Last Modified: Sat, 17 Feb 2018 16:00:01 GMT  
		Size: 14.8 MB (14775283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599d78299041bba51883fdc6b8468f6752ca0a4c754d80ed3fea32043e6575dc`  
		Last Modified: Sat, 17 Feb 2018 15:59:56 GMT  
		Size: 1.0 MB (1010351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf99004a458574ec121e8d3b4dc68ee8f7dc4a9831c67eaff090e2fc5b1c92bc`  
		Last Modified: Sat, 17 Feb 2018 22:48:58 GMT  
		Size: 4.5 KB (4451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b744c9b214b933a521d79a55103bbf10de116103b4d2b037437c86e847bf54d`  
		Last Modified: Sat, 17 Feb 2018 22:48:58 GMT  
		Size: 500.7 KB (500667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5995ae125a790a6a93b22374fafdb094a51d930b48690cf1798492ec915733`  
		Last Modified: Sat, 17 Feb 2018 22:48:55 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b72ed42c698888e80365f914037ecd1e7e9125672c4c98c10bb78a800233fae`  
		Last Modified: Sat, 17 Feb 2018 22:49:15 GMT  
		Size: 26.0 MB (26043214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30fef2bc314d8cd6c3f824459a4cf5983aad15c03f9d7be86377490eebf200cd`  
		Last Modified: Sat, 17 Feb 2018 22:48:56 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec84097966ebbe8be529a1a42925dfc1eb3c7edd8019cc1a87a9a3e33f97b6a`  
		Last Modified: Sat, 17 Feb 2018 22:48:56 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e413fa9f5a469d47a08a31b18597aec617e0ecea1d9fa4c33482818e2c1f1d8`  
		Last Modified: Sat, 17 Feb 2018 22:48:55 GMT  
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
$ docker pull ghost@sha256:1b51b6c0b390a2fa75c25924677afcf5a09b3379049c30c875dcad0b5483e5e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117207451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99d9c8be8fdf2cf666e137e508a349764c79235e25aa984a400e528784f695a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:21:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:21:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 05:59:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 16 Feb 2018 05:59:27 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Fri, 16 Feb 2018 06:10:09 GMT
ENV NODE_VERSION=6.13.0
# Fri, 16 Feb 2018 06:10:57 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 16 Feb 2018 06:10:58 GMT
ENV YARN_VERSION=1.3.2
# Fri, 16 Feb 2018 06:11:04 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 16 Feb 2018 06:11:05 GMT
CMD ["node"]
# Fri, 16 Feb 2018 14:34:50 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 16 Feb 2018 14:34:51 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 14:34:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Feb 2018 14:34:55 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 16 Feb 2018 14:34:56 GMT
WORKDIR /usr/src/ghost
# Fri, 16 Feb 2018 14:34:57 GMT
ENV GHOST_VERSION=0.11.12
# Fri, 16 Feb 2018 14:39:52 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 16 Feb 2018 14:39:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 16 Feb 2018 14:39:55 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 16 Feb 2018 14:39:56 GMT
VOLUME [/var/lib/ghost]
# Fri, 16 Feb 2018 14:39:57 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 16 Feb 2018 14:39:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 16 Feb 2018 14:39:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Feb 2018 14:39:59 GMT
EXPOSE 2368/tcp
# Fri, 16 Feb 2018 14:40:00 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fdcdd98e305e9efc04799bdb8847b90cb4ea01a307f40fc9c372e2f9324a7c`  
		Last Modified: Thu, 15 Feb 2018 20:10:59 GMT  
		Size: 18.7 MB (18739852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee810e1ee468f4c114517395096d66f196a185c58cc1632fe5f9038a9a04328`  
		Last Modified: Fri, 16 Feb 2018 06:19:02 GMT  
		Size: 4.4 KB (4410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d10c4b66b3f23d5c2b78efa44492779a927d05781936d4fd77957485e4af280`  
		Last Modified: Fri, 16 Feb 2018 06:19:02 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a646e953333e866324ea23469494de5d25636462aa423254a700faa03ff62705`  
		Last Modified: Fri, 16 Feb 2018 06:31:21 GMT  
		Size: 14.8 MB (14762409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6e0dfe7d0a945a0282fdce87b61791264daa473c0f4677bf47c683ec54bc31`  
		Last Modified: Fri, 16 Feb 2018 06:31:09 GMT  
		Size: 1.0 MB (1010352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0a68eab9156b1cf721f7b26d4302aad07e025ffee3f7d12c2ed348e88ba297`  
		Last Modified: Fri, 16 Feb 2018 14:44:07 GMT  
		Size: 4.5 KB (4460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a2c66e5dd8d0f58c2a2c119fccf0e3484f937dbe02904bf98af9993026292b`  
		Last Modified: Fri, 16 Feb 2018 14:44:07 GMT  
		Size: 468.7 KB (468698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074e8f1367b34b515baca61929a1c7fd2d32b4f1f7c3357730403413fb9bb481`  
		Last Modified: Fri, 16 Feb 2018 14:44:05 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fd37bcb7b8cf1f9a8f68ceb7981223b3a54da517d289dd50e41eb6f1db9372`  
		Last Modified: Fri, 16 Feb 2018 14:44:22 GMT  
		Size: 32.2 MB (32164699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd6b02e5a7b31bd2f2ff547d7a6d041a9f9a0f04b03700ad9c7805a65247cde`  
		Last Modified: Fri, 16 Feb 2018 14:44:05 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83df7a9bf7d7328d92e47af3e219976343763cf7eadb2d9b784ac4c171c4bce`  
		Last Modified: Fri, 16 Feb 2018 14:44:05 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e84815c89e02973d5b5ce8099d58a3b500d3704906442b315d85bde16f51d1e0`  
		Last Modified: Fri, 16 Feb 2018 14:44:06 GMT  
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
$ docker pull ghost@sha256:dcecfafd3e0a414d54ca9c8960adebecb85a0c46a4ea62798dc1b9cd111e78e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.8 MB (119799524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1142cecdda27a164378e3c3c38077496b1d8f25456d97e7894fe20b78b52dd77`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:09:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:09:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 09:07:51 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 15 Feb 2018 09:11:34 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Thu, 15 Feb 2018 09:25:56 GMT
ENV NODE_VERSION=6.13.0
# Thu, 15 Feb 2018 09:26:48 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 15 Feb 2018 09:26:51 GMT
ENV YARN_VERSION=1.3.2
# Thu, 15 Feb 2018 09:27:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 15 Feb 2018 09:27:06 GMT
CMD ["node"]
# Thu, 15 Feb 2018 16:59:07 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 15 Feb 2018 16:59:08 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 16:59:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 16:59:27 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 15 Feb 2018 16:59:30 GMT
WORKDIR /usr/src/ghost
# Thu, 15 Feb 2018 16:59:34 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 15 Feb 2018 17:05:10 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 15 Feb 2018 17:05:13 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 15 Feb 2018 17:05:16 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 15 Feb 2018 17:05:22 GMT
VOLUME [/var/lib/ghost]
# Thu, 15 Feb 2018 17:05:25 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 15 Feb 2018 17:05:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 17:05:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 17:05:35 GMT
EXPOSE 2368/tcp
# Thu, 15 Feb 2018 17:05:37 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e115caf0b90102f293e585f18e067814aabf94a3b5e0cdd0faf1c4225f6c962`  
		Last Modified: Thu, 15 Feb 2018 08:22:40 GMT  
		Size: 19.2 MB (19202823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26e6ed61267c5a5ca8c980bb108155e7a0a0a422cbae93a1cb3f47f94da0a0a`  
		Last Modified: Thu, 15 Feb 2018 09:35:31 GMT  
		Size: 4.4 KB (4444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a915866d9e1c3883ce9f6fa6e2f97d3531fd7ce4939166bc2b53fdcb90c1c049`  
		Last Modified: Thu, 15 Feb 2018 09:35:32 GMT  
		Size: 117.7 KB (117660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cab87c0c409899a617e272987827c20b15e7b754db3af15f0408c6c67cf2c67`  
		Last Modified: Thu, 15 Feb 2018 09:40:24 GMT  
		Size: 14.5 MB (14537508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72a51a4b245046cd778d97210de6520a1414b17245d9ea05fe8d671c4e0ea3a`  
		Last Modified: Thu, 15 Feb 2018 09:40:23 GMT  
		Size: 1.0 MB (1010386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59f69834421475a2b359d3a9409f4b94b490b5e496220ed370167f344691d2e`  
		Last Modified: Thu, 15 Feb 2018 17:07:23 GMT  
		Size: 4.5 KB (4505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811491748c38b1e1cc81915b2e61318614c4ba873af4ab046d77900347b72247`  
		Last Modified: Thu, 15 Feb 2018 17:07:23 GMT  
		Size: 469.8 KB (469845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d99eda859349debb7053a422a0613bee2ec17bef7e6fd892395d31fd000d23`  
		Last Modified: Thu, 15 Feb 2018 17:07:20 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ae6acfdae36598d8e0fec9104d153adb954181571dbe10c7b3b118a05425f5f`  
		Last Modified: Thu, 15 Feb 2018 17:07:31 GMT  
		Size: 32.6 MB (32634116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29192608ff96778a54a75be050cecdda269ec215c4d9e288e0027e64e35cdf3c`  
		Last Modified: Thu, 15 Feb 2018 17:07:20 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbde55a3dd55b419cc78a87b8408687121841c3d8bb21dbdfde12cfb53cc4b3`  
		Last Modified: Thu, 15 Feb 2018 17:07:20 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a539fa416602dd4915409f12e91febabd77649db5246e71c453c0e8e9acda794`  
		Last Modified: Thu, 15 Feb 2018 17:07:20 GMT  
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
$ docker pull ghost@sha256:b3ace1ed6bdbfcace18306bd6a5690a8cafe5a7bcdea39f04c79f4751e612f34
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
$ docker pull ghost@sha256:6e8f15c9c7c0d176ff5cc0fe32c2296af693570389a7a3df4445e5a4872b89f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114331772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42acbb29f2e76175d6385c1495883b231b5270a805665354bf54e320fb888d03`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:01:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:01:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Feb 2018 15:37:54 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 17 Feb 2018 15:37:57 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Sat, 17 Feb 2018 15:41:38 GMT
ENV NODE_VERSION=6.13.0
# Sat, 17 Feb 2018 15:41:52 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 17 Feb 2018 15:41:52 GMT
ENV YARN_VERSION=1.3.2
# Sat, 17 Feb 2018 15:41:56 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 17 Feb 2018 15:41:57 GMT
CMD ["node"]
# Sat, 17 Feb 2018 22:28:54 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 17 Feb 2018 22:28:55 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Feb 2018 22:29:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 17 Feb 2018 22:29:01 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 17 Feb 2018 22:29:02 GMT
WORKDIR /usr/src/ghost
# Sat, 17 Feb 2018 22:29:02 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 17 Feb 2018 22:30:39 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 17 Feb 2018 22:30:40 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 17 Feb 2018 22:30:41 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 17 Feb 2018 22:30:42 GMT
VOLUME [/var/lib/ghost]
# Sat, 17 Feb 2018 22:30:42 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 17 Feb 2018 22:30:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 17 Feb 2018 22:44:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 22:44:15 GMT
EXPOSE 2368/tcp
# Sat, 17 Feb 2018 22:44:15 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851356ecf618f41550b3b8696fb9aad7925f72929c8345453107cce510437608`  
		Last Modified: Sat, 17 Feb 2018 07:15:16 GMT  
		Size: 19.3 MB (19266391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb492416b9f4f2bd1af663d5226ecf80d681762041ccb5d76988655b9ee802d4`  
		Last Modified: Sat, 17 Feb 2018 15:50:22 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c188a47fbe667aa0070347aeb8ccef1e1f7f488a51ce9975942a88c0f8bf14e4`  
		Last Modified: Sat, 17 Feb 2018 15:50:22 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b150b07b7e1a7551f5e310a67960814de62229410dc5b7804956754ce5efd6`  
		Last Modified: Sat, 17 Feb 2018 16:00:01 GMT  
		Size: 14.8 MB (14775283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599d78299041bba51883fdc6b8468f6752ca0a4c754d80ed3fea32043e6575dc`  
		Last Modified: Sat, 17 Feb 2018 15:59:56 GMT  
		Size: 1.0 MB (1010351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf99004a458574ec121e8d3b4dc68ee8f7dc4a9831c67eaff090e2fc5b1c92bc`  
		Last Modified: Sat, 17 Feb 2018 22:48:58 GMT  
		Size: 4.5 KB (4451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b744c9b214b933a521d79a55103bbf10de116103b4d2b037437c86e847bf54d`  
		Last Modified: Sat, 17 Feb 2018 22:48:58 GMT  
		Size: 500.7 KB (500667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5995ae125a790a6a93b22374fafdb094a51d930b48690cf1798492ec915733`  
		Last Modified: Sat, 17 Feb 2018 22:48:55 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b72ed42c698888e80365f914037ecd1e7e9125672c4c98c10bb78a800233fae`  
		Last Modified: Sat, 17 Feb 2018 22:49:15 GMT  
		Size: 26.0 MB (26043214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30fef2bc314d8cd6c3f824459a4cf5983aad15c03f9d7be86377490eebf200cd`  
		Last Modified: Sat, 17 Feb 2018 22:48:56 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec84097966ebbe8be529a1a42925dfc1eb3c7edd8019cc1a87a9a3e33f97b6a`  
		Last Modified: Sat, 17 Feb 2018 22:48:56 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e413fa9f5a469d47a08a31b18597aec617e0ecea1d9fa4c33482818e2c1f1d8`  
		Last Modified: Sat, 17 Feb 2018 22:48:55 GMT  
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
$ docker pull ghost@sha256:1b51b6c0b390a2fa75c25924677afcf5a09b3379049c30c875dcad0b5483e5e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117207451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99d9c8be8fdf2cf666e137e508a349764c79235e25aa984a400e528784f695a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:21:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:21:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 05:59:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 16 Feb 2018 05:59:27 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Fri, 16 Feb 2018 06:10:09 GMT
ENV NODE_VERSION=6.13.0
# Fri, 16 Feb 2018 06:10:57 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 16 Feb 2018 06:10:58 GMT
ENV YARN_VERSION=1.3.2
# Fri, 16 Feb 2018 06:11:04 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 16 Feb 2018 06:11:05 GMT
CMD ["node"]
# Fri, 16 Feb 2018 14:34:50 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 16 Feb 2018 14:34:51 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 14:34:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Feb 2018 14:34:55 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 16 Feb 2018 14:34:56 GMT
WORKDIR /usr/src/ghost
# Fri, 16 Feb 2018 14:34:57 GMT
ENV GHOST_VERSION=0.11.12
# Fri, 16 Feb 2018 14:39:52 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 16 Feb 2018 14:39:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 16 Feb 2018 14:39:55 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 16 Feb 2018 14:39:56 GMT
VOLUME [/var/lib/ghost]
# Fri, 16 Feb 2018 14:39:57 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 16 Feb 2018 14:39:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 16 Feb 2018 14:39:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Feb 2018 14:39:59 GMT
EXPOSE 2368/tcp
# Fri, 16 Feb 2018 14:40:00 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fdcdd98e305e9efc04799bdb8847b90cb4ea01a307f40fc9c372e2f9324a7c`  
		Last Modified: Thu, 15 Feb 2018 20:10:59 GMT  
		Size: 18.7 MB (18739852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee810e1ee468f4c114517395096d66f196a185c58cc1632fe5f9038a9a04328`  
		Last Modified: Fri, 16 Feb 2018 06:19:02 GMT  
		Size: 4.4 KB (4410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d10c4b66b3f23d5c2b78efa44492779a927d05781936d4fd77957485e4af280`  
		Last Modified: Fri, 16 Feb 2018 06:19:02 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a646e953333e866324ea23469494de5d25636462aa423254a700faa03ff62705`  
		Last Modified: Fri, 16 Feb 2018 06:31:21 GMT  
		Size: 14.8 MB (14762409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6e0dfe7d0a945a0282fdce87b61791264daa473c0f4677bf47c683ec54bc31`  
		Last Modified: Fri, 16 Feb 2018 06:31:09 GMT  
		Size: 1.0 MB (1010352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0a68eab9156b1cf721f7b26d4302aad07e025ffee3f7d12c2ed348e88ba297`  
		Last Modified: Fri, 16 Feb 2018 14:44:07 GMT  
		Size: 4.5 KB (4460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a2c66e5dd8d0f58c2a2c119fccf0e3484f937dbe02904bf98af9993026292b`  
		Last Modified: Fri, 16 Feb 2018 14:44:07 GMT  
		Size: 468.7 KB (468698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074e8f1367b34b515baca61929a1c7fd2d32b4f1f7c3357730403413fb9bb481`  
		Last Modified: Fri, 16 Feb 2018 14:44:05 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fd37bcb7b8cf1f9a8f68ceb7981223b3a54da517d289dd50e41eb6f1db9372`  
		Last Modified: Fri, 16 Feb 2018 14:44:22 GMT  
		Size: 32.2 MB (32164699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd6b02e5a7b31bd2f2ff547d7a6d041a9f9a0f04b03700ad9c7805a65247cde`  
		Last Modified: Fri, 16 Feb 2018 14:44:05 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83df7a9bf7d7328d92e47af3e219976343763cf7eadb2d9b784ac4c171c4bce`  
		Last Modified: Fri, 16 Feb 2018 14:44:05 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e84815c89e02973d5b5ce8099d58a3b500d3704906442b315d85bde16f51d1e0`  
		Last Modified: Fri, 16 Feb 2018 14:44:06 GMT  
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
$ docker pull ghost@sha256:dcecfafd3e0a414d54ca9c8960adebecb85a0c46a4ea62798dc1b9cd111e78e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.8 MB (119799524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1142cecdda27a164378e3c3c38077496b1d8f25456d97e7894fe20b78b52dd77`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:09:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:09:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 09:07:51 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 15 Feb 2018 09:11:34 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Thu, 15 Feb 2018 09:25:56 GMT
ENV NODE_VERSION=6.13.0
# Thu, 15 Feb 2018 09:26:48 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 15 Feb 2018 09:26:51 GMT
ENV YARN_VERSION=1.3.2
# Thu, 15 Feb 2018 09:27:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 15 Feb 2018 09:27:06 GMT
CMD ["node"]
# Thu, 15 Feb 2018 16:59:07 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 15 Feb 2018 16:59:08 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 16:59:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 16:59:27 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 15 Feb 2018 16:59:30 GMT
WORKDIR /usr/src/ghost
# Thu, 15 Feb 2018 16:59:34 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 15 Feb 2018 17:05:10 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 15 Feb 2018 17:05:13 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 15 Feb 2018 17:05:16 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 15 Feb 2018 17:05:22 GMT
VOLUME [/var/lib/ghost]
# Thu, 15 Feb 2018 17:05:25 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 15 Feb 2018 17:05:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 17:05:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 17:05:35 GMT
EXPOSE 2368/tcp
# Thu, 15 Feb 2018 17:05:37 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e115caf0b90102f293e585f18e067814aabf94a3b5e0cdd0faf1c4225f6c962`  
		Last Modified: Thu, 15 Feb 2018 08:22:40 GMT  
		Size: 19.2 MB (19202823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26e6ed61267c5a5ca8c980bb108155e7a0a0a422cbae93a1cb3f47f94da0a0a`  
		Last Modified: Thu, 15 Feb 2018 09:35:31 GMT  
		Size: 4.4 KB (4444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a915866d9e1c3883ce9f6fa6e2f97d3531fd7ce4939166bc2b53fdcb90c1c049`  
		Last Modified: Thu, 15 Feb 2018 09:35:32 GMT  
		Size: 117.7 KB (117660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cab87c0c409899a617e272987827c20b15e7b754db3af15f0408c6c67cf2c67`  
		Last Modified: Thu, 15 Feb 2018 09:40:24 GMT  
		Size: 14.5 MB (14537508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72a51a4b245046cd778d97210de6520a1414b17245d9ea05fe8d671c4e0ea3a`  
		Last Modified: Thu, 15 Feb 2018 09:40:23 GMT  
		Size: 1.0 MB (1010386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59f69834421475a2b359d3a9409f4b94b490b5e496220ed370167f344691d2e`  
		Last Modified: Thu, 15 Feb 2018 17:07:23 GMT  
		Size: 4.5 KB (4505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811491748c38b1e1cc81915b2e61318614c4ba873af4ab046d77900347b72247`  
		Last Modified: Thu, 15 Feb 2018 17:07:23 GMT  
		Size: 469.8 KB (469845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d99eda859349debb7053a422a0613bee2ec17bef7e6fd892395d31fd000d23`  
		Last Modified: Thu, 15 Feb 2018 17:07:20 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ae6acfdae36598d8e0fec9104d153adb954181571dbe10c7b3b118a05425f5f`  
		Last Modified: Thu, 15 Feb 2018 17:07:31 GMT  
		Size: 32.6 MB (32634116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29192608ff96778a54a75be050cecdda269ec215c4d9e288e0027e64e35cdf3c`  
		Last Modified: Thu, 15 Feb 2018 17:07:20 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbde55a3dd55b419cc78a87b8408687121841c3d8bb21dbdfde12cfb53cc4b3`  
		Last Modified: Thu, 15 Feb 2018 17:07:20 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a539fa416602dd4915409f12e91febabd77649db5246e71c453c0e8e9acda794`  
		Last Modified: Thu, 15 Feb 2018 17:07:20 GMT  
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
$ docker pull ghost@sha256:8f89d430466d21fbb2108ba84da18677ab4864fa1c379036938a70bcf13e64e1
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
$ docker pull ghost@sha256:43f2160f2bd8b382eb3472bc744dabde5f94a51492978a203ee629d9dd3fa114
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.8 MB (211776518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a12b4cd44e65a9ecaf1cd517cec3fb84c6a0fdfac02104337b96f4a167f87e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:01:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:01:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Feb 2018 15:37:54 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 17 Feb 2018 15:37:57 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Sat, 17 Feb 2018 15:41:38 GMT
ENV NODE_VERSION=6.13.0
# Sat, 17 Feb 2018 15:41:52 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 17 Feb 2018 15:41:52 GMT
ENV YARN_VERSION=1.3.2
# Sat, 17 Feb 2018 15:41:56 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 17 Feb 2018 15:41:57 GMT
CMD ["node"]
# Sat, 17 Feb 2018 22:11:08 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Feb 2018 22:11:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 17 Feb 2018 22:11:13 GMT
ENV NODE_ENV=production
# Sat, 17 Feb 2018 22:11:14 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Sat, 17 Feb 2018 22:11:41 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 17 Feb 2018 22:11:42 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 17 Feb 2018 22:11:42 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 17 Feb 2018 22:11:42 GMT
ENV GHOST_VERSION=1.21.2
# Sat, 17 Feb 2018 22:13:16 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 17 Feb 2018 22:13:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 17 Feb 2018 22:13:40 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 17 Feb 2018 22:13:40 GMT
WORKDIR /var/lib/ghost
# Sat, 17 Feb 2018 22:13:41 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 17 Feb 2018 22:13:42 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 17 Feb 2018 22:13:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 22:13:43 GMT
EXPOSE 2368/tcp
# Sat, 17 Feb 2018 22:13:43 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851356ecf618f41550b3b8696fb9aad7925f72929c8345453107cce510437608`  
		Last Modified: Sat, 17 Feb 2018 07:15:16 GMT  
		Size: 19.3 MB (19266391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb492416b9f4f2bd1af663d5226ecf80d681762041ccb5d76988655b9ee802d4`  
		Last Modified: Sat, 17 Feb 2018 15:50:22 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c188a47fbe667aa0070347aeb8ccef1e1f7f488a51ce9975942a88c0f8bf14e4`  
		Last Modified: Sat, 17 Feb 2018 15:50:22 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b150b07b7e1a7551f5e310a67960814de62229410dc5b7804956754ce5efd6`  
		Last Modified: Sat, 17 Feb 2018 16:00:01 GMT  
		Size: 14.8 MB (14775283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599d78299041bba51883fdc6b8468f6752ca0a4c754d80ed3fea32043e6575dc`  
		Last Modified: Sat, 17 Feb 2018 15:59:56 GMT  
		Size: 1.0 MB (1010351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d94985b47101ad4fd021e4a3223481ad7846b48beb1818e4edc43d00ba71869`  
		Last Modified: Sat, 17 Feb 2018 22:44:50 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fdffaf42c0fdf0908067614e3c8d31d305f76fac5d6905007e6813498e753e8`  
		Last Modified: Sat, 17 Feb 2018 22:45:17 GMT  
		Size: 19.4 MB (19406594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ce322178476b1746d5709fb9b6f036ddf45f4cce3a7b9d4e1cff40e9612f1a`  
		Last Modified: Sat, 17 Feb 2018 22:45:51 GMT  
		Size: 96.3 MB (96272275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b9da041b8e5ff50a833dee57f88833693f57f99c58504e2d27a716befb47ab`  
		Last Modified: Sat, 17 Feb 2018 22:44:51 GMT  
		Size: 7.8 MB (7814073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9dd449cb25c6e2114434e7f432c610cc9262c6d39d6db6df79419a96df35b7`  
		Last Modified: Sat, 17 Feb 2018 22:44:50 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:afebe6abfa1bd7419d41fafee14165cec0d7d5d7026e8b68e1ecbcc65bcc1d24
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.8 MB (212759493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e33893d49d99a4b328064a0d8d0104602b291157371ded19ec49f608e86dd2c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:21:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:21:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 05:59:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 16 Feb 2018 05:59:27 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Fri, 16 Feb 2018 06:10:09 GMT
ENV NODE_VERSION=6.13.0
# Fri, 16 Feb 2018 06:10:57 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 16 Feb 2018 06:10:58 GMT
ENV YARN_VERSION=1.3.2
# Fri, 16 Feb 2018 06:11:04 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 16 Feb 2018 06:11:05 GMT
CMD ["node"]
# Fri, 16 Feb 2018 14:27:19 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 14:27:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Feb 2018 14:27:25 GMT
ENV NODE_ENV=production
# Fri, 16 Feb 2018 14:27:25 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Fri, 16 Feb 2018 14:28:24 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 16 Feb 2018 14:28:25 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 16 Feb 2018 14:28:26 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sun, 18 Feb 2018 11:41:43 GMT
ENV GHOST_VERSION=1.21.2
# Sun, 18 Feb 2018 11:43:30 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sun, 18 Feb 2018 11:43:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sun, 18 Feb 2018 11:47:53 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sun, 18 Feb 2018 11:47:54 GMT
WORKDIR /var/lib/ghost
# Sun, 18 Feb 2018 11:47:55 GMT
VOLUME [/var/lib/ghost/content]
# Sun, 18 Feb 2018 11:47:55 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sun, 18 Feb 2018 11:47:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 11:47:56 GMT
EXPOSE 2368/tcp
# Sun, 18 Feb 2018 11:47:57 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fdcdd98e305e9efc04799bdb8847b90cb4ea01a307f40fc9c372e2f9324a7c`  
		Last Modified: Thu, 15 Feb 2018 20:10:59 GMT  
		Size: 18.7 MB (18739852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee810e1ee468f4c114517395096d66f196a185c58cc1632fe5f9038a9a04328`  
		Last Modified: Fri, 16 Feb 2018 06:19:02 GMT  
		Size: 4.4 KB (4410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d10c4b66b3f23d5c2b78efa44492779a927d05781936d4fd77957485e4af280`  
		Last Modified: Fri, 16 Feb 2018 06:19:02 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a646e953333e866324ea23469494de5d25636462aa423254a700faa03ff62705`  
		Last Modified: Fri, 16 Feb 2018 06:31:21 GMT  
		Size: 14.8 MB (14762409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6e0dfe7d0a945a0282fdce87b61791264daa473c0f4677bf47c683ec54bc31`  
		Last Modified: Fri, 16 Feb 2018 06:31:09 GMT  
		Size: 1.0 MB (1010352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa79ba0b7a0a229caeed67376260ac1be4469953472ee805320f12959326702`  
		Last Modified: Fri, 16 Feb 2018 14:40:21 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d247cd0ddb4c78f08513f7b77975bf7f8960ba63abbede8310a9e7f5f930a0a2`  
		Last Modified: Fri, 16 Feb 2018 14:40:29 GMT  
		Size: 19.5 MB (19451830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043cf30db7186872c5cd40a4f8678cd78877eeeaf61a47a51a475b22cbdad6eb`  
		Last Modified: Sun, 18 Feb 2018 11:48:59 GMT  
		Size: 91.2 MB (91171316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01759a7a02adca0507fa7c943c4ba74e6dabb27f9695d721bb9c7310d9e050b9`  
		Last Modified: Sun, 18 Feb 2018 11:48:29 GMT  
		Size: 17.1 MB (17098592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c66219764670e66a098f6385e053316a7c44964b0200d206195d83fce28f11`  
		Last Modified: Sun, 18 Feb 2018 11:55:24 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; 386

```console
$ docker pull ghost@sha256:fdb935a642110af43fa6283d346bd82ea2d0189c0e1366d822e9d470c935a13d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.1 MB (218126323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2018aff6caabd39713dffbab5caff552d8b2b617d6aa0e1828d233025ecbce92`
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
# Mon, 19 Feb 2018 16:23:42 GMT
ENV GHOST_VERSION=1.21.2
# Mon, 19 Feb 2018 16:26:33 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 19 Feb 2018 16:37:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 19 Feb 2018 16:39:45 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 19 Feb 2018 16:47:52 GMT
WORKDIR /var/lib/ghost
# Mon, 19 Feb 2018 16:47:52 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 19 Feb 2018 16:47:52 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Mon, 19 Feb 2018 16:47:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Feb 2018 16:47:53 GMT
EXPOSE 2368/tcp
# Mon, 19 Feb 2018 16:47:53 GMT
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
	-	`sha256:d35368fab9067bac4ddc785b719f86d64205f5d77cc482f62681dd930df598b8`  
		Last Modified: Mon, 19 Feb 2018 17:04:27 GMT  
		Size: 91.2 MB (91161849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922a7e84eba67f2776b65b64fe01a36a29f84c202b434b7b7c69c346a490aa72`  
		Last Modified: Mon, 19 Feb 2018 17:03:41 GMT  
		Size: 17.2 MB (17231792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf1f2c6070fd72252891c85b75037d5fbefc7f96ee66f7a0b966fdcb6954495`  
		Last Modified: Mon, 19 Feb 2018 17:03:34 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; ppc64le

```console
$ docker pull ghost@sha256:f1c0779f70ba54616fcd99a32d766de4d43ab1fb1bc4c40b269fecdb090b2450
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.4 MB (215404448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87335437f3569eed04cc3dc57f2461c583963319bba789b31c63d98a6bf7c731`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:09:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:09:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 09:07:51 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 15 Feb 2018 09:11:34 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Thu, 15 Feb 2018 09:25:56 GMT
ENV NODE_VERSION=6.13.0
# Thu, 15 Feb 2018 09:26:48 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 15 Feb 2018 09:26:51 GMT
ENV YARN_VERSION=1.3.2
# Thu, 15 Feb 2018 09:27:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 15 Feb 2018 09:27:06 GMT
CMD ["node"]
# Thu, 15 Feb 2018 16:50:07 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 16:50:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 16:50:23 GMT
ENV NODE_ENV=production
# Thu, 15 Feb 2018 16:50:26 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Thu, 15 Feb 2018 16:51:22 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 15 Feb 2018 16:51:25 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 15 Feb 2018 16:51:33 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sun, 18 Feb 2018 02:26:28 GMT
ENV GHOST_VERSION=1.21.2
# Sun, 18 Feb 2018 02:28:54 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sun, 18 Feb 2018 02:28:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sun, 18 Feb 2018 02:37:34 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sun, 18 Feb 2018 02:38:49 GMT
WORKDIR /var/lib/ghost
# Sun, 18 Feb 2018 02:38:52 GMT
VOLUME [/var/lib/ghost/content]
# Sun, 18 Feb 2018 02:38:57 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sun, 18 Feb 2018 02:39:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 02:39:02 GMT
EXPOSE 2368/tcp
# Sun, 18 Feb 2018 02:39:04 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e115caf0b90102f293e585f18e067814aabf94a3b5e0cdd0faf1c4225f6c962`  
		Last Modified: Thu, 15 Feb 2018 08:22:40 GMT  
		Size: 19.2 MB (19202823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26e6ed61267c5a5ca8c980bb108155e7a0a0a422cbae93a1cb3f47f94da0a0a`  
		Last Modified: Thu, 15 Feb 2018 09:35:31 GMT  
		Size: 4.4 KB (4444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a915866d9e1c3883ce9f6fa6e2f97d3531fd7ce4939166bc2b53fdcb90c1c049`  
		Last Modified: Thu, 15 Feb 2018 09:35:32 GMT  
		Size: 117.7 KB (117660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cab87c0c409899a617e272987827c20b15e7b754db3af15f0408c6c67cf2c67`  
		Last Modified: Thu, 15 Feb 2018 09:40:24 GMT  
		Size: 14.5 MB (14537508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72a51a4b245046cd778d97210de6520a1414b17245d9ea05fe8d671c4e0ea3a`  
		Last Modified: Thu, 15 Feb 2018 09:40:23 GMT  
		Size: 1.0 MB (1010386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475836126a2887cde522bdf64631a83b38167cad1a48d107d171f9dfb8a7bee`  
		Last Modified: Thu, 15 Feb 2018 17:06:05 GMT  
		Size: 469.8 KB (469841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f141097ca808a2ae98b175bfb74c1358edcd2b3eef5decb5ea0aa7a57853dd8c`  
		Last Modified: Thu, 15 Feb 2018 17:06:11 GMT  
		Size: 19.5 MB (19451383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d220f445e1129d416d5d062b53da18b3d06c608ec586c2b4cca8770b01f14c`  
		Last Modified: Sun, 18 Feb 2018 02:39:50 GMT  
		Size: 91.2 MB (91166720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaae64f571adce85673f07011b4e84a92523f92655a0b65e9854877bb45c751f`  
		Last Modified: Sun, 18 Feb 2018 02:39:27 GMT  
		Size: 17.6 MB (17626041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405ffe6406b6d580d156d5442bf74ad7ee38a20fd0cc7f83a1f878173f2cfac0`  
		Last Modified: Sun, 18 Feb 2018 02:39:22 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; s390x

```console
$ docker pull ghost@sha256:54aca7a3ca1c04267aacde686ca656abd19a78fcf444403dee4add5140924421
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.1 MB (217079373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdd73c962c6ca730401aa441e63ca4c2cf9df39fe7b6a0e43a2270dba6d4317a`
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
# Sun, 18 Feb 2018 15:22:25 GMT
ENV GHOST_VERSION=1.21.2
# Sun, 18 Feb 2018 15:22:50 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sun, 18 Feb 2018 15:22:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sun, 18 Feb 2018 15:24:16 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sun, 18 Feb 2018 15:24:16 GMT
WORKDIR /var/lib/ghost
# Sun, 18 Feb 2018 15:24:17 GMT
VOLUME [/var/lib/ghost/content]
# Sun, 18 Feb 2018 15:24:17 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sun, 18 Feb 2018 15:24:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 15:24:17 GMT
EXPOSE 2368/tcp
# Sun, 18 Feb 2018 15:24:17 GMT
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
	-	`sha256:24d0d41c250719af62a76289ce8c5d4f870eece336b07dc68f7bc92684147664`  
		Last Modified: Sun, 18 Feb 2018 15:24:51 GMT  
		Size: 91.2 MB (91163569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4e408f7cc5b3986e7d3f84d080fee2588831aa4818fdc08423cc6b61022ac2`  
		Last Modified: Sun, 18 Feb 2018 15:24:37 GMT  
		Size: 17.7 MB (17666592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9e83799452b3141cec864ea45eee131bab5fd7d00b1bbefeab35769b54d490`  
		Last Modified: Sun, 18 Feb 2018 15:24:35 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.21`

```console
$ docker pull ghost@sha256:8f89d430466d21fbb2108ba84da18677ab4864fa1c379036938a70bcf13e64e1
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
$ docker pull ghost@sha256:43f2160f2bd8b382eb3472bc744dabde5f94a51492978a203ee629d9dd3fa114
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.8 MB (211776518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a12b4cd44e65a9ecaf1cd517cec3fb84c6a0fdfac02104337b96f4a167f87e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:01:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:01:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Feb 2018 15:37:54 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 17 Feb 2018 15:37:57 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Sat, 17 Feb 2018 15:41:38 GMT
ENV NODE_VERSION=6.13.0
# Sat, 17 Feb 2018 15:41:52 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 17 Feb 2018 15:41:52 GMT
ENV YARN_VERSION=1.3.2
# Sat, 17 Feb 2018 15:41:56 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 17 Feb 2018 15:41:57 GMT
CMD ["node"]
# Sat, 17 Feb 2018 22:11:08 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Feb 2018 22:11:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 17 Feb 2018 22:11:13 GMT
ENV NODE_ENV=production
# Sat, 17 Feb 2018 22:11:14 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Sat, 17 Feb 2018 22:11:41 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 17 Feb 2018 22:11:42 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 17 Feb 2018 22:11:42 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 17 Feb 2018 22:11:42 GMT
ENV GHOST_VERSION=1.21.2
# Sat, 17 Feb 2018 22:13:16 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 17 Feb 2018 22:13:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 17 Feb 2018 22:13:40 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 17 Feb 2018 22:13:40 GMT
WORKDIR /var/lib/ghost
# Sat, 17 Feb 2018 22:13:41 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 17 Feb 2018 22:13:42 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 17 Feb 2018 22:13:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 22:13:43 GMT
EXPOSE 2368/tcp
# Sat, 17 Feb 2018 22:13:43 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851356ecf618f41550b3b8696fb9aad7925f72929c8345453107cce510437608`  
		Last Modified: Sat, 17 Feb 2018 07:15:16 GMT  
		Size: 19.3 MB (19266391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb492416b9f4f2bd1af663d5226ecf80d681762041ccb5d76988655b9ee802d4`  
		Last Modified: Sat, 17 Feb 2018 15:50:22 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c188a47fbe667aa0070347aeb8ccef1e1f7f488a51ce9975942a88c0f8bf14e4`  
		Last Modified: Sat, 17 Feb 2018 15:50:22 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b150b07b7e1a7551f5e310a67960814de62229410dc5b7804956754ce5efd6`  
		Last Modified: Sat, 17 Feb 2018 16:00:01 GMT  
		Size: 14.8 MB (14775283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599d78299041bba51883fdc6b8468f6752ca0a4c754d80ed3fea32043e6575dc`  
		Last Modified: Sat, 17 Feb 2018 15:59:56 GMT  
		Size: 1.0 MB (1010351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d94985b47101ad4fd021e4a3223481ad7846b48beb1818e4edc43d00ba71869`  
		Last Modified: Sat, 17 Feb 2018 22:44:50 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fdffaf42c0fdf0908067614e3c8d31d305f76fac5d6905007e6813498e753e8`  
		Last Modified: Sat, 17 Feb 2018 22:45:17 GMT  
		Size: 19.4 MB (19406594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ce322178476b1746d5709fb9b6f036ddf45f4cce3a7b9d4e1cff40e9612f1a`  
		Last Modified: Sat, 17 Feb 2018 22:45:51 GMT  
		Size: 96.3 MB (96272275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b9da041b8e5ff50a833dee57f88833693f57f99c58504e2d27a716befb47ab`  
		Last Modified: Sat, 17 Feb 2018 22:44:51 GMT  
		Size: 7.8 MB (7814073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9dd449cb25c6e2114434e7f432c610cc9262c6d39d6db6df79419a96df35b7`  
		Last Modified: Sat, 17 Feb 2018 22:44:50 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.21` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:afebe6abfa1bd7419d41fafee14165cec0d7d5d7026e8b68e1ecbcc65bcc1d24
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.8 MB (212759493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e33893d49d99a4b328064a0d8d0104602b291157371ded19ec49f608e86dd2c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:21:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:21:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 05:59:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 16 Feb 2018 05:59:27 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Fri, 16 Feb 2018 06:10:09 GMT
ENV NODE_VERSION=6.13.0
# Fri, 16 Feb 2018 06:10:57 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 16 Feb 2018 06:10:58 GMT
ENV YARN_VERSION=1.3.2
# Fri, 16 Feb 2018 06:11:04 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 16 Feb 2018 06:11:05 GMT
CMD ["node"]
# Fri, 16 Feb 2018 14:27:19 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 14:27:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Feb 2018 14:27:25 GMT
ENV NODE_ENV=production
# Fri, 16 Feb 2018 14:27:25 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Fri, 16 Feb 2018 14:28:24 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 16 Feb 2018 14:28:25 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 16 Feb 2018 14:28:26 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sun, 18 Feb 2018 11:41:43 GMT
ENV GHOST_VERSION=1.21.2
# Sun, 18 Feb 2018 11:43:30 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sun, 18 Feb 2018 11:43:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sun, 18 Feb 2018 11:47:53 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sun, 18 Feb 2018 11:47:54 GMT
WORKDIR /var/lib/ghost
# Sun, 18 Feb 2018 11:47:55 GMT
VOLUME [/var/lib/ghost/content]
# Sun, 18 Feb 2018 11:47:55 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sun, 18 Feb 2018 11:47:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 11:47:56 GMT
EXPOSE 2368/tcp
# Sun, 18 Feb 2018 11:47:57 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fdcdd98e305e9efc04799bdb8847b90cb4ea01a307f40fc9c372e2f9324a7c`  
		Last Modified: Thu, 15 Feb 2018 20:10:59 GMT  
		Size: 18.7 MB (18739852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee810e1ee468f4c114517395096d66f196a185c58cc1632fe5f9038a9a04328`  
		Last Modified: Fri, 16 Feb 2018 06:19:02 GMT  
		Size: 4.4 KB (4410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d10c4b66b3f23d5c2b78efa44492779a927d05781936d4fd77957485e4af280`  
		Last Modified: Fri, 16 Feb 2018 06:19:02 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a646e953333e866324ea23469494de5d25636462aa423254a700faa03ff62705`  
		Last Modified: Fri, 16 Feb 2018 06:31:21 GMT  
		Size: 14.8 MB (14762409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6e0dfe7d0a945a0282fdce87b61791264daa473c0f4677bf47c683ec54bc31`  
		Last Modified: Fri, 16 Feb 2018 06:31:09 GMT  
		Size: 1.0 MB (1010352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa79ba0b7a0a229caeed67376260ac1be4469953472ee805320f12959326702`  
		Last Modified: Fri, 16 Feb 2018 14:40:21 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d247cd0ddb4c78f08513f7b77975bf7f8960ba63abbede8310a9e7f5f930a0a2`  
		Last Modified: Fri, 16 Feb 2018 14:40:29 GMT  
		Size: 19.5 MB (19451830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043cf30db7186872c5cd40a4f8678cd78877eeeaf61a47a51a475b22cbdad6eb`  
		Last Modified: Sun, 18 Feb 2018 11:48:59 GMT  
		Size: 91.2 MB (91171316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01759a7a02adca0507fa7c943c4ba74e6dabb27f9695d721bb9c7310d9e050b9`  
		Last Modified: Sun, 18 Feb 2018 11:48:29 GMT  
		Size: 17.1 MB (17098592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c66219764670e66a098f6385e053316a7c44964b0200d206195d83fce28f11`  
		Last Modified: Sun, 18 Feb 2018 11:55:24 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.21` - linux; 386

```console
$ docker pull ghost@sha256:fdb935a642110af43fa6283d346bd82ea2d0189c0e1366d822e9d470c935a13d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.1 MB (218126323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2018aff6caabd39713dffbab5caff552d8b2b617d6aa0e1828d233025ecbce92`
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
# Mon, 19 Feb 2018 16:23:42 GMT
ENV GHOST_VERSION=1.21.2
# Mon, 19 Feb 2018 16:26:33 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 19 Feb 2018 16:37:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 19 Feb 2018 16:39:45 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 19 Feb 2018 16:47:52 GMT
WORKDIR /var/lib/ghost
# Mon, 19 Feb 2018 16:47:52 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 19 Feb 2018 16:47:52 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Mon, 19 Feb 2018 16:47:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Feb 2018 16:47:53 GMT
EXPOSE 2368/tcp
# Mon, 19 Feb 2018 16:47:53 GMT
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
	-	`sha256:d35368fab9067bac4ddc785b719f86d64205f5d77cc482f62681dd930df598b8`  
		Last Modified: Mon, 19 Feb 2018 17:04:27 GMT  
		Size: 91.2 MB (91161849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922a7e84eba67f2776b65b64fe01a36a29f84c202b434b7b7c69c346a490aa72`  
		Last Modified: Mon, 19 Feb 2018 17:03:41 GMT  
		Size: 17.2 MB (17231792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf1f2c6070fd72252891c85b75037d5fbefc7f96ee66f7a0b966fdcb6954495`  
		Last Modified: Mon, 19 Feb 2018 17:03:34 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.21` - linux; ppc64le

```console
$ docker pull ghost@sha256:f1c0779f70ba54616fcd99a32d766de4d43ab1fb1bc4c40b269fecdb090b2450
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.4 MB (215404448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87335437f3569eed04cc3dc57f2461c583963319bba789b31c63d98a6bf7c731`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:09:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:09:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 09:07:51 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 15 Feb 2018 09:11:34 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Thu, 15 Feb 2018 09:25:56 GMT
ENV NODE_VERSION=6.13.0
# Thu, 15 Feb 2018 09:26:48 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 15 Feb 2018 09:26:51 GMT
ENV YARN_VERSION=1.3.2
# Thu, 15 Feb 2018 09:27:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 15 Feb 2018 09:27:06 GMT
CMD ["node"]
# Thu, 15 Feb 2018 16:50:07 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 16:50:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 16:50:23 GMT
ENV NODE_ENV=production
# Thu, 15 Feb 2018 16:50:26 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Thu, 15 Feb 2018 16:51:22 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 15 Feb 2018 16:51:25 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 15 Feb 2018 16:51:33 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sun, 18 Feb 2018 02:26:28 GMT
ENV GHOST_VERSION=1.21.2
# Sun, 18 Feb 2018 02:28:54 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sun, 18 Feb 2018 02:28:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sun, 18 Feb 2018 02:37:34 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sun, 18 Feb 2018 02:38:49 GMT
WORKDIR /var/lib/ghost
# Sun, 18 Feb 2018 02:38:52 GMT
VOLUME [/var/lib/ghost/content]
# Sun, 18 Feb 2018 02:38:57 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sun, 18 Feb 2018 02:39:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 02:39:02 GMT
EXPOSE 2368/tcp
# Sun, 18 Feb 2018 02:39:04 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e115caf0b90102f293e585f18e067814aabf94a3b5e0cdd0faf1c4225f6c962`  
		Last Modified: Thu, 15 Feb 2018 08:22:40 GMT  
		Size: 19.2 MB (19202823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26e6ed61267c5a5ca8c980bb108155e7a0a0a422cbae93a1cb3f47f94da0a0a`  
		Last Modified: Thu, 15 Feb 2018 09:35:31 GMT  
		Size: 4.4 KB (4444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a915866d9e1c3883ce9f6fa6e2f97d3531fd7ce4939166bc2b53fdcb90c1c049`  
		Last Modified: Thu, 15 Feb 2018 09:35:32 GMT  
		Size: 117.7 KB (117660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cab87c0c409899a617e272987827c20b15e7b754db3af15f0408c6c67cf2c67`  
		Last Modified: Thu, 15 Feb 2018 09:40:24 GMT  
		Size: 14.5 MB (14537508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72a51a4b245046cd778d97210de6520a1414b17245d9ea05fe8d671c4e0ea3a`  
		Last Modified: Thu, 15 Feb 2018 09:40:23 GMT  
		Size: 1.0 MB (1010386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475836126a2887cde522bdf64631a83b38167cad1a48d107d171f9dfb8a7bee`  
		Last Modified: Thu, 15 Feb 2018 17:06:05 GMT  
		Size: 469.8 KB (469841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f141097ca808a2ae98b175bfb74c1358edcd2b3eef5decb5ea0aa7a57853dd8c`  
		Last Modified: Thu, 15 Feb 2018 17:06:11 GMT  
		Size: 19.5 MB (19451383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d220f445e1129d416d5d062b53da18b3d06c608ec586c2b4cca8770b01f14c`  
		Last Modified: Sun, 18 Feb 2018 02:39:50 GMT  
		Size: 91.2 MB (91166720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaae64f571adce85673f07011b4e84a92523f92655a0b65e9854877bb45c751f`  
		Last Modified: Sun, 18 Feb 2018 02:39:27 GMT  
		Size: 17.6 MB (17626041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405ffe6406b6d580d156d5442bf74ad7ee38a20fd0cc7f83a1f878173f2cfac0`  
		Last Modified: Sun, 18 Feb 2018 02:39:22 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.21` - linux; s390x

```console
$ docker pull ghost@sha256:54aca7a3ca1c04267aacde686ca656abd19a78fcf444403dee4add5140924421
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.1 MB (217079373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdd73c962c6ca730401aa441e63ca4c2cf9df39fe7b6a0e43a2270dba6d4317a`
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
# Sun, 18 Feb 2018 15:22:25 GMT
ENV GHOST_VERSION=1.21.2
# Sun, 18 Feb 2018 15:22:50 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sun, 18 Feb 2018 15:22:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sun, 18 Feb 2018 15:24:16 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sun, 18 Feb 2018 15:24:16 GMT
WORKDIR /var/lib/ghost
# Sun, 18 Feb 2018 15:24:17 GMT
VOLUME [/var/lib/ghost/content]
# Sun, 18 Feb 2018 15:24:17 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sun, 18 Feb 2018 15:24:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 15:24:17 GMT
EXPOSE 2368/tcp
# Sun, 18 Feb 2018 15:24:17 GMT
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
	-	`sha256:24d0d41c250719af62a76289ce8c5d4f870eece336b07dc68f7bc92684147664`  
		Last Modified: Sun, 18 Feb 2018 15:24:51 GMT  
		Size: 91.2 MB (91163569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4e408f7cc5b3986e7d3f84d080fee2588831aa4818fdc08423cc6b61022ac2`  
		Last Modified: Sun, 18 Feb 2018 15:24:37 GMT  
		Size: 17.7 MB (17666592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9e83799452b3141cec864ea45eee131bab5fd7d00b1bbefeab35769b54d490`  
		Last Modified: Sun, 18 Feb 2018 15:24:35 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.21.2`

```console
$ docker pull ghost@sha256:8f89d430466d21fbb2108ba84da18677ab4864fa1c379036938a70bcf13e64e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:1.21.2` - linux; amd64

```console
$ docker pull ghost@sha256:43f2160f2bd8b382eb3472bc744dabde5f94a51492978a203ee629d9dd3fa114
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.8 MB (211776518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a12b4cd44e65a9ecaf1cd517cec3fb84c6a0fdfac02104337b96f4a167f87e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:01:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:01:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Feb 2018 15:37:54 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 17 Feb 2018 15:37:57 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Sat, 17 Feb 2018 15:41:38 GMT
ENV NODE_VERSION=6.13.0
# Sat, 17 Feb 2018 15:41:52 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 17 Feb 2018 15:41:52 GMT
ENV YARN_VERSION=1.3.2
# Sat, 17 Feb 2018 15:41:56 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 17 Feb 2018 15:41:57 GMT
CMD ["node"]
# Sat, 17 Feb 2018 22:11:08 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Feb 2018 22:11:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 17 Feb 2018 22:11:13 GMT
ENV NODE_ENV=production
# Sat, 17 Feb 2018 22:11:14 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Sat, 17 Feb 2018 22:11:41 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 17 Feb 2018 22:11:42 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 17 Feb 2018 22:11:42 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 17 Feb 2018 22:11:42 GMT
ENV GHOST_VERSION=1.21.2
# Sat, 17 Feb 2018 22:13:16 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 17 Feb 2018 22:13:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 17 Feb 2018 22:13:40 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 17 Feb 2018 22:13:40 GMT
WORKDIR /var/lib/ghost
# Sat, 17 Feb 2018 22:13:41 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 17 Feb 2018 22:13:42 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 17 Feb 2018 22:13:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 22:13:43 GMT
EXPOSE 2368/tcp
# Sat, 17 Feb 2018 22:13:43 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851356ecf618f41550b3b8696fb9aad7925f72929c8345453107cce510437608`  
		Last Modified: Sat, 17 Feb 2018 07:15:16 GMT  
		Size: 19.3 MB (19266391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb492416b9f4f2bd1af663d5226ecf80d681762041ccb5d76988655b9ee802d4`  
		Last Modified: Sat, 17 Feb 2018 15:50:22 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c188a47fbe667aa0070347aeb8ccef1e1f7f488a51ce9975942a88c0f8bf14e4`  
		Last Modified: Sat, 17 Feb 2018 15:50:22 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b150b07b7e1a7551f5e310a67960814de62229410dc5b7804956754ce5efd6`  
		Last Modified: Sat, 17 Feb 2018 16:00:01 GMT  
		Size: 14.8 MB (14775283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599d78299041bba51883fdc6b8468f6752ca0a4c754d80ed3fea32043e6575dc`  
		Last Modified: Sat, 17 Feb 2018 15:59:56 GMT  
		Size: 1.0 MB (1010351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d94985b47101ad4fd021e4a3223481ad7846b48beb1818e4edc43d00ba71869`  
		Last Modified: Sat, 17 Feb 2018 22:44:50 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fdffaf42c0fdf0908067614e3c8d31d305f76fac5d6905007e6813498e753e8`  
		Last Modified: Sat, 17 Feb 2018 22:45:17 GMT  
		Size: 19.4 MB (19406594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ce322178476b1746d5709fb9b6f036ddf45f4cce3a7b9d4e1cff40e9612f1a`  
		Last Modified: Sat, 17 Feb 2018 22:45:51 GMT  
		Size: 96.3 MB (96272275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b9da041b8e5ff50a833dee57f88833693f57f99c58504e2d27a716befb47ab`  
		Last Modified: Sat, 17 Feb 2018 22:44:51 GMT  
		Size: 7.8 MB (7814073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9dd449cb25c6e2114434e7f432c610cc9262c6d39d6db6df79419a96df35b7`  
		Last Modified: Sat, 17 Feb 2018 22:44:50 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.21.2` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:afebe6abfa1bd7419d41fafee14165cec0d7d5d7026e8b68e1ecbcc65bcc1d24
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.8 MB (212759493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e33893d49d99a4b328064a0d8d0104602b291157371ded19ec49f608e86dd2c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:21:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:21:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 05:59:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 16 Feb 2018 05:59:27 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Fri, 16 Feb 2018 06:10:09 GMT
ENV NODE_VERSION=6.13.0
# Fri, 16 Feb 2018 06:10:57 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 16 Feb 2018 06:10:58 GMT
ENV YARN_VERSION=1.3.2
# Fri, 16 Feb 2018 06:11:04 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 16 Feb 2018 06:11:05 GMT
CMD ["node"]
# Fri, 16 Feb 2018 14:27:19 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 14:27:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Feb 2018 14:27:25 GMT
ENV NODE_ENV=production
# Fri, 16 Feb 2018 14:27:25 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Fri, 16 Feb 2018 14:28:24 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 16 Feb 2018 14:28:25 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 16 Feb 2018 14:28:26 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sun, 18 Feb 2018 11:41:43 GMT
ENV GHOST_VERSION=1.21.2
# Sun, 18 Feb 2018 11:43:30 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sun, 18 Feb 2018 11:43:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sun, 18 Feb 2018 11:47:53 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sun, 18 Feb 2018 11:47:54 GMT
WORKDIR /var/lib/ghost
# Sun, 18 Feb 2018 11:47:55 GMT
VOLUME [/var/lib/ghost/content]
# Sun, 18 Feb 2018 11:47:55 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sun, 18 Feb 2018 11:47:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 11:47:56 GMT
EXPOSE 2368/tcp
# Sun, 18 Feb 2018 11:47:57 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fdcdd98e305e9efc04799bdb8847b90cb4ea01a307f40fc9c372e2f9324a7c`  
		Last Modified: Thu, 15 Feb 2018 20:10:59 GMT  
		Size: 18.7 MB (18739852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee810e1ee468f4c114517395096d66f196a185c58cc1632fe5f9038a9a04328`  
		Last Modified: Fri, 16 Feb 2018 06:19:02 GMT  
		Size: 4.4 KB (4410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d10c4b66b3f23d5c2b78efa44492779a927d05781936d4fd77957485e4af280`  
		Last Modified: Fri, 16 Feb 2018 06:19:02 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a646e953333e866324ea23469494de5d25636462aa423254a700faa03ff62705`  
		Last Modified: Fri, 16 Feb 2018 06:31:21 GMT  
		Size: 14.8 MB (14762409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6e0dfe7d0a945a0282fdce87b61791264daa473c0f4677bf47c683ec54bc31`  
		Last Modified: Fri, 16 Feb 2018 06:31:09 GMT  
		Size: 1.0 MB (1010352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa79ba0b7a0a229caeed67376260ac1be4469953472ee805320f12959326702`  
		Last Modified: Fri, 16 Feb 2018 14:40:21 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d247cd0ddb4c78f08513f7b77975bf7f8960ba63abbede8310a9e7f5f930a0a2`  
		Last Modified: Fri, 16 Feb 2018 14:40:29 GMT  
		Size: 19.5 MB (19451830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043cf30db7186872c5cd40a4f8678cd78877eeeaf61a47a51a475b22cbdad6eb`  
		Last Modified: Sun, 18 Feb 2018 11:48:59 GMT  
		Size: 91.2 MB (91171316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01759a7a02adca0507fa7c943c4ba74e6dabb27f9695d721bb9c7310d9e050b9`  
		Last Modified: Sun, 18 Feb 2018 11:48:29 GMT  
		Size: 17.1 MB (17098592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c66219764670e66a098f6385e053316a7c44964b0200d206195d83fce28f11`  
		Last Modified: Sun, 18 Feb 2018 11:55:24 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.21.2` - linux; 386

```console
$ docker pull ghost@sha256:fdb935a642110af43fa6283d346bd82ea2d0189c0e1366d822e9d470c935a13d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.1 MB (218126323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2018aff6caabd39713dffbab5caff552d8b2b617d6aa0e1828d233025ecbce92`
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
# Mon, 19 Feb 2018 16:23:42 GMT
ENV GHOST_VERSION=1.21.2
# Mon, 19 Feb 2018 16:26:33 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 19 Feb 2018 16:37:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 19 Feb 2018 16:39:45 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 19 Feb 2018 16:47:52 GMT
WORKDIR /var/lib/ghost
# Mon, 19 Feb 2018 16:47:52 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 19 Feb 2018 16:47:52 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Mon, 19 Feb 2018 16:47:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Feb 2018 16:47:53 GMT
EXPOSE 2368/tcp
# Mon, 19 Feb 2018 16:47:53 GMT
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
	-	`sha256:d35368fab9067bac4ddc785b719f86d64205f5d77cc482f62681dd930df598b8`  
		Last Modified: Mon, 19 Feb 2018 17:04:27 GMT  
		Size: 91.2 MB (91161849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922a7e84eba67f2776b65b64fe01a36a29f84c202b434b7b7c69c346a490aa72`  
		Last Modified: Mon, 19 Feb 2018 17:03:41 GMT  
		Size: 17.2 MB (17231792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf1f2c6070fd72252891c85b75037d5fbefc7f96ee66f7a0b966fdcb6954495`  
		Last Modified: Mon, 19 Feb 2018 17:03:34 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.21.2` - linux; ppc64le

```console
$ docker pull ghost@sha256:f1c0779f70ba54616fcd99a32d766de4d43ab1fb1bc4c40b269fecdb090b2450
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.4 MB (215404448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87335437f3569eed04cc3dc57f2461c583963319bba789b31c63d98a6bf7c731`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:09:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:09:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 09:07:51 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 15 Feb 2018 09:11:34 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Thu, 15 Feb 2018 09:25:56 GMT
ENV NODE_VERSION=6.13.0
# Thu, 15 Feb 2018 09:26:48 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 15 Feb 2018 09:26:51 GMT
ENV YARN_VERSION=1.3.2
# Thu, 15 Feb 2018 09:27:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 15 Feb 2018 09:27:06 GMT
CMD ["node"]
# Thu, 15 Feb 2018 16:50:07 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 16:50:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 16:50:23 GMT
ENV NODE_ENV=production
# Thu, 15 Feb 2018 16:50:26 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Thu, 15 Feb 2018 16:51:22 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 15 Feb 2018 16:51:25 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 15 Feb 2018 16:51:33 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sun, 18 Feb 2018 02:26:28 GMT
ENV GHOST_VERSION=1.21.2
# Sun, 18 Feb 2018 02:28:54 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sun, 18 Feb 2018 02:28:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sun, 18 Feb 2018 02:37:34 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sun, 18 Feb 2018 02:38:49 GMT
WORKDIR /var/lib/ghost
# Sun, 18 Feb 2018 02:38:52 GMT
VOLUME [/var/lib/ghost/content]
# Sun, 18 Feb 2018 02:38:57 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sun, 18 Feb 2018 02:39:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 02:39:02 GMT
EXPOSE 2368/tcp
# Sun, 18 Feb 2018 02:39:04 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e115caf0b90102f293e585f18e067814aabf94a3b5e0cdd0faf1c4225f6c962`  
		Last Modified: Thu, 15 Feb 2018 08:22:40 GMT  
		Size: 19.2 MB (19202823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26e6ed61267c5a5ca8c980bb108155e7a0a0a422cbae93a1cb3f47f94da0a0a`  
		Last Modified: Thu, 15 Feb 2018 09:35:31 GMT  
		Size: 4.4 KB (4444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a915866d9e1c3883ce9f6fa6e2f97d3531fd7ce4939166bc2b53fdcb90c1c049`  
		Last Modified: Thu, 15 Feb 2018 09:35:32 GMT  
		Size: 117.7 KB (117660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cab87c0c409899a617e272987827c20b15e7b754db3af15f0408c6c67cf2c67`  
		Last Modified: Thu, 15 Feb 2018 09:40:24 GMT  
		Size: 14.5 MB (14537508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72a51a4b245046cd778d97210de6520a1414b17245d9ea05fe8d671c4e0ea3a`  
		Last Modified: Thu, 15 Feb 2018 09:40:23 GMT  
		Size: 1.0 MB (1010386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475836126a2887cde522bdf64631a83b38167cad1a48d107d171f9dfb8a7bee`  
		Last Modified: Thu, 15 Feb 2018 17:06:05 GMT  
		Size: 469.8 KB (469841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f141097ca808a2ae98b175bfb74c1358edcd2b3eef5decb5ea0aa7a57853dd8c`  
		Last Modified: Thu, 15 Feb 2018 17:06:11 GMT  
		Size: 19.5 MB (19451383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d220f445e1129d416d5d062b53da18b3d06c608ec586c2b4cca8770b01f14c`  
		Last Modified: Sun, 18 Feb 2018 02:39:50 GMT  
		Size: 91.2 MB (91166720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaae64f571adce85673f07011b4e84a92523f92655a0b65e9854877bb45c751f`  
		Last Modified: Sun, 18 Feb 2018 02:39:27 GMT  
		Size: 17.6 MB (17626041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405ffe6406b6d580d156d5442bf74ad7ee38a20fd0cc7f83a1f878173f2cfac0`  
		Last Modified: Sun, 18 Feb 2018 02:39:22 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.21.2` - linux; s390x

```console
$ docker pull ghost@sha256:54aca7a3ca1c04267aacde686ca656abd19a78fcf444403dee4add5140924421
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.1 MB (217079373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdd73c962c6ca730401aa441e63ca4c2cf9df39fe7b6a0e43a2270dba6d4317a`
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
# Sun, 18 Feb 2018 15:22:25 GMT
ENV GHOST_VERSION=1.21.2
# Sun, 18 Feb 2018 15:22:50 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sun, 18 Feb 2018 15:22:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sun, 18 Feb 2018 15:24:16 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sun, 18 Feb 2018 15:24:16 GMT
WORKDIR /var/lib/ghost
# Sun, 18 Feb 2018 15:24:17 GMT
VOLUME [/var/lib/ghost/content]
# Sun, 18 Feb 2018 15:24:17 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sun, 18 Feb 2018 15:24:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 15:24:17 GMT
EXPOSE 2368/tcp
# Sun, 18 Feb 2018 15:24:17 GMT
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
	-	`sha256:24d0d41c250719af62a76289ce8c5d4f870eece336b07dc68f7bc92684147664`  
		Last Modified: Sun, 18 Feb 2018 15:24:51 GMT  
		Size: 91.2 MB (91163569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4e408f7cc5b3986e7d3f84d080fee2588831aa4818fdc08423cc6b61022ac2`  
		Last Modified: Sun, 18 Feb 2018 15:24:37 GMT  
		Size: 17.7 MB (17666592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9e83799452b3141cec864ea45eee131bab5fd7d00b1bbefeab35769b54d490`  
		Last Modified: Sun, 18 Feb 2018 15:24:35 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.21.2-alpine`

```console
$ docker pull ghost@sha256:62f4d427683b6f58c3b784bd2591b2338f56bb52318f62c248ae0b986a294b22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1.21.2-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:1afb1463facdcae5ec1ce50904b94e18249af7bd79a3f79d5a6c2ad7af792279
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.8 MB (135761385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:513121f2cc9fffbce1c06316966f6ff1cf37e1dade7376e3716c6c66d98b25dd`
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
# Sat, 17 Feb 2018 22:27:29 GMT
ENV GHOST_VERSION=1.21.2
# Sat, 17 Feb 2018 22:28:18 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 17 Feb 2018 22:28:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 17 Feb 2018 22:28:19 GMT
WORKDIR /var/lib/ghost
# Sat, 17 Feb 2018 22:28:19 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 17 Feb 2018 22:28:20 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Sat, 17 Feb 2018 22:28:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 22:28:21 GMT
EXPOSE 2368/tcp
# Sat, 17 Feb 2018 22:28:21 GMT
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
	-	`sha256:5538dabb835fed354d8e7ec3898f62a6cd8a624a4b9a4222b1c77eba8bda0644`  
		Last Modified: Sat, 17 Feb 2018 22:47:41 GMT  
		Size: 96.3 MB (96272117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a223429cfa9045c5204ff7f000099155ef04e7206bf2e6ff01c2eb4dcd0c4411`  
		Last Modified: Sat, 17 Feb 2018 22:46:59 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.21-alpine`

```console
$ docker pull ghost@sha256:62f4d427683b6f58c3b784bd2591b2338f56bb52318f62c248ae0b986a294b22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1.21-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:1afb1463facdcae5ec1ce50904b94e18249af7bd79a3f79d5a6c2ad7af792279
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.8 MB (135761385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:513121f2cc9fffbce1c06316966f6ff1cf37e1dade7376e3716c6c66d98b25dd`
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
# Sat, 17 Feb 2018 22:27:29 GMT
ENV GHOST_VERSION=1.21.2
# Sat, 17 Feb 2018 22:28:18 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 17 Feb 2018 22:28:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 17 Feb 2018 22:28:19 GMT
WORKDIR /var/lib/ghost
# Sat, 17 Feb 2018 22:28:19 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 17 Feb 2018 22:28:20 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Sat, 17 Feb 2018 22:28:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 22:28:21 GMT
EXPOSE 2368/tcp
# Sat, 17 Feb 2018 22:28:21 GMT
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
	-	`sha256:5538dabb835fed354d8e7ec3898f62a6cd8a624a4b9a4222b1c77eba8bda0644`  
		Last Modified: Sat, 17 Feb 2018 22:47:41 GMT  
		Size: 96.3 MB (96272117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a223429cfa9045c5204ff7f000099155ef04e7206bf2e6ff01c2eb4dcd0c4411`  
		Last Modified: Sat, 17 Feb 2018 22:46:59 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:62f4d427683b6f58c3b784bd2591b2338f56bb52318f62c248ae0b986a294b22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:1afb1463facdcae5ec1ce50904b94e18249af7bd79a3f79d5a6c2ad7af792279
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.8 MB (135761385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:513121f2cc9fffbce1c06316966f6ff1cf37e1dade7376e3716c6c66d98b25dd`
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
# Sat, 17 Feb 2018 22:27:29 GMT
ENV GHOST_VERSION=1.21.2
# Sat, 17 Feb 2018 22:28:18 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 17 Feb 2018 22:28:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 17 Feb 2018 22:28:19 GMT
WORKDIR /var/lib/ghost
# Sat, 17 Feb 2018 22:28:19 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 17 Feb 2018 22:28:20 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Sat, 17 Feb 2018 22:28:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 22:28:21 GMT
EXPOSE 2368/tcp
# Sat, 17 Feb 2018 22:28:21 GMT
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
	-	`sha256:5538dabb835fed354d8e7ec3898f62a6cd8a624a4b9a4222b1c77eba8bda0644`  
		Last Modified: Sat, 17 Feb 2018 22:47:41 GMT  
		Size: 96.3 MB (96272117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a223429cfa9045c5204ff7f000099155ef04e7206bf2e6ff01c2eb4dcd0c4411`  
		Last Modified: Sat, 17 Feb 2018 22:46:59 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:62f4d427683b6f58c3b784bd2591b2338f56bb52318f62c248ae0b986a294b22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:1afb1463facdcae5ec1ce50904b94e18249af7bd79a3f79d5a6c2ad7af792279
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.8 MB (135761385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:513121f2cc9fffbce1c06316966f6ff1cf37e1dade7376e3716c6c66d98b25dd`
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
# Sat, 17 Feb 2018 22:27:29 GMT
ENV GHOST_VERSION=1.21.2
# Sat, 17 Feb 2018 22:28:18 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 17 Feb 2018 22:28:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 17 Feb 2018 22:28:19 GMT
WORKDIR /var/lib/ghost
# Sat, 17 Feb 2018 22:28:19 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 17 Feb 2018 22:28:20 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Sat, 17 Feb 2018 22:28:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 22:28:21 GMT
EXPOSE 2368/tcp
# Sat, 17 Feb 2018 22:28:21 GMT
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
	-	`sha256:5538dabb835fed354d8e7ec3898f62a6cd8a624a4b9a4222b1c77eba8bda0644`  
		Last Modified: Sat, 17 Feb 2018 22:47:41 GMT  
		Size: 96.3 MB (96272117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a223429cfa9045c5204ff7f000099155ef04e7206bf2e6ff01c2eb4dcd0c4411`  
		Last Modified: Sat, 17 Feb 2018 22:46:59 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:8f89d430466d21fbb2108ba84da18677ab4864fa1c379036938a70bcf13e64e1
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
$ docker pull ghost@sha256:43f2160f2bd8b382eb3472bc744dabde5f94a51492978a203ee629d9dd3fa114
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.8 MB (211776518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a12b4cd44e65a9ecaf1cd517cec3fb84c6a0fdfac02104337b96f4a167f87e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:01:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:01:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Feb 2018 15:37:54 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 17 Feb 2018 15:37:57 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Sat, 17 Feb 2018 15:41:38 GMT
ENV NODE_VERSION=6.13.0
# Sat, 17 Feb 2018 15:41:52 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 17 Feb 2018 15:41:52 GMT
ENV YARN_VERSION=1.3.2
# Sat, 17 Feb 2018 15:41:56 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 17 Feb 2018 15:41:57 GMT
CMD ["node"]
# Sat, 17 Feb 2018 22:11:08 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Feb 2018 22:11:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 17 Feb 2018 22:11:13 GMT
ENV NODE_ENV=production
# Sat, 17 Feb 2018 22:11:14 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Sat, 17 Feb 2018 22:11:41 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 17 Feb 2018 22:11:42 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 17 Feb 2018 22:11:42 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 17 Feb 2018 22:11:42 GMT
ENV GHOST_VERSION=1.21.2
# Sat, 17 Feb 2018 22:13:16 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 17 Feb 2018 22:13:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 17 Feb 2018 22:13:40 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 17 Feb 2018 22:13:40 GMT
WORKDIR /var/lib/ghost
# Sat, 17 Feb 2018 22:13:41 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 17 Feb 2018 22:13:42 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 17 Feb 2018 22:13:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 22:13:43 GMT
EXPOSE 2368/tcp
# Sat, 17 Feb 2018 22:13:43 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851356ecf618f41550b3b8696fb9aad7925f72929c8345453107cce510437608`  
		Last Modified: Sat, 17 Feb 2018 07:15:16 GMT  
		Size: 19.3 MB (19266391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb492416b9f4f2bd1af663d5226ecf80d681762041ccb5d76988655b9ee802d4`  
		Last Modified: Sat, 17 Feb 2018 15:50:22 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c188a47fbe667aa0070347aeb8ccef1e1f7f488a51ce9975942a88c0f8bf14e4`  
		Last Modified: Sat, 17 Feb 2018 15:50:22 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b150b07b7e1a7551f5e310a67960814de62229410dc5b7804956754ce5efd6`  
		Last Modified: Sat, 17 Feb 2018 16:00:01 GMT  
		Size: 14.8 MB (14775283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599d78299041bba51883fdc6b8468f6752ca0a4c754d80ed3fea32043e6575dc`  
		Last Modified: Sat, 17 Feb 2018 15:59:56 GMT  
		Size: 1.0 MB (1010351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d94985b47101ad4fd021e4a3223481ad7846b48beb1818e4edc43d00ba71869`  
		Last Modified: Sat, 17 Feb 2018 22:44:50 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fdffaf42c0fdf0908067614e3c8d31d305f76fac5d6905007e6813498e753e8`  
		Last Modified: Sat, 17 Feb 2018 22:45:17 GMT  
		Size: 19.4 MB (19406594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ce322178476b1746d5709fb9b6f036ddf45f4cce3a7b9d4e1cff40e9612f1a`  
		Last Modified: Sat, 17 Feb 2018 22:45:51 GMT  
		Size: 96.3 MB (96272275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b9da041b8e5ff50a833dee57f88833693f57f99c58504e2d27a716befb47ab`  
		Last Modified: Sat, 17 Feb 2018 22:44:51 GMT  
		Size: 7.8 MB (7814073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9dd449cb25c6e2114434e7f432c610cc9262c6d39d6db6df79419a96df35b7`  
		Last Modified: Sat, 17 Feb 2018 22:44:50 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:afebe6abfa1bd7419d41fafee14165cec0d7d5d7026e8b68e1ecbcc65bcc1d24
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.8 MB (212759493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e33893d49d99a4b328064a0d8d0104602b291157371ded19ec49f608e86dd2c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:21:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:21:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 05:59:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 16 Feb 2018 05:59:27 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Fri, 16 Feb 2018 06:10:09 GMT
ENV NODE_VERSION=6.13.0
# Fri, 16 Feb 2018 06:10:57 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 16 Feb 2018 06:10:58 GMT
ENV YARN_VERSION=1.3.2
# Fri, 16 Feb 2018 06:11:04 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 16 Feb 2018 06:11:05 GMT
CMD ["node"]
# Fri, 16 Feb 2018 14:27:19 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 14:27:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Feb 2018 14:27:25 GMT
ENV NODE_ENV=production
# Fri, 16 Feb 2018 14:27:25 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Fri, 16 Feb 2018 14:28:24 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 16 Feb 2018 14:28:25 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 16 Feb 2018 14:28:26 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sun, 18 Feb 2018 11:41:43 GMT
ENV GHOST_VERSION=1.21.2
# Sun, 18 Feb 2018 11:43:30 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sun, 18 Feb 2018 11:43:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sun, 18 Feb 2018 11:47:53 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sun, 18 Feb 2018 11:47:54 GMT
WORKDIR /var/lib/ghost
# Sun, 18 Feb 2018 11:47:55 GMT
VOLUME [/var/lib/ghost/content]
# Sun, 18 Feb 2018 11:47:55 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sun, 18 Feb 2018 11:47:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 11:47:56 GMT
EXPOSE 2368/tcp
# Sun, 18 Feb 2018 11:47:57 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fdcdd98e305e9efc04799bdb8847b90cb4ea01a307f40fc9c372e2f9324a7c`  
		Last Modified: Thu, 15 Feb 2018 20:10:59 GMT  
		Size: 18.7 MB (18739852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee810e1ee468f4c114517395096d66f196a185c58cc1632fe5f9038a9a04328`  
		Last Modified: Fri, 16 Feb 2018 06:19:02 GMT  
		Size: 4.4 KB (4410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d10c4b66b3f23d5c2b78efa44492779a927d05781936d4fd77957485e4af280`  
		Last Modified: Fri, 16 Feb 2018 06:19:02 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a646e953333e866324ea23469494de5d25636462aa423254a700faa03ff62705`  
		Last Modified: Fri, 16 Feb 2018 06:31:21 GMT  
		Size: 14.8 MB (14762409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6e0dfe7d0a945a0282fdce87b61791264daa473c0f4677bf47c683ec54bc31`  
		Last Modified: Fri, 16 Feb 2018 06:31:09 GMT  
		Size: 1.0 MB (1010352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa79ba0b7a0a229caeed67376260ac1be4469953472ee805320f12959326702`  
		Last Modified: Fri, 16 Feb 2018 14:40:21 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d247cd0ddb4c78f08513f7b77975bf7f8960ba63abbede8310a9e7f5f930a0a2`  
		Last Modified: Fri, 16 Feb 2018 14:40:29 GMT  
		Size: 19.5 MB (19451830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043cf30db7186872c5cd40a4f8678cd78877eeeaf61a47a51a475b22cbdad6eb`  
		Last Modified: Sun, 18 Feb 2018 11:48:59 GMT  
		Size: 91.2 MB (91171316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01759a7a02adca0507fa7c943c4ba74e6dabb27f9695d721bb9c7310d9e050b9`  
		Last Modified: Sun, 18 Feb 2018 11:48:29 GMT  
		Size: 17.1 MB (17098592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c66219764670e66a098f6385e053316a7c44964b0200d206195d83fce28f11`  
		Last Modified: Sun, 18 Feb 2018 11:55:24 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; 386

```console
$ docker pull ghost@sha256:fdb935a642110af43fa6283d346bd82ea2d0189c0e1366d822e9d470c935a13d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.1 MB (218126323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2018aff6caabd39713dffbab5caff552d8b2b617d6aa0e1828d233025ecbce92`
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
# Mon, 19 Feb 2018 16:23:42 GMT
ENV GHOST_VERSION=1.21.2
# Mon, 19 Feb 2018 16:26:33 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Mon, 19 Feb 2018 16:37:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Mon, 19 Feb 2018 16:39:45 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Mon, 19 Feb 2018 16:47:52 GMT
WORKDIR /var/lib/ghost
# Mon, 19 Feb 2018 16:47:52 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 19 Feb 2018 16:47:52 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Mon, 19 Feb 2018 16:47:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Feb 2018 16:47:53 GMT
EXPOSE 2368/tcp
# Mon, 19 Feb 2018 16:47:53 GMT
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
	-	`sha256:d35368fab9067bac4ddc785b719f86d64205f5d77cc482f62681dd930df598b8`  
		Last Modified: Mon, 19 Feb 2018 17:04:27 GMT  
		Size: 91.2 MB (91161849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922a7e84eba67f2776b65b64fe01a36a29f84c202b434b7b7c69c346a490aa72`  
		Last Modified: Mon, 19 Feb 2018 17:03:41 GMT  
		Size: 17.2 MB (17231792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf1f2c6070fd72252891c85b75037d5fbefc7f96ee66f7a0b966fdcb6954495`  
		Last Modified: Mon, 19 Feb 2018 17:03:34 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; ppc64le

```console
$ docker pull ghost@sha256:f1c0779f70ba54616fcd99a32d766de4d43ab1fb1bc4c40b269fecdb090b2450
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.4 MB (215404448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87335437f3569eed04cc3dc57f2461c583963319bba789b31c63d98a6bf7c731`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:09:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:09:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 09:07:51 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 15 Feb 2018 09:11:34 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done
# Thu, 15 Feb 2018 09:25:56 GMT
ENV NODE_VERSION=6.13.0
# Thu, 15 Feb 2018 09:26:48 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 15 Feb 2018 09:26:51 GMT
ENV YARN_VERSION=1.3.2
# Thu, 15 Feb 2018 09:27:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ||     gpg --keyserver hkp://keyserver.pgp.com:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 15 Feb 2018 09:27:06 GMT
CMD ["node"]
# Thu, 15 Feb 2018 16:50:07 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 16:50:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 16:50:23 GMT
ENV NODE_ENV=production
# Thu, 15 Feb 2018 16:50:26 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Thu, 15 Feb 2018 16:51:22 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 15 Feb 2018 16:51:25 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 15 Feb 2018 16:51:33 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sun, 18 Feb 2018 02:26:28 GMT
ENV GHOST_VERSION=1.21.2
# Sun, 18 Feb 2018 02:28:54 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sun, 18 Feb 2018 02:28:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sun, 18 Feb 2018 02:37:34 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sun, 18 Feb 2018 02:38:49 GMT
WORKDIR /var/lib/ghost
# Sun, 18 Feb 2018 02:38:52 GMT
VOLUME [/var/lib/ghost/content]
# Sun, 18 Feb 2018 02:38:57 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sun, 18 Feb 2018 02:39:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 02:39:02 GMT
EXPOSE 2368/tcp
# Sun, 18 Feb 2018 02:39:04 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e115caf0b90102f293e585f18e067814aabf94a3b5e0cdd0faf1c4225f6c962`  
		Last Modified: Thu, 15 Feb 2018 08:22:40 GMT  
		Size: 19.2 MB (19202823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26e6ed61267c5a5ca8c980bb108155e7a0a0a422cbae93a1cb3f47f94da0a0a`  
		Last Modified: Thu, 15 Feb 2018 09:35:31 GMT  
		Size: 4.4 KB (4444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a915866d9e1c3883ce9f6fa6e2f97d3531fd7ce4939166bc2b53fdcb90c1c049`  
		Last Modified: Thu, 15 Feb 2018 09:35:32 GMT  
		Size: 117.7 KB (117660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cab87c0c409899a617e272987827c20b15e7b754db3af15f0408c6c67cf2c67`  
		Last Modified: Thu, 15 Feb 2018 09:40:24 GMT  
		Size: 14.5 MB (14537508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72a51a4b245046cd778d97210de6520a1414b17245d9ea05fe8d671c4e0ea3a`  
		Last Modified: Thu, 15 Feb 2018 09:40:23 GMT  
		Size: 1.0 MB (1010386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475836126a2887cde522bdf64631a83b38167cad1a48d107d171f9dfb8a7bee`  
		Last Modified: Thu, 15 Feb 2018 17:06:05 GMT  
		Size: 469.8 KB (469841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f141097ca808a2ae98b175bfb74c1358edcd2b3eef5decb5ea0aa7a57853dd8c`  
		Last Modified: Thu, 15 Feb 2018 17:06:11 GMT  
		Size: 19.5 MB (19451383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d220f445e1129d416d5d062b53da18b3d06c608ec586c2b4cca8770b01f14c`  
		Last Modified: Sun, 18 Feb 2018 02:39:50 GMT  
		Size: 91.2 MB (91166720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaae64f571adce85673f07011b4e84a92523f92655a0b65e9854877bb45c751f`  
		Last Modified: Sun, 18 Feb 2018 02:39:27 GMT  
		Size: 17.6 MB (17626041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405ffe6406b6d580d156d5442bf74ad7ee38a20fd0cc7f83a1f878173f2cfac0`  
		Last Modified: Sun, 18 Feb 2018 02:39:22 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; s390x

```console
$ docker pull ghost@sha256:54aca7a3ca1c04267aacde686ca656abd19a78fcf444403dee4add5140924421
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.1 MB (217079373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdd73c962c6ca730401aa441e63ca4c2cf9df39fe7b6a0e43a2270dba6d4317a`
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
# Sun, 18 Feb 2018 15:22:25 GMT
ENV GHOST_VERSION=1.21.2
# Sun, 18 Feb 2018 15:22:50 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sun, 18 Feb 2018 15:22:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sun, 18 Feb 2018 15:24:16 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sun, 18 Feb 2018 15:24:16 GMT
WORKDIR /var/lib/ghost
# Sun, 18 Feb 2018 15:24:17 GMT
VOLUME [/var/lib/ghost/content]
# Sun, 18 Feb 2018 15:24:17 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sun, 18 Feb 2018 15:24:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 15:24:17 GMT
EXPOSE 2368/tcp
# Sun, 18 Feb 2018 15:24:17 GMT
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
	-	`sha256:24d0d41c250719af62a76289ce8c5d4f870eece336b07dc68f7bc92684147664`  
		Last Modified: Sun, 18 Feb 2018 15:24:51 GMT  
		Size: 91.2 MB (91163569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4e408f7cc5b3986e7d3f84d080fee2588831aa4818fdc08423cc6b61022ac2`  
		Last Modified: Sun, 18 Feb 2018 15:24:37 GMT  
		Size: 17.7 MB (17666592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9e83799452b3141cec864ea45eee131bab5fd7d00b1bbefeab35769b54d490`  
		Last Modified: Sun, 18 Feb 2018 15:24:35 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

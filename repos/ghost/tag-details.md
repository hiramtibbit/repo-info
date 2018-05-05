<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:0`](#ghost0)
-	[`ghost:0.11`](#ghost011)
-	[`ghost:0.11.13`](#ghost01113)
-	[`ghost:0.11.13-alpine`](#ghost01113-alpine)
-	[`ghost:0.11-alpine`](#ghost011-alpine)
-	[`ghost:0-alpine`](#ghost0-alpine)
-	[`ghost:1`](#ghost1)
-	[`ghost:1.22`](#ghost122)
-	[`ghost:1.22.5`](#ghost1225)
-	[`ghost:1.22.5-alpine`](#ghost1225-alpine)
-	[`ghost:1.22-alpine`](#ghost122-alpine)
-	[`ghost:1-alpine`](#ghost1-alpine)
-	[`ghost:alpine`](#ghostalpine)
-	[`ghost:latest`](#ghostlatest)

## `ghost:0`

```console
$ docker pull ghost@sha256:c3225b2acdba55c9ef0e3644ed01547736258d3f35405d25e31f4489e90dc241
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
$ docker pull ghost@sha256:5aaf0e43688e095ac3c72d1a6257caf664753da3e89c6ec2567824692d4d9dbc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114661091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2802a3fd1b2459253aa589d2ee5c2c5006f2320c3d9bdfee5bf451ac7dad454b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Fri, 04 May 2018 17:35:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 17:35:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 06:40:50 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 05 May 2018 06:40:53 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 05 May 2018 06:43:38 GMT
ENV NODE_VERSION=6.14.2
# Sat, 05 May 2018 06:43:58 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 05 May 2018 06:43:59 GMT
ENV YARN_VERSION=1.6.0
# Sat, 05 May 2018 06:44:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 05 May 2018 06:44:02 GMT
CMD ["node"]
# Sat, 05 May 2018 07:56:26 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 05 May 2018 07:56:26 GMT
ENV GOSU_VERSION=1.10
# Sat, 05 May 2018 07:56:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 05 May 2018 07:56:30 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 05 May 2018 07:56:31 GMT
WORKDIR /usr/src/ghost
# Sat, 05 May 2018 07:56:31 GMT
ENV GHOST_VERSION=0.11.13
# Sat, 05 May 2018 07:57:46 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 05 May 2018 07:57:47 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 05 May 2018 07:57:48 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 05 May 2018 07:57:48 GMT
VOLUME [/var/lib/ghost]
# Sat, 05 May 2018 07:57:48 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 05 May 2018 07:57:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 05 May 2018 07:57:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 07:57:49 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 07:57:50 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534514c83d698ad8a2ef994eeedaed92738e401d735e453d47e635cca02901b6`  
		Last Modified: Fri, 04 May 2018 18:19:14 GMT  
		Size: 17.6 MB (17584745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d86970c40400552472f8836ab621ff4456ada7ba86dd75fd7e273d4518fb1b`  
		Last Modified: Sat, 05 May 2018 06:48:38 GMT  
		Size: 4.4 KB (4408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de288f5266ab553a6b931facc9f72f837014fa542e08bef8b8a2b5030356a684`  
		Last Modified: Sat, 05 May 2018 06:48:38 GMT  
		Size: 117.6 KB (117621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a23a6c73e916ea143371fc4c0a9d8935f48e765b5bd1454ce8534a705541ac`  
		Last Modified: Sat, 05 May 2018 06:52:53 GMT  
		Size: 14.8 MB (14773322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc79cff1df9615e5c79e1e88181c114d8f9f4194d76a374db908685b51ed37b`  
		Last Modified: Sat, 05 May 2018 06:52:51 GMT  
		Size: 1.1 MB (1066217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3010e61c5d780ea3ff4f8d7f733bcb5a03f77819ed580f4be8b389bc7d1b7d58`  
		Last Modified: Sat, 05 May 2018 07:58:55 GMT  
		Size: 4.5 KB (4453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16fe3e2a477c2f26db549b091a533cfd0ee63e6491588f4ac0b410b5dc8f90f7`  
		Last Modified: Sat, 05 May 2018 07:58:56 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27aef3ae7f1f7a75723cce81da1367b1b793e8492ae865b93983889aab62376b`  
		Last Modified: Sat, 05 May 2018 07:58:53 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50372d03f48d39d9b5bbc7ab342cd5c8b0e463d1a5b4e6981235b7f60e861cad`  
		Last Modified: Sat, 05 May 2018 07:58:59 GMT  
		Size: 26.3 MB (26345986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e90e72e939e88422d7ce802d42101c588811be461b46099771362431e655e7`  
		Last Modified: Sat, 05 May 2018 07:58:53 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e83a7f11008900d495929f07dad8f0370fe8e25ea9e018be22ec7092cf57f20`  
		Last Modified: Sat, 05 May 2018 07:58:53 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:413e20144dc27ade50d8e2308d5a1e7f008c66ec5eafb30aba1aca7a6a23c0a6`  
		Last Modified: Sat, 05 May 2018 07:58:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:932a70fb4d249ded95aa94db6113e588014d8535d6869ad002007021c91ff7ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117514367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc347b393933acc9934862ef0963f37098c9b8de4b5e180298797f8e599b5cf8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Tue, 01 May 2018 07:39:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 07:39:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 12:51:43 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 01 May 2018 12:51:46 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 04 May 2018 08:44:25 GMT
ENV NODE_VERSION=6.14.2
# Fri, 04 May 2018 08:44:59 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 04 May 2018 08:45:00 GMT
ENV YARN_VERSION=1.6.0
# Fri, 04 May 2018 08:45:05 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 04 May 2018 08:45:06 GMT
CMD ["node"]
# Fri, 04 May 2018 09:11:59 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 04 May 2018 09:12:00 GMT
ENV GOSU_VERSION=1.10
# Fri, 04 May 2018 09:12:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 04 May 2018 09:12:06 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 04 May 2018 09:12:06 GMT
WORKDIR /usr/src/ghost
# Sat, 05 May 2018 10:51:29 GMT
ENV GHOST_VERSION=0.11.13
# Sat, 05 May 2018 10:59:01 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 05 May 2018 10:59:05 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 05 May 2018 10:59:09 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 05 May 2018 10:59:10 GMT
VOLUME [/var/lib/ghost]
# Sat, 05 May 2018 10:59:11 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 05 May 2018 10:59:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 05 May 2018 10:59:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 10:59:17 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 10:59:20 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ab1956443782680cb03e43882013be70cd0dded9f08b67f348f4c326e730b6`  
		Last Modified: Tue, 01 May 2018 08:52:49 GMT  
		Size: 17.2 MB (17192945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880136ad78eb495c625af611073a20010603723520cd59249a2c514c15b3d64e`  
		Last Modified: Tue, 01 May 2018 13:05:43 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7ba65acd91abbb7288e81ff8eea9c533c7cefb2a330d9d88f8207820aa7342`  
		Last Modified: Tue, 01 May 2018 13:05:43 GMT  
		Size: 117.6 KB (117621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0173bb6e0b9fb2585cb4d0c2e0b5fc6006ae18f5fc36b6b134807aa81eba7c`  
		Last Modified: Fri, 04 May 2018 08:48:25 GMT  
		Size: 14.8 MB (14760262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a5d3aa37326c9931ae8399a378c98581ee9e487d3fed08cc929100a35a4569`  
		Last Modified: Fri, 04 May 2018 08:48:19 GMT  
		Size: 1.1 MB (1066218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616fc950a7d2cdd7fc2a9114c74dc009e053fc3419093e76af5a62626017b56b`  
		Last Modified: Fri, 04 May 2018 09:18:32 GMT  
		Size: 4.5 KB (4477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0966b404d382c84d4d40f5752c75161c5b764ffa21dc39241a5d3703b95da035`  
		Last Modified: Fri, 04 May 2018 09:18:32 GMT  
		Size: 468.7 KB (468696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:283ba64d5bc7a5ecfb4dc62eb7d362a5f82805adc6005e9be328ee51ba162549`  
		Last Modified: Fri, 04 May 2018 09:18:31 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce2b05bc2ce524f144730303363c31f4b299109ca039239439ca09bf8d866b9`  
		Last Modified: Sat, 05 May 2018 11:02:45 GMT  
		Size: 32.5 MB (32451778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b48faa8259a266acdc4c8c04de491974d9525aacd481a74f633cbad71ac5ff2`  
		Last Modified: Sat, 05 May 2018 11:02:11 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a7144d9a86e7bc3f533f03fa273a0bf18a9f6563c36b74a2cb497547e675ce8`  
		Last Modified: Sat, 05 May 2018 11:02:10 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45561926e5c871660198a2592a994425aa2edf5ecbab84e2a205acdca6593218`  
		Last Modified: Sat, 05 May 2018 11:02:12 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; 386

```console
$ docker pull ghost@sha256:f6ff2dbd5bcbea31312edd452d690c58f3e2445c36fb1b42e6f08c21b8ecd233
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122849904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3581f096ccee61334d5ef7ccda26aa51563292b9d51f97d070bc46d4ab0e249`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:32 GMT
ADD file:ce5174f2b2c155a2421fac3ff37a02d9551d5d79e31a541189bcfd2416a6903a in / 
# Sat, 28 Apr 2018 10:39:32 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:05:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:05:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 19:37:45 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 28 Apr 2018 19:37:46 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 04 May 2018 10:56:20 GMT
ENV NODE_VERSION=6.14.2
# Fri, 04 May 2018 10:57:00 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 04 May 2018 10:57:00 GMT
ENV YARN_VERSION=1.6.0
# Fri, 04 May 2018 10:57:03 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 04 May 2018 10:57:03 GMT
CMD ["node"]
# Fri, 04 May 2018 11:23:41 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 04 May 2018 11:23:41 GMT
ENV GOSU_VERSION=1.10
# Fri, 04 May 2018 11:23:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 04 May 2018 11:23:44 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 04 May 2018 11:23:45 GMT
WORKDIR /usr/src/ghost
# Sat, 05 May 2018 11:55:00 GMT
ENV GHOST_VERSION=0.11.13
# Sat, 05 May 2018 11:57:01 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 05 May 2018 11:57:02 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 05 May 2018 11:57:03 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 05 May 2018 11:57:03 GMT
VOLUME [/var/lib/ghost]
# Sat, 05 May 2018 11:57:03 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 05 May 2018 11:57:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 05 May 2018 11:57:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 11:57:04 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 11:57:04 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:05b419d667f793c8c2edf0ff0aec14fc4d66733cdb89957ac89e8bfbeaddd0fa`  
		Last Modified: Sat, 28 Apr 2018 10:44:20 GMT  
		Size: 54.5 MB (54486782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330b9c3b7ebe34e933c240e5eb7f8620732974e6e15e2c5d17cb91ca2aefffa4`  
		Last Modified: Sat, 28 Apr 2018 12:41:22 GMT  
		Size: 19.9 MB (19866118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618a70cca8b81e7f688c7591ffb047d440d878e7c088b564e9e8611c1157dba5`  
		Last Modified: Sat, 28 Apr 2018 19:46:03 GMT  
		Size: 4.4 KB (4394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b2b5615162ffa8552b2e45aa789d255d2331fa388ef168bf3115fe546951502`  
		Last Modified: Sat, 28 Apr 2018 19:46:03 GMT  
		Size: 117.6 KB (117613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fdbd187f7696349101d0acf3a7c0deb688d21772f6f358449ff501b6ec646f7`  
		Last Modified: Fri, 04 May 2018 11:00:41 GMT  
		Size: 14.3 MB (14297650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6765edb4e0b4eedbf209a99a5540d1751a1f7fc741dc58ce46781c5cd4d3389a`  
		Last Modified: Fri, 04 May 2018 11:00:39 GMT  
		Size: 1.1 MB (1066219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe0ff9641968a141e11df6b60154fe39f620371729b39b63e2920678e09b4a0`  
		Last Modified: Fri, 04 May 2018 11:29:33 GMT  
		Size: 4.4 KB (4445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e14c3885d9c0c8b2bac82e5300aadfcb9a98bea08d725154b66748af3840a6`  
		Last Modified: Fri, 04 May 2018 11:29:34 GMT  
		Size: 480.6 KB (480562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2d70cba93d3deb0ec9d42714ff96809b4fa57103d01dbce42ca6d40f230ced`  
		Last Modified: Fri, 04 May 2018 11:29:34 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2fc1dcd1b6c5b2259e72db7211fadb737c50467be934bf0b0f998b5cb90c05f`  
		Last Modified: Sat, 05 May 2018 12:00:48 GMT  
		Size: 32.5 MB (32525018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a87a1dc0bcbbd074bb1ac4a524e9147faadbf9032d82f4d6c2751f832225f97`  
		Last Modified: Sat, 05 May 2018 12:00:38 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334f28e36a6c883d7164a24962db3ea61b10f37a93635fe2f3809c6c84fc1c69`  
		Last Modified: Sat, 05 May 2018 12:00:38 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb94dd98c9ab8e17b26537dd68c6f3ca9db8f01e734aba364cf7cd6f210da13`  
		Last Modified: Sat, 05 May 2018 12:00:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; ppc64le

```console
$ docker pull ghost@sha256:936dc721c34330a3e48f06fdf3ec5ec73ef2b9f17349ceba189c738876e3db15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.0 MB (120044222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5af45a417b9c4df31339c540e159abaff19afbe16b3340b194a49eb6f2c9602`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:53:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:53:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 15:49:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 28 Apr 2018 15:49:27 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 28 Apr 2018 16:06:30 GMT
ENV NODE_VERSION=6.14.1
# Sat, 28 Apr 2018 16:07:44 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 28 Apr 2018 16:07:46 GMT
ENV YARN_VERSION=1.5.1
# Sat, 28 Apr 2018 16:07:54 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 28 Apr 2018 16:07:55 GMT
CMD ["node"]
# Sat, 28 Apr 2018 20:31:41 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 28 Apr 2018 20:31:41 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 20:31:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 28 Apr 2018 20:31:46 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 28 Apr 2018 20:31:47 GMT
WORKDIR /usr/src/ghost
# Sat, 05 May 2018 08:24:21 GMT
ENV GHOST_VERSION=0.11.13
# Sat, 05 May 2018 08:28:25 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 05 May 2018 08:28:26 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 05 May 2018 08:28:29 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 05 May 2018 08:28:29 GMT
VOLUME [/var/lib/ghost]
# Sat, 05 May 2018 08:28:30 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 05 May 2018 08:28:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 05 May 2018 08:28:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 08:28:34 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 08:28:35 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73feb4c62e83f77f05ed3c1a72c453fce29bc8adee3ff31855937f28f0b9ad00`  
		Last Modified: Sat, 28 Apr 2018 10:38:43 GMT  
		Size: 17.6 MB (17571133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b033729a6b8a78e4b13cad1f1d95e6f4ab8461fcb87c89fb4882c297de02fbad`  
		Last Modified: Sat, 28 Apr 2018 16:32:50 GMT  
		Size: 4.4 KB (4438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd479c883acc5f45e3b06fe53ee3e824909480d7ee4035c57a3303a6058d3c1`  
		Last Modified: Sat, 28 Apr 2018 16:32:50 GMT  
		Size: 117.7 KB (117651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5de8244112e4f1d6cb1f72cc7c9021d8f19e4df7a44412b636ab3b2dcc500d`  
		Last Modified: Sat, 28 Apr 2018 16:38:33 GMT  
		Size: 14.5 MB (14503944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abbfc0285034d19463723dc2bed92d0074a197c39428886cf1bbe764a96829bd`  
		Last Modified: Sat, 28 Apr 2018 16:38:26 GMT  
		Size: 1.1 MB (1061054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1149a2cb4eee9745b4c094d6d21cb1b7411a26d289c2ab9839d5dab2d00eaf22`  
		Last Modified: Sat, 28 Apr 2018 20:37:34 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f87c1d75b2e07f95919646be22128d325f057a34915b478b2f940c9b20808e9`  
		Last Modified: Sat, 28 Apr 2018 20:37:34 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6bbf03cfcfaf60d5ff4ae48c178a7ff5f35382ac3962117e89422aa3606686a`  
		Last Modified: Sat, 28 Apr 2018 20:37:32 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a76f7a0571392a59b3ecc4d14c517aff91f4b00c6006c4680e22950a4e5ab0f`  
		Last Modified: Sat, 05 May 2018 08:30:13 GMT  
		Size: 32.9 MB (32917684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f7d940399bdde5c3de249c8c40117e1dcf63b252636582042484876d8ed0447`  
		Last Modified: Sat, 05 May 2018 08:30:02 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe529028c4bcc1801dce66f4cf9deb2905a7fa876e0a7325e1ad8dcd1bdceb9`  
		Last Modified: Sat, 05 May 2018 08:30:02 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22211c5a1b093a7175dc87e2b94dad1ae619519abc8754de095695b88f41f07a`  
		Last Modified: Sat, 05 May 2018 08:30:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; s390x

```console
$ docker pull ghost@sha256:1312d457c27911b283838a4dd3b30d33520930db3f5b8a8e7fd668ac6b195df9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121782575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24c486fcab97e44cc320cadc80ffb7288bcb8391f9ba272daddfa4dc4ed8ebf1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:13:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:13:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 13:27:14 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 28 Apr 2018 13:27:15 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 04 May 2018 12:45:55 GMT
ENV NODE_VERSION=6.14.2
# Fri, 04 May 2018 12:46:09 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 04 May 2018 12:46:10 GMT
ENV YARN_VERSION=1.6.0
# Fri, 04 May 2018 12:46:12 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 04 May 2018 12:46:12 GMT
CMD ["node"]
# Fri, 04 May 2018 13:06:41 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 04 May 2018 13:06:41 GMT
ENV GOSU_VERSION=1.10
# Fri, 04 May 2018 13:06:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 04 May 2018 13:06:43 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 04 May 2018 13:06:43 GMT
WORKDIR /usr/src/ghost
# Sat, 05 May 2018 12:17:52 GMT
ENV GHOST_VERSION=0.11.13
# Sat, 05 May 2018 12:19:38 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 05 May 2018 12:19:40 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 05 May 2018 12:19:40 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 05 May 2018 12:19:41 GMT
VOLUME [/var/lib/ghost]
# Sat, 05 May 2018 12:19:41 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 05 May 2018 12:19:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 05 May 2018 12:19:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 12:19:42 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 12:19:42 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2331cf8e884c1052e19f6b80b3efb54a7163ab49bf54c631bd861332c232029f`  
		Last Modified: Sat, 28 Apr 2018 13:29:06 GMT  
		Size: 17.8 MB (17767296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1573c40a4e9e40c7d5639586badca4c9ac2080488a599636910b77ac19a689`  
		Last Modified: Sat, 28 Apr 2018 13:29:01 GMT  
		Size: 4.4 KB (4410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd78e74bc99cbd7061122cf0fe9a054fb495f9bef7ef1502f65f98935d869fb`  
		Last Modified: Sat, 28 Apr 2018 13:29:01 GMT  
		Size: 117.6 KB (117619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae0b0f42c03caef1dd3f3f7d8ab8b3e136711648758d32b4bb0924132086e7f`  
		Last Modified: Fri, 04 May 2018 12:48:01 GMT  
		Size: 14.9 MB (14910558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992273aa70200d981cf7d15fd93ab6020cbe70689cd11d44d997aac565066423`  
		Last Modified: Fri, 04 May 2018 12:47:57 GMT  
		Size: 1.1 MB (1066217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f389c6d2ef7ef62bf08d5686806d98bc4b44bc163af235fb3fdfde8bde1ccd6a`  
		Last Modified: Fri, 04 May 2018 13:09:23 GMT  
		Size: 4.5 KB (4459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3001b1be2b464e3bc5e3571fae938787aade78b037f9fe8fefe3d87e91004aad`  
		Last Modified: Fri, 04 May 2018 13:09:23 GMT  
		Size: 486.8 KB (486821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:071c55ff69db9856cc4454bfbd53c814376eda820915157b12b3d5befe97fca5`  
		Last Modified: Fri, 04 May 2018 13:09:21 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc3bbc44dd9d00f320fd36b0c6ef53068effa7be362311e1b31d79981a20ea5`  
		Last Modified: Sat, 05 May 2018 12:21:16 GMT  
		Size: 33.0 MB (32958236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c53d027bc8f0111c5924e02c01a9ee96a939e9bf935ba77d7c6c8023e6459d3d`  
		Last Modified: Sat, 05 May 2018 12:21:05 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa6606936472a6a7d967d2839fce821f64b454931372ab9689f9d24423bf711`  
		Last Modified: Sat, 05 May 2018 12:21:04 GMT  
		Size: 623.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c529f773a1ca551ca35b80d584e23e982eed0fd9d69290250dda29d797ab3043`  
		Last Modified: Sat, 05 May 2018 12:21:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11`

```console
$ docker pull ghost@sha256:c3225b2acdba55c9ef0e3644ed01547736258d3f35405d25e31f4489e90dc241
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
$ docker pull ghost@sha256:5aaf0e43688e095ac3c72d1a6257caf664753da3e89c6ec2567824692d4d9dbc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114661091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2802a3fd1b2459253aa589d2ee5c2c5006f2320c3d9bdfee5bf451ac7dad454b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Fri, 04 May 2018 17:35:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 17:35:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 06:40:50 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 05 May 2018 06:40:53 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 05 May 2018 06:43:38 GMT
ENV NODE_VERSION=6.14.2
# Sat, 05 May 2018 06:43:58 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 05 May 2018 06:43:59 GMT
ENV YARN_VERSION=1.6.0
# Sat, 05 May 2018 06:44:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 05 May 2018 06:44:02 GMT
CMD ["node"]
# Sat, 05 May 2018 07:56:26 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 05 May 2018 07:56:26 GMT
ENV GOSU_VERSION=1.10
# Sat, 05 May 2018 07:56:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 05 May 2018 07:56:30 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 05 May 2018 07:56:31 GMT
WORKDIR /usr/src/ghost
# Sat, 05 May 2018 07:56:31 GMT
ENV GHOST_VERSION=0.11.13
# Sat, 05 May 2018 07:57:46 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 05 May 2018 07:57:47 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 05 May 2018 07:57:48 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 05 May 2018 07:57:48 GMT
VOLUME [/var/lib/ghost]
# Sat, 05 May 2018 07:57:48 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 05 May 2018 07:57:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 05 May 2018 07:57:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 07:57:49 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 07:57:50 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534514c83d698ad8a2ef994eeedaed92738e401d735e453d47e635cca02901b6`  
		Last Modified: Fri, 04 May 2018 18:19:14 GMT  
		Size: 17.6 MB (17584745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d86970c40400552472f8836ab621ff4456ada7ba86dd75fd7e273d4518fb1b`  
		Last Modified: Sat, 05 May 2018 06:48:38 GMT  
		Size: 4.4 KB (4408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de288f5266ab553a6b931facc9f72f837014fa542e08bef8b8a2b5030356a684`  
		Last Modified: Sat, 05 May 2018 06:48:38 GMT  
		Size: 117.6 KB (117621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a23a6c73e916ea143371fc4c0a9d8935f48e765b5bd1454ce8534a705541ac`  
		Last Modified: Sat, 05 May 2018 06:52:53 GMT  
		Size: 14.8 MB (14773322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc79cff1df9615e5c79e1e88181c114d8f9f4194d76a374db908685b51ed37b`  
		Last Modified: Sat, 05 May 2018 06:52:51 GMT  
		Size: 1.1 MB (1066217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3010e61c5d780ea3ff4f8d7f733bcb5a03f77819ed580f4be8b389bc7d1b7d58`  
		Last Modified: Sat, 05 May 2018 07:58:55 GMT  
		Size: 4.5 KB (4453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16fe3e2a477c2f26db549b091a533cfd0ee63e6491588f4ac0b410b5dc8f90f7`  
		Last Modified: Sat, 05 May 2018 07:58:56 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27aef3ae7f1f7a75723cce81da1367b1b793e8492ae865b93983889aab62376b`  
		Last Modified: Sat, 05 May 2018 07:58:53 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50372d03f48d39d9b5bbc7ab342cd5c8b0e463d1a5b4e6981235b7f60e861cad`  
		Last Modified: Sat, 05 May 2018 07:58:59 GMT  
		Size: 26.3 MB (26345986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e90e72e939e88422d7ce802d42101c588811be461b46099771362431e655e7`  
		Last Modified: Sat, 05 May 2018 07:58:53 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e83a7f11008900d495929f07dad8f0370fe8e25ea9e018be22ec7092cf57f20`  
		Last Modified: Sat, 05 May 2018 07:58:53 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:413e20144dc27ade50d8e2308d5a1e7f008c66ec5eafb30aba1aca7a6a23c0a6`  
		Last Modified: Sat, 05 May 2018 07:58:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:932a70fb4d249ded95aa94db6113e588014d8535d6869ad002007021c91ff7ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117514367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc347b393933acc9934862ef0963f37098c9b8de4b5e180298797f8e599b5cf8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Tue, 01 May 2018 07:39:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 07:39:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 12:51:43 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 01 May 2018 12:51:46 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 04 May 2018 08:44:25 GMT
ENV NODE_VERSION=6.14.2
# Fri, 04 May 2018 08:44:59 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 04 May 2018 08:45:00 GMT
ENV YARN_VERSION=1.6.0
# Fri, 04 May 2018 08:45:05 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 04 May 2018 08:45:06 GMT
CMD ["node"]
# Fri, 04 May 2018 09:11:59 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 04 May 2018 09:12:00 GMT
ENV GOSU_VERSION=1.10
# Fri, 04 May 2018 09:12:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 04 May 2018 09:12:06 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 04 May 2018 09:12:06 GMT
WORKDIR /usr/src/ghost
# Sat, 05 May 2018 10:51:29 GMT
ENV GHOST_VERSION=0.11.13
# Sat, 05 May 2018 10:59:01 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 05 May 2018 10:59:05 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 05 May 2018 10:59:09 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 05 May 2018 10:59:10 GMT
VOLUME [/var/lib/ghost]
# Sat, 05 May 2018 10:59:11 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 05 May 2018 10:59:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 05 May 2018 10:59:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 10:59:17 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 10:59:20 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ab1956443782680cb03e43882013be70cd0dded9f08b67f348f4c326e730b6`  
		Last Modified: Tue, 01 May 2018 08:52:49 GMT  
		Size: 17.2 MB (17192945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880136ad78eb495c625af611073a20010603723520cd59249a2c514c15b3d64e`  
		Last Modified: Tue, 01 May 2018 13:05:43 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7ba65acd91abbb7288e81ff8eea9c533c7cefb2a330d9d88f8207820aa7342`  
		Last Modified: Tue, 01 May 2018 13:05:43 GMT  
		Size: 117.6 KB (117621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0173bb6e0b9fb2585cb4d0c2e0b5fc6006ae18f5fc36b6b134807aa81eba7c`  
		Last Modified: Fri, 04 May 2018 08:48:25 GMT  
		Size: 14.8 MB (14760262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a5d3aa37326c9931ae8399a378c98581ee9e487d3fed08cc929100a35a4569`  
		Last Modified: Fri, 04 May 2018 08:48:19 GMT  
		Size: 1.1 MB (1066218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616fc950a7d2cdd7fc2a9114c74dc009e053fc3419093e76af5a62626017b56b`  
		Last Modified: Fri, 04 May 2018 09:18:32 GMT  
		Size: 4.5 KB (4477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0966b404d382c84d4d40f5752c75161c5b764ffa21dc39241a5d3703b95da035`  
		Last Modified: Fri, 04 May 2018 09:18:32 GMT  
		Size: 468.7 KB (468696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:283ba64d5bc7a5ecfb4dc62eb7d362a5f82805adc6005e9be328ee51ba162549`  
		Last Modified: Fri, 04 May 2018 09:18:31 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce2b05bc2ce524f144730303363c31f4b299109ca039239439ca09bf8d866b9`  
		Last Modified: Sat, 05 May 2018 11:02:45 GMT  
		Size: 32.5 MB (32451778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b48faa8259a266acdc4c8c04de491974d9525aacd481a74f633cbad71ac5ff2`  
		Last Modified: Sat, 05 May 2018 11:02:11 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a7144d9a86e7bc3f533f03fa273a0bf18a9f6563c36b74a2cb497547e675ce8`  
		Last Modified: Sat, 05 May 2018 11:02:10 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45561926e5c871660198a2592a994425aa2edf5ecbab84e2a205acdca6593218`  
		Last Modified: Sat, 05 May 2018 11:02:12 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; 386

```console
$ docker pull ghost@sha256:f6ff2dbd5bcbea31312edd452d690c58f3e2445c36fb1b42e6f08c21b8ecd233
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122849904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3581f096ccee61334d5ef7ccda26aa51563292b9d51f97d070bc46d4ab0e249`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:32 GMT
ADD file:ce5174f2b2c155a2421fac3ff37a02d9551d5d79e31a541189bcfd2416a6903a in / 
# Sat, 28 Apr 2018 10:39:32 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:05:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:05:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 19:37:45 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 28 Apr 2018 19:37:46 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 04 May 2018 10:56:20 GMT
ENV NODE_VERSION=6.14.2
# Fri, 04 May 2018 10:57:00 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 04 May 2018 10:57:00 GMT
ENV YARN_VERSION=1.6.0
# Fri, 04 May 2018 10:57:03 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 04 May 2018 10:57:03 GMT
CMD ["node"]
# Fri, 04 May 2018 11:23:41 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 04 May 2018 11:23:41 GMT
ENV GOSU_VERSION=1.10
# Fri, 04 May 2018 11:23:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 04 May 2018 11:23:44 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 04 May 2018 11:23:45 GMT
WORKDIR /usr/src/ghost
# Sat, 05 May 2018 11:55:00 GMT
ENV GHOST_VERSION=0.11.13
# Sat, 05 May 2018 11:57:01 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 05 May 2018 11:57:02 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 05 May 2018 11:57:03 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 05 May 2018 11:57:03 GMT
VOLUME [/var/lib/ghost]
# Sat, 05 May 2018 11:57:03 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 05 May 2018 11:57:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 05 May 2018 11:57:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 11:57:04 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 11:57:04 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:05b419d667f793c8c2edf0ff0aec14fc4d66733cdb89957ac89e8bfbeaddd0fa`  
		Last Modified: Sat, 28 Apr 2018 10:44:20 GMT  
		Size: 54.5 MB (54486782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330b9c3b7ebe34e933c240e5eb7f8620732974e6e15e2c5d17cb91ca2aefffa4`  
		Last Modified: Sat, 28 Apr 2018 12:41:22 GMT  
		Size: 19.9 MB (19866118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618a70cca8b81e7f688c7591ffb047d440d878e7c088b564e9e8611c1157dba5`  
		Last Modified: Sat, 28 Apr 2018 19:46:03 GMT  
		Size: 4.4 KB (4394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b2b5615162ffa8552b2e45aa789d255d2331fa388ef168bf3115fe546951502`  
		Last Modified: Sat, 28 Apr 2018 19:46:03 GMT  
		Size: 117.6 KB (117613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fdbd187f7696349101d0acf3a7c0deb688d21772f6f358449ff501b6ec646f7`  
		Last Modified: Fri, 04 May 2018 11:00:41 GMT  
		Size: 14.3 MB (14297650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6765edb4e0b4eedbf209a99a5540d1751a1f7fc741dc58ce46781c5cd4d3389a`  
		Last Modified: Fri, 04 May 2018 11:00:39 GMT  
		Size: 1.1 MB (1066219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe0ff9641968a141e11df6b60154fe39f620371729b39b63e2920678e09b4a0`  
		Last Modified: Fri, 04 May 2018 11:29:33 GMT  
		Size: 4.4 KB (4445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e14c3885d9c0c8b2bac82e5300aadfcb9a98bea08d725154b66748af3840a6`  
		Last Modified: Fri, 04 May 2018 11:29:34 GMT  
		Size: 480.6 KB (480562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2d70cba93d3deb0ec9d42714ff96809b4fa57103d01dbce42ca6d40f230ced`  
		Last Modified: Fri, 04 May 2018 11:29:34 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2fc1dcd1b6c5b2259e72db7211fadb737c50467be934bf0b0f998b5cb90c05f`  
		Last Modified: Sat, 05 May 2018 12:00:48 GMT  
		Size: 32.5 MB (32525018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a87a1dc0bcbbd074bb1ac4a524e9147faadbf9032d82f4d6c2751f832225f97`  
		Last Modified: Sat, 05 May 2018 12:00:38 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334f28e36a6c883d7164a24962db3ea61b10f37a93635fe2f3809c6c84fc1c69`  
		Last Modified: Sat, 05 May 2018 12:00:38 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb94dd98c9ab8e17b26537dd68c6f3ca9db8f01e734aba364cf7cd6f210da13`  
		Last Modified: Sat, 05 May 2018 12:00:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; ppc64le

```console
$ docker pull ghost@sha256:936dc721c34330a3e48f06fdf3ec5ec73ef2b9f17349ceba189c738876e3db15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.0 MB (120044222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5af45a417b9c4df31339c540e159abaff19afbe16b3340b194a49eb6f2c9602`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:53:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:53:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 15:49:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 28 Apr 2018 15:49:27 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 28 Apr 2018 16:06:30 GMT
ENV NODE_VERSION=6.14.1
# Sat, 28 Apr 2018 16:07:44 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 28 Apr 2018 16:07:46 GMT
ENV YARN_VERSION=1.5.1
# Sat, 28 Apr 2018 16:07:54 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 28 Apr 2018 16:07:55 GMT
CMD ["node"]
# Sat, 28 Apr 2018 20:31:41 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 28 Apr 2018 20:31:41 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 20:31:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 28 Apr 2018 20:31:46 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 28 Apr 2018 20:31:47 GMT
WORKDIR /usr/src/ghost
# Sat, 05 May 2018 08:24:21 GMT
ENV GHOST_VERSION=0.11.13
# Sat, 05 May 2018 08:28:25 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 05 May 2018 08:28:26 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 05 May 2018 08:28:29 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 05 May 2018 08:28:29 GMT
VOLUME [/var/lib/ghost]
# Sat, 05 May 2018 08:28:30 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 05 May 2018 08:28:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 05 May 2018 08:28:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 08:28:34 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 08:28:35 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73feb4c62e83f77f05ed3c1a72c453fce29bc8adee3ff31855937f28f0b9ad00`  
		Last Modified: Sat, 28 Apr 2018 10:38:43 GMT  
		Size: 17.6 MB (17571133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b033729a6b8a78e4b13cad1f1d95e6f4ab8461fcb87c89fb4882c297de02fbad`  
		Last Modified: Sat, 28 Apr 2018 16:32:50 GMT  
		Size: 4.4 KB (4438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd479c883acc5f45e3b06fe53ee3e824909480d7ee4035c57a3303a6058d3c1`  
		Last Modified: Sat, 28 Apr 2018 16:32:50 GMT  
		Size: 117.7 KB (117651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5de8244112e4f1d6cb1f72cc7c9021d8f19e4df7a44412b636ab3b2dcc500d`  
		Last Modified: Sat, 28 Apr 2018 16:38:33 GMT  
		Size: 14.5 MB (14503944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abbfc0285034d19463723dc2bed92d0074a197c39428886cf1bbe764a96829bd`  
		Last Modified: Sat, 28 Apr 2018 16:38:26 GMT  
		Size: 1.1 MB (1061054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1149a2cb4eee9745b4c094d6d21cb1b7411a26d289c2ab9839d5dab2d00eaf22`  
		Last Modified: Sat, 28 Apr 2018 20:37:34 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f87c1d75b2e07f95919646be22128d325f057a34915b478b2f940c9b20808e9`  
		Last Modified: Sat, 28 Apr 2018 20:37:34 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6bbf03cfcfaf60d5ff4ae48c178a7ff5f35382ac3962117e89422aa3606686a`  
		Last Modified: Sat, 28 Apr 2018 20:37:32 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a76f7a0571392a59b3ecc4d14c517aff91f4b00c6006c4680e22950a4e5ab0f`  
		Last Modified: Sat, 05 May 2018 08:30:13 GMT  
		Size: 32.9 MB (32917684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f7d940399bdde5c3de249c8c40117e1dcf63b252636582042484876d8ed0447`  
		Last Modified: Sat, 05 May 2018 08:30:02 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe529028c4bcc1801dce66f4cf9deb2905a7fa876e0a7325e1ad8dcd1bdceb9`  
		Last Modified: Sat, 05 May 2018 08:30:02 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22211c5a1b093a7175dc87e2b94dad1ae619519abc8754de095695b88f41f07a`  
		Last Modified: Sat, 05 May 2018 08:30:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; s390x

```console
$ docker pull ghost@sha256:1312d457c27911b283838a4dd3b30d33520930db3f5b8a8e7fd668ac6b195df9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121782575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24c486fcab97e44cc320cadc80ffb7288bcb8391f9ba272daddfa4dc4ed8ebf1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:13:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:13:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 13:27:14 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 28 Apr 2018 13:27:15 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 04 May 2018 12:45:55 GMT
ENV NODE_VERSION=6.14.2
# Fri, 04 May 2018 12:46:09 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 04 May 2018 12:46:10 GMT
ENV YARN_VERSION=1.6.0
# Fri, 04 May 2018 12:46:12 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 04 May 2018 12:46:12 GMT
CMD ["node"]
# Fri, 04 May 2018 13:06:41 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 04 May 2018 13:06:41 GMT
ENV GOSU_VERSION=1.10
# Fri, 04 May 2018 13:06:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 04 May 2018 13:06:43 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 04 May 2018 13:06:43 GMT
WORKDIR /usr/src/ghost
# Sat, 05 May 2018 12:17:52 GMT
ENV GHOST_VERSION=0.11.13
# Sat, 05 May 2018 12:19:38 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 05 May 2018 12:19:40 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 05 May 2018 12:19:40 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 05 May 2018 12:19:41 GMT
VOLUME [/var/lib/ghost]
# Sat, 05 May 2018 12:19:41 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 05 May 2018 12:19:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 05 May 2018 12:19:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 12:19:42 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 12:19:42 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2331cf8e884c1052e19f6b80b3efb54a7163ab49bf54c631bd861332c232029f`  
		Last Modified: Sat, 28 Apr 2018 13:29:06 GMT  
		Size: 17.8 MB (17767296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1573c40a4e9e40c7d5639586badca4c9ac2080488a599636910b77ac19a689`  
		Last Modified: Sat, 28 Apr 2018 13:29:01 GMT  
		Size: 4.4 KB (4410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd78e74bc99cbd7061122cf0fe9a054fb495f9bef7ef1502f65f98935d869fb`  
		Last Modified: Sat, 28 Apr 2018 13:29:01 GMT  
		Size: 117.6 KB (117619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae0b0f42c03caef1dd3f3f7d8ab8b3e136711648758d32b4bb0924132086e7f`  
		Last Modified: Fri, 04 May 2018 12:48:01 GMT  
		Size: 14.9 MB (14910558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992273aa70200d981cf7d15fd93ab6020cbe70689cd11d44d997aac565066423`  
		Last Modified: Fri, 04 May 2018 12:47:57 GMT  
		Size: 1.1 MB (1066217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f389c6d2ef7ef62bf08d5686806d98bc4b44bc163af235fb3fdfde8bde1ccd6a`  
		Last Modified: Fri, 04 May 2018 13:09:23 GMT  
		Size: 4.5 KB (4459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3001b1be2b464e3bc5e3571fae938787aade78b037f9fe8fefe3d87e91004aad`  
		Last Modified: Fri, 04 May 2018 13:09:23 GMT  
		Size: 486.8 KB (486821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:071c55ff69db9856cc4454bfbd53c814376eda820915157b12b3d5befe97fca5`  
		Last Modified: Fri, 04 May 2018 13:09:21 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc3bbc44dd9d00f320fd36b0c6ef53068effa7be362311e1b31d79981a20ea5`  
		Last Modified: Sat, 05 May 2018 12:21:16 GMT  
		Size: 33.0 MB (32958236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c53d027bc8f0111c5924e02c01a9ee96a939e9bf935ba77d7c6c8023e6459d3d`  
		Last Modified: Sat, 05 May 2018 12:21:05 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa6606936472a6a7d967d2839fce821f64b454931372ab9689f9d24423bf711`  
		Last Modified: Sat, 05 May 2018 12:21:04 GMT  
		Size: 623.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c529f773a1ca551ca35b80d584e23e982eed0fd9d69290250dda29d797ab3043`  
		Last Modified: Sat, 05 May 2018 12:21:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.13`

```console
$ docker pull ghost@sha256:c3225b2acdba55c9ef0e3644ed01547736258d3f35405d25e31f4489e90dc241
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
$ docker pull ghost@sha256:5aaf0e43688e095ac3c72d1a6257caf664753da3e89c6ec2567824692d4d9dbc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114661091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2802a3fd1b2459253aa589d2ee5c2c5006f2320c3d9bdfee5bf451ac7dad454b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Fri, 04 May 2018 17:35:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 17:35:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 06:40:50 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 05 May 2018 06:40:53 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 05 May 2018 06:43:38 GMT
ENV NODE_VERSION=6.14.2
# Sat, 05 May 2018 06:43:58 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 05 May 2018 06:43:59 GMT
ENV YARN_VERSION=1.6.0
# Sat, 05 May 2018 06:44:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 05 May 2018 06:44:02 GMT
CMD ["node"]
# Sat, 05 May 2018 07:56:26 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 05 May 2018 07:56:26 GMT
ENV GOSU_VERSION=1.10
# Sat, 05 May 2018 07:56:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 05 May 2018 07:56:30 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 05 May 2018 07:56:31 GMT
WORKDIR /usr/src/ghost
# Sat, 05 May 2018 07:56:31 GMT
ENV GHOST_VERSION=0.11.13
# Sat, 05 May 2018 07:57:46 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 05 May 2018 07:57:47 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 05 May 2018 07:57:48 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 05 May 2018 07:57:48 GMT
VOLUME [/var/lib/ghost]
# Sat, 05 May 2018 07:57:48 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 05 May 2018 07:57:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 05 May 2018 07:57:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 07:57:49 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 07:57:50 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534514c83d698ad8a2ef994eeedaed92738e401d735e453d47e635cca02901b6`  
		Last Modified: Fri, 04 May 2018 18:19:14 GMT  
		Size: 17.6 MB (17584745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d86970c40400552472f8836ab621ff4456ada7ba86dd75fd7e273d4518fb1b`  
		Last Modified: Sat, 05 May 2018 06:48:38 GMT  
		Size: 4.4 KB (4408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de288f5266ab553a6b931facc9f72f837014fa542e08bef8b8a2b5030356a684`  
		Last Modified: Sat, 05 May 2018 06:48:38 GMT  
		Size: 117.6 KB (117621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a23a6c73e916ea143371fc4c0a9d8935f48e765b5bd1454ce8534a705541ac`  
		Last Modified: Sat, 05 May 2018 06:52:53 GMT  
		Size: 14.8 MB (14773322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc79cff1df9615e5c79e1e88181c114d8f9f4194d76a374db908685b51ed37b`  
		Last Modified: Sat, 05 May 2018 06:52:51 GMT  
		Size: 1.1 MB (1066217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3010e61c5d780ea3ff4f8d7f733bcb5a03f77819ed580f4be8b389bc7d1b7d58`  
		Last Modified: Sat, 05 May 2018 07:58:55 GMT  
		Size: 4.5 KB (4453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16fe3e2a477c2f26db549b091a533cfd0ee63e6491588f4ac0b410b5dc8f90f7`  
		Last Modified: Sat, 05 May 2018 07:58:56 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27aef3ae7f1f7a75723cce81da1367b1b793e8492ae865b93983889aab62376b`  
		Last Modified: Sat, 05 May 2018 07:58:53 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50372d03f48d39d9b5bbc7ab342cd5c8b0e463d1a5b4e6981235b7f60e861cad`  
		Last Modified: Sat, 05 May 2018 07:58:59 GMT  
		Size: 26.3 MB (26345986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e90e72e939e88422d7ce802d42101c588811be461b46099771362431e655e7`  
		Last Modified: Sat, 05 May 2018 07:58:53 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e83a7f11008900d495929f07dad8f0370fe8e25ea9e018be22ec7092cf57f20`  
		Last Modified: Sat, 05 May 2018 07:58:53 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:413e20144dc27ade50d8e2308d5a1e7f008c66ec5eafb30aba1aca7a6a23c0a6`  
		Last Modified: Sat, 05 May 2018 07:58:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.13` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:932a70fb4d249ded95aa94db6113e588014d8535d6869ad002007021c91ff7ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117514367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc347b393933acc9934862ef0963f37098c9b8de4b5e180298797f8e599b5cf8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Tue, 01 May 2018 07:39:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 07:39:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 12:51:43 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 01 May 2018 12:51:46 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 04 May 2018 08:44:25 GMT
ENV NODE_VERSION=6.14.2
# Fri, 04 May 2018 08:44:59 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 04 May 2018 08:45:00 GMT
ENV YARN_VERSION=1.6.0
# Fri, 04 May 2018 08:45:05 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 04 May 2018 08:45:06 GMT
CMD ["node"]
# Fri, 04 May 2018 09:11:59 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 04 May 2018 09:12:00 GMT
ENV GOSU_VERSION=1.10
# Fri, 04 May 2018 09:12:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 04 May 2018 09:12:06 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 04 May 2018 09:12:06 GMT
WORKDIR /usr/src/ghost
# Sat, 05 May 2018 10:51:29 GMT
ENV GHOST_VERSION=0.11.13
# Sat, 05 May 2018 10:59:01 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 05 May 2018 10:59:05 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 05 May 2018 10:59:09 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 05 May 2018 10:59:10 GMT
VOLUME [/var/lib/ghost]
# Sat, 05 May 2018 10:59:11 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 05 May 2018 10:59:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 05 May 2018 10:59:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 10:59:17 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 10:59:20 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ab1956443782680cb03e43882013be70cd0dded9f08b67f348f4c326e730b6`  
		Last Modified: Tue, 01 May 2018 08:52:49 GMT  
		Size: 17.2 MB (17192945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880136ad78eb495c625af611073a20010603723520cd59249a2c514c15b3d64e`  
		Last Modified: Tue, 01 May 2018 13:05:43 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7ba65acd91abbb7288e81ff8eea9c533c7cefb2a330d9d88f8207820aa7342`  
		Last Modified: Tue, 01 May 2018 13:05:43 GMT  
		Size: 117.6 KB (117621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0173bb6e0b9fb2585cb4d0c2e0b5fc6006ae18f5fc36b6b134807aa81eba7c`  
		Last Modified: Fri, 04 May 2018 08:48:25 GMT  
		Size: 14.8 MB (14760262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a5d3aa37326c9931ae8399a378c98581ee9e487d3fed08cc929100a35a4569`  
		Last Modified: Fri, 04 May 2018 08:48:19 GMT  
		Size: 1.1 MB (1066218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616fc950a7d2cdd7fc2a9114c74dc009e053fc3419093e76af5a62626017b56b`  
		Last Modified: Fri, 04 May 2018 09:18:32 GMT  
		Size: 4.5 KB (4477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0966b404d382c84d4d40f5752c75161c5b764ffa21dc39241a5d3703b95da035`  
		Last Modified: Fri, 04 May 2018 09:18:32 GMT  
		Size: 468.7 KB (468696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:283ba64d5bc7a5ecfb4dc62eb7d362a5f82805adc6005e9be328ee51ba162549`  
		Last Modified: Fri, 04 May 2018 09:18:31 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce2b05bc2ce524f144730303363c31f4b299109ca039239439ca09bf8d866b9`  
		Last Modified: Sat, 05 May 2018 11:02:45 GMT  
		Size: 32.5 MB (32451778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b48faa8259a266acdc4c8c04de491974d9525aacd481a74f633cbad71ac5ff2`  
		Last Modified: Sat, 05 May 2018 11:02:11 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a7144d9a86e7bc3f533f03fa273a0bf18a9f6563c36b74a2cb497547e675ce8`  
		Last Modified: Sat, 05 May 2018 11:02:10 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45561926e5c871660198a2592a994425aa2edf5ecbab84e2a205acdca6593218`  
		Last Modified: Sat, 05 May 2018 11:02:12 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.13` - linux; 386

```console
$ docker pull ghost@sha256:f6ff2dbd5bcbea31312edd452d690c58f3e2445c36fb1b42e6f08c21b8ecd233
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122849904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3581f096ccee61334d5ef7ccda26aa51563292b9d51f97d070bc46d4ab0e249`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:32 GMT
ADD file:ce5174f2b2c155a2421fac3ff37a02d9551d5d79e31a541189bcfd2416a6903a in / 
# Sat, 28 Apr 2018 10:39:32 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:05:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:05:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 19:37:45 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 28 Apr 2018 19:37:46 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 04 May 2018 10:56:20 GMT
ENV NODE_VERSION=6.14.2
# Fri, 04 May 2018 10:57:00 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 04 May 2018 10:57:00 GMT
ENV YARN_VERSION=1.6.0
# Fri, 04 May 2018 10:57:03 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 04 May 2018 10:57:03 GMT
CMD ["node"]
# Fri, 04 May 2018 11:23:41 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 04 May 2018 11:23:41 GMT
ENV GOSU_VERSION=1.10
# Fri, 04 May 2018 11:23:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 04 May 2018 11:23:44 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 04 May 2018 11:23:45 GMT
WORKDIR /usr/src/ghost
# Sat, 05 May 2018 11:55:00 GMT
ENV GHOST_VERSION=0.11.13
# Sat, 05 May 2018 11:57:01 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 05 May 2018 11:57:02 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 05 May 2018 11:57:03 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 05 May 2018 11:57:03 GMT
VOLUME [/var/lib/ghost]
# Sat, 05 May 2018 11:57:03 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 05 May 2018 11:57:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 05 May 2018 11:57:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 11:57:04 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 11:57:04 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:05b419d667f793c8c2edf0ff0aec14fc4d66733cdb89957ac89e8bfbeaddd0fa`  
		Last Modified: Sat, 28 Apr 2018 10:44:20 GMT  
		Size: 54.5 MB (54486782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330b9c3b7ebe34e933c240e5eb7f8620732974e6e15e2c5d17cb91ca2aefffa4`  
		Last Modified: Sat, 28 Apr 2018 12:41:22 GMT  
		Size: 19.9 MB (19866118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618a70cca8b81e7f688c7591ffb047d440d878e7c088b564e9e8611c1157dba5`  
		Last Modified: Sat, 28 Apr 2018 19:46:03 GMT  
		Size: 4.4 KB (4394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b2b5615162ffa8552b2e45aa789d255d2331fa388ef168bf3115fe546951502`  
		Last Modified: Sat, 28 Apr 2018 19:46:03 GMT  
		Size: 117.6 KB (117613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fdbd187f7696349101d0acf3a7c0deb688d21772f6f358449ff501b6ec646f7`  
		Last Modified: Fri, 04 May 2018 11:00:41 GMT  
		Size: 14.3 MB (14297650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6765edb4e0b4eedbf209a99a5540d1751a1f7fc741dc58ce46781c5cd4d3389a`  
		Last Modified: Fri, 04 May 2018 11:00:39 GMT  
		Size: 1.1 MB (1066219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe0ff9641968a141e11df6b60154fe39f620371729b39b63e2920678e09b4a0`  
		Last Modified: Fri, 04 May 2018 11:29:33 GMT  
		Size: 4.4 KB (4445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e14c3885d9c0c8b2bac82e5300aadfcb9a98bea08d725154b66748af3840a6`  
		Last Modified: Fri, 04 May 2018 11:29:34 GMT  
		Size: 480.6 KB (480562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2d70cba93d3deb0ec9d42714ff96809b4fa57103d01dbce42ca6d40f230ced`  
		Last Modified: Fri, 04 May 2018 11:29:34 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2fc1dcd1b6c5b2259e72db7211fadb737c50467be934bf0b0f998b5cb90c05f`  
		Last Modified: Sat, 05 May 2018 12:00:48 GMT  
		Size: 32.5 MB (32525018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a87a1dc0bcbbd074bb1ac4a524e9147faadbf9032d82f4d6c2751f832225f97`  
		Last Modified: Sat, 05 May 2018 12:00:38 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334f28e36a6c883d7164a24962db3ea61b10f37a93635fe2f3809c6c84fc1c69`  
		Last Modified: Sat, 05 May 2018 12:00:38 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb94dd98c9ab8e17b26537dd68c6f3ca9db8f01e734aba364cf7cd6f210da13`  
		Last Modified: Sat, 05 May 2018 12:00:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.13` - linux; ppc64le

```console
$ docker pull ghost@sha256:936dc721c34330a3e48f06fdf3ec5ec73ef2b9f17349ceba189c738876e3db15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.0 MB (120044222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5af45a417b9c4df31339c540e159abaff19afbe16b3340b194a49eb6f2c9602`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:53:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:53:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 15:49:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 28 Apr 2018 15:49:27 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 28 Apr 2018 16:06:30 GMT
ENV NODE_VERSION=6.14.1
# Sat, 28 Apr 2018 16:07:44 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 28 Apr 2018 16:07:46 GMT
ENV YARN_VERSION=1.5.1
# Sat, 28 Apr 2018 16:07:54 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 28 Apr 2018 16:07:55 GMT
CMD ["node"]
# Sat, 28 Apr 2018 20:31:41 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 28 Apr 2018 20:31:41 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 20:31:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 28 Apr 2018 20:31:46 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 28 Apr 2018 20:31:47 GMT
WORKDIR /usr/src/ghost
# Sat, 05 May 2018 08:24:21 GMT
ENV GHOST_VERSION=0.11.13
# Sat, 05 May 2018 08:28:25 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 05 May 2018 08:28:26 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 05 May 2018 08:28:29 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 05 May 2018 08:28:29 GMT
VOLUME [/var/lib/ghost]
# Sat, 05 May 2018 08:28:30 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 05 May 2018 08:28:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 05 May 2018 08:28:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 08:28:34 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 08:28:35 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73feb4c62e83f77f05ed3c1a72c453fce29bc8adee3ff31855937f28f0b9ad00`  
		Last Modified: Sat, 28 Apr 2018 10:38:43 GMT  
		Size: 17.6 MB (17571133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b033729a6b8a78e4b13cad1f1d95e6f4ab8461fcb87c89fb4882c297de02fbad`  
		Last Modified: Sat, 28 Apr 2018 16:32:50 GMT  
		Size: 4.4 KB (4438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd479c883acc5f45e3b06fe53ee3e824909480d7ee4035c57a3303a6058d3c1`  
		Last Modified: Sat, 28 Apr 2018 16:32:50 GMT  
		Size: 117.7 KB (117651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5de8244112e4f1d6cb1f72cc7c9021d8f19e4df7a44412b636ab3b2dcc500d`  
		Last Modified: Sat, 28 Apr 2018 16:38:33 GMT  
		Size: 14.5 MB (14503944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abbfc0285034d19463723dc2bed92d0074a197c39428886cf1bbe764a96829bd`  
		Last Modified: Sat, 28 Apr 2018 16:38:26 GMT  
		Size: 1.1 MB (1061054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1149a2cb4eee9745b4c094d6d21cb1b7411a26d289c2ab9839d5dab2d00eaf22`  
		Last Modified: Sat, 28 Apr 2018 20:37:34 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f87c1d75b2e07f95919646be22128d325f057a34915b478b2f940c9b20808e9`  
		Last Modified: Sat, 28 Apr 2018 20:37:34 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6bbf03cfcfaf60d5ff4ae48c178a7ff5f35382ac3962117e89422aa3606686a`  
		Last Modified: Sat, 28 Apr 2018 20:37:32 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a76f7a0571392a59b3ecc4d14c517aff91f4b00c6006c4680e22950a4e5ab0f`  
		Last Modified: Sat, 05 May 2018 08:30:13 GMT  
		Size: 32.9 MB (32917684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f7d940399bdde5c3de249c8c40117e1dcf63b252636582042484876d8ed0447`  
		Last Modified: Sat, 05 May 2018 08:30:02 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe529028c4bcc1801dce66f4cf9deb2905a7fa876e0a7325e1ad8dcd1bdceb9`  
		Last Modified: Sat, 05 May 2018 08:30:02 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22211c5a1b093a7175dc87e2b94dad1ae619519abc8754de095695b88f41f07a`  
		Last Modified: Sat, 05 May 2018 08:30:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.13` - linux; s390x

```console
$ docker pull ghost@sha256:1312d457c27911b283838a4dd3b30d33520930db3f5b8a8e7fd668ac6b195df9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121782575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24c486fcab97e44cc320cadc80ffb7288bcb8391f9ba272daddfa4dc4ed8ebf1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:13:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:13:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 13:27:14 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 28 Apr 2018 13:27:15 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 04 May 2018 12:45:55 GMT
ENV NODE_VERSION=6.14.2
# Fri, 04 May 2018 12:46:09 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 04 May 2018 12:46:10 GMT
ENV YARN_VERSION=1.6.0
# Fri, 04 May 2018 12:46:12 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 04 May 2018 12:46:12 GMT
CMD ["node"]
# Fri, 04 May 2018 13:06:41 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 04 May 2018 13:06:41 GMT
ENV GOSU_VERSION=1.10
# Fri, 04 May 2018 13:06:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 04 May 2018 13:06:43 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 04 May 2018 13:06:43 GMT
WORKDIR /usr/src/ghost
# Sat, 05 May 2018 12:17:52 GMT
ENV GHOST_VERSION=0.11.13
# Sat, 05 May 2018 12:19:38 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 05 May 2018 12:19:40 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 05 May 2018 12:19:40 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 05 May 2018 12:19:41 GMT
VOLUME [/var/lib/ghost]
# Sat, 05 May 2018 12:19:41 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 05 May 2018 12:19:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 05 May 2018 12:19:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 12:19:42 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 12:19:42 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2331cf8e884c1052e19f6b80b3efb54a7163ab49bf54c631bd861332c232029f`  
		Last Modified: Sat, 28 Apr 2018 13:29:06 GMT  
		Size: 17.8 MB (17767296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1573c40a4e9e40c7d5639586badca4c9ac2080488a599636910b77ac19a689`  
		Last Modified: Sat, 28 Apr 2018 13:29:01 GMT  
		Size: 4.4 KB (4410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd78e74bc99cbd7061122cf0fe9a054fb495f9bef7ef1502f65f98935d869fb`  
		Last Modified: Sat, 28 Apr 2018 13:29:01 GMT  
		Size: 117.6 KB (117619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae0b0f42c03caef1dd3f3f7d8ab8b3e136711648758d32b4bb0924132086e7f`  
		Last Modified: Fri, 04 May 2018 12:48:01 GMT  
		Size: 14.9 MB (14910558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992273aa70200d981cf7d15fd93ab6020cbe70689cd11d44d997aac565066423`  
		Last Modified: Fri, 04 May 2018 12:47:57 GMT  
		Size: 1.1 MB (1066217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f389c6d2ef7ef62bf08d5686806d98bc4b44bc163af235fb3fdfde8bde1ccd6a`  
		Last Modified: Fri, 04 May 2018 13:09:23 GMT  
		Size: 4.5 KB (4459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3001b1be2b464e3bc5e3571fae938787aade78b037f9fe8fefe3d87e91004aad`  
		Last Modified: Fri, 04 May 2018 13:09:23 GMT  
		Size: 486.8 KB (486821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:071c55ff69db9856cc4454bfbd53c814376eda820915157b12b3d5befe97fca5`  
		Last Modified: Fri, 04 May 2018 13:09:21 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc3bbc44dd9d00f320fd36b0c6ef53068effa7be362311e1b31d79981a20ea5`  
		Last Modified: Sat, 05 May 2018 12:21:16 GMT  
		Size: 33.0 MB (32958236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c53d027bc8f0111c5924e02c01a9ee96a939e9bf935ba77d7c6c8023e6459d3d`  
		Last Modified: Sat, 05 May 2018 12:21:05 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa6606936472a6a7d967d2839fce821f64b454931372ab9689f9d24423bf711`  
		Last Modified: Sat, 05 May 2018 12:21:04 GMT  
		Size: 623.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c529f773a1ca551ca35b80d584e23e982eed0fd9d69290250dda29d797ab3043`  
		Last Modified: Sat, 05 May 2018 12:21:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.13-alpine`

```console
$ docker pull ghost@sha256:cde8b0c3d6cf0a88a55cd7a693dc16ea387b8423f18a16d48f949931a78b9eba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11.13-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:4d2f081565b576b798aaf3233582bb60ef3ad20f144605c6af146daa71b4fdfd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.4 MB (46437506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:840279d7ae80d0f5a88d38dcb2e4b5959433d1b30f58cf396ae04a153fa2617a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Thu, 03 May 2018 23:45:34 GMT
ENV NODE_VERSION=6.14.2
# Thu, 03 May 2018 23:58:32 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 03 May 2018 23:58:33 GMT
ENV YARN_VERSION=1.6.0
# Thu, 03 May 2018 23:58:46 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 03 May 2018 23:58:46 GMT
CMD ["node"]
# Fri, 04 May 2018 01:09:40 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 04 May 2018 01:41:43 GMT
RUN apk add --no-cache 		bash 		tar
# Fri, 04 May 2018 01:41:43 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 04 May 2018 01:41:47 GMT
WORKDIR /usr/src/ghost
# Fri, 04 May 2018 23:33:16 GMT
ENV GHOST_VERSION=0.11.13
# Fri, 04 May 2018 23:34:01 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 04 May 2018 23:34:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 04 May 2018 23:34:02 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 04 May 2018 23:34:02 GMT
VOLUME [/var/lib/ghost]
# Fri, 04 May 2018 23:34:03 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Fri, 04 May 2018 23:34:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 May 2018 23:34:03 GMT
EXPOSE 2368/tcp
# Fri, 04 May 2018 23:34:04 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892b5b9f1913fa3747fd8b37163f03cf7b7fe4252e9fe5e0b9a07c4c217e61ef`  
		Last Modified: Fri, 04 May 2018 00:42:48 GMT  
		Size: 15.5 MB (15512134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6286b99c67b41a05d3eff58f32b1bbf8fb77bbcdf43fc894caa075ec6939dd11`  
		Last Modified: Fri, 04 May 2018 00:42:43 GMT  
		Size: 1.1 MB (1072917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2e753b0bd7da5f6625da3365e32865d429da6de674b58ca1a554c58ceb4ab8`  
		Last Modified: Fri, 04 May 2018 02:51:43 GMT  
		Size: 8.4 KB (8365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69368ebee7386d85400d02218d2a4a29d602cf990565f4abe5b9adf00576884b`  
		Last Modified: Fri, 04 May 2018 03:20:55 GMT  
		Size: 1.4 MB (1360666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134fd52ee47048eb4b19f0daad200c31833ab1b1b4e045cf33258737ae3db859`  
		Last Modified: Fri, 04 May 2018 03:20:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f29cd0486fa6380ac6935faf5d209de5833d3ac15f410dfb0c4bec14ba6e2d2`  
		Last Modified: Fri, 04 May 2018 23:36:11 GMT  
		Size: 26.1 MB (26094892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72e4e1578f003e5b4217a438a03466af8aa445f30e9c3127d8178efe489bca1`  
		Last Modified: Fri, 04 May 2018 23:36:05 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b1532194510c49ee627d063a76e9aba9801fb0fe8cc7acdcda707454f3880a`  
		Last Modified: Fri, 04 May 2018 23:36:05 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11-alpine`

```console
$ docker pull ghost@sha256:cde8b0c3d6cf0a88a55cd7a693dc16ea387b8423f18a16d48f949931a78b9eba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:4d2f081565b576b798aaf3233582bb60ef3ad20f144605c6af146daa71b4fdfd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.4 MB (46437506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:840279d7ae80d0f5a88d38dcb2e4b5959433d1b30f58cf396ae04a153fa2617a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Thu, 03 May 2018 23:45:34 GMT
ENV NODE_VERSION=6.14.2
# Thu, 03 May 2018 23:58:32 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 03 May 2018 23:58:33 GMT
ENV YARN_VERSION=1.6.0
# Thu, 03 May 2018 23:58:46 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 03 May 2018 23:58:46 GMT
CMD ["node"]
# Fri, 04 May 2018 01:09:40 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 04 May 2018 01:41:43 GMT
RUN apk add --no-cache 		bash 		tar
# Fri, 04 May 2018 01:41:43 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 04 May 2018 01:41:47 GMT
WORKDIR /usr/src/ghost
# Fri, 04 May 2018 23:33:16 GMT
ENV GHOST_VERSION=0.11.13
# Fri, 04 May 2018 23:34:01 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 04 May 2018 23:34:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 04 May 2018 23:34:02 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 04 May 2018 23:34:02 GMT
VOLUME [/var/lib/ghost]
# Fri, 04 May 2018 23:34:03 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Fri, 04 May 2018 23:34:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 May 2018 23:34:03 GMT
EXPOSE 2368/tcp
# Fri, 04 May 2018 23:34:04 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892b5b9f1913fa3747fd8b37163f03cf7b7fe4252e9fe5e0b9a07c4c217e61ef`  
		Last Modified: Fri, 04 May 2018 00:42:48 GMT  
		Size: 15.5 MB (15512134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6286b99c67b41a05d3eff58f32b1bbf8fb77bbcdf43fc894caa075ec6939dd11`  
		Last Modified: Fri, 04 May 2018 00:42:43 GMT  
		Size: 1.1 MB (1072917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2e753b0bd7da5f6625da3365e32865d429da6de674b58ca1a554c58ceb4ab8`  
		Last Modified: Fri, 04 May 2018 02:51:43 GMT  
		Size: 8.4 KB (8365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69368ebee7386d85400d02218d2a4a29d602cf990565f4abe5b9adf00576884b`  
		Last Modified: Fri, 04 May 2018 03:20:55 GMT  
		Size: 1.4 MB (1360666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134fd52ee47048eb4b19f0daad200c31833ab1b1b4e045cf33258737ae3db859`  
		Last Modified: Fri, 04 May 2018 03:20:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f29cd0486fa6380ac6935faf5d209de5833d3ac15f410dfb0c4bec14ba6e2d2`  
		Last Modified: Fri, 04 May 2018 23:36:11 GMT  
		Size: 26.1 MB (26094892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72e4e1578f003e5b4217a438a03466af8aa445f30e9c3127d8178efe489bca1`  
		Last Modified: Fri, 04 May 2018 23:36:05 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b1532194510c49ee627d063a76e9aba9801fb0fe8cc7acdcda707454f3880a`  
		Last Modified: Fri, 04 May 2018 23:36:05 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:cde8b0c3d6cf0a88a55cd7a693dc16ea387b8423f18a16d48f949931a78b9eba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:4d2f081565b576b798aaf3233582bb60ef3ad20f144605c6af146daa71b4fdfd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.4 MB (46437506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:840279d7ae80d0f5a88d38dcb2e4b5959433d1b30f58cf396ae04a153fa2617a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Thu, 03 May 2018 23:45:34 GMT
ENV NODE_VERSION=6.14.2
# Thu, 03 May 2018 23:58:32 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 03 May 2018 23:58:33 GMT
ENV YARN_VERSION=1.6.0
# Thu, 03 May 2018 23:58:46 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 03 May 2018 23:58:46 GMT
CMD ["node"]
# Fri, 04 May 2018 01:09:40 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 04 May 2018 01:41:43 GMT
RUN apk add --no-cache 		bash 		tar
# Fri, 04 May 2018 01:41:43 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 04 May 2018 01:41:47 GMT
WORKDIR /usr/src/ghost
# Fri, 04 May 2018 23:33:16 GMT
ENV GHOST_VERSION=0.11.13
# Fri, 04 May 2018 23:34:01 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 04 May 2018 23:34:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 04 May 2018 23:34:02 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 04 May 2018 23:34:02 GMT
VOLUME [/var/lib/ghost]
# Fri, 04 May 2018 23:34:03 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Fri, 04 May 2018 23:34:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 May 2018 23:34:03 GMT
EXPOSE 2368/tcp
# Fri, 04 May 2018 23:34:04 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892b5b9f1913fa3747fd8b37163f03cf7b7fe4252e9fe5e0b9a07c4c217e61ef`  
		Last Modified: Fri, 04 May 2018 00:42:48 GMT  
		Size: 15.5 MB (15512134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6286b99c67b41a05d3eff58f32b1bbf8fb77bbcdf43fc894caa075ec6939dd11`  
		Last Modified: Fri, 04 May 2018 00:42:43 GMT  
		Size: 1.1 MB (1072917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2e753b0bd7da5f6625da3365e32865d429da6de674b58ca1a554c58ceb4ab8`  
		Last Modified: Fri, 04 May 2018 02:51:43 GMT  
		Size: 8.4 KB (8365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69368ebee7386d85400d02218d2a4a29d602cf990565f4abe5b9adf00576884b`  
		Last Modified: Fri, 04 May 2018 03:20:55 GMT  
		Size: 1.4 MB (1360666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134fd52ee47048eb4b19f0daad200c31833ab1b1b4e045cf33258737ae3db859`  
		Last Modified: Fri, 04 May 2018 03:20:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f29cd0486fa6380ac6935faf5d209de5833d3ac15f410dfb0c4bec14ba6e2d2`  
		Last Modified: Fri, 04 May 2018 23:36:11 GMT  
		Size: 26.1 MB (26094892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72e4e1578f003e5b4217a438a03466af8aa445f30e9c3127d8178efe489bca1`  
		Last Modified: Fri, 04 May 2018 23:36:05 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b1532194510c49ee627d063a76e9aba9801fb0fe8cc7acdcda707454f3880a`  
		Last Modified: Fri, 04 May 2018 23:36:05 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1`

```console
$ docker pull ghost@sha256:670557be56306de6fe5fe7e14d725a333ec61d70e97641fdcd6a5619b87c22f5
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
$ docker pull ghost@sha256:262c8f67d4aa258b5277555879b724c7f0ebf09513509e4b80e7656a5ec0dd88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.8 MB (206758153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de39aba037949019b2f679dcd5a093e95cf00f840b16e7a1885fdf792751d4d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Fri, 04 May 2018 17:35:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 17:35:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 06:40:50 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 05 May 2018 06:40:53 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 05 May 2018 06:43:38 GMT
ENV NODE_VERSION=6.14.2
# Sat, 05 May 2018 06:43:58 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 05 May 2018 06:43:59 GMT
ENV YARN_VERSION=1.6.0
# Sat, 05 May 2018 06:44:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 05 May 2018 06:44:02 GMT
CMD ["node"]
# Sat, 05 May 2018 07:54:15 GMT
ENV GOSU_VERSION=1.10
# Sat, 05 May 2018 07:54:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 05 May 2018 07:54:19 GMT
ENV NODE_ENV=production
# Sat, 05 May 2018 07:54:19 GMT
ENV GHOST_CLI_VERSION=1.7.2
# Sat, 05 May 2018 07:55:02 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 05 May 2018 07:55:03 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 05 May 2018 07:55:03 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 05 May 2018 07:55:03 GMT
ENV GHOST_VERSION=1.22.5
# Sat, 05 May 2018 07:55:52 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 05 May 2018 07:55:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 05 May 2018 07:56:04 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 05 May 2018 07:56:04 GMT
WORKDIR /var/lib/ghost
# Sat, 05 May 2018 07:56:05 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 05 May 2018 07:56:05 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 05 May 2018 07:56:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 07:56:05 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 07:56:06 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534514c83d698ad8a2ef994eeedaed92738e401d735e453d47e635cca02901b6`  
		Last Modified: Fri, 04 May 2018 18:19:14 GMT  
		Size: 17.6 MB (17584745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d86970c40400552472f8836ab621ff4456ada7ba86dd75fd7e273d4518fb1b`  
		Last Modified: Sat, 05 May 2018 06:48:38 GMT  
		Size: 4.4 KB (4408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de288f5266ab553a6b931facc9f72f837014fa542e08bef8b8a2b5030356a684`  
		Last Modified: Sat, 05 May 2018 06:48:38 GMT  
		Size: 117.6 KB (117621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a23a6c73e916ea143371fc4c0a9d8935f48e765b5bd1454ce8534a705541ac`  
		Last Modified: Sat, 05 May 2018 06:52:53 GMT  
		Size: 14.8 MB (14773322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc79cff1df9615e5c79e1e88181c114d8f9f4194d76a374db908685b51ed37b`  
		Last Modified: Sat, 05 May 2018 06:52:51 GMT  
		Size: 1.1 MB (1066217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827602db6b4c3d972ff6c009c13c7d01ec99be6cdb1426da98038812f3d4ecec`  
		Last Modified: Sat, 05 May 2018 07:58:12 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03266e28978e9f901d21dcb382f43f36e161f260f68c0bc16f0601ca2a239714`  
		Last Modified: Sat, 05 May 2018 07:58:16 GMT  
		Size: 18.7 MB (18725241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca721c3458a5873229077daddf04bbdc1fed41dcd681a1648fe34745d09852a7`  
		Last Modified: Sat, 05 May 2018 07:58:27 GMT  
		Size: 92.9 MB (92868608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0704f3045eeaa32f527142d83fd9a3b99d91adf2a1e31221c35fe5b4a85bd4d3`  
		Last Modified: Sat, 05 May 2018 07:58:12 GMT  
		Size: 6.9 MB (6854186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc3dde81a1e3c36967d9d204bd5e129e39079caabe9d9f1260566db407bf4c2`  
		Last Modified: Sat, 05 May 2018 07:58:11 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:44756f67a3b16468e5c35097266c832dc16d79121f8115bc44e0d822fcc54354
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.1 MB (207057996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e36487f1ae5f6fccce6bb13fdaa91baa1a0d8990d6c72c0ba13fde5ed491b42b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Tue, 01 May 2018 07:39:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 07:39:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 12:51:43 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 01 May 2018 12:51:46 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 04 May 2018 08:44:25 GMT
ENV NODE_VERSION=6.14.2
# Fri, 04 May 2018 08:44:59 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 04 May 2018 08:45:00 GMT
ENV YARN_VERSION=1.6.0
# Fri, 04 May 2018 08:45:05 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 04 May 2018 08:45:06 GMT
CMD ["node"]
# Fri, 04 May 2018 09:04:47 GMT
ENV GOSU_VERSION=1.10
# Fri, 04 May 2018 09:04:51 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 04 May 2018 09:04:52 GMT
ENV NODE_ENV=production
# Sat, 05 May 2018 10:40:10 GMT
ENV GHOST_CLI_VERSION=1.7.2
# Sat, 05 May 2018 10:42:05 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 05 May 2018 10:42:08 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 05 May 2018 10:42:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 05 May 2018 10:42:10 GMT
ENV GHOST_VERSION=1.22.5
# Sat, 05 May 2018 10:45:24 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 05 May 2018 10:45:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 05 May 2018 10:51:10 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 05 May 2018 10:51:11 GMT
WORKDIR /var/lib/ghost
# Sat, 05 May 2018 10:51:12 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 05 May 2018 10:51:13 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 05 May 2018 10:51:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 10:51:15 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 10:51:15 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ab1956443782680cb03e43882013be70cd0dded9f08b67f348f4c326e730b6`  
		Last Modified: Tue, 01 May 2018 08:52:49 GMT  
		Size: 17.2 MB (17192945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880136ad78eb495c625af611073a20010603723520cd59249a2c514c15b3d64e`  
		Last Modified: Tue, 01 May 2018 13:05:43 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7ba65acd91abbb7288e81ff8eea9c533c7cefb2a330d9d88f8207820aa7342`  
		Last Modified: Tue, 01 May 2018 13:05:43 GMT  
		Size: 117.6 KB (117621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0173bb6e0b9fb2585cb4d0c2e0b5fc6006ae18f5fc36b6b134807aa81eba7c`  
		Last Modified: Fri, 04 May 2018 08:48:25 GMT  
		Size: 14.8 MB (14760262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a5d3aa37326c9931ae8399a378c98581ee9e487d3fed08cc929100a35a4569`  
		Last Modified: Fri, 04 May 2018 08:48:19 GMT  
		Size: 1.1 MB (1066218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6557b807af7fa3183b85a0967fa34e93ab558cbfb19787ba94cdd427db8440bc`  
		Last Modified: Fri, 04 May 2018 09:17:28 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578c624238e3116f17a3b28b892f8ae1dba7716e166200ce3dbac25162ac7915`  
		Last Modified: Sat, 05 May 2018 11:00:23 GMT  
		Size: 18.7 MB (18727472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39e1ee0583732200d4eed3f13d75de3b59b8ca4baec204df8482dce115de507`  
		Last Modified: Sat, 05 May 2018 11:01:27 GMT  
		Size: 88.8 MB (88770551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:615acc689d7c36693d5d868ef3bd1135b632c71a930b4d68235cd69ac642af28`  
		Last Modified: Sat, 05 May 2018 11:00:09 GMT  
		Size: 14.5 MB (14502397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43ad097e63d2e9728f8fcf8f3b0bad03a5ff5fa90df66c0e822c90eb95a0638`  
		Last Modified: Sat, 05 May 2018 10:59:55 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; 386

```console
$ docker pull ghost@sha256:80bfee9dd76c85a05e354f83d1dd88d7a57c17e43563d47bc47c01e384a8cb71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.4 MB (212390540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ca99d11a8875442161c14444022905af4f6c0239961254e1813558016ba89b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:32 GMT
ADD file:ce5174f2b2c155a2421fac3ff37a02d9551d5d79e31a541189bcfd2416a6903a in / 
# Sat, 28 Apr 2018 10:39:32 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:05:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:05:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 19:37:45 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 28 Apr 2018 19:37:46 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 04 May 2018 10:56:20 GMT
ENV NODE_VERSION=6.14.2
# Fri, 04 May 2018 10:57:00 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 04 May 2018 10:57:00 GMT
ENV YARN_VERSION=1.6.0
# Fri, 04 May 2018 10:57:03 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 04 May 2018 10:57:03 GMT
CMD ["node"]
# Fri, 04 May 2018 11:18:19 GMT
ENV GOSU_VERSION=1.10
# Fri, 04 May 2018 11:18:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 04 May 2018 11:18:24 GMT
ENV NODE_ENV=production
# Sat, 05 May 2018 11:49:49 GMT
ENV GHOST_CLI_VERSION=1.7.2
# Sat, 05 May 2018 11:50:14 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 05 May 2018 11:50:15 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 05 May 2018 11:50:15 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 05 May 2018 11:50:15 GMT
ENV GHOST_VERSION=1.22.5
# Sat, 05 May 2018 11:50:52 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 05 May 2018 11:50:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 05 May 2018 11:52:53 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 05 May 2018 11:52:53 GMT
WORKDIR /var/lib/ghost
# Sat, 05 May 2018 11:52:54 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 05 May 2018 11:52:54 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 05 May 2018 11:52:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 11:52:54 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 11:52:54 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:05b419d667f793c8c2edf0ff0aec14fc4d66733cdb89957ac89e8bfbeaddd0fa`  
		Last Modified: Sat, 28 Apr 2018 10:44:20 GMT  
		Size: 54.5 MB (54486782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330b9c3b7ebe34e933c240e5eb7f8620732974e6e15e2c5d17cb91ca2aefffa4`  
		Last Modified: Sat, 28 Apr 2018 12:41:22 GMT  
		Size: 19.9 MB (19866118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618a70cca8b81e7f688c7591ffb047d440d878e7c088b564e9e8611c1157dba5`  
		Last Modified: Sat, 28 Apr 2018 19:46:03 GMT  
		Size: 4.4 KB (4394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b2b5615162ffa8552b2e45aa789d255d2331fa388ef168bf3115fe546951502`  
		Last Modified: Sat, 28 Apr 2018 19:46:03 GMT  
		Size: 117.6 KB (117613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fdbd187f7696349101d0acf3a7c0deb688d21772f6f358449ff501b6ec646f7`  
		Last Modified: Fri, 04 May 2018 11:00:41 GMT  
		Size: 14.3 MB (14297650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6765edb4e0b4eedbf209a99a5540d1751a1f7fc741dc58ce46781c5cd4d3389a`  
		Last Modified: Fri, 04 May 2018 11:00:39 GMT  
		Size: 1.1 MB (1066219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab2e1053e42a12aedaddf3e699ae24472301df59977c6099d5f8cdf2da5b237`  
		Last Modified: Fri, 04 May 2018 11:28:16 GMT  
		Size: 480.6 KB (480563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730f71a2cc423ba4830413d3f4aa67a74dcd0cc30bdd87846539c817d2cab66d`  
		Last Modified: Sat, 05 May 2018 11:59:42 GMT  
		Size: 18.7 MB (18724856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b493a20766db759193a945ba06cae9688335d5caa797adff26a18d97a7593a9a`  
		Last Modified: Sat, 05 May 2018 12:00:11 GMT  
		Size: 88.8 MB (88761156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b6b926bbd8138945d0bb3996a88b4665dd4084fd56c94ccc67ca1f28a0cf8e2`  
		Last Modified: Sat, 05 May 2018 11:59:38 GMT  
		Size: 14.6 MB (14584620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bed2304b906c86f8fff8c1c90c75648df0cb63f3cd0df53e719cd97f9815d70`  
		Last Modified: Sat, 05 May 2018 11:59:20 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; ppc64le

```console
$ docker pull ghost@sha256:d95ec60086cf538691be61b179db1a43a3a0d21bfec2c014c255b80da71be6d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.6 MB (209577918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78080ac424fa34c7c572b8ec3e4f4a04d2c16456b60078ed97b531088f0f3ce0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:53:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:53:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 15:49:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 28 Apr 2018 15:49:27 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 28 Apr 2018 16:06:30 GMT
ENV NODE_VERSION=6.14.1
# Sat, 28 Apr 2018 16:07:44 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 28 Apr 2018 16:07:46 GMT
ENV YARN_VERSION=1.5.1
# Sat, 28 Apr 2018 16:07:54 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 28 Apr 2018 16:07:55 GMT
CMD ["node"]
# Sat, 28 Apr 2018 20:25:42 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 20:25:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 28 Apr 2018 20:25:51 GMT
ENV NODE_ENV=production
# Sat, 05 May 2018 08:17:17 GMT
ENV GHOST_CLI_VERSION=1.7.2
# Sat, 05 May 2018 08:18:20 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 05 May 2018 08:18:27 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 05 May 2018 08:18:29 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 05 May 2018 08:18:30 GMT
ENV GHOST_VERSION=1.22.5
# Sat, 05 May 2018 08:19:34 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 05 May 2018 08:19:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 05 May 2018 08:23:54 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 05 May 2018 08:23:56 GMT
WORKDIR /var/lib/ghost
# Sat, 05 May 2018 08:23:56 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 05 May 2018 08:23:57 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 05 May 2018 08:23:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 08:24:00 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 08:24:02 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73feb4c62e83f77f05ed3c1a72c453fce29bc8adee3ff31855937f28f0b9ad00`  
		Last Modified: Sat, 28 Apr 2018 10:38:43 GMT  
		Size: 17.6 MB (17571133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b033729a6b8a78e4b13cad1f1d95e6f4ab8461fcb87c89fb4882c297de02fbad`  
		Last Modified: Sat, 28 Apr 2018 16:32:50 GMT  
		Size: 4.4 KB (4438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd479c883acc5f45e3b06fe53ee3e824909480d7ee4035c57a3303a6058d3c1`  
		Last Modified: Sat, 28 Apr 2018 16:32:50 GMT  
		Size: 117.7 KB (117651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5de8244112e4f1d6cb1f72cc7c9021d8f19e4df7a44412b636ab3b2dcc500d`  
		Last Modified: Sat, 28 Apr 2018 16:38:33 GMT  
		Size: 14.5 MB (14503944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abbfc0285034d19463723dc2bed92d0074a197c39428886cf1bbe764a96829bd`  
		Last Modified: Sat, 28 Apr 2018 16:38:26 GMT  
		Size: 1.1 MB (1061054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106276b354e2e0c612a5a63f7f154018817cdf54431e5f43f5776c5e07ecbfeb`  
		Last Modified: Sat, 28 Apr 2018 20:35:58 GMT  
		Size: 469.8 KB (469843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1bca4ce9c4f0005d7fdb594b4d716276bfcb431e107c81d65f01214f90a38bb`  
		Last Modified: Sat, 05 May 2018 08:29:20 GMT  
		Size: 18.7 MB (18725198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f26a9a6dfb01b5ce90363f596c215f53e4fad575ce29071194c38df95792b7`  
		Last Modified: Sat, 05 May 2018 08:29:25 GMT  
		Size: 88.8 MB (88761153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5031d6c19cd19563b5ec8ef77c220e2e65e441d6546b289779b8cd4c9f4676`  
		Last Modified: Sat, 05 May 2018 08:29:01 GMT  
		Size: 15.0 MB (14970122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a88408d7b2079816663e6493b390708507b859d0af08afecd7876a64d39389`  
		Last Modified: Sat, 05 May 2018 08:28:57 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; s390x

```console
$ docker pull ghost@sha256:3352263fb33506902c771f1897b3eea67521376eccfd021e3560da8a28c19fb3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.3 MB (211314325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d21538a3647611db1756ef43068ed1a5bd097c8a96731447e4758d9b0927491`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:13:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:13:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 13:27:14 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 28 Apr 2018 13:27:15 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 04 May 2018 12:45:55 GMT
ENV NODE_VERSION=6.14.2
# Fri, 04 May 2018 12:46:09 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 04 May 2018 12:46:10 GMT
ENV YARN_VERSION=1.6.0
# Fri, 04 May 2018 12:46:12 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 04 May 2018 12:46:12 GMT
CMD ["node"]
# Fri, 04 May 2018 13:04:19 GMT
ENV GOSU_VERSION=1.10
# Fri, 04 May 2018 13:04:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 04 May 2018 13:04:21 GMT
ENV NODE_ENV=production
# Sat, 05 May 2018 12:14:59 GMT
ENV GHOST_CLI_VERSION=1.7.2
# Sat, 05 May 2018 12:15:20 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 05 May 2018 12:15:21 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 05 May 2018 12:15:21 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 05 May 2018 12:15:22 GMT
ENV GHOST_VERSION=1.22.5
# Sat, 05 May 2018 12:15:55 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 05 May 2018 12:15:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 05 May 2018 12:17:30 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 05 May 2018 12:17:31 GMT
WORKDIR /var/lib/ghost
# Sat, 05 May 2018 12:17:31 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 05 May 2018 12:17:31 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 05 May 2018 12:17:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 12:17:32 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 12:17:32 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2331cf8e884c1052e19f6b80b3efb54a7163ab49bf54c631bd861332c232029f`  
		Last Modified: Sat, 28 Apr 2018 13:29:06 GMT  
		Size: 17.8 MB (17767296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1573c40a4e9e40c7d5639586badca4c9ac2080488a599636910b77ac19a689`  
		Last Modified: Sat, 28 Apr 2018 13:29:01 GMT  
		Size: 4.4 KB (4410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd78e74bc99cbd7061122cf0fe9a054fb495f9bef7ef1502f65f98935d869fb`  
		Last Modified: Sat, 28 Apr 2018 13:29:01 GMT  
		Size: 117.6 KB (117619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae0b0f42c03caef1dd3f3f7d8ab8b3e136711648758d32b4bb0924132086e7f`  
		Last Modified: Fri, 04 May 2018 12:48:01 GMT  
		Size: 14.9 MB (14910558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992273aa70200d981cf7d15fd93ab6020cbe70689cd11d44d997aac565066423`  
		Last Modified: Fri, 04 May 2018 12:47:57 GMT  
		Size: 1.1 MB (1066217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9282f6ba38bf7eb309862be1ffdc61700b82fdf1955766137bc1d20634515deb`  
		Last Modified: Fri, 04 May 2018 13:08:38 GMT  
		Size: 486.8 KB (486821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0b64bc58f17348a3ec6ac6127ff03510b25a3ec0d1512fe897c70e8245ef61`  
		Last Modified: Sat, 05 May 2018 12:20:13 GMT  
		Size: 18.7 MB (18724905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cedd77ed3f9e54e83e612799a6327be185c8ca8e06de8f776b615bcb224551b`  
		Last Modified: Sat, 05 May 2018 12:20:29 GMT  
		Size: 88.8 MB (88759331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c59052817224a5cb1bb642b9cbb0445f3df5b1f3afaa376b403943e36872fa`  
		Last Modified: Sat, 05 May 2018 12:20:11 GMT  
		Size: 15.0 MB (15010742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52add7094a9e4c22c3f37b43e38b365b7ab79bff76d74a6dfe25cfd61322ff23`  
		Last Modified: Sat, 05 May 2018 12:20:06 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.22`

```console
$ docker pull ghost@sha256:670557be56306de6fe5fe7e14d725a333ec61d70e97641fdcd6a5619b87c22f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:1.22` - linux; amd64

```console
$ docker pull ghost@sha256:262c8f67d4aa258b5277555879b724c7f0ebf09513509e4b80e7656a5ec0dd88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.8 MB (206758153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de39aba037949019b2f679dcd5a093e95cf00f840b16e7a1885fdf792751d4d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Fri, 04 May 2018 17:35:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 17:35:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 06:40:50 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 05 May 2018 06:40:53 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 05 May 2018 06:43:38 GMT
ENV NODE_VERSION=6.14.2
# Sat, 05 May 2018 06:43:58 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 05 May 2018 06:43:59 GMT
ENV YARN_VERSION=1.6.0
# Sat, 05 May 2018 06:44:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 05 May 2018 06:44:02 GMT
CMD ["node"]
# Sat, 05 May 2018 07:54:15 GMT
ENV GOSU_VERSION=1.10
# Sat, 05 May 2018 07:54:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 05 May 2018 07:54:19 GMT
ENV NODE_ENV=production
# Sat, 05 May 2018 07:54:19 GMT
ENV GHOST_CLI_VERSION=1.7.2
# Sat, 05 May 2018 07:55:02 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 05 May 2018 07:55:03 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 05 May 2018 07:55:03 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 05 May 2018 07:55:03 GMT
ENV GHOST_VERSION=1.22.5
# Sat, 05 May 2018 07:55:52 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 05 May 2018 07:55:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 05 May 2018 07:56:04 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 05 May 2018 07:56:04 GMT
WORKDIR /var/lib/ghost
# Sat, 05 May 2018 07:56:05 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 05 May 2018 07:56:05 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 05 May 2018 07:56:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 07:56:05 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 07:56:06 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534514c83d698ad8a2ef994eeedaed92738e401d735e453d47e635cca02901b6`  
		Last Modified: Fri, 04 May 2018 18:19:14 GMT  
		Size: 17.6 MB (17584745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d86970c40400552472f8836ab621ff4456ada7ba86dd75fd7e273d4518fb1b`  
		Last Modified: Sat, 05 May 2018 06:48:38 GMT  
		Size: 4.4 KB (4408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de288f5266ab553a6b931facc9f72f837014fa542e08bef8b8a2b5030356a684`  
		Last Modified: Sat, 05 May 2018 06:48:38 GMT  
		Size: 117.6 KB (117621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a23a6c73e916ea143371fc4c0a9d8935f48e765b5bd1454ce8534a705541ac`  
		Last Modified: Sat, 05 May 2018 06:52:53 GMT  
		Size: 14.8 MB (14773322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc79cff1df9615e5c79e1e88181c114d8f9f4194d76a374db908685b51ed37b`  
		Last Modified: Sat, 05 May 2018 06:52:51 GMT  
		Size: 1.1 MB (1066217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827602db6b4c3d972ff6c009c13c7d01ec99be6cdb1426da98038812f3d4ecec`  
		Last Modified: Sat, 05 May 2018 07:58:12 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03266e28978e9f901d21dcb382f43f36e161f260f68c0bc16f0601ca2a239714`  
		Last Modified: Sat, 05 May 2018 07:58:16 GMT  
		Size: 18.7 MB (18725241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca721c3458a5873229077daddf04bbdc1fed41dcd681a1648fe34745d09852a7`  
		Last Modified: Sat, 05 May 2018 07:58:27 GMT  
		Size: 92.9 MB (92868608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0704f3045eeaa32f527142d83fd9a3b99d91adf2a1e31221c35fe5b4a85bd4d3`  
		Last Modified: Sat, 05 May 2018 07:58:12 GMT  
		Size: 6.9 MB (6854186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc3dde81a1e3c36967d9d204bd5e129e39079caabe9d9f1260566db407bf4c2`  
		Last Modified: Sat, 05 May 2018 07:58:11 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.22` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:44756f67a3b16468e5c35097266c832dc16d79121f8115bc44e0d822fcc54354
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.1 MB (207057996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e36487f1ae5f6fccce6bb13fdaa91baa1a0d8990d6c72c0ba13fde5ed491b42b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Tue, 01 May 2018 07:39:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 07:39:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 12:51:43 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 01 May 2018 12:51:46 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 04 May 2018 08:44:25 GMT
ENV NODE_VERSION=6.14.2
# Fri, 04 May 2018 08:44:59 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 04 May 2018 08:45:00 GMT
ENV YARN_VERSION=1.6.0
# Fri, 04 May 2018 08:45:05 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 04 May 2018 08:45:06 GMT
CMD ["node"]
# Fri, 04 May 2018 09:04:47 GMT
ENV GOSU_VERSION=1.10
# Fri, 04 May 2018 09:04:51 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 04 May 2018 09:04:52 GMT
ENV NODE_ENV=production
# Sat, 05 May 2018 10:40:10 GMT
ENV GHOST_CLI_VERSION=1.7.2
# Sat, 05 May 2018 10:42:05 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 05 May 2018 10:42:08 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 05 May 2018 10:42:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 05 May 2018 10:42:10 GMT
ENV GHOST_VERSION=1.22.5
# Sat, 05 May 2018 10:45:24 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 05 May 2018 10:45:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 05 May 2018 10:51:10 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 05 May 2018 10:51:11 GMT
WORKDIR /var/lib/ghost
# Sat, 05 May 2018 10:51:12 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 05 May 2018 10:51:13 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 05 May 2018 10:51:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 10:51:15 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 10:51:15 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ab1956443782680cb03e43882013be70cd0dded9f08b67f348f4c326e730b6`  
		Last Modified: Tue, 01 May 2018 08:52:49 GMT  
		Size: 17.2 MB (17192945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880136ad78eb495c625af611073a20010603723520cd59249a2c514c15b3d64e`  
		Last Modified: Tue, 01 May 2018 13:05:43 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7ba65acd91abbb7288e81ff8eea9c533c7cefb2a330d9d88f8207820aa7342`  
		Last Modified: Tue, 01 May 2018 13:05:43 GMT  
		Size: 117.6 KB (117621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0173bb6e0b9fb2585cb4d0c2e0b5fc6006ae18f5fc36b6b134807aa81eba7c`  
		Last Modified: Fri, 04 May 2018 08:48:25 GMT  
		Size: 14.8 MB (14760262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a5d3aa37326c9931ae8399a378c98581ee9e487d3fed08cc929100a35a4569`  
		Last Modified: Fri, 04 May 2018 08:48:19 GMT  
		Size: 1.1 MB (1066218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6557b807af7fa3183b85a0967fa34e93ab558cbfb19787ba94cdd427db8440bc`  
		Last Modified: Fri, 04 May 2018 09:17:28 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578c624238e3116f17a3b28b892f8ae1dba7716e166200ce3dbac25162ac7915`  
		Last Modified: Sat, 05 May 2018 11:00:23 GMT  
		Size: 18.7 MB (18727472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39e1ee0583732200d4eed3f13d75de3b59b8ca4baec204df8482dce115de507`  
		Last Modified: Sat, 05 May 2018 11:01:27 GMT  
		Size: 88.8 MB (88770551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:615acc689d7c36693d5d868ef3bd1135b632c71a930b4d68235cd69ac642af28`  
		Last Modified: Sat, 05 May 2018 11:00:09 GMT  
		Size: 14.5 MB (14502397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43ad097e63d2e9728f8fcf8f3b0bad03a5ff5fa90df66c0e822c90eb95a0638`  
		Last Modified: Sat, 05 May 2018 10:59:55 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.22` - linux; 386

```console
$ docker pull ghost@sha256:80bfee9dd76c85a05e354f83d1dd88d7a57c17e43563d47bc47c01e384a8cb71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.4 MB (212390540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ca99d11a8875442161c14444022905af4f6c0239961254e1813558016ba89b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:32 GMT
ADD file:ce5174f2b2c155a2421fac3ff37a02d9551d5d79e31a541189bcfd2416a6903a in / 
# Sat, 28 Apr 2018 10:39:32 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:05:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:05:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 19:37:45 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 28 Apr 2018 19:37:46 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 04 May 2018 10:56:20 GMT
ENV NODE_VERSION=6.14.2
# Fri, 04 May 2018 10:57:00 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 04 May 2018 10:57:00 GMT
ENV YARN_VERSION=1.6.0
# Fri, 04 May 2018 10:57:03 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 04 May 2018 10:57:03 GMT
CMD ["node"]
# Fri, 04 May 2018 11:18:19 GMT
ENV GOSU_VERSION=1.10
# Fri, 04 May 2018 11:18:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 04 May 2018 11:18:24 GMT
ENV NODE_ENV=production
# Sat, 05 May 2018 11:49:49 GMT
ENV GHOST_CLI_VERSION=1.7.2
# Sat, 05 May 2018 11:50:14 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 05 May 2018 11:50:15 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 05 May 2018 11:50:15 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 05 May 2018 11:50:15 GMT
ENV GHOST_VERSION=1.22.5
# Sat, 05 May 2018 11:50:52 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 05 May 2018 11:50:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 05 May 2018 11:52:53 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 05 May 2018 11:52:53 GMT
WORKDIR /var/lib/ghost
# Sat, 05 May 2018 11:52:54 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 05 May 2018 11:52:54 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 05 May 2018 11:52:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 11:52:54 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 11:52:54 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:05b419d667f793c8c2edf0ff0aec14fc4d66733cdb89957ac89e8bfbeaddd0fa`  
		Last Modified: Sat, 28 Apr 2018 10:44:20 GMT  
		Size: 54.5 MB (54486782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330b9c3b7ebe34e933c240e5eb7f8620732974e6e15e2c5d17cb91ca2aefffa4`  
		Last Modified: Sat, 28 Apr 2018 12:41:22 GMT  
		Size: 19.9 MB (19866118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618a70cca8b81e7f688c7591ffb047d440d878e7c088b564e9e8611c1157dba5`  
		Last Modified: Sat, 28 Apr 2018 19:46:03 GMT  
		Size: 4.4 KB (4394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b2b5615162ffa8552b2e45aa789d255d2331fa388ef168bf3115fe546951502`  
		Last Modified: Sat, 28 Apr 2018 19:46:03 GMT  
		Size: 117.6 KB (117613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fdbd187f7696349101d0acf3a7c0deb688d21772f6f358449ff501b6ec646f7`  
		Last Modified: Fri, 04 May 2018 11:00:41 GMT  
		Size: 14.3 MB (14297650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6765edb4e0b4eedbf209a99a5540d1751a1f7fc741dc58ce46781c5cd4d3389a`  
		Last Modified: Fri, 04 May 2018 11:00:39 GMT  
		Size: 1.1 MB (1066219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab2e1053e42a12aedaddf3e699ae24472301df59977c6099d5f8cdf2da5b237`  
		Last Modified: Fri, 04 May 2018 11:28:16 GMT  
		Size: 480.6 KB (480563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730f71a2cc423ba4830413d3f4aa67a74dcd0cc30bdd87846539c817d2cab66d`  
		Last Modified: Sat, 05 May 2018 11:59:42 GMT  
		Size: 18.7 MB (18724856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b493a20766db759193a945ba06cae9688335d5caa797adff26a18d97a7593a9a`  
		Last Modified: Sat, 05 May 2018 12:00:11 GMT  
		Size: 88.8 MB (88761156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b6b926bbd8138945d0bb3996a88b4665dd4084fd56c94ccc67ca1f28a0cf8e2`  
		Last Modified: Sat, 05 May 2018 11:59:38 GMT  
		Size: 14.6 MB (14584620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bed2304b906c86f8fff8c1c90c75648df0cb63f3cd0df53e719cd97f9815d70`  
		Last Modified: Sat, 05 May 2018 11:59:20 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.22` - linux; ppc64le

```console
$ docker pull ghost@sha256:d95ec60086cf538691be61b179db1a43a3a0d21bfec2c014c255b80da71be6d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.6 MB (209577918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78080ac424fa34c7c572b8ec3e4f4a04d2c16456b60078ed97b531088f0f3ce0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:53:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:53:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 15:49:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 28 Apr 2018 15:49:27 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 28 Apr 2018 16:06:30 GMT
ENV NODE_VERSION=6.14.1
# Sat, 28 Apr 2018 16:07:44 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 28 Apr 2018 16:07:46 GMT
ENV YARN_VERSION=1.5.1
# Sat, 28 Apr 2018 16:07:54 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 28 Apr 2018 16:07:55 GMT
CMD ["node"]
# Sat, 28 Apr 2018 20:25:42 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 20:25:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 28 Apr 2018 20:25:51 GMT
ENV NODE_ENV=production
# Sat, 05 May 2018 08:17:17 GMT
ENV GHOST_CLI_VERSION=1.7.2
# Sat, 05 May 2018 08:18:20 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 05 May 2018 08:18:27 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 05 May 2018 08:18:29 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 05 May 2018 08:18:30 GMT
ENV GHOST_VERSION=1.22.5
# Sat, 05 May 2018 08:19:34 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 05 May 2018 08:19:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 05 May 2018 08:23:54 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 05 May 2018 08:23:56 GMT
WORKDIR /var/lib/ghost
# Sat, 05 May 2018 08:23:56 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 05 May 2018 08:23:57 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 05 May 2018 08:23:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 08:24:00 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 08:24:02 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73feb4c62e83f77f05ed3c1a72c453fce29bc8adee3ff31855937f28f0b9ad00`  
		Last Modified: Sat, 28 Apr 2018 10:38:43 GMT  
		Size: 17.6 MB (17571133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b033729a6b8a78e4b13cad1f1d95e6f4ab8461fcb87c89fb4882c297de02fbad`  
		Last Modified: Sat, 28 Apr 2018 16:32:50 GMT  
		Size: 4.4 KB (4438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd479c883acc5f45e3b06fe53ee3e824909480d7ee4035c57a3303a6058d3c1`  
		Last Modified: Sat, 28 Apr 2018 16:32:50 GMT  
		Size: 117.7 KB (117651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5de8244112e4f1d6cb1f72cc7c9021d8f19e4df7a44412b636ab3b2dcc500d`  
		Last Modified: Sat, 28 Apr 2018 16:38:33 GMT  
		Size: 14.5 MB (14503944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abbfc0285034d19463723dc2bed92d0074a197c39428886cf1bbe764a96829bd`  
		Last Modified: Sat, 28 Apr 2018 16:38:26 GMT  
		Size: 1.1 MB (1061054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106276b354e2e0c612a5a63f7f154018817cdf54431e5f43f5776c5e07ecbfeb`  
		Last Modified: Sat, 28 Apr 2018 20:35:58 GMT  
		Size: 469.8 KB (469843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1bca4ce9c4f0005d7fdb594b4d716276bfcb431e107c81d65f01214f90a38bb`  
		Last Modified: Sat, 05 May 2018 08:29:20 GMT  
		Size: 18.7 MB (18725198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f26a9a6dfb01b5ce90363f596c215f53e4fad575ce29071194c38df95792b7`  
		Last Modified: Sat, 05 May 2018 08:29:25 GMT  
		Size: 88.8 MB (88761153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5031d6c19cd19563b5ec8ef77c220e2e65e441d6546b289779b8cd4c9f4676`  
		Last Modified: Sat, 05 May 2018 08:29:01 GMT  
		Size: 15.0 MB (14970122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a88408d7b2079816663e6493b390708507b859d0af08afecd7876a64d39389`  
		Last Modified: Sat, 05 May 2018 08:28:57 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.22` - linux; s390x

```console
$ docker pull ghost@sha256:3352263fb33506902c771f1897b3eea67521376eccfd021e3560da8a28c19fb3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.3 MB (211314325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d21538a3647611db1756ef43068ed1a5bd097c8a96731447e4758d9b0927491`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:13:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:13:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 13:27:14 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 28 Apr 2018 13:27:15 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 04 May 2018 12:45:55 GMT
ENV NODE_VERSION=6.14.2
# Fri, 04 May 2018 12:46:09 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 04 May 2018 12:46:10 GMT
ENV YARN_VERSION=1.6.0
# Fri, 04 May 2018 12:46:12 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 04 May 2018 12:46:12 GMT
CMD ["node"]
# Fri, 04 May 2018 13:04:19 GMT
ENV GOSU_VERSION=1.10
# Fri, 04 May 2018 13:04:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 04 May 2018 13:04:21 GMT
ENV NODE_ENV=production
# Sat, 05 May 2018 12:14:59 GMT
ENV GHOST_CLI_VERSION=1.7.2
# Sat, 05 May 2018 12:15:20 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 05 May 2018 12:15:21 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 05 May 2018 12:15:21 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 05 May 2018 12:15:22 GMT
ENV GHOST_VERSION=1.22.5
# Sat, 05 May 2018 12:15:55 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 05 May 2018 12:15:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 05 May 2018 12:17:30 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 05 May 2018 12:17:31 GMT
WORKDIR /var/lib/ghost
# Sat, 05 May 2018 12:17:31 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 05 May 2018 12:17:31 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 05 May 2018 12:17:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 12:17:32 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 12:17:32 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2331cf8e884c1052e19f6b80b3efb54a7163ab49bf54c631bd861332c232029f`  
		Last Modified: Sat, 28 Apr 2018 13:29:06 GMT  
		Size: 17.8 MB (17767296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1573c40a4e9e40c7d5639586badca4c9ac2080488a599636910b77ac19a689`  
		Last Modified: Sat, 28 Apr 2018 13:29:01 GMT  
		Size: 4.4 KB (4410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd78e74bc99cbd7061122cf0fe9a054fb495f9bef7ef1502f65f98935d869fb`  
		Last Modified: Sat, 28 Apr 2018 13:29:01 GMT  
		Size: 117.6 KB (117619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae0b0f42c03caef1dd3f3f7d8ab8b3e136711648758d32b4bb0924132086e7f`  
		Last Modified: Fri, 04 May 2018 12:48:01 GMT  
		Size: 14.9 MB (14910558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992273aa70200d981cf7d15fd93ab6020cbe70689cd11d44d997aac565066423`  
		Last Modified: Fri, 04 May 2018 12:47:57 GMT  
		Size: 1.1 MB (1066217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9282f6ba38bf7eb309862be1ffdc61700b82fdf1955766137bc1d20634515deb`  
		Last Modified: Fri, 04 May 2018 13:08:38 GMT  
		Size: 486.8 KB (486821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0b64bc58f17348a3ec6ac6127ff03510b25a3ec0d1512fe897c70e8245ef61`  
		Last Modified: Sat, 05 May 2018 12:20:13 GMT  
		Size: 18.7 MB (18724905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cedd77ed3f9e54e83e612799a6327be185c8ca8e06de8f776b615bcb224551b`  
		Last Modified: Sat, 05 May 2018 12:20:29 GMT  
		Size: 88.8 MB (88759331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c59052817224a5cb1bb642b9cbb0445f3df5b1f3afaa376b403943e36872fa`  
		Last Modified: Sat, 05 May 2018 12:20:11 GMT  
		Size: 15.0 MB (15010742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52add7094a9e4c22c3f37b43e38b365b7ab79bff76d74a6dfe25cfd61322ff23`  
		Last Modified: Sat, 05 May 2018 12:20:06 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.22.5`

```console
$ docker pull ghost@sha256:670557be56306de6fe5fe7e14d725a333ec61d70e97641fdcd6a5619b87c22f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:1.22.5` - linux; amd64

```console
$ docker pull ghost@sha256:262c8f67d4aa258b5277555879b724c7f0ebf09513509e4b80e7656a5ec0dd88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.8 MB (206758153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de39aba037949019b2f679dcd5a093e95cf00f840b16e7a1885fdf792751d4d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Fri, 04 May 2018 17:35:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 17:35:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 06:40:50 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 05 May 2018 06:40:53 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 05 May 2018 06:43:38 GMT
ENV NODE_VERSION=6.14.2
# Sat, 05 May 2018 06:43:58 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 05 May 2018 06:43:59 GMT
ENV YARN_VERSION=1.6.0
# Sat, 05 May 2018 06:44:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 05 May 2018 06:44:02 GMT
CMD ["node"]
# Sat, 05 May 2018 07:54:15 GMT
ENV GOSU_VERSION=1.10
# Sat, 05 May 2018 07:54:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 05 May 2018 07:54:19 GMT
ENV NODE_ENV=production
# Sat, 05 May 2018 07:54:19 GMT
ENV GHOST_CLI_VERSION=1.7.2
# Sat, 05 May 2018 07:55:02 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 05 May 2018 07:55:03 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 05 May 2018 07:55:03 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 05 May 2018 07:55:03 GMT
ENV GHOST_VERSION=1.22.5
# Sat, 05 May 2018 07:55:52 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 05 May 2018 07:55:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 05 May 2018 07:56:04 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 05 May 2018 07:56:04 GMT
WORKDIR /var/lib/ghost
# Sat, 05 May 2018 07:56:05 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 05 May 2018 07:56:05 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 05 May 2018 07:56:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 07:56:05 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 07:56:06 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534514c83d698ad8a2ef994eeedaed92738e401d735e453d47e635cca02901b6`  
		Last Modified: Fri, 04 May 2018 18:19:14 GMT  
		Size: 17.6 MB (17584745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d86970c40400552472f8836ab621ff4456ada7ba86dd75fd7e273d4518fb1b`  
		Last Modified: Sat, 05 May 2018 06:48:38 GMT  
		Size: 4.4 KB (4408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de288f5266ab553a6b931facc9f72f837014fa542e08bef8b8a2b5030356a684`  
		Last Modified: Sat, 05 May 2018 06:48:38 GMT  
		Size: 117.6 KB (117621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a23a6c73e916ea143371fc4c0a9d8935f48e765b5bd1454ce8534a705541ac`  
		Last Modified: Sat, 05 May 2018 06:52:53 GMT  
		Size: 14.8 MB (14773322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc79cff1df9615e5c79e1e88181c114d8f9f4194d76a374db908685b51ed37b`  
		Last Modified: Sat, 05 May 2018 06:52:51 GMT  
		Size: 1.1 MB (1066217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827602db6b4c3d972ff6c009c13c7d01ec99be6cdb1426da98038812f3d4ecec`  
		Last Modified: Sat, 05 May 2018 07:58:12 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03266e28978e9f901d21dcb382f43f36e161f260f68c0bc16f0601ca2a239714`  
		Last Modified: Sat, 05 May 2018 07:58:16 GMT  
		Size: 18.7 MB (18725241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca721c3458a5873229077daddf04bbdc1fed41dcd681a1648fe34745d09852a7`  
		Last Modified: Sat, 05 May 2018 07:58:27 GMT  
		Size: 92.9 MB (92868608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0704f3045eeaa32f527142d83fd9a3b99d91adf2a1e31221c35fe5b4a85bd4d3`  
		Last Modified: Sat, 05 May 2018 07:58:12 GMT  
		Size: 6.9 MB (6854186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc3dde81a1e3c36967d9d204bd5e129e39079caabe9d9f1260566db407bf4c2`  
		Last Modified: Sat, 05 May 2018 07:58:11 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.22.5` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:44756f67a3b16468e5c35097266c832dc16d79121f8115bc44e0d822fcc54354
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.1 MB (207057996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e36487f1ae5f6fccce6bb13fdaa91baa1a0d8990d6c72c0ba13fde5ed491b42b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Tue, 01 May 2018 07:39:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 07:39:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 12:51:43 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 01 May 2018 12:51:46 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 04 May 2018 08:44:25 GMT
ENV NODE_VERSION=6.14.2
# Fri, 04 May 2018 08:44:59 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 04 May 2018 08:45:00 GMT
ENV YARN_VERSION=1.6.0
# Fri, 04 May 2018 08:45:05 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 04 May 2018 08:45:06 GMT
CMD ["node"]
# Fri, 04 May 2018 09:04:47 GMT
ENV GOSU_VERSION=1.10
# Fri, 04 May 2018 09:04:51 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 04 May 2018 09:04:52 GMT
ENV NODE_ENV=production
# Sat, 05 May 2018 10:40:10 GMT
ENV GHOST_CLI_VERSION=1.7.2
# Sat, 05 May 2018 10:42:05 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 05 May 2018 10:42:08 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 05 May 2018 10:42:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 05 May 2018 10:42:10 GMT
ENV GHOST_VERSION=1.22.5
# Sat, 05 May 2018 10:45:24 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 05 May 2018 10:45:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 05 May 2018 10:51:10 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 05 May 2018 10:51:11 GMT
WORKDIR /var/lib/ghost
# Sat, 05 May 2018 10:51:12 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 05 May 2018 10:51:13 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 05 May 2018 10:51:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 10:51:15 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 10:51:15 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ab1956443782680cb03e43882013be70cd0dded9f08b67f348f4c326e730b6`  
		Last Modified: Tue, 01 May 2018 08:52:49 GMT  
		Size: 17.2 MB (17192945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880136ad78eb495c625af611073a20010603723520cd59249a2c514c15b3d64e`  
		Last Modified: Tue, 01 May 2018 13:05:43 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7ba65acd91abbb7288e81ff8eea9c533c7cefb2a330d9d88f8207820aa7342`  
		Last Modified: Tue, 01 May 2018 13:05:43 GMT  
		Size: 117.6 KB (117621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0173bb6e0b9fb2585cb4d0c2e0b5fc6006ae18f5fc36b6b134807aa81eba7c`  
		Last Modified: Fri, 04 May 2018 08:48:25 GMT  
		Size: 14.8 MB (14760262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a5d3aa37326c9931ae8399a378c98581ee9e487d3fed08cc929100a35a4569`  
		Last Modified: Fri, 04 May 2018 08:48:19 GMT  
		Size: 1.1 MB (1066218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6557b807af7fa3183b85a0967fa34e93ab558cbfb19787ba94cdd427db8440bc`  
		Last Modified: Fri, 04 May 2018 09:17:28 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578c624238e3116f17a3b28b892f8ae1dba7716e166200ce3dbac25162ac7915`  
		Last Modified: Sat, 05 May 2018 11:00:23 GMT  
		Size: 18.7 MB (18727472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39e1ee0583732200d4eed3f13d75de3b59b8ca4baec204df8482dce115de507`  
		Last Modified: Sat, 05 May 2018 11:01:27 GMT  
		Size: 88.8 MB (88770551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:615acc689d7c36693d5d868ef3bd1135b632c71a930b4d68235cd69ac642af28`  
		Last Modified: Sat, 05 May 2018 11:00:09 GMT  
		Size: 14.5 MB (14502397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43ad097e63d2e9728f8fcf8f3b0bad03a5ff5fa90df66c0e822c90eb95a0638`  
		Last Modified: Sat, 05 May 2018 10:59:55 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.22.5` - linux; 386

```console
$ docker pull ghost@sha256:80bfee9dd76c85a05e354f83d1dd88d7a57c17e43563d47bc47c01e384a8cb71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.4 MB (212390540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ca99d11a8875442161c14444022905af4f6c0239961254e1813558016ba89b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:32 GMT
ADD file:ce5174f2b2c155a2421fac3ff37a02d9551d5d79e31a541189bcfd2416a6903a in / 
# Sat, 28 Apr 2018 10:39:32 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:05:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:05:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 19:37:45 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 28 Apr 2018 19:37:46 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 04 May 2018 10:56:20 GMT
ENV NODE_VERSION=6.14.2
# Fri, 04 May 2018 10:57:00 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 04 May 2018 10:57:00 GMT
ENV YARN_VERSION=1.6.0
# Fri, 04 May 2018 10:57:03 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 04 May 2018 10:57:03 GMT
CMD ["node"]
# Fri, 04 May 2018 11:18:19 GMT
ENV GOSU_VERSION=1.10
# Fri, 04 May 2018 11:18:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 04 May 2018 11:18:24 GMT
ENV NODE_ENV=production
# Sat, 05 May 2018 11:49:49 GMT
ENV GHOST_CLI_VERSION=1.7.2
# Sat, 05 May 2018 11:50:14 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 05 May 2018 11:50:15 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 05 May 2018 11:50:15 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 05 May 2018 11:50:15 GMT
ENV GHOST_VERSION=1.22.5
# Sat, 05 May 2018 11:50:52 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 05 May 2018 11:50:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 05 May 2018 11:52:53 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 05 May 2018 11:52:53 GMT
WORKDIR /var/lib/ghost
# Sat, 05 May 2018 11:52:54 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 05 May 2018 11:52:54 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 05 May 2018 11:52:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 11:52:54 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 11:52:54 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:05b419d667f793c8c2edf0ff0aec14fc4d66733cdb89957ac89e8bfbeaddd0fa`  
		Last Modified: Sat, 28 Apr 2018 10:44:20 GMT  
		Size: 54.5 MB (54486782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330b9c3b7ebe34e933c240e5eb7f8620732974e6e15e2c5d17cb91ca2aefffa4`  
		Last Modified: Sat, 28 Apr 2018 12:41:22 GMT  
		Size: 19.9 MB (19866118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618a70cca8b81e7f688c7591ffb047d440d878e7c088b564e9e8611c1157dba5`  
		Last Modified: Sat, 28 Apr 2018 19:46:03 GMT  
		Size: 4.4 KB (4394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b2b5615162ffa8552b2e45aa789d255d2331fa388ef168bf3115fe546951502`  
		Last Modified: Sat, 28 Apr 2018 19:46:03 GMT  
		Size: 117.6 KB (117613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fdbd187f7696349101d0acf3a7c0deb688d21772f6f358449ff501b6ec646f7`  
		Last Modified: Fri, 04 May 2018 11:00:41 GMT  
		Size: 14.3 MB (14297650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6765edb4e0b4eedbf209a99a5540d1751a1f7fc741dc58ce46781c5cd4d3389a`  
		Last Modified: Fri, 04 May 2018 11:00:39 GMT  
		Size: 1.1 MB (1066219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab2e1053e42a12aedaddf3e699ae24472301df59977c6099d5f8cdf2da5b237`  
		Last Modified: Fri, 04 May 2018 11:28:16 GMT  
		Size: 480.6 KB (480563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730f71a2cc423ba4830413d3f4aa67a74dcd0cc30bdd87846539c817d2cab66d`  
		Last Modified: Sat, 05 May 2018 11:59:42 GMT  
		Size: 18.7 MB (18724856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b493a20766db759193a945ba06cae9688335d5caa797adff26a18d97a7593a9a`  
		Last Modified: Sat, 05 May 2018 12:00:11 GMT  
		Size: 88.8 MB (88761156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b6b926bbd8138945d0bb3996a88b4665dd4084fd56c94ccc67ca1f28a0cf8e2`  
		Last Modified: Sat, 05 May 2018 11:59:38 GMT  
		Size: 14.6 MB (14584620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bed2304b906c86f8fff8c1c90c75648df0cb63f3cd0df53e719cd97f9815d70`  
		Last Modified: Sat, 05 May 2018 11:59:20 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.22.5` - linux; ppc64le

```console
$ docker pull ghost@sha256:d95ec60086cf538691be61b179db1a43a3a0d21bfec2c014c255b80da71be6d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.6 MB (209577918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78080ac424fa34c7c572b8ec3e4f4a04d2c16456b60078ed97b531088f0f3ce0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:53:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:53:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 15:49:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 28 Apr 2018 15:49:27 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 28 Apr 2018 16:06:30 GMT
ENV NODE_VERSION=6.14.1
# Sat, 28 Apr 2018 16:07:44 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 28 Apr 2018 16:07:46 GMT
ENV YARN_VERSION=1.5.1
# Sat, 28 Apr 2018 16:07:54 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 28 Apr 2018 16:07:55 GMT
CMD ["node"]
# Sat, 28 Apr 2018 20:25:42 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 20:25:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 28 Apr 2018 20:25:51 GMT
ENV NODE_ENV=production
# Sat, 05 May 2018 08:17:17 GMT
ENV GHOST_CLI_VERSION=1.7.2
# Sat, 05 May 2018 08:18:20 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 05 May 2018 08:18:27 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 05 May 2018 08:18:29 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 05 May 2018 08:18:30 GMT
ENV GHOST_VERSION=1.22.5
# Sat, 05 May 2018 08:19:34 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 05 May 2018 08:19:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 05 May 2018 08:23:54 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 05 May 2018 08:23:56 GMT
WORKDIR /var/lib/ghost
# Sat, 05 May 2018 08:23:56 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 05 May 2018 08:23:57 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 05 May 2018 08:23:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 08:24:00 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 08:24:02 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73feb4c62e83f77f05ed3c1a72c453fce29bc8adee3ff31855937f28f0b9ad00`  
		Last Modified: Sat, 28 Apr 2018 10:38:43 GMT  
		Size: 17.6 MB (17571133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b033729a6b8a78e4b13cad1f1d95e6f4ab8461fcb87c89fb4882c297de02fbad`  
		Last Modified: Sat, 28 Apr 2018 16:32:50 GMT  
		Size: 4.4 KB (4438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd479c883acc5f45e3b06fe53ee3e824909480d7ee4035c57a3303a6058d3c1`  
		Last Modified: Sat, 28 Apr 2018 16:32:50 GMT  
		Size: 117.7 KB (117651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5de8244112e4f1d6cb1f72cc7c9021d8f19e4df7a44412b636ab3b2dcc500d`  
		Last Modified: Sat, 28 Apr 2018 16:38:33 GMT  
		Size: 14.5 MB (14503944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abbfc0285034d19463723dc2bed92d0074a197c39428886cf1bbe764a96829bd`  
		Last Modified: Sat, 28 Apr 2018 16:38:26 GMT  
		Size: 1.1 MB (1061054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106276b354e2e0c612a5a63f7f154018817cdf54431e5f43f5776c5e07ecbfeb`  
		Last Modified: Sat, 28 Apr 2018 20:35:58 GMT  
		Size: 469.8 KB (469843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1bca4ce9c4f0005d7fdb594b4d716276bfcb431e107c81d65f01214f90a38bb`  
		Last Modified: Sat, 05 May 2018 08:29:20 GMT  
		Size: 18.7 MB (18725198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f26a9a6dfb01b5ce90363f596c215f53e4fad575ce29071194c38df95792b7`  
		Last Modified: Sat, 05 May 2018 08:29:25 GMT  
		Size: 88.8 MB (88761153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5031d6c19cd19563b5ec8ef77c220e2e65e441d6546b289779b8cd4c9f4676`  
		Last Modified: Sat, 05 May 2018 08:29:01 GMT  
		Size: 15.0 MB (14970122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a88408d7b2079816663e6493b390708507b859d0af08afecd7876a64d39389`  
		Last Modified: Sat, 05 May 2018 08:28:57 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.22.5` - linux; s390x

```console
$ docker pull ghost@sha256:3352263fb33506902c771f1897b3eea67521376eccfd021e3560da8a28c19fb3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.3 MB (211314325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d21538a3647611db1756ef43068ed1a5bd097c8a96731447e4758d9b0927491`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:13:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:13:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 13:27:14 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 28 Apr 2018 13:27:15 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 04 May 2018 12:45:55 GMT
ENV NODE_VERSION=6.14.2
# Fri, 04 May 2018 12:46:09 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 04 May 2018 12:46:10 GMT
ENV YARN_VERSION=1.6.0
# Fri, 04 May 2018 12:46:12 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 04 May 2018 12:46:12 GMT
CMD ["node"]
# Fri, 04 May 2018 13:04:19 GMT
ENV GOSU_VERSION=1.10
# Fri, 04 May 2018 13:04:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 04 May 2018 13:04:21 GMT
ENV NODE_ENV=production
# Sat, 05 May 2018 12:14:59 GMT
ENV GHOST_CLI_VERSION=1.7.2
# Sat, 05 May 2018 12:15:20 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 05 May 2018 12:15:21 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 05 May 2018 12:15:21 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 05 May 2018 12:15:22 GMT
ENV GHOST_VERSION=1.22.5
# Sat, 05 May 2018 12:15:55 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 05 May 2018 12:15:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 05 May 2018 12:17:30 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 05 May 2018 12:17:31 GMT
WORKDIR /var/lib/ghost
# Sat, 05 May 2018 12:17:31 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 05 May 2018 12:17:31 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 05 May 2018 12:17:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 12:17:32 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 12:17:32 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2331cf8e884c1052e19f6b80b3efb54a7163ab49bf54c631bd861332c232029f`  
		Last Modified: Sat, 28 Apr 2018 13:29:06 GMT  
		Size: 17.8 MB (17767296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1573c40a4e9e40c7d5639586badca4c9ac2080488a599636910b77ac19a689`  
		Last Modified: Sat, 28 Apr 2018 13:29:01 GMT  
		Size: 4.4 KB (4410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd78e74bc99cbd7061122cf0fe9a054fb495f9bef7ef1502f65f98935d869fb`  
		Last Modified: Sat, 28 Apr 2018 13:29:01 GMT  
		Size: 117.6 KB (117619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae0b0f42c03caef1dd3f3f7d8ab8b3e136711648758d32b4bb0924132086e7f`  
		Last Modified: Fri, 04 May 2018 12:48:01 GMT  
		Size: 14.9 MB (14910558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992273aa70200d981cf7d15fd93ab6020cbe70689cd11d44d997aac565066423`  
		Last Modified: Fri, 04 May 2018 12:47:57 GMT  
		Size: 1.1 MB (1066217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9282f6ba38bf7eb309862be1ffdc61700b82fdf1955766137bc1d20634515deb`  
		Last Modified: Fri, 04 May 2018 13:08:38 GMT  
		Size: 486.8 KB (486821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0b64bc58f17348a3ec6ac6127ff03510b25a3ec0d1512fe897c70e8245ef61`  
		Last Modified: Sat, 05 May 2018 12:20:13 GMT  
		Size: 18.7 MB (18724905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cedd77ed3f9e54e83e612799a6327be185c8ca8e06de8f776b615bcb224551b`  
		Last Modified: Sat, 05 May 2018 12:20:29 GMT  
		Size: 88.8 MB (88759331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c59052817224a5cb1bb642b9cbb0445f3df5b1f3afaa376b403943e36872fa`  
		Last Modified: Sat, 05 May 2018 12:20:11 GMT  
		Size: 15.0 MB (15010742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52add7094a9e4c22c3f37b43e38b365b7ab79bff76d74a6dfe25cfd61322ff23`  
		Last Modified: Sat, 05 May 2018 12:20:06 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.22.5-alpine`

```console
$ docker pull ghost@sha256:0550b87f473bf99a8aefbf3fab37e67e6830c17e9c3ce816d760a9d70757db6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1.22.5-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:64c24b0e9c8106b767fadcdf34a5f56d2ad96087c1f36ebd77a81f15d4b4d43f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131695947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d05f614931dbf881af1c9dc83d5c037e2d2e1b6f8b30eab563f8f10ba822466`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Thu, 03 May 2018 23:45:34 GMT
ENV NODE_VERSION=6.14.2
# Thu, 03 May 2018 23:58:32 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 03 May 2018 23:58:33 GMT
ENV YARN_VERSION=1.6.0
# Thu, 03 May 2018 23:58:46 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 03 May 2018 23:58:46 GMT
CMD ["node"]
# Fri, 04 May 2018 01:09:40 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 04 May 2018 01:09:42 GMT
RUN apk add --no-cache 		bash
# Fri, 04 May 2018 01:09:48 GMT
ENV NODE_ENV=production
# Fri, 04 May 2018 23:30:26 GMT
ENV GHOST_CLI_VERSION=1.7.2
# Fri, 04 May 2018 23:30:51 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 04 May 2018 23:30:51 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 04 May 2018 23:30:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 04 May 2018 23:30:52 GMT
ENV GHOST_VERSION=1.22.5
# Fri, 04 May 2018 23:31:25 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 04 May 2018 23:31:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 04 May 2018 23:31:26 GMT
WORKDIR /var/lib/ghost
# Fri, 04 May 2018 23:31:26 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 04 May 2018 23:31:27 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Fri, 04 May 2018 23:31:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 May 2018 23:31:27 GMT
EXPOSE 2368/tcp
# Fri, 04 May 2018 23:31:28 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892b5b9f1913fa3747fd8b37163f03cf7b7fe4252e9fe5e0b9a07c4c217e61ef`  
		Last Modified: Fri, 04 May 2018 00:42:48 GMT  
		Size: 15.5 MB (15512134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6286b99c67b41a05d3eff58f32b1bbf8fb77bbcdf43fc894caa075ec6939dd11`  
		Last Modified: Fri, 04 May 2018 00:42:43 GMT  
		Size: 1.1 MB (1072917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2e753b0bd7da5f6625da3365e32865d429da6de674b58ca1a554c58ceb4ab8`  
		Last Modified: Fri, 04 May 2018 02:51:43 GMT  
		Size: 8.4 KB (8365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c8b9ca0030b0db0559cdd5bebd2e6fe9c2e204fa3f4e5d17b55255fabdec3a`  
		Last Modified: Fri, 04 May 2018 02:51:51 GMT  
		Size: 1.1 MB (1119092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e7f5a348f7058d3f0c8fa417c1e6c8cded99d1adb551c7d0b36f717123ace4`  
		Last Modified: Fri, 04 May 2018 23:35:08 GMT  
		Size: 18.7 MB (18724030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceaf5492e1190291feed66163d9b00fd0e07e87bd8e374a122219cf3162a66fe`  
		Last Modified: Fri, 04 May 2018 23:35:17 GMT  
		Size: 92.9 MB (92871282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a791445c5f9f972aaa43906ffb3fa3718f03875b28d910443769d87fb0cd66`  
		Last Modified: Fri, 04 May 2018 23:35:02 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.22-alpine`

```console
$ docker pull ghost@sha256:0550b87f473bf99a8aefbf3fab37e67e6830c17e9c3ce816d760a9d70757db6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1.22-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:64c24b0e9c8106b767fadcdf34a5f56d2ad96087c1f36ebd77a81f15d4b4d43f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131695947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d05f614931dbf881af1c9dc83d5c037e2d2e1b6f8b30eab563f8f10ba822466`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Thu, 03 May 2018 23:45:34 GMT
ENV NODE_VERSION=6.14.2
# Thu, 03 May 2018 23:58:32 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 03 May 2018 23:58:33 GMT
ENV YARN_VERSION=1.6.0
# Thu, 03 May 2018 23:58:46 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 03 May 2018 23:58:46 GMT
CMD ["node"]
# Fri, 04 May 2018 01:09:40 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 04 May 2018 01:09:42 GMT
RUN apk add --no-cache 		bash
# Fri, 04 May 2018 01:09:48 GMT
ENV NODE_ENV=production
# Fri, 04 May 2018 23:30:26 GMT
ENV GHOST_CLI_VERSION=1.7.2
# Fri, 04 May 2018 23:30:51 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 04 May 2018 23:30:51 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 04 May 2018 23:30:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 04 May 2018 23:30:52 GMT
ENV GHOST_VERSION=1.22.5
# Fri, 04 May 2018 23:31:25 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 04 May 2018 23:31:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 04 May 2018 23:31:26 GMT
WORKDIR /var/lib/ghost
# Fri, 04 May 2018 23:31:26 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 04 May 2018 23:31:27 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Fri, 04 May 2018 23:31:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 May 2018 23:31:27 GMT
EXPOSE 2368/tcp
# Fri, 04 May 2018 23:31:28 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892b5b9f1913fa3747fd8b37163f03cf7b7fe4252e9fe5e0b9a07c4c217e61ef`  
		Last Modified: Fri, 04 May 2018 00:42:48 GMT  
		Size: 15.5 MB (15512134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6286b99c67b41a05d3eff58f32b1bbf8fb77bbcdf43fc894caa075ec6939dd11`  
		Last Modified: Fri, 04 May 2018 00:42:43 GMT  
		Size: 1.1 MB (1072917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2e753b0bd7da5f6625da3365e32865d429da6de674b58ca1a554c58ceb4ab8`  
		Last Modified: Fri, 04 May 2018 02:51:43 GMT  
		Size: 8.4 KB (8365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c8b9ca0030b0db0559cdd5bebd2e6fe9c2e204fa3f4e5d17b55255fabdec3a`  
		Last Modified: Fri, 04 May 2018 02:51:51 GMT  
		Size: 1.1 MB (1119092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e7f5a348f7058d3f0c8fa417c1e6c8cded99d1adb551c7d0b36f717123ace4`  
		Last Modified: Fri, 04 May 2018 23:35:08 GMT  
		Size: 18.7 MB (18724030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceaf5492e1190291feed66163d9b00fd0e07e87bd8e374a122219cf3162a66fe`  
		Last Modified: Fri, 04 May 2018 23:35:17 GMT  
		Size: 92.9 MB (92871282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a791445c5f9f972aaa43906ffb3fa3718f03875b28d910443769d87fb0cd66`  
		Last Modified: Fri, 04 May 2018 23:35:02 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:0550b87f473bf99a8aefbf3fab37e67e6830c17e9c3ce816d760a9d70757db6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:64c24b0e9c8106b767fadcdf34a5f56d2ad96087c1f36ebd77a81f15d4b4d43f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131695947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d05f614931dbf881af1c9dc83d5c037e2d2e1b6f8b30eab563f8f10ba822466`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Thu, 03 May 2018 23:45:34 GMT
ENV NODE_VERSION=6.14.2
# Thu, 03 May 2018 23:58:32 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 03 May 2018 23:58:33 GMT
ENV YARN_VERSION=1.6.0
# Thu, 03 May 2018 23:58:46 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 03 May 2018 23:58:46 GMT
CMD ["node"]
# Fri, 04 May 2018 01:09:40 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 04 May 2018 01:09:42 GMT
RUN apk add --no-cache 		bash
# Fri, 04 May 2018 01:09:48 GMT
ENV NODE_ENV=production
# Fri, 04 May 2018 23:30:26 GMT
ENV GHOST_CLI_VERSION=1.7.2
# Fri, 04 May 2018 23:30:51 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 04 May 2018 23:30:51 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 04 May 2018 23:30:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 04 May 2018 23:30:52 GMT
ENV GHOST_VERSION=1.22.5
# Fri, 04 May 2018 23:31:25 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 04 May 2018 23:31:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 04 May 2018 23:31:26 GMT
WORKDIR /var/lib/ghost
# Fri, 04 May 2018 23:31:26 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 04 May 2018 23:31:27 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Fri, 04 May 2018 23:31:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 May 2018 23:31:27 GMT
EXPOSE 2368/tcp
# Fri, 04 May 2018 23:31:28 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892b5b9f1913fa3747fd8b37163f03cf7b7fe4252e9fe5e0b9a07c4c217e61ef`  
		Last Modified: Fri, 04 May 2018 00:42:48 GMT  
		Size: 15.5 MB (15512134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6286b99c67b41a05d3eff58f32b1bbf8fb77bbcdf43fc894caa075ec6939dd11`  
		Last Modified: Fri, 04 May 2018 00:42:43 GMT  
		Size: 1.1 MB (1072917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2e753b0bd7da5f6625da3365e32865d429da6de674b58ca1a554c58ceb4ab8`  
		Last Modified: Fri, 04 May 2018 02:51:43 GMT  
		Size: 8.4 KB (8365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c8b9ca0030b0db0559cdd5bebd2e6fe9c2e204fa3f4e5d17b55255fabdec3a`  
		Last Modified: Fri, 04 May 2018 02:51:51 GMT  
		Size: 1.1 MB (1119092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e7f5a348f7058d3f0c8fa417c1e6c8cded99d1adb551c7d0b36f717123ace4`  
		Last Modified: Fri, 04 May 2018 23:35:08 GMT  
		Size: 18.7 MB (18724030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceaf5492e1190291feed66163d9b00fd0e07e87bd8e374a122219cf3162a66fe`  
		Last Modified: Fri, 04 May 2018 23:35:17 GMT  
		Size: 92.9 MB (92871282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a791445c5f9f972aaa43906ffb3fa3718f03875b28d910443769d87fb0cd66`  
		Last Modified: Fri, 04 May 2018 23:35:02 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:0550b87f473bf99a8aefbf3fab37e67e6830c17e9c3ce816d760a9d70757db6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:64c24b0e9c8106b767fadcdf34a5f56d2ad96087c1f36ebd77a81f15d4b4d43f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131695947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d05f614931dbf881af1c9dc83d5c037e2d2e1b6f8b30eab563f8f10ba822466`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Thu, 03 May 2018 23:45:34 GMT
ENV NODE_VERSION=6.14.2
# Thu, 03 May 2018 23:58:32 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 03 May 2018 23:58:33 GMT
ENV YARN_VERSION=1.6.0
# Thu, 03 May 2018 23:58:46 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 03 May 2018 23:58:46 GMT
CMD ["node"]
# Fri, 04 May 2018 01:09:40 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 04 May 2018 01:09:42 GMT
RUN apk add --no-cache 		bash
# Fri, 04 May 2018 01:09:48 GMT
ENV NODE_ENV=production
# Fri, 04 May 2018 23:30:26 GMT
ENV GHOST_CLI_VERSION=1.7.2
# Fri, 04 May 2018 23:30:51 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 04 May 2018 23:30:51 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 04 May 2018 23:30:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 04 May 2018 23:30:52 GMT
ENV GHOST_VERSION=1.22.5
# Fri, 04 May 2018 23:31:25 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 04 May 2018 23:31:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 04 May 2018 23:31:26 GMT
WORKDIR /var/lib/ghost
# Fri, 04 May 2018 23:31:26 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 04 May 2018 23:31:27 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Fri, 04 May 2018 23:31:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 May 2018 23:31:27 GMT
EXPOSE 2368/tcp
# Fri, 04 May 2018 23:31:28 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892b5b9f1913fa3747fd8b37163f03cf7b7fe4252e9fe5e0b9a07c4c217e61ef`  
		Last Modified: Fri, 04 May 2018 00:42:48 GMT  
		Size: 15.5 MB (15512134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6286b99c67b41a05d3eff58f32b1bbf8fb77bbcdf43fc894caa075ec6939dd11`  
		Last Modified: Fri, 04 May 2018 00:42:43 GMT  
		Size: 1.1 MB (1072917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2e753b0bd7da5f6625da3365e32865d429da6de674b58ca1a554c58ceb4ab8`  
		Last Modified: Fri, 04 May 2018 02:51:43 GMT  
		Size: 8.4 KB (8365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c8b9ca0030b0db0559cdd5bebd2e6fe9c2e204fa3f4e5d17b55255fabdec3a`  
		Last Modified: Fri, 04 May 2018 02:51:51 GMT  
		Size: 1.1 MB (1119092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e7f5a348f7058d3f0c8fa417c1e6c8cded99d1adb551c7d0b36f717123ace4`  
		Last Modified: Fri, 04 May 2018 23:35:08 GMT  
		Size: 18.7 MB (18724030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceaf5492e1190291feed66163d9b00fd0e07e87bd8e374a122219cf3162a66fe`  
		Last Modified: Fri, 04 May 2018 23:35:17 GMT  
		Size: 92.9 MB (92871282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a791445c5f9f972aaa43906ffb3fa3718f03875b28d910443769d87fb0cd66`  
		Last Modified: Fri, 04 May 2018 23:35:02 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:670557be56306de6fe5fe7e14d725a333ec61d70e97641fdcd6a5619b87c22f5
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
$ docker pull ghost@sha256:262c8f67d4aa258b5277555879b724c7f0ebf09513509e4b80e7656a5ec0dd88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.8 MB (206758153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de39aba037949019b2f679dcd5a093e95cf00f840b16e7a1885fdf792751d4d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Fri, 04 May 2018 17:35:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 17:35:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 06:40:50 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 05 May 2018 06:40:53 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 05 May 2018 06:43:38 GMT
ENV NODE_VERSION=6.14.2
# Sat, 05 May 2018 06:43:58 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 05 May 2018 06:43:59 GMT
ENV YARN_VERSION=1.6.0
# Sat, 05 May 2018 06:44:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 05 May 2018 06:44:02 GMT
CMD ["node"]
# Sat, 05 May 2018 07:54:15 GMT
ENV GOSU_VERSION=1.10
# Sat, 05 May 2018 07:54:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 05 May 2018 07:54:19 GMT
ENV NODE_ENV=production
# Sat, 05 May 2018 07:54:19 GMT
ENV GHOST_CLI_VERSION=1.7.2
# Sat, 05 May 2018 07:55:02 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 05 May 2018 07:55:03 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 05 May 2018 07:55:03 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 05 May 2018 07:55:03 GMT
ENV GHOST_VERSION=1.22.5
# Sat, 05 May 2018 07:55:52 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 05 May 2018 07:55:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 05 May 2018 07:56:04 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 05 May 2018 07:56:04 GMT
WORKDIR /var/lib/ghost
# Sat, 05 May 2018 07:56:05 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 05 May 2018 07:56:05 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 05 May 2018 07:56:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 07:56:05 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 07:56:06 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534514c83d698ad8a2ef994eeedaed92738e401d735e453d47e635cca02901b6`  
		Last Modified: Fri, 04 May 2018 18:19:14 GMT  
		Size: 17.6 MB (17584745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d86970c40400552472f8836ab621ff4456ada7ba86dd75fd7e273d4518fb1b`  
		Last Modified: Sat, 05 May 2018 06:48:38 GMT  
		Size: 4.4 KB (4408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de288f5266ab553a6b931facc9f72f837014fa542e08bef8b8a2b5030356a684`  
		Last Modified: Sat, 05 May 2018 06:48:38 GMT  
		Size: 117.6 KB (117621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a23a6c73e916ea143371fc4c0a9d8935f48e765b5bd1454ce8534a705541ac`  
		Last Modified: Sat, 05 May 2018 06:52:53 GMT  
		Size: 14.8 MB (14773322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc79cff1df9615e5c79e1e88181c114d8f9f4194d76a374db908685b51ed37b`  
		Last Modified: Sat, 05 May 2018 06:52:51 GMT  
		Size: 1.1 MB (1066217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827602db6b4c3d972ff6c009c13c7d01ec99be6cdb1426da98038812f3d4ecec`  
		Last Modified: Sat, 05 May 2018 07:58:12 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03266e28978e9f901d21dcb382f43f36e161f260f68c0bc16f0601ca2a239714`  
		Last Modified: Sat, 05 May 2018 07:58:16 GMT  
		Size: 18.7 MB (18725241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca721c3458a5873229077daddf04bbdc1fed41dcd681a1648fe34745d09852a7`  
		Last Modified: Sat, 05 May 2018 07:58:27 GMT  
		Size: 92.9 MB (92868608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0704f3045eeaa32f527142d83fd9a3b99d91adf2a1e31221c35fe5b4a85bd4d3`  
		Last Modified: Sat, 05 May 2018 07:58:12 GMT  
		Size: 6.9 MB (6854186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc3dde81a1e3c36967d9d204bd5e129e39079caabe9d9f1260566db407bf4c2`  
		Last Modified: Sat, 05 May 2018 07:58:11 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:44756f67a3b16468e5c35097266c832dc16d79121f8115bc44e0d822fcc54354
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.1 MB (207057996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e36487f1ae5f6fccce6bb13fdaa91baa1a0d8990d6c72c0ba13fde5ed491b42b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Tue, 01 May 2018 07:39:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 07:39:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 12:51:43 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 01 May 2018 12:51:46 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 04 May 2018 08:44:25 GMT
ENV NODE_VERSION=6.14.2
# Fri, 04 May 2018 08:44:59 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 04 May 2018 08:45:00 GMT
ENV YARN_VERSION=1.6.0
# Fri, 04 May 2018 08:45:05 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 04 May 2018 08:45:06 GMT
CMD ["node"]
# Fri, 04 May 2018 09:04:47 GMT
ENV GOSU_VERSION=1.10
# Fri, 04 May 2018 09:04:51 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 04 May 2018 09:04:52 GMT
ENV NODE_ENV=production
# Sat, 05 May 2018 10:40:10 GMT
ENV GHOST_CLI_VERSION=1.7.2
# Sat, 05 May 2018 10:42:05 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 05 May 2018 10:42:08 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 05 May 2018 10:42:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 05 May 2018 10:42:10 GMT
ENV GHOST_VERSION=1.22.5
# Sat, 05 May 2018 10:45:24 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 05 May 2018 10:45:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 05 May 2018 10:51:10 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 05 May 2018 10:51:11 GMT
WORKDIR /var/lib/ghost
# Sat, 05 May 2018 10:51:12 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 05 May 2018 10:51:13 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 05 May 2018 10:51:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 10:51:15 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 10:51:15 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ab1956443782680cb03e43882013be70cd0dded9f08b67f348f4c326e730b6`  
		Last Modified: Tue, 01 May 2018 08:52:49 GMT  
		Size: 17.2 MB (17192945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880136ad78eb495c625af611073a20010603723520cd59249a2c514c15b3d64e`  
		Last Modified: Tue, 01 May 2018 13:05:43 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7ba65acd91abbb7288e81ff8eea9c533c7cefb2a330d9d88f8207820aa7342`  
		Last Modified: Tue, 01 May 2018 13:05:43 GMT  
		Size: 117.6 KB (117621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0173bb6e0b9fb2585cb4d0c2e0b5fc6006ae18f5fc36b6b134807aa81eba7c`  
		Last Modified: Fri, 04 May 2018 08:48:25 GMT  
		Size: 14.8 MB (14760262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a5d3aa37326c9931ae8399a378c98581ee9e487d3fed08cc929100a35a4569`  
		Last Modified: Fri, 04 May 2018 08:48:19 GMT  
		Size: 1.1 MB (1066218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6557b807af7fa3183b85a0967fa34e93ab558cbfb19787ba94cdd427db8440bc`  
		Last Modified: Fri, 04 May 2018 09:17:28 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578c624238e3116f17a3b28b892f8ae1dba7716e166200ce3dbac25162ac7915`  
		Last Modified: Sat, 05 May 2018 11:00:23 GMT  
		Size: 18.7 MB (18727472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39e1ee0583732200d4eed3f13d75de3b59b8ca4baec204df8482dce115de507`  
		Last Modified: Sat, 05 May 2018 11:01:27 GMT  
		Size: 88.8 MB (88770551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:615acc689d7c36693d5d868ef3bd1135b632c71a930b4d68235cd69ac642af28`  
		Last Modified: Sat, 05 May 2018 11:00:09 GMT  
		Size: 14.5 MB (14502397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43ad097e63d2e9728f8fcf8f3b0bad03a5ff5fa90df66c0e822c90eb95a0638`  
		Last Modified: Sat, 05 May 2018 10:59:55 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; 386

```console
$ docker pull ghost@sha256:80bfee9dd76c85a05e354f83d1dd88d7a57c17e43563d47bc47c01e384a8cb71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.4 MB (212390540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ca99d11a8875442161c14444022905af4f6c0239961254e1813558016ba89b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:32 GMT
ADD file:ce5174f2b2c155a2421fac3ff37a02d9551d5d79e31a541189bcfd2416a6903a in / 
# Sat, 28 Apr 2018 10:39:32 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:05:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:05:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 19:37:45 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 28 Apr 2018 19:37:46 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 04 May 2018 10:56:20 GMT
ENV NODE_VERSION=6.14.2
# Fri, 04 May 2018 10:57:00 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 04 May 2018 10:57:00 GMT
ENV YARN_VERSION=1.6.0
# Fri, 04 May 2018 10:57:03 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 04 May 2018 10:57:03 GMT
CMD ["node"]
# Fri, 04 May 2018 11:18:19 GMT
ENV GOSU_VERSION=1.10
# Fri, 04 May 2018 11:18:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 04 May 2018 11:18:24 GMT
ENV NODE_ENV=production
# Sat, 05 May 2018 11:49:49 GMT
ENV GHOST_CLI_VERSION=1.7.2
# Sat, 05 May 2018 11:50:14 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 05 May 2018 11:50:15 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 05 May 2018 11:50:15 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 05 May 2018 11:50:15 GMT
ENV GHOST_VERSION=1.22.5
# Sat, 05 May 2018 11:50:52 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 05 May 2018 11:50:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 05 May 2018 11:52:53 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 05 May 2018 11:52:53 GMT
WORKDIR /var/lib/ghost
# Sat, 05 May 2018 11:52:54 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 05 May 2018 11:52:54 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 05 May 2018 11:52:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 11:52:54 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 11:52:54 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:05b419d667f793c8c2edf0ff0aec14fc4d66733cdb89957ac89e8bfbeaddd0fa`  
		Last Modified: Sat, 28 Apr 2018 10:44:20 GMT  
		Size: 54.5 MB (54486782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330b9c3b7ebe34e933c240e5eb7f8620732974e6e15e2c5d17cb91ca2aefffa4`  
		Last Modified: Sat, 28 Apr 2018 12:41:22 GMT  
		Size: 19.9 MB (19866118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618a70cca8b81e7f688c7591ffb047d440d878e7c088b564e9e8611c1157dba5`  
		Last Modified: Sat, 28 Apr 2018 19:46:03 GMT  
		Size: 4.4 KB (4394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b2b5615162ffa8552b2e45aa789d255d2331fa388ef168bf3115fe546951502`  
		Last Modified: Sat, 28 Apr 2018 19:46:03 GMT  
		Size: 117.6 KB (117613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fdbd187f7696349101d0acf3a7c0deb688d21772f6f358449ff501b6ec646f7`  
		Last Modified: Fri, 04 May 2018 11:00:41 GMT  
		Size: 14.3 MB (14297650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6765edb4e0b4eedbf209a99a5540d1751a1f7fc741dc58ce46781c5cd4d3389a`  
		Last Modified: Fri, 04 May 2018 11:00:39 GMT  
		Size: 1.1 MB (1066219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab2e1053e42a12aedaddf3e699ae24472301df59977c6099d5f8cdf2da5b237`  
		Last Modified: Fri, 04 May 2018 11:28:16 GMT  
		Size: 480.6 KB (480563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730f71a2cc423ba4830413d3f4aa67a74dcd0cc30bdd87846539c817d2cab66d`  
		Last Modified: Sat, 05 May 2018 11:59:42 GMT  
		Size: 18.7 MB (18724856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b493a20766db759193a945ba06cae9688335d5caa797adff26a18d97a7593a9a`  
		Last Modified: Sat, 05 May 2018 12:00:11 GMT  
		Size: 88.8 MB (88761156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b6b926bbd8138945d0bb3996a88b4665dd4084fd56c94ccc67ca1f28a0cf8e2`  
		Last Modified: Sat, 05 May 2018 11:59:38 GMT  
		Size: 14.6 MB (14584620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bed2304b906c86f8fff8c1c90c75648df0cb63f3cd0df53e719cd97f9815d70`  
		Last Modified: Sat, 05 May 2018 11:59:20 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; ppc64le

```console
$ docker pull ghost@sha256:d95ec60086cf538691be61b179db1a43a3a0d21bfec2c014c255b80da71be6d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.6 MB (209577918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78080ac424fa34c7c572b8ec3e4f4a04d2c16456b60078ed97b531088f0f3ce0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:53:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:53:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 15:49:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 28 Apr 2018 15:49:27 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Sat, 28 Apr 2018 16:06:30 GMT
ENV NODE_VERSION=6.14.1
# Sat, 28 Apr 2018 16:07:44 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 28 Apr 2018 16:07:46 GMT
ENV YARN_VERSION=1.5.1
# Sat, 28 Apr 2018 16:07:54 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 28 Apr 2018 16:07:55 GMT
CMD ["node"]
# Sat, 28 Apr 2018 20:25:42 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 20:25:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 28 Apr 2018 20:25:51 GMT
ENV NODE_ENV=production
# Sat, 05 May 2018 08:17:17 GMT
ENV GHOST_CLI_VERSION=1.7.2
# Sat, 05 May 2018 08:18:20 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 05 May 2018 08:18:27 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 05 May 2018 08:18:29 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 05 May 2018 08:18:30 GMT
ENV GHOST_VERSION=1.22.5
# Sat, 05 May 2018 08:19:34 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 05 May 2018 08:19:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 05 May 2018 08:23:54 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 05 May 2018 08:23:56 GMT
WORKDIR /var/lib/ghost
# Sat, 05 May 2018 08:23:56 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 05 May 2018 08:23:57 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 05 May 2018 08:23:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 08:24:00 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 08:24:02 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73feb4c62e83f77f05ed3c1a72c453fce29bc8adee3ff31855937f28f0b9ad00`  
		Last Modified: Sat, 28 Apr 2018 10:38:43 GMT  
		Size: 17.6 MB (17571133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b033729a6b8a78e4b13cad1f1d95e6f4ab8461fcb87c89fb4882c297de02fbad`  
		Last Modified: Sat, 28 Apr 2018 16:32:50 GMT  
		Size: 4.4 KB (4438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd479c883acc5f45e3b06fe53ee3e824909480d7ee4035c57a3303a6058d3c1`  
		Last Modified: Sat, 28 Apr 2018 16:32:50 GMT  
		Size: 117.7 KB (117651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5de8244112e4f1d6cb1f72cc7c9021d8f19e4df7a44412b636ab3b2dcc500d`  
		Last Modified: Sat, 28 Apr 2018 16:38:33 GMT  
		Size: 14.5 MB (14503944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abbfc0285034d19463723dc2bed92d0074a197c39428886cf1bbe764a96829bd`  
		Last Modified: Sat, 28 Apr 2018 16:38:26 GMT  
		Size: 1.1 MB (1061054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106276b354e2e0c612a5a63f7f154018817cdf54431e5f43f5776c5e07ecbfeb`  
		Last Modified: Sat, 28 Apr 2018 20:35:58 GMT  
		Size: 469.8 KB (469843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1bca4ce9c4f0005d7fdb594b4d716276bfcb431e107c81d65f01214f90a38bb`  
		Last Modified: Sat, 05 May 2018 08:29:20 GMT  
		Size: 18.7 MB (18725198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f26a9a6dfb01b5ce90363f596c215f53e4fad575ce29071194c38df95792b7`  
		Last Modified: Sat, 05 May 2018 08:29:25 GMT  
		Size: 88.8 MB (88761153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5031d6c19cd19563b5ec8ef77c220e2e65e441d6546b289779b8cd4c9f4676`  
		Last Modified: Sat, 05 May 2018 08:29:01 GMT  
		Size: 15.0 MB (14970122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a88408d7b2079816663e6493b390708507b859d0af08afecd7876a64d39389`  
		Last Modified: Sat, 05 May 2018 08:28:57 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; s390x

```console
$ docker pull ghost@sha256:3352263fb33506902c771f1897b3eea67521376eccfd021e3560da8a28c19fb3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.3 MB (211314325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d21538a3647611db1756ef43068ed1a5bd097c8a96731447e4758d9b0927491`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:13:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:13:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 13:27:14 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 28 Apr 2018 13:27:15 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 04 May 2018 12:45:55 GMT
ENV NODE_VERSION=6.14.2
# Fri, 04 May 2018 12:46:09 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 04 May 2018 12:46:10 GMT
ENV YARN_VERSION=1.6.0
# Fri, 04 May 2018 12:46:12 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 04 May 2018 12:46:12 GMT
CMD ["node"]
# Fri, 04 May 2018 13:04:19 GMT
ENV GOSU_VERSION=1.10
# Fri, 04 May 2018 13:04:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 04 May 2018 13:04:21 GMT
ENV NODE_ENV=production
# Sat, 05 May 2018 12:14:59 GMT
ENV GHOST_CLI_VERSION=1.7.2
# Sat, 05 May 2018 12:15:20 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 05 May 2018 12:15:21 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 05 May 2018 12:15:21 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 05 May 2018 12:15:22 GMT
ENV GHOST_VERSION=1.22.5
# Sat, 05 May 2018 12:15:55 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 05 May 2018 12:15:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 05 May 2018 12:17:30 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 05 May 2018 12:17:31 GMT
WORKDIR /var/lib/ghost
# Sat, 05 May 2018 12:17:31 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 05 May 2018 12:17:31 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 05 May 2018 12:17:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 05 May 2018 12:17:32 GMT
EXPOSE 2368/tcp
# Sat, 05 May 2018 12:17:32 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2331cf8e884c1052e19f6b80b3efb54a7163ab49bf54c631bd861332c232029f`  
		Last Modified: Sat, 28 Apr 2018 13:29:06 GMT  
		Size: 17.8 MB (17767296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1573c40a4e9e40c7d5639586badca4c9ac2080488a599636910b77ac19a689`  
		Last Modified: Sat, 28 Apr 2018 13:29:01 GMT  
		Size: 4.4 KB (4410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd78e74bc99cbd7061122cf0fe9a054fb495f9bef7ef1502f65f98935d869fb`  
		Last Modified: Sat, 28 Apr 2018 13:29:01 GMT  
		Size: 117.6 KB (117619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae0b0f42c03caef1dd3f3f7d8ab8b3e136711648758d32b4bb0924132086e7f`  
		Last Modified: Fri, 04 May 2018 12:48:01 GMT  
		Size: 14.9 MB (14910558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992273aa70200d981cf7d15fd93ab6020cbe70689cd11d44d997aac565066423`  
		Last Modified: Fri, 04 May 2018 12:47:57 GMT  
		Size: 1.1 MB (1066217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9282f6ba38bf7eb309862be1ffdc61700b82fdf1955766137bc1d20634515deb`  
		Last Modified: Fri, 04 May 2018 13:08:38 GMT  
		Size: 486.8 KB (486821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0b64bc58f17348a3ec6ac6127ff03510b25a3ec0d1512fe897c70e8245ef61`  
		Last Modified: Sat, 05 May 2018 12:20:13 GMT  
		Size: 18.7 MB (18724905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cedd77ed3f9e54e83e612799a6327be185c8ca8e06de8f776b615bcb224551b`  
		Last Modified: Sat, 05 May 2018 12:20:29 GMT  
		Size: 88.8 MB (88759331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c59052817224a5cb1bb642b9cbb0445f3df5b1f3afaa376b403943e36872fa`  
		Last Modified: Sat, 05 May 2018 12:20:11 GMT  
		Size: 15.0 MB (15010742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52add7094a9e4c22c3f37b43e38b365b7ab79bff76d74a6dfe25cfd61322ff23`  
		Last Modified: Sat, 05 May 2018 12:20:06 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

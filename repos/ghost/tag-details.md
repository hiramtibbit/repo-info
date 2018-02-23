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
-	[`ghost:1.21.3`](#ghost1213)
-	[`ghost:1.21.3-alpine`](#ghost1213-alpine)
-	[`ghost:1.21-alpine`](#ghost121-alpine)
-	[`ghost:1-alpine`](#ghost1-alpine)
-	[`ghost:alpine`](#ghostalpine)
-	[`ghost:latest`](#ghostlatest)

## `ghost:0`

```console
$ docker pull ghost@sha256:3ae6bb60dc15c5d81710e63c1fa382aa958a8501f1833a64d603bd88d06dd4fa
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
$ docker pull ghost@sha256:48652f6fa49803781c7e4f34ef8996437ad7cd1403ca6c68e596464f5cba9343
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114330920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21d7434de558938800610bf70e7ffe104242d3aaba01e82767fe08386e5f7eca`
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
# Thu, 22 Feb 2018 21:52:10 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Thu, 22 Feb 2018 22:53:09 GMT
ENV NODE_VERSION=6.13.0
# Thu, 22 Feb 2018 22:53:34 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 22 Feb 2018 22:53:35 GMT
ENV YARN_VERSION=1.3.2
# Thu, 22 Feb 2018 22:53:38 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 22 Feb 2018 22:53:38 GMT
CMD ["node"]
# Fri, 23 Feb 2018 01:36:28 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 23 Feb 2018 01:36:28 GMT
ENV GOSU_VERSION=1.10
# Fri, 23 Feb 2018 01:36:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Feb 2018 01:36:34 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 23 Feb 2018 01:36:34 GMT
WORKDIR /usr/src/ghost
# Fri, 23 Feb 2018 01:36:34 GMT
ENV GHOST_VERSION=0.11.12
# Fri, 23 Feb 2018 01:37:53 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 23 Feb 2018 01:37:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 23 Feb 2018 01:37:55 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 23 Feb 2018 01:37:55 GMT
VOLUME [/var/lib/ghost]
# Fri, 23 Feb 2018 01:37:56 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 23 Feb 2018 01:37:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 23 Feb 2018 01:37:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Feb 2018 01:37:57 GMT
EXPOSE 2368/tcp
# Fri, 23 Feb 2018 01:37:57 GMT
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
	-	`sha256:93078d113a16fa1b4bdbc9900b51dd617e543e4d6528cf95d5739627ec10d2c1`  
		Last Modified: Thu, 22 Feb 2018 23:33:29 GMT  
		Size: 117.6 KB (117625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53b3fcfafd4d2191b5145b9a98d95aa4e2bc7656f17427a52a279e8fdd56773a`  
		Last Modified: Thu, 22 Feb 2018 23:47:52 GMT  
		Size: 14.8 MB (14775304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1ed7264f5c33de4debb587a7aec8532c6362343da9b65206b513a39c9f18a6`  
		Last Modified: Thu, 22 Feb 2018 23:47:47 GMT  
		Size: 1.0 MB (1010350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e35620d3570d02ad818df422fd880ca0fce04e0313695adf0c7241ea7805dd`  
		Last Modified: Fri, 23 Feb 2018 01:48:51 GMT  
		Size: 4.5 KB (4459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41f62296f1e6dc3ec5e8f59a64ff02eb56fa636ba2d61a949a9508b5f495f5d0`  
		Last Modified: Fri, 23 Feb 2018 01:48:52 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e2de8f3b9227ffc31fbff8d062f7fffb10fca193e2937bf5c14b04a1c19308`  
		Last Modified: Fri, 23 Feb 2018 01:48:49 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525f24f7df577e9efb29b53fefba3e725c77cc536f3ef20d19a539f76aa7b2d0`  
		Last Modified: Fri, 23 Feb 2018 01:49:02 GMT  
		Size: 26.0 MB (26042332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4657118e6b499264de5ead371c03e39efb184e01265c5447d5d230598b6374`  
		Last Modified: Fri, 23 Feb 2018 01:48:49 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:287631fd3bc66f731f89483c1e4d287257d386514150547ebcef37990f5994d6`  
		Last Modified: Fri, 23 Feb 2018 01:48:49 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407bba4a9a40ec44b10256b1bd1402aaf0bb8817a4531ab847f279ac22c3e9ef`  
		Last Modified: Fri, 23 Feb 2018 01:48:49 GMT  
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
$ docker pull ghost@sha256:3ae6bb60dc15c5d81710e63c1fa382aa958a8501f1833a64d603bd88d06dd4fa
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
$ docker pull ghost@sha256:48652f6fa49803781c7e4f34ef8996437ad7cd1403ca6c68e596464f5cba9343
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114330920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21d7434de558938800610bf70e7ffe104242d3aaba01e82767fe08386e5f7eca`
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
# Thu, 22 Feb 2018 21:52:10 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Thu, 22 Feb 2018 22:53:09 GMT
ENV NODE_VERSION=6.13.0
# Thu, 22 Feb 2018 22:53:34 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 22 Feb 2018 22:53:35 GMT
ENV YARN_VERSION=1.3.2
# Thu, 22 Feb 2018 22:53:38 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 22 Feb 2018 22:53:38 GMT
CMD ["node"]
# Fri, 23 Feb 2018 01:36:28 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 23 Feb 2018 01:36:28 GMT
ENV GOSU_VERSION=1.10
# Fri, 23 Feb 2018 01:36:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Feb 2018 01:36:34 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 23 Feb 2018 01:36:34 GMT
WORKDIR /usr/src/ghost
# Fri, 23 Feb 2018 01:36:34 GMT
ENV GHOST_VERSION=0.11.12
# Fri, 23 Feb 2018 01:37:53 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 23 Feb 2018 01:37:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 23 Feb 2018 01:37:55 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 23 Feb 2018 01:37:55 GMT
VOLUME [/var/lib/ghost]
# Fri, 23 Feb 2018 01:37:56 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 23 Feb 2018 01:37:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 23 Feb 2018 01:37:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Feb 2018 01:37:57 GMT
EXPOSE 2368/tcp
# Fri, 23 Feb 2018 01:37:57 GMT
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
	-	`sha256:93078d113a16fa1b4bdbc9900b51dd617e543e4d6528cf95d5739627ec10d2c1`  
		Last Modified: Thu, 22 Feb 2018 23:33:29 GMT  
		Size: 117.6 KB (117625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53b3fcfafd4d2191b5145b9a98d95aa4e2bc7656f17427a52a279e8fdd56773a`  
		Last Modified: Thu, 22 Feb 2018 23:47:52 GMT  
		Size: 14.8 MB (14775304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1ed7264f5c33de4debb587a7aec8532c6362343da9b65206b513a39c9f18a6`  
		Last Modified: Thu, 22 Feb 2018 23:47:47 GMT  
		Size: 1.0 MB (1010350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e35620d3570d02ad818df422fd880ca0fce04e0313695adf0c7241ea7805dd`  
		Last Modified: Fri, 23 Feb 2018 01:48:51 GMT  
		Size: 4.5 KB (4459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41f62296f1e6dc3ec5e8f59a64ff02eb56fa636ba2d61a949a9508b5f495f5d0`  
		Last Modified: Fri, 23 Feb 2018 01:48:52 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e2de8f3b9227ffc31fbff8d062f7fffb10fca193e2937bf5c14b04a1c19308`  
		Last Modified: Fri, 23 Feb 2018 01:48:49 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525f24f7df577e9efb29b53fefba3e725c77cc536f3ef20d19a539f76aa7b2d0`  
		Last Modified: Fri, 23 Feb 2018 01:49:02 GMT  
		Size: 26.0 MB (26042332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4657118e6b499264de5ead371c03e39efb184e01265c5447d5d230598b6374`  
		Last Modified: Fri, 23 Feb 2018 01:48:49 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:287631fd3bc66f731f89483c1e4d287257d386514150547ebcef37990f5994d6`  
		Last Modified: Fri, 23 Feb 2018 01:48:49 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407bba4a9a40ec44b10256b1bd1402aaf0bb8817a4531ab847f279ac22c3e9ef`  
		Last Modified: Fri, 23 Feb 2018 01:48:49 GMT  
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
$ docker pull ghost@sha256:3ae6bb60dc15c5d81710e63c1fa382aa958a8501f1833a64d603bd88d06dd4fa
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
$ docker pull ghost@sha256:48652f6fa49803781c7e4f34ef8996437ad7cd1403ca6c68e596464f5cba9343
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114330920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21d7434de558938800610bf70e7ffe104242d3aaba01e82767fe08386e5f7eca`
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
# Thu, 22 Feb 2018 21:52:10 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Thu, 22 Feb 2018 22:53:09 GMT
ENV NODE_VERSION=6.13.0
# Thu, 22 Feb 2018 22:53:34 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 22 Feb 2018 22:53:35 GMT
ENV YARN_VERSION=1.3.2
# Thu, 22 Feb 2018 22:53:38 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 22 Feb 2018 22:53:38 GMT
CMD ["node"]
# Fri, 23 Feb 2018 01:36:28 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 23 Feb 2018 01:36:28 GMT
ENV GOSU_VERSION=1.10
# Fri, 23 Feb 2018 01:36:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Feb 2018 01:36:34 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 23 Feb 2018 01:36:34 GMT
WORKDIR /usr/src/ghost
# Fri, 23 Feb 2018 01:36:34 GMT
ENV GHOST_VERSION=0.11.12
# Fri, 23 Feb 2018 01:37:53 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 23 Feb 2018 01:37:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 23 Feb 2018 01:37:55 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 23 Feb 2018 01:37:55 GMT
VOLUME [/var/lib/ghost]
# Fri, 23 Feb 2018 01:37:56 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 23 Feb 2018 01:37:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 23 Feb 2018 01:37:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Feb 2018 01:37:57 GMT
EXPOSE 2368/tcp
# Fri, 23 Feb 2018 01:37:57 GMT
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
	-	`sha256:93078d113a16fa1b4bdbc9900b51dd617e543e4d6528cf95d5739627ec10d2c1`  
		Last Modified: Thu, 22 Feb 2018 23:33:29 GMT  
		Size: 117.6 KB (117625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53b3fcfafd4d2191b5145b9a98d95aa4e2bc7656f17427a52a279e8fdd56773a`  
		Last Modified: Thu, 22 Feb 2018 23:47:52 GMT  
		Size: 14.8 MB (14775304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1ed7264f5c33de4debb587a7aec8532c6362343da9b65206b513a39c9f18a6`  
		Last Modified: Thu, 22 Feb 2018 23:47:47 GMT  
		Size: 1.0 MB (1010350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e35620d3570d02ad818df422fd880ca0fce04e0313695adf0c7241ea7805dd`  
		Last Modified: Fri, 23 Feb 2018 01:48:51 GMT  
		Size: 4.5 KB (4459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41f62296f1e6dc3ec5e8f59a64ff02eb56fa636ba2d61a949a9508b5f495f5d0`  
		Last Modified: Fri, 23 Feb 2018 01:48:52 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e2de8f3b9227ffc31fbff8d062f7fffb10fca193e2937bf5c14b04a1c19308`  
		Last Modified: Fri, 23 Feb 2018 01:48:49 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525f24f7df577e9efb29b53fefba3e725c77cc536f3ef20d19a539f76aa7b2d0`  
		Last Modified: Fri, 23 Feb 2018 01:49:02 GMT  
		Size: 26.0 MB (26042332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4657118e6b499264de5ead371c03e39efb184e01265c5447d5d230598b6374`  
		Last Modified: Fri, 23 Feb 2018 01:48:49 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:287631fd3bc66f731f89483c1e4d287257d386514150547ebcef37990f5994d6`  
		Last Modified: Fri, 23 Feb 2018 01:48:49 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407bba4a9a40ec44b10256b1bd1402aaf0bb8817a4531ab847f279ac22c3e9ef`  
		Last Modified: Fri, 23 Feb 2018 01:48:49 GMT  
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
$ docker pull ghost@sha256:04c99c1f5ed25a873c490dcd8f7028246b2c91eb004f0c94349b737fdcefd253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11.12-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:b4c0010ba16affeda7dd77081044be69e33a0c17f5ad35cc32e067e0babfb23e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45511941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d88903a6e9aa808e6f99bf2c58bd507bccde2c8403aab0435d84671752fe01c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 14 Feb 2018 22:32:45 GMT
ENV NODE_VERSION=6.13.0
# Thu, 22 Feb 2018 22:39:32 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 22 Feb 2018 22:39:32 GMT
ENV YARN_VERSION=1.3.2
# Thu, 22 Feb 2018 22:39:48 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 22 Feb 2018 22:39:48 GMT
CMD ["node"]
# Fri, 23 Feb 2018 01:31:48 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 23 Feb 2018 01:40:56 GMT
RUN apk add --no-cache 		bash 		tar
# Fri, 23 Feb 2018 01:40:56 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 23 Feb 2018 01:40:56 GMT
WORKDIR /usr/src/ghost
# Fri, 23 Feb 2018 01:40:56 GMT
ENV GHOST_VERSION=0.11.12
# Fri, 23 Feb 2018 01:41:41 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 23 Feb 2018 01:41:41 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 23 Feb 2018 01:41:42 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 23 Feb 2018 01:41:42 GMT
VOLUME [/var/lib/ghost]
# Fri, 23 Feb 2018 01:41:43 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Fri, 23 Feb 2018 01:41:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Feb 2018 01:41:43 GMT
EXPOSE 2368/tcp
# Fri, 23 Feb 2018 01:41:43 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d51d20360fd2bb2db9354ed93023fa66150851e4777df4d75a7590e19c2c01`  
		Last Modified: Thu, 22 Feb 2018 23:45:37 GMT  
		Size: 15.5 MB (15505920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a6a440f4241b4c29ba6b0bc52f4dce1c9c0fa66ca45013171db64ce05ca478`  
		Last Modified: Thu, 22 Feb 2018 23:45:32 GMT  
		Size: 1.0 MB (1017605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0511b8cbb29e54c5967b7cb0f168498553b0ffa520f9b52dd4d4148eae43bdb5`  
		Last Modified: Fri, 23 Feb 2018 01:46:35 GMT  
		Size: 8.4 KB (8365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e93b573245d00db038f14918d7c0ce982cca838fa71f9a4e0daf4053ca23a03d`  
		Last Modified: Fri, 23 Feb 2018 01:49:57 GMT  
		Size: 1.4 MB (1360665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2229c830e59f885e33dfc4e571c3b8f9be0d8942760ba7256e8ce14c7cf76fcf`  
		Last Modified: Fri, 23 Feb 2018 01:49:56 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2782b67058cec6e473dfe164e3ef63ef1da2e5e9a8141b4e1f44da5dd79b60d`  
		Last Modified: Fri, 23 Feb 2018 01:50:12 GMT  
		Size: 25.2 MB (25230851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8435543ffb4067dba26f14270a2eb3b7847f1d86ee20ccc88d81b8d5ae97121`  
		Last Modified: Fri, 23 Feb 2018 01:49:56 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:442eff64bda15ada03d71dcb1f342cce96620ffe3ad23fd9b1fd5050afa99e39`  
		Last Modified: Fri, 23 Feb 2018 01:49:55 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11-alpine`

```console
$ docker pull ghost@sha256:04c99c1f5ed25a873c490dcd8f7028246b2c91eb004f0c94349b737fdcefd253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:b4c0010ba16affeda7dd77081044be69e33a0c17f5ad35cc32e067e0babfb23e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45511941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d88903a6e9aa808e6f99bf2c58bd507bccde2c8403aab0435d84671752fe01c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 14 Feb 2018 22:32:45 GMT
ENV NODE_VERSION=6.13.0
# Thu, 22 Feb 2018 22:39:32 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 22 Feb 2018 22:39:32 GMT
ENV YARN_VERSION=1.3.2
# Thu, 22 Feb 2018 22:39:48 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 22 Feb 2018 22:39:48 GMT
CMD ["node"]
# Fri, 23 Feb 2018 01:31:48 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 23 Feb 2018 01:40:56 GMT
RUN apk add --no-cache 		bash 		tar
# Fri, 23 Feb 2018 01:40:56 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 23 Feb 2018 01:40:56 GMT
WORKDIR /usr/src/ghost
# Fri, 23 Feb 2018 01:40:56 GMT
ENV GHOST_VERSION=0.11.12
# Fri, 23 Feb 2018 01:41:41 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 23 Feb 2018 01:41:41 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 23 Feb 2018 01:41:42 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 23 Feb 2018 01:41:42 GMT
VOLUME [/var/lib/ghost]
# Fri, 23 Feb 2018 01:41:43 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Fri, 23 Feb 2018 01:41:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Feb 2018 01:41:43 GMT
EXPOSE 2368/tcp
# Fri, 23 Feb 2018 01:41:43 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d51d20360fd2bb2db9354ed93023fa66150851e4777df4d75a7590e19c2c01`  
		Last Modified: Thu, 22 Feb 2018 23:45:37 GMT  
		Size: 15.5 MB (15505920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a6a440f4241b4c29ba6b0bc52f4dce1c9c0fa66ca45013171db64ce05ca478`  
		Last Modified: Thu, 22 Feb 2018 23:45:32 GMT  
		Size: 1.0 MB (1017605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0511b8cbb29e54c5967b7cb0f168498553b0ffa520f9b52dd4d4148eae43bdb5`  
		Last Modified: Fri, 23 Feb 2018 01:46:35 GMT  
		Size: 8.4 KB (8365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e93b573245d00db038f14918d7c0ce982cca838fa71f9a4e0daf4053ca23a03d`  
		Last Modified: Fri, 23 Feb 2018 01:49:57 GMT  
		Size: 1.4 MB (1360665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2229c830e59f885e33dfc4e571c3b8f9be0d8942760ba7256e8ce14c7cf76fcf`  
		Last Modified: Fri, 23 Feb 2018 01:49:56 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2782b67058cec6e473dfe164e3ef63ef1da2e5e9a8141b4e1f44da5dd79b60d`  
		Last Modified: Fri, 23 Feb 2018 01:50:12 GMT  
		Size: 25.2 MB (25230851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8435543ffb4067dba26f14270a2eb3b7847f1d86ee20ccc88d81b8d5ae97121`  
		Last Modified: Fri, 23 Feb 2018 01:49:56 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:442eff64bda15ada03d71dcb1f342cce96620ffe3ad23fd9b1fd5050afa99e39`  
		Last Modified: Fri, 23 Feb 2018 01:49:55 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:04c99c1f5ed25a873c490dcd8f7028246b2c91eb004f0c94349b737fdcefd253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:b4c0010ba16affeda7dd77081044be69e33a0c17f5ad35cc32e067e0babfb23e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45511941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d88903a6e9aa808e6f99bf2c58bd507bccde2c8403aab0435d84671752fe01c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 14 Feb 2018 22:32:45 GMT
ENV NODE_VERSION=6.13.0
# Thu, 22 Feb 2018 22:39:32 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 22 Feb 2018 22:39:32 GMT
ENV YARN_VERSION=1.3.2
# Thu, 22 Feb 2018 22:39:48 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 22 Feb 2018 22:39:48 GMT
CMD ["node"]
# Fri, 23 Feb 2018 01:31:48 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 23 Feb 2018 01:40:56 GMT
RUN apk add --no-cache 		bash 		tar
# Fri, 23 Feb 2018 01:40:56 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 23 Feb 2018 01:40:56 GMT
WORKDIR /usr/src/ghost
# Fri, 23 Feb 2018 01:40:56 GMT
ENV GHOST_VERSION=0.11.12
# Fri, 23 Feb 2018 01:41:41 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 23 Feb 2018 01:41:41 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 23 Feb 2018 01:41:42 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 23 Feb 2018 01:41:42 GMT
VOLUME [/var/lib/ghost]
# Fri, 23 Feb 2018 01:41:43 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Fri, 23 Feb 2018 01:41:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Feb 2018 01:41:43 GMT
EXPOSE 2368/tcp
# Fri, 23 Feb 2018 01:41:43 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d51d20360fd2bb2db9354ed93023fa66150851e4777df4d75a7590e19c2c01`  
		Last Modified: Thu, 22 Feb 2018 23:45:37 GMT  
		Size: 15.5 MB (15505920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a6a440f4241b4c29ba6b0bc52f4dce1c9c0fa66ca45013171db64ce05ca478`  
		Last Modified: Thu, 22 Feb 2018 23:45:32 GMT  
		Size: 1.0 MB (1017605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0511b8cbb29e54c5967b7cb0f168498553b0ffa520f9b52dd4d4148eae43bdb5`  
		Last Modified: Fri, 23 Feb 2018 01:46:35 GMT  
		Size: 8.4 KB (8365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e93b573245d00db038f14918d7c0ce982cca838fa71f9a4e0daf4053ca23a03d`  
		Last Modified: Fri, 23 Feb 2018 01:49:57 GMT  
		Size: 1.4 MB (1360665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2229c830e59f885e33dfc4e571c3b8f9be0d8942760ba7256e8ce14c7cf76fcf`  
		Last Modified: Fri, 23 Feb 2018 01:49:56 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2782b67058cec6e473dfe164e3ef63ef1da2e5e9a8141b4e1f44da5dd79b60d`  
		Last Modified: Fri, 23 Feb 2018 01:50:12 GMT  
		Size: 25.2 MB (25230851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8435543ffb4067dba26f14270a2eb3b7847f1d86ee20ccc88d81b8d5ae97121`  
		Last Modified: Fri, 23 Feb 2018 01:49:56 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:442eff64bda15ada03d71dcb1f342cce96620ffe3ad23fd9b1fd5050afa99e39`  
		Last Modified: Fri, 23 Feb 2018 01:49:55 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1`

```console
$ docker pull ghost@sha256:fe9237238ed5cff4055eaa0d50cf2e4193f659b6d66e059d58e842d0b25ed6e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `ghost:1` - linux; amd64

```console
$ docker pull ghost@sha256:0bd34e370f5299ad410ad568c39d225c3139d3538af1f8546d30e456dc4cc1cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212452518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac807a667b785d55d1f4e7f50d0415c64865912f3d6f318c93b55530fea113f0`
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
# Thu, 22 Feb 2018 21:52:10 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Thu, 22 Feb 2018 22:53:09 GMT
ENV NODE_VERSION=6.13.0
# Thu, 22 Feb 2018 22:53:34 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 22 Feb 2018 22:53:35 GMT
ENV YARN_VERSION=1.3.2
# Thu, 22 Feb 2018 22:53:38 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 22 Feb 2018 22:53:38 GMT
CMD ["node"]
# Fri, 23 Feb 2018 01:21:53 GMT
ENV GOSU_VERSION=1.10
# Fri, 23 Feb 2018 01:21:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Feb 2018 01:21:58 GMT
ENV NODE_ENV=production
# Fri, 23 Feb 2018 01:21:59 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Fri, 23 Feb 2018 01:22:21 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 23 Feb 2018 01:22:22 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 23 Feb 2018 01:22:22 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 23 Feb 2018 01:22:22 GMT
ENV GHOST_VERSION=1.21.3
# Fri, 23 Feb 2018 01:22:57 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 23 Feb 2018 01:22:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 23 Feb 2018 01:23:10 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 23 Feb 2018 01:23:10 GMT
WORKDIR /var/lib/ghost
# Fri, 23 Feb 2018 01:23:10 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 23 Feb 2018 01:23:11 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Fri, 23 Feb 2018 01:23:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Feb 2018 01:23:11 GMT
EXPOSE 2368/tcp
# Fri, 23 Feb 2018 01:23:11 GMT
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
	-	`sha256:93078d113a16fa1b4bdbc9900b51dd617e543e4d6528cf95d5739627ec10d2c1`  
		Last Modified: Thu, 22 Feb 2018 23:33:29 GMT  
		Size: 117.6 KB (117625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53b3fcfafd4d2191b5145b9a98d95aa4e2bc7656f17427a52a279e8fdd56773a`  
		Last Modified: Thu, 22 Feb 2018 23:47:52 GMT  
		Size: 14.8 MB (14775304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1ed7264f5c33de4debb587a7aec8532c6362343da9b65206b513a39c9f18a6`  
		Last Modified: Thu, 22 Feb 2018 23:47:47 GMT  
		Size: 1.0 MB (1010350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f1c1c1943129fd07a7571b932b95febf7278dfe2ff1adb2873f9af14c29e22`  
		Last Modified: Fri, 23 Feb 2018 01:42:10 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c059c9f9de489bb8250fdf59d0415b9cd50b296a63694570a7951fd083f2d988`  
		Last Modified: Fri, 23 Feb 2018 01:42:30 GMT  
		Size: 19.4 MB (19414895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33a557c6b83f5d41efd5e858c164dc11ff39079cac469bd7f6db980e3300f73`  
		Last Modified: Fri, 23 Feb 2018 01:42:59 GMT  
		Size: 96.9 MB (96938311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1098d04ad1438a454bced9c9431953210e6e337aad494b898bcf24b7f8943e86`  
		Last Modified: Fri, 23 Feb 2018 01:42:10 GMT  
		Size: 7.8 MB (7815714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dcc35a27a439f72c6c08feac1a2c6958cff5cd31d26912458142e8e4535a4dd`  
		Last Modified: Fri, 23 Feb 2018 01:42:09 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; ppc64le

```console
$ docker pull ghost@sha256:bb4db25a83e3a9da25af5c78fb9b371766669032bbf4e34d9e5832913665b159
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.1 MB (216072386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2efcc477449de4f29bb5262e1946dff5f84af4e638c64708a8eadc6c2f6d3ac`
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
# Fri, 23 Feb 2018 02:26:27 GMT
ENV GHOST_VERSION=1.21.3
# Fri, 23 Feb 2018 02:27:44 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 23 Feb 2018 02:27:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 23 Feb 2018 02:32:21 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 23 Feb 2018 02:32:22 GMT
WORKDIR /var/lib/ghost
# Fri, 23 Feb 2018 02:32:24 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 23 Feb 2018 02:32:27 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Fri, 23 Feb 2018 02:32:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Feb 2018 02:32:30 GMT
EXPOSE 2368/tcp
# Fri, 23 Feb 2018 02:32:32 GMT
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
	-	`sha256:2ccf4bf53a9068218b9039fbee951ea6ae8dc7220054895818e9833e2c6d818b`  
		Last Modified: Fri, 23 Feb 2018 02:33:34 GMT  
		Size: 91.8 MB (91832633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fba4c52b0bb781a5bc4d3dee026618a7eccf4dce1d19808e7083b3c81386962`  
		Last Modified: Fri, 23 Feb 2018 02:33:13 GMT  
		Size: 17.6 MB (17628067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b0b1e1ded54f703f431899705bc9f35fd2053107ee0ec052b2a8acfef6bff8`  
		Last Modified: Fri, 23 Feb 2018 02:33:10 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.21`

```console
$ docker pull ghost@sha256:fe9237238ed5cff4055eaa0d50cf2e4193f659b6d66e059d58e842d0b25ed6e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `ghost:1.21` - linux; amd64

```console
$ docker pull ghost@sha256:0bd34e370f5299ad410ad568c39d225c3139d3538af1f8546d30e456dc4cc1cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212452518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac807a667b785d55d1f4e7f50d0415c64865912f3d6f318c93b55530fea113f0`
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
# Thu, 22 Feb 2018 21:52:10 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Thu, 22 Feb 2018 22:53:09 GMT
ENV NODE_VERSION=6.13.0
# Thu, 22 Feb 2018 22:53:34 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 22 Feb 2018 22:53:35 GMT
ENV YARN_VERSION=1.3.2
# Thu, 22 Feb 2018 22:53:38 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 22 Feb 2018 22:53:38 GMT
CMD ["node"]
# Fri, 23 Feb 2018 01:21:53 GMT
ENV GOSU_VERSION=1.10
# Fri, 23 Feb 2018 01:21:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Feb 2018 01:21:58 GMT
ENV NODE_ENV=production
# Fri, 23 Feb 2018 01:21:59 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Fri, 23 Feb 2018 01:22:21 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 23 Feb 2018 01:22:22 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 23 Feb 2018 01:22:22 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 23 Feb 2018 01:22:22 GMT
ENV GHOST_VERSION=1.21.3
# Fri, 23 Feb 2018 01:22:57 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 23 Feb 2018 01:22:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 23 Feb 2018 01:23:10 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 23 Feb 2018 01:23:10 GMT
WORKDIR /var/lib/ghost
# Fri, 23 Feb 2018 01:23:10 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 23 Feb 2018 01:23:11 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Fri, 23 Feb 2018 01:23:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Feb 2018 01:23:11 GMT
EXPOSE 2368/tcp
# Fri, 23 Feb 2018 01:23:11 GMT
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
	-	`sha256:93078d113a16fa1b4bdbc9900b51dd617e543e4d6528cf95d5739627ec10d2c1`  
		Last Modified: Thu, 22 Feb 2018 23:33:29 GMT  
		Size: 117.6 KB (117625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53b3fcfafd4d2191b5145b9a98d95aa4e2bc7656f17427a52a279e8fdd56773a`  
		Last Modified: Thu, 22 Feb 2018 23:47:52 GMT  
		Size: 14.8 MB (14775304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1ed7264f5c33de4debb587a7aec8532c6362343da9b65206b513a39c9f18a6`  
		Last Modified: Thu, 22 Feb 2018 23:47:47 GMT  
		Size: 1.0 MB (1010350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f1c1c1943129fd07a7571b932b95febf7278dfe2ff1adb2873f9af14c29e22`  
		Last Modified: Fri, 23 Feb 2018 01:42:10 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c059c9f9de489bb8250fdf59d0415b9cd50b296a63694570a7951fd083f2d988`  
		Last Modified: Fri, 23 Feb 2018 01:42:30 GMT  
		Size: 19.4 MB (19414895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33a557c6b83f5d41efd5e858c164dc11ff39079cac469bd7f6db980e3300f73`  
		Last Modified: Fri, 23 Feb 2018 01:42:59 GMT  
		Size: 96.9 MB (96938311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1098d04ad1438a454bced9c9431953210e6e337aad494b898bcf24b7f8943e86`  
		Last Modified: Fri, 23 Feb 2018 01:42:10 GMT  
		Size: 7.8 MB (7815714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dcc35a27a439f72c6c08feac1a2c6958cff5cd31d26912458142e8e4535a4dd`  
		Last Modified: Fri, 23 Feb 2018 01:42:09 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.21` - linux; ppc64le

```console
$ docker pull ghost@sha256:bb4db25a83e3a9da25af5c78fb9b371766669032bbf4e34d9e5832913665b159
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.1 MB (216072386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2efcc477449de4f29bb5262e1946dff5f84af4e638c64708a8eadc6c2f6d3ac`
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
# Fri, 23 Feb 2018 02:26:27 GMT
ENV GHOST_VERSION=1.21.3
# Fri, 23 Feb 2018 02:27:44 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 23 Feb 2018 02:27:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 23 Feb 2018 02:32:21 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 23 Feb 2018 02:32:22 GMT
WORKDIR /var/lib/ghost
# Fri, 23 Feb 2018 02:32:24 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 23 Feb 2018 02:32:27 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Fri, 23 Feb 2018 02:32:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Feb 2018 02:32:30 GMT
EXPOSE 2368/tcp
# Fri, 23 Feb 2018 02:32:32 GMT
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
	-	`sha256:2ccf4bf53a9068218b9039fbee951ea6ae8dc7220054895818e9833e2c6d818b`  
		Last Modified: Fri, 23 Feb 2018 02:33:34 GMT  
		Size: 91.8 MB (91832633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fba4c52b0bb781a5bc4d3dee026618a7eccf4dce1d19808e7083b3c81386962`  
		Last Modified: Fri, 23 Feb 2018 02:33:13 GMT  
		Size: 17.6 MB (17628067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b0b1e1ded54f703f431899705bc9f35fd2053107ee0ec052b2a8acfef6bff8`  
		Last Modified: Fri, 23 Feb 2018 02:33:10 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.21.3`

```console
$ docker pull ghost@sha256:fe9237238ed5cff4055eaa0d50cf2e4193f659b6d66e059d58e842d0b25ed6e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `ghost:1.21.3` - linux; amd64

```console
$ docker pull ghost@sha256:0bd34e370f5299ad410ad568c39d225c3139d3538af1f8546d30e456dc4cc1cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212452518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac807a667b785d55d1f4e7f50d0415c64865912f3d6f318c93b55530fea113f0`
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
# Thu, 22 Feb 2018 21:52:10 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Thu, 22 Feb 2018 22:53:09 GMT
ENV NODE_VERSION=6.13.0
# Thu, 22 Feb 2018 22:53:34 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 22 Feb 2018 22:53:35 GMT
ENV YARN_VERSION=1.3.2
# Thu, 22 Feb 2018 22:53:38 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 22 Feb 2018 22:53:38 GMT
CMD ["node"]
# Fri, 23 Feb 2018 01:21:53 GMT
ENV GOSU_VERSION=1.10
# Fri, 23 Feb 2018 01:21:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Feb 2018 01:21:58 GMT
ENV NODE_ENV=production
# Fri, 23 Feb 2018 01:21:59 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Fri, 23 Feb 2018 01:22:21 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 23 Feb 2018 01:22:22 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 23 Feb 2018 01:22:22 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 23 Feb 2018 01:22:22 GMT
ENV GHOST_VERSION=1.21.3
# Fri, 23 Feb 2018 01:22:57 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 23 Feb 2018 01:22:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 23 Feb 2018 01:23:10 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 23 Feb 2018 01:23:10 GMT
WORKDIR /var/lib/ghost
# Fri, 23 Feb 2018 01:23:10 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 23 Feb 2018 01:23:11 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Fri, 23 Feb 2018 01:23:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Feb 2018 01:23:11 GMT
EXPOSE 2368/tcp
# Fri, 23 Feb 2018 01:23:11 GMT
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
	-	`sha256:93078d113a16fa1b4bdbc9900b51dd617e543e4d6528cf95d5739627ec10d2c1`  
		Last Modified: Thu, 22 Feb 2018 23:33:29 GMT  
		Size: 117.6 KB (117625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53b3fcfafd4d2191b5145b9a98d95aa4e2bc7656f17427a52a279e8fdd56773a`  
		Last Modified: Thu, 22 Feb 2018 23:47:52 GMT  
		Size: 14.8 MB (14775304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1ed7264f5c33de4debb587a7aec8532c6362343da9b65206b513a39c9f18a6`  
		Last Modified: Thu, 22 Feb 2018 23:47:47 GMT  
		Size: 1.0 MB (1010350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f1c1c1943129fd07a7571b932b95febf7278dfe2ff1adb2873f9af14c29e22`  
		Last Modified: Fri, 23 Feb 2018 01:42:10 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c059c9f9de489bb8250fdf59d0415b9cd50b296a63694570a7951fd083f2d988`  
		Last Modified: Fri, 23 Feb 2018 01:42:30 GMT  
		Size: 19.4 MB (19414895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33a557c6b83f5d41efd5e858c164dc11ff39079cac469bd7f6db980e3300f73`  
		Last Modified: Fri, 23 Feb 2018 01:42:59 GMT  
		Size: 96.9 MB (96938311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1098d04ad1438a454bced9c9431953210e6e337aad494b898bcf24b7f8943e86`  
		Last Modified: Fri, 23 Feb 2018 01:42:10 GMT  
		Size: 7.8 MB (7815714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dcc35a27a439f72c6c08feac1a2c6958cff5cd31d26912458142e8e4535a4dd`  
		Last Modified: Fri, 23 Feb 2018 01:42:09 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.21.3` - linux; ppc64le

```console
$ docker pull ghost@sha256:bb4db25a83e3a9da25af5c78fb9b371766669032bbf4e34d9e5832913665b159
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.1 MB (216072386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2efcc477449de4f29bb5262e1946dff5f84af4e638c64708a8eadc6c2f6d3ac`
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
# Fri, 23 Feb 2018 02:26:27 GMT
ENV GHOST_VERSION=1.21.3
# Fri, 23 Feb 2018 02:27:44 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 23 Feb 2018 02:27:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 23 Feb 2018 02:32:21 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 23 Feb 2018 02:32:22 GMT
WORKDIR /var/lib/ghost
# Fri, 23 Feb 2018 02:32:24 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 23 Feb 2018 02:32:27 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Fri, 23 Feb 2018 02:32:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Feb 2018 02:32:30 GMT
EXPOSE 2368/tcp
# Fri, 23 Feb 2018 02:32:32 GMT
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
	-	`sha256:2ccf4bf53a9068218b9039fbee951ea6ae8dc7220054895818e9833e2c6d818b`  
		Last Modified: Fri, 23 Feb 2018 02:33:34 GMT  
		Size: 91.8 MB (91832633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fba4c52b0bb781a5bc4d3dee026618a7eccf4dce1d19808e7083b3c81386962`  
		Last Modified: Fri, 23 Feb 2018 02:33:13 GMT  
		Size: 17.6 MB (17628067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b0b1e1ded54f703f431899705bc9f35fd2053107ee0ec052b2a8acfef6bff8`  
		Last Modified: Fri, 23 Feb 2018 02:33:10 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.21.3-alpine`

```console
$ docker pull ghost@sha256:daca00b38e2df5fc07c9f2a61c9c55e6eac4084c829ecdd3e84e1e38ed3f3047
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1.21.3-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:438f0c2fadad7d1e12bf51092b7e05537150b81f375474a88c7bce9dfedd93e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.4 MB (136394407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c7938927e2e3955019dc466c5cfd078c3ac8d5cd50283895f399b4276898a89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 14 Feb 2018 22:32:45 GMT
ENV NODE_VERSION=6.13.0
# Thu, 22 Feb 2018 22:39:32 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 22 Feb 2018 22:39:32 GMT
ENV YARN_VERSION=1.3.2
# Thu, 22 Feb 2018 22:39:48 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 22 Feb 2018 22:39:48 GMT
CMD ["node"]
# Fri, 23 Feb 2018 01:31:48 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 23 Feb 2018 01:31:52 GMT
RUN apk add --no-cache 		bash
# Fri, 23 Feb 2018 01:31:53 GMT
ENV NODE_ENV=production
# Fri, 23 Feb 2018 01:31:53 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Fri, 23 Feb 2018 01:32:16 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 23 Feb 2018 01:32:17 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 23 Feb 2018 01:32:17 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 23 Feb 2018 01:32:17 GMT
ENV GHOST_VERSION=1.21.3
# Fri, 23 Feb 2018 01:32:53 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 23 Feb 2018 01:32:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 23 Feb 2018 01:32:54 GMT
WORKDIR /var/lib/ghost
# Fri, 23 Feb 2018 01:32:54 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 23 Feb 2018 01:32:55 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Fri, 23 Feb 2018 01:32:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Feb 2018 01:32:55 GMT
EXPOSE 2368/tcp
# Fri, 23 Feb 2018 01:32:55 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d51d20360fd2bb2db9354ed93023fa66150851e4777df4d75a7590e19c2c01`  
		Last Modified: Thu, 22 Feb 2018 23:45:37 GMT  
		Size: 15.5 MB (15505920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a6a440f4241b4c29ba6b0bc52f4dce1c9c0fa66ca45013171db64ce05ca478`  
		Last Modified: Thu, 22 Feb 2018 23:45:32 GMT  
		Size: 1.0 MB (1017605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0511b8cbb29e54c5967b7cb0f168498553b0ffa520f9b52dd4d4148eae43bdb5`  
		Last Modified: Fri, 23 Feb 2018 01:46:35 GMT  
		Size: 8.4 KB (8365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ff1e9b8b09a28b985bbea9b970c6f64e1cd8252b27784a0605c540739d01a1`  
		Last Modified: Fri, 23 Feb 2018 01:46:42 GMT  
		Size: 1.1 MB (1119107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ac84db9313a3f0a797e76557770dd68d3ebdbe9db65ac07274b0af3a085c20`  
		Last Modified: Fri, 23 Feb 2018 01:46:58 GMT  
		Size: 19.4 MB (19415063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4e1800c0884aa41cc85739d268b8d7323c073939c06f7ca0cf368ec07a12a1`  
		Last Modified: Fri, 23 Feb 2018 01:47:27 GMT  
		Size: 96.9 MB (96940220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937234dbf2184be5e803156ec32ccaa7c0659d60f646babf320da63fea208b19`  
		Last Modified: Fri, 23 Feb 2018 01:46:35 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.21-alpine`

```console
$ docker pull ghost@sha256:daca00b38e2df5fc07c9f2a61c9c55e6eac4084c829ecdd3e84e1e38ed3f3047
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1.21-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:438f0c2fadad7d1e12bf51092b7e05537150b81f375474a88c7bce9dfedd93e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.4 MB (136394407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c7938927e2e3955019dc466c5cfd078c3ac8d5cd50283895f399b4276898a89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 14 Feb 2018 22:32:45 GMT
ENV NODE_VERSION=6.13.0
# Thu, 22 Feb 2018 22:39:32 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 22 Feb 2018 22:39:32 GMT
ENV YARN_VERSION=1.3.2
# Thu, 22 Feb 2018 22:39:48 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 22 Feb 2018 22:39:48 GMT
CMD ["node"]
# Fri, 23 Feb 2018 01:31:48 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 23 Feb 2018 01:31:52 GMT
RUN apk add --no-cache 		bash
# Fri, 23 Feb 2018 01:31:53 GMT
ENV NODE_ENV=production
# Fri, 23 Feb 2018 01:31:53 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Fri, 23 Feb 2018 01:32:16 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 23 Feb 2018 01:32:17 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 23 Feb 2018 01:32:17 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 23 Feb 2018 01:32:17 GMT
ENV GHOST_VERSION=1.21.3
# Fri, 23 Feb 2018 01:32:53 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 23 Feb 2018 01:32:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 23 Feb 2018 01:32:54 GMT
WORKDIR /var/lib/ghost
# Fri, 23 Feb 2018 01:32:54 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 23 Feb 2018 01:32:55 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Fri, 23 Feb 2018 01:32:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Feb 2018 01:32:55 GMT
EXPOSE 2368/tcp
# Fri, 23 Feb 2018 01:32:55 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d51d20360fd2bb2db9354ed93023fa66150851e4777df4d75a7590e19c2c01`  
		Last Modified: Thu, 22 Feb 2018 23:45:37 GMT  
		Size: 15.5 MB (15505920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a6a440f4241b4c29ba6b0bc52f4dce1c9c0fa66ca45013171db64ce05ca478`  
		Last Modified: Thu, 22 Feb 2018 23:45:32 GMT  
		Size: 1.0 MB (1017605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0511b8cbb29e54c5967b7cb0f168498553b0ffa520f9b52dd4d4148eae43bdb5`  
		Last Modified: Fri, 23 Feb 2018 01:46:35 GMT  
		Size: 8.4 KB (8365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ff1e9b8b09a28b985bbea9b970c6f64e1cd8252b27784a0605c540739d01a1`  
		Last Modified: Fri, 23 Feb 2018 01:46:42 GMT  
		Size: 1.1 MB (1119107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ac84db9313a3f0a797e76557770dd68d3ebdbe9db65ac07274b0af3a085c20`  
		Last Modified: Fri, 23 Feb 2018 01:46:58 GMT  
		Size: 19.4 MB (19415063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4e1800c0884aa41cc85739d268b8d7323c073939c06f7ca0cf368ec07a12a1`  
		Last Modified: Fri, 23 Feb 2018 01:47:27 GMT  
		Size: 96.9 MB (96940220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937234dbf2184be5e803156ec32ccaa7c0659d60f646babf320da63fea208b19`  
		Last Modified: Fri, 23 Feb 2018 01:46:35 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:daca00b38e2df5fc07c9f2a61c9c55e6eac4084c829ecdd3e84e1e38ed3f3047
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:438f0c2fadad7d1e12bf51092b7e05537150b81f375474a88c7bce9dfedd93e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.4 MB (136394407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c7938927e2e3955019dc466c5cfd078c3ac8d5cd50283895f399b4276898a89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 14 Feb 2018 22:32:45 GMT
ENV NODE_VERSION=6.13.0
# Thu, 22 Feb 2018 22:39:32 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 22 Feb 2018 22:39:32 GMT
ENV YARN_VERSION=1.3.2
# Thu, 22 Feb 2018 22:39:48 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 22 Feb 2018 22:39:48 GMT
CMD ["node"]
# Fri, 23 Feb 2018 01:31:48 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 23 Feb 2018 01:31:52 GMT
RUN apk add --no-cache 		bash
# Fri, 23 Feb 2018 01:31:53 GMT
ENV NODE_ENV=production
# Fri, 23 Feb 2018 01:31:53 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Fri, 23 Feb 2018 01:32:16 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 23 Feb 2018 01:32:17 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 23 Feb 2018 01:32:17 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 23 Feb 2018 01:32:17 GMT
ENV GHOST_VERSION=1.21.3
# Fri, 23 Feb 2018 01:32:53 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 23 Feb 2018 01:32:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 23 Feb 2018 01:32:54 GMT
WORKDIR /var/lib/ghost
# Fri, 23 Feb 2018 01:32:54 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 23 Feb 2018 01:32:55 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Fri, 23 Feb 2018 01:32:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Feb 2018 01:32:55 GMT
EXPOSE 2368/tcp
# Fri, 23 Feb 2018 01:32:55 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d51d20360fd2bb2db9354ed93023fa66150851e4777df4d75a7590e19c2c01`  
		Last Modified: Thu, 22 Feb 2018 23:45:37 GMT  
		Size: 15.5 MB (15505920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a6a440f4241b4c29ba6b0bc52f4dce1c9c0fa66ca45013171db64ce05ca478`  
		Last Modified: Thu, 22 Feb 2018 23:45:32 GMT  
		Size: 1.0 MB (1017605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0511b8cbb29e54c5967b7cb0f168498553b0ffa520f9b52dd4d4148eae43bdb5`  
		Last Modified: Fri, 23 Feb 2018 01:46:35 GMT  
		Size: 8.4 KB (8365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ff1e9b8b09a28b985bbea9b970c6f64e1cd8252b27784a0605c540739d01a1`  
		Last Modified: Fri, 23 Feb 2018 01:46:42 GMT  
		Size: 1.1 MB (1119107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ac84db9313a3f0a797e76557770dd68d3ebdbe9db65ac07274b0af3a085c20`  
		Last Modified: Fri, 23 Feb 2018 01:46:58 GMT  
		Size: 19.4 MB (19415063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4e1800c0884aa41cc85739d268b8d7323c073939c06f7ca0cf368ec07a12a1`  
		Last Modified: Fri, 23 Feb 2018 01:47:27 GMT  
		Size: 96.9 MB (96940220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937234dbf2184be5e803156ec32ccaa7c0659d60f646babf320da63fea208b19`  
		Last Modified: Fri, 23 Feb 2018 01:46:35 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:daca00b38e2df5fc07c9f2a61c9c55e6eac4084c829ecdd3e84e1e38ed3f3047
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:438f0c2fadad7d1e12bf51092b7e05537150b81f375474a88c7bce9dfedd93e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.4 MB (136394407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c7938927e2e3955019dc466c5cfd078c3ac8d5cd50283895f399b4276898a89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 14 Feb 2018 22:32:45 GMT
ENV NODE_VERSION=6.13.0
# Thu, 22 Feb 2018 22:39:32 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 22 Feb 2018 22:39:32 GMT
ENV YARN_VERSION=1.3.2
# Thu, 22 Feb 2018 22:39:48 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 22 Feb 2018 22:39:48 GMT
CMD ["node"]
# Fri, 23 Feb 2018 01:31:48 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 23 Feb 2018 01:31:52 GMT
RUN apk add --no-cache 		bash
# Fri, 23 Feb 2018 01:31:53 GMT
ENV NODE_ENV=production
# Fri, 23 Feb 2018 01:31:53 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Fri, 23 Feb 2018 01:32:16 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 23 Feb 2018 01:32:17 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 23 Feb 2018 01:32:17 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 23 Feb 2018 01:32:17 GMT
ENV GHOST_VERSION=1.21.3
# Fri, 23 Feb 2018 01:32:53 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 23 Feb 2018 01:32:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 23 Feb 2018 01:32:54 GMT
WORKDIR /var/lib/ghost
# Fri, 23 Feb 2018 01:32:54 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 23 Feb 2018 01:32:55 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Fri, 23 Feb 2018 01:32:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Feb 2018 01:32:55 GMT
EXPOSE 2368/tcp
# Fri, 23 Feb 2018 01:32:55 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d51d20360fd2bb2db9354ed93023fa66150851e4777df4d75a7590e19c2c01`  
		Last Modified: Thu, 22 Feb 2018 23:45:37 GMT  
		Size: 15.5 MB (15505920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a6a440f4241b4c29ba6b0bc52f4dce1c9c0fa66ca45013171db64ce05ca478`  
		Last Modified: Thu, 22 Feb 2018 23:45:32 GMT  
		Size: 1.0 MB (1017605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0511b8cbb29e54c5967b7cb0f168498553b0ffa520f9b52dd4d4148eae43bdb5`  
		Last Modified: Fri, 23 Feb 2018 01:46:35 GMT  
		Size: 8.4 KB (8365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ff1e9b8b09a28b985bbea9b970c6f64e1cd8252b27784a0605c540739d01a1`  
		Last Modified: Fri, 23 Feb 2018 01:46:42 GMT  
		Size: 1.1 MB (1119107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ac84db9313a3f0a797e76557770dd68d3ebdbe9db65ac07274b0af3a085c20`  
		Last Modified: Fri, 23 Feb 2018 01:46:58 GMT  
		Size: 19.4 MB (19415063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4e1800c0884aa41cc85739d268b8d7323c073939c06f7ca0cf368ec07a12a1`  
		Last Modified: Fri, 23 Feb 2018 01:47:27 GMT  
		Size: 96.9 MB (96940220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937234dbf2184be5e803156ec32ccaa7c0659d60f646babf320da63fea208b19`  
		Last Modified: Fri, 23 Feb 2018 01:46:35 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:fe9237238ed5cff4055eaa0d50cf2e4193f659b6d66e059d58e842d0b25ed6e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `ghost:latest` - linux; amd64

```console
$ docker pull ghost@sha256:0bd34e370f5299ad410ad568c39d225c3139d3538af1f8546d30e456dc4cc1cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212452518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac807a667b785d55d1f4e7f50d0415c64865912f3d6f318c93b55530fea113f0`
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
# Thu, 22 Feb 2018 21:52:10 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Thu, 22 Feb 2018 22:53:09 GMT
ENV NODE_VERSION=6.13.0
# Thu, 22 Feb 2018 22:53:34 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 22 Feb 2018 22:53:35 GMT
ENV YARN_VERSION=1.3.2
# Thu, 22 Feb 2018 22:53:38 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 22 Feb 2018 22:53:38 GMT
CMD ["node"]
# Fri, 23 Feb 2018 01:21:53 GMT
ENV GOSU_VERSION=1.10
# Fri, 23 Feb 2018 01:21:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Feb 2018 01:21:58 GMT
ENV NODE_ENV=production
# Fri, 23 Feb 2018 01:21:59 GMT
ENV GHOST_CLI_VERSION=1.5.2
# Fri, 23 Feb 2018 01:22:21 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Fri, 23 Feb 2018 01:22:22 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 23 Feb 2018 01:22:22 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 23 Feb 2018 01:22:22 GMT
ENV GHOST_VERSION=1.21.3
# Fri, 23 Feb 2018 01:22:57 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 23 Feb 2018 01:22:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 23 Feb 2018 01:23:10 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 23 Feb 2018 01:23:10 GMT
WORKDIR /var/lib/ghost
# Fri, 23 Feb 2018 01:23:10 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 23 Feb 2018 01:23:11 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Fri, 23 Feb 2018 01:23:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Feb 2018 01:23:11 GMT
EXPOSE 2368/tcp
# Fri, 23 Feb 2018 01:23:11 GMT
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
	-	`sha256:93078d113a16fa1b4bdbc9900b51dd617e543e4d6528cf95d5739627ec10d2c1`  
		Last Modified: Thu, 22 Feb 2018 23:33:29 GMT  
		Size: 117.6 KB (117625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53b3fcfafd4d2191b5145b9a98d95aa4e2bc7656f17427a52a279e8fdd56773a`  
		Last Modified: Thu, 22 Feb 2018 23:47:52 GMT  
		Size: 14.8 MB (14775304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1ed7264f5c33de4debb587a7aec8532c6362343da9b65206b513a39c9f18a6`  
		Last Modified: Thu, 22 Feb 2018 23:47:47 GMT  
		Size: 1.0 MB (1010350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f1c1c1943129fd07a7571b932b95febf7278dfe2ff1adb2873f9af14c29e22`  
		Last Modified: Fri, 23 Feb 2018 01:42:10 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c059c9f9de489bb8250fdf59d0415b9cd50b296a63694570a7951fd083f2d988`  
		Last Modified: Fri, 23 Feb 2018 01:42:30 GMT  
		Size: 19.4 MB (19414895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33a557c6b83f5d41efd5e858c164dc11ff39079cac469bd7f6db980e3300f73`  
		Last Modified: Fri, 23 Feb 2018 01:42:59 GMT  
		Size: 96.9 MB (96938311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1098d04ad1438a454bced9c9431953210e6e337aad494b898bcf24b7f8943e86`  
		Last Modified: Fri, 23 Feb 2018 01:42:10 GMT  
		Size: 7.8 MB (7815714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dcc35a27a439f72c6c08feac1a2c6958cff5cd31d26912458142e8e4535a4dd`  
		Last Modified: Fri, 23 Feb 2018 01:42:09 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; ppc64le

```console
$ docker pull ghost@sha256:bb4db25a83e3a9da25af5c78fb9b371766669032bbf4e34d9e5832913665b159
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.1 MB (216072386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2efcc477449de4f29bb5262e1946dff5f84af4e638c64708a8eadc6c2f6d3ac`
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
# Fri, 23 Feb 2018 02:26:27 GMT
ENV GHOST_VERSION=1.21.3
# Fri, 23 Feb 2018 02:27:44 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Fri, 23 Feb 2018 02:27:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Fri, 23 Feb 2018 02:32:21 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Fri, 23 Feb 2018 02:32:22 GMT
WORKDIR /var/lib/ghost
# Fri, 23 Feb 2018 02:32:24 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 23 Feb 2018 02:32:27 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Fri, 23 Feb 2018 02:32:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Feb 2018 02:32:30 GMT
EXPOSE 2368/tcp
# Fri, 23 Feb 2018 02:32:32 GMT
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
	-	`sha256:2ccf4bf53a9068218b9039fbee951ea6ae8dc7220054895818e9833e2c6d818b`  
		Last Modified: Fri, 23 Feb 2018 02:33:34 GMT  
		Size: 91.8 MB (91832633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fba4c52b0bb781a5bc4d3dee026618a7eccf4dce1d19808e7083b3c81386962`  
		Last Modified: Fri, 23 Feb 2018 02:33:13 GMT  
		Size: 17.6 MB (17628067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b0b1e1ded54f703f431899705bc9f35fd2053107ee0ec052b2a8acfef6bff8`  
		Last Modified: Fri, 23 Feb 2018 02:33:10 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:0`](#ghost0)
-	[`ghost:0.11`](#ghost011)
-	[`ghost:0.11.13`](#ghost01113)
-	[`ghost:0.11.13-alpine`](#ghost01113-alpine)
-	[`ghost:0.11-alpine`](#ghost011-alpine)
-	[`ghost:0-alpine`](#ghost0-alpine)
-	[`ghost:1`](#ghost1)
-	[`ghost:1.24`](#ghost124)
-	[`ghost:1.24.1`](#ghost1241)
-	[`ghost:1.24.1-alpine`](#ghost1241-alpine)
-	[`ghost:1.24-alpine`](#ghost124-alpine)
-	[`ghost:1-alpine`](#ghost1-alpine)
-	[`ghost:alpine`](#ghostalpine)
-	[`ghost:latest`](#ghostlatest)

## `ghost:0`

```console
$ docker pull ghost@sha256:060e3b805f9acdefa7fbc65b414b0e256e8d388df77bb4a888cc7ab560de6de7
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
$ docker pull ghost@sha256:8a2e3bd255681c4f1187c615a9033936cf3275ce9c72f940bfb0d2b737964c4c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.5 MB (89501871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73179a71b01ca2c7849c64a7cd77e7e1d501b76773075d15342a496dc2a7037c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 01:40:13 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 06 Jun 2018 01:40:16 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Wed, 06 Jun 2018 01:56:57 GMT
ENV NODE_VERSION=6.14.2
# Wed, 06 Jun 2018 01:57:56 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Jun 2018 01:57:57 GMT
ENV YARN_VERSION=1.6.0
# Wed, 06 Jun 2018 01:58:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Jun 2018 01:58:02 GMT
CMD ["node"]
# Thu, 07 Jun 2018 00:32:10 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 07 Jun 2018 00:32:11 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Jun 2018 00:32:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 07 Jun 2018 00:32:14 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 07 Jun 2018 00:32:15 GMT
WORKDIR /usr/src/ghost
# Thu, 07 Jun 2018 00:32:15 GMT
ENV GHOST_VERSION=0.11.13
# Thu, 07 Jun 2018 00:33:36 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 07 Jun 2018 00:33:36 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 07 Jun 2018 00:33:37 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 07 Jun 2018 00:33:37 GMT
VOLUME [/var/lib/ghost]
# Thu, 07 Jun 2018 00:33:38 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 07 Jun 2018 00:33:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 00:33:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 00:33:39 GMT
EXPOSE 2368/tcp
# Thu, 07 Jun 2018 00:33:39 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77cfa1fc62778ca7f3294c941c2688b1cbe18995a0d41bf208a7a3cbe52adc8`  
		Last Modified: Wed, 06 Jun 2018 02:10:19 GMT  
		Size: 4.4 KB (4403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e2482667912dca0b5544a7453d966463433dcbdd3716ed8ade5d76a476b235`  
		Last Modified: Wed, 06 Jun 2018 02:10:19 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a5a1306ee826d1b529164dbf70e9c62a0a4ea0ed13ffd1599c360a35066a0a`  
		Last Modified: Wed, 06 Jun 2018 02:15:25 GMT  
		Size: 31.3 MB (31337410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b1d036107317d354d58d252eb768b0997435ac23f1619e93cce2363e949b3d`  
		Last Modified: Wed, 06 Jun 2018 02:15:14 GMT  
		Size: 1.1 MB (1066212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c2cee4543045d7364df775edbe379fc837dd99be99028fc07957fa30320756`  
		Last Modified: Thu, 07 Jun 2018 00:37:33 GMT  
		Size: 4.5 KB (4463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a0d1780de7dca4858ffd6b36685e169e70d4c9f84093cf73e04415e7e48a67`  
		Last Modified: Thu, 07 Jun 2018 00:37:33 GMT  
		Size: 500.7 KB (500673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c801cc64513f39152dce25d60afa6718e977fd41e47073bfcf4d900723b96bdc`  
		Last Modified: Thu, 07 Jun 2018 00:37:32 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af079a4c4c983bfc00758ad4fd2b3025f425f13ecda0a4afc51eff42051b6f72`  
		Last Modified: Thu, 07 Jun 2018 00:37:38 GMT  
		Size: 26.3 MB (26342685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e769acad28a96204834d44fa17753fa0466b9094dc8f229de0442659451141`  
		Last Modified: Thu, 07 Jun 2018 00:37:31 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:122c19bd5b2cfd3b9123bee4b3a7175e080f2db91c39e5d6ddb25fe0edd3f428`  
		Last Modified: Thu, 07 Jun 2018 00:37:31 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647478bddecdd773757b34f97e9721316194df82529f430e69f4b32aa27ffec6`  
		Last Modified: Thu, 07 Jun 2018 00:37:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:b3e6ea292dc94f50f0c38190b13786c70906ea5a0736f6aebd3757b0ac7b2666
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.4 MB (92400606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd6986c82695d780ec2a70dff3d364db9626c17a008e556a1692fcbdef45784b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Fri, 25 May 2018 09:21:00 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 09:21:04 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 10:12:24 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 10:13:26 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 10:13:27 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 10:13:33 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 10:13:34 GMT
CMD ["node"]
# Fri, 25 May 2018 19:18:08 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 25 May 2018 19:18:09 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 19:18:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 19:18:13 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 25 May 2018 19:18:14 GMT
WORKDIR /usr/src/ghost
# Fri, 25 May 2018 19:18:15 GMT
ENV GHOST_VERSION=0.11.13
# Fri, 25 May 2018 19:23:25 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 25 May 2018 19:23:27 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 25 May 2018 19:23:29 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 25 May 2018 19:23:30 GMT
VOLUME [/var/lib/ghost]
# Fri, 25 May 2018 19:23:31 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 25 May 2018 19:23:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 25 May 2018 19:23:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 19:23:35 GMT
EXPOSE 2368/tcp
# Fri, 25 May 2018 19:23:36 GMT
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
	-	`sha256:3fafb9ca27d2582ee40910d7c43d874441ec72cd6ec44741516a686975b50a03`  
		Last Modified: Fri, 25 May 2018 11:08:28 GMT  
		Size: 117.6 KB (117619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4df267a6028ffba0ef5bcbd9a6b55104cfe43ba31241d3a2721f35182ef92646`  
		Last Modified: Fri, 25 May 2018 11:17:23 GMT  
		Size: 30.8 MB (30795207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c48d86e753831f464d7a54a00a9bae3d76b58dbc6b29d5e301b53290169d92`  
		Last Modified: Fri, 25 May 2018 11:17:12 GMT  
		Size: 1.1 MB (1066216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd1265049b851dde9c6a1f7a2873cb45699ec70c63519f13e06412532c09eb8`  
		Last Modified: Fri, 25 May 2018 19:25:25 GMT  
		Size: 4.5 KB (4476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542fab1b4c0b0da2884d4de74465c9b98a78f826486546e6cf3eedebcde2e135`  
		Last Modified: Fri, 25 May 2018 19:25:25 GMT  
		Size: 468.7 KB (468696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba8be5e96abf7bdbc0038203494c7cf997b81fc6383f690df0a56f37242cf09`  
		Last Modified: Fri, 25 May 2018 19:25:23 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69804b3928933cdfae03187bacdccd2eab27e87b5ce7a068883656eea3b6d50b`  
		Last Modified: Fri, 25 May 2018 19:25:41 GMT  
		Size: 32.4 MB (32448277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd408d1062d886e013c0f3d8f9ab33fb3c5608b2ade44609165635c212d14580`  
		Last Modified: Fri, 25 May 2018 19:25:23 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed17fa9b791ef336661dcfff21b907dda963c8450d43f3da1ef2076edaa80a5`  
		Last Modified: Fri, 25 May 2018 19:25:23 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e142e6e30759f37a2d000760535816e0c1385529e433ab6d489c0ab5eb77e2cc`  
		Last Modified: Fri, 25 May 2018 19:25:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; 386

```console
$ docker pull ghost@sha256:2dd8ebd70f3cc099227fb2841e85ce26e392ab43c15f484f8fc72d3bc0269c48
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.7 MB (97665099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f21e4b6e68741d6d5829c5ee743fc841f7730358a7761e504b23999719355404`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Thu, 31 May 2018 09:51:37 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 31 May 2018 09:51:38 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Thu, 31 May 2018 10:03:36 GMT
ENV NODE_VERSION=6.14.2
# Thu, 31 May 2018 10:04:58 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 31 May 2018 10:04:59 GMT
ENV YARN_VERSION=1.6.0
# Thu, 31 May 2018 10:05:03 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 31 May 2018 10:05:03 GMT
CMD ["node"]
# Thu, 31 May 2018 15:38:20 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 31 May 2018 15:38:20 GMT
ENV GOSU_VERSION=1.10
# Thu, 31 May 2018 15:38:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 31 May 2018 15:38:34 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 31 May 2018 15:38:35 GMT
WORKDIR /usr/src/ghost
# Thu, 31 May 2018 15:38:35 GMT
ENV GHOST_VERSION=0.11.13
# Thu, 31 May 2018 15:42:31 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 31 May 2018 15:42:32 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 31 May 2018 15:42:33 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 31 May 2018 15:42:33 GMT
VOLUME [/var/lib/ghost]
# Thu, 31 May 2018 15:42:33 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 31 May 2018 15:42:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 31 May 2018 15:42:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 May 2018 15:42:34 GMT
EXPOSE 2368/tcp
# Thu, 31 May 2018 15:42:35 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be50895ebdd74a4fc305468004471d00b47cbac985c7b89d912d8693889ea7d1`  
		Last Modified: Thu, 31 May 2018 10:18:31 GMT  
		Size: 4.4 KB (4387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1c7fd7e0bca01b90df154950ea53aac4fbabc9d8b62a21b6adb534a67296074`  
		Last Modified: Thu, 31 May 2018 10:18:31 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193725372179d54cd209f2df3fe6329b092c1812a5a3dc6328ded6e39b62742d`  
		Last Modified: Thu, 31 May 2018 10:23:27 GMT  
		Size: 33.2 MB (33189611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0abf0672e6a54ad3f73d47f8de3edaa6d086d81bc64603deba84170c1d4ba5`  
		Last Modified: Thu, 31 May 2018 10:23:11 GMT  
		Size: 1.1 MB (1066216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0ceb927c2b061b971f2976e93f6b10f13c8608e6f7d4a7ba336b5255aff62d`  
		Last Modified: Thu, 31 May 2018 15:50:21 GMT  
		Size: 4.4 KB (4447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa1214f4ed92204395d3b99ee333d1b429f535cbb08db7a1623a2a89ceff291`  
		Last Modified: Thu, 31 May 2018 15:50:25 GMT  
		Size: 480.6 KB (480572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:509686920cf319c667dea1c4fbb7986656cf2c4261c7a8f94835035660bbaded`  
		Last Modified: Thu, 31 May 2018 15:50:14 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1237d17013e622c36567edc50b595617d45fc29ddc8fd8604d45bea501a02f`  
		Last Modified: Thu, 31 May 2018 15:52:04 GMT  
		Size: 32.5 MB (32522478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9609a116d3f3443f6fb64f85a1dc7467f7502f60e320222d6104c2e85fa38f30`  
		Last Modified: Thu, 31 May 2018 15:50:15 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9182dac4817caad4a597f5b35ae64e712c3a193bf6f53909e91c65e8a92ed25`  
		Last Modified: Thu, 31 May 2018 15:50:15 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e54f2f82f0a45200533e81c6a9ebf6e727ce6964cceaea66746e0f72adceaf`  
		Last Modified: Thu, 31 May 2018 15:50:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; ppc64le

```console
$ docker pull ghost@sha256:ccbfa7fe85d49d9ba7c2dfa3d60c7a51220a7a0c08a58c582c1112b484cae638
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.9 MB (94935885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca7747cdfe443eb30aab66d2abb4cdd65144f3508178cea3b775febd23fa609e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 08:18:08 GMT
ADD file:cc51ef60d7cb3b70c82127b8721de1b99378a9d4fc246dffa2ef5ffa2d9ab805 in / 
# Sat, 28 Apr 2018 08:18:09 GMT
CMD ["bash"]
# Fri, 25 May 2018 08:32:49 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 08:32:53 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 08:48:52 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 08:50:40 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 08:50:43 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 08:50:49 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 08:50:50 GMT
CMD ["node"]
# Fri, 25 May 2018 09:55:52 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 25 May 2018 09:55:52 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 09:55:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 09:55:58 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 25 May 2018 09:55:59 GMT
WORKDIR /usr/src/ghost
# Fri, 25 May 2018 09:56:00 GMT
ENV GHOST_VERSION=0.11.13
# Fri, 25 May 2018 10:01:25 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 25 May 2018 10:01:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 25 May 2018 10:01:46 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 25 May 2018 10:01:59 GMT
VOLUME [/var/lib/ghost]
# Fri, 25 May 2018 10:01:59 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 25 May 2018 10:02:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 25 May 2018 10:02:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 10:02:05 GMT
EXPOSE 2368/tcp
# Fri, 25 May 2018 10:02:06 GMT
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
	-	`sha256:db919f8ae8ffa4343de2c13a34f5e6bc57b7b4ae820d141c76627bea943cde66`  
		Last Modified: Fri, 25 May 2018 09:06:11 GMT  
		Size: 117.6 KB (117643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e543bc0bae0d2ab1b0edc8a3fd714099e23e7dae64d909c7363e276f5f3aac`  
		Last Modified: Fri, 25 May 2018 09:12:32 GMT  
		Size: 31.0 MB (31034874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b5d1420c5536397987ac94e3d81fc276cfea3e1f9e15ec7e911c05a3a495cd`  
		Last Modified: Fri, 25 May 2018 09:12:23 GMT  
		Size: 1.1 MB (1066230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b446a845a887abbd8bb21c2ce59f39c0aa370771a7eaec84cb32d2a5a4660c`  
		Last Modified: Fri, 25 May 2018 10:03:38 GMT  
		Size: 4.5 KB (4476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6678cfd7b58167021a1a8877f635b2eb35b941fea31a881b3226fa8a3bed688`  
		Last Modified: Fri, 25 May 2018 10:03:38 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a316b56662018ab47a5839a522497fb36213af84518f86f430ec7db63976adf7`  
		Last Modified: Fri, 25 May 2018 10:03:35 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8646ed67b4896bbd52417fd59fabfdbb70562c60a502805332a5499ef2b40d`  
		Last Modified: Fri, 25 May 2018 10:03:47 GMT  
		Size: 32.9 MB (32919863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d88fccacc12acd4624e86154340eee5d19f80e66f8eb53496b993c2d50e49f`  
		Last Modified: Fri, 25 May 2018 10:03:36 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1788d639ac772f5f71e121c0221dce2d83768dca5cac0a7d734c61268bfa6e1`  
		Last Modified: Fri, 25 May 2018 10:03:35 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddfbf5a9f1f852b268eca7b25b1b0511286a3e33d73c641f79aafbef326117c8`  
		Last Modified: Fri, 25 May 2018 10:03:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; s390x

```console
$ docker pull ghost@sha256:59fd6d14b0d6cba37d6b0cb8cfd1d27888b898a0b053ac38fc6fefc1ccf7f8d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96624117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74dbcc645d1b59609c953eb3346fbe77dbd54191c366c4fec2cb1d2713aa91ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:53 GMT
ADD file:7c773d50957d6184975f5b22ef61757cd979893af5c77cdfef46dd28d8fc0296 in / 
# Sat, 28 Apr 2018 11:42:55 GMT
CMD ["bash"]
# Fri, 25 May 2018 12:27:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 12:27:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 12:58:07 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 12:58:26 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 12:58:27 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 12:58:29 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 12:58:29 GMT
CMD ["node"]
# Fri, 25 May 2018 13:38:39 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 25 May 2018 13:38:39 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 13:38:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 13:38:41 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 25 May 2018 13:38:41 GMT
WORKDIR /usr/src/ghost
# Fri, 25 May 2018 13:38:42 GMT
ENV GHOST_VERSION=0.11.13
# Fri, 25 May 2018 13:40:10 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 25 May 2018 13:40:11 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 25 May 2018 13:40:12 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 25 May 2018 13:40:12 GMT
VOLUME [/var/lib/ghost]
# Fri, 25 May 2018 13:40:12 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 25 May 2018 13:40:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 25 May 2018 13:40:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 13:40:13 GMT
EXPOSE 2368/tcp
# Fri, 25 May 2018 13:40:14 GMT
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
	-	`sha256:90f987b1e452122d69591a7ad4e1777f6398f71f6898abb7a0af5d8f834e99ce`  
		Last Modified: Fri, 25 May 2018 13:12:17 GMT  
		Size: 117.6 KB (117611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5499a8ebec846942baf6ca7922f6acbf1075c2956ab953243e2e96ed9d25293`  
		Last Modified: Fri, 25 May 2018 13:17:13 GMT  
		Size: 31.7 MB (31679303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89722c717ab8a51082112a4428a1e0d636445024eb95e2308476fa1f8902e5ac`  
		Last Modified: Fri, 25 May 2018 13:17:07 GMT  
		Size: 1.1 MB (1066213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbfb20531555ee1399333e082c58462c0d0df25b633da3ee343a304471d54eb`  
		Last Modified: Fri, 25 May 2018 13:41:51 GMT  
		Size: 4.5 KB (4456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d9711ded84e4d34c4706b9ed0e78ca2b17dc55dae5106d895fd9b62682436b9`  
		Last Modified: Fri, 25 May 2018 13:41:51 GMT  
		Size: 486.8 KB (486822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32c674e3b5de11e00d4b8477625a4d3393ba125752b2c7495a91a54bd6aa072`  
		Last Modified: Fri, 25 May 2018 13:41:49 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c35c2e1cec8f61fe44c3697cbde0d25f90febd35aabc644a62dfc7a26fd15e`  
		Last Modified: Fri, 25 May 2018 13:41:57 GMT  
		Size: 33.0 MB (32955892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c48b91a0516b15d907bb653603616dc6c2fd8f138cfd282dd7ffd9dbc8f2301`  
		Last Modified: Fri, 25 May 2018 13:41:49 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563d1bd6cf2699bb87e03ca4bf600e1cd289491d0ff9497fcea7ad6f6c851711`  
		Last Modified: Fri, 25 May 2018 13:41:49 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2793058ce021cc57d26d9cc3d9ba49cfa9a0f4e273592ffc2c6eb3f463988565`  
		Last Modified: Fri, 25 May 2018 13:41:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11`

```console
$ docker pull ghost@sha256:060e3b805f9acdefa7fbc65b414b0e256e8d388df77bb4a888cc7ab560de6de7
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
$ docker pull ghost@sha256:8a2e3bd255681c4f1187c615a9033936cf3275ce9c72f940bfb0d2b737964c4c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.5 MB (89501871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73179a71b01ca2c7849c64a7cd77e7e1d501b76773075d15342a496dc2a7037c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 01:40:13 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 06 Jun 2018 01:40:16 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Wed, 06 Jun 2018 01:56:57 GMT
ENV NODE_VERSION=6.14.2
# Wed, 06 Jun 2018 01:57:56 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Jun 2018 01:57:57 GMT
ENV YARN_VERSION=1.6.0
# Wed, 06 Jun 2018 01:58:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Jun 2018 01:58:02 GMT
CMD ["node"]
# Thu, 07 Jun 2018 00:32:10 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 07 Jun 2018 00:32:11 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Jun 2018 00:32:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 07 Jun 2018 00:32:14 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 07 Jun 2018 00:32:15 GMT
WORKDIR /usr/src/ghost
# Thu, 07 Jun 2018 00:32:15 GMT
ENV GHOST_VERSION=0.11.13
# Thu, 07 Jun 2018 00:33:36 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 07 Jun 2018 00:33:36 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 07 Jun 2018 00:33:37 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 07 Jun 2018 00:33:37 GMT
VOLUME [/var/lib/ghost]
# Thu, 07 Jun 2018 00:33:38 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 07 Jun 2018 00:33:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 00:33:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 00:33:39 GMT
EXPOSE 2368/tcp
# Thu, 07 Jun 2018 00:33:39 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77cfa1fc62778ca7f3294c941c2688b1cbe18995a0d41bf208a7a3cbe52adc8`  
		Last Modified: Wed, 06 Jun 2018 02:10:19 GMT  
		Size: 4.4 KB (4403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e2482667912dca0b5544a7453d966463433dcbdd3716ed8ade5d76a476b235`  
		Last Modified: Wed, 06 Jun 2018 02:10:19 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a5a1306ee826d1b529164dbf70e9c62a0a4ea0ed13ffd1599c360a35066a0a`  
		Last Modified: Wed, 06 Jun 2018 02:15:25 GMT  
		Size: 31.3 MB (31337410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b1d036107317d354d58d252eb768b0997435ac23f1619e93cce2363e949b3d`  
		Last Modified: Wed, 06 Jun 2018 02:15:14 GMT  
		Size: 1.1 MB (1066212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c2cee4543045d7364df775edbe379fc837dd99be99028fc07957fa30320756`  
		Last Modified: Thu, 07 Jun 2018 00:37:33 GMT  
		Size: 4.5 KB (4463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a0d1780de7dca4858ffd6b36685e169e70d4c9f84093cf73e04415e7e48a67`  
		Last Modified: Thu, 07 Jun 2018 00:37:33 GMT  
		Size: 500.7 KB (500673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c801cc64513f39152dce25d60afa6718e977fd41e47073bfcf4d900723b96bdc`  
		Last Modified: Thu, 07 Jun 2018 00:37:32 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af079a4c4c983bfc00758ad4fd2b3025f425f13ecda0a4afc51eff42051b6f72`  
		Last Modified: Thu, 07 Jun 2018 00:37:38 GMT  
		Size: 26.3 MB (26342685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e769acad28a96204834d44fa17753fa0466b9094dc8f229de0442659451141`  
		Last Modified: Thu, 07 Jun 2018 00:37:31 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:122c19bd5b2cfd3b9123bee4b3a7175e080f2db91c39e5d6ddb25fe0edd3f428`  
		Last Modified: Thu, 07 Jun 2018 00:37:31 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647478bddecdd773757b34f97e9721316194df82529f430e69f4b32aa27ffec6`  
		Last Modified: Thu, 07 Jun 2018 00:37:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:b3e6ea292dc94f50f0c38190b13786c70906ea5a0736f6aebd3757b0ac7b2666
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.4 MB (92400606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd6986c82695d780ec2a70dff3d364db9626c17a008e556a1692fcbdef45784b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Fri, 25 May 2018 09:21:00 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 09:21:04 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 10:12:24 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 10:13:26 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 10:13:27 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 10:13:33 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 10:13:34 GMT
CMD ["node"]
# Fri, 25 May 2018 19:18:08 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 25 May 2018 19:18:09 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 19:18:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 19:18:13 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 25 May 2018 19:18:14 GMT
WORKDIR /usr/src/ghost
# Fri, 25 May 2018 19:18:15 GMT
ENV GHOST_VERSION=0.11.13
# Fri, 25 May 2018 19:23:25 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 25 May 2018 19:23:27 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 25 May 2018 19:23:29 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 25 May 2018 19:23:30 GMT
VOLUME [/var/lib/ghost]
# Fri, 25 May 2018 19:23:31 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 25 May 2018 19:23:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 25 May 2018 19:23:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 19:23:35 GMT
EXPOSE 2368/tcp
# Fri, 25 May 2018 19:23:36 GMT
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
	-	`sha256:3fafb9ca27d2582ee40910d7c43d874441ec72cd6ec44741516a686975b50a03`  
		Last Modified: Fri, 25 May 2018 11:08:28 GMT  
		Size: 117.6 KB (117619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4df267a6028ffba0ef5bcbd9a6b55104cfe43ba31241d3a2721f35182ef92646`  
		Last Modified: Fri, 25 May 2018 11:17:23 GMT  
		Size: 30.8 MB (30795207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c48d86e753831f464d7a54a00a9bae3d76b58dbc6b29d5e301b53290169d92`  
		Last Modified: Fri, 25 May 2018 11:17:12 GMT  
		Size: 1.1 MB (1066216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd1265049b851dde9c6a1f7a2873cb45699ec70c63519f13e06412532c09eb8`  
		Last Modified: Fri, 25 May 2018 19:25:25 GMT  
		Size: 4.5 KB (4476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542fab1b4c0b0da2884d4de74465c9b98a78f826486546e6cf3eedebcde2e135`  
		Last Modified: Fri, 25 May 2018 19:25:25 GMT  
		Size: 468.7 KB (468696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba8be5e96abf7bdbc0038203494c7cf997b81fc6383f690df0a56f37242cf09`  
		Last Modified: Fri, 25 May 2018 19:25:23 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69804b3928933cdfae03187bacdccd2eab27e87b5ce7a068883656eea3b6d50b`  
		Last Modified: Fri, 25 May 2018 19:25:41 GMT  
		Size: 32.4 MB (32448277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd408d1062d886e013c0f3d8f9ab33fb3c5608b2ade44609165635c212d14580`  
		Last Modified: Fri, 25 May 2018 19:25:23 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed17fa9b791ef336661dcfff21b907dda963c8450d43f3da1ef2076edaa80a5`  
		Last Modified: Fri, 25 May 2018 19:25:23 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e142e6e30759f37a2d000760535816e0c1385529e433ab6d489c0ab5eb77e2cc`  
		Last Modified: Fri, 25 May 2018 19:25:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; 386

```console
$ docker pull ghost@sha256:2dd8ebd70f3cc099227fb2841e85ce26e392ab43c15f484f8fc72d3bc0269c48
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.7 MB (97665099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f21e4b6e68741d6d5829c5ee743fc841f7730358a7761e504b23999719355404`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Thu, 31 May 2018 09:51:37 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 31 May 2018 09:51:38 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Thu, 31 May 2018 10:03:36 GMT
ENV NODE_VERSION=6.14.2
# Thu, 31 May 2018 10:04:58 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 31 May 2018 10:04:59 GMT
ENV YARN_VERSION=1.6.0
# Thu, 31 May 2018 10:05:03 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 31 May 2018 10:05:03 GMT
CMD ["node"]
# Thu, 31 May 2018 15:38:20 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 31 May 2018 15:38:20 GMT
ENV GOSU_VERSION=1.10
# Thu, 31 May 2018 15:38:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 31 May 2018 15:38:34 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 31 May 2018 15:38:35 GMT
WORKDIR /usr/src/ghost
# Thu, 31 May 2018 15:38:35 GMT
ENV GHOST_VERSION=0.11.13
# Thu, 31 May 2018 15:42:31 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 31 May 2018 15:42:32 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 31 May 2018 15:42:33 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 31 May 2018 15:42:33 GMT
VOLUME [/var/lib/ghost]
# Thu, 31 May 2018 15:42:33 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 31 May 2018 15:42:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 31 May 2018 15:42:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 May 2018 15:42:34 GMT
EXPOSE 2368/tcp
# Thu, 31 May 2018 15:42:35 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be50895ebdd74a4fc305468004471d00b47cbac985c7b89d912d8693889ea7d1`  
		Last Modified: Thu, 31 May 2018 10:18:31 GMT  
		Size: 4.4 KB (4387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1c7fd7e0bca01b90df154950ea53aac4fbabc9d8b62a21b6adb534a67296074`  
		Last Modified: Thu, 31 May 2018 10:18:31 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193725372179d54cd209f2df3fe6329b092c1812a5a3dc6328ded6e39b62742d`  
		Last Modified: Thu, 31 May 2018 10:23:27 GMT  
		Size: 33.2 MB (33189611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0abf0672e6a54ad3f73d47f8de3edaa6d086d81bc64603deba84170c1d4ba5`  
		Last Modified: Thu, 31 May 2018 10:23:11 GMT  
		Size: 1.1 MB (1066216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0ceb927c2b061b971f2976e93f6b10f13c8608e6f7d4a7ba336b5255aff62d`  
		Last Modified: Thu, 31 May 2018 15:50:21 GMT  
		Size: 4.4 KB (4447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa1214f4ed92204395d3b99ee333d1b429f535cbb08db7a1623a2a89ceff291`  
		Last Modified: Thu, 31 May 2018 15:50:25 GMT  
		Size: 480.6 KB (480572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:509686920cf319c667dea1c4fbb7986656cf2c4261c7a8f94835035660bbaded`  
		Last Modified: Thu, 31 May 2018 15:50:14 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1237d17013e622c36567edc50b595617d45fc29ddc8fd8604d45bea501a02f`  
		Last Modified: Thu, 31 May 2018 15:52:04 GMT  
		Size: 32.5 MB (32522478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9609a116d3f3443f6fb64f85a1dc7467f7502f60e320222d6104c2e85fa38f30`  
		Last Modified: Thu, 31 May 2018 15:50:15 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9182dac4817caad4a597f5b35ae64e712c3a193bf6f53909e91c65e8a92ed25`  
		Last Modified: Thu, 31 May 2018 15:50:15 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e54f2f82f0a45200533e81c6a9ebf6e727ce6964cceaea66746e0f72adceaf`  
		Last Modified: Thu, 31 May 2018 15:50:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; ppc64le

```console
$ docker pull ghost@sha256:ccbfa7fe85d49d9ba7c2dfa3d60c7a51220a7a0c08a58c582c1112b484cae638
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.9 MB (94935885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca7747cdfe443eb30aab66d2abb4cdd65144f3508178cea3b775febd23fa609e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 08:18:08 GMT
ADD file:cc51ef60d7cb3b70c82127b8721de1b99378a9d4fc246dffa2ef5ffa2d9ab805 in / 
# Sat, 28 Apr 2018 08:18:09 GMT
CMD ["bash"]
# Fri, 25 May 2018 08:32:49 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 08:32:53 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 08:48:52 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 08:50:40 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 08:50:43 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 08:50:49 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 08:50:50 GMT
CMD ["node"]
# Fri, 25 May 2018 09:55:52 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 25 May 2018 09:55:52 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 09:55:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 09:55:58 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 25 May 2018 09:55:59 GMT
WORKDIR /usr/src/ghost
# Fri, 25 May 2018 09:56:00 GMT
ENV GHOST_VERSION=0.11.13
# Fri, 25 May 2018 10:01:25 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 25 May 2018 10:01:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 25 May 2018 10:01:46 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 25 May 2018 10:01:59 GMT
VOLUME [/var/lib/ghost]
# Fri, 25 May 2018 10:01:59 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 25 May 2018 10:02:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 25 May 2018 10:02:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 10:02:05 GMT
EXPOSE 2368/tcp
# Fri, 25 May 2018 10:02:06 GMT
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
	-	`sha256:db919f8ae8ffa4343de2c13a34f5e6bc57b7b4ae820d141c76627bea943cde66`  
		Last Modified: Fri, 25 May 2018 09:06:11 GMT  
		Size: 117.6 KB (117643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e543bc0bae0d2ab1b0edc8a3fd714099e23e7dae64d909c7363e276f5f3aac`  
		Last Modified: Fri, 25 May 2018 09:12:32 GMT  
		Size: 31.0 MB (31034874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b5d1420c5536397987ac94e3d81fc276cfea3e1f9e15ec7e911c05a3a495cd`  
		Last Modified: Fri, 25 May 2018 09:12:23 GMT  
		Size: 1.1 MB (1066230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b446a845a887abbd8bb21c2ce59f39c0aa370771a7eaec84cb32d2a5a4660c`  
		Last Modified: Fri, 25 May 2018 10:03:38 GMT  
		Size: 4.5 KB (4476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6678cfd7b58167021a1a8877f635b2eb35b941fea31a881b3226fa8a3bed688`  
		Last Modified: Fri, 25 May 2018 10:03:38 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a316b56662018ab47a5839a522497fb36213af84518f86f430ec7db63976adf7`  
		Last Modified: Fri, 25 May 2018 10:03:35 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8646ed67b4896bbd52417fd59fabfdbb70562c60a502805332a5499ef2b40d`  
		Last Modified: Fri, 25 May 2018 10:03:47 GMT  
		Size: 32.9 MB (32919863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d88fccacc12acd4624e86154340eee5d19f80e66f8eb53496b993c2d50e49f`  
		Last Modified: Fri, 25 May 2018 10:03:36 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1788d639ac772f5f71e121c0221dce2d83768dca5cac0a7d734c61268bfa6e1`  
		Last Modified: Fri, 25 May 2018 10:03:35 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddfbf5a9f1f852b268eca7b25b1b0511286a3e33d73c641f79aafbef326117c8`  
		Last Modified: Fri, 25 May 2018 10:03:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; s390x

```console
$ docker pull ghost@sha256:59fd6d14b0d6cba37d6b0cb8cfd1d27888b898a0b053ac38fc6fefc1ccf7f8d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96624117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74dbcc645d1b59609c953eb3346fbe77dbd54191c366c4fec2cb1d2713aa91ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:53 GMT
ADD file:7c773d50957d6184975f5b22ef61757cd979893af5c77cdfef46dd28d8fc0296 in / 
# Sat, 28 Apr 2018 11:42:55 GMT
CMD ["bash"]
# Fri, 25 May 2018 12:27:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 12:27:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 12:58:07 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 12:58:26 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 12:58:27 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 12:58:29 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 12:58:29 GMT
CMD ["node"]
# Fri, 25 May 2018 13:38:39 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 25 May 2018 13:38:39 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 13:38:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 13:38:41 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 25 May 2018 13:38:41 GMT
WORKDIR /usr/src/ghost
# Fri, 25 May 2018 13:38:42 GMT
ENV GHOST_VERSION=0.11.13
# Fri, 25 May 2018 13:40:10 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 25 May 2018 13:40:11 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 25 May 2018 13:40:12 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 25 May 2018 13:40:12 GMT
VOLUME [/var/lib/ghost]
# Fri, 25 May 2018 13:40:12 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 25 May 2018 13:40:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 25 May 2018 13:40:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 13:40:13 GMT
EXPOSE 2368/tcp
# Fri, 25 May 2018 13:40:14 GMT
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
	-	`sha256:90f987b1e452122d69591a7ad4e1777f6398f71f6898abb7a0af5d8f834e99ce`  
		Last Modified: Fri, 25 May 2018 13:12:17 GMT  
		Size: 117.6 KB (117611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5499a8ebec846942baf6ca7922f6acbf1075c2956ab953243e2e96ed9d25293`  
		Last Modified: Fri, 25 May 2018 13:17:13 GMT  
		Size: 31.7 MB (31679303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89722c717ab8a51082112a4428a1e0d636445024eb95e2308476fa1f8902e5ac`  
		Last Modified: Fri, 25 May 2018 13:17:07 GMT  
		Size: 1.1 MB (1066213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbfb20531555ee1399333e082c58462c0d0df25b633da3ee343a304471d54eb`  
		Last Modified: Fri, 25 May 2018 13:41:51 GMT  
		Size: 4.5 KB (4456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d9711ded84e4d34c4706b9ed0e78ca2b17dc55dae5106d895fd9b62682436b9`  
		Last Modified: Fri, 25 May 2018 13:41:51 GMT  
		Size: 486.8 KB (486822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32c674e3b5de11e00d4b8477625a4d3393ba125752b2c7495a91a54bd6aa072`  
		Last Modified: Fri, 25 May 2018 13:41:49 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c35c2e1cec8f61fe44c3697cbde0d25f90febd35aabc644a62dfc7a26fd15e`  
		Last Modified: Fri, 25 May 2018 13:41:57 GMT  
		Size: 33.0 MB (32955892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c48b91a0516b15d907bb653603616dc6c2fd8f138cfd282dd7ffd9dbc8f2301`  
		Last Modified: Fri, 25 May 2018 13:41:49 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563d1bd6cf2699bb87e03ca4bf600e1cd289491d0ff9497fcea7ad6f6c851711`  
		Last Modified: Fri, 25 May 2018 13:41:49 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2793058ce021cc57d26d9cc3d9ba49cfa9a0f4e273592ffc2c6eb3f463988565`  
		Last Modified: Fri, 25 May 2018 13:41:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.13`

```console
$ docker pull ghost@sha256:060e3b805f9acdefa7fbc65b414b0e256e8d388df77bb4a888cc7ab560de6de7
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
$ docker pull ghost@sha256:8a2e3bd255681c4f1187c615a9033936cf3275ce9c72f940bfb0d2b737964c4c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.5 MB (89501871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73179a71b01ca2c7849c64a7cd77e7e1d501b76773075d15342a496dc2a7037c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 01:40:13 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 06 Jun 2018 01:40:16 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Wed, 06 Jun 2018 01:56:57 GMT
ENV NODE_VERSION=6.14.2
# Wed, 06 Jun 2018 01:57:56 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Jun 2018 01:57:57 GMT
ENV YARN_VERSION=1.6.0
# Wed, 06 Jun 2018 01:58:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Jun 2018 01:58:02 GMT
CMD ["node"]
# Thu, 07 Jun 2018 00:32:10 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 07 Jun 2018 00:32:11 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Jun 2018 00:32:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 07 Jun 2018 00:32:14 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 07 Jun 2018 00:32:15 GMT
WORKDIR /usr/src/ghost
# Thu, 07 Jun 2018 00:32:15 GMT
ENV GHOST_VERSION=0.11.13
# Thu, 07 Jun 2018 00:33:36 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 07 Jun 2018 00:33:36 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 07 Jun 2018 00:33:37 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 07 Jun 2018 00:33:37 GMT
VOLUME [/var/lib/ghost]
# Thu, 07 Jun 2018 00:33:38 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 07 Jun 2018 00:33:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 00:33:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 00:33:39 GMT
EXPOSE 2368/tcp
# Thu, 07 Jun 2018 00:33:39 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77cfa1fc62778ca7f3294c941c2688b1cbe18995a0d41bf208a7a3cbe52adc8`  
		Last Modified: Wed, 06 Jun 2018 02:10:19 GMT  
		Size: 4.4 KB (4403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e2482667912dca0b5544a7453d966463433dcbdd3716ed8ade5d76a476b235`  
		Last Modified: Wed, 06 Jun 2018 02:10:19 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a5a1306ee826d1b529164dbf70e9c62a0a4ea0ed13ffd1599c360a35066a0a`  
		Last Modified: Wed, 06 Jun 2018 02:15:25 GMT  
		Size: 31.3 MB (31337410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b1d036107317d354d58d252eb768b0997435ac23f1619e93cce2363e949b3d`  
		Last Modified: Wed, 06 Jun 2018 02:15:14 GMT  
		Size: 1.1 MB (1066212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c2cee4543045d7364df775edbe379fc837dd99be99028fc07957fa30320756`  
		Last Modified: Thu, 07 Jun 2018 00:37:33 GMT  
		Size: 4.5 KB (4463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a0d1780de7dca4858ffd6b36685e169e70d4c9f84093cf73e04415e7e48a67`  
		Last Modified: Thu, 07 Jun 2018 00:37:33 GMT  
		Size: 500.7 KB (500673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c801cc64513f39152dce25d60afa6718e977fd41e47073bfcf4d900723b96bdc`  
		Last Modified: Thu, 07 Jun 2018 00:37:32 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af079a4c4c983bfc00758ad4fd2b3025f425f13ecda0a4afc51eff42051b6f72`  
		Last Modified: Thu, 07 Jun 2018 00:37:38 GMT  
		Size: 26.3 MB (26342685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e769acad28a96204834d44fa17753fa0466b9094dc8f229de0442659451141`  
		Last Modified: Thu, 07 Jun 2018 00:37:31 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:122c19bd5b2cfd3b9123bee4b3a7175e080f2db91c39e5d6ddb25fe0edd3f428`  
		Last Modified: Thu, 07 Jun 2018 00:37:31 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647478bddecdd773757b34f97e9721316194df82529f430e69f4b32aa27ffec6`  
		Last Modified: Thu, 07 Jun 2018 00:37:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.13` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:b3e6ea292dc94f50f0c38190b13786c70906ea5a0736f6aebd3757b0ac7b2666
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.4 MB (92400606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd6986c82695d780ec2a70dff3d364db9626c17a008e556a1692fcbdef45784b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Fri, 25 May 2018 09:21:00 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 09:21:04 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 10:12:24 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 10:13:26 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 10:13:27 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 10:13:33 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 10:13:34 GMT
CMD ["node"]
# Fri, 25 May 2018 19:18:08 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 25 May 2018 19:18:09 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 19:18:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 19:18:13 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 25 May 2018 19:18:14 GMT
WORKDIR /usr/src/ghost
# Fri, 25 May 2018 19:18:15 GMT
ENV GHOST_VERSION=0.11.13
# Fri, 25 May 2018 19:23:25 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 25 May 2018 19:23:27 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 25 May 2018 19:23:29 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 25 May 2018 19:23:30 GMT
VOLUME [/var/lib/ghost]
# Fri, 25 May 2018 19:23:31 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 25 May 2018 19:23:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 25 May 2018 19:23:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 19:23:35 GMT
EXPOSE 2368/tcp
# Fri, 25 May 2018 19:23:36 GMT
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
	-	`sha256:3fafb9ca27d2582ee40910d7c43d874441ec72cd6ec44741516a686975b50a03`  
		Last Modified: Fri, 25 May 2018 11:08:28 GMT  
		Size: 117.6 KB (117619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4df267a6028ffba0ef5bcbd9a6b55104cfe43ba31241d3a2721f35182ef92646`  
		Last Modified: Fri, 25 May 2018 11:17:23 GMT  
		Size: 30.8 MB (30795207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c48d86e753831f464d7a54a00a9bae3d76b58dbc6b29d5e301b53290169d92`  
		Last Modified: Fri, 25 May 2018 11:17:12 GMT  
		Size: 1.1 MB (1066216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd1265049b851dde9c6a1f7a2873cb45699ec70c63519f13e06412532c09eb8`  
		Last Modified: Fri, 25 May 2018 19:25:25 GMT  
		Size: 4.5 KB (4476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542fab1b4c0b0da2884d4de74465c9b98a78f826486546e6cf3eedebcde2e135`  
		Last Modified: Fri, 25 May 2018 19:25:25 GMT  
		Size: 468.7 KB (468696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba8be5e96abf7bdbc0038203494c7cf997b81fc6383f690df0a56f37242cf09`  
		Last Modified: Fri, 25 May 2018 19:25:23 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69804b3928933cdfae03187bacdccd2eab27e87b5ce7a068883656eea3b6d50b`  
		Last Modified: Fri, 25 May 2018 19:25:41 GMT  
		Size: 32.4 MB (32448277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd408d1062d886e013c0f3d8f9ab33fb3c5608b2ade44609165635c212d14580`  
		Last Modified: Fri, 25 May 2018 19:25:23 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed17fa9b791ef336661dcfff21b907dda963c8450d43f3da1ef2076edaa80a5`  
		Last Modified: Fri, 25 May 2018 19:25:23 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e142e6e30759f37a2d000760535816e0c1385529e433ab6d489c0ab5eb77e2cc`  
		Last Modified: Fri, 25 May 2018 19:25:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.13` - linux; 386

```console
$ docker pull ghost@sha256:2dd8ebd70f3cc099227fb2841e85ce26e392ab43c15f484f8fc72d3bc0269c48
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.7 MB (97665099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f21e4b6e68741d6d5829c5ee743fc841f7730358a7761e504b23999719355404`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Thu, 31 May 2018 09:51:37 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 31 May 2018 09:51:38 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Thu, 31 May 2018 10:03:36 GMT
ENV NODE_VERSION=6.14.2
# Thu, 31 May 2018 10:04:58 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 31 May 2018 10:04:59 GMT
ENV YARN_VERSION=1.6.0
# Thu, 31 May 2018 10:05:03 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 31 May 2018 10:05:03 GMT
CMD ["node"]
# Thu, 31 May 2018 15:38:20 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 31 May 2018 15:38:20 GMT
ENV GOSU_VERSION=1.10
# Thu, 31 May 2018 15:38:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 31 May 2018 15:38:34 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 31 May 2018 15:38:35 GMT
WORKDIR /usr/src/ghost
# Thu, 31 May 2018 15:38:35 GMT
ENV GHOST_VERSION=0.11.13
# Thu, 31 May 2018 15:42:31 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 31 May 2018 15:42:32 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 31 May 2018 15:42:33 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 31 May 2018 15:42:33 GMT
VOLUME [/var/lib/ghost]
# Thu, 31 May 2018 15:42:33 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 31 May 2018 15:42:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 31 May 2018 15:42:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 May 2018 15:42:34 GMT
EXPOSE 2368/tcp
# Thu, 31 May 2018 15:42:35 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be50895ebdd74a4fc305468004471d00b47cbac985c7b89d912d8693889ea7d1`  
		Last Modified: Thu, 31 May 2018 10:18:31 GMT  
		Size: 4.4 KB (4387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1c7fd7e0bca01b90df154950ea53aac4fbabc9d8b62a21b6adb534a67296074`  
		Last Modified: Thu, 31 May 2018 10:18:31 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193725372179d54cd209f2df3fe6329b092c1812a5a3dc6328ded6e39b62742d`  
		Last Modified: Thu, 31 May 2018 10:23:27 GMT  
		Size: 33.2 MB (33189611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0abf0672e6a54ad3f73d47f8de3edaa6d086d81bc64603deba84170c1d4ba5`  
		Last Modified: Thu, 31 May 2018 10:23:11 GMT  
		Size: 1.1 MB (1066216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0ceb927c2b061b971f2976e93f6b10f13c8608e6f7d4a7ba336b5255aff62d`  
		Last Modified: Thu, 31 May 2018 15:50:21 GMT  
		Size: 4.4 KB (4447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa1214f4ed92204395d3b99ee333d1b429f535cbb08db7a1623a2a89ceff291`  
		Last Modified: Thu, 31 May 2018 15:50:25 GMT  
		Size: 480.6 KB (480572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:509686920cf319c667dea1c4fbb7986656cf2c4261c7a8f94835035660bbaded`  
		Last Modified: Thu, 31 May 2018 15:50:14 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1237d17013e622c36567edc50b595617d45fc29ddc8fd8604d45bea501a02f`  
		Last Modified: Thu, 31 May 2018 15:52:04 GMT  
		Size: 32.5 MB (32522478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9609a116d3f3443f6fb64f85a1dc7467f7502f60e320222d6104c2e85fa38f30`  
		Last Modified: Thu, 31 May 2018 15:50:15 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9182dac4817caad4a597f5b35ae64e712c3a193bf6f53909e91c65e8a92ed25`  
		Last Modified: Thu, 31 May 2018 15:50:15 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e54f2f82f0a45200533e81c6a9ebf6e727ce6964cceaea66746e0f72adceaf`  
		Last Modified: Thu, 31 May 2018 15:50:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.13` - linux; ppc64le

```console
$ docker pull ghost@sha256:ccbfa7fe85d49d9ba7c2dfa3d60c7a51220a7a0c08a58c582c1112b484cae638
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.9 MB (94935885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca7747cdfe443eb30aab66d2abb4cdd65144f3508178cea3b775febd23fa609e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 08:18:08 GMT
ADD file:cc51ef60d7cb3b70c82127b8721de1b99378a9d4fc246dffa2ef5ffa2d9ab805 in / 
# Sat, 28 Apr 2018 08:18:09 GMT
CMD ["bash"]
# Fri, 25 May 2018 08:32:49 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 08:32:53 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 08:48:52 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 08:50:40 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 08:50:43 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 08:50:49 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 08:50:50 GMT
CMD ["node"]
# Fri, 25 May 2018 09:55:52 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 25 May 2018 09:55:52 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 09:55:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 09:55:58 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 25 May 2018 09:55:59 GMT
WORKDIR /usr/src/ghost
# Fri, 25 May 2018 09:56:00 GMT
ENV GHOST_VERSION=0.11.13
# Fri, 25 May 2018 10:01:25 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 25 May 2018 10:01:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 25 May 2018 10:01:46 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 25 May 2018 10:01:59 GMT
VOLUME [/var/lib/ghost]
# Fri, 25 May 2018 10:01:59 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 25 May 2018 10:02:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 25 May 2018 10:02:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 10:02:05 GMT
EXPOSE 2368/tcp
# Fri, 25 May 2018 10:02:06 GMT
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
	-	`sha256:db919f8ae8ffa4343de2c13a34f5e6bc57b7b4ae820d141c76627bea943cde66`  
		Last Modified: Fri, 25 May 2018 09:06:11 GMT  
		Size: 117.6 KB (117643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e543bc0bae0d2ab1b0edc8a3fd714099e23e7dae64d909c7363e276f5f3aac`  
		Last Modified: Fri, 25 May 2018 09:12:32 GMT  
		Size: 31.0 MB (31034874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b5d1420c5536397987ac94e3d81fc276cfea3e1f9e15ec7e911c05a3a495cd`  
		Last Modified: Fri, 25 May 2018 09:12:23 GMT  
		Size: 1.1 MB (1066230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b446a845a887abbd8bb21c2ce59f39c0aa370771a7eaec84cb32d2a5a4660c`  
		Last Modified: Fri, 25 May 2018 10:03:38 GMT  
		Size: 4.5 KB (4476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6678cfd7b58167021a1a8877f635b2eb35b941fea31a881b3226fa8a3bed688`  
		Last Modified: Fri, 25 May 2018 10:03:38 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a316b56662018ab47a5839a522497fb36213af84518f86f430ec7db63976adf7`  
		Last Modified: Fri, 25 May 2018 10:03:35 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8646ed67b4896bbd52417fd59fabfdbb70562c60a502805332a5499ef2b40d`  
		Last Modified: Fri, 25 May 2018 10:03:47 GMT  
		Size: 32.9 MB (32919863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d88fccacc12acd4624e86154340eee5d19f80e66f8eb53496b993c2d50e49f`  
		Last Modified: Fri, 25 May 2018 10:03:36 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1788d639ac772f5f71e121c0221dce2d83768dca5cac0a7d734c61268bfa6e1`  
		Last Modified: Fri, 25 May 2018 10:03:35 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddfbf5a9f1f852b268eca7b25b1b0511286a3e33d73c641f79aafbef326117c8`  
		Last Modified: Fri, 25 May 2018 10:03:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.13` - linux; s390x

```console
$ docker pull ghost@sha256:59fd6d14b0d6cba37d6b0cb8cfd1d27888b898a0b053ac38fc6fefc1ccf7f8d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96624117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74dbcc645d1b59609c953eb3346fbe77dbd54191c366c4fec2cb1d2713aa91ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:53 GMT
ADD file:7c773d50957d6184975f5b22ef61757cd979893af5c77cdfef46dd28d8fc0296 in / 
# Sat, 28 Apr 2018 11:42:55 GMT
CMD ["bash"]
# Fri, 25 May 2018 12:27:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 12:27:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 12:58:07 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 12:58:26 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 12:58:27 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 12:58:29 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 12:58:29 GMT
CMD ["node"]
# Fri, 25 May 2018 13:38:39 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 25 May 2018 13:38:39 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 13:38:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 13:38:41 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 25 May 2018 13:38:41 GMT
WORKDIR /usr/src/ghost
# Fri, 25 May 2018 13:38:42 GMT
ENV GHOST_VERSION=0.11.13
# Fri, 25 May 2018 13:40:10 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 25 May 2018 13:40:11 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 25 May 2018 13:40:12 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 25 May 2018 13:40:12 GMT
VOLUME [/var/lib/ghost]
# Fri, 25 May 2018 13:40:12 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 25 May 2018 13:40:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 25 May 2018 13:40:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 13:40:13 GMT
EXPOSE 2368/tcp
# Fri, 25 May 2018 13:40:14 GMT
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
	-	`sha256:90f987b1e452122d69591a7ad4e1777f6398f71f6898abb7a0af5d8f834e99ce`  
		Last Modified: Fri, 25 May 2018 13:12:17 GMT  
		Size: 117.6 KB (117611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5499a8ebec846942baf6ca7922f6acbf1075c2956ab953243e2e96ed9d25293`  
		Last Modified: Fri, 25 May 2018 13:17:13 GMT  
		Size: 31.7 MB (31679303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89722c717ab8a51082112a4428a1e0d636445024eb95e2308476fa1f8902e5ac`  
		Last Modified: Fri, 25 May 2018 13:17:07 GMT  
		Size: 1.1 MB (1066213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbfb20531555ee1399333e082c58462c0d0df25b633da3ee343a304471d54eb`  
		Last Modified: Fri, 25 May 2018 13:41:51 GMT  
		Size: 4.5 KB (4456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d9711ded84e4d34c4706b9ed0e78ca2b17dc55dae5106d895fd9b62682436b9`  
		Last Modified: Fri, 25 May 2018 13:41:51 GMT  
		Size: 486.8 KB (486822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32c674e3b5de11e00d4b8477625a4d3393ba125752b2c7495a91a54bd6aa072`  
		Last Modified: Fri, 25 May 2018 13:41:49 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c35c2e1cec8f61fe44c3697cbde0d25f90febd35aabc644a62dfc7a26fd15e`  
		Last Modified: Fri, 25 May 2018 13:41:57 GMT  
		Size: 33.0 MB (32955892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c48b91a0516b15d907bb653603616dc6c2fd8f138cfd282dd7ffd9dbc8f2301`  
		Last Modified: Fri, 25 May 2018 13:41:49 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563d1bd6cf2699bb87e03ca4bf600e1cd289491d0ff9497fcea7ad6f6c851711`  
		Last Modified: Fri, 25 May 2018 13:41:49 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2793058ce021cc57d26d9cc3d9ba49cfa9a0f4e273592ffc2c6eb3f463988565`  
		Last Modified: Fri, 25 May 2018 13:41:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.13-alpine`

```console
$ docker pull ghost@sha256:d353f44be95beb000d103926c707a112a22365da48aea6435ae519ac662c07a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11.13-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:61abccb1e0de995e9c7031ef33a9f27d6c35ad95fe9528b8a1c25936417d4a1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.4 MB (46439077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aeec2b788637949846e0c021a28b51a020793b66978b5cccb7bd2151fb641a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 01:51:15 GMT
ENV NODE_VERSION=6.14.2
# Wed, 06 Jun 2018 01:56:41 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 06 Jun 2018 01:56:41 GMT
ENV YARN_VERSION=1.6.0
# Wed, 06 Jun 2018 01:56:49 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 06 Jun 2018 01:56:49 GMT
CMD ["node"]
# Thu, 07 Jun 2018 00:30:55 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 07 Jun 2018 00:33:56 GMT
RUN apk add --no-cache 		bash 		tar
# Thu, 07 Jun 2018 00:33:56 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 07 Jun 2018 00:33:56 GMT
WORKDIR /usr/src/ghost
# Thu, 07 Jun 2018 00:33:57 GMT
ENV GHOST_VERSION=0.11.13
# Thu, 07 Jun 2018 00:34:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 07 Jun 2018 00:34:42 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 07 Jun 2018 00:34:43 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 07 Jun 2018 00:34:43 GMT
VOLUME [/var/lib/ghost]
# Thu, 07 Jun 2018 00:34:44 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Thu, 07 Jun 2018 00:34:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 00:34:44 GMT
EXPOSE 2368/tcp
# Thu, 07 Jun 2018 00:34:44 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e47121b945848dbf6e6800a9e52806a46f6d7185aae5b47743e1655310ac3b`  
		Last Modified: Wed, 06 Jun 2018 02:14:34 GMT  
		Size: 15.5 MB (15513525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a05c4ca1a2431622b7e997f0c71d6ccd9e67855c627146459c53e7ddea3af4`  
		Last Modified: Wed, 06 Jun 2018 02:14:28 GMT  
		Size: 1.1 MB (1072911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df9bdc2be62e195ff1d4d9e16e102641f56591dd64988d70ded0304d6ebd5c44`  
		Last Modified: Thu, 07 Jun 2018 00:36:30 GMT  
		Size: 8.4 KB (8365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61557c9564c1450a5f0c4f3f2d4e7628ab49255a645c4d520f9d28ecc0339c50`  
		Last Modified: Thu, 07 Jun 2018 00:38:12 GMT  
		Size: 1.4 MB (1360707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365af06ec8bd10d1019f81611647647fb77bf6281d132c23f88db7e21e03d12f`  
		Last Modified: Thu, 07 Jun 2018 00:38:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0754cff781508be56910a92539db395bd9985b1c3e12a3c2babe5be91941b8bb`  
		Last Modified: Thu, 07 Jun 2018 00:38:18 GMT  
		Size: 26.1 MB (26095034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5d6e3609e23e22b8379ab31a19b176b1201d752a5e00f8514c04144e8b884f`  
		Last Modified: Thu, 07 Jun 2018 00:38:12 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc28c27524b84036abb5bb72b3d64006f113eeaffea4d4efbbb1dbfcdb9178bc`  
		Last Modified: Thu, 07 Jun 2018 00:38:12 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11-alpine`

```console
$ docker pull ghost@sha256:d353f44be95beb000d103926c707a112a22365da48aea6435ae519ac662c07a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:61abccb1e0de995e9c7031ef33a9f27d6c35ad95fe9528b8a1c25936417d4a1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.4 MB (46439077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aeec2b788637949846e0c021a28b51a020793b66978b5cccb7bd2151fb641a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 01:51:15 GMT
ENV NODE_VERSION=6.14.2
# Wed, 06 Jun 2018 01:56:41 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 06 Jun 2018 01:56:41 GMT
ENV YARN_VERSION=1.6.0
# Wed, 06 Jun 2018 01:56:49 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 06 Jun 2018 01:56:49 GMT
CMD ["node"]
# Thu, 07 Jun 2018 00:30:55 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 07 Jun 2018 00:33:56 GMT
RUN apk add --no-cache 		bash 		tar
# Thu, 07 Jun 2018 00:33:56 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 07 Jun 2018 00:33:56 GMT
WORKDIR /usr/src/ghost
# Thu, 07 Jun 2018 00:33:57 GMT
ENV GHOST_VERSION=0.11.13
# Thu, 07 Jun 2018 00:34:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 07 Jun 2018 00:34:42 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 07 Jun 2018 00:34:43 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 07 Jun 2018 00:34:43 GMT
VOLUME [/var/lib/ghost]
# Thu, 07 Jun 2018 00:34:44 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Thu, 07 Jun 2018 00:34:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 00:34:44 GMT
EXPOSE 2368/tcp
# Thu, 07 Jun 2018 00:34:44 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e47121b945848dbf6e6800a9e52806a46f6d7185aae5b47743e1655310ac3b`  
		Last Modified: Wed, 06 Jun 2018 02:14:34 GMT  
		Size: 15.5 MB (15513525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a05c4ca1a2431622b7e997f0c71d6ccd9e67855c627146459c53e7ddea3af4`  
		Last Modified: Wed, 06 Jun 2018 02:14:28 GMT  
		Size: 1.1 MB (1072911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df9bdc2be62e195ff1d4d9e16e102641f56591dd64988d70ded0304d6ebd5c44`  
		Last Modified: Thu, 07 Jun 2018 00:36:30 GMT  
		Size: 8.4 KB (8365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61557c9564c1450a5f0c4f3f2d4e7628ab49255a645c4d520f9d28ecc0339c50`  
		Last Modified: Thu, 07 Jun 2018 00:38:12 GMT  
		Size: 1.4 MB (1360707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365af06ec8bd10d1019f81611647647fb77bf6281d132c23f88db7e21e03d12f`  
		Last Modified: Thu, 07 Jun 2018 00:38:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0754cff781508be56910a92539db395bd9985b1c3e12a3c2babe5be91941b8bb`  
		Last Modified: Thu, 07 Jun 2018 00:38:18 GMT  
		Size: 26.1 MB (26095034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5d6e3609e23e22b8379ab31a19b176b1201d752a5e00f8514c04144e8b884f`  
		Last Modified: Thu, 07 Jun 2018 00:38:12 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc28c27524b84036abb5bb72b3d64006f113eeaffea4d4efbbb1dbfcdb9178bc`  
		Last Modified: Thu, 07 Jun 2018 00:38:12 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:d353f44be95beb000d103926c707a112a22365da48aea6435ae519ac662c07a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:61abccb1e0de995e9c7031ef33a9f27d6c35ad95fe9528b8a1c25936417d4a1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.4 MB (46439077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aeec2b788637949846e0c021a28b51a020793b66978b5cccb7bd2151fb641a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 01:51:15 GMT
ENV NODE_VERSION=6.14.2
# Wed, 06 Jun 2018 01:56:41 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 06 Jun 2018 01:56:41 GMT
ENV YARN_VERSION=1.6.0
# Wed, 06 Jun 2018 01:56:49 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 06 Jun 2018 01:56:49 GMT
CMD ["node"]
# Thu, 07 Jun 2018 00:30:55 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 07 Jun 2018 00:33:56 GMT
RUN apk add --no-cache 		bash 		tar
# Thu, 07 Jun 2018 00:33:56 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 07 Jun 2018 00:33:56 GMT
WORKDIR /usr/src/ghost
# Thu, 07 Jun 2018 00:33:57 GMT
ENV GHOST_VERSION=0.11.13
# Thu, 07 Jun 2018 00:34:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 07 Jun 2018 00:34:42 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 07 Jun 2018 00:34:43 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 07 Jun 2018 00:34:43 GMT
VOLUME [/var/lib/ghost]
# Thu, 07 Jun 2018 00:34:44 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Thu, 07 Jun 2018 00:34:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 00:34:44 GMT
EXPOSE 2368/tcp
# Thu, 07 Jun 2018 00:34:44 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e47121b945848dbf6e6800a9e52806a46f6d7185aae5b47743e1655310ac3b`  
		Last Modified: Wed, 06 Jun 2018 02:14:34 GMT  
		Size: 15.5 MB (15513525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a05c4ca1a2431622b7e997f0c71d6ccd9e67855c627146459c53e7ddea3af4`  
		Last Modified: Wed, 06 Jun 2018 02:14:28 GMT  
		Size: 1.1 MB (1072911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df9bdc2be62e195ff1d4d9e16e102641f56591dd64988d70ded0304d6ebd5c44`  
		Last Modified: Thu, 07 Jun 2018 00:36:30 GMT  
		Size: 8.4 KB (8365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61557c9564c1450a5f0c4f3f2d4e7628ab49255a645c4d520f9d28ecc0339c50`  
		Last Modified: Thu, 07 Jun 2018 00:38:12 GMT  
		Size: 1.4 MB (1360707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365af06ec8bd10d1019f81611647647fb77bf6281d132c23f88db7e21e03d12f`  
		Last Modified: Thu, 07 Jun 2018 00:38:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0754cff781508be56910a92539db395bd9985b1c3e12a3c2babe5be91941b8bb`  
		Last Modified: Thu, 07 Jun 2018 00:38:18 GMT  
		Size: 26.1 MB (26095034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5d6e3609e23e22b8379ab31a19b176b1201d752a5e00f8514c04144e8b884f`  
		Last Modified: Thu, 07 Jun 2018 00:38:12 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc28c27524b84036abb5bb72b3d64006f113eeaffea4d4efbbb1dbfcdb9178bc`  
		Last Modified: Thu, 07 Jun 2018 00:38:12 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1`

```console
$ docker pull ghost@sha256:6157e40813762e8657268fb665fc0aeb526da939e31d47efb1ac30950f267b24
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
$ docker pull ghost@sha256:e3d4de1229e6e4e0e36f7c5ddcfbb9389010eb166bd82413eaa1e3ad59999790
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229301642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e0c18450c7f85d79b2e2ab24ffcfc680a63c00ef0c5ce50e9c82dddd4208fb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 01:40:13 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 06 Jun 2018 01:40:16 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Wed, 06 Jun 2018 01:56:57 GMT
ENV NODE_VERSION=6.14.2
# Wed, 06 Jun 2018 01:57:56 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Jun 2018 01:57:57 GMT
ENV YARN_VERSION=1.6.0
# Wed, 06 Jun 2018 01:58:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Jun 2018 01:58:02 GMT
CMD ["node"]
# Wed, 06 Jun 2018 18:19:36 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Jun 2018 18:19:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Jun 2018 18:19:41 GMT
ENV NODE_ENV=production
# Wed, 06 Jun 2018 18:19:41 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Wed, 06 Jun 2018 18:20:18 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Jun 2018 18:20:18 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Jun 2018 18:20:19 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Jun 2018 00:19:33 GMT
ENV GHOST_VERSION=1.24.1
# Sat, 09 Jun 2018 00:20:30 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Jun 2018 00:20:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Jun 2018 00:20:51 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Jun 2018 00:20:51 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Jun 2018 00:20:51 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Jun 2018 00:20:52 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Jun 2018 00:20:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 00:20:52 GMT
EXPOSE 2368/tcp
# Sat, 09 Jun 2018 00:20:52 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77cfa1fc62778ca7f3294c941c2688b1cbe18995a0d41bf208a7a3cbe52adc8`  
		Last Modified: Wed, 06 Jun 2018 02:10:19 GMT  
		Size: 4.4 KB (4403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e2482667912dca0b5544a7453d966463433dcbdd3716ed8ade5d76a476b235`  
		Last Modified: Wed, 06 Jun 2018 02:10:19 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a5a1306ee826d1b529164dbf70e9c62a0a4ea0ed13ffd1599c360a35066a0a`  
		Last Modified: Wed, 06 Jun 2018 02:15:25 GMT  
		Size: 31.3 MB (31337410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b1d036107317d354d58d252eb768b0997435ac23f1619e93cce2363e949b3d`  
		Last Modified: Wed, 06 Jun 2018 02:15:14 GMT  
		Size: 1.1 MB (1066212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9563bdf4c9b10e7f66588a7674b111b4ae710921ed2004fa33d5c8e5237cc60`  
		Last Modified: Wed, 06 Jun 2018 18:28:10 GMT  
		Size: 500.7 KB (500674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87230e08f1adf725751f99416f03560b7caa85db11e296890bc30162904b0f78`  
		Last Modified: Wed, 06 Jun 2018 18:28:26 GMT  
		Size: 18.4 MB (18431094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a9a5a28671699bf89a30c57bd9e13738393d3c0bc59ad7f38777a8d4ad1e81`  
		Last Modified: Sat, 09 Jun 2018 00:23:04 GMT  
		Size: 140.9 MB (140854632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62edaad1eecae3a704648ff6db3084f218a4a1bfa4e93de35dfbd3fb83400769`  
		Last Modified: Sat, 09 Jun 2018 00:22:28 GMT  
		Size: 6.9 MB (6861728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0341f55a2ca989bc3735acfebb68e3d0cb4901762858ea8a130f38378b06e6`  
		Last Modified: Sat, 09 Jun 2018 00:22:22 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:aef39d8e075fd82f7a60db399efe11ec24ec1b7a12b5d46949260766d166d667
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.6 MB (229639135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1087ed4f2fb5a1a3bda615410f1c0a837a793e133c0fb9e3d1e933368b19034`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Fri, 25 May 2018 09:21:00 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 09:21:04 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 10:12:24 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 10:13:26 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 10:13:27 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 10:13:33 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 10:13:34 GMT
CMD ["node"]
# Fri, 25 May 2018 19:10:37 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 19:10:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 19:10:42 GMT
ENV NODE_ENV=production
# Wed, 06 Jun 2018 17:44:52 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Wed, 06 Jun 2018 17:46:48 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Jun 2018 17:46:51 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Jun 2018 17:46:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Jun 2018 08:46:48 GMT
ENV GHOST_VERSION=1.24.1
# Sat, 09 Jun 2018 08:48:50 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Jun 2018 08:48:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Jun 2018 08:53:25 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Jun 2018 08:53:26 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Jun 2018 08:53:27 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Jun 2018 08:53:28 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Jun 2018 08:53:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 08:53:29 GMT
EXPOSE 2368/tcp
# Sat, 09 Jun 2018 08:53:30 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:3fafb9ca27d2582ee40910d7c43d874441ec72cd6ec44741516a686975b50a03`  
		Last Modified: Fri, 25 May 2018 11:08:28 GMT  
		Size: 117.6 KB (117619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4df267a6028ffba0ef5bcbd9a6b55104cfe43ba31241d3a2721f35182ef92646`  
		Last Modified: Fri, 25 May 2018 11:17:23 GMT  
		Size: 30.8 MB (30795207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c48d86e753831f464d7a54a00a9bae3d76b58dbc6b29d5e301b53290169d92`  
		Last Modified: Fri, 25 May 2018 11:17:12 GMT  
		Size: 1.1 MB (1066216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8151996fcc4098758e2627764189eeeaed5a6f5cfb53cb9da836082752ab41b`  
		Last Modified: Fri, 25 May 2018 19:23:57 GMT  
		Size: 468.7 KB (468703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3254f10e32670237f83cf14093e3826496146b62d119f5ea3b2b51d84a588b`  
		Last Modified: Wed, 06 Jun 2018 17:58:23 GMT  
		Size: 18.4 MB (18433564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b544bbf25886f79dcebec3af909f2ed262883a528b80d8982b5f7cc870d34d`  
		Last Modified: Sat, 09 Jun 2018 08:54:45 GMT  
		Size: 136.7 MB (136748828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10780bc9027fb79c07b59b2d0d59019249d268080176e3aba02dc81c523107f9`  
		Last Modified: Sat, 09 Jun 2018 08:54:09 GMT  
		Size: 14.5 MB (14509422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c733b97a621ec119fb906b9d5128eab4826976edeaf034d7fe6e1a43d0d23730`  
		Last Modified: Sat, 09 Jun 2018 08:54:04 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; 386

```console
$ docker pull ghost@sha256:481d6904da422a247fc9c4068935ec00d4162647f63796c6bc23dbca7e027dde
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234907177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b996a0e2656e4fb6ad40c98595e8d9c6e043845a59a0fcd8747bf7db61d132e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Thu, 31 May 2018 09:51:37 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 31 May 2018 09:51:38 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Thu, 31 May 2018 10:03:36 GMT
ENV NODE_VERSION=6.14.2
# Thu, 31 May 2018 10:04:58 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 31 May 2018 10:04:59 GMT
ENV YARN_VERSION=1.6.0
# Thu, 31 May 2018 10:05:03 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 31 May 2018 10:05:03 GMT
CMD ["node"]
# Thu, 31 May 2018 15:31:21 GMT
ENV GOSU_VERSION=1.10
# Thu, 31 May 2018 15:31:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 31 May 2018 15:31:28 GMT
ENV NODE_ENV=production
# Thu, 07 Jun 2018 10:38:33 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Thu, 07 Jun 2018 10:39:09 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 07 Jun 2018 10:39:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 07 Jun 2018 10:39:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Jun 2018 10:38:37 GMT
ENV GHOST_VERSION=1.24.1
# Sat, 09 Jun 2018 10:39:44 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Jun 2018 10:39:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Jun 2018 10:43:28 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Jun 2018 10:43:29 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Jun 2018 10:43:29 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Jun 2018 10:43:29 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Jun 2018 10:43:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 10:43:30 GMT
EXPOSE 2368/tcp
# Sat, 09 Jun 2018 10:43:30 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be50895ebdd74a4fc305468004471d00b47cbac985c7b89d912d8693889ea7d1`  
		Last Modified: Thu, 31 May 2018 10:18:31 GMT  
		Size: 4.4 KB (4387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1c7fd7e0bca01b90df154950ea53aac4fbabc9d8b62a21b6adb534a67296074`  
		Last Modified: Thu, 31 May 2018 10:18:31 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193725372179d54cd209f2df3fe6329b092c1812a5a3dc6328ded6e39b62742d`  
		Last Modified: Thu, 31 May 2018 10:23:27 GMT  
		Size: 33.2 MB (33189611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0abf0672e6a54ad3f73d47f8de3edaa6d086d81bc64603deba84170c1d4ba5`  
		Last Modified: Thu, 31 May 2018 10:23:11 GMT  
		Size: 1.1 MB (1066216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24eb7c6e3d8c7dd4117a489d5700a961ec652e75e088021d74997061a4a2ee08`  
		Last Modified: Thu, 31 May 2018 15:42:54 GMT  
		Size: 480.6 KB (480573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d814c7d3eae69438be7d3184dadd9ae44b99e28ac2a4a39fb76c200248e7bf43`  
		Last Modified: Thu, 07 Jun 2018 10:44:19 GMT  
		Size: 18.4 MB (18432483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04e102a7fa887e844857d85f922c7ba4ba36b35d8cf1d8d56d03022c8e06e489`  
		Last Modified: Sat, 09 Jun 2018 10:44:42 GMT  
		Size: 136.7 MB (136747016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be92aceadb724bcc0cf61d5f2f7e2f7f779c410b5ed753be1b7f03ece58bfd66`  
		Last Modified: Sat, 09 Jun 2018 10:44:06 GMT  
		Size: 14.6 MB (14590040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11801d4efb13d849c99b1200148ba054775aad3c9ea7d166a8d8adced8e66fc1`  
		Last Modified: Sat, 09 Jun 2018 10:43:54 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; ppc64le

```console
$ docker pull ghost@sha256:4fd8a16e59b69acadeffdf344ee423c487c0efa6aaf39bb36fa7447f9cf8a7d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.2 MB (232167305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f53c18691914347d006f4d2ad05e67f970faa3c402d6e7834dff83fb2199ea9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 08:18:08 GMT
ADD file:cc51ef60d7cb3b70c82127b8721de1b99378a9d4fc246dffa2ef5ffa2d9ab805 in / 
# Sat, 28 Apr 2018 08:18:09 GMT
CMD ["bash"]
# Fri, 25 May 2018 08:32:49 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 08:32:53 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 08:48:52 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 08:50:40 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 08:50:43 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 08:50:49 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 08:50:50 GMT
CMD ["node"]
# Fri, 25 May 2018 09:49:23 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 09:49:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 09:49:33 GMT
ENV NODE_ENV=production
# Thu, 07 Jun 2018 08:17:54 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Thu, 07 Jun 2018 08:18:58 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 07 Jun 2018 08:19:01 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 07 Jun 2018 08:19:04 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Jun 2018 08:16:44 GMT
ENV GHOST_VERSION=1.24.1
# Sat, 09 Jun 2018 08:20:36 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Jun 2018 08:20:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Jun 2018 08:25:05 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Jun 2018 08:25:06 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Jun 2018 08:25:07 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Jun 2018 08:25:08 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Jun 2018 08:25:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 08:25:09 GMT
EXPOSE 2368/tcp
# Sat, 09 Jun 2018 08:25:10 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:db919f8ae8ffa4343de2c13a34f5e6bc57b7b4ae820d141c76627bea943cde66`  
		Last Modified: Fri, 25 May 2018 09:06:11 GMT  
		Size: 117.6 KB (117643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e543bc0bae0d2ab1b0edc8a3fd714099e23e7dae64d909c7363e276f5f3aac`  
		Last Modified: Fri, 25 May 2018 09:12:32 GMT  
		Size: 31.0 MB (31034874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b5d1420c5536397987ac94e3d81fc276cfea3e1f9e15ec7e911c05a3a495cd`  
		Last Modified: Fri, 25 May 2018 09:12:23 GMT  
		Size: 1.1 MB (1066230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d8af7ee99bb0ea87ccf8d0511071fe7582c26bffffc659769dedcce8ff4e03`  
		Last Modified: Fri, 25 May 2018 10:02:28 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bb607be26866728b2e11c31dae695b750df9bdf5c1b045a6cd615ea9f3a9c5`  
		Last Modified: Thu, 07 Jun 2018 08:26:41 GMT  
		Size: 18.4 MB (18431529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d771357a6ffeff0dbb1e40a0b354bce220cb791a43b5e1e0606fb1376a0843`  
		Last Modified: Sat, 09 Jun 2018 08:26:26 GMT  
		Size: 136.7 MB (136745681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d61985f27155151f3a79628d8223922b78d2ad3b1e9a33a72a5fcfcf8212b8f`  
		Last Modified: Sat, 09 Jun 2018 08:25:47 GMT  
		Size: 15.0 MB (14979148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d1fed6bda1c0af58d775c7b883586b323b65adc18516a8af3c8e39a0c8a3a1`  
		Last Modified: Sat, 09 Jun 2018 08:25:43 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; s390x

```console
$ docker pull ghost@sha256:27fe8a6c7de0004a60bbb6dbedd8463e7b08743e26770d2401666d13b6dae5f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.9 MB (233859956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c87f0c8999b9f313a5dd404f4b526b0a0fe3b4f270b5f08d0cf4d06b42b1abd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:53 GMT
ADD file:7c773d50957d6184975f5b22ef61757cd979893af5c77cdfef46dd28d8fc0296 in / 
# Sat, 28 Apr 2018 11:42:55 GMT
CMD ["bash"]
# Fri, 25 May 2018 12:27:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 12:27:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 12:58:07 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 12:58:26 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 12:58:27 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 12:58:29 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 12:58:29 GMT
CMD ["node"]
# Fri, 25 May 2018 13:36:00 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 13:36:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 13:36:02 GMT
ENV NODE_ENV=production
# Thu, 07 Jun 2018 11:41:31 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Thu, 07 Jun 2018 11:42:13 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 07 Jun 2018 11:42:13 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 07 Jun 2018 11:42:13 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Jun 2018 11:41:26 GMT
ENV GHOST_VERSION=1.24.1
# Sat, 09 Jun 2018 11:41:58 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Jun 2018 11:42:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Jun 2018 11:43:35 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Jun 2018 11:43:35 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Jun 2018 11:43:35 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Jun 2018 11:43:36 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Jun 2018 11:43:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 11:43:36 GMT
EXPOSE 2368/tcp
# Sat, 09 Jun 2018 11:43:36 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:90f987b1e452122d69591a7ad4e1777f6398f71f6898abb7a0af5d8f834e99ce`  
		Last Modified: Fri, 25 May 2018 13:12:17 GMT  
		Size: 117.6 KB (117611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5499a8ebec846942baf6ca7922f6acbf1075c2956ab953243e2e96ed9d25293`  
		Last Modified: Fri, 25 May 2018 13:17:13 GMT  
		Size: 31.7 MB (31679303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89722c717ab8a51082112a4428a1e0d636445024eb95e2308476fa1f8902e5ac`  
		Last Modified: Fri, 25 May 2018 13:17:07 GMT  
		Size: 1.1 MB (1066213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcab469af6630994b3decf13743c14697a3b3bd2209c311ef3113944d5916fb8`  
		Last Modified: Fri, 25 May 2018 13:40:38 GMT  
		Size: 486.8 KB (486826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19d0190179fa955f27c29ecb959145834a9582c4901e14a29ec757c6ebf94e0`  
		Last Modified: Thu, 07 Jun 2018 11:44:39 GMT  
		Size: 18.4 MB (18432833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b358e571981262917c33b64eb89e9ae14779b96cff80bf73bd8c76ab33c3be`  
		Last Modified: Sat, 09 Jun 2018 11:44:13 GMT  
		Size: 136.7 MB (136746294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b840878502463a9cfb65fa789e16b03b62119176c5c705ec4008125ba31d3a5c`  
		Last Modified: Sat, 09 Jun 2018 11:43:56 GMT  
		Size: 15.0 MB (15017588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d4dc82da173601a43b0a3bad02f202df8050cb954d99372f2d095ba6614de3`  
		Last Modified: Sat, 09 Jun 2018 11:43:54 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.24`

```console
$ docker pull ghost@sha256:6157e40813762e8657268fb665fc0aeb526da939e31d47efb1ac30950f267b24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:1.24` - linux; amd64

```console
$ docker pull ghost@sha256:e3d4de1229e6e4e0e36f7c5ddcfbb9389010eb166bd82413eaa1e3ad59999790
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229301642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e0c18450c7f85d79b2e2ab24ffcfc680a63c00ef0c5ce50e9c82dddd4208fb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 01:40:13 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 06 Jun 2018 01:40:16 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Wed, 06 Jun 2018 01:56:57 GMT
ENV NODE_VERSION=6.14.2
# Wed, 06 Jun 2018 01:57:56 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Jun 2018 01:57:57 GMT
ENV YARN_VERSION=1.6.0
# Wed, 06 Jun 2018 01:58:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Jun 2018 01:58:02 GMT
CMD ["node"]
# Wed, 06 Jun 2018 18:19:36 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Jun 2018 18:19:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Jun 2018 18:19:41 GMT
ENV NODE_ENV=production
# Wed, 06 Jun 2018 18:19:41 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Wed, 06 Jun 2018 18:20:18 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Jun 2018 18:20:18 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Jun 2018 18:20:19 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Jun 2018 00:19:33 GMT
ENV GHOST_VERSION=1.24.1
# Sat, 09 Jun 2018 00:20:30 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Jun 2018 00:20:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Jun 2018 00:20:51 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Jun 2018 00:20:51 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Jun 2018 00:20:51 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Jun 2018 00:20:52 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Jun 2018 00:20:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 00:20:52 GMT
EXPOSE 2368/tcp
# Sat, 09 Jun 2018 00:20:52 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77cfa1fc62778ca7f3294c941c2688b1cbe18995a0d41bf208a7a3cbe52adc8`  
		Last Modified: Wed, 06 Jun 2018 02:10:19 GMT  
		Size: 4.4 KB (4403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e2482667912dca0b5544a7453d966463433dcbdd3716ed8ade5d76a476b235`  
		Last Modified: Wed, 06 Jun 2018 02:10:19 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a5a1306ee826d1b529164dbf70e9c62a0a4ea0ed13ffd1599c360a35066a0a`  
		Last Modified: Wed, 06 Jun 2018 02:15:25 GMT  
		Size: 31.3 MB (31337410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b1d036107317d354d58d252eb768b0997435ac23f1619e93cce2363e949b3d`  
		Last Modified: Wed, 06 Jun 2018 02:15:14 GMT  
		Size: 1.1 MB (1066212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9563bdf4c9b10e7f66588a7674b111b4ae710921ed2004fa33d5c8e5237cc60`  
		Last Modified: Wed, 06 Jun 2018 18:28:10 GMT  
		Size: 500.7 KB (500674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87230e08f1adf725751f99416f03560b7caa85db11e296890bc30162904b0f78`  
		Last Modified: Wed, 06 Jun 2018 18:28:26 GMT  
		Size: 18.4 MB (18431094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a9a5a28671699bf89a30c57bd9e13738393d3c0bc59ad7f38777a8d4ad1e81`  
		Last Modified: Sat, 09 Jun 2018 00:23:04 GMT  
		Size: 140.9 MB (140854632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62edaad1eecae3a704648ff6db3084f218a4a1bfa4e93de35dfbd3fb83400769`  
		Last Modified: Sat, 09 Jun 2018 00:22:28 GMT  
		Size: 6.9 MB (6861728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0341f55a2ca989bc3735acfebb68e3d0cb4901762858ea8a130f38378b06e6`  
		Last Modified: Sat, 09 Jun 2018 00:22:22 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.24` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:aef39d8e075fd82f7a60db399efe11ec24ec1b7a12b5d46949260766d166d667
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.6 MB (229639135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1087ed4f2fb5a1a3bda615410f1c0a837a793e133c0fb9e3d1e933368b19034`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Fri, 25 May 2018 09:21:00 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 09:21:04 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 10:12:24 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 10:13:26 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 10:13:27 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 10:13:33 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 10:13:34 GMT
CMD ["node"]
# Fri, 25 May 2018 19:10:37 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 19:10:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 19:10:42 GMT
ENV NODE_ENV=production
# Wed, 06 Jun 2018 17:44:52 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Wed, 06 Jun 2018 17:46:48 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Jun 2018 17:46:51 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Jun 2018 17:46:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Jun 2018 08:46:48 GMT
ENV GHOST_VERSION=1.24.1
# Sat, 09 Jun 2018 08:48:50 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Jun 2018 08:48:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Jun 2018 08:53:25 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Jun 2018 08:53:26 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Jun 2018 08:53:27 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Jun 2018 08:53:28 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Jun 2018 08:53:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 08:53:29 GMT
EXPOSE 2368/tcp
# Sat, 09 Jun 2018 08:53:30 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:3fafb9ca27d2582ee40910d7c43d874441ec72cd6ec44741516a686975b50a03`  
		Last Modified: Fri, 25 May 2018 11:08:28 GMT  
		Size: 117.6 KB (117619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4df267a6028ffba0ef5bcbd9a6b55104cfe43ba31241d3a2721f35182ef92646`  
		Last Modified: Fri, 25 May 2018 11:17:23 GMT  
		Size: 30.8 MB (30795207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c48d86e753831f464d7a54a00a9bae3d76b58dbc6b29d5e301b53290169d92`  
		Last Modified: Fri, 25 May 2018 11:17:12 GMT  
		Size: 1.1 MB (1066216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8151996fcc4098758e2627764189eeeaed5a6f5cfb53cb9da836082752ab41b`  
		Last Modified: Fri, 25 May 2018 19:23:57 GMT  
		Size: 468.7 KB (468703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3254f10e32670237f83cf14093e3826496146b62d119f5ea3b2b51d84a588b`  
		Last Modified: Wed, 06 Jun 2018 17:58:23 GMT  
		Size: 18.4 MB (18433564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b544bbf25886f79dcebec3af909f2ed262883a528b80d8982b5f7cc870d34d`  
		Last Modified: Sat, 09 Jun 2018 08:54:45 GMT  
		Size: 136.7 MB (136748828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10780bc9027fb79c07b59b2d0d59019249d268080176e3aba02dc81c523107f9`  
		Last Modified: Sat, 09 Jun 2018 08:54:09 GMT  
		Size: 14.5 MB (14509422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c733b97a621ec119fb906b9d5128eab4826976edeaf034d7fe6e1a43d0d23730`  
		Last Modified: Sat, 09 Jun 2018 08:54:04 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.24` - linux; 386

```console
$ docker pull ghost@sha256:481d6904da422a247fc9c4068935ec00d4162647f63796c6bc23dbca7e027dde
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234907177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b996a0e2656e4fb6ad40c98595e8d9c6e043845a59a0fcd8747bf7db61d132e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Thu, 31 May 2018 09:51:37 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 31 May 2018 09:51:38 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Thu, 31 May 2018 10:03:36 GMT
ENV NODE_VERSION=6.14.2
# Thu, 31 May 2018 10:04:58 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 31 May 2018 10:04:59 GMT
ENV YARN_VERSION=1.6.0
# Thu, 31 May 2018 10:05:03 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 31 May 2018 10:05:03 GMT
CMD ["node"]
# Thu, 31 May 2018 15:31:21 GMT
ENV GOSU_VERSION=1.10
# Thu, 31 May 2018 15:31:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 31 May 2018 15:31:28 GMT
ENV NODE_ENV=production
# Thu, 07 Jun 2018 10:38:33 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Thu, 07 Jun 2018 10:39:09 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 07 Jun 2018 10:39:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 07 Jun 2018 10:39:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Jun 2018 10:38:37 GMT
ENV GHOST_VERSION=1.24.1
# Sat, 09 Jun 2018 10:39:44 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Jun 2018 10:39:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Jun 2018 10:43:28 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Jun 2018 10:43:29 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Jun 2018 10:43:29 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Jun 2018 10:43:29 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Jun 2018 10:43:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 10:43:30 GMT
EXPOSE 2368/tcp
# Sat, 09 Jun 2018 10:43:30 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be50895ebdd74a4fc305468004471d00b47cbac985c7b89d912d8693889ea7d1`  
		Last Modified: Thu, 31 May 2018 10:18:31 GMT  
		Size: 4.4 KB (4387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1c7fd7e0bca01b90df154950ea53aac4fbabc9d8b62a21b6adb534a67296074`  
		Last Modified: Thu, 31 May 2018 10:18:31 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193725372179d54cd209f2df3fe6329b092c1812a5a3dc6328ded6e39b62742d`  
		Last Modified: Thu, 31 May 2018 10:23:27 GMT  
		Size: 33.2 MB (33189611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0abf0672e6a54ad3f73d47f8de3edaa6d086d81bc64603deba84170c1d4ba5`  
		Last Modified: Thu, 31 May 2018 10:23:11 GMT  
		Size: 1.1 MB (1066216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24eb7c6e3d8c7dd4117a489d5700a961ec652e75e088021d74997061a4a2ee08`  
		Last Modified: Thu, 31 May 2018 15:42:54 GMT  
		Size: 480.6 KB (480573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d814c7d3eae69438be7d3184dadd9ae44b99e28ac2a4a39fb76c200248e7bf43`  
		Last Modified: Thu, 07 Jun 2018 10:44:19 GMT  
		Size: 18.4 MB (18432483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04e102a7fa887e844857d85f922c7ba4ba36b35d8cf1d8d56d03022c8e06e489`  
		Last Modified: Sat, 09 Jun 2018 10:44:42 GMT  
		Size: 136.7 MB (136747016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be92aceadb724bcc0cf61d5f2f7e2f7f779c410b5ed753be1b7f03ece58bfd66`  
		Last Modified: Sat, 09 Jun 2018 10:44:06 GMT  
		Size: 14.6 MB (14590040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11801d4efb13d849c99b1200148ba054775aad3c9ea7d166a8d8adced8e66fc1`  
		Last Modified: Sat, 09 Jun 2018 10:43:54 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.24` - linux; ppc64le

```console
$ docker pull ghost@sha256:4fd8a16e59b69acadeffdf344ee423c487c0efa6aaf39bb36fa7447f9cf8a7d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.2 MB (232167305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f53c18691914347d006f4d2ad05e67f970faa3c402d6e7834dff83fb2199ea9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 08:18:08 GMT
ADD file:cc51ef60d7cb3b70c82127b8721de1b99378a9d4fc246dffa2ef5ffa2d9ab805 in / 
# Sat, 28 Apr 2018 08:18:09 GMT
CMD ["bash"]
# Fri, 25 May 2018 08:32:49 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 08:32:53 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 08:48:52 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 08:50:40 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 08:50:43 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 08:50:49 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 08:50:50 GMT
CMD ["node"]
# Fri, 25 May 2018 09:49:23 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 09:49:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 09:49:33 GMT
ENV NODE_ENV=production
# Thu, 07 Jun 2018 08:17:54 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Thu, 07 Jun 2018 08:18:58 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 07 Jun 2018 08:19:01 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 07 Jun 2018 08:19:04 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Jun 2018 08:16:44 GMT
ENV GHOST_VERSION=1.24.1
# Sat, 09 Jun 2018 08:20:36 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Jun 2018 08:20:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Jun 2018 08:25:05 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Jun 2018 08:25:06 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Jun 2018 08:25:07 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Jun 2018 08:25:08 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Jun 2018 08:25:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 08:25:09 GMT
EXPOSE 2368/tcp
# Sat, 09 Jun 2018 08:25:10 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:db919f8ae8ffa4343de2c13a34f5e6bc57b7b4ae820d141c76627bea943cde66`  
		Last Modified: Fri, 25 May 2018 09:06:11 GMT  
		Size: 117.6 KB (117643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e543bc0bae0d2ab1b0edc8a3fd714099e23e7dae64d909c7363e276f5f3aac`  
		Last Modified: Fri, 25 May 2018 09:12:32 GMT  
		Size: 31.0 MB (31034874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b5d1420c5536397987ac94e3d81fc276cfea3e1f9e15ec7e911c05a3a495cd`  
		Last Modified: Fri, 25 May 2018 09:12:23 GMT  
		Size: 1.1 MB (1066230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d8af7ee99bb0ea87ccf8d0511071fe7582c26bffffc659769dedcce8ff4e03`  
		Last Modified: Fri, 25 May 2018 10:02:28 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bb607be26866728b2e11c31dae695b750df9bdf5c1b045a6cd615ea9f3a9c5`  
		Last Modified: Thu, 07 Jun 2018 08:26:41 GMT  
		Size: 18.4 MB (18431529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d771357a6ffeff0dbb1e40a0b354bce220cb791a43b5e1e0606fb1376a0843`  
		Last Modified: Sat, 09 Jun 2018 08:26:26 GMT  
		Size: 136.7 MB (136745681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d61985f27155151f3a79628d8223922b78d2ad3b1e9a33a72a5fcfcf8212b8f`  
		Last Modified: Sat, 09 Jun 2018 08:25:47 GMT  
		Size: 15.0 MB (14979148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d1fed6bda1c0af58d775c7b883586b323b65adc18516a8af3c8e39a0c8a3a1`  
		Last Modified: Sat, 09 Jun 2018 08:25:43 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.24` - linux; s390x

```console
$ docker pull ghost@sha256:27fe8a6c7de0004a60bbb6dbedd8463e7b08743e26770d2401666d13b6dae5f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.9 MB (233859956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c87f0c8999b9f313a5dd404f4b526b0a0fe3b4f270b5f08d0cf4d06b42b1abd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:53 GMT
ADD file:7c773d50957d6184975f5b22ef61757cd979893af5c77cdfef46dd28d8fc0296 in / 
# Sat, 28 Apr 2018 11:42:55 GMT
CMD ["bash"]
# Fri, 25 May 2018 12:27:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 12:27:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 12:58:07 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 12:58:26 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 12:58:27 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 12:58:29 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 12:58:29 GMT
CMD ["node"]
# Fri, 25 May 2018 13:36:00 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 13:36:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 13:36:02 GMT
ENV NODE_ENV=production
# Thu, 07 Jun 2018 11:41:31 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Thu, 07 Jun 2018 11:42:13 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 07 Jun 2018 11:42:13 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 07 Jun 2018 11:42:13 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Jun 2018 11:41:26 GMT
ENV GHOST_VERSION=1.24.1
# Sat, 09 Jun 2018 11:41:58 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Jun 2018 11:42:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Jun 2018 11:43:35 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Jun 2018 11:43:35 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Jun 2018 11:43:35 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Jun 2018 11:43:36 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Jun 2018 11:43:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 11:43:36 GMT
EXPOSE 2368/tcp
# Sat, 09 Jun 2018 11:43:36 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:90f987b1e452122d69591a7ad4e1777f6398f71f6898abb7a0af5d8f834e99ce`  
		Last Modified: Fri, 25 May 2018 13:12:17 GMT  
		Size: 117.6 KB (117611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5499a8ebec846942baf6ca7922f6acbf1075c2956ab953243e2e96ed9d25293`  
		Last Modified: Fri, 25 May 2018 13:17:13 GMT  
		Size: 31.7 MB (31679303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89722c717ab8a51082112a4428a1e0d636445024eb95e2308476fa1f8902e5ac`  
		Last Modified: Fri, 25 May 2018 13:17:07 GMT  
		Size: 1.1 MB (1066213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcab469af6630994b3decf13743c14697a3b3bd2209c311ef3113944d5916fb8`  
		Last Modified: Fri, 25 May 2018 13:40:38 GMT  
		Size: 486.8 KB (486826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19d0190179fa955f27c29ecb959145834a9582c4901e14a29ec757c6ebf94e0`  
		Last Modified: Thu, 07 Jun 2018 11:44:39 GMT  
		Size: 18.4 MB (18432833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b358e571981262917c33b64eb89e9ae14779b96cff80bf73bd8c76ab33c3be`  
		Last Modified: Sat, 09 Jun 2018 11:44:13 GMT  
		Size: 136.7 MB (136746294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b840878502463a9cfb65fa789e16b03b62119176c5c705ec4008125ba31d3a5c`  
		Last Modified: Sat, 09 Jun 2018 11:43:56 GMT  
		Size: 15.0 MB (15017588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d4dc82da173601a43b0a3bad02f202df8050cb954d99372f2d095ba6614de3`  
		Last Modified: Sat, 09 Jun 2018 11:43:54 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.24.1`

```console
$ docker pull ghost@sha256:6157e40813762e8657268fb665fc0aeb526da939e31d47efb1ac30950f267b24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:1.24.1` - linux; amd64

```console
$ docker pull ghost@sha256:e3d4de1229e6e4e0e36f7c5ddcfbb9389010eb166bd82413eaa1e3ad59999790
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229301642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e0c18450c7f85d79b2e2ab24ffcfc680a63c00ef0c5ce50e9c82dddd4208fb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 01:40:13 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 06 Jun 2018 01:40:16 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Wed, 06 Jun 2018 01:56:57 GMT
ENV NODE_VERSION=6.14.2
# Wed, 06 Jun 2018 01:57:56 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Jun 2018 01:57:57 GMT
ENV YARN_VERSION=1.6.0
# Wed, 06 Jun 2018 01:58:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Jun 2018 01:58:02 GMT
CMD ["node"]
# Wed, 06 Jun 2018 18:19:36 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Jun 2018 18:19:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Jun 2018 18:19:41 GMT
ENV NODE_ENV=production
# Wed, 06 Jun 2018 18:19:41 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Wed, 06 Jun 2018 18:20:18 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Jun 2018 18:20:18 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Jun 2018 18:20:19 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Jun 2018 00:19:33 GMT
ENV GHOST_VERSION=1.24.1
# Sat, 09 Jun 2018 00:20:30 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Jun 2018 00:20:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Jun 2018 00:20:51 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Jun 2018 00:20:51 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Jun 2018 00:20:51 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Jun 2018 00:20:52 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Jun 2018 00:20:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 00:20:52 GMT
EXPOSE 2368/tcp
# Sat, 09 Jun 2018 00:20:52 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77cfa1fc62778ca7f3294c941c2688b1cbe18995a0d41bf208a7a3cbe52adc8`  
		Last Modified: Wed, 06 Jun 2018 02:10:19 GMT  
		Size: 4.4 KB (4403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e2482667912dca0b5544a7453d966463433dcbdd3716ed8ade5d76a476b235`  
		Last Modified: Wed, 06 Jun 2018 02:10:19 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a5a1306ee826d1b529164dbf70e9c62a0a4ea0ed13ffd1599c360a35066a0a`  
		Last Modified: Wed, 06 Jun 2018 02:15:25 GMT  
		Size: 31.3 MB (31337410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b1d036107317d354d58d252eb768b0997435ac23f1619e93cce2363e949b3d`  
		Last Modified: Wed, 06 Jun 2018 02:15:14 GMT  
		Size: 1.1 MB (1066212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9563bdf4c9b10e7f66588a7674b111b4ae710921ed2004fa33d5c8e5237cc60`  
		Last Modified: Wed, 06 Jun 2018 18:28:10 GMT  
		Size: 500.7 KB (500674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87230e08f1adf725751f99416f03560b7caa85db11e296890bc30162904b0f78`  
		Last Modified: Wed, 06 Jun 2018 18:28:26 GMT  
		Size: 18.4 MB (18431094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a9a5a28671699bf89a30c57bd9e13738393d3c0bc59ad7f38777a8d4ad1e81`  
		Last Modified: Sat, 09 Jun 2018 00:23:04 GMT  
		Size: 140.9 MB (140854632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62edaad1eecae3a704648ff6db3084f218a4a1bfa4e93de35dfbd3fb83400769`  
		Last Modified: Sat, 09 Jun 2018 00:22:28 GMT  
		Size: 6.9 MB (6861728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0341f55a2ca989bc3735acfebb68e3d0cb4901762858ea8a130f38378b06e6`  
		Last Modified: Sat, 09 Jun 2018 00:22:22 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.24.1` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:aef39d8e075fd82f7a60db399efe11ec24ec1b7a12b5d46949260766d166d667
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.6 MB (229639135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1087ed4f2fb5a1a3bda615410f1c0a837a793e133c0fb9e3d1e933368b19034`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Fri, 25 May 2018 09:21:00 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 09:21:04 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 10:12:24 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 10:13:26 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 10:13:27 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 10:13:33 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 10:13:34 GMT
CMD ["node"]
# Fri, 25 May 2018 19:10:37 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 19:10:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 19:10:42 GMT
ENV NODE_ENV=production
# Wed, 06 Jun 2018 17:44:52 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Wed, 06 Jun 2018 17:46:48 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Jun 2018 17:46:51 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Jun 2018 17:46:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Jun 2018 08:46:48 GMT
ENV GHOST_VERSION=1.24.1
# Sat, 09 Jun 2018 08:48:50 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Jun 2018 08:48:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Jun 2018 08:53:25 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Jun 2018 08:53:26 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Jun 2018 08:53:27 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Jun 2018 08:53:28 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Jun 2018 08:53:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 08:53:29 GMT
EXPOSE 2368/tcp
# Sat, 09 Jun 2018 08:53:30 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:3fafb9ca27d2582ee40910d7c43d874441ec72cd6ec44741516a686975b50a03`  
		Last Modified: Fri, 25 May 2018 11:08:28 GMT  
		Size: 117.6 KB (117619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4df267a6028ffba0ef5bcbd9a6b55104cfe43ba31241d3a2721f35182ef92646`  
		Last Modified: Fri, 25 May 2018 11:17:23 GMT  
		Size: 30.8 MB (30795207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c48d86e753831f464d7a54a00a9bae3d76b58dbc6b29d5e301b53290169d92`  
		Last Modified: Fri, 25 May 2018 11:17:12 GMT  
		Size: 1.1 MB (1066216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8151996fcc4098758e2627764189eeeaed5a6f5cfb53cb9da836082752ab41b`  
		Last Modified: Fri, 25 May 2018 19:23:57 GMT  
		Size: 468.7 KB (468703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3254f10e32670237f83cf14093e3826496146b62d119f5ea3b2b51d84a588b`  
		Last Modified: Wed, 06 Jun 2018 17:58:23 GMT  
		Size: 18.4 MB (18433564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b544bbf25886f79dcebec3af909f2ed262883a528b80d8982b5f7cc870d34d`  
		Last Modified: Sat, 09 Jun 2018 08:54:45 GMT  
		Size: 136.7 MB (136748828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10780bc9027fb79c07b59b2d0d59019249d268080176e3aba02dc81c523107f9`  
		Last Modified: Sat, 09 Jun 2018 08:54:09 GMT  
		Size: 14.5 MB (14509422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c733b97a621ec119fb906b9d5128eab4826976edeaf034d7fe6e1a43d0d23730`  
		Last Modified: Sat, 09 Jun 2018 08:54:04 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.24.1` - linux; 386

```console
$ docker pull ghost@sha256:481d6904da422a247fc9c4068935ec00d4162647f63796c6bc23dbca7e027dde
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234907177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b996a0e2656e4fb6ad40c98595e8d9c6e043845a59a0fcd8747bf7db61d132e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Thu, 31 May 2018 09:51:37 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 31 May 2018 09:51:38 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Thu, 31 May 2018 10:03:36 GMT
ENV NODE_VERSION=6.14.2
# Thu, 31 May 2018 10:04:58 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 31 May 2018 10:04:59 GMT
ENV YARN_VERSION=1.6.0
# Thu, 31 May 2018 10:05:03 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 31 May 2018 10:05:03 GMT
CMD ["node"]
# Thu, 31 May 2018 15:31:21 GMT
ENV GOSU_VERSION=1.10
# Thu, 31 May 2018 15:31:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 31 May 2018 15:31:28 GMT
ENV NODE_ENV=production
# Thu, 07 Jun 2018 10:38:33 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Thu, 07 Jun 2018 10:39:09 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 07 Jun 2018 10:39:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 07 Jun 2018 10:39:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Jun 2018 10:38:37 GMT
ENV GHOST_VERSION=1.24.1
# Sat, 09 Jun 2018 10:39:44 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Jun 2018 10:39:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Jun 2018 10:43:28 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Jun 2018 10:43:29 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Jun 2018 10:43:29 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Jun 2018 10:43:29 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Jun 2018 10:43:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 10:43:30 GMT
EXPOSE 2368/tcp
# Sat, 09 Jun 2018 10:43:30 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be50895ebdd74a4fc305468004471d00b47cbac985c7b89d912d8693889ea7d1`  
		Last Modified: Thu, 31 May 2018 10:18:31 GMT  
		Size: 4.4 KB (4387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1c7fd7e0bca01b90df154950ea53aac4fbabc9d8b62a21b6adb534a67296074`  
		Last Modified: Thu, 31 May 2018 10:18:31 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193725372179d54cd209f2df3fe6329b092c1812a5a3dc6328ded6e39b62742d`  
		Last Modified: Thu, 31 May 2018 10:23:27 GMT  
		Size: 33.2 MB (33189611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0abf0672e6a54ad3f73d47f8de3edaa6d086d81bc64603deba84170c1d4ba5`  
		Last Modified: Thu, 31 May 2018 10:23:11 GMT  
		Size: 1.1 MB (1066216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24eb7c6e3d8c7dd4117a489d5700a961ec652e75e088021d74997061a4a2ee08`  
		Last Modified: Thu, 31 May 2018 15:42:54 GMT  
		Size: 480.6 KB (480573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d814c7d3eae69438be7d3184dadd9ae44b99e28ac2a4a39fb76c200248e7bf43`  
		Last Modified: Thu, 07 Jun 2018 10:44:19 GMT  
		Size: 18.4 MB (18432483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04e102a7fa887e844857d85f922c7ba4ba36b35d8cf1d8d56d03022c8e06e489`  
		Last Modified: Sat, 09 Jun 2018 10:44:42 GMT  
		Size: 136.7 MB (136747016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be92aceadb724bcc0cf61d5f2f7e2f7f779c410b5ed753be1b7f03ece58bfd66`  
		Last Modified: Sat, 09 Jun 2018 10:44:06 GMT  
		Size: 14.6 MB (14590040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11801d4efb13d849c99b1200148ba054775aad3c9ea7d166a8d8adced8e66fc1`  
		Last Modified: Sat, 09 Jun 2018 10:43:54 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.24.1` - linux; ppc64le

```console
$ docker pull ghost@sha256:4fd8a16e59b69acadeffdf344ee423c487c0efa6aaf39bb36fa7447f9cf8a7d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.2 MB (232167305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f53c18691914347d006f4d2ad05e67f970faa3c402d6e7834dff83fb2199ea9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 08:18:08 GMT
ADD file:cc51ef60d7cb3b70c82127b8721de1b99378a9d4fc246dffa2ef5ffa2d9ab805 in / 
# Sat, 28 Apr 2018 08:18:09 GMT
CMD ["bash"]
# Fri, 25 May 2018 08:32:49 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 08:32:53 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 08:48:52 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 08:50:40 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 08:50:43 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 08:50:49 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 08:50:50 GMT
CMD ["node"]
# Fri, 25 May 2018 09:49:23 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 09:49:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 09:49:33 GMT
ENV NODE_ENV=production
# Thu, 07 Jun 2018 08:17:54 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Thu, 07 Jun 2018 08:18:58 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 07 Jun 2018 08:19:01 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 07 Jun 2018 08:19:04 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Jun 2018 08:16:44 GMT
ENV GHOST_VERSION=1.24.1
# Sat, 09 Jun 2018 08:20:36 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Jun 2018 08:20:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Jun 2018 08:25:05 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Jun 2018 08:25:06 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Jun 2018 08:25:07 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Jun 2018 08:25:08 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Jun 2018 08:25:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 08:25:09 GMT
EXPOSE 2368/tcp
# Sat, 09 Jun 2018 08:25:10 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:db919f8ae8ffa4343de2c13a34f5e6bc57b7b4ae820d141c76627bea943cde66`  
		Last Modified: Fri, 25 May 2018 09:06:11 GMT  
		Size: 117.6 KB (117643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e543bc0bae0d2ab1b0edc8a3fd714099e23e7dae64d909c7363e276f5f3aac`  
		Last Modified: Fri, 25 May 2018 09:12:32 GMT  
		Size: 31.0 MB (31034874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b5d1420c5536397987ac94e3d81fc276cfea3e1f9e15ec7e911c05a3a495cd`  
		Last Modified: Fri, 25 May 2018 09:12:23 GMT  
		Size: 1.1 MB (1066230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d8af7ee99bb0ea87ccf8d0511071fe7582c26bffffc659769dedcce8ff4e03`  
		Last Modified: Fri, 25 May 2018 10:02:28 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bb607be26866728b2e11c31dae695b750df9bdf5c1b045a6cd615ea9f3a9c5`  
		Last Modified: Thu, 07 Jun 2018 08:26:41 GMT  
		Size: 18.4 MB (18431529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d771357a6ffeff0dbb1e40a0b354bce220cb791a43b5e1e0606fb1376a0843`  
		Last Modified: Sat, 09 Jun 2018 08:26:26 GMT  
		Size: 136.7 MB (136745681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d61985f27155151f3a79628d8223922b78d2ad3b1e9a33a72a5fcfcf8212b8f`  
		Last Modified: Sat, 09 Jun 2018 08:25:47 GMT  
		Size: 15.0 MB (14979148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d1fed6bda1c0af58d775c7b883586b323b65adc18516a8af3c8e39a0c8a3a1`  
		Last Modified: Sat, 09 Jun 2018 08:25:43 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.24.1` - linux; s390x

```console
$ docker pull ghost@sha256:27fe8a6c7de0004a60bbb6dbedd8463e7b08743e26770d2401666d13b6dae5f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.9 MB (233859956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c87f0c8999b9f313a5dd404f4b526b0a0fe3b4f270b5f08d0cf4d06b42b1abd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:53 GMT
ADD file:7c773d50957d6184975f5b22ef61757cd979893af5c77cdfef46dd28d8fc0296 in / 
# Sat, 28 Apr 2018 11:42:55 GMT
CMD ["bash"]
# Fri, 25 May 2018 12:27:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 12:27:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 12:58:07 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 12:58:26 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 12:58:27 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 12:58:29 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 12:58:29 GMT
CMD ["node"]
# Fri, 25 May 2018 13:36:00 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 13:36:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 13:36:02 GMT
ENV NODE_ENV=production
# Thu, 07 Jun 2018 11:41:31 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Thu, 07 Jun 2018 11:42:13 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 07 Jun 2018 11:42:13 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 07 Jun 2018 11:42:13 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Jun 2018 11:41:26 GMT
ENV GHOST_VERSION=1.24.1
# Sat, 09 Jun 2018 11:41:58 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Jun 2018 11:42:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Jun 2018 11:43:35 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Jun 2018 11:43:35 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Jun 2018 11:43:35 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Jun 2018 11:43:36 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Jun 2018 11:43:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 11:43:36 GMT
EXPOSE 2368/tcp
# Sat, 09 Jun 2018 11:43:36 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:90f987b1e452122d69591a7ad4e1777f6398f71f6898abb7a0af5d8f834e99ce`  
		Last Modified: Fri, 25 May 2018 13:12:17 GMT  
		Size: 117.6 KB (117611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5499a8ebec846942baf6ca7922f6acbf1075c2956ab953243e2e96ed9d25293`  
		Last Modified: Fri, 25 May 2018 13:17:13 GMT  
		Size: 31.7 MB (31679303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89722c717ab8a51082112a4428a1e0d636445024eb95e2308476fa1f8902e5ac`  
		Last Modified: Fri, 25 May 2018 13:17:07 GMT  
		Size: 1.1 MB (1066213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcab469af6630994b3decf13743c14697a3b3bd2209c311ef3113944d5916fb8`  
		Last Modified: Fri, 25 May 2018 13:40:38 GMT  
		Size: 486.8 KB (486826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19d0190179fa955f27c29ecb959145834a9582c4901e14a29ec757c6ebf94e0`  
		Last Modified: Thu, 07 Jun 2018 11:44:39 GMT  
		Size: 18.4 MB (18432833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b358e571981262917c33b64eb89e9ae14779b96cff80bf73bd8c76ab33c3be`  
		Last Modified: Sat, 09 Jun 2018 11:44:13 GMT  
		Size: 136.7 MB (136746294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b840878502463a9cfb65fa789e16b03b62119176c5c705ec4008125ba31d3a5c`  
		Last Modified: Sat, 09 Jun 2018 11:43:56 GMT  
		Size: 15.0 MB (15017588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d4dc82da173601a43b0a3bad02f202df8050cb954d99372f2d095ba6614de3`  
		Last Modified: Sat, 09 Jun 2018 11:43:54 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.24.1-alpine`

```console
$ docker pull ghost@sha256:8aff8c8e36ef5daab06a07d7b3800298d083250ff394e60e6c19945b18d5a677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1.24.1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:7cde75fd10ab53f769a03b75c828a2144b934de4c560361fb67d8eeb241f700a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.4 MB (179391107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba842ffa8e4a0629604d7d20fbdf0fcf55b494e1b86fbc2ed3b80226e74ed112`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 01:51:15 GMT
ENV NODE_VERSION=6.14.2
# Wed, 06 Jun 2018 01:56:41 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 06 Jun 2018 01:56:41 GMT
ENV YARN_VERSION=1.6.0
# Wed, 06 Jun 2018 01:56:49 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 06 Jun 2018 01:56:49 GMT
CMD ["node"]
# Wed, 06 Jun 2018 18:21:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 06 Jun 2018 18:21:48 GMT
RUN apk add --no-cache 		bash
# Wed, 06 Jun 2018 18:21:48 GMT
ENV NODE_ENV=production
# Wed, 06 Jun 2018 18:21:49 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Wed, 06 Jun 2018 18:22:27 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Jun 2018 18:22:28 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Jun 2018 18:22:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Jun 2018 00:21:01 GMT
ENV GHOST_VERSION=1.24.1
# Sat, 09 Jun 2018 00:22:02 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Jun 2018 00:22:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Jun 2018 00:22:07 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Jun 2018 00:22:07 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Jun 2018 00:22:07 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Sat, 09 Jun 2018 00:22:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 00:22:07 GMT
EXPOSE 2368/tcp
# Sat, 09 Jun 2018 00:22:08 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e47121b945848dbf6e6800a9e52806a46f6d7185aae5b47743e1655310ac3b`  
		Last Modified: Wed, 06 Jun 2018 02:14:34 GMT  
		Size: 15.5 MB (15513525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a05c4ca1a2431622b7e997f0c71d6ccd9e67855c627146459c53e7ddea3af4`  
		Last Modified: Wed, 06 Jun 2018 02:14:28 GMT  
		Size: 1.1 MB (1072911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1491072ee98b2eeadd5bf4725f926d52629e30de502918a33e4fe914f1af5c03`  
		Last Modified: Wed, 06 Jun 2018 18:29:34 GMT  
		Size: 8.4 KB (8362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644fd988dcaf30c03bc0bccb1f8b5ada2877a81321552c7b8bb5d721b3211c7c`  
		Last Modified: Wed, 06 Jun 2018 18:29:32 GMT  
		Size: 1.1 MB (1119132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b80695a4820d277c199e752517e81890896cfcad7a4ac4086dbdb6a0635a14`  
		Last Modified: Wed, 06 Jun 2018 18:29:41 GMT  
		Size: 18.4 MB (18431444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0acdc94e8f4b911b140caab89ee70262bdc98c84560afd43c48a0f9e993cc8b`  
		Last Modified: Sat, 09 Jun 2018 00:24:28 GMT  
		Size: 140.9 MB (140857603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7df0f3f3cdb3abf0cdc537d5cbc560403d042cbbb17d239750ca60592bd8cda`  
		Last Modified: Sat, 09 Jun 2018 00:23:40 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.24-alpine`

```console
$ docker pull ghost@sha256:8aff8c8e36ef5daab06a07d7b3800298d083250ff394e60e6c19945b18d5a677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1.24-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:7cde75fd10ab53f769a03b75c828a2144b934de4c560361fb67d8eeb241f700a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.4 MB (179391107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba842ffa8e4a0629604d7d20fbdf0fcf55b494e1b86fbc2ed3b80226e74ed112`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 01:51:15 GMT
ENV NODE_VERSION=6.14.2
# Wed, 06 Jun 2018 01:56:41 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 06 Jun 2018 01:56:41 GMT
ENV YARN_VERSION=1.6.0
# Wed, 06 Jun 2018 01:56:49 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 06 Jun 2018 01:56:49 GMT
CMD ["node"]
# Wed, 06 Jun 2018 18:21:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 06 Jun 2018 18:21:48 GMT
RUN apk add --no-cache 		bash
# Wed, 06 Jun 2018 18:21:48 GMT
ENV NODE_ENV=production
# Wed, 06 Jun 2018 18:21:49 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Wed, 06 Jun 2018 18:22:27 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Jun 2018 18:22:28 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Jun 2018 18:22:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Jun 2018 00:21:01 GMT
ENV GHOST_VERSION=1.24.1
# Sat, 09 Jun 2018 00:22:02 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Jun 2018 00:22:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Jun 2018 00:22:07 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Jun 2018 00:22:07 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Jun 2018 00:22:07 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Sat, 09 Jun 2018 00:22:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 00:22:07 GMT
EXPOSE 2368/tcp
# Sat, 09 Jun 2018 00:22:08 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e47121b945848dbf6e6800a9e52806a46f6d7185aae5b47743e1655310ac3b`  
		Last Modified: Wed, 06 Jun 2018 02:14:34 GMT  
		Size: 15.5 MB (15513525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a05c4ca1a2431622b7e997f0c71d6ccd9e67855c627146459c53e7ddea3af4`  
		Last Modified: Wed, 06 Jun 2018 02:14:28 GMT  
		Size: 1.1 MB (1072911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1491072ee98b2eeadd5bf4725f926d52629e30de502918a33e4fe914f1af5c03`  
		Last Modified: Wed, 06 Jun 2018 18:29:34 GMT  
		Size: 8.4 KB (8362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644fd988dcaf30c03bc0bccb1f8b5ada2877a81321552c7b8bb5d721b3211c7c`  
		Last Modified: Wed, 06 Jun 2018 18:29:32 GMT  
		Size: 1.1 MB (1119132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b80695a4820d277c199e752517e81890896cfcad7a4ac4086dbdb6a0635a14`  
		Last Modified: Wed, 06 Jun 2018 18:29:41 GMT  
		Size: 18.4 MB (18431444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0acdc94e8f4b911b140caab89ee70262bdc98c84560afd43c48a0f9e993cc8b`  
		Last Modified: Sat, 09 Jun 2018 00:24:28 GMT  
		Size: 140.9 MB (140857603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7df0f3f3cdb3abf0cdc537d5cbc560403d042cbbb17d239750ca60592bd8cda`  
		Last Modified: Sat, 09 Jun 2018 00:23:40 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:8aff8c8e36ef5daab06a07d7b3800298d083250ff394e60e6c19945b18d5a677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:7cde75fd10ab53f769a03b75c828a2144b934de4c560361fb67d8eeb241f700a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.4 MB (179391107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba842ffa8e4a0629604d7d20fbdf0fcf55b494e1b86fbc2ed3b80226e74ed112`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 01:51:15 GMT
ENV NODE_VERSION=6.14.2
# Wed, 06 Jun 2018 01:56:41 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 06 Jun 2018 01:56:41 GMT
ENV YARN_VERSION=1.6.0
# Wed, 06 Jun 2018 01:56:49 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 06 Jun 2018 01:56:49 GMT
CMD ["node"]
# Wed, 06 Jun 2018 18:21:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 06 Jun 2018 18:21:48 GMT
RUN apk add --no-cache 		bash
# Wed, 06 Jun 2018 18:21:48 GMT
ENV NODE_ENV=production
# Wed, 06 Jun 2018 18:21:49 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Wed, 06 Jun 2018 18:22:27 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Jun 2018 18:22:28 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Jun 2018 18:22:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Jun 2018 00:21:01 GMT
ENV GHOST_VERSION=1.24.1
# Sat, 09 Jun 2018 00:22:02 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Jun 2018 00:22:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Jun 2018 00:22:07 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Jun 2018 00:22:07 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Jun 2018 00:22:07 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Sat, 09 Jun 2018 00:22:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 00:22:07 GMT
EXPOSE 2368/tcp
# Sat, 09 Jun 2018 00:22:08 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e47121b945848dbf6e6800a9e52806a46f6d7185aae5b47743e1655310ac3b`  
		Last Modified: Wed, 06 Jun 2018 02:14:34 GMT  
		Size: 15.5 MB (15513525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a05c4ca1a2431622b7e997f0c71d6ccd9e67855c627146459c53e7ddea3af4`  
		Last Modified: Wed, 06 Jun 2018 02:14:28 GMT  
		Size: 1.1 MB (1072911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1491072ee98b2eeadd5bf4725f926d52629e30de502918a33e4fe914f1af5c03`  
		Last Modified: Wed, 06 Jun 2018 18:29:34 GMT  
		Size: 8.4 KB (8362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644fd988dcaf30c03bc0bccb1f8b5ada2877a81321552c7b8bb5d721b3211c7c`  
		Last Modified: Wed, 06 Jun 2018 18:29:32 GMT  
		Size: 1.1 MB (1119132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b80695a4820d277c199e752517e81890896cfcad7a4ac4086dbdb6a0635a14`  
		Last Modified: Wed, 06 Jun 2018 18:29:41 GMT  
		Size: 18.4 MB (18431444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0acdc94e8f4b911b140caab89ee70262bdc98c84560afd43c48a0f9e993cc8b`  
		Last Modified: Sat, 09 Jun 2018 00:24:28 GMT  
		Size: 140.9 MB (140857603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7df0f3f3cdb3abf0cdc537d5cbc560403d042cbbb17d239750ca60592bd8cda`  
		Last Modified: Sat, 09 Jun 2018 00:23:40 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:8aff8c8e36ef5daab06a07d7b3800298d083250ff394e60e6c19945b18d5a677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:7cde75fd10ab53f769a03b75c828a2144b934de4c560361fb67d8eeb241f700a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.4 MB (179391107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba842ffa8e4a0629604d7d20fbdf0fcf55b494e1b86fbc2ed3b80226e74ed112`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 01:51:15 GMT
ENV NODE_VERSION=6.14.2
# Wed, 06 Jun 2018 01:56:41 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 06 Jun 2018 01:56:41 GMT
ENV YARN_VERSION=1.6.0
# Wed, 06 Jun 2018 01:56:49 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 06 Jun 2018 01:56:49 GMT
CMD ["node"]
# Wed, 06 Jun 2018 18:21:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 06 Jun 2018 18:21:48 GMT
RUN apk add --no-cache 		bash
# Wed, 06 Jun 2018 18:21:48 GMT
ENV NODE_ENV=production
# Wed, 06 Jun 2018 18:21:49 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Wed, 06 Jun 2018 18:22:27 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Jun 2018 18:22:28 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Jun 2018 18:22:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Jun 2018 00:21:01 GMT
ENV GHOST_VERSION=1.24.1
# Sat, 09 Jun 2018 00:22:02 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Jun 2018 00:22:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Jun 2018 00:22:07 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Jun 2018 00:22:07 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Jun 2018 00:22:07 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Sat, 09 Jun 2018 00:22:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 00:22:07 GMT
EXPOSE 2368/tcp
# Sat, 09 Jun 2018 00:22:08 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e47121b945848dbf6e6800a9e52806a46f6d7185aae5b47743e1655310ac3b`  
		Last Modified: Wed, 06 Jun 2018 02:14:34 GMT  
		Size: 15.5 MB (15513525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a05c4ca1a2431622b7e997f0c71d6ccd9e67855c627146459c53e7ddea3af4`  
		Last Modified: Wed, 06 Jun 2018 02:14:28 GMT  
		Size: 1.1 MB (1072911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1491072ee98b2eeadd5bf4725f926d52629e30de502918a33e4fe914f1af5c03`  
		Last Modified: Wed, 06 Jun 2018 18:29:34 GMT  
		Size: 8.4 KB (8362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644fd988dcaf30c03bc0bccb1f8b5ada2877a81321552c7b8bb5d721b3211c7c`  
		Last Modified: Wed, 06 Jun 2018 18:29:32 GMT  
		Size: 1.1 MB (1119132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b80695a4820d277c199e752517e81890896cfcad7a4ac4086dbdb6a0635a14`  
		Last Modified: Wed, 06 Jun 2018 18:29:41 GMT  
		Size: 18.4 MB (18431444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0acdc94e8f4b911b140caab89ee70262bdc98c84560afd43c48a0f9e993cc8b`  
		Last Modified: Sat, 09 Jun 2018 00:24:28 GMT  
		Size: 140.9 MB (140857603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7df0f3f3cdb3abf0cdc537d5cbc560403d042cbbb17d239750ca60592bd8cda`  
		Last Modified: Sat, 09 Jun 2018 00:23:40 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:6157e40813762e8657268fb665fc0aeb526da939e31d47efb1ac30950f267b24
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
$ docker pull ghost@sha256:e3d4de1229e6e4e0e36f7c5ddcfbb9389010eb166bd82413eaa1e3ad59999790
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229301642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e0c18450c7f85d79b2e2ab24ffcfc680a63c00ef0c5ce50e9c82dddd4208fb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 01:40:13 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 06 Jun 2018 01:40:16 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Wed, 06 Jun 2018 01:56:57 GMT
ENV NODE_VERSION=6.14.2
# Wed, 06 Jun 2018 01:57:56 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Jun 2018 01:57:57 GMT
ENV YARN_VERSION=1.6.0
# Wed, 06 Jun 2018 01:58:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Jun 2018 01:58:02 GMT
CMD ["node"]
# Wed, 06 Jun 2018 18:19:36 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Jun 2018 18:19:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Jun 2018 18:19:41 GMT
ENV NODE_ENV=production
# Wed, 06 Jun 2018 18:19:41 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Wed, 06 Jun 2018 18:20:18 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Jun 2018 18:20:18 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Jun 2018 18:20:19 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Jun 2018 00:19:33 GMT
ENV GHOST_VERSION=1.24.1
# Sat, 09 Jun 2018 00:20:30 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Jun 2018 00:20:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Jun 2018 00:20:51 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Jun 2018 00:20:51 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Jun 2018 00:20:51 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Jun 2018 00:20:52 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Jun 2018 00:20:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 00:20:52 GMT
EXPOSE 2368/tcp
# Sat, 09 Jun 2018 00:20:52 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77cfa1fc62778ca7f3294c941c2688b1cbe18995a0d41bf208a7a3cbe52adc8`  
		Last Modified: Wed, 06 Jun 2018 02:10:19 GMT  
		Size: 4.4 KB (4403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e2482667912dca0b5544a7453d966463433dcbdd3716ed8ade5d76a476b235`  
		Last Modified: Wed, 06 Jun 2018 02:10:19 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a5a1306ee826d1b529164dbf70e9c62a0a4ea0ed13ffd1599c360a35066a0a`  
		Last Modified: Wed, 06 Jun 2018 02:15:25 GMT  
		Size: 31.3 MB (31337410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b1d036107317d354d58d252eb768b0997435ac23f1619e93cce2363e949b3d`  
		Last Modified: Wed, 06 Jun 2018 02:15:14 GMT  
		Size: 1.1 MB (1066212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9563bdf4c9b10e7f66588a7674b111b4ae710921ed2004fa33d5c8e5237cc60`  
		Last Modified: Wed, 06 Jun 2018 18:28:10 GMT  
		Size: 500.7 KB (500674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87230e08f1adf725751f99416f03560b7caa85db11e296890bc30162904b0f78`  
		Last Modified: Wed, 06 Jun 2018 18:28:26 GMT  
		Size: 18.4 MB (18431094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a9a5a28671699bf89a30c57bd9e13738393d3c0bc59ad7f38777a8d4ad1e81`  
		Last Modified: Sat, 09 Jun 2018 00:23:04 GMT  
		Size: 140.9 MB (140854632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62edaad1eecae3a704648ff6db3084f218a4a1bfa4e93de35dfbd3fb83400769`  
		Last Modified: Sat, 09 Jun 2018 00:22:28 GMT  
		Size: 6.9 MB (6861728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0341f55a2ca989bc3735acfebb68e3d0cb4901762858ea8a130f38378b06e6`  
		Last Modified: Sat, 09 Jun 2018 00:22:22 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:aef39d8e075fd82f7a60db399efe11ec24ec1b7a12b5d46949260766d166d667
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.6 MB (229639135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1087ed4f2fb5a1a3bda615410f1c0a837a793e133c0fb9e3d1e933368b19034`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Fri, 25 May 2018 09:21:00 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 09:21:04 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 10:12:24 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 10:13:26 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 10:13:27 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 10:13:33 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 10:13:34 GMT
CMD ["node"]
# Fri, 25 May 2018 19:10:37 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 19:10:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 19:10:42 GMT
ENV NODE_ENV=production
# Wed, 06 Jun 2018 17:44:52 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Wed, 06 Jun 2018 17:46:48 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Jun 2018 17:46:51 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Jun 2018 17:46:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Jun 2018 08:46:48 GMT
ENV GHOST_VERSION=1.24.1
# Sat, 09 Jun 2018 08:48:50 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Jun 2018 08:48:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Jun 2018 08:53:25 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Jun 2018 08:53:26 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Jun 2018 08:53:27 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Jun 2018 08:53:28 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Jun 2018 08:53:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 08:53:29 GMT
EXPOSE 2368/tcp
# Sat, 09 Jun 2018 08:53:30 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:3fafb9ca27d2582ee40910d7c43d874441ec72cd6ec44741516a686975b50a03`  
		Last Modified: Fri, 25 May 2018 11:08:28 GMT  
		Size: 117.6 KB (117619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4df267a6028ffba0ef5bcbd9a6b55104cfe43ba31241d3a2721f35182ef92646`  
		Last Modified: Fri, 25 May 2018 11:17:23 GMT  
		Size: 30.8 MB (30795207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c48d86e753831f464d7a54a00a9bae3d76b58dbc6b29d5e301b53290169d92`  
		Last Modified: Fri, 25 May 2018 11:17:12 GMT  
		Size: 1.1 MB (1066216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8151996fcc4098758e2627764189eeeaed5a6f5cfb53cb9da836082752ab41b`  
		Last Modified: Fri, 25 May 2018 19:23:57 GMT  
		Size: 468.7 KB (468703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3254f10e32670237f83cf14093e3826496146b62d119f5ea3b2b51d84a588b`  
		Last Modified: Wed, 06 Jun 2018 17:58:23 GMT  
		Size: 18.4 MB (18433564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b544bbf25886f79dcebec3af909f2ed262883a528b80d8982b5f7cc870d34d`  
		Last Modified: Sat, 09 Jun 2018 08:54:45 GMT  
		Size: 136.7 MB (136748828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10780bc9027fb79c07b59b2d0d59019249d268080176e3aba02dc81c523107f9`  
		Last Modified: Sat, 09 Jun 2018 08:54:09 GMT  
		Size: 14.5 MB (14509422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c733b97a621ec119fb906b9d5128eab4826976edeaf034d7fe6e1a43d0d23730`  
		Last Modified: Sat, 09 Jun 2018 08:54:04 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; 386

```console
$ docker pull ghost@sha256:481d6904da422a247fc9c4068935ec00d4162647f63796c6bc23dbca7e027dde
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234907177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b996a0e2656e4fb6ad40c98595e8d9c6e043845a59a0fcd8747bf7db61d132e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Thu, 31 May 2018 09:51:37 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 31 May 2018 09:51:38 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Thu, 31 May 2018 10:03:36 GMT
ENV NODE_VERSION=6.14.2
# Thu, 31 May 2018 10:04:58 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 31 May 2018 10:04:59 GMT
ENV YARN_VERSION=1.6.0
# Thu, 31 May 2018 10:05:03 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 31 May 2018 10:05:03 GMT
CMD ["node"]
# Thu, 31 May 2018 15:31:21 GMT
ENV GOSU_VERSION=1.10
# Thu, 31 May 2018 15:31:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 31 May 2018 15:31:28 GMT
ENV NODE_ENV=production
# Thu, 07 Jun 2018 10:38:33 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Thu, 07 Jun 2018 10:39:09 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 07 Jun 2018 10:39:09 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 07 Jun 2018 10:39:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Jun 2018 10:38:37 GMT
ENV GHOST_VERSION=1.24.1
# Sat, 09 Jun 2018 10:39:44 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Jun 2018 10:39:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Jun 2018 10:43:28 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Jun 2018 10:43:29 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Jun 2018 10:43:29 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Jun 2018 10:43:29 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Jun 2018 10:43:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 10:43:30 GMT
EXPOSE 2368/tcp
# Sat, 09 Jun 2018 10:43:30 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be50895ebdd74a4fc305468004471d00b47cbac985c7b89d912d8693889ea7d1`  
		Last Modified: Thu, 31 May 2018 10:18:31 GMT  
		Size: 4.4 KB (4387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1c7fd7e0bca01b90df154950ea53aac4fbabc9d8b62a21b6adb534a67296074`  
		Last Modified: Thu, 31 May 2018 10:18:31 GMT  
		Size: 117.6 KB (117622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193725372179d54cd209f2df3fe6329b092c1812a5a3dc6328ded6e39b62742d`  
		Last Modified: Thu, 31 May 2018 10:23:27 GMT  
		Size: 33.2 MB (33189611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0abf0672e6a54ad3f73d47f8de3edaa6d086d81bc64603deba84170c1d4ba5`  
		Last Modified: Thu, 31 May 2018 10:23:11 GMT  
		Size: 1.1 MB (1066216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24eb7c6e3d8c7dd4117a489d5700a961ec652e75e088021d74997061a4a2ee08`  
		Last Modified: Thu, 31 May 2018 15:42:54 GMT  
		Size: 480.6 KB (480573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d814c7d3eae69438be7d3184dadd9ae44b99e28ac2a4a39fb76c200248e7bf43`  
		Last Modified: Thu, 07 Jun 2018 10:44:19 GMT  
		Size: 18.4 MB (18432483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04e102a7fa887e844857d85f922c7ba4ba36b35d8cf1d8d56d03022c8e06e489`  
		Last Modified: Sat, 09 Jun 2018 10:44:42 GMT  
		Size: 136.7 MB (136747016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be92aceadb724bcc0cf61d5f2f7e2f7f779c410b5ed753be1b7f03ece58bfd66`  
		Last Modified: Sat, 09 Jun 2018 10:44:06 GMT  
		Size: 14.6 MB (14590040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11801d4efb13d849c99b1200148ba054775aad3c9ea7d166a8d8adced8e66fc1`  
		Last Modified: Sat, 09 Jun 2018 10:43:54 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; ppc64le

```console
$ docker pull ghost@sha256:4fd8a16e59b69acadeffdf344ee423c487c0efa6aaf39bb36fa7447f9cf8a7d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.2 MB (232167305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f53c18691914347d006f4d2ad05e67f970faa3c402d6e7834dff83fb2199ea9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 08:18:08 GMT
ADD file:cc51ef60d7cb3b70c82127b8721de1b99378a9d4fc246dffa2ef5ffa2d9ab805 in / 
# Sat, 28 Apr 2018 08:18:09 GMT
CMD ["bash"]
# Fri, 25 May 2018 08:32:49 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 08:32:53 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 08:48:52 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 08:50:40 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 08:50:43 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 08:50:49 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 08:50:50 GMT
CMD ["node"]
# Fri, 25 May 2018 09:49:23 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 09:49:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 09:49:33 GMT
ENV NODE_ENV=production
# Thu, 07 Jun 2018 08:17:54 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Thu, 07 Jun 2018 08:18:58 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 07 Jun 2018 08:19:01 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 07 Jun 2018 08:19:04 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Jun 2018 08:16:44 GMT
ENV GHOST_VERSION=1.24.1
# Sat, 09 Jun 2018 08:20:36 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Jun 2018 08:20:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Jun 2018 08:25:05 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Jun 2018 08:25:06 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Jun 2018 08:25:07 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Jun 2018 08:25:08 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Jun 2018 08:25:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 08:25:09 GMT
EXPOSE 2368/tcp
# Sat, 09 Jun 2018 08:25:10 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:db919f8ae8ffa4343de2c13a34f5e6bc57b7b4ae820d141c76627bea943cde66`  
		Last Modified: Fri, 25 May 2018 09:06:11 GMT  
		Size: 117.6 KB (117643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e543bc0bae0d2ab1b0edc8a3fd714099e23e7dae64d909c7363e276f5f3aac`  
		Last Modified: Fri, 25 May 2018 09:12:32 GMT  
		Size: 31.0 MB (31034874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b5d1420c5536397987ac94e3d81fc276cfea3e1f9e15ec7e911c05a3a495cd`  
		Last Modified: Fri, 25 May 2018 09:12:23 GMT  
		Size: 1.1 MB (1066230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d8af7ee99bb0ea87ccf8d0511071fe7582c26bffffc659769dedcce8ff4e03`  
		Last Modified: Fri, 25 May 2018 10:02:28 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bb607be26866728b2e11c31dae695b750df9bdf5c1b045a6cd615ea9f3a9c5`  
		Last Modified: Thu, 07 Jun 2018 08:26:41 GMT  
		Size: 18.4 MB (18431529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d771357a6ffeff0dbb1e40a0b354bce220cb791a43b5e1e0606fb1376a0843`  
		Last Modified: Sat, 09 Jun 2018 08:26:26 GMT  
		Size: 136.7 MB (136745681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d61985f27155151f3a79628d8223922b78d2ad3b1e9a33a72a5fcfcf8212b8f`  
		Last Modified: Sat, 09 Jun 2018 08:25:47 GMT  
		Size: 15.0 MB (14979148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d1fed6bda1c0af58d775c7b883586b323b65adc18516a8af3c8e39a0c8a3a1`  
		Last Modified: Sat, 09 Jun 2018 08:25:43 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; s390x

```console
$ docker pull ghost@sha256:27fe8a6c7de0004a60bbb6dbedd8463e7b08743e26770d2401666d13b6dae5f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.9 MB (233859956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c87f0c8999b9f313a5dd404f4b526b0a0fe3b4f270b5f08d0cf4d06b42b1abd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:53 GMT
ADD file:7c773d50957d6184975f5b22ef61757cd979893af5c77cdfef46dd28d8fc0296 in / 
# Sat, 28 Apr 2018 11:42:55 GMT
CMD ["bash"]
# Fri, 25 May 2018 12:27:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 25 May 2018 12:27:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 25 May 2018 12:58:07 GMT
ENV NODE_VERSION=6.14.2
# Fri, 25 May 2018 12:58:26 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 25 May 2018 12:58:27 GMT
ENV YARN_VERSION=1.6.0
# Fri, 25 May 2018 12:58:29 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 25 May 2018 12:58:29 GMT
CMD ["node"]
# Fri, 25 May 2018 13:36:00 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 13:36:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 13:36:02 GMT
ENV NODE_ENV=production
# Thu, 07 Jun 2018 11:41:31 GMT
ENV GHOST_CLI_VERSION=1.8.1
# Thu, 07 Jun 2018 11:42:13 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Thu, 07 Jun 2018 11:42:13 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 07 Jun 2018 11:42:13 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Jun 2018 11:41:26 GMT
ENV GHOST_VERSION=1.24.1
# Sat, 09 Jun 2018 11:41:58 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Jun 2018 11:42:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Jun 2018 11:43:35 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Jun 2018 11:43:35 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Jun 2018 11:43:35 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Jun 2018 11:43:36 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Jun 2018 11:43:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 11:43:36 GMT
EXPOSE 2368/tcp
# Sat, 09 Jun 2018 11:43:36 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:90f987b1e452122d69591a7ad4e1777f6398f71f6898abb7a0af5d8f834e99ce`  
		Last Modified: Fri, 25 May 2018 13:12:17 GMT  
		Size: 117.6 KB (117611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5499a8ebec846942baf6ca7922f6acbf1075c2956ab953243e2e96ed9d25293`  
		Last Modified: Fri, 25 May 2018 13:17:13 GMT  
		Size: 31.7 MB (31679303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89722c717ab8a51082112a4428a1e0d636445024eb95e2308476fa1f8902e5ac`  
		Last Modified: Fri, 25 May 2018 13:17:07 GMT  
		Size: 1.1 MB (1066213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcab469af6630994b3decf13743c14697a3b3bd2209c311ef3113944d5916fb8`  
		Last Modified: Fri, 25 May 2018 13:40:38 GMT  
		Size: 486.8 KB (486826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19d0190179fa955f27c29ecb959145834a9582c4901e14a29ec757c6ebf94e0`  
		Last Modified: Thu, 07 Jun 2018 11:44:39 GMT  
		Size: 18.4 MB (18432833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b358e571981262917c33b64eb89e9ae14779b96cff80bf73bd8c76ab33c3be`  
		Last Modified: Sat, 09 Jun 2018 11:44:13 GMT  
		Size: 136.7 MB (136746294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b840878502463a9cfb65fa789e16b03b62119176c5c705ec4008125ba31d3a5c`  
		Last Modified: Sat, 09 Jun 2018 11:43:56 GMT  
		Size: 15.0 MB (15017588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d4dc82da173601a43b0a3bad02f202df8050cb954d99372f2d095ba6614de3`  
		Last Modified: Sat, 09 Jun 2018 11:43:54 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

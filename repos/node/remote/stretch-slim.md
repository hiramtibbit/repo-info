## `node:stretch-slim`

```console
$ docker pull node@sha256:65142740ff7461aed0a83b1a903c73017667bcff3b32277735e2d26db0a440bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `node:stretch-slim` - linux; amd64

```console
$ docker pull node@sha256:50130b6a7f1ea615483001455bf07eed1ee4a6c6d06c0781521320c5e92a8266
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55729135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8d92f4d4e432819720288d7092773a7ff6d1547cb408c4e03e0231b0ee2c0d0`
-	Default Command: `["node"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:14:42 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 22:59:07 GMT
ENV NODE_VERSION=12.2.0
# Wed, 08 May 2019 22:59:33 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 22:59:34 GMT
ENV YARN_VERSION=1.15.2
# Wed, 08 May 2019 22:59:38 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 22:59:38 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89252b028f01ddb83169c019a9b0699d670133cd36bd332ed455fe90a8ea4483`  
		Last Modified: Wed, 08 May 2019 02:25:36 GMT  
		Size: 4.1 KB (4146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204dbfab402e8f95cc3446a5040764ee5770a5835c92aa4627d5ce85357ec101`  
		Last Modified: Wed, 08 May 2019 23:01:40 GMT  
		Size: 31.9 MB (31910887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6179c77f5eee2723921cb2a1a6100349d96da42d8a814b6cd6156fe4285298`  
		Last Modified: Wed, 08 May 2019 23:01:32 GMT  
		Size: 1.3 MB (1324752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `node:stretch-slim` - linux; arm variant v7

```console
$ docker pull node@sha256:58ad65c762c0b0e3641df9b69307f07ecc118d3fbe73b7ab4e71c178e56635c1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49108349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4f958f8589bfa6731768888153188d1eee249ca9f163e120c84c4ef4fd2089e`
-	Default Command: `["node"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 15:13:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 09 May 2019 11:58:15 GMT
ENV NODE_VERSION=12.2.0
# Thu, 09 May 2019 11:58:49 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 09 May 2019 11:58:51 GMT
ENV YARN_VERSION=1.15.2
# Thu, 09 May 2019 11:58:55 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 09 May 2019 11:58:56 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626773d003732b6357a355496b3568eb47daf3e804053223f39baae73cacf817`  
		Last Modified: Wed, 08 May 2019 15:26:06 GMT  
		Size: 4.2 KB (4159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89798c1803c34d451f4785d302ac9c48b2f04d5a69e657c280fdde28af7ca7c`  
		Last Modified: Thu, 09 May 2019 12:00:57 GMT  
		Size: 28.5 MB (28503177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4dea94d3d5ed82d057a64cb45e33bc6177ded003732fcb1873f582e8535e9a3`  
		Last Modified: Thu, 09 May 2019 12:00:47 GMT  
		Size: 1.3 MB (1324797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `node:stretch-slim` - linux; arm64 variant v8

```console
$ docker pull node@sha256:70212a2c29baabd571ab1d3c20c45e914523fe9433539391ef70ead25ec375a8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52259413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e05b52b58130bd2978e21d696199ef5986ee431c442ef2c88f48a4ee7d53834`
-	Default Command: `["node"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 15:39:28 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 09 May 2019 06:27:49 GMT
ENV NODE_VERSION=12.2.0
# Thu, 09 May 2019 06:28:58 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 09 May 2019 06:28:59 GMT
ENV YARN_VERSION=1.15.2
# Thu, 09 May 2019 06:29:05 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 09 May 2019 06:29:06 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e813c27fe177b7315d10633afc967f85ef6c341a2f537b60e47d5711d235c092`  
		Last Modified: Wed, 08 May 2019 15:54:06 GMT  
		Size: 4.2 KB (4153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18554724cd7f28d2ce4130b2668f1eb83dc16f57779102f5443feb9c84b039d2`  
		Last Modified: Thu, 09 May 2019 06:32:16 GMT  
		Size: 30.6 MB (30596697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4435e80ba10e8da403ecc5ea6e06f2d0a668b828ded339782f83e2ceab850e1e`  
		Last Modified: Thu, 09 May 2019 06:32:01 GMT  
		Size: 1.3 MB (1324748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `node:stretch-slim` - linux; ppc64le

```console
$ docker pull node@sha256:a19207bf4d7feed985aea9b5235e94d5a7543ab3d3db9dad4dd0cc3f4b5cab58
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55071023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc54aa85a8d4a0be6d89df461ca465e54cec68eaf17c174c5b55f901df06043d`
-	Default Command: `["node"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:14:01 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 09 May 2019 00:17:53 GMT
ENV NODE_VERSION=12.2.0
# Thu, 09 May 2019 00:19:36 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 09 May 2019 00:19:42 GMT
ENV YARN_VERSION=1.15.2
# Thu, 09 May 2019 00:19:54 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 09 May 2019 00:19:57 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8942858951da9975540fe5101d6b94c8f553ebbd9fe8614a4dcfd9ec1d21e5c`  
		Last Modified: Wed, 08 May 2019 14:59:21 GMT  
		Size: 4.2 KB (4185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767045a017bd4b904be1fd06e35143b576a63e36478a01b58f569b1c54d478af`  
		Last Modified: Thu, 09 May 2019 00:23:40 GMT  
		Size: 31.0 MB (30997127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f2a65b80e455e53c2da8c75c6abad3f79910dc30df4268b1ec182d0a6e6c85`  
		Last Modified: Thu, 09 May 2019 00:23:32 GMT  
		Size: 1.3 MB (1324797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `node:stretch-slim` - linux; s390x

```console
$ docker pull node@sha256:bb42eb70cd370c98b8691f869772d3641489b951bdf68680b4ff7d5f012feeca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.3 MB (55290621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2c697c33ba3223347dfbe2a6cfdd9081405e3535c73f84cfc912fb9d7202e10`
-	Default Command: `["node"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:12:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 09 May 2019 02:47:17 GMT
ENV NODE_VERSION=12.2.0
# Thu, 09 May 2019 02:48:47 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 09 May 2019 02:48:48 GMT
ENV YARN_VERSION=1.15.2
# Thu, 09 May 2019 02:48:58 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 09 May 2019 02:48:59 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d77ccdc5044aabea621dcafff2d8f0ce8fd083c951109df82537c78478a8abc`  
		Last Modified: Wed, 08 May 2019 14:27:47 GMT  
		Size: 4.2 KB (4158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee0d94123388b07309b0e5647e6a2eeb0c79669d636412b68c89097acc963f9b`  
		Last Modified: Thu, 09 May 2019 02:53:44 GMT  
		Size: 31.6 MB (31622824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68cdafecdee7c05c56e5e84905a204715c2b785898fd086ee70fe78356273bf`  
		Last Modified: Thu, 09 May 2019 02:53:33 GMT  
		Size: 1.3 MB (1324770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:8-jessie-slim`

```console
$ docker pull node@sha256:24d33b17b25bee912360ae524ba18cab0f5f736762129a32f318421687194a58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `node:8-jessie-slim` - linux; amd64

```console
$ docker pull node@sha256:67368b55f237e8f5b1870b5f59111cbd96e981d23e260d0c8a3da67dfb7d6bd1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.4 MB (66416241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8e033c2d1e365e41a8778ef3ed441a57421e919463a8a0d0e36c0d4c15963e3`
-	Default Command: `["node"]`

```dockerfile
# Wed, 08 May 2019 00:30:43 GMT
ADD file:2a97e6ac5eb5fead96f0d2bf3dc1f8732ff2a912450eb7d01a5f81731f66c2b6 in / 
# Wed, 08 May 2019 00:30:43 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:11:41 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 May 2019 02:11:41 GMT
ENV NODE_VERSION=8.16.0
# Wed, 08 May 2019 02:14:07 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 08 May 2019 02:14:08 GMT
ENV YARN_VERSION=1.15.2
# Wed, 08 May 2019 02:14:09 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 08 May 2019 02:14:09 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:80e253c906dee8d7b26d7dafa4166149c57cb763d43ba6d483710370c32da5cd`  
		Last Modified: Wed, 08 May 2019 00:36:18 GMT  
		Size: 30.2 MB (30154060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a30365ec73e7220d6ebc24e5615d62727f4685f84514d71107b6f6b90ef9717`  
		Last Modified: Wed, 08 May 2019 02:25:00 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc406a6d480edafcfad61816061e070044cc9429b6b2605b9b5bb3f19133f56`  
		Last Modified: Wed, 08 May 2019 02:25:09 GMT  
		Size: 34.9 MB (34935370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f62d859443bdf552d679073c9b42fd1e429eeb89f0da2d47209bd884f3b3c364`  
		Last Modified: Wed, 08 May 2019 02:25:01 GMT  
		Size: 1.3 MB (1322415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `node:8-jessie-slim` - linux; arm variant v7

```console
$ docker pull node@sha256:b2c9bcee9eb42f67b9f17c8146d2f14c210607a270a71962e6d5b74bbda18942
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.7 MB (60666886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b26e627a3c92e376a6b916fb31cd718471c906bab17bfbf04982fdd12dc1af65`
-	Default Command: `["node"]`

```dockerfile
# Wed, 27 Mar 2019 12:04:17 GMT
ADD file:41289becce270534012f48a6689e46dd1f96fd510fdd169a3641864a0e35fd2f in / 
# Wed, 27 Mar 2019 12:04:18 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:10:42 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 20 Apr 2019 11:57:58 GMT
ENV NODE_VERSION=8.16.0
# Sat, 20 Apr 2019 11:59:32 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 20 Apr 2019 11:59:33 GMT
ENV YARN_VERSION=1.15.2
# Sat, 20 Apr 2019 11:59:36 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 20 Apr 2019 11:59:36 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:80ee02f1493958c68f241edb0d71b84092fb026a0ffdbdabe9c7243de469f8ba`  
		Last Modified: Wed, 27 Mar 2019 12:11:04 GMT  
		Size: 26.3 MB (26306415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d94fdd65e6bdb9f8df8c4236b7b745b2f77bd3bdfd15c7a43ac01562bd8ab1`  
		Last Modified: Wed, 27 Mar 2019 13:21:04 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a22131ed219e13e9189f28e540dceadc39bb14ab2d22a4a8b89971a2c90fdcf0`  
		Last Modified: Sat, 20 Apr 2019 12:03:29 GMT  
		Size: 33.0 MB (33033600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55f8b60d128cfbc54eaec2d583fd084a0c49dcd3cc7542afab63b3d1ce0c0935`  
		Last Modified: Sat, 20 Apr 2019 12:03:19 GMT  
		Size: 1.3 MB (1322458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `node:8-jessie-slim` - linux; 386

```console
$ docker pull node@sha256:2dea33cca9d30a55206d29c513158cbf405a4a8858f666dbce2605fd1f9db98d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.5 MB (68492404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cee11f9fa429208147e8a514960bd173b317db104bf04a8d31bf8559aefe19c`
-	Default Command: `["node"]`

```dockerfile
# Wed, 27 Mar 2019 10:40:26 GMT
ADD file:e89fbfe1dacb99a1410da8591a637f15be7ea427f1b62531b1b65d120a51065f in / 
# Wed, 27 Mar 2019 10:40:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:56:46 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 20 Apr 2019 10:38:49 GMT
ENV NODE_VERSION=8.16.0
# Sat, 20 Apr 2019 10:42:46 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 20 Apr 2019 10:42:46 GMT
ENV YARN_VERSION=1.15.2
# Sat, 20 Apr 2019 10:42:47 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 20 Apr 2019 10:42:47 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:6f2bc3c048dc6c822ca9857e6126bb9093bbe3b765c2ead20413c77e88de8d5f`  
		Last Modified: Wed, 27 Mar 2019 10:47:04 GMT  
		Size: 30.3 MB (30299096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9525284a3c5212b0990c7b9d96115a2c94edf5cdefe2f106207776baa372e14`  
		Last Modified: Wed, 27 Mar 2019 16:11:12 GMT  
		Size: 4.4 KB (4383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a793842941e0bc64cc88e4d8b5e2d9fdbb0b7cfbedf3e6b42dac5710215cf78c`  
		Last Modified: Sat, 20 Apr 2019 12:10:07 GMT  
		Size: 36.9 MB (36866513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aceb226d3b76eb30ec16a8a484a657eb7320c06e9231b51d49aceb2564b2c2d`  
		Last Modified: Sat, 20 Apr 2019 12:09:59 GMT  
		Size: 1.3 MB (1322412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

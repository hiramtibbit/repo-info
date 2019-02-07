## `node:8-jessie-slim`

```console
$ docker pull node@sha256:d1e4445d8d572c360d858c5f7f35443e2e486af592d3c50add9c91b3783af7c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `node:8-jessie-slim` - linux; amd64

```console
$ docker pull node@sha256:0594dd5de5f978cbf6e789e8587dabd6891b0686fb26c5be86418e5978b2e8fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.4 MB (66401309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dd9d59818f62bdd4f268a59561ca63a4a745145e17081a3b83c7dacc9c690ec`
-	Default Command: `["node"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:43 GMT
ADD file:5ac7d2fc09752a0bae6b0b631692b7ae99220c3957a18be70338e3a63a279c11 in / 
# Wed, 06 Feb 2019 03:27:44 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:44:45 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 06 Feb 2019 06:44:45 GMT
ENV NODE_VERSION=8.15.0
# Wed, 06 Feb 2019 06:47:07 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Feb 2019 06:47:07 GMT
ENV YARN_VERSION=1.12.3
# Wed, 06 Feb 2019 06:47:08 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Feb 2019 06:47:09 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:9a6b35880e8b6f720a2563dacfd85c994ea017630d1bd1e8ba8c0706cd0bdf9e`  
		Last Modified: Wed, 06 Feb 2019 03:33:38 GMT  
		Size: 30.2 MB (30151859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6c5f3f28765e2250079a5ec36f051834116e46540116a46671465e3b82acd1`  
		Last Modified: Wed, 06 Feb 2019 06:56:39 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6bb1dd2e3269815d57cc8699b2a9bc59d128939197023bb78d6c2de2d52c3f`  
		Last Modified: Wed, 06 Feb 2019 06:56:47 GMT  
		Size: 34.9 MB (34925951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b67ff9469121b2cc1fe8bdf0bed8701ab1b0aed35c7b2f4887447aaaa774af`  
		Last Modified: Wed, 06 Feb 2019 06:56:39 GMT  
		Size: 1.3 MB (1319099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `node:8-jessie-slim` - linux; arm variant v7

```console
$ docker pull node@sha256:b4ef18d26729b68895931ee6a0abb60ad688ef6dbf7a70693af772b6180eb818
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.7 MB (60660095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c699d3d3fa0ec3e95b3b08049b342e3a6d2580dfe793cf4ccd0046d28ba4f37`
-	Default Command: `["node"]`

```dockerfile
# Wed, 23 Jan 2019 12:59:55 GMT
ADD file:19631047950a3f9967d7d8cbea3b84a0cddf79ddd9f60830bfc47d72d64cc7f9 in / 
# Wed, 23 Jan 2019 12:59:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:28:19 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Jan 2019 14:28:19 GMT
ENV NODE_VERSION=8.15.0
# Wed, 23 Jan 2019 14:30:00 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 23 Jan 2019 14:30:01 GMT
ENV YARN_VERSION=1.12.3
# Wed, 23 Jan 2019 14:30:03 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 23 Jan 2019 14:30:04 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:885c59d73b75e3d8332a6700e65477f75827110d7f375fa1fc28b4d7a4d59d8c`  
		Last Modified: Wed, 23 Jan 2019 13:09:36 GMT  
		Size: 26.3 MB (26304841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a89c7bfeeecba6d895bd8f66f00342bf6ed620593b78427872f98504cd88315`  
		Last Modified: Wed, 23 Jan 2019 14:41:00 GMT  
		Size: 4.4 KB (4419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d32b8eb73521e93525b2a2d2c3c75d7798201d9bac053c86b1a6974037417bf`  
		Last Modified: Wed, 23 Jan 2019 14:41:12 GMT  
		Size: 33.0 MB (33031716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9bc1ac1f09c60551fe8d18127885b9647ee0dc59049a7fba700aa857aca7ab`  
		Last Modified: Wed, 23 Jan 2019 14:41:01 GMT  
		Size: 1.3 MB (1319119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `node:8-jessie-slim` - linux; 386

```console
$ docker pull node@sha256:3c280a8ab1f38881288e36a2fdac832f8f51f3d5c137f36f573fc8176ad9b7d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.5 MB (68477455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2d10b07a27e57113a6c2bfa35a8c7196729e4a57044234858d86bace8968627`
-	Default Command: `["node"]`

```dockerfile
# Wed, 06 Feb 2019 11:58:59 GMT
ADD file:0f5ce19a631296a55839476a8427a6bb92538d0d63d89f0dfbeb8a1c8b0df1ff in / 
# Wed, 06 Feb 2019 11:59:00 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 04:18:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 07 Feb 2019 04:18:18 GMT
ENV NODE_VERSION=8.15.0
# Thu, 07 Feb 2019 04:22:09 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 07 Feb 2019 04:22:10 GMT
ENV YARN_VERSION=1.12.3
# Thu, 07 Feb 2019 04:22:11 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 07 Feb 2019 04:22:11 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:c4ddbb4ee60739923db706a335f6f79e8a70a6a62aa8917fc9cc3b04b936afe5`  
		Last Modified: Wed, 06 Feb 2019 12:04:43 GMT  
		Size: 30.3 MB (30293283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:784b3cd8fff44ff218dfc0549d358d3c611619895a315dd55049981ae2a4cac9`  
		Last Modified: Thu, 07 Feb 2019 04:28:41 GMT  
		Size: 4.4 KB (4386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2711937842e5d9659bc133b018bd71f438abbf7d4315e89d15e2d71c8d2a6c12`  
		Last Modified: Thu, 07 Feb 2019 04:28:50 GMT  
		Size: 36.9 MB (36860685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b49eeb3b9a83449746ebeea9ec9c2eee15cacaf3bbab88360f2973ea1c6772`  
		Last Modified: Thu, 07 Feb 2019 04:28:42 GMT  
		Size: 1.3 MB (1319101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

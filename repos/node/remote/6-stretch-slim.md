## `node:6-stretch-slim`

```console
$ docker pull node@sha256:ba92162c590c11963ce676b2cc747b1b0309d22759fe2c9a7b71b0cfae77ed0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `node:6-stretch-slim` - linux; amd64

```console
$ docker pull node@sha256:22d581eee8bf70ac574a910c5a17f900cf6726f1d58d460b799bf2a8a2053d82
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48664869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac4804e08f165df5a0a82368105bde30075941a7b76dd301a145a559eca5b289`
-	Default Command: `["node"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 01:40:17 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Jan 2019 01:44:05 GMT
ENV NODE_VERSION=6.16.0
# Wed, 23 Jan 2019 01:44:22 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 23 Jan 2019 01:44:22 GMT
ENV YARN_VERSION=1.12.3
# Wed, 23 Jan 2019 01:44:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 23 Jan 2019 01:44:26 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe40c2f302dba633d57bef2c4c9d12172f36811251bf361bd47e359d7f71b03c`  
		Last Modified: Wed, 23 Jan 2019 01:50:57 GMT  
		Size: 4.1 KB (4144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccaa9c635d85a30f35e8e369fb373296d1ce0bc5b5dc127395861b0cc8f854d0`  
		Last Modified: Wed, 23 Jan 2019 01:52:00 GMT  
		Size: 24.8 MB (24838565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52603b3a347cc02c85b1802f5a8d68007cf9fc5fa2fe0a187fce5bc60487c212`  
		Last Modified: Wed, 23 Jan 2019 01:51:54 GMT  
		Size: 1.3 MB (1321453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `node:6-stretch-slim` - linux; arm variant v7

```console
$ docker pull node@sha256:b998dd77a2547f525a3c2dc9ceb6428098d42e1e85b03568b2ed1250fa94a6cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.9 MB (42891916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dd31cb7dd13149f71506b85c1feea7c24409828a502971b20397a86427cbade`
-	Default Command: `["node"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:30:42 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Jan 2019 14:34:07 GMT
ENV NODE_VERSION=6.16.0
# Wed, 23 Jan 2019 14:34:37 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 23 Jan 2019 14:34:38 GMT
ENV YARN_VERSION=1.12.3
# Wed, 23 Jan 2019 14:34:45 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 23 Jan 2019 14:34:46 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f4692f2fb079485f299b39d614d6d77d41b0d9c83afbae32744cb050cf8f52`  
		Last Modified: Wed, 23 Jan 2019 14:41:47 GMT  
		Size: 4.2 KB (4162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faaefa618b091fde87d6adbdc2eb2b56a382eff044c6e601650ff9c0a66b0bf5`  
		Last Modified: Wed, 23 Jan 2019 14:43:12 GMT  
		Size: 22.3 MB (22276009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2247dbb143c669afe4a1b33cbe0a65f916dbfd08fee986aef0919483d4433efe`  
		Last Modified: Wed, 23 Jan 2019 14:43:05 GMT  
		Size: 1.3 MB (1321459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `node:6-stretch-slim` - linux; 386

```console
$ docker pull node@sha256:c534a3bc5109f85437c179f5c63a07cb70bbe9a5f3d5bb9529d0493827d4b63f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49088772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47b710f637828acead8cfa58cd017698ec4dcc168a22ec6d31c78bc1b6d7d8b7`
-	Default Command: `["node"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:41:49 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Jan 2019 13:46:52 GMT
ENV NODE_VERSION=6.16.0
# Wed, 23 Jan 2019 13:47:12 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       4ED778F539E3634C779C87C6D7062848A1AB005C       A48C2BEE680E841632CD4E44F07496B3EB3C1762       B9E2F5981AA6E0CD28160D9FF13993A75599653C     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 23 Jan 2019 13:47:13 GMT
ENV YARN_VERSION=1.12.3
# Wed, 23 Jan 2019 13:47:16 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 23 Jan 2019 13:47:16 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c92eb48bd2ab47527c451fa10548490aecbca01a92bca802bca12db10e6af1`  
		Last Modified: Wed, 23 Jan 2019 13:48:39 GMT  
		Size: 4.1 KB (4129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9e79f4dbb58467552fabe01a2d55efd6ed396e4891b5aef242bb318f25e820`  
		Last Modified: Wed, 23 Jan 2019 13:49:44 GMT  
		Size: 24.6 MB (24616076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e6d343a168b93ef60d9c96ab7830db10904de06fc6696930126ac983652e630`  
		Last Modified: Wed, 23 Jan 2019 13:49:37 GMT  
		Size: 1.3 MB (1321450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

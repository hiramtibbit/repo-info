<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rocket.chat`

-	[`rocket.chat:0`](#rocketchat0)
-	[`rocket.chat:0.74`](#rocketchat074)
-	[`rocket.chat:0.74.3`](#rocketchat0743)
-	[`rocket.chat:latest`](#rocketchatlatest)

## `rocket.chat:0`

```console
$ docker pull rocket.chat@sha256:e5ae4abd3017e96498a8f271ccf8e92dae73c45cd45af18a9a4fd8fbb393b7ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rocket.chat:0` - linux; amd64

```console
$ docker pull rocket.chat@sha256:7cb49f2e4ae4a9c4a6945dcb6ec63e04edd5309ca12a6adb273b8c35fe06beb8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.0 MB (212034561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e42d839f6de33f3d33e300f1f090c304c720f3478023bc609156002dca95df42`
-	Default Command: `["node","main.js"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:43 GMT
ADD file:5ac7d2fc09752a0bae6b0b631692b7ae99220c3957a18be70338e3a63a279c11 in / 
# Wed, 06 Feb 2019 03:27:44 GMT
CMD ["bash"]
# Fri, 01 Mar 2019 22:21:33 GMT
RUN gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys DD8F2338BAE7501E3DD5AC78C273792F7D83545D
# Fri, 01 Mar 2019 22:21:33 GMT
ENV NODE_VERSION=8.11.4
# Fri, 01 Mar 2019 22:21:33 GMT
ENV NODE_ENV=production
# Fri, 01 Mar 2019 22:23:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates curl; 	rm -rf /var/lib/apt/lists/*; 	curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz"; 	curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"; 	gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc; 	grep " node-v$NODE_VERSION-linux-x64.tar.gz\$" SHASUMS256.txt | sha256sum -c -; 	tar -xf "node-v$NODE_VERSION-linux-x64.tar.gz" -C /usr/local --strip-components=1 --no-same-owner; 	rm "node-v$NODE_VERSION-linux-x64.tar.gz" SHASUMS256.txt.asc SHASUMS256.txt; 	npm cache clear --force
# Fri, 01 Mar 2019 22:23:25 GMT
MAINTAINER buildmaster@rocket.chat
# Fri, 01 Mar 2019 22:23:26 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat &&  mkdir -p /app/uploads &&  chown rocketchat.rocketchat /app/uploads
# Fri, 01 Mar 2019 22:23:26 GMT
VOLUME [/app/uploads]
# Fri, 01 Mar 2019 22:23:27 GMT
RUN gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Fri, 01 Mar 2019 22:23:27 GMT
ENV RC_VERSION=0.74.3
# Fri, 01 Mar 2019 22:23:27 GMT
WORKDIR /app
# Fri, 01 Mar 2019 22:24:07 GMT
RUN curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install &&  npm cache clear --force &&  chown -R rocketchat:rocketchat /app
# Fri, 01 Mar 2019 22:24:09 GMT
USER rocketchat
# Fri, 01 Mar 2019 22:24:09 GMT
WORKDIR /app/bundle
# Fri, 01 Mar 2019 22:24:09 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Fri, 01 Mar 2019 22:24:09 GMT
EXPOSE 3000
# Fri, 01 Mar 2019 22:24:10 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:9a6b35880e8b6f720a2563dacfd85c994ea017630d1bd1e8ba8c0706cd0bdf9e`  
		Last Modified: Wed, 06 Feb 2019 03:33:38 GMT  
		Size: 30.2 MB (30151859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be40ddaedf71e4fa9db7468077122800496ee6d7ee0623099c4d9684567087d`  
		Last Modified: Fri, 01 Mar 2019 22:24:19 GMT  
		Size: 9.8 KB (9808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3d37d882b306c60a95564d9aa0bf129cf65acd9337ca88fa79562416280f28`  
		Last Modified: Fri, 01 Mar 2019 22:24:25 GMT  
		Size: 23.2 MB (23208257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46bb7dfd05405b42ec8a75c32e127d2dba69208c8006302619d857752c17409`  
		Last Modified: Fri, 01 Mar 2019 22:24:19 GMT  
		Size: 2.1 KB (2146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db54c66d5baa6658afbda268e0e76db7ed6a017a5bf9529bc0bd1db9d06fd9e1`  
		Last Modified: Fri, 01 Mar 2019 22:24:19 GMT  
		Size: 8.1 KB (8122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781f600ba4ee56f6f8870aeff997f2c9355a4d85832e52d7acd2742ef8ffa7f6`  
		Last Modified: Fri, 01 Mar 2019 22:24:56 GMT  
		Size: 158.7 MB (158654369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rocket.chat:0.74`

```console
$ docker pull rocket.chat@sha256:e5ae4abd3017e96498a8f271ccf8e92dae73c45cd45af18a9a4fd8fbb393b7ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rocket.chat:0.74` - linux; amd64

```console
$ docker pull rocket.chat@sha256:7cb49f2e4ae4a9c4a6945dcb6ec63e04edd5309ca12a6adb273b8c35fe06beb8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.0 MB (212034561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e42d839f6de33f3d33e300f1f090c304c720f3478023bc609156002dca95df42`
-	Default Command: `["node","main.js"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:43 GMT
ADD file:5ac7d2fc09752a0bae6b0b631692b7ae99220c3957a18be70338e3a63a279c11 in / 
# Wed, 06 Feb 2019 03:27:44 GMT
CMD ["bash"]
# Fri, 01 Mar 2019 22:21:33 GMT
RUN gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys DD8F2338BAE7501E3DD5AC78C273792F7D83545D
# Fri, 01 Mar 2019 22:21:33 GMT
ENV NODE_VERSION=8.11.4
# Fri, 01 Mar 2019 22:21:33 GMT
ENV NODE_ENV=production
# Fri, 01 Mar 2019 22:23:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates curl; 	rm -rf /var/lib/apt/lists/*; 	curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz"; 	curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"; 	gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc; 	grep " node-v$NODE_VERSION-linux-x64.tar.gz\$" SHASUMS256.txt | sha256sum -c -; 	tar -xf "node-v$NODE_VERSION-linux-x64.tar.gz" -C /usr/local --strip-components=1 --no-same-owner; 	rm "node-v$NODE_VERSION-linux-x64.tar.gz" SHASUMS256.txt.asc SHASUMS256.txt; 	npm cache clear --force
# Fri, 01 Mar 2019 22:23:25 GMT
MAINTAINER buildmaster@rocket.chat
# Fri, 01 Mar 2019 22:23:26 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat &&  mkdir -p /app/uploads &&  chown rocketchat.rocketchat /app/uploads
# Fri, 01 Mar 2019 22:23:26 GMT
VOLUME [/app/uploads]
# Fri, 01 Mar 2019 22:23:27 GMT
RUN gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Fri, 01 Mar 2019 22:23:27 GMT
ENV RC_VERSION=0.74.3
# Fri, 01 Mar 2019 22:23:27 GMT
WORKDIR /app
# Fri, 01 Mar 2019 22:24:07 GMT
RUN curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install &&  npm cache clear --force &&  chown -R rocketchat:rocketchat /app
# Fri, 01 Mar 2019 22:24:09 GMT
USER rocketchat
# Fri, 01 Mar 2019 22:24:09 GMT
WORKDIR /app/bundle
# Fri, 01 Mar 2019 22:24:09 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Fri, 01 Mar 2019 22:24:09 GMT
EXPOSE 3000
# Fri, 01 Mar 2019 22:24:10 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:9a6b35880e8b6f720a2563dacfd85c994ea017630d1bd1e8ba8c0706cd0bdf9e`  
		Last Modified: Wed, 06 Feb 2019 03:33:38 GMT  
		Size: 30.2 MB (30151859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be40ddaedf71e4fa9db7468077122800496ee6d7ee0623099c4d9684567087d`  
		Last Modified: Fri, 01 Mar 2019 22:24:19 GMT  
		Size: 9.8 KB (9808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3d37d882b306c60a95564d9aa0bf129cf65acd9337ca88fa79562416280f28`  
		Last Modified: Fri, 01 Mar 2019 22:24:25 GMT  
		Size: 23.2 MB (23208257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46bb7dfd05405b42ec8a75c32e127d2dba69208c8006302619d857752c17409`  
		Last Modified: Fri, 01 Mar 2019 22:24:19 GMT  
		Size: 2.1 KB (2146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db54c66d5baa6658afbda268e0e76db7ed6a017a5bf9529bc0bd1db9d06fd9e1`  
		Last Modified: Fri, 01 Mar 2019 22:24:19 GMT  
		Size: 8.1 KB (8122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781f600ba4ee56f6f8870aeff997f2c9355a4d85832e52d7acd2742ef8ffa7f6`  
		Last Modified: Fri, 01 Mar 2019 22:24:56 GMT  
		Size: 158.7 MB (158654369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rocket.chat:0.74.3`

```console
$ docker pull rocket.chat@sha256:e5ae4abd3017e96498a8f271ccf8e92dae73c45cd45af18a9a4fd8fbb393b7ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rocket.chat:0.74.3` - linux; amd64

```console
$ docker pull rocket.chat@sha256:7cb49f2e4ae4a9c4a6945dcb6ec63e04edd5309ca12a6adb273b8c35fe06beb8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.0 MB (212034561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e42d839f6de33f3d33e300f1f090c304c720f3478023bc609156002dca95df42`
-	Default Command: `["node","main.js"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:43 GMT
ADD file:5ac7d2fc09752a0bae6b0b631692b7ae99220c3957a18be70338e3a63a279c11 in / 
# Wed, 06 Feb 2019 03:27:44 GMT
CMD ["bash"]
# Fri, 01 Mar 2019 22:21:33 GMT
RUN gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys DD8F2338BAE7501E3DD5AC78C273792F7D83545D
# Fri, 01 Mar 2019 22:21:33 GMT
ENV NODE_VERSION=8.11.4
# Fri, 01 Mar 2019 22:21:33 GMT
ENV NODE_ENV=production
# Fri, 01 Mar 2019 22:23:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates curl; 	rm -rf /var/lib/apt/lists/*; 	curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz"; 	curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"; 	gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc; 	grep " node-v$NODE_VERSION-linux-x64.tar.gz\$" SHASUMS256.txt | sha256sum -c -; 	tar -xf "node-v$NODE_VERSION-linux-x64.tar.gz" -C /usr/local --strip-components=1 --no-same-owner; 	rm "node-v$NODE_VERSION-linux-x64.tar.gz" SHASUMS256.txt.asc SHASUMS256.txt; 	npm cache clear --force
# Fri, 01 Mar 2019 22:23:25 GMT
MAINTAINER buildmaster@rocket.chat
# Fri, 01 Mar 2019 22:23:26 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat &&  mkdir -p /app/uploads &&  chown rocketchat.rocketchat /app/uploads
# Fri, 01 Mar 2019 22:23:26 GMT
VOLUME [/app/uploads]
# Fri, 01 Mar 2019 22:23:27 GMT
RUN gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Fri, 01 Mar 2019 22:23:27 GMT
ENV RC_VERSION=0.74.3
# Fri, 01 Mar 2019 22:23:27 GMT
WORKDIR /app
# Fri, 01 Mar 2019 22:24:07 GMT
RUN curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install &&  npm cache clear --force &&  chown -R rocketchat:rocketchat /app
# Fri, 01 Mar 2019 22:24:09 GMT
USER rocketchat
# Fri, 01 Mar 2019 22:24:09 GMT
WORKDIR /app/bundle
# Fri, 01 Mar 2019 22:24:09 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Fri, 01 Mar 2019 22:24:09 GMT
EXPOSE 3000
# Fri, 01 Mar 2019 22:24:10 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:9a6b35880e8b6f720a2563dacfd85c994ea017630d1bd1e8ba8c0706cd0bdf9e`  
		Last Modified: Wed, 06 Feb 2019 03:33:38 GMT  
		Size: 30.2 MB (30151859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be40ddaedf71e4fa9db7468077122800496ee6d7ee0623099c4d9684567087d`  
		Last Modified: Fri, 01 Mar 2019 22:24:19 GMT  
		Size: 9.8 KB (9808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3d37d882b306c60a95564d9aa0bf129cf65acd9337ca88fa79562416280f28`  
		Last Modified: Fri, 01 Mar 2019 22:24:25 GMT  
		Size: 23.2 MB (23208257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46bb7dfd05405b42ec8a75c32e127d2dba69208c8006302619d857752c17409`  
		Last Modified: Fri, 01 Mar 2019 22:24:19 GMT  
		Size: 2.1 KB (2146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db54c66d5baa6658afbda268e0e76db7ed6a017a5bf9529bc0bd1db9d06fd9e1`  
		Last Modified: Fri, 01 Mar 2019 22:24:19 GMT  
		Size: 8.1 KB (8122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781f600ba4ee56f6f8870aeff997f2c9355a4d85832e52d7acd2742ef8ffa7f6`  
		Last Modified: Fri, 01 Mar 2019 22:24:56 GMT  
		Size: 158.7 MB (158654369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rocket.chat:latest`

```console
$ docker pull rocket.chat@sha256:ca5c48aeb4a6197c1b3a5ef9115bce1411a24bccaa5fcb08f490a7af8a65c18f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rocket.chat:latest` - linux; amd64

```console
$ docker pull rocket.chat@sha256:475a38741f4d3f949f3457b4a5085b947c49869110c94f88d7acb51236618d4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.9 MB (232861815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ac37ae018732e47601bf8180749fb0adb330f9940e597366c5f843aa8d69fd5`
-	Default Command: `["node","main.js"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:05:22 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 04 Sep 2018 22:05:23 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 04 Sep 2018 22:05:23 GMT
ENV NODE_VERSION=8.11.4
# Tue, 04 Sep 2018 22:05:57 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 04 Sep 2018 22:05:58 GMT
ENV YARN_VERSION=1.6.0
# Tue, 04 Sep 2018 22:05:59 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 04 Sep 2018 22:05:59 GMT
CMD ["node"]
# Wed, 05 Sep 2018 08:41:07 GMT
MAINTAINER buildmaster@rocket.chat
# Wed, 05 Sep 2018 08:41:08 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat &&  mkdir -p /app/uploads &&  chown rocketchat.rocketchat /app/uploads
# Wed, 05 Sep 2018 08:41:08 GMT
VOLUME [/app/uploads]
# Wed, 05 Sep 2018 08:41:09 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Sat, 03 Nov 2018 00:33:03 GMT
ENV RC_VERSION=0.71.1
# Sat, 03 Nov 2018 00:33:03 GMT
WORKDIR /app
# Sat, 03 Nov 2018 00:33:45 GMT
RUN curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Sat, 03 Nov 2018 00:33:48 GMT
USER [rocketchat]
# Sat, 03 Nov 2018 00:33:48 GMT
WORKDIR /app/bundle
# Sat, 03 Nov 2018 00:33:49 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Sat, 03 Nov 2018 00:33:49 GMT
EXPOSE 3000/tcp
# Sat, 03 Nov 2018 00:33:49 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b186cf19f9edbd5ee7b8f79fb5fa0a8a21c4f4119149d8f900b2f4f00b440815`  
		Last Modified: Tue, 04 Sep 2018 22:51:46 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eadbf83122625b628be463f73c3c568462c43eaaeb284b83692ad754e5a126be`  
		Last Modified: Tue, 04 Sep 2018 22:51:46 GMT  
		Size: 124.7 KB (124684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f59c2d471060372ce2f1ecadf6ebd0ef509c38ddbb741b103249574250fd725`  
		Last Modified: Tue, 04 Sep 2018 22:51:53 GMT  
		Size: 35.2 MB (35220388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ed7d64abe123ebfe43e3f2c3159f1bec4c06bbe96a66c961c0237f64470e89`  
		Last Modified: Tue, 04 Sep 2018 22:51:46 GMT  
		Size: 1.1 MB (1073252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c605c1dcf6ea2ebe4f4a22935e4f9511178a8194dd6cbac794d155fdb4cf79`  
		Last Modified: Wed, 05 Sep 2018 08:42:27 GMT  
		Size: 2.2 KB (2186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c374c906f2b065cb187f3dda90e3187e053a335d717ff3918db6a0ab01847e10`  
		Last Modified: Wed, 05 Sep 2018 08:42:27 GMT  
		Size: 138.1 KB (138136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67089d8324e0106930b038c5c95a23f8809cb862734e0f449848458b2dc2f60d`  
		Last Modified: Sat, 03 Nov 2018 00:34:57 GMT  
		Size: 166.2 MB (166178205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

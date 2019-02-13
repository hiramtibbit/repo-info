<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `irssi`

-	[`irssi:1`](#irssi1)
-	[`irssi:1.2`](#irssi12)
-	[`irssi:1.2.0`](#irssi120)
-	[`irssi:1.2.0-alpine`](#irssi120-alpine)
-	[`irssi:1.2-alpine`](#irssi12-alpine)
-	[`irssi:1-alpine`](#irssi1-alpine)
-	[`irssi:alpine`](#irssialpine)
-	[`irssi:latest`](#irssilatest)

## `irssi:1`

```console
$ docker pull irssi@sha256:a850dff467faa86db6d4e86df9c0de777c23d97b09836a8b99f39c18ee0ed438
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `irssi:1` - linux; amd64

```console
$ docker pull irssi@sha256:07175b60b888a2aa5eb42dc3ae2d0b44627f84605aa83d5bff598f978ccbae39
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51510976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:689beae2b0b02c3215576f2c04d91a6f6f204ecc0dcc42ede6fa17382a887f87`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:11:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:11:36 GMT
ENV HOME=/home/user
# Wed, 06 Feb 2019 07:11:38 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 06 Feb 2019 07:11:39 GMT
ENV LANG=C.UTF-8
# Wed, 13 Feb 2019 21:23:23 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 13 Feb 2019 21:24:40 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Feb 2019 21:24:40 GMT
WORKDIR /home/user
# Wed, 13 Feb 2019 21:24:40 GMT
USER user
# Wed, 13 Feb 2019 21:24:40 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445916c679a9dc3211b3111e6277867d902dc290da8c4d3102644f2d27a7f675`  
		Last Modified: Wed, 06 Feb 2019 07:13:10 GMT  
		Size: 18.7 MB (18726913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89849a0ec3a001f4b3c8a83c119a74d4d317a797710e92480dc384a0be23a2f2`  
		Last Modified: Wed, 06 Feb 2019 07:13:06 GMT  
		Size: 4.2 KB (4170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db094ae5310906792158b1e29a8f566db60e2ce686f5c5c53f190957f375c1de`  
		Last Modified: Wed, 13 Feb 2019 21:25:50 GMT  
		Size: 10.3 MB (10279605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.2`

```console
$ docker pull irssi@sha256:a850dff467faa86db6d4e86df9c0de777c23d97b09836a8b99f39c18ee0ed438
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `irssi:1.2` - linux; amd64

```console
$ docker pull irssi@sha256:07175b60b888a2aa5eb42dc3ae2d0b44627f84605aa83d5bff598f978ccbae39
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51510976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:689beae2b0b02c3215576f2c04d91a6f6f204ecc0dcc42ede6fa17382a887f87`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:11:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:11:36 GMT
ENV HOME=/home/user
# Wed, 06 Feb 2019 07:11:38 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 06 Feb 2019 07:11:39 GMT
ENV LANG=C.UTF-8
# Wed, 13 Feb 2019 21:23:23 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 13 Feb 2019 21:24:40 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Feb 2019 21:24:40 GMT
WORKDIR /home/user
# Wed, 13 Feb 2019 21:24:40 GMT
USER user
# Wed, 13 Feb 2019 21:24:40 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445916c679a9dc3211b3111e6277867d902dc290da8c4d3102644f2d27a7f675`  
		Last Modified: Wed, 06 Feb 2019 07:13:10 GMT  
		Size: 18.7 MB (18726913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89849a0ec3a001f4b3c8a83c119a74d4d317a797710e92480dc384a0be23a2f2`  
		Last Modified: Wed, 06 Feb 2019 07:13:06 GMT  
		Size: 4.2 KB (4170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db094ae5310906792158b1e29a8f566db60e2ce686f5c5c53f190957f375c1de`  
		Last Modified: Wed, 13 Feb 2019 21:25:50 GMT  
		Size: 10.3 MB (10279605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.2.0`

```console
$ docker pull irssi@sha256:a850dff467faa86db6d4e86df9c0de777c23d97b09836a8b99f39c18ee0ed438
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `irssi:1.2.0` - linux; amd64

```console
$ docker pull irssi@sha256:07175b60b888a2aa5eb42dc3ae2d0b44627f84605aa83d5bff598f978ccbae39
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51510976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:689beae2b0b02c3215576f2c04d91a6f6f204ecc0dcc42ede6fa17382a887f87`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:11:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:11:36 GMT
ENV HOME=/home/user
# Wed, 06 Feb 2019 07:11:38 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 06 Feb 2019 07:11:39 GMT
ENV LANG=C.UTF-8
# Wed, 13 Feb 2019 21:23:23 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 13 Feb 2019 21:24:40 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Feb 2019 21:24:40 GMT
WORKDIR /home/user
# Wed, 13 Feb 2019 21:24:40 GMT
USER user
# Wed, 13 Feb 2019 21:24:40 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445916c679a9dc3211b3111e6277867d902dc290da8c4d3102644f2d27a7f675`  
		Last Modified: Wed, 06 Feb 2019 07:13:10 GMT  
		Size: 18.7 MB (18726913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89849a0ec3a001f4b3c8a83c119a74d4d317a797710e92480dc384a0be23a2f2`  
		Last Modified: Wed, 06 Feb 2019 07:13:06 GMT  
		Size: 4.2 KB (4170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db094ae5310906792158b1e29a8f566db60e2ce686f5c5c53f190957f375c1de`  
		Last Modified: Wed, 13 Feb 2019 21:25:50 GMT  
		Size: 10.3 MB (10279605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.2.0-alpine`

```console
$ docker pull irssi@sha256:b2b474d8c5c2c782db4df8b1197aeea6ea09298da9c4704ecd3fe3d0bac6da9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `irssi:1.2.0-alpine` - linux; amd64

```console
$ docker pull irssi@sha256:16461bd228bcd15f76629f73a37abd08f2bc1579e957bd07017679dd0343d544
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 MB (19233187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f399c2290144f12ea88262c334f39e7155b483793e08bd7db1f8ca8934dc03fc`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:40 GMT
ADD file:9c13ab388a8e4c772b97ec8f6d2c576bece32cecdcfb6fee5175e1d3f613dd12 in / 
# Wed, 30 Jan 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:37:25 GMT
RUN apk --no-cache add 	ca-certificates
# Wed, 30 Jan 2019 22:37:25 GMT
ENV HOME=/home/user
# Wed, 30 Jan 2019 22:37:27 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 30 Jan 2019 22:37:27 GMT
ENV LANG=C.UTF-8
# Wed, 13 Feb 2019 21:24:51 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 13 Feb 2019 21:25:37 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Wed, 13 Feb 2019 21:25:38 GMT
WORKDIR /home/user
# Wed, 13 Feb 2019 21:25:38 GMT
USER user
# Wed, 13 Feb 2019 21:25:38 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:48ecbb6b270eb481cb6df2a5b0332de294ec729e1968e92d725f1329637ce01b`  
		Last Modified: Wed, 30 Jan 2019 22:21:00 GMT  
		Size: 2.1 MB (2107173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d1ff0ff3bb03bf3fdc52dd4bc4d4c61c6a84e6b73083d0654b24c97c5a884b`  
		Last Modified: Wed, 30 Jan 2019 22:38:57 GMT  
		Size: 308.5 KB (308503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89d20d4727a1b2e481d5b7c6a6c00bd64e9baeb8d9309b75fe45f1f73c00609`  
		Last Modified: Wed, 30 Jan 2019 22:38:57 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f21bfc15014cef0ab59334391327b4a0ba99a44fa4df49a44fcc40d3b161b86`  
		Last Modified: Wed, 13 Feb 2019 21:26:02 GMT  
		Size: 16.8 MB (16816250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.2-alpine`

```console
$ docker pull irssi@sha256:b2b474d8c5c2c782db4df8b1197aeea6ea09298da9c4704ecd3fe3d0bac6da9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `irssi:1.2-alpine` - linux; amd64

```console
$ docker pull irssi@sha256:16461bd228bcd15f76629f73a37abd08f2bc1579e957bd07017679dd0343d544
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 MB (19233187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f399c2290144f12ea88262c334f39e7155b483793e08bd7db1f8ca8934dc03fc`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:40 GMT
ADD file:9c13ab388a8e4c772b97ec8f6d2c576bece32cecdcfb6fee5175e1d3f613dd12 in / 
# Wed, 30 Jan 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:37:25 GMT
RUN apk --no-cache add 	ca-certificates
# Wed, 30 Jan 2019 22:37:25 GMT
ENV HOME=/home/user
# Wed, 30 Jan 2019 22:37:27 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 30 Jan 2019 22:37:27 GMT
ENV LANG=C.UTF-8
# Wed, 13 Feb 2019 21:24:51 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 13 Feb 2019 21:25:37 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Wed, 13 Feb 2019 21:25:38 GMT
WORKDIR /home/user
# Wed, 13 Feb 2019 21:25:38 GMT
USER user
# Wed, 13 Feb 2019 21:25:38 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:48ecbb6b270eb481cb6df2a5b0332de294ec729e1968e92d725f1329637ce01b`  
		Last Modified: Wed, 30 Jan 2019 22:21:00 GMT  
		Size: 2.1 MB (2107173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d1ff0ff3bb03bf3fdc52dd4bc4d4c61c6a84e6b73083d0654b24c97c5a884b`  
		Last Modified: Wed, 30 Jan 2019 22:38:57 GMT  
		Size: 308.5 KB (308503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89d20d4727a1b2e481d5b7c6a6c00bd64e9baeb8d9309b75fe45f1f73c00609`  
		Last Modified: Wed, 30 Jan 2019 22:38:57 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f21bfc15014cef0ab59334391327b4a0ba99a44fa4df49a44fcc40d3b161b86`  
		Last Modified: Wed, 13 Feb 2019 21:26:02 GMT  
		Size: 16.8 MB (16816250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1-alpine`

```console
$ docker pull irssi@sha256:b2b474d8c5c2c782db4df8b1197aeea6ea09298da9c4704ecd3fe3d0bac6da9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `irssi:1-alpine` - linux; amd64

```console
$ docker pull irssi@sha256:16461bd228bcd15f76629f73a37abd08f2bc1579e957bd07017679dd0343d544
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 MB (19233187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f399c2290144f12ea88262c334f39e7155b483793e08bd7db1f8ca8934dc03fc`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:40 GMT
ADD file:9c13ab388a8e4c772b97ec8f6d2c576bece32cecdcfb6fee5175e1d3f613dd12 in / 
# Wed, 30 Jan 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:37:25 GMT
RUN apk --no-cache add 	ca-certificates
# Wed, 30 Jan 2019 22:37:25 GMT
ENV HOME=/home/user
# Wed, 30 Jan 2019 22:37:27 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 30 Jan 2019 22:37:27 GMT
ENV LANG=C.UTF-8
# Wed, 13 Feb 2019 21:24:51 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 13 Feb 2019 21:25:37 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Wed, 13 Feb 2019 21:25:38 GMT
WORKDIR /home/user
# Wed, 13 Feb 2019 21:25:38 GMT
USER user
# Wed, 13 Feb 2019 21:25:38 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:48ecbb6b270eb481cb6df2a5b0332de294ec729e1968e92d725f1329637ce01b`  
		Last Modified: Wed, 30 Jan 2019 22:21:00 GMT  
		Size: 2.1 MB (2107173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d1ff0ff3bb03bf3fdc52dd4bc4d4c61c6a84e6b73083d0654b24c97c5a884b`  
		Last Modified: Wed, 30 Jan 2019 22:38:57 GMT  
		Size: 308.5 KB (308503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89d20d4727a1b2e481d5b7c6a6c00bd64e9baeb8d9309b75fe45f1f73c00609`  
		Last Modified: Wed, 30 Jan 2019 22:38:57 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f21bfc15014cef0ab59334391327b4a0ba99a44fa4df49a44fcc40d3b161b86`  
		Last Modified: Wed, 13 Feb 2019 21:26:02 GMT  
		Size: 16.8 MB (16816250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:alpine`

```console
$ docker pull irssi@sha256:b2b474d8c5c2c782db4df8b1197aeea6ea09298da9c4704ecd3fe3d0bac6da9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `irssi:alpine` - linux; amd64

```console
$ docker pull irssi@sha256:16461bd228bcd15f76629f73a37abd08f2bc1579e957bd07017679dd0343d544
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 MB (19233187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f399c2290144f12ea88262c334f39e7155b483793e08bd7db1f8ca8934dc03fc`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:40 GMT
ADD file:9c13ab388a8e4c772b97ec8f6d2c576bece32cecdcfb6fee5175e1d3f613dd12 in / 
# Wed, 30 Jan 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:37:25 GMT
RUN apk --no-cache add 	ca-certificates
# Wed, 30 Jan 2019 22:37:25 GMT
ENV HOME=/home/user
# Wed, 30 Jan 2019 22:37:27 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 30 Jan 2019 22:37:27 GMT
ENV LANG=C.UTF-8
# Wed, 13 Feb 2019 21:24:51 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 13 Feb 2019 21:25:37 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Wed, 13 Feb 2019 21:25:38 GMT
WORKDIR /home/user
# Wed, 13 Feb 2019 21:25:38 GMT
USER user
# Wed, 13 Feb 2019 21:25:38 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:48ecbb6b270eb481cb6df2a5b0332de294ec729e1968e92d725f1329637ce01b`  
		Last Modified: Wed, 30 Jan 2019 22:21:00 GMT  
		Size: 2.1 MB (2107173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d1ff0ff3bb03bf3fdc52dd4bc4d4c61c6a84e6b73083d0654b24c97c5a884b`  
		Last Modified: Wed, 30 Jan 2019 22:38:57 GMT  
		Size: 308.5 KB (308503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89d20d4727a1b2e481d5b7c6a6c00bd64e9baeb8d9309b75fe45f1f73c00609`  
		Last Modified: Wed, 30 Jan 2019 22:38:57 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f21bfc15014cef0ab59334391327b4a0ba99a44fa4df49a44fcc40d3b161b86`  
		Last Modified: Wed, 13 Feb 2019 21:26:02 GMT  
		Size: 16.8 MB (16816250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:latest`

```console
$ docker pull irssi@sha256:a850dff467faa86db6d4e86df9c0de777c23d97b09836a8b99f39c18ee0ed438
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `irssi:latest` - linux; amd64

```console
$ docker pull irssi@sha256:07175b60b888a2aa5eb42dc3ae2d0b44627f84605aa83d5bff598f978ccbae39
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51510976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:689beae2b0b02c3215576f2c04d91a6f6f204ecc0dcc42ede6fa17382a887f87`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:11:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:11:36 GMT
ENV HOME=/home/user
# Wed, 06 Feb 2019 07:11:38 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 06 Feb 2019 07:11:39 GMT
ENV LANG=C.UTF-8
# Wed, 13 Feb 2019 21:23:23 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 13 Feb 2019 21:24:40 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Feb 2019 21:24:40 GMT
WORKDIR /home/user
# Wed, 13 Feb 2019 21:24:40 GMT
USER user
# Wed, 13 Feb 2019 21:24:40 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445916c679a9dc3211b3111e6277867d902dc290da8c4d3102644f2d27a7f675`  
		Last Modified: Wed, 06 Feb 2019 07:13:10 GMT  
		Size: 18.7 MB (18726913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89849a0ec3a001f4b3c8a83c119a74d4d317a797710e92480dc384a0be23a2f2`  
		Last Modified: Wed, 06 Feb 2019 07:13:06 GMT  
		Size: 4.2 KB (4170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db094ae5310906792158b1e29a8f566db60e2ce686f5c5c53f190957f375c1de`  
		Last Modified: Wed, 13 Feb 2019 21:25:50 GMT  
		Size: 10.3 MB (10279605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

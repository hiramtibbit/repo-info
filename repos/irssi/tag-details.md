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
$ docker pull irssi@sha256:fc812e8d8a3bcc0431a40a48316d4b73b561f560e06b381bb5e245fe6887f1e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `irssi:1` - linux; amd64

```console
$ docker pull irssi@sha256:03e6b7f50d48bc58e03b6a2e6660c5a1ac0603bf45f6b397a121d6dcc3024d46
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51507697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:023fe2d294e106ba1636fbc8ed2fb8d6a0619443008e656f757f71c1117ae08e`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:36:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:36:12 GMT
ENV HOME=/home/user
# Tue, 26 Mar 2019 23:36:12 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 26 Mar 2019 23:36:13 GMT
ENV LANG=C.UTF-8
# Tue, 26 Mar 2019 23:36:13 GMT
ENV IRSSI_VERSION=1.2.0
# Tue, 26 Mar 2019 23:37:16 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 26 Mar 2019 23:37:17 GMT
WORKDIR /home/user
# Tue, 26 Mar 2019 23:37:17 GMT
USER user
# Tue, 26 Mar 2019 23:37:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55d4fc81115a0e1247d57cb1140433f43dde60de1500c6285544359a6c944fa`  
		Last Modified: Tue, 26 Mar 2019 23:37:45 GMT  
		Size: 18.7 MB (18727088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16207ee65242c2dcab411734070a533954d7d892071bb5e1d1b201d5fb393662`  
		Last Modified: Tue, 26 Mar 2019 23:37:40 GMT  
		Size: 4.2 KB (4160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6933e5574aaf3ac16c4c6d48a92404e47c2fb0e3dc51e6f7fefeb8c9d693488`  
		Last Modified: Tue, 26 Mar 2019 23:37:42 GMT  
		Size: 10.3 MB (10280401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1` - linux; arm variant v5

```console
$ docker pull irssi@sha256:ccf03cfc723241703e62ef59fae0056a2f1fd6f97ca371c75bec65f93c48ccba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47802329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:556bb588865272f09aa9487b6b361a16e6cad6b40639c50e1f6544e486f7daf1`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:23:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:23:05 GMT
ENV HOME=/home/user
# Wed, 27 Mar 2019 09:23:06 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 27 Mar 2019 09:23:06 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 09:23:07 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 27 Mar 2019 09:29:39 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 09:29:39 GMT
WORKDIR /home/user
# Wed, 27 Mar 2019 09:29:40 GMT
USER user
# Wed, 27 Mar 2019 09:29:40 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9561d460278eaa8d909b2022d84b9f16ce588f46c92ab2cbc42a62b01581f8`  
		Last Modified: Wed, 27 Mar 2019 09:30:11 GMT  
		Size: 17.5 MB (17496714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaaa7230e90db83d80833a07b333743f5dfb259c025fd1d3e74973877f0b911c`  
		Last Modified: Wed, 27 Mar 2019 09:30:03 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1573bbfb7d04f427efd01da0a6e9b0e5e7aa9c65b4d9b706931ee948cfe6c1`  
		Last Modified: Wed, 27 Mar 2019 09:30:07 GMT  
		Size: 9.1 MB (9140771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1` - linux; arm variant v7

```console
$ docker pull irssi@sha256:6370d9c321efbfe6e706b27f2a78c877d8f3b4234a4906178c80e1a0cb9c8137
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45060495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6daa12bfad0a9ef471af94bba73652cfaf79f3c5cecb8e4b698fb9edaf437de3`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:53:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:53:38 GMT
ENV HOME=/home/user
# Tue, 05 Mar 2019 14:53:41 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 05 Mar 2019 14:53:41 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 14:53:42 GMT
ENV IRSSI_VERSION=1.2.0
# Tue, 05 Mar 2019 14:54:52 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 14:54:54 GMT
WORKDIR /home/user
# Tue, 05 Mar 2019 14:54:54 GMT
USER user
# Tue, 05 Mar 2019 14:54:55 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d053b77688cad7ed114736c28d3c0bfb0f09bea36ea249cb43688c7478027448`  
		Last Modified: Tue, 05 Mar 2019 14:55:15 GMT  
		Size: 17.0 MB (16989008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d702866734d124e25b111a97e6985b74909fd8605913eb4f80419f02d53ed1d3`  
		Last Modified: Tue, 05 Mar 2019 14:55:07 GMT  
		Size: 4.2 KB (4192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2181418a6537e3ba2a1ac450008fbfbe1c8de5213d4eb77aaefed4b4da31af`  
		Last Modified: Tue, 05 Mar 2019 14:55:11 GMT  
		Size: 8.8 MB (8784801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:3bba14f39eb43412ee609399d312ac81ae2d7cef95ff2c141373bf4d6daf4bd2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47760832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb459d86e4f14c3d24838654522013fe416f82210f8cf39c4ad8584d29bd767f`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 11:34:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 11:34:46 GMT
ENV HOME=/home/user
# Wed, 06 Feb 2019 11:34:55 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 06 Feb 2019 11:34:58 GMT
ENV LANG=C.UTF-8
# Thu, 14 Feb 2019 10:03:01 GMT
ENV IRSSI_VERSION=1.2.0
# Thu, 14 Feb 2019 10:05:59 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 14 Feb 2019 10:06:00 GMT
WORKDIR /home/user
# Thu, 14 Feb 2019 10:06:01 GMT
USER user
# Thu, 14 Feb 2019 10:06:02 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d429afd372f4f66e34a239ebec51038d8d5ae7e086d5d83402a2822d9acba117`  
		Last Modified: Wed, 06 Feb 2019 11:40:07 GMT  
		Size: 17.8 MB (17830985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0160402287c60a44fb5c9b07fd4b2fa98ac709a13c850367b4b3c7d684120c62`  
		Last Modified: Wed, 06 Feb 2019 11:39:57 GMT  
		Size: 4.2 KB (4184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af924a9dd2677288ca12476154a814feda9a59f625ba7feb1ca2171e1238739e`  
		Last Modified: Thu, 14 Feb 2019 10:07:54 GMT  
		Size: 9.6 MB (9575504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1` - linux; 386

```console
$ docker pull irssi@sha256:831d49ec7b2df16c1d44c8ec6ce725167e3c5265f306f58173e29d3991075bd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54855429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91371e9f844ed81a7918563737d97a80234530a8bf7bd10289a15e67c7cdd8dd`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:21:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 17:21:27 GMT
ENV HOME=/home/user
# Tue, 05 Mar 2019 17:21:28 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 05 Mar 2019 17:21:28 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 17:21:28 GMT
ENV IRSSI_VERSION=1.2.0
# Tue, 05 Mar 2019 17:22:38 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 17:22:38 GMT
WORKDIR /home/user
# Tue, 05 Mar 2019 17:22:38 GMT
USER user
# Tue, 05 Mar 2019 17:22:39 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a223a658eefc8c59b6671329b62213d55cf8e4b7e5604e5d6fe779844dc725`  
		Last Modified: Tue, 05 Mar 2019 17:23:02 GMT  
		Size: 18.4 MB (18413211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8fa53e9292582c3f5cc09200e83399baf125dc2138d3d5a74959c017976730`  
		Last Modified: Tue, 05 Mar 2019 17:22:54 GMT  
		Size: 4.2 KB (4159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2ffb7284368242d6fc6b6574cdb1785d0248b1f2f9a87b052d8fd82ba0e13b`  
		Last Modified: Tue, 05 Mar 2019 17:22:58 GMT  
		Size: 13.3 MB (13312379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1` - linux; ppc64le

```console
$ docker pull irssi@sha256:e123fb943e1333f08993c557507f649562d970b85ae182efce4c8f2c126a4f3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.2 MB (51210666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d4de3b1639f02f79d93dd9d5a5f51a1119dc50642f0f8583a5c6254f910e3be`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:18:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:18:19 GMT
ENV HOME=/home/user
# Wed, 27 Mar 2019 09:18:25 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 27 Mar 2019 09:18:27 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 09:18:29 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 27 Mar 2019 09:22:24 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 09:22:27 GMT
WORKDIR /home/user
# Wed, 27 Mar 2019 09:22:29 GMT
USER user
# Wed, 27 Mar 2019 09:22:30 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52465c1a7c08f155b2aea15160fe568fa11c860d199f9beaa9d84de45cf8a952`  
		Last Modified: Wed, 27 Mar 2019 09:22:57 GMT  
		Size: 18.2 MB (18159770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e759df374105af02534cd545d381c325c00f61d8e8de7a671fe2305ec2237754`  
		Last Modified: Wed, 27 Mar 2019 09:22:52 GMT  
		Size: 4.2 KB (4199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61222a9d360602fc1575e70fc218a735a286fae3ea79f894687d19de923b210`  
		Last Modified: Wed, 27 Mar 2019 09:22:55 GMT  
		Size: 10.3 MB (10295312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1` - linux; s390x

```console
$ docker pull irssi@sha256:5cda075e1828d79015221a74f74ffa5469e9c440d9be6690c4a8b2cdbc765933
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.4 MB (52446699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f17ee079692c4565b9ff2bdf5e445cdbaa810b80ada5aa33c37e11795900f99c`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:42:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:42:17 GMT
ENV HOME=/home/user
# Tue, 05 Mar 2019 13:42:18 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 05 Mar 2019 13:42:18 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 13:42:18 GMT
ENV IRSSI_VERSION=1.2.0
# Tue, 05 Mar 2019 13:43:07 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 13:43:08 GMT
WORKDIR /home/user
# Tue, 05 Mar 2019 13:43:08 GMT
USER user
# Tue, 05 Mar 2019 13:43:08 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2c9e1401ee6b0131741b02fed745b7f1d34bf29b0bc59f41e08dc969a710fc58`  
		Last Modified: Tue, 05 Mar 2019 12:45:42 GMT  
		Size: 22.3 MB (22345383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995960296cbe5a07833cdba8ef834770e04eade5376f76344794533079617212`  
		Last Modified: Tue, 05 Mar 2019 13:43:35 GMT  
		Size: 18.8 MB (18809208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a3fab2d25d2377ef7b8830b10e6d5ad56a49841d3a4e7f2a7e61b424abf752`  
		Last Modified: Tue, 05 Mar 2019 13:43:31 GMT  
		Size: 4.2 KB (4172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc0d87e9ca29c3efda62bb933cec7ba4d7ac723e758f8a2bc4e103147425c45`  
		Last Modified: Tue, 05 Mar 2019 13:43:33 GMT  
		Size: 11.3 MB (11287936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.2`

```console
$ docker pull irssi@sha256:fc812e8d8a3bcc0431a40a48316d4b73b561f560e06b381bb5e245fe6887f1e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `irssi:1.2` - linux; amd64

```console
$ docker pull irssi@sha256:03e6b7f50d48bc58e03b6a2e6660c5a1ac0603bf45f6b397a121d6dcc3024d46
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51507697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:023fe2d294e106ba1636fbc8ed2fb8d6a0619443008e656f757f71c1117ae08e`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:36:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:36:12 GMT
ENV HOME=/home/user
# Tue, 26 Mar 2019 23:36:12 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 26 Mar 2019 23:36:13 GMT
ENV LANG=C.UTF-8
# Tue, 26 Mar 2019 23:36:13 GMT
ENV IRSSI_VERSION=1.2.0
# Tue, 26 Mar 2019 23:37:16 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 26 Mar 2019 23:37:17 GMT
WORKDIR /home/user
# Tue, 26 Mar 2019 23:37:17 GMT
USER user
# Tue, 26 Mar 2019 23:37:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55d4fc81115a0e1247d57cb1140433f43dde60de1500c6285544359a6c944fa`  
		Last Modified: Tue, 26 Mar 2019 23:37:45 GMT  
		Size: 18.7 MB (18727088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16207ee65242c2dcab411734070a533954d7d892071bb5e1d1b201d5fb393662`  
		Last Modified: Tue, 26 Mar 2019 23:37:40 GMT  
		Size: 4.2 KB (4160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6933e5574aaf3ac16c4c6d48a92404e47c2fb0e3dc51e6f7fefeb8c9d693488`  
		Last Modified: Tue, 26 Mar 2019 23:37:42 GMT  
		Size: 10.3 MB (10280401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.2` - linux; arm variant v5

```console
$ docker pull irssi@sha256:ccf03cfc723241703e62ef59fae0056a2f1fd6f97ca371c75bec65f93c48ccba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47802329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:556bb588865272f09aa9487b6b361a16e6cad6b40639c50e1f6544e486f7daf1`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:23:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:23:05 GMT
ENV HOME=/home/user
# Wed, 27 Mar 2019 09:23:06 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 27 Mar 2019 09:23:06 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 09:23:07 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 27 Mar 2019 09:29:39 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 09:29:39 GMT
WORKDIR /home/user
# Wed, 27 Mar 2019 09:29:40 GMT
USER user
# Wed, 27 Mar 2019 09:29:40 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9561d460278eaa8d909b2022d84b9f16ce588f46c92ab2cbc42a62b01581f8`  
		Last Modified: Wed, 27 Mar 2019 09:30:11 GMT  
		Size: 17.5 MB (17496714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaaa7230e90db83d80833a07b333743f5dfb259c025fd1d3e74973877f0b911c`  
		Last Modified: Wed, 27 Mar 2019 09:30:03 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1573bbfb7d04f427efd01da0a6e9b0e5e7aa9c65b4d9b706931ee948cfe6c1`  
		Last Modified: Wed, 27 Mar 2019 09:30:07 GMT  
		Size: 9.1 MB (9140771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.2` - linux; arm variant v7

```console
$ docker pull irssi@sha256:6370d9c321efbfe6e706b27f2a78c877d8f3b4234a4906178c80e1a0cb9c8137
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45060495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6daa12bfad0a9ef471af94bba73652cfaf79f3c5cecb8e4b698fb9edaf437de3`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:53:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:53:38 GMT
ENV HOME=/home/user
# Tue, 05 Mar 2019 14:53:41 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 05 Mar 2019 14:53:41 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 14:53:42 GMT
ENV IRSSI_VERSION=1.2.0
# Tue, 05 Mar 2019 14:54:52 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 14:54:54 GMT
WORKDIR /home/user
# Tue, 05 Mar 2019 14:54:54 GMT
USER user
# Tue, 05 Mar 2019 14:54:55 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d053b77688cad7ed114736c28d3c0bfb0f09bea36ea249cb43688c7478027448`  
		Last Modified: Tue, 05 Mar 2019 14:55:15 GMT  
		Size: 17.0 MB (16989008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d702866734d124e25b111a97e6985b74909fd8605913eb4f80419f02d53ed1d3`  
		Last Modified: Tue, 05 Mar 2019 14:55:07 GMT  
		Size: 4.2 KB (4192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2181418a6537e3ba2a1ac450008fbfbe1c8de5213d4eb77aaefed4b4da31af`  
		Last Modified: Tue, 05 Mar 2019 14:55:11 GMT  
		Size: 8.8 MB (8784801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.2` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:3bba14f39eb43412ee609399d312ac81ae2d7cef95ff2c141373bf4d6daf4bd2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47760832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb459d86e4f14c3d24838654522013fe416f82210f8cf39c4ad8584d29bd767f`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 11:34:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 11:34:46 GMT
ENV HOME=/home/user
# Wed, 06 Feb 2019 11:34:55 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 06 Feb 2019 11:34:58 GMT
ENV LANG=C.UTF-8
# Thu, 14 Feb 2019 10:03:01 GMT
ENV IRSSI_VERSION=1.2.0
# Thu, 14 Feb 2019 10:05:59 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 14 Feb 2019 10:06:00 GMT
WORKDIR /home/user
# Thu, 14 Feb 2019 10:06:01 GMT
USER user
# Thu, 14 Feb 2019 10:06:02 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d429afd372f4f66e34a239ebec51038d8d5ae7e086d5d83402a2822d9acba117`  
		Last Modified: Wed, 06 Feb 2019 11:40:07 GMT  
		Size: 17.8 MB (17830985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0160402287c60a44fb5c9b07fd4b2fa98ac709a13c850367b4b3c7d684120c62`  
		Last Modified: Wed, 06 Feb 2019 11:39:57 GMT  
		Size: 4.2 KB (4184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af924a9dd2677288ca12476154a814feda9a59f625ba7feb1ca2171e1238739e`  
		Last Modified: Thu, 14 Feb 2019 10:07:54 GMT  
		Size: 9.6 MB (9575504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.2` - linux; 386

```console
$ docker pull irssi@sha256:831d49ec7b2df16c1d44c8ec6ce725167e3c5265f306f58173e29d3991075bd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54855429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91371e9f844ed81a7918563737d97a80234530a8bf7bd10289a15e67c7cdd8dd`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:21:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 17:21:27 GMT
ENV HOME=/home/user
# Tue, 05 Mar 2019 17:21:28 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 05 Mar 2019 17:21:28 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 17:21:28 GMT
ENV IRSSI_VERSION=1.2.0
# Tue, 05 Mar 2019 17:22:38 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 17:22:38 GMT
WORKDIR /home/user
# Tue, 05 Mar 2019 17:22:38 GMT
USER user
# Tue, 05 Mar 2019 17:22:39 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a223a658eefc8c59b6671329b62213d55cf8e4b7e5604e5d6fe779844dc725`  
		Last Modified: Tue, 05 Mar 2019 17:23:02 GMT  
		Size: 18.4 MB (18413211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8fa53e9292582c3f5cc09200e83399baf125dc2138d3d5a74959c017976730`  
		Last Modified: Tue, 05 Mar 2019 17:22:54 GMT  
		Size: 4.2 KB (4159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2ffb7284368242d6fc6b6574cdb1785d0248b1f2f9a87b052d8fd82ba0e13b`  
		Last Modified: Tue, 05 Mar 2019 17:22:58 GMT  
		Size: 13.3 MB (13312379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.2` - linux; ppc64le

```console
$ docker pull irssi@sha256:e123fb943e1333f08993c557507f649562d970b85ae182efce4c8f2c126a4f3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.2 MB (51210666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d4de3b1639f02f79d93dd9d5a5f51a1119dc50642f0f8583a5c6254f910e3be`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:18:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:18:19 GMT
ENV HOME=/home/user
# Wed, 27 Mar 2019 09:18:25 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 27 Mar 2019 09:18:27 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 09:18:29 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 27 Mar 2019 09:22:24 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 09:22:27 GMT
WORKDIR /home/user
# Wed, 27 Mar 2019 09:22:29 GMT
USER user
# Wed, 27 Mar 2019 09:22:30 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52465c1a7c08f155b2aea15160fe568fa11c860d199f9beaa9d84de45cf8a952`  
		Last Modified: Wed, 27 Mar 2019 09:22:57 GMT  
		Size: 18.2 MB (18159770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e759df374105af02534cd545d381c325c00f61d8e8de7a671fe2305ec2237754`  
		Last Modified: Wed, 27 Mar 2019 09:22:52 GMT  
		Size: 4.2 KB (4199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61222a9d360602fc1575e70fc218a735a286fae3ea79f894687d19de923b210`  
		Last Modified: Wed, 27 Mar 2019 09:22:55 GMT  
		Size: 10.3 MB (10295312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.2` - linux; s390x

```console
$ docker pull irssi@sha256:5cda075e1828d79015221a74f74ffa5469e9c440d9be6690c4a8b2cdbc765933
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.4 MB (52446699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f17ee079692c4565b9ff2bdf5e445cdbaa810b80ada5aa33c37e11795900f99c`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:42:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:42:17 GMT
ENV HOME=/home/user
# Tue, 05 Mar 2019 13:42:18 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 05 Mar 2019 13:42:18 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 13:42:18 GMT
ENV IRSSI_VERSION=1.2.0
# Tue, 05 Mar 2019 13:43:07 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 13:43:08 GMT
WORKDIR /home/user
# Tue, 05 Mar 2019 13:43:08 GMT
USER user
# Tue, 05 Mar 2019 13:43:08 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2c9e1401ee6b0131741b02fed745b7f1d34bf29b0bc59f41e08dc969a710fc58`  
		Last Modified: Tue, 05 Mar 2019 12:45:42 GMT  
		Size: 22.3 MB (22345383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995960296cbe5a07833cdba8ef834770e04eade5376f76344794533079617212`  
		Last Modified: Tue, 05 Mar 2019 13:43:35 GMT  
		Size: 18.8 MB (18809208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a3fab2d25d2377ef7b8830b10e6d5ad56a49841d3a4e7f2a7e61b424abf752`  
		Last Modified: Tue, 05 Mar 2019 13:43:31 GMT  
		Size: 4.2 KB (4172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc0d87e9ca29c3efda62bb933cec7ba4d7ac723e758f8a2bc4e103147425c45`  
		Last Modified: Tue, 05 Mar 2019 13:43:33 GMT  
		Size: 11.3 MB (11287936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.2.0`

```console
$ docker pull irssi@sha256:fc812e8d8a3bcc0431a40a48316d4b73b561f560e06b381bb5e245fe6887f1e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `irssi:1.2.0` - linux; amd64

```console
$ docker pull irssi@sha256:03e6b7f50d48bc58e03b6a2e6660c5a1ac0603bf45f6b397a121d6dcc3024d46
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51507697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:023fe2d294e106ba1636fbc8ed2fb8d6a0619443008e656f757f71c1117ae08e`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:36:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:36:12 GMT
ENV HOME=/home/user
# Tue, 26 Mar 2019 23:36:12 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 26 Mar 2019 23:36:13 GMT
ENV LANG=C.UTF-8
# Tue, 26 Mar 2019 23:36:13 GMT
ENV IRSSI_VERSION=1.2.0
# Tue, 26 Mar 2019 23:37:16 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 26 Mar 2019 23:37:17 GMT
WORKDIR /home/user
# Tue, 26 Mar 2019 23:37:17 GMT
USER user
# Tue, 26 Mar 2019 23:37:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55d4fc81115a0e1247d57cb1140433f43dde60de1500c6285544359a6c944fa`  
		Last Modified: Tue, 26 Mar 2019 23:37:45 GMT  
		Size: 18.7 MB (18727088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16207ee65242c2dcab411734070a533954d7d892071bb5e1d1b201d5fb393662`  
		Last Modified: Tue, 26 Mar 2019 23:37:40 GMT  
		Size: 4.2 KB (4160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6933e5574aaf3ac16c4c6d48a92404e47c2fb0e3dc51e6f7fefeb8c9d693488`  
		Last Modified: Tue, 26 Mar 2019 23:37:42 GMT  
		Size: 10.3 MB (10280401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.2.0` - linux; arm variant v5

```console
$ docker pull irssi@sha256:ccf03cfc723241703e62ef59fae0056a2f1fd6f97ca371c75bec65f93c48ccba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47802329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:556bb588865272f09aa9487b6b361a16e6cad6b40639c50e1f6544e486f7daf1`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:23:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:23:05 GMT
ENV HOME=/home/user
# Wed, 27 Mar 2019 09:23:06 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 27 Mar 2019 09:23:06 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 09:23:07 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 27 Mar 2019 09:29:39 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 09:29:39 GMT
WORKDIR /home/user
# Wed, 27 Mar 2019 09:29:40 GMT
USER user
# Wed, 27 Mar 2019 09:29:40 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9561d460278eaa8d909b2022d84b9f16ce588f46c92ab2cbc42a62b01581f8`  
		Last Modified: Wed, 27 Mar 2019 09:30:11 GMT  
		Size: 17.5 MB (17496714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaaa7230e90db83d80833a07b333743f5dfb259c025fd1d3e74973877f0b911c`  
		Last Modified: Wed, 27 Mar 2019 09:30:03 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1573bbfb7d04f427efd01da0a6e9b0e5e7aa9c65b4d9b706931ee948cfe6c1`  
		Last Modified: Wed, 27 Mar 2019 09:30:07 GMT  
		Size: 9.1 MB (9140771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.2.0` - linux; arm variant v7

```console
$ docker pull irssi@sha256:6370d9c321efbfe6e706b27f2a78c877d8f3b4234a4906178c80e1a0cb9c8137
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45060495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6daa12bfad0a9ef471af94bba73652cfaf79f3c5cecb8e4b698fb9edaf437de3`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:53:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:53:38 GMT
ENV HOME=/home/user
# Tue, 05 Mar 2019 14:53:41 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 05 Mar 2019 14:53:41 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 14:53:42 GMT
ENV IRSSI_VERSION=1.2.0
# Tue, 05 Mar 2019 14:54:52 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 14:54:54 GMT
WORKDIR /home/user
# Tue, 05 Mar 2019 14:54:54 GMT
USER user
# Tue, 05 Mar 2019 14:54:55 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d053b77688cad7ed114736c28d3c0bfb0f09bea36ea249cb43688c7478027448`  
		Last Modified: Tue, 05 Mar 2019 14:55:15 GMT  
		Size: 17.0 MB (16989008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d702866734d124e25b111a97e6985b74909fd8605913eb4f80419f02d53ed1d3`  
		Last Modified: Tue, 05 Mar 2019 14:55:07 GMT  
		Size: 4.2 KB (4192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2181418a6537e3ba2a1ac450008fbfbe1c8de5213d4eb77aaefed4b4da31af`  
		Last Modified: Tue, 05 Mar 2019 14:55:11 GMT  
		Size: 8.8 MB (8784801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.2.0` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:3bba14f39eb43412ee609399d312ac81ae2d7cef95ff2c141373bf4d6daf4bd2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47760832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb459d86e4f14c3d24838654522013fe416f82210f8cf39c4ad8584d29bd767f`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 11:34:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 11:34:46 GMT
ENV HOME=/home/user
# Wed, 06 Feb 2019 11:34:55 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 06 Feb 2019 11:34:58 GMT
ENV LANG=C.UTF-8
# Thu, 14 Feb 2019 10:03:01 GMT
ENV IRSSI_VERSION=1.2.0
# Thu, 14 Feb 2019 10:05:59 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 14 Feb 2019 10:06:00 GMT
WORKDIR /home/user
# Thu, 14 Feb 2019 10:06:01 GMT
USER user
# Thu, 14 Feb 2019 10:06:02 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d429afd372f4f66e34a239ebec51038d8d5ae7e086d5d83402a2822d9acba117`  
		Last Modified: Wed, 06 Feb 2019 11:40:07 GMT  
		Size: 17.8 MB (17830985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0160402287c60a44fb5c9b07fd4b2fa98ac709a13c850367b4b3c7d684120c62`  
		Last Modified: Wed, 06 Feb 2019 11:39:57 GMT  
		Size: 4.2 KB (4184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af924a9dd2677288ca12476154a814feda9a59f625ba7feb1ca2171e1238739e`  
		Last Modified: Thu, 14 Feb 2019 10:07:54 GMT  
		Size: 9.6 MB (9575504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.2.0` - linux; 386

```console
$ docker pull irssi@sha256:831d49ec7b2df16c1d44c8ec6ce725167e3c5265f306f58173e29d3991075bd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54855429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91371e9f844ed81a7918563737d97a80234530a8bf7bd10289a15e67c7cdd8dd`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:21:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 17:21:27 GMT
ENV HOME=/home/user
# Tue, 05 Mar 2019 17:21:28 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 05 Mar 2019 17:21:28 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 17:21:28 GMT
ENV IRSSI_VERSION=1.2.0
# Tue, 05 Mar 2019 17:22:38 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 17:22:38 GMT
WORKDIR /home/user
# Tue, 05 Mar 2019 17:22:38 GMT
USER user
# Tue, 05 Mar 2019 17:22:39 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a223a658eefc8c59b6671329b62213d55cf8e4b7e5604e5d6fe779844dc725`  
		Last Modified: Tue, 05 Mar 2019 17:23:02 GMT  
		Size: 18.4 MB (18413211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8fa53e9292582c3f5cc09200e83399baf125dc2138d3d5a74959c017976730`  
		Last Modified: Tue, 05 Mar 2019 17:22:54 GMT  
		Size: 4.2 KB (4159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2ffb7284368242d6fc6b6574cdb1785d0248b1f2f9a87b052d8fd82ba0e13b`  
		Last Modified: Tue, 05 Mar 2019 17:22:58 GMT  
		Size: 13.3 MB (13312379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.2.0` - linux; ppc64le

```console
$ docker pull irssi@sha256:e123fb943e1333f08993c557507f649562d970b85ae182efce4c8f2c126a4f3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.2 MB (51210666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d4de3b1639f02f79d93dd9d5a5f51a1119dc50642f0f8583a5c6254f910e3be`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:18:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:18:19 GMT
ENV HOME=/home/user
# Wed, 27 Mar 2019 09:18:25 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 27 Mar 2019 09:18:27 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 09:18:29 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 27 Mar 2019 09:22:24 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 09:22:27 GMT
WORKDIR /home/user
# Wed, 27 Mar 2019 09:22:29 GMT
USER user
# Wed, 27 Mar 2019 09:22:30 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52465c1a7c08f155b2aea15160fe568fa11c860d199f9beaa9d84de45cf8a952`  
		Last Modified: Wed, 27 Mar 2019 09:22:57 GMT  
		Size: 18.2 MB (18159770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e759df374105af02534cd545d381c325c00f61d8e8de7a671fe2305ec2237754`  
		Last Modified: Wed, 27 Mar 2019 09:22:52 GMT  
		Size: 4.2 KB (4199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61222a9d360602fc1575e70fc218a735a286fae3ea79f894687d19de923b210`  
		Last Modified: Wed, 27 Mar 2019 09:22:55 GMT  
		Size: 10.3 MB (10295312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.2.0` - linux; s390x

```console
$ docker pull irssi@sha256:5cda075e1828d79015221a74f74ffa5469e9c440d9be6690c4a8b2cdbc765933
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.4 MB (52446699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f17ee079692c4565b9ff2bdf5e445cdbaa810b80ada5aa33c37e11795900f99c`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:42:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:42:17 GMT
ENV HOME=/home/user
# Tue, 05 Mar 2019 13:42:18 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 05 Mar 2019 13:42:18 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 13:42:18 GMT
ENV IRSSI_VERSION=1.2.0
# Tue, 05 Mar 2019 13:43:07 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 13:43:08 GMT
WORKDIR /home/user
# Tue, 05 Mar 2019 13:43:08 GMT
USER user
# Tue, 05 Mar 2019 13:43:08 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2c9e1401ee6b0131741b02fed745b7f1d34bf29b0bc59f41e08dc969a710fc58`  
		Last Modified: Tue, 05 Mar 2019 12:45:42 GMT  
		Size: 22.3 MB (22345383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995960296cbe5a07833cdba8ef834770e04eade5376f76344794533079617212`  
		Last Modified: Tue, 05 Mar 2019 13:43:35 GMT  
		Size: 18.8 MB (18809208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a3fab2d25d2377ef7b8830b10e6d5ad56a49841d3a4e7f2a7e61b424abf752`  
		Last Modified: Tue, 05 Mar 2019 13:43:31 GMT  
		Size: 4.2 KB (4172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc0d87e9ca29c3efda62bb933cec7ba4d7ac723e758f8a2bc4e103147425c45`  
		Last Modified: Tue, 05 Mar 2019 13:43:33 GMT  
		Size: 11.3 MB (11287936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.2.0-alpine`

```console
$ docker pull irssi@sha256:596407b0c6e22685a234f2d6ad1fff7e83fa00b3ba516d2cd1ac6e06b1a7d1d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `irssi:1.2.0-alpine` - linux; amd64

```console
$ docker pull irssi@sha256:b6246791a3325b70a356d582198d7f843b292db5ef5d895c2698a025a814e54c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 MB (19233814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1d704475f684c8740c09ad1a572601cf58c8fbaf30643abdfcbf848ab36995a`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:06:50 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 08 Mar 2019 02:06:51 GMT
ENV HOME=/home/user
# Fri, 08 Mar 2019 02:06:52 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Mar 2019 02:06:52 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:06:52 GMT
ENV IRSSI_VERSION=1.2.0
# Fri, 08 Mar 2019 02:08:17 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 08 Mar 2019 02:08:17 GMT
WORKDIR /home/user
# Fri, 08 Mar 2019 02:08:17 GMT
USER user
# Fri, 08 Mar 2019 02:08:18 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fbd3a8de6e04160541df73ad90bc9c34fddec8750f78129c687349485fc2c7`  
		Last Modified: Fri, 08 Mar 2019 02:08:43 GMT  
		Size: 308.5 KB (308534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63a53635ba04fa9994c0063be53ac33f66bf28adaac01afd9e00597335971cc`  
		Last Modified: Fri, 08 Mar 2019 02:08:43 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0fd7b464310a9679968f3331083fbc20b98e5da5ec5d38e4edc12dbb8e84f9a`  
		Last Modified: Fri, 08 Mar 2019 02:08:49 GMT  
		Size: 16.8 MB (16816914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.2.0-alpine` - linux; arm variant v6

```console
$ docker pull irssi@sha256:5f8345d180ae44e46e63f29dd648e860313250d7ba05e27eb0984b2bd93bf67d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17792531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:834ed0d36fe7b16b59448964060a354bb7cb318d8df9c112fd79f343735e6e7f`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:19 GMT
ADD file:81d5fd270fcda0eebec04e6f74f4834e629c70ffe142ec40611caf179e34d4c1 in / 
# Fri, 08 Mar 2019 03:36:20 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:16:20 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 08 Mar 2019 04:16:20 GMT
ENV HOME=/home/user
# Fri, 08 Mar 2019 04:16:21 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Mar 2019 04:16:22 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:16:22 GMT
ENV IRSSI_VERSION=1.2.0
# Fri, 08 Mar 2019 04:17:04 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 08 Mar 2019 04:17:05 GMT
WORKDIR /home/user
# Fri, 08 Mar 2019 04:17:05 GMT
USER user
# Fri, 08 Mar 2019 04:17:05 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:1debd7fe5349ada802e5b176f99ddbfdf432a51a67897f0000ec665d31a33293`  
		Last Modified: Fri, 08 Mar 2019 03:36:57 GMT  
		Size: 2.1 MB (2050246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669146b49fd8e80ea3327613c96ff72d3a31324899cc6a85632757cb360a7cb1`  
		Last Modified: Fri, 08 Mar 2019 04:17:16 GMT  
		Size: 309.2 KB (309250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad970ff5f0212af66b782549482a0591c02dffcde0bc878ddaea25d570d99610`  
		Last Modified: Fri, 08 Mar 2019 04:17:19 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6eee087db739c645bdeb1f554cd3615f568c36cde1d5f219e11a71a464f4759`  
		Last Modified: Fri, 08 Mar 2019 04:17:23 GMT  
		Size: 15.4 MB (15431735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.2.0-alpine` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:825d05d7386d6edb89d7535c390a941fca7e7ebafd13b5ba8d7f1e00a6eb6d1e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 MB (18391779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13075241c0642b76a872e026bd458d0036c42bdfb55a915d4289628b94f3ee74`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:21 GMT
ADD file:593fdff46d6e2edf7fc03d568a8d8d4149ef13f8c2b1af554299a8d0d0e06e2f in / 
# Fri, 08 Mar 2019 03:37:22 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 08:57:48 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 08 Mar 2019 08:57:49 GMT
ENV HOME=/home/user
# Fri, 08 Mar 2019 08:57:51 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Mar 2019 08:57:52 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 08:57:53 GMT
ENV IRSSI_VERSION=1.2.0
# Fri, 08 Mar 2019 08:58:59 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 08 Mar 2019 08:59:00 GMT
WORKDIR /home/user
# Fri, 08 Mar 2019 08:59:02 GMT
USER user
# Fri, 08 Mar 2019 08:59:03 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:40223db5366fa5aa8fd6b2c2b3f97d1daf156cef4d139adf144f36b165d85afe`  
		Last Modified: Fri, 08 Mar 2019 03:38:13 GMT  
		Size: 2.0 MB (1998986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b444fa44cc7093abf83cbc32950b4be2f9ea7fbab7c2120ede6acffa350542`  
		Last Modified: Fri, 08 Mar 2019 08:59:24 GMT  
		Size: 308.7 KB (308686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afec0191ea8d53f54cd326d12790b1a30baa3aa4152910c28081c73a588593aa`  
		Last Modified: Fri, 08 Mar 2019 08:59:23 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e780c675a25965ad8dde3515cb614361b592a8bb726a7fa584b1dabccb3a6d1`  
		Last Modified: Fri, 08 Mar 2019 08:59:31 GMT  
		Size: 16.1 MB (16082840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.2.0-alpine` - linux; 386

```console
$ docker pull irssi@sha256:127ffb59d25469b0bce3acff701dfc71c0ce73d37b4a67fdaae2f38cb538393c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18292558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:545a316a6dd2cc202613f88a04c4f5617d276b345b439c425dcc0efd310b5ea7`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:06 GMT
ADD file:eca24f9ef61dc86fee19b7e25d939a4ce663b5c36d7ed6b8553a4b4f5784d14b in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:32:37 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 08 Mar 2019 04:32:37 GMT
ENV HOME=/home/user
# Fri, 08 Mar 2019 04:32:38 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Mar 2019 04:32:38 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:32:38 GMT
ENV IRSSI_VERSION=1.2.0
# Fri, 08 Mar 2019 04:33:40 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 08 Mar 2019 04:33:40 GMT
WORKDIR /home/user
# Fri, 08 Mar 2019 04:33:40 GMT
USER user
# Fri, 08 Mar 2019 04:33:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:aefea79d2300fff07c38505e077fe3dd5057323f7073024e51b0f3ac80f4c49d`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.2 MB (2168969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916c7291ad5947f19c11a26c3e0c269aaa0f34108296e51ba1309cdb7281d2f5`  
		Last Modified: Fri, 08 Mar 2019 04:33:57 GMT  
		Size: 309.2 KB (309213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9d505027c72882ca944ebeb9bd89a7133c9117498ab8b6aa6b3cd1bdbea3e38`  
		Last Modified: Fri, 08 Mar 2019 04:33:57 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455f913d3ec3a4d9d1f9c085a002a998ed24360d940006c599af7908c520cda9`  
		Last Modified: Fri, 08 Mar 2019 04:34:02 GMT  
		Size: 15.8 MB (15813104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.2.0-alpine` - linux; ppc64le

```console
$ docker pull irssi@sha256:633534d1e9ae0833744a02dcbd2097da548021ca229d1bf82826f42b38b1ce6b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18881039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9404ddb6e0136ec360eb7bfc3032a94c59f9ad078cf14e4aa71511984003b0ea`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:51 GMT
ADD file:55fbeb767cf2b9344907a5252cccd1e7fb7b146277b267422b6117406300bfbf in / 
# Fri, 08 Mar 2019 03:37:54 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:11:04 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 08 Mar 2019 06:11:08 GMT
ENV HOME=/home/user
# Fri, 08 Mar 2019 06:11:20 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Mar 2019 06:11:24 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 06:11:28 GMT
ENV IRSSI_VERSION=1.2.0
# Fri, 08 Mar 2019 06:12:28 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 08 Mar 2019 06:12:33 GMT
WORKDIR /home/user
# Fri, 08 Mar 2019 06:12:35 GMT
USER user
# Fri, 08 Mar 2019 06:12:40 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f4c3542ff81d415a34c73cfb323605bb8faf0062bb1ba117e2bd1370b734b441`  
		Last Modified: Fri, 08 Mar 2019 03:38:54 GMT  
		Size: 2.1 MB (2098856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f911b60a9b8a3978862449cf7a77b41def43c50957a732c391264715318174`  
		Last Modified: Fri, 08 Mar 2019 06:13:06 GMT  
		Size: 311.0 KB (311033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1ccfb0f7383ca80b9485003e16e3d324d495832ecad3b5a1a3c9c523d7f45b`  
		Last Modified: Fri, 08 Mar 2019 06:13:06 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5545ba4ce116ffd5d99a1f6a8d1033c8f9cfe749515ed0ed15efd324c6134885`  
		Last Modified: Fri, 08 Mar 2019 06:13:10 GMT  
		Size: 16.5 MB (16469850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.2.0-alpine` - linux; s390x

```console
$ docker pull irssi@sha256:1c93a35a453f70e11406675102092900430d446eb71094455ae7b865ccc7a2e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.6 MB (19578095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b10239dfd0f14f177887bb6de23d6f32fe43da69821a75bfdf4ddf6474791d7`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:55 GMT
ADD file:a5ae3b95b5b5c25ee77b70b9462247e1612c5a24b72c9d142726fbbf54a5d4c0 in / 
# Fri, 08 Mar 2019 03:35:55 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:55:40 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 08 Mar 2019 03:55:40 GMT
ENV HOME=/home/user
# Fri, 08 Mar 2019 03:55:41 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Mar 2019 03:55:41 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 03:55:42 GMT
ENV IRSSI_VERSION=1.2.0
# Fri, 08 Mar 2019 03:56:16 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:56:17 GMT
WORKDIR /home/user
# Fri, 08 Mar 2019 03:56:17 GMT
USER user
# Fri, 08 Mar 2019 03:56:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:1d20e74f71f775848cd94fe3f421b0bb3d1c8889f7769852785240e9dba26725`  
		Last Modified: Fri, 08 Mar 2019 03:36:29 GMT  
		Size: 2.2 MB (2201105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7374eabafe6fd1a7463291897b44c6f3d369c85cadf70e2648554455db74b243`  
		Last Modified: Fri, 08 Mar 2019 03:56:32 GMT  
		Size: 309.6 KB (309600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:573313b6a82d38562a4911be12d44aec3ca1c8b826259297e5a1ea21b751def5`  
		Last Modified: Fri, 08 Mar 2019 03:56:32 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9b12feb158a3e478d9d1a52e9bfc9c7435ddbdbd879247495804c3b177dc03`  
		Last Modified: Fri, 08 Mar 2019 03:56:38 GMT  
		Size: 17.1 MB (17066122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.2-alpine`

```console
$ docker pull irssi@sha256:596407b0c6e22685a234f2d6ad1fff7e83fa00b3ba516d2cd1ac6e06b1a7d1d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `irssi:1.2-alpine` - linux; amd64

```console
$ docker pull irssi@sha256:b6246791a3325b70a356d582198d7f843b292db5ef5d895c2698a025a814e54c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 MB (19233814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1d704475f684c8740c09ad1a572601cf58c8fbaf30643abdfcbf848ab36995a`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:06:50 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 08 Mar 2019 02:06:51 GMT
ENV HOME=/home/user
# Fri, 08 Mar 2019 02:06:52 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Mar 2019 02:06:52 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:06:52 GMT
ENV IRSSI_VERSION=1.2.0
# Fri, 08 Mar 2019 02:08:17 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 08 Mar 2019 02:08:17 GMT
WORKDIR /home/user
# Fri, 08 Mar 2019 02:08:17 GMT
USER user
# Fri, 08 Mar 2019 02:08:18 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fbd3a8de6e04160541df73ad90bc9c34fddec8750f78129c687349485fc2c7`  
		Last Modified: Fri, 08 Mar 2019 02:08:43 GMT  
		Size: 308.5 KB (308534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63a53635ba04fa9994c0063be53ac33f66bf28adaac01afd9e00597335971cc`  
		Last Modified: Fri, 08 Mar 2019 02:08:43 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0fd7b464310a9679968f3331083fbc20b98e5da5ec5d38e4edc12dbb8e84f9a`  
		Last Modified: Fri, 08 Mar 2019 02:08:49 GMT  
		Size: 16.8 MB (16816914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.2-alpine` - linux; arm variant v6

```console
$ docker pull irssi@sha256:5f8345d180ae44e46e63f29dd648e860313250d7ba05e27eb0984b2bd93bf67d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17792531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:834ed0d36fe7b16b59448964060a354bb7cb318d8df9c112fd79f343735e6e7f`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:19 GMT
ADD file:81d5fd270fcda0eebec04e6f74f4834e629c70ffe142ec40611caf179e34d4c1 in / 
# Fri, 08 Mar 2019 03:36:20 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:16:20 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 08 Mar 2019 04:16:20 GMT
ENV HOME=/home/user
# Fri, 08 Mar 2019 04:16:21 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Mar 2019 04:16:22 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:16:22 GMT
ENV IRSSI_VERSION=1.2.0
# Fri, 08 Mar 2019 04:17:04 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 08 Mar 2019 04:17:05 GMT
WORKDIR /home/user
# Fri, 08 Mar 2019 04:17:05 GMT
USER user
# Fri, 08 Mar 2019 04:17:05 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:1debd7fe5349ada802e5b176f99ddbfdf432a51a67897f0000ec665d31a33293`  
		Last Modified: Fri, 08 Mar 2019 03:36:57 GMT  
		Size: 2.1 MB (2050246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669146b49fd8e80ea3327613c96ff72d3a31324899cc6a85632757cb360a7cb1`  
		Last Modified: Fri, 08 Mar 2019 04:17:16 GMT  
		Size: 309.2 KB (309250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad970ff5f0212af66b782549482a0591c02dffcde0bc878ddaea25d570d99610`  
		Last Modified: Fri, 08 Mar 2019 04:17:19 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6eee087db739c645bdeb1f554cd3615f568c36cde1d5f219e11a71a464f4759`  
		Last Modified: Fri, 08 Mar 2019 04:17:23 GMT  
		Size: 15.4 MB (15431735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.2-alpine` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:825d05d7386d6edb89d7535c390a941fca7e7ebafd13b5ba8d7f1e00a6eb6d1e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 MB (18391779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13075241c0642b76a872e026bd458d0036c42bdfb55a915d4289628b94f3ee74`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:21 GMT
ADD file:593fdff46d6e2edf7fc03d568a8d8d4149ef13f8c2b1af554299a8d0d0e06e2f in / 
# Fri, 08 Mar 2019 03:37:22 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 08:57:48 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 08 Mar 2019 08:57:49 GMT
ENV HOME=/home/user
# Fri, 08 Mar 2019 08:57:51 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Mar 2019 08:57:52 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 08:57:53 GMT
ENV IRSSI_VERSION=1.2.0
# Fri, 08 Mar 2019 08:58:59 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 08 Mar 2019 08:59:00 GMT
WORKDIR /home/user
# Fri, 08 Mar 2019 08:59:02 GMT
USER user
# Fri, 08 Mar 2019 08:59:03 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:40223db5366fa5aa8fd6b2c2b3f97d1daf156cef4d139adf144f36b165d85afe`  
		Last Modified: Fri, 08 Mar 2019 03:38:13 GMT  
		Size: 2.0 MB (1998986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b444fa44cc7093abf83cbc32950b4be2f9ea7fbab7c2120ede6acffa350542`  
		Last Modified: Fri, 08 Mar 2019 08:59:24 GMT  
		Size: 308.7 KB (308686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afec0191ea8d53f54cd326d12790b1a30baa3aa4152910c28081c73a588593aa`  
		Last Modified: Fri, 08 Mar 2019 08:59:23 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e780c675a25965ad8dde3515cb614361b592a8bb726a7fa584b1dabccb3a6d1`  
		Last Modified: Fri, 08 Mar 2019 08:59:31 GMT  
		Size: 16.1 MB (16082840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.2-alpine` - linux; 386

```console
$ docker pull irssi@sha256:127ffb59d25469b0bce3acff701dfc71c0ce73d37b4a67fdaae2f38cb538393c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18292558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:545a316a6dd2cc202613f88a04c4f5617d276b345b439c425dcc0efd310b5ea7`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:06 GMT
ADD file:eca24f9ef61dc86fee19b7e25d939a4ce663b5c36d7ed6b8553a4b4f5784d14b in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:32:37 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 08 Mar 2019 04:32:37 GMT
ENV HOME=/home/user
# Fri, 08 Mar 2019 04:32:38 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Mar 2019 04:32:38 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:32:38 GMT
ENV IRSSI_VERSION=1.2.0
# Fri, 08 Mar 2019 04:33:40 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 08 Mar 2019 04:33:40 GMT
WORKDIR /home/user
# Fri, 08 Mar 2019 04:33:40 GMT
USER user
# Fri, 08 Mar 2019 04:33:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:aefea79d2300fff07c38505e077fe3dd5057323f7073024e51b0f3ac80f4c49d`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.2 MB (2168969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916c7291ad5947f19c11a26c3e0c269aaa0f34108296e51ba1309cdb7281d2f5`  
		Last Modified: Fri, 08 Mar 2019 04:33:57 GMT  
		Size: 309.2 KB (309213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9d505027c72882ca944ebeb9bd89a7133c9117498ab8b6aa6b3cd1bdbea3e38`  
		Last Modified: Fri, 08 Mar 2019 04:33:57 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455f913d3ec3a4d9d1f9c085a002a998ed24360d940006c599af7908c520cda9`  
		Last Modified: Fri, 08 Mar 2019 04:34:02 GMT  
		Size: 15.8 MB (15813104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.2-alpine` - linux; ppc64le

```console
$ docker pull irssi@sha256:633534d1e9ae0833744a02dcbd2097da548021ca229d1bf82826f42b38b1ce6b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18881039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9404ddb6e0136ec360eb7bfc3032a94c59f9ad078cf14e4aa71511984003b0ea`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:51 GMT
ADD file:55fbeb767cf2b9344907a5252cccd1e7fb7b146277b267422b6117406300bfbf in / 
# Fri, 08 Mar 2019 03:37:54 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:11:04 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 08 Mar 2019 06:11:08 GMT
ENV HOME=/home/user
# Fri, 08 Mar 2019 06:11:20 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Mar 2019 06:11:24 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 06:11:28 GMT
ENV IRSSI_VERSION=1.2.0
# Fri, 08 Mar 2019 06:12:28 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 08 Mar 2019 06:12:33 GMT
WORKDIR /home/user
# Fri, 08 Mar 2019 06:12:35 GMT
USER user
# Fri, 08 Mar 2019 06:12:40 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f4c3542ff81d415a34c73cfb323605bb8faf0062bb1ba117e2bd1370b734b441`  
		Last Modified: Fri, 08 Mar 2019 03:38:54 GMT  
		Size: 2.1 MB (2098856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f911b60a9b8a3978862449cf7a77b41def43c50957a732c391264715318174`  
		Last Modified: Fri, 08 Mar 2019 06:13:06 GMT  
		Size: 311.0 KB (311033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1ccfb0f7383ca80b9485003e16e3d324d495832ecad3b5a1a3c9c523d7f45b`  
		Last Modified: Fri, 08 Mar 2019 06:13:06 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5545ba4ce116ffd5d99a1f6a8d1033c8f9cfe749515ed0ed15efd324c6134885`  
		Last Modified: Fri, 08 Mar 2019 06:13:10 GMT  
		Size: 16.5 MB (16469850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.2-alpine` - linux; s390x

```console
$ docker pull irssi@sha256:1c93a35a453f70e11406675102092900430d446eb71094455ae7b865ccc7a2e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.6 MB (19578095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b10239dfd0f14f177887bb6de23d6f32fe43da69821a75bfdf4ddf6474791d7`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:55 GMT
ADD file:a5ae3b95b5b5c25ee77b70b9462247e1612c5a24b72c9d142726fbbf54a5d4c0 in / 
# Fri, 08 Mar 2019 03:35:55 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:55:40 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 08 Mar 2019 03:55:40 GMT
ENV HOME=/home/user
# Fri, 08 Mar 2019 03:55:41 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Mar 2019 03:55:41 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 03:55:42 GMT
ENV IRSSI_VERSION=1.2.0
# Fri, 08 Mar 2019 03:56:16 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:56:17 GMT
WORKDIR /home/user
# Fri, 08 Mar 2019 03:56:17 GMT
USER user
# Fri, 08 Mar 2019 03:56:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:1d20e74f71f775848cd94fe3f421b0bb3d1c8889f7769852785240e9dba26725`  
		Last Modified: Fri, 08 Mar 2019 03:36:29 GMT  
		Size: 2.2 MB (2201105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7374eabafe6fd1a7463291897b44c6f3d369c85cadf70e2648554455db74b243`  
		Last Modified: Fri, 08 Mar 2019 03:56:32 GMT  
		Size: 309.6 KB (309600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:573313b6a82d38562a4911be12d44aec3ca1c8b826259297e5a1ea21b751def5`  
		Last Modified: Fri, 08 Mar 2019 03:56:32 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9b12feb158a3e478d9d1a52e9bfc9c7435ddbdbd879247495804c3b177dc03`  
		Last Modified: Fri, 08 Mar 2019 03:56:38 GMT  
		Size: 17.1 MB (17066122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1-alpine`

```console
$ docker pull irssi@sha256:596407b0c6e22685a234f2d6ad1fff7e83fa00b3ba516d2cd1ac6e06b1a7d1d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `irssi:1-alpine` - linux; amd64

```console
$ docker pull irssi@sha256:b6246791a3325b70a356d582198d7f843b292db5ef5d895c2698a025a814e54c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 MB (19233814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1d704475f684c8740c09ad1a572601cf58c8fbaf30643abdfcbf848ab36995a`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:06:50 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 08 Mar 2019 02:06:51 GMT
ENV HOME=/home/user
# Fri, 08 Mar 2019 02:06:52 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Mar 2019 02:06:52 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:06:52 GMT
ENV IRSSI_VERSION=1.2.0
# Fri, 08 Mar 2019 02:08:17 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 08 Mar 2019 02:08:17 GMT
WORKDIR /home/user
# Fri, 08 Mar 2019 02:08:17 GMT
USER user
# Fri, 08 Mar 2019 02:08:18 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fbd3a8de6e04160541df73ad90bc9c34fddec8750f78129c687349485fc2c7`  
		Last Modified: Fri, 08 Mar 2019 02:08:43 GMT  
		Size: 308.5 KB (308534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63a53635ba04fa9994c0063be53ac33f66bf28adaac01afd9e00597335971cc`  
		Last Modified: Fri, 08 Mar 2019 02:08:43 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0fd7b464310a9679968f3331083fbc20b98e5da5ec5d38e4edc12dbb8e84f9a`  
		Last Modified: Fri, 08 Mar 2019 02:08:49 GMT  
		Size: 16.8 MB (16816914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1-alpine` - linux; arm variant v6

```console
$ docker pull irssi@sha256:5f8345d180ae44e46e63f29dd648e860313250d7ba05e27eb0984b2bd93bf67d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17792531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:834ed0d36fe7b16b59448964060a354bb7cb318d8df9c112fd79f343735e6e7f`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:19 GMT
ADD file:81d5fd270fcda0eebec04e6f74f4834e629c70ffe142ec40611caf179e34d4c1 in / 
# Fri, 08 Mar 2019 03:36:20 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:16:20 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 08 Mar 2019 04:16:20 GMT
ENV HOME=/home/user
# Fri, 08 Mar 2019 04:16:21 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Mar 2019 04:16:22 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:16:22 GMT
ENV IRSSI_VERSION=1.2.0
# Fri, 08 Mar 2019 04:17:04 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 08 Mar 2019 04:17:05 GMT
WORKDIR /home/user
# Fri, 08 Mar 2019 04:17:05 GMT
USER user
# Fri, 08 Mar 2019 04:17:05 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:1debd7fe5349ada802e5b176f99ddbfdf432a51a67897f0000ec665d31a33293`  
		Last Modified: Fri, 08 Mar 2019 03:36:57 GMT  
		Size: 2.1 MB (2050246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669146b49fd8e80ea3327613c96ff72d3a31324899cc6a85632757cb360a7cb1`  
		Last Modified: Fri, 08 Mar 2019 04:17:16 GMT  
		Size: 309.2 KB (309250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad970ff5f0212af66b782549482a0591c02dffcde0bc878ddaea25d570d99610`  
		Last Modified: Fri, 08 Mar 2019 04:17:19 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6eee087db739c645bdeb1f554cd3615f568c36cde1d5f219e11a71a464f4759`  
		Last Modified: Fri, 08 Mar 2019 04:17:23 GMT  
		Size: 15.4 MB (15431735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1-alpine` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:825d05d7386d6edb89d7535c390a941fca7e7ebafd13b5ba8d7f1e00a6eb6d1e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 MB (18391779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13075241c0642b76a872e026bd458d0036c42bdfb55a915d4289628b94f3ee74`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:21 GMT
ADD file:593fdff46d6e2edf7fc03d568a8d8d4149ef13f8c2b1af554299a8d0d0e06e2f in / 
# Fri, 08 Mar 2019 03:37:22 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 08:57:48 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 08 Mar 2019 08:57:49 GMT
ENV HOME=/home/user
# Fri, 08 Mar 2019 08:57:51 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Mar 2019 08:57:52 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 08:57:53 GMT
ENV IRSSI_VERSION=1.2.0
# Fri, 08 Mar 2019 08:58:59 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 08 Mar 2019 08:59:00 GMT
WORKDIR /home/user
# Fri, 08 Mar 2019 08:59:02 GMT
USER user
# Fri, 08 Mar 2019 08:59:03 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:40223db5366fa5aa8fd6b2c2b3f97d1daf156cef4d139adf144f36b165d85afe`  
		Last Modified: Fri, 08 Mar 2019 03:38:13 GMT  
		Size: 2.0 MB (1998986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b444fa44cc7093abf83cbc32950b4be2f9ea7fbab7c2120ede6acffa350542`  
		Last Modified: Fri, 08 Mar 2019 08:59:24 GMT  
		Size: 308.7 KB (308686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afec0191ea8d53f54cd326d12790b1a30baa3aa4152910c28081c73a588593aa`  
		Last Modified: Fri, 08 Mar 2019 08:59:23 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e780c675a25965ad8dde3515cb614361b592a8bb726a7fa584b1dabccb3a6d1`  
		Last Modified: Fri, 08 Mar 2019 08:59:31 GMT  
		Size: 16.1 MB (16082840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1-alpine` - linux; 386

```console
$ docker pull irssi@sha256:127ffb59d25469b0bce3acff701dfc71c0ce73d37b4a67fdaae2f38cb538393c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18292558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:545a316a6dd2cc202613f88a04c4f5617d276b345b439c425dcc0efd310b5ea7`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:06 GMT
ADD file:eca24f9ef61dc86fee19b7e25d939a4ce663b5c36d7ed6b8553a4b4f5784d14b in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:32:37 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 08 Mar 2019 04:32:37 GMT
ENV HOME=/home/user
# Fri, 08 Mar 2019 04:32:38 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Mar 2019 04:32:38 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:32:38 GMT
ENV IRSSI_VERSION=1.2.0
# Fri, 08 Mar 2019 04:33:40 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 08 Mar 2019 04:33:40 GMT
WORKDIR /home/user
# Fri, 08 Mar 2019 04:33:40 GMT
USER user
# Fri, 08 Mar 2019 04:33:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:aefea79d2300fff07c38505e077fe3dd5057323f7073024e51b0f3ac80f4c49d`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.2 MB (2168969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916c7291ad5947f19c11a26c3e0c269aaa0f34108296e51ba1309cdb7281d2f5`  
		Last Modified: Fri, 08 Mar 2019 04:33:57 GMT  
		Size: 309.2 KB (309213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9d505027c72882ca944ebeb9bd89a7133c9117498ab8b6aa6b3cd1bdbea3e38`  
		Last Modified: Fri, 08 Mar 2019 04:33:57 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455f913d3ec3a4d9d1f9c085a002a998ed24360d940006c599af7908c520cda9`  
		Last Modified: Fri, 08 Mar 2019 04:34:02 GMT  
		Size: 15.8 MB (15813104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1-alpine` - linux; ppc64le

```console
$ docker pull irssi@sha256:633534d1e9ae0833744a02dcbd2097da548021ca229d1bf82826f42b38b1ce6b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18881039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9404ddb6e0136ec360eb7bfc3032a94c59f9ad078cf14e4aa71511984003b0ea`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:51 GMT
ADD file:55fbeb767cf2b9344907a5252cccd1e7fb7b146277b267422b6117406300bfbf in / 
# Fri, 08 Mar 2019 03:37:54 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:11:04 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 08 Mar 2019 06:11:08 GMT
ENV HOME=/home/user
# Fri, 08 Mar 2019 06:11:20 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Mar 2019 06:11:24 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 06:11:28 GMT
ENV IRSSI_VERSION=1.2.0
# Fri, 08 Mar 2019 06:12:28 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 08 Mar 2019 06:12:33 GMT
WORKDIR /home/user
# Fri, 08 Mar 2019 06:12:35 GMT
USER user
# Fri, 08 Mar 2019 06:12:40 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f4c3542ff81d415a34c73cfb323605bb8faf0062bb1ba117e2bd1370b734b441`  
		Last Modified: Fri, 08 Mar 2019 03:38:54 GMT  
		Size: 2.1 MB (2098856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f911b60a9b8a3978862449cf7a77b41def43c50957a732c391264715318174`  
		Last Modified: Fri, 08 Mar 2019 06:13:06 GMT  
		Size: 311.0 KB (311033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1ccfb0f7383ca80b9485003e16e3d324d495832ecad3b5a1a3c9c523d7f45b`  
		Last Modified: Fri, 08 Mar 2019 06:13:06 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5545ba4ce116ffd5d99a1f6a8d1033c8f9cfe749515ed0ed15efd324c6134885`  
		Last Modified: Fri, 08 Mar 2019 06:13:10 GMT  
		Size: 16.5 MB (16469850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1-alpine` - linux; s390x

```console
$ docker pull irssi@sha256:1c93a35a453f70e11406675102092900430d446eb71094455ae7b865ccc7a2e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.6 MB (19578095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b10239dfd0f14f177887bb6de23d6f32fe43da69821a75bfdf4ddf6474791d7`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:55 GMT
ADD file:a5ae3b95b5b5c25ee77b70b9462247e1612c5a24b72c9d142726fbbf54a5d4c0 in / 
# Fri, 08 Mar 2019 03:35:55 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:55:40 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 08 Mar 2019 03:55:40 GMT
ENV HOME=/home/user
# Fri, 08 Mar 2019 03:55:41 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Mar 2019 03:55:41 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 03:55:42 GMT
ENV IRSSI_VERSION=1.2.0
# Fri, 08 Mar 2019 03:56:16 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:56:17 GMT
WORKDIR /home/user
# Fri, 08 Mar 2019 03:56:17 GMT
USER user
# Fri, 08 Mar 2019 03:56:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:1d20e74f71f775848cd94fe3f421b0bb3d1c8889f7769852785240e9dba26725`  
		Last Modified: Fri, 08 Mar 2019 03:36:29 GMT  
		Size: 2.2 MB (2201105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7374eabafe6fd1a7463291897b44c6f3d369c85cadf70e2648554455db74b243`  
		Last Modified: Fri, 08 Mar 2019 03:56:32 GMT  
		Size: 309.6 KB (309600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:573313b6a82d38562a4911be12d44aec3ca1c8b826259297e5a1ea21b751def5`  
		Last Modified: Fri, 08 Mar 2019 03:56:32 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9b12feb158a3e478d9d1a52e9bfc9c7435ddbdbd879247495804c3b177dc03`  
		Last Modified: Fri, 08 Mar 2019 03:56:38 GMT  
		Size: 17.1 MB (17066122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:alpine`

```console
$ docker pull irssi@sha256:596407b0c6e22685a234f2d6ad1fff7e83fa00b3ba516d2cd1ac6e06b1a7d1d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `irssi:alpine` - linux; amd64

```console
$ docker pull irssi@sha256:b6246791a3325b70a356d582198d7f843b292db5ef5d895c2698a025a814e54c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 MB (19233814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1d704475f684c8740c09ad1a572601cf58c8fbaf30643abdfcbf848ab36995a`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:06:50 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 08 Mar 2019 02:06:51 GMT
ENV HOME=/home/user
# Fri, 08 Mar 2019 02:06:52 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Mar 2019 02:06:52 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:06:52 GMT
ENV IRSSI_VERSION=1.2.0
# Fri, 08 Mar 2019 02:08:17 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 08 Mar 2019 02:08:17 GMT
WORKDIR /home/user
# Fri, 08 Mar 2019 02:08:17 GMT
USER user
# Fri, 08 Mar 2019 02:08:18 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fbd3a8de6e04160541df73ad90bc9c34fddec8750f78129c687349485fc2c7`  
		Last Modified: Fri, 08 Mar 2019 02:08:43 GMT  
		Size: 308.5 KB (308534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63a53635ba04fa9994c0063be53ac33f66bf28adaac01afd9e00597335971cc`  
		Last Modified: Fri, 08 Mar 2019 02:08:43 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0fd7b464310a9679968f3331083fbc20b98e5da5ec5d38e4edc12dbb8e84f9a`  
		Last Modified: Fri, 08 Mar 2019 02:08:49 GMT  
		Size: 16.8 MB (16816914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:alpine` - linux; arm variant v6

```console
$ docker pull irssi@sha256:5f8345d180ae44e46e63f29dd648e860313250d7ba05e27eb0984b2bd93bf67d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17792531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:834ed0d36fe7b16b59448964060a354bb7cb318d8df9c112fd79f343735e6e7f`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:19 GMT
ADD file:81d5fd270fcda0eebec04e6f74f4834e629c70ffe142ec40611caf179e34d4c1 in / 
# Fri, 08 Mar 2019 03:36:20 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:16:20 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 08 Mar 2019 04:16:20 GMT
ENV HOME=/home/user
# Fri, 08 Mar 2019 04:16:21 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Mar 2019 04:16:22 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:16:22 GMT
ENV IRSSI_VERSION=1.2.0
# Fri, 08 Mar 2019 04:17:04 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 08 Mar 2019 04:17:05 GMT
WORKDIR /home/user
# Fri, 08 Mar 2019 04:17:05 GMT
USER user
# Fri, 08 Mar 2019 04:17:05 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:1debd7fe5349ada802e5b176f99ddbfdf432a51a67897f0000ec665d31a33293`  
		Last Modified: Fri, 08 Mar 2019 03:36:57 GMT  
		Size: 2.1 MB (2050246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669146b49fd8e80ea3327613c96ff72d3a31324899cc6a85632757cb360a7cb1`  
		Last Modified: Fri, 08 Mar 2019 04:17:16 GMT  
		Size: 309.2 KB (309250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad970ff5f0212af66b782549482a0591c02dffcde0bc878ddaea25d570d99610`  
		Last Modified: Fri, 08 Mar 2019 04:17:19 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6eee087db739c645bdeb1f554cd3615f568c36cde1d5f219e11a71a464f4759`  
		Last Modified: Fri, 08 Mar 2019 04:17:23 GMT  
		Size: 15.4 MB (15431735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:alpine` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:825d05d7386d6edb89d7535c390a941fca7e7ebafd13b5ba8d7f1e00a6eb6d1e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 MB (18391779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13075241c0642b76a872e026bd458d0036c42bdfb55a915d4289628b94f3ee74`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:21 GMT
ADD file:593fdff46d6e2edf7fc03d568a8d8d4149ef13f8c2b1af554299a8d0d0e06e2f in / 
# Fri, 08 Mar 2019 03:37:22 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 08:57:48 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 08 Mar 2019 08:57:49 GMT
ENV HOME=/home/user
# Fri, 08 Mar 2019 08:57:51 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Mar 2019 08:57:52 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 08:57:53 GMT
ENV IRSSI_VERSION=1.2.0
# Fri, 08 Mar 2019 08:58:59 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 08 Mar 2019 08:59:00 GMT
WORKDIR /home/user
# Fri, 08 Mar 2019 08:59:02 GMT
USER user
# Fri, 08 Mar 2019 08:59:03 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:40223db5366fa5aa8fd6b2c2b3f97d1daf156cef4d139adf144f36b165d85afe`  
		Last Modified: Fri, 08 Mar 2019 03:38:13 GMT  
		Size: 2.0 MB (1998986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b444fa44cc7093abf83cbc32950b4be2f9ea7fbab7c2120ede6acffa350542`  
		Last Modified: Fri, 08 Mar 2019 08:59:24 GMT  
		Size: 308.7 KB (308686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afec0191ea8d53f54cd326d12790b1a30baa3aa4152910c28081c73a588593aa`  
		Last Modified: Fri, 08 Mar 2019 08:59:23 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e780c675a25965ad8dde3515cb614361b592a8bb726a7fa584b1dabccb3a6d1`  
		Last Modified: Fri, 08 Mar 2019 08:59:31 GMT  
		Size: 16.1 MB (16082840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:alpine` - linux; 386

```console
$ docker pull irssi@sha256:127ffb59d25469b0bce3acff701dfc71c0ce73d37b4a67fdaae2f38cb538393c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18292558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:545a316a6dd2cc202613f88a04c4f5617d276b345b439c425dcc0efd310b5ea7`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:06 GMT
ADD file:eca24f9ef61dc86fee19b7e25d939a4ce663b5c36d7ed6b8553a4b4f5784d14b in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:32:37 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 08 Mar 2019 04:32:37 GMT
ENV HOME=/home/user
# Fri, 08 Mar 2019 04:32:38 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Mar 2019 04:32:38 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:32:38 GMT
ENV IRSSI_VERSION=1.2.0
# Fri, 08 Mar 2019 04:33:40 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 08 Mar 2019 04:33:40 GMT
WORKDIR /home/user
# Fri, 08 Mar 2019 04:33:40 GMT
USER user
# Fri, 08 Mar 2019 04:33:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:aefea79d2300fff07c38505e077fe3dd5057323f7073024e51b0f3ac80f4c49d`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.2 MB (2168969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916c7291ad5947f19c11a26c3e0c269aaa0f34108296e51ba1309cdb7281d2f5`  
		Last Modified: Fri, 08 Mar 2019 04:33:57 GMT  
		Size: 309.2 KB (309213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9d505027c72882ca944ebeb9bd89a7133c9117498ab8b6aa6b3cd1bdbea3e38`  
		Last Modified: Fri, 08 Mar 2019 04:33:57 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455f913d3ec3a4d9d1f9c085a002a998ed24360d940006c599af7908c520cda9`  
		Last Modified: Fri, 08 Mar 2019 04:34:02 GMT  
		Size: 15.8 MB (15813104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:alpine` - linux; ppc64le

```console
$ docker pull irssi@sha256:633534d1e9ae0833744a02dcbd2097da548021ca229d1bf82826f42b38b1ce6b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18881039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9404ddb6e0136ec360eb7bfc3032a94c59f9ad078cf14e4aa71511984003b0ea`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:51 GMT
ADD file:55fbeb767cf2b9344907a5252cccd1e7fb7b146277b267422b6117406300bfbf in / 
# Fri, 08 Mar 2019 03:37:54 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:11:04 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 08 Mar 2019 06:11:08 GMT
ENV HOME=/home/user
# Fri, 08 Mar 2019 06:11:20 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Mar 2019 06:11:24 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 06:11:28 GMT
ENV IRSSI_VERSION=1.2.0
# Fri, 08 Mar 2019 06:12:28 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 08 Mar 2019 06:12:33 GMT
WORKDIR /home/user
# Fri, 08 Mar 2019 06:12:35 GMT
USER user
# Fri, 08 Mar 2019 06:12:40 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f4c3542ff81d415a34c73cfb323605bb8faf0062bb1ba117e2bd1370b734b441`  
		Last Modified: Fri, 08 Mar 2019 03:38:54 GMT  
		Size: 2.1 MB (2098856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f911b60a9b8a3978862449cf7a77b41def43c50957a732c391264715318174`  
		Last Modified: Fri, 08 Mar 2019 06:13:06 GMT  
		Size: 311.0 KB (311033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1ccfb0f7383ca80b9485003e16e3d324d495832ecad3b5a1a3c9c523d7f45b`  
		Last Modified: Fri, 08 Mar 2019 06:13:06 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5545ba4ce116ffd5d99a1f6a8d1033c8f9cfe749515ed0ed15efd324c6134885`  
		Last Modified: Fri, 08 Mar 2019 06:13:10 GMT  
		Size: 16.5 MB (16469850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:alpine` - linux; s390x

```console
$ docker pull irssi@sha256:1c93a35a453f70e11406675102092900430d446eb71094455ae7b865ccc7a2e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.6 MB (19578095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b10239dfd0f14f177887bb6de23d6f32fe43da69821a75bfdf4ddf6474791d7`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:55 GMT
ADD file:a5ae3b95b5b5c25ee77b70b9462247e1612c5a24b72c9d142726fbbf54a5d4c0 in / 
# Fri, 08 Mar 2019 03:35:55 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:55:40 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 08 Mar 2019 03:55:40 GMT
ENV HOME=/home/user
# Fri, 08 Mar 2019 03:55:41 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Mar 2019 03:55:41 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 03:55:42 GMT
ENV IRSSI_VERSION=1.2.0
# Fri, 08 Mar 2019 03:56:16 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:56:17 GMT
WORKDIR /home/user
# Fri, 08 Mar 2019 03:56:17 GMT
USER user
# Fri, 08 Mar 2019 03:56:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:1d20e74f71f775848cd94fe3f421b0bb3d1c8889f7769852785240e9dba26725`  
		Last Modified: Fri, 08 Mar 2019 03:36:29 GMT  
		Size: 2.2 MB (2201105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7374eabafe6fd1a7463291897b44c6f3d369c85cadf70e2648554455db74b243`  
		Last Modified: Fri, 08 Mar 2019 03:56:32 GMT  
		Size: 309.6 KB (309600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:573313b6a82d38562a4911be12d44aec3ca1c8b826259297e5a1ea21b751def5`  
		Last Modified: Fri, 08 Mar 2019 03:56:32 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9b12feb158a3e478d9d1a52e9bfc9c7435ddbdbd879247495804c3b177dc03`  
		Last Modified: Fri, 08 Mar 2019 03:56:38 GMT  
		Size: 17.1 MB (17066122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:latest`

```console
$ docker pull irssi@sha256:fc812e8d8a3bcc0431a40a48316d4b73b561f560e06b381bb5e245fe6887f1e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `irssi:latest` - linux; amd64

```console
$ docker pull irssi@sha256:03e6b7f50d48bc58e03b6a2e6660c5a1ac0603bf45f6b397a121d6dcc3024d46
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51507697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:023fe2d294e106ba1636fbc8ed2fb8d6a0619443008e656f757f71c1117ae08e`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:36:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:36:12 GMT
ENV HOME=/home/user
# Tue, 26 Mar 2019 23:36:12 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 26 Mar 2019 23:36:13 GMT
ENV LANG=C.UTF-8
# Tue, 26 Mar 2019 23:36:13 GMT
ENV IRSSI_VERSION=1.2.0
# Tue, 26 Mar 2019 23:37:16 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 26 Mar 2019 23:37:17 GMT
WORKDIR /home/user
# Tue, 26 Mar 2019 23:37:17 GMT
USER user
# Tue, 26 Mar 2019 23:37:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55d4fc81115a0e1247d57cb1140433f43dde60de1500c6285544359a6c944fa`  
		Last Modified: Tue, 26 Mar 2019 23:37:45 GMT  
		Size: 18.7 MB (18727088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16207ee65242c2dcab411734070a533954d7d892071bb5e1d1b201d5fb393662`  
		Last Modified: Tue, 26 Mar 2019 23:37:40 GMT  
		Size: 4.2 KB (4160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6933e5574aaf3ac16c4c6d48a92404e47c2fb0e3dc51e6f7fefeb8c9d693488`  
		Last Modified: Tue, 26 Mar 2019 23:37:42 GMT  
		Size: 10.3 MB (10280401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; arm variant v5

```console
$ docker pull irssi@sha256:ccf03cfc723241703e62ef59fae0056a2f1fd6f97ca371c75bec65f93c48ccba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47802329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:556bb588865272f09aa9487b6b361a16e6cad6b40639c50e1f6544e486f7daf1`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:23:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:23:05 GMT
ENV HOME=/home/user
# Wed, 27 Mar 2019 09:23:06 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 27 Mar 2019 09:23:06 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 09:23:07 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 27 Mar 2019 09:29:39 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 09:29:39 GMT
WORKDIR /home/user
# Wed, 27 Mar 2019 09:29:40 GMT
USER user
# Wed, 27 Mar 2019 09:29:40 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9561d460278eaa8d909b2022d84b9f16ce588f46c92ab2cbc42a62b01581f8`  
		Last Modified: Wed, 27 Mar 2019 09:30:11 GMT  
		Size: 17.5 MB (17496714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaaa7230e90db83d80833a07b333743f5dfb259c025fd1d3e74973877f0b911c`  
		Last Modified: Wed, 27 Mar 2019 09:30:03 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1573bbfb7d04f427efd01da0a6e9b0e5e7aa9c65b4d9b706931ee948cfe6c1`  
		Last Modified: Wed, 27 Mar 2019 09:30:07 GMT  
		Size: 9.1 MB (9140771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; arm variant v7

```console
$ docker pull irssi@sha256:6370d9c321efbfe6e706b27f2a78c877d8f3b4234a4906178c80e1a0cb9c8137
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45060495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6daa12bfad0a9ef471af94bba73652cfaf79f3c5cecb8e4b698fb9edaf437de3`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:53:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:53:38 GMT
ENV HOME=/home/user
# Tue, 05 Mar 2019 14:53:41 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 05 Mar 2019 14:53:41 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 14:53:42 GMT
ENV IRSSI_VERSION=1.2.0
# Tue, 05 Mar 2019 14:54:52 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 14:54:54 GMT
WORKDIR /home/user
# Tue, 05 Mar 2019 14:54:54 GMT
USER user
# Tue, 05 Mar 2019 14:54:55 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d053b77688cad7ed114736c28d3c0bfb0f09bea36ea249cb43688c7478027448`  
		Last Modified: Tue, 05 Mar 2019 14:55:15 GMT  
		Size: 17.0 MB (16989008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d702866734d124e25b111a97e6985b74909fd8605913eb4f80419f02d53ed1d3`  
		Last Modified: Tue, 05 Mar 2019 14:55:07 GMT  
		Size: 4.2 KB (4192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2181418a6537e3ba2a1ac450008fbfbe1c8de5213d4eb77aaefed4b4da31af`  
		Last Modified: Tue, 05 Mar 2019 14:55:11 GMT  
		Size: 8.8 MB (8784801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:3bba14f39eb43412ee609399d312ac81ae2d7cef95ff2c141373bf4d6daf4bd2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47760832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb459d86e4f14c3d24838654522013fe416f82210f8cf39c4ad8584d29bd767f`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 11:34:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 11:34:46 GMT
ENV HOME=/home/user
# Wed, 06 Feb 2019 11:34:55 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 06 Feb 2019 11:34:58 GMT
ENV LANG=C.UTF-8
# Thu, 14 Feb 2019 10:03:01 GMT
ENV IRSSI_VERSION=1.2.0
# Thu, 14 Feb 2019 10:05:59 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 14 Feb 2019 10:06:00 GMT
WORKDIR /home/user
# Thu, 14 Feb 2019 10:06:01 GMT
USER user
# Thu, 14 Feb 2019 10:06:02 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d429afd372f4f66e34a239ebec51038d8d5ae7e086d5d83402a2822d9acba117`  
		Last Modified: Wed, 06 Feb 2019 11:40:07 GMT  
		Size: 17.8 MB (17830985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0160402287c60a44fb5c9b07fd4b2fa98ac709a13c850367b4b3c7d684120c62`  
		Last Modified: Wed, 06 Feb 2019 11:39:57 GMT  
		Size: 4.2 KB (4184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af924a9dd2677288ca12476154a814feda9a59f625ba7feb1ca2171e1238739e`  
		Last Modified: Thu, 14 Feb 2019 10:07:54 GMT  
		Size: 9.6 MB (9575504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; 386

```console
$ docker pull irssi@sha256:831d49ec7b2df16c1d44c8ec6ce725167e3c5265f306f58173e29d3991075bd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54855429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91371e9f844ed81a7918563737d97a80234530a8bf7bd10289a15e67c7cdd8dd`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:21:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 17:21:27 GMT
ENV HOME=/home/user
# Tue, 05 Mar 2019 17:21:28 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 05 Mar 2019 17:21:28 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 17:21:28 GMT
ENV IRSSI_VERSION=1.2.0
# Tue, 05 Mar 2019 17:22:38 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 17:22:38 GMT
WORKDIR /home/user
# Tue, 05 Mar 2019 17:22:38 GMT
USER user
# Tue, 05 Mar 2019 17:22:39 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a223a658eefc8c59b6671329b62213d55cf8e4b7e5604e5d6fe779844dc725`  
		Last Modified: Tue, 05 Mar 2019 17:23:02 GMT  
		Size: 18.4 MB (18413211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8fa53e9292582c3f5cc09200e83399baf125dc2138d3d5a74959c017976730`  
		Last Modified: Tue, 05 Mar 2019 17:22:54 GMT  
		Size: 4.2 KB (4159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2ffb7284368242d6fc6b6574cdb1785d0248b1f2f9a87b052d8fd82ba0e13b`  
		Last Modified: Tue, 05 Mar 2019 17:22:58 GMT  
		Size: 13.3 MB (13312379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; ppc64le

```console
$ docker pull irssi@sha256:e123fb943e1333f08993c557507f649562d970b85ae182efce4c8f2c126a4f3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.2 MB (51210666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d4de3b1639f02f79d93dd9d5a5f51a1119dc50642f0f8583a5c6254f910e3be`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:18:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:18:19 GMT
ENV HOME=/home/user
# Wed, 27 Mar 2019 09:18:25 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 27 Mar 2019 09:18:27 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 09:18:29 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 27 Mar 2019 09:22:24 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 09:22:27 GMT
WORKDIR /home/user
# Wed, 27 Mar 2019 09:22:29 GMT
USER user
# Wed, 27 Mar 2019 09:22:30 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52465c1a7c08f155b2aea15160fe568fa11c860d199f9beaa9d84de45cf8a952`  
		Last Modified: Wed, 27 Mar 2019 09:22:57 GMT  
		Size: 18.2 MB (18159770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e759df374105af02534cd545d381c325c00f61d8e8de7a671fe2305ec2237754`  
		Last Modified: Wed, 27 Mar 2019 09:22:52 GMT  
		Size: 4.2 KB (4199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61222a9d360602fc1575e70fc218a735a286fae3ea79f894687d19de923b210`  
		Last Modified: Wed, 27 Mar 2019 09:22:55 GMT  
		Size: 10.3 MB (10295312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; s390x

```console
$ docker pull irssi@sha256:5cda075e1828d79015221a74f74ffa5469e9c440d9be6690c4a8b2cdbc765933
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.4 MB (52446699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f17ee079692c4565b9ff2bdf5e445cdbaa810b80ada5aa33c37e11795900f99c`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:42:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:42:17 GMT
ENV HOME=/home/user
# Tue, 05 Mar 2019 13:42:18 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 05 Mar 2019 13:42:18 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 13:42:18 GMT
ENV IRSSI_VERSION=1.2.0
# Tue, 05 Mar 2019 13:43:07 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 13:43:08 GMT
WORKDIR /home/user
# Tue, 05 Mar 2019 13:43:08 GMT
USER user
# Tue, 05 Mar 2019 13:43:08 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2c9e1401ee6b0131741b02fed745b7f1d34bf29b0bc59f41e08dc969a710fc58`  
		Last Modified: Tue, 05 Mar 2019 12:45:42 GMT  
		Size: 22.3 MB (22345383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995960296cbe5a07833cdba8ef834770e04eade5376f76344794533079617212`  
		Last Modified: Tue, 05 Mar 2019 13:43:35 GMT  
		Size: 18.8 MB (18809208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a3fab2d25d2377ef7b8830b10e6d5ad56a49841d3a4e7f2a7e61b424abf752`  
		Last Modified: Tue, 05 Mar 2019 13:43:31 GMT  
		Size: 4.2 KB (4172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc0d87e9ca29c3efda62bb933cec7ba4d7ac723e758f8a2bc4e103147425c45`  
		Last Modified: Tue, 05 Mar 2019 13:43:33 GMT  
		Size: 11.3 MB (11287936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

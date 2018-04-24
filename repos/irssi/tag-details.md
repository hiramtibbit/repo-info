<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `irssi`

-	[`irssi:1`](#irssi1)
-	[`irssi:1.1`](#irssi11)
-	[`irssi:1.1.1`](#irssi111)
-	[`irssi:1.1.1-alpine`](#irssi111-alpine)
-	[`irssi:1.1-alpine`](#irssi11-alpine)
-	[`irssi:1-alpine`](#irssi1-alpine)
-	[`irssi:alpine`](#irssialpine)
-	[`irssi:latest`](#irssilatest)

## `irssi:1`

```console
$ docker pull irssi@sha256:eedff26e2dc7256d2442219218c2e7c50ce66d82e273f946f15abba83d0a70cc
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
$ docker pull irssi@sha256:7389258f3a8812961991d113b34bf170a00c515f05e06318855ef44cf7a092c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98186215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eda6a29374f6020f2dac903fba4c8b5ba8de6ef3c11e2d169439bb01a7d4566`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:06:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:06:46 GMT
ENV HOME=/home/user
# Wed, 14 Mar 2018 05:06:47 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 14 Mar 2018 05:06:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 05:06:48 GMT
ENV IRSSI_VERSION=1.1.1
# Wed, 14 Mar 2018 05:07:54 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 05:07:55 GMT
WORKDIR /home/user
# Wed, 14 Mar 2018 05:07:55 GMT
USER [user]
# Wed, 14 Mar 2018 05:07:55 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82191da590cf3b26b57d90ca632dfc15de95ad94968baa79997ae348f31e093`  
		Last Modified: Wed, 14 Mar 2018 05:12:06 GMT  
		Size: 33.0 MB (33045833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bd46dedb1a49f8c7296071b3f220d9c2a83ff493a8e66ecfc015fcd1c898af`  
		Last Modified: Wed, 14 Mar 2018 05:11:59 GMT  
		Size: 4.4 KB (4423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac8c1d0cd7b13a5f22b9bea5406db724da11016bc64f85bd4c2ab90bcf29cb2e`  
		Last Modified: Wed, 14 Mar 2018 05:12:03 GMT  
		Size: 12.5 MB (12527440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1` - linux; arm variant v5

```console
$ docker pull irssi@sha256:88292cd6d56ea7c96f1e53d983740a3c25db01129dd7135ada7f6f11f2f5896b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 MB (94466781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bed329d2ed64422b20d5a44cbfe4b9b88f41199650ddf945ca9bc29054c92401`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 14 Mar 2018 19:55:39 GMT
ADD file:4e1092328fe0aabf46bb091fe0fbee6bf44c434f8d0d262902005bbecb69c5cc in / 
# Wed, 14 Mar 2018 19:55:39 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:27:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:27:26 GMT
ENV HOME=/home/user
# Wed, 14 Mar 2018 21:27:27 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 14 Mar 2018 21:27:28 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 21:27:28 GMT
ENV IRSSI_VERSION=1.1.1
# Wed, 14 Mar 2018 21:28:53 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 21:28:54 GMT
WORKDIR /home/user
# Wed, 14 Mar 2018 21:28:54 GMT
USER [user]
# Wed, 14 Mar 2018 21:28:55 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d6c8df84f6d163cc0438ee1b71ec7d86a796a60b2c010df85016296ce8991655`  
		Last Modified: Wed, 14 Mar 2018 20:06:36 GMT  
		Size: 50.9 MB (50890011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a442fec576cd81681ab79e0f4799c4c333798acf161525493af2ac8f7bf239f`  
		Last Modified: Wed, 14 Mar 2018 21:29:34 GMT  
		Size: 31.7 MB (31728076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e833e8a582510076458458039787eb3443804fac09e84f4c3c6bea254f868205`  
		Last Modified: Wed, 14 Mar 2018 21:29:21 GMT  
		Size: 4.4 KB (4439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38270e5aefb27c0243eaaa497e1e45fb937565f17e94246f13d1c5908dc7bd0f`  
		Last Modified: Wed, 14 Mar 2018 21:29:25 GMT  
		Size: 11.8 MB (11844255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1` - linux; arm variant v7

```console
$ docker pull irssi@sha256:652542f60cd1c56090843cfda0855d9eeeaf7584a8200d02712a3f0e98fb1f19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.6 MB (91568058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acab9a8011a43d7fded7b6c740d1474ac18545b79e1c343721791b4335c33481`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 14 Mar 2018 12:26:45 GMT
ADD file:61187374d52790eaf655b56fcca85d392ef4a9d0844161f18ea519a8f6acb1bb in / 
# Wed, 14 Mar 2018 12:26:46 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:22:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:22:15 GMT
ENV HOME=/home/user
# Wed, 14 Mar 2018 13:22:18 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 14 Mar 2018 13:22:18 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 13:22:19 GMT
ENV IRSSI_VERSION=1.1.1
# Wed, 14 Mar 2018 13:23:40 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 13:23:40 GMT
WORKDIR /home/user
# Wed, 14 Mar 2018 13:23:40 GMT
USER [user]
# Wed, 14 Mar 2018 13:23:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:01f50fb86130a0959fcc95157f9f911daf27a42f88c23a55ad8ad827eb4d7124`  
		Last Modified: Wed, 14 Mar 2018 12:38:17 GMT  
		Size: 48.7 MB (48702073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe097b588e924a2ec9aee74eea310e8211e36cd504d809e9210580524be6b0e`  
		Last Modified: Wed, 14 Mar 2018 13:24:20 GMT  
		Size: 31.3 MB (31268276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebd045412d10dc8cbbe03bb46418e84078cfd682947104ef800216dc26cb26a`  
		Last Modified: Wed, 14 Mar 2018 13:24:10 GMT  
		Size: 4.4 KB (4442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ccb0053165097aa8fa999017f1000a12adedc8d2f2b5ec1a7206939b06b028`  
		Last Modified: Wed, 14 Mar 2018 13:24:14 GMT  
		Size: 11.6 MB (11593267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:c18a90fac753bad9a5584f1d0addc94251951bf91f170397060cf79c35645ab3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.9 MB (93942797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efd2fff6775f786dfe2c3079853dc493a173b46a876b8e3768816734ea243d73`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 19:20:59 GMT
ENV HOME=/home/user
# Wed, 14 Mar 2018 19:21:09 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 14 Mar 2018 19:21:11 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 19:21:13 GMT
ENV IRSSI_VERSION=1.1.1
# Wed, 14 Mar 2018 19:25:53 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 19:25:54 GMT
WORKDIR /home/user
# Wed, 14 Mar 2018 19:25:55 GMT
USER [user]
# Wed, 14 Mar 2018 19:25:55 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a450ab62539bd4edeadec2461f9ddb6431122bbe9b58afc97b5a57004124728`  
		Last Modified: Wed, 14 Mar 2018 19:26:56 GMT  
		Size: 31.9 MB (31892642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab776d44d87abcf016254d5a41dbb1c47ffa14a133cb1ef689a19ee3d473d16`  
		Last Modified: Wed, 14 Mar 2018 19:26:43 GMT  
		Size: 4.4 KB (4445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c46cc53d039177ec34d331b0ae689b7ffc601f66902068074ae5d51f858c05`  
		Last Modified: Wed, 14 Mar 2018 19:26:49 GMT  
		Size: 12.1 MB (12112247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1` - linux; 386

```console
$ docker pull irssi@sha256:42e431274e9c1bb37948e5ec6429c51179cd284fff8287acc93ace20da97ca83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.0 MB (102045898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e5a70b7efa9e204841439aed881c88d6fe3a83982d30f64ae2acf12db4cebb3`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Mar 2018 14:05:26 GMT
ADD file:8683f1cd44868aa69e4e8fce74caa88badfe317f49380ffa594640a48e4a5f1a in / 
# Tue, 27 Mar 2018 14:05:27 GMT
CMD ["bash"]
# Thu, 29 Mar 2018 23:27:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 23:27:36 GMT
ENV HOME=/home/user
# Thu, 29 Mar 2018 23:27:37 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Thu, 29 Mar 2018 23:27:37 GMT
ENV LANG=C.UTF-8
# Thu, 29 Mar 2018 23:27:37 GMT
ENV IRSSI_VERSION=1.1.1
# Thu, 29 Mar 2018 23:29:07 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 29 Mar 2018 23:29:07 GMT
WORKDIR /home/user
# Thu, 29 Mar 2018 23:29:07 GMT
USER [user]
# Thu, 29 Mar 2018 23:29:08 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:9f151777f4a2473f74fd28d3d07fb57e7ce14f486a67f2f364a27bee629048c9`  
		Last Modified: Thu, 15 Mar 2018 01:00:02 GMT  
		Size: 52.8 MB (52787625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ac0bcc34e94d00c0bf613433fbe48d9832ebecf670005eaa819f7b469e8ca5`  
		Last Modified: Thu, 29 Mar 2018 23:39:08 GMT  
		Size: 34.7 MB (34742755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e965f7f0bd38312fd384e83bf1f0ca4834b6dc6beebc16ef1c84660f87c528`  
		Last Modified: Thu, 29 Mar 2018 23:39:00 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd882710e5e9206ff85405af1ea18bebddb4c7ada7c619582af088802316f40`  
		Last Modified: Thu, 29 Mar 2018 23:39:05 GMT  
		Size: 14.5 MB (14511104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1` - linux; ppc64le

```console
$ docker pull irssi@sha256:cde991c54b4f2d2d62fbb06043f0be2b8fc895542e7cb643ab0e8edf5bf6fe44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.5 MB (97495180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8689cd9dbf69c14394cb89685bacca94728bfefb3ed2d74d492fd3447d8704a8`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:18 GMT
ADD file:a6ce5f76128adbe25d645aecee3745170f8a75a73a0e40d65b4198b322025f61 in / 
# Wed, 14 Mar 2018 00:32:19 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 00:55:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 00:55:35 GMT
ENV HOME=/home/user
# Thu, 15 Mar 2018 00:55:43 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Thu, 15 Mar 2018 00:55:44 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 00:55:45 GMT
ENV IRSSI_VERSION=1.1.1
# Thu, 15 Mar 2018 01:04:09 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 01:04:12 GMT
WORKDIR /home/user
# Thu, 15 Mar 2018 01:04:14 GMT
USER [user]
# Thu, 15 Mar 2018 01:04:16 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:a87bd2b531300d02e0cb399797953ca9c847bd638a0a3d7f9c3adcfb967f32ce`  
		Last Modified: Wed, 14 Mar 2018 00:38:38 GMT  
		Size: 51.8 MB (51817165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10991d833049e39d57efa05b775f85da7bb4aef885f4a70b9f793a934927d372`  
		Last Modified: Thu, 15 Mar 2018 01:04:53 GMT  
		Size: 32.9 MB (32877743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6662271642dd42bcfab3ebbc6e11bfb23edb7fe109b4294efce18d41adddb265`  
		Last Modified: Thu, 15 Mar 2018 01:04:43 GMT  
		Size: 4.5 KB (4465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32eca740a9a60eda352a868de2850b1289c4e302c45f8387f93e8c1b8ff1fd0c`  
		Last Modified: Thu, 15 Mar 2018 01:04:47 GMT  
		Size: 12.8 MB (12795807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1` - linux; s390x

```console
$ docker pull irssi@sha256:22acfe83308346019ff3baf102b21ca6cebfe43d792b19b83cde7d5183df658a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.9 MB (98881396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a61ead0da28a868a8f44ee63557e5287926614edb9f08aca4dbc71780e2e9f9f`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:53 GMT
ADD file:4f85a37eded7f246b2b04ad9c50b04a578b30985fa427d1ced53437a88a760f1 in / 
# Wed, 14 Mar 2018 05:21:54 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:13:49 GMT
ENV HOME=/home/user
# Wed, 14 Mar 2018 06:13:50 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 14 Mar 2018 06:13:50 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 06:13:50 GMT
ENV IRSSI_VERSION=1.1.1
# Wed, 14 Mar 2018 06:14:41 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 06:14:41 GMT
WORKDIR /home/user
# Wed, 14 Mar 2018 06:14:41 GMT
USER [user]
# Wed, 14 Mar 2018 06:14:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ccd1a0cc23d7ab6837be3aa2f9af33195c4b20de649ee2c39e8b1a87709575ed`  
		Last Modified: Wed, 14 Mar 2018 05:26:10 GMT  
		Size: 52.8 MB (52795472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58bdf3525c377d2c075463d4b4994801fadbf27381a65e5ce9925f3be51fc621`  
		Last Modified: Wed, 14 Mar 2018 06:15:15 GMT  
		Size: 33.6 MB (33552478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bea3097d5805ee54735a333cb9184a5b8eea06026b7a2ca02fe41f396c93ac1`  
		Last Modified: Wed, 14 Mar 2018 06:15:06 GMT  
		Size: 4.4 KB (4429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ae61c980f29d99a0fc49451ff3e2e5fb9aaf0204bf627d78157299d2bd748f`  
		Last Modified: Wed, 14 Mar 2018 06:15:09 GMT  
		Size: 12.5 MB (12529017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.1`

```console
$ docker pull irssi@sha256:eedff26e2dc7256d2442219218c2e7c50ce66d82e273f946f15abba83d0a70cc
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

### `irssi:1.1` - linux; amd64

```console
$ docker pull irssi@sha256:7389258f3a8812961991d113b34bf170a00c515f05e06318855ef44cf7a092c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98186215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eda6a29374f6020f2dac903fba4c8b5ba8de6ef3c11e2d169439bb01a7d4566`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:06:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:06:46 GMT
ENV HOME=/home/user
# Wed, 14 Mar 2018 05:06:47 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 14 Mar 2018 05:06:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 05:06:48 GMT
ENV IRSSI_VERSION=1.1.1
# Wed, 14 Mar 2018 05:07:54 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 05:07:55 GMT
WORKDIR /home/user
# Wed, 14 Mar 2018 05:07:55 GMT
USER [user]
# Wed, 14 Mar 2018 05:07:55 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82191da590cf3b26b57d90ca632dfc15de95ad94968baa79997ae348f31e093`  
		Last Modified: Wed, 14 Mar 2018 05:12:06 GMT  
		Size: 33.0 MB (33045833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bd46dedb1a49f8c7296071b3f220d9c2a83ff493a8e66ecfc015fcd1c898af`  
		Last Modified: Wed, 14 Mar 2018 05:11:59 GMT  
		Size: 4.4 KB (4423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac8c1d0cd7b13a5f22b9bea5406db724da11016bc64f85bd4c2ab90bcf29cb2e`  
		Last Modified: Wed, 14 Mar 2018 05:12:03 GMT  
		Size: 12.5 MB (12527440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.1` - linux; arm variant v5

```console
$ docker pull irssi@sha256:88292cd6d56ea7c96f1e53d983740a3c25db01129dd7135ada7f6f11f2f5896b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 MB (94466781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bed329d2ed64422b20d5a44cbfe4b9b88f41199650ddf945ca9bc29054c92401`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 14 Mar 2018 19:55:39 GMT
ADD file:4e1092328fe0aabf46bb091fe0fbee6bf44c434f8d0d262902005bbecb69c5cc in / 
# Wed, 14 Mar 2018 19:55:39 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:27:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:27:26 GMT
ENV HOME=/home/user
# Wed, 14 Mar 2018 21:27:27 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 14 Mar 2018 21:27:28 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 21:27:28 GMT
ENV IRSSI_VERSION=1.1.1
# Wed, 14 Mar 2018 21:28:53 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 21:28:54 GMT
WORKDIR /home/user
# Wed, 14 Mar 2018 21:28:54 GMT
USER [user]
# Wed, 14 Mar 2018 21:28:55 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d6c8df84f6d163cc0438ee1b71ec7d86a796a60b2c010df85016296ce8991655`  
		Last Modified: Wed, 14 Mar 2018 20:06:36 GMT  
		Size: 50.9 MB (50890011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a442fec576cd81681ab79e0f4799c4c333798acf161525493af2ac8f7bf239f`  
		Last Modified: Wed, 14 Mar 2018 21:29:34 GMT  
		Size: 31.7 MB (31728076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e833e8a582510076458458039787eb3443804fac09e84f4c3c6bea254f868205`  
		Last Modified: Wed, 14 Mar 2018 21:29:21 GMT  
		Size: 4.4 KB (4439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38270e5aefb27c0243eaaa497e1e45fb937565f17e94246f13d1c5908dc7bd0f`  
		Last Modified: Wed, 14 Mar 2018 21:29:25 GMT  
		Size: 11.8 MB (11844255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.1` - linux; arm variant v7

```console
$ docker pull irssi@sha256:652542f60cd1c56090843cfda0855d9eeeaf7584a8200d02712a3f0e98fb1f19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.6 MB (91568058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acab9a8011a43d7fded7b6c740d1474ac18545b79e1c343721791b4335c33481`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 14 Mar 2018 12:26:45 GMT
ADD file:61187374d52790eaf655b56fcca85d392ef4a9d0844161f18ea519a8f6acb1bb in / 
# Wed, 14 Mar 2018 12:26:46 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:22:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:22:15 GMT
ENV HOME=/home/user
# Wed, 14 Mar 2018 13:22:18 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 14 Mar 2018 13:22:18 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 13:22:19 GMT
ENV IRSSI_VERSION=1.1.1
# Wed, 14 Mar 2018 13:23:40 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 13:23:40 GMT
WORKDIR /home/user
# Wed, 14 Mar 2018 13:23:40 GMT
USER [user]
# Wed, 14 Mar 2018 13:23:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:01f50fb86130a0959fcc95157f9f911daf27a42f88c23a55ad8ad827eb4d7124`  
		Last Modified: Wed, 14 Mar 2018 12:38:17 GMT  
		Size: 48.7 MB (48702073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe097b588e924a2ec9aee74eea310e8211e36cd504d809e9210580524be6b0e`  
		Last Modified: Wed, 14 Mar 2018 13:24:20 GMT  
		Size: 31.3 MB (31268276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebd045412d10dc8cbbe03bb46418e84078cfd682947104ef800216dc26cb26a`  
		Last Modified: Wed, 14 Mar 2018 13:24:10 GMT  
		Size: 4.4 KB (4442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ccb0053165097aa8fa999017f1000a12adedc8d2f2b5ec1a7206939b06b028`  
		Last Modified: Wed, 14 Mar 2018 13:24:14 GMT  
		Size: 11.6 MB (11593267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.1` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:c18a90fac753bad9a5584f1d0addc94251951bf91f170397060cf79c35645ab3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.9 MB (93942797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efd2fff6775f786dfe2c3079853dc493a173b46a876b8e3768816734ea243d73`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 19:20:59 GMT
ENV HOME=/home/user
# Wed, 14 Mar 2018 19:21:09 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 14 Mar 2018 19:21:11 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 19:21:13 GMT
ENV IRSSI_VERSION=1.1.1
# Wed, 14 Mar 2018 19:25:53 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 19:25:54 GMT
WORKDIR /home/user
# Wed, 14 Mar 2018 19:25:55 GMT
USER [user]
# Wed, 14 Mar 2018 19:25:55 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a450ab62539bd4edeadec2461f9ddb6431122bbe9b58afc97b5a57004124728`  
		Last Modified: Wed, 14 Mar 2018 19:26:56 GMT  
		Size: 31.9 MB (31892642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab776d44d87abcf016254d5a41dbb1c47ffa14a133cb1ef689a19ee3d473d16`  
		Last Modified: Wed, 14 Mar 2018 19:26:43 GMT  
		Size: 4.4 KB (4445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c46cc53d039177ec34d331b0ae689b7ffc601f66902068074ae5d51f858c05`  
		Last Modified: Wed, 14 Mar 2018 19:26:49 GMT  
		Size: 12.1 MB (12112247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.1` - linux; 386

```console
$ docker pull irssi@sha256:42e431274e9c1bb37948e5ec6429c51179cd284fff8287acc93ace20da97ca83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.0 MB (102045898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e5a70b7efa9e204841439aed881c88d6fe3a83982d30f64ae2acf12db4cebb3`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Mar 2018 14:05:26 GMT
ADD file:8683f1cd44868aa69e4e8fce74caa88badfe317f49380ffa594640a48e4a5f1a in / 
# Tue, 27 Mar 2018 14:05:27 GMT
CMD ["bash"]
# Thu, 29 Mar 2018 23:27:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 23:27:36 GMT
ENV HOME=/home/user
# Thu, 29 Mar 2018 23:27:37 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Thu, 29 Mar 2018 23:27:37 GMT
ENV LANG=C.UTF-8
# Thu, 29 Mar 2018 23:27:37 GMT
ENV IRSSI_VERSION=1.1.1
# Thu, 29 Mar 2018 23:29:07 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 29 Mar 2018 23:29:07 GMT
WORKDIR /home/user
# Thu, 29 Mar 2018 23:29:07 GMT
USER [user]
# Thu, 29 Mar 2018 23:29:08 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:9f151777f4a2473f74fd28d3d07fb57e7ce14f486a67f2f364a27bee629048c9`  
		Last Modified: Thu, 15 Mar 2018 01:00:02 GMT  
		Size: 52.8 MB (52787625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ac0bcc34e94d00c0bf613433fbe48d9832ebecf670005eaa819f7b469e8ca5`  
		Last Modified: Thu, 29 Mar 2018 23:39:08 GMT  
		Size: 34.7 MB (34742755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e965f7f0bd38312fd384e83bf1f0ca4834b6dc6beebc16ef1c84660f87c528`  
		Last Modified: Thu, 29 Mar 2018 23:39:00 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd882710e5e9206ff85405af1ea18bebddb4c7ada7c619582af088802316f40`  
		Last Modified: Thu, 29 Mar 2018 23:39:05 GMT  
		Size: 14.5 MB (14511104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.1` - linux; ppc64le

```console
$ docker pull irssi@sha256:cde991c54b4f2d2d62fbb06043f0be2b8fc895542e7cb643ab0e8edf5bf6fe44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.5 MB (97495180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8689cd9dbf69c14394cb89685bacca94728bfefb3ed2d74d492fd3447d8704a8`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:18 GMT
ADD file:a6ce5f76128adbe25d645aecee3745170f8a75a73a0e40d65b4198b322025f61 in / 
# Wed, 14 Mar 2018 00:32:19 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 00:55:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 00:55:35 GMT
ENV HOME=/home/user
# Thu, 15 Mar 2018 00:55:43 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Thu, 15 Mar 2018 00:55:44 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 00:55:45 GMT
ENV IRSSI_VERSION=1.1.1
# Thu, 15 Mar 2018 01:04:09 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 01:04:12 GMT
WORKDIR /home/user
# Thu, 15 Mar 2018 01:04:14 GMT
USER [user]
# Thu, 15 Mar 2018 01:04:16 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:a87bd2b531300d02e0cb399797953ca9c847bd638a0a3d7f9c3adcfb967f32ce`  
		Last Modified: Wed, 14 Mar 2018 00:38:38 GMT  
		Size: 51.8 MB (51817165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10991d833049e39d57efa05b775f85da7bb4aef885f4a70b9f793a934927d372`  
		Last Modified: Thu, 15 Mar 2018 01:04:53 GMT  
		Size: 32.9 MB (32877743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6662271642dd42bcfab3ebbc6e11bfb23edb7fe109b4294efce18d41adddb265`  
		Last Modified: Thu, 15 Mar 2018 01:04:43 GMT  
		Size: 4.5 KB (4465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32eca740a9a60eda352a868de2850b1289c4e302c45f8387f93e8c1b8ff1fd0c`  
		Last Modified: Thu, 15 Mar 2018 01:04:47 GMT  
		Size: 12.8 MB (12795807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.1` - linux; s390x

```console
$ docker pull irssi@sha256:22acfe83308346019ff3baf102b21ca6cebfe43d792b19b83cde7d5183df658a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.9 MB (98881396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a61ead0da28a868a8f44ee63557e5287926614edb9f08aca4dbc71780e2e9f9f`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:53 GMT
ADD file:4f85a37eded7f246b2b04ad9c50b04a578b30985fa427d1ced53437a88a760f1 in / 
# Wed, 14 Mar 2018 05:21:54 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:13:49 GMT
ENV HOME=/home/user
# Wed, 14 Mar 2018 06:13:50 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 14 Mar 2018 06:13:50 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 06:13:50 GMT
ENV IRSSI_VERSION=1.1.1
# Wed, 14 Mar 2018 06:14:41 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 06:14:41 GMT
WORKDIR /home/user
# Wed, 14 Mar 2018 06:14:41 GMT
USER [user]
# Wed, 14 Mar 2018 06:14:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ccd1a0cc23d7ab6837be3aa2f9af33195c4b20de649ee2c39e8b1a87709575ed`  
		Last Modified: Wed, 14 Mar 2018 05:26:10 GMT  
		Size: 52.8 MB (52795472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58bdf3525c377d2c075463d4b4994801fadbf27381a65e5ce9925f3be51fc621`  
		Last Modified: Wed, 14 Mar 2018 06:15:15 GMT  
		Size: 33.6 MB (33552478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bea3097d5805ee54735a333cb9184a5b8eea06026b7a2ca02fe41f396c93ac1`  
		Last Modified: Wed, 14 Mar 2018 06:15:06 GMT  
		Size: 4.4 KB (4429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ae61c980f29d99a0fc49451ff3e2e5fb9aaf0204bf627d78157299d2bd748f`  
		Last Modified: Wed, 14 Mar 2018 06:15:09 GMT  
		Size: 12.5 MB (12529017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.1.1`

```console
$ docker pull irssi@sha256:eedff26e2dc7256d2442219218c2e7c50ce66d82e273f946f15abba83d0a70cc
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

### `irssi:1.1.1` - linux; amd64

```console
$ docker pull irssi@sha256:7389258f3a8812961991d113b34bf170a00c515f05e06318855ef44cf7a092c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98186215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eda6a29374f6020f2dac903fba4c8b5ba8de6ef3c11e2d169439bb01a7d4566`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:06:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:06:46 GMT
ENV HOME=/home/user
# Wed, 14 Mar 2018 05:06:47 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 14 Mar 2018 05:06:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 05:06:48 GMT
ENV IRSSI_VERSION=1.1.1
# Wed, 14 Mar 2018 05:07:54 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 05:07:55 GMT
WORKDIR /home/user
# Wed, 14 Mar 2018 05:07:55 GMT
USER [user]
# Wed, 14 Mar 2018 05:07:55 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82191da590cf3b26b57d90ca632dfc15de95ad94968baa79997ae348f31e093`  
		Last Modified: Wed, 14 Mar 2018 05:12:06 GMT  
		Size: 33.0 MB (33045833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bd46dedb1a49f8c7296071b3f220d9c2a83ff493a8e66ecfc015fcd1c898af`  
		Last Modified: Wed, 14 Mar 2018 05:11:59 GMT  
		Size: 4.4 KB (4423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac8c1d0cd7b13a5f22b9bea5406db724da11016bc64f85bd4c2ab90bcf29cb2e`  
		Last Modified: Wed, 14 Mar 2018 05:12:03 GMT  
		Size: 12.5 MB (12527440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.1.1` - linux; arm variant v5

```console
$ docker pull irssi@sha256:88292cd6d56ea7c96f1e53d983740a3c25db01129dd7135ada7f6f11f2f5896b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 MB (94466781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bed329d2ed64422b20d5a44cbfe4b9b88f41199650ddf945ca9bc29054c92401`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 14 Mar 2018 19:55:39 GMT
ADD file:4e1092328fe0aabf46bb091fe0fbee6bf44c434f8d0d262902005bbecb69c5cc in / 
# Wed, 14 Mar 2018 19:55:39 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:27:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:27:26 GMT
ENV HOME=/home/user
# Wed, 14 Mar 2018 21:27:27 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 14 Mar 2018 21:27:28 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 21:27:28 GMT
ENV IRSSI_VERSION=1.1.1
# Wed, 14 Mar 2018 21:28:53 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 21:28:54 GMT
WORKDIR /home/user
# Wed, 14 Mar 2018 21:28:54 GMT
USER [user]
# Wed, 14 Mar 2018 21:28:55 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d6c8df84f6d163cc0438ee1b71ec7d86a796a60b2c010df85016296ce8991655`  
		Last Modified: Wed, 14 Mar 2018 20:06:36 GMT  
		Size: 50.9 MB (50890011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a442fec576cd81681ab79e0f4799c4c333798acf161525493af2ac8f7bf239f`  
		Last Modified: Wed, 14 Mar 2018 21:29:34 GMT  
		Size: 31.7 MB (31728076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e833e8a582510076458458039787eb3443804fac09e84f4c3c6bea254f868205`  
		Last Modified: Wed, 14 Mar 2018 21:29:21 GMT  
		Size: 4.4 KB (4439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38270e5aefb27c0243eaaa497e1e45fb937565f17e94246f13d1c5908dc7bd0f`  
		Last Modified: Wed, 14 Mar 2018 21:29:25 GMT  
		Size: 11.8 MB (11844255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.1.1` - linux; arm variant v7

```console
$ docker pull irssi@sha256:652542f60cd1c56090843cfda0855d9eeeaf7584a8200d02712a3f0e98fb1f19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.6 MB (91568058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acab9a8011a43d7fded7b6c740d1474ac18545b79e1c343721791b4335c33481`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 14 Mar 2018 12:26:45 GMT
ADD file:61187374d52790eaf655b56fcca85d392ef4a9d0844161f18ea519a8f6acb1bb in / 
# Wed, 14 Mar 2018 12:26:46 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:22:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:22:15 GMT
ENV HOME=/home/user
# Wed, 14 Mar 2018 13:22:18 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 14 Mar 2018 13:22:18 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 13:22:19 GMT
ENV IRSSI_VERSION=1.1.1
# Wed, 14 Mar 2018 13:23:40 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 13:23:40 GMT
WORKDIR /home/user
# Wed, 14 Mar 2018 13:23:40 GMT
USER [user]
# Wed, 14 Mar 2018 13:23:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:01f50fb86130a0959fcc95157f9f911daf27a42f88c23a55ad8ad827eb4d7124`  
		Last Modified: Wed, 14 Mar 2018 12:38:17 GMT  
		Size: 48.7 MB (48702073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe097b588e924a2ec9aee74eea310e8211e36cd504d809e9210580524be6b0e`  
		Last Modified: Wed, 14 Mar 2018 13:24:20 GMT  
		Size: 31.3 MB (31268276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebd045412d10dc8cbbe03bb46418e84078cfd682947104ef800216dc26cb26a`  
		Last Modified: Wed, 14 Mar 2018 13:24:10 GMT  
		Size: 4.4 KB (4442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ccb0053165097aa8fa999017f1000a12adedc8d2f2b5ec1a7206939b06b028`  
		Last Modified: Wed, 14 Mar 2018 13:24:14 GMT  
		Size: 11.6 MB (11593267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.1.1` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:c18a90fac753bad9a5584f1d0addc94251951bf91f170397060cf79c35645ab3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.9 MB (93942797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efd2fff6775f786dfe2c3079853dc493a173b46a876b8e3768816734ea243d73`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 19:20:59 GMT
ENV HOME=/home/user
# Wed, 14 Mar 2018 19:21:09 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 14 Mar 2018 19:21:11 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 19:21:13 GMT
ENV IRSSI_VERSION=1.1.1
# Wed, 14 Mar 2018 19:25:53 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 19:25:54 GMT
WORKDIR /home/user
# Wed, 14 Mar 2018 19:25:55 GMT
USER [user]
# Wed, 14 Mar 2018 19:25:55 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a450ab62539bd4edeadec2461f9ddb6431122bbe9b58afc97b5a57004124728`  
		Last Modified: Wed, 14 Mar 2018 19:26:56 GMT  
		Size: 31.9 MB (31892642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab776d44d87abcf016254d5a41dbb1c47ffa14a133cb1ef689a19ee3d473d16`  
		Last Modified: Wed, 14 Mar 2018 19:26:43 GMT  
		Size: 4.4 KB (4445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c46cc53d039177ec34d331b0ae689b7ffc601f66902068074ae5d51f858c05`  
		Last Modified: Wed, 14 Mar 2018 19:26:49 GMT  
		Size: 12.1 MB (12112247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.1.1` - linux; 386

```console
$ docker pull irssi@sha256:42e431274e9c1bb37948e5ec6429c51179cd284fff8287acc93ace20da97ca83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.0 MB (102045898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e5a70b7efa9e204841439aed881c88d6fe3a83982d30f64ae2acf12db4cebb3`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Mar 2018 14:05:26 GMT
ADD file:8683f1cd44868aa69e4e8fce74caa88badfe317f49380ffa594640a48e4a5f1a in / 
# Tue, 27 Mar 2018 14:05:27 GMT
CMD ["bash"]
# Thu, 29 Mar 2018 23:27:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 23:27:36 GMT
ENV HOME=/home/user
# Thu, 29 Mar 2018 23:27:37 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Thu, 29 Mar 2018 23:27:37 GMT
ENV LANG=C.UTF-8
# Thu, 29 Mar 2018 23:27:37 GMT
ENV IRSSI_VERSION=1.1.1
# Thu, 29 Mar 2018 23:29:07 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 29 Mar 2018 23:29:07 GMT
WORKDIR /home/user
# Thu, 29 Mar 2018 23:29:07 GMT
USER [user]
# Thu, 29 Mar 2018 23:29:08 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:9f151777f4a2473f74fd28d3d07fb57e7ce14f486a67f2f364a27bee629048c9`  
		Last Modified: Thu, 15 Mar 2018 01:00:02 GMT  
		Size: 52.8 MB (52787625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ac0bcc34e94d00c0bf613433fbe48d9832ebecf670005eaa819f7b469e8ca5`  
		Last Modified: Thu, 29 Mar 2018 23:39:08 GMT  
		Size: 34.7 MB (34742755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e965f7f0bd38312fd384e83bf1f0ca4834b6dc6beebc16ef1c84660f87c528`  
		Last Modified: Thu, 29 Mar 2018 23:39:00 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd882710e5e9206ff85405af1ea18bebddb4c7ada7c619582af088802316f40`  
		Last Modified: Thu, 29 Mar 2018 23:39:05 GMT  
		Size: 14.5 MB (14511104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.1.1` - linux; ppc64le

```console
$ docker pull irssi@sha256:cde991c54b4f2d2d62fbb06043f0be2b8fc895542e7cb643ab0e8edf5bf6fe44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.5 MB (97495180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8689cd9dbf69c14394cb89685bacca94728bfefb3ed2d74d492fd3447d8704a8`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:18 GMT
ADD file:a6ce5f76128adbe25d645aecee3745170f8a75a73a0e40d65b4198b322025f61 in / 
# Wed, 14 Mar 2018 00:32:19 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 00:55:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 00:55:35 GMT
ENV HOME=/home/user
# Thu, 15 Mar 2018 00:55:43 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Thu, 15 Mar 2018 00:55:44 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 00:55:45 GMT
ENV IRSSI_VERSION=1.1.1
# Thu, 15 Mar 2018 01:04:09 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 01:04:12 GMT
WORKDIR /home/user
# Thu, 15 Mar 2018 01:04:14 GMT
USER [user]
# Thu, 15 Mar 2018 01:04:16 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:a87bd2b531300d02e0cb399797953ca9c847bd638a0a3d7f9c3adcfb967f32ce`  
		Last Modified: Wed, 14 Mar 2018 00:38:38 GMT  
		Size: 51.8 MB (51817165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10991d833049e39d57efa05b775f85da7bb4aef885f4a70b9f793a934927d372`  
		Last Modified: Thu, 15 Mar 2018 01:04:53 GMT  
		Size: 32.9 MB (32877743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6662271642dd42bcfab3ebbc6e11bfb23edb7fe109b4294efce18d41adddb265`  
		Last Modified: Thu, 15 Mar 2018 01:04:43 GMT  
		Size: 4.5 KB (4465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32eca740a9a60eda352a868de2850b1289c4e302c45f8387f93e8c1b8ff1fd0c`  
		Last Modified: Thu, 15 Mar 2018 01:04:47 GMT  
		Size: 12.8 MB (12795807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.1.1` - linux; s390x

```console
$ docker pull irssi@sha256:22acfe83308346019ff3baf102b21ca6cebfe43d792b19b83cde7d5183df658a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.9 MB (98881396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a61ead0da28a868a8f44ee63557e5287926614edb9f08aca4dbc71780e2e9f9f`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:53 GMT
ADD file:4f85a37eded7f246b2b04ad9c50b04a578b30985fa427d1ced53437a88a760f1 in / 
# Wed, 14 Mar 2018 05:21:54 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:13:49 GMT
ENV HOME=/home/user
# Wed, 14 Mar 2018 06:13:50 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 14 Mar 2018 06:13:50 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 06:13:50 GMT
ENV IRSSI_VERSION=1.1.1
# Wed, 14 Mar 2018 06:14:41 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 06:14:41 GMT
WORKDIR /home/user
# Wed, 14 Mar 2018 06:14:41 GMT
USER [user]
# Wed, 14 Mar 2018 06:14:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ccd1a0cc23d7ab6837be3aa2f9af33195c4b20de649ee2c39e8b1a87709575ed`  
		Last Modified: Wed, 14 Mar 2018 05:26:10 GMT  
		Size: 52.8 MB (52795472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58bdf3525c377d2c075463d4b4994801fadbf27381a65e5ce9925f3be51fc621`  
		Last Modified: Wed, 14 Mar 2018 06:15:15 GMT  
		Size: 33.6 MB (33552478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bea3097d5805ee54735a333cb9184a5b8eea06026b7a2ca02fe41f396c93ac1`  
		Last Modified: Wed, 14 Mar 2018 06:15:06 GMT  
		Size: 4.4 KB (4429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ae61c980f29d99a0fc49451ff3e2e5fb9aaf0204bf627d78157299d2bd748f`  
		Last Modified: Wed, 14 Mar 2018 06:15:09 GMT  
		Size: 12.5 MB (12529017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.1.1-alpine`

```console
$ docker pull irssi@sha256:ccd1c76ae6fb1362874b8b747d2cd428f0f6f6ab86f9218c3d3bb04ba51dfe43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `irssi:1.1.1-alpine` - linux; amd64

```console
$ docker pull irssi@sha256:25711c38b31cccef62e336ba92c92d4c67968a3786d0dd62f26478a1ac97133f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19420971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b658d18f3db63efb8a1b3737577d08c9a072171357d7bfc6b0b9a55d0f19c85b`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 24 Apr 2018 01:07:11 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 24 Apr 2018 01:07:12 GMT
ENV HOME=/home/user
# Tue, 24 Apr 2018 01:07:13 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 24 Apr 2018 01:07:13 GMT
ENV LANG=C.UTF-8
# Tue, 24 Apr 2018 01:07:13 GMT
ENV IRSSI_VERSION=1.1.1
# Tue, 24 Apr 2018 01:07:55 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 24 Apr 2018 01:07:56 GMT
WORKDIR /home/user
# Tue, 24 Apr 2018 01:07:56 GMT
USER [user]
# Tue, 24 Apr 2018 01:07:56 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b024dbee3c6ba3b3b2738c83ca576870d555278e6a66242614de3ca1c1c97c2a`  
		Last Modified: Tue, 24 Apr 2018 01:08:23 GMT  
		Size: 308.0 KB (308010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faccf307e77a62e6a7ed0b913990b53de3f59e88a80666312f7eb3b827e90c5a`  
		Last Modified: Tue, 24 Apr 2018 01:08:23 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817ef566b1ff333f537f030f525ececa60480005d662b3849c88f16167056cba`  
		Last Modified: Tue, 24 Apr 2018 01:08:26 GMT  
		Size: 17.0 MB (17046163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.1.1-alpine` - linux; arm variant v6

```console
$ docker pull irssi@sha256:6e61b1e4bfde0a66a722f1a39324fcba57b958549153d26458417ff30378d92c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17860770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96119e32cb5129cf2696257b6f9b940932364d1c1ec75d4d7fe9c925a53b1316`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:26 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Mon, 26 Feb 2018 23:48:27 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:28 GMT
CMD ["/bin/sh"]
# Tue, 27 Feb 2018 01:41:30 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 27 Feb 2018 01:41:31 GMT
ENV HOME=/home/user
# Tue, 27 Feb 2018 01:41:34 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 27 Feb 2018 01:41:35 GMT
ENV LANG=C.UTF-8
# Tue, 27 Feb 2018 01:41:36 GMT
ENV IRSSI_VERSION=1.1.1
# Tue, 27 Feb 2018 01:49:49 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 27 Feb 2018 01:49:52 GMT
WORKDIR /home/user
# Tue, 27 Feb 2018 01:49:52 GMT
USER [user]
# Tue, 27 Feb 2018 01:49:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448db471625a0828399cd99cb762a514458df032a36e5a23df975081ab87bc41`  
		Last Modified: Mon, 26 Feb 2018 23:49:11 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b313ea3cb5abb878920f6ab1fb82bdf8b5565b0fde018bf810b82ed4d26752b5`  
		Last Modified: Tue, 27 Feb 2018 01:50:17 GMT  
		Size: 352.2 KB (352167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf27a3207b0169aa1fa0c7efdebb9689e3477ad2a83a6cd365b38e69f03da284`  
		Last Modified: Tue, 27 Feb 2018 01:50:16 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3cb1e86e0ea761445f118868bf4cd89f6931a0e2af9c302c2413597b90fdecd`  
		Last Modified: Tue, 27 Feb 2018 01:50:43 GMT  
		Size: 15.5 MB (15541151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.1.1-alpine` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:11cb93189a4037a18c00e6b83fed00f40482a57cf6ec680b0cd5f69cfb170028
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18488691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c333c40aa69de6e0a3bc10d24d6bbc358daa7255e9e838bf0ae7ca86e90be1fe`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 17:45:00 GMT
RUN apk --no-cache add 	ca-certificates
# Thu, 26 Oct 2017 17:45:08 GMT
ENV HOME=/home/user
# Thu, 26 Oct 2017 17:45:10 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Thu, 26 Oct 2017 17:45:10 GMT
ENV LANG=C.UTF-8
# Sun, 18 Feb 2018 07:26:27 GMT
ENV IRSSI_VERSION=1.1.1
# Sun, 18 Feb 2018 07:28:50 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Sun, 18 Feb 2018 07:28:50 GMT
WORKDIR /home/user
# Sun, 18 Feb 2018 07:28:51 GMT
USER [user]
# Sun, 18 Feb 2018 07:28:51 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8c5b430d5e8452d7d09b3680499ba2cbc9f73a78c893204a3fc96ff4fe1a3a`  
		Last Modified: Thu, 26 Oct 2017 17:47:54 GMT  
		Size: 351.5 KB (351488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa637fc312c367d8b9064ead8f46b76b498360b8d7e8111e86f9061221c3b249`  
		Last Modified: Thu, 26 Oct 2017 17:47:54 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81460f673f3c7c6b04bd3aa05ff5c91c375b52bbfdd4942138c4188484b7dbcb`  
		Last Modified: Sun, 18 Feb 2018 07:32:59 GMT  
		Size: 16.2 MB (16221020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.1.1-alpine` - linux; 386

```console
$ docker pull irssi@sha256:daf2358c9281f1bbba5c2f58cc6d7a203dd9642ac51d8976cfdfd4e7b2d9ee6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18253895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d51b2789fcd79cdbc82df7f08b0de3257cbf2737268f5bda1cf3b38fd056f25f`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Fri, 27 Oct 2017 13:17:32 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 27 Oct 2017 13:17:32 GMT
ENV HOME=/home/user
# Fri, 27 Oct 2017 13:17:33 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 27 Oct 2017 13:17:33 GMT
ENV LANG=C.UTF-8
# Tue, 20 Feb 2018 02:00:33 GMT
ENV IRSSI_VERSION=1.1.1
# Tue, 20 Feb 2018 02:01:43 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 20 Feb 2018 02:03:50 GMT
WORKDIR /home/user
# Tue, 20 Feb 2018 02:03:50 GMT
USER [user]
# Tue, 20 Feb 2018 02:03:51 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb936f32ae8ff24a58d10ed9b86727eb02e494b8f4b01fa90c05e43b21349fa`  
		Last Modified: Sat, 28 Oct 2017 13:20:50 GMT  
		Size: 352.1 KB (352114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e118020dccdf44b9b32ac9b67cb245e7cc37e2187e503cc4ea1187f16339db`  
		Last Modified: Sat, 28 Oct 2017 13:20:49 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41cc69990e768c690c744b574c63640eabbc751531aa0ab92b5399a47d7f2be4`  
		Last Modified: Tue, 20 Feb 2018 02:25:43 GMT  
		Size: 15.9 MB (15854749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.1.1-alpine` - linux; ppc64le

```console
$ docker pull irssi@sha256:1242f15439addf3afc82102f2441abb6912b77dee18e9041fc53fc1f6e50688d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 MB (19166816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13d17c5ba2d1de946a298d13e84ddbb4f3afde15c9cba361e4a4c9a3659d9ed1`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Tue, 24 Apr 2018 08:29:31 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 24 Apr 2018 08:29:33 GMT
ENV HOME=/home/user
# Tue, 24 Apr 2018 08:29:36 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 24 Apr 2018 08:29:37 GMT
ENV LANG=C.UTF-8
# Tue, 24 Apr 2018 08:29:38 GMT
ENV IRSSI_VERSION=1.1.1
# Tue, 24 Apr 2018 08:31:05 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 24 Apr 2018 08:31:05 GMT
WORKDIR /home/user
# Tue, 24 Apr 2018 08:31:07 GMT
USER [user]
# Tue, 24 Apr 2018 08:31:09 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58295c2f75c7cf34beafefd3c8d6188dda33afa2a0ab06d9381e5b1ba1f70e9c`  
		Last Modified: Tue, 24 Apr 2018 08:31:36 GMT  
		Size: 310.6 KB (310601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ecfabf42bcdc40b3b54b0578ce52f527f8757dcf6ac4453db48a1b7b9bcb119`  
		Last Modified: Tue, 24 Apr 2018 08:31:37 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792fe2e1c31c6345a1fdeec8bbc828636986689f3e6576534d3330c6ebafb700`  
		Last Modified: Tue, 24 Apr 2018 08:31:42 GMT  
		Size: 16.8 MB (16773281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.1.1-alpine` - linux; s390x

```console
$ docker pull irssi@sha256:e07e332aeefe34fb823a30749d2874b4d9ff2e3c52d6353260995d7421375280
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.6 MB (19625508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:428f8fdd6d538178e9cddf894829b50e1c3d6fd0dfcb06d1560e5e9f64a212d6`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Fri, 27 Oct 2017 08:45:38 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 27 Oct 2017 08:45:38 GMT
ENV HOME=/home/user
# Fri, 27 Oct 2017 08:45:38 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 27 Oct 2017 08:45:39 GMT
ENV LANG=C.UTF-8
# Sun, 18 Feb 2018 09:46:46 GMT
ENV IRSSI_VERSION=1.1.1
# Sun, 18 Feb 2018 09:47:39 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Sun, 18 Feb 2018 09:47:39 GMT
WORKDIR /home/user
# Sun, 18 Feb 2018 09:47:39 GMT
USER [user]
# Sun, 18 Feb 2018 09:47:39 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c748eb210bfc4fad3e92ae03d0da1c4e221b9d448cf37ee416aa33f8129cc0ee`  
		Last Modified: Fri, 27 Oct 2017 08:46:40 GMT  
		Size: 352.5 KB (352520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cddb23fb031789f9aebce0f717eafa5d3200e0ad8fa81b467b12b03f823c714`  
		Last Modified: Fri, 27 Oct 2017 08:46:40 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:564760eb31fd4fca82bd0d6e5db66498de267e3db79f7694cee102f1e3f73c7f`  
		Last Modified: Sun, 18 Feb 2018 09:48:19 GMT  
		Size: 17.2 MB (17206089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.1-alpine`

```console
$ docker pull irssi@sha256:ccd1c76ae6fb1362874b8b747d2cd428f0f6f6ab86f9218c3d3bb04ba51dfe43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `irssi:1.1-alpine` - linux; amd64

```console
$ docker pull irssi@sha256:25711c38b31cccef62e336ba92c92d4c67968a3786d0dd62f26478a1ac97133f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19420971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b658d18f3db63efb8a1b3737577d08c9a072171357d7bfc6b0b9a55d0f19c85b`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 24 Apr 2018 01:07:11 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 24 Apr 2018 01:07:12 GMT
ENV HOME=/home/user
# Tue, 24 Apr 2018 01:07:13 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 24 Apr 2018 01:07:13 GMT
ENV LANG=C.UTF-8
# Tue, 24 Apr 2018 01:07:13 GMT
ENV IRSSI_VERSION=1.1.1
# Tue, 24 Apr 2018 01:07:55 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 24 Apr 2018 01:07:56 GMT
WORKDIR /home/user
# Tue, 24 Apr 2018 01:07:56 GMT
USER [user]
# Tue, 24 Apr 2018 01:07:56 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b024dbee3c6ba3b3b2738c83ca576870d555278e6a66242614de3ca1c1c97c2a`  
		Last Modified: Tue, 24 Apr 2018 01:08:23 GMT  
		Size: 308.0 KB (308010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faccf307e77a62e6a7ed0b913990b53de3f59e88a80666312f7eb3b827e90c5a`  
		Last Modified: Tue, 24 Apr 2018 01:08:23 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817ef566b1ff333f537f030f525ececa60480005d662b3849c88f16167056cba`  
		Last Modified: Tue, 24 Apr 2018 01:08:26 GMT  
		Size: 17.0 MB (17046163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.1-alpine` - linux; arm variant v6

```console
$ docker pull irssi@sha256:6e61b1e4bfde0a66a722f1a39324fcba57b958549153d26458417ff30378d92c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17860770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96119e32cb5129cf2696257b6f9b940932364d1c1ec75d4d7fe9c925a53b1316`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:26 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Mon, 26 Feb 2018 23:48:27 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:28 GMT
CMD ["/bin/sh"]
# Tue, 27 Feb 2018 01:41:30 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 27 Feb 2018 01:41:31 GMT
ENV HOME=/home/user
# Tue, 27 Feb 2018 01:41:34 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 27 Feb 2018 01:41:35 GMT
ENV LANG=C.UTF-8
# Tue, 27 Feb 2018 01:41:36 GMT
ENV IRSSI_VERSION=1.1.1
# Tue, 27 Feb 2018 01:49:49 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 27 Feb 2018 01:49:52 GMT
WORKDIR /home/user
# Tue, 27 Feb 2018 01:49:52 GMT
USER [user]
# Tue, 27 Feb 2018 01:49:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448db471625a0828399cd99cb762a514458df032a36e5a23df975081ab87bc41`  
		Last Modified: Mon, 26 Feb 2018 23:49:11 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b313ea3cb5abb878920f6ab1fb82bdf8b5565b0fde018bf810b82ed4d26752b5`  
		Last Modified: Tue, 27 Feb 2018 01:50:17 GMT  
		Size: 352.2 KB (352167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf27a3207b0169aa1fa0c7efdebb9689e3477ad2a83a6cd365b38e69f03da284`  
		Last Modified: Tue, 27 Feb 2018 01:50:16 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3cb1e86e0ea761445f118868bf4cd89f6931a0e2af9c302c2413597b90fdecd`  
		Last Modified: Tue, 27 Feb 2018 01:50:43 GMT  
		Size: 15.5 MB (15541151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.1-alpine` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:11cb93189a4037a18c00e6b83fed00f40482a57cf6ec680b0cd5f69cfb170028
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18488691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c333c40aa69de6e0a3bc10d24d6bbc358daa7255e9e838bf0ae7ca86e90be1fe`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 17:45:00 GMT
RUN apk --no-cache add 	ca-certificates
# Thu, 26 Oct 2017 17:45:08 GMT
ENV HOME=/home/user
# Thu, 26 Oct 2017 17:45:10 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Thu, 26 Oct 2017 17:45:10 GMT
ENV LANG=C.UTF-8
# Sun, 18 Feb 2018 07:26:27 GMT
ENV IRSSI_VERSION=1.1.1
# Sun, 18 Feb 2018 07:28:50 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Sun, 18 Feb 2018 07:28:50 GMT
WORKDIR /home/user
# Sun, 18 Feb 2018 07:28:51 GMT
USER [user]
# Sun, 18 Feb 2018 07:28:51 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8c5b430d5e8452d7d09b3680499ba2cbc9f73a78c893204a3fc96ff4fe1a3a`  
		Last Modified: Thu, 26 Oct 2017 17:47:54 GMT  
		Size: 351.5 KB (351488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa637fc312c367d8b9064ead8f46b76b498360b8d7e8111e86f9061221c3b249`  
		Last Modified: Thu, 26 Oct 2017 17:47:54 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81460f673f3c7c6b04bd3aa05ff5c91c375b52bbfdd4942138c4188484b7dbcb`  
		Last Modified: Sun, 18 Feb 2018 07:32:59 GMT  
		Size: 16.2 MB (16221020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.1-alpine` - linux; 386

```console
$ docker pull irssi@sha256:daf2358c9281f1bbba5c2f58cc6d7a203dd9642ac51d8976cfdfd4e7b2d9ee6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18253895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d51b2789fcd79cdbc82df7f08b0de3257cbf2737268f5bda1cf3b38fd056f25f`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Fri, 27 Oct 2017 13:17:32 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 27 Oct 2017 13:17:32 GMT
ENV HOME=/home/user
# Fri, 27 Oct 2017 13:17:33 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 27 Oct 2017 13:17:33 GMT
ENV LANG=C.UTF-8
# Tue, 20 Feb 2018 02:00:33 GMT
ENV IRSSI_VERSION=1.1.1
# Tue, 20 Feb 2018 02:01:43 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 20 Feb 2018 02:03:50 GMT
WORKDIR /home/user
# Tue, 20 Feb 2018 02:03:50 GMT
USER [user]
# Tue, 20 Feb 2018 02:03:51 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb936f32ae8ff24a58d10ed9b86727eb02e494b8f4b01fa90c05e43b21349fa`  
		Last Modified: Sat, 28 Oct 2017 13:20:50 GMT  
		Size: 352.1 KB (352114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e118020dccdf44b9b32ac9b67cb245e7cc37e2187e503cc4ea1187f16339db`  
		Last Modified: Sat, 28 Oct 2017 13:20:49 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41cc69990e768c690c744b574c63640eabbc751531aa0ab92b5399a47d7f2be4`  
		Last Modified: Tue, 20 Feb 2018 02:25:43 GMT  
		Size: 15.9 MB (15854749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.1-alpine` - linux; ppc64le

```console
$ docker pull irssi@sha256:1242f15439addf3afc82102f2441abb6912b77dee18e9041fc53fc1f6e50688d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 MB (19166816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13d17c5ba2d1de946a298d13e84ddbb4f3afde15c9cba361e4a4c9a3659d9ed1`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Tue, 24 Apr 2018 08:29:31 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 24 Apr 2018 08:29:33 GMT
ENV HOME=/home/user
# Tue, 24 Apr 2018 08:29:36 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 24 Apr 2018 08:29:37 GMT
ENV LANG=C.UTF-8
# Tue, 24 Apr 2018 08:29:38 GMT
ENV IRSSI_VERSION=1.1.1
# Tue, 24 Apr 2018 08:31:05 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 24 Apr 2018 08:31:05 GMT
WORKDIR /home/user
# Tue, 24 Apr 2018 08:31:07 GMT
USER [user]
# Tue, 24 Apr 2018 08:31:09 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58295c2f75c7cf34beafefd3c8d6188dda33afa2a0ab06d9381e5b1ba1f70e9c`  
		Last Modified: Tue, 24 Apr 2018 08:31:36 GMT  
		Size: 310.6 KB (310601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ecfabf42bcdc40b3b54b0578ce52f527f8757dcf6ac4453db48a1b7b9bcb119`  
		Last Modified: Tue, 24 Apr 2018 08:31:37 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792fe2e1c31c6345a1fdeec8bbc828636986689f3e6576534d3330c6ebafb700`  
		Last Modified: Tue, 24 Apr 2018 08:31:42 GMT  
		Size: 16.8 MB (16773281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.1-alpine` - linux; s390x

```console
$ docker pull irssi@sha256:e07e332aeefe34fb823a30749d2874b4d9ff2e3c52d6353260995d7421375280
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.6 MB (19625508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:428f8fdd6d538178e9cddf894829b50e1c3d6fd0dfcb06d1560e5e9f64a212d6`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Fri, 27 Oct 2017 08:45:38 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 27 Oct 2017 08:45:38 GMT
ENV HOME=/home/user
# Fri, 27 Oct 2017 08:45:38 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 27 Oct 2017 08:45:39 GMT
ENV LANG=C.UTF-8
# Sun, 18 Feb 2018 09:46:46 GMT
ENV IRSSI_VERSION=1.1.1
# Sun, 18 Feb 2018 09:47:39 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Sun, 18 Feb 2018 09:47:39 GMT
WORKDIR /home/user
# Sun, 18 Feb 2018 09:47:39 GMT
USER [user]
# Sun, 18 Feb 2018 09:47:39 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c748eb210bfc4fad3e92ae03d0da1c4e221b9d448cf37ee416aa33f8129cc0ee`  
		Last Modified: Fri, 27 Oct 2017 08:46:40 GMT  
		Size: 352.5 KB (352520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cddb23fb031789f9aebce0f717eafa5d3200e0ad8fa81b467b12b03f823c714`  
		Last Modified: Fri, 27 Oct 2017 08:46:40 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:564760eb31fd4fca82bd0d6e5db66498de267e3db79f7694cee102f1e3f73c7f`  
		Last Modified: Sun, 18 Feb 2018 09:48:19 GMT  
		Size: 17.2 MB (17206089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1-alpine`

```console
$ docker pull irssi@sha256:ccd1c76ae6fb1362874b8b747d2cd428f0f6f6ab86f9218c3d3bb04ba51dfe43
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
$ docker pull irssi@sha256:25711c38b31cccef62e336ba92c92d4c67968a3786d0dd62f26478a1ac97133f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19420971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b658d18f3db63efb8a1b3737577d08c9a072171357d7bfc6b0b9a55d0f19c85b`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 24 Apr 2018 01:07:11 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 24 Apr 2018 01:07:12 GMT
ENV HOME=/home/user
# Tue, 24 Apr 2018 01:07:13 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 24 Apr 2018 01:07:13 GMT
ENV LANG=C.UTF-8
# Tue, 24 Apr 2018 01:07:13 GMT
ENV IRSSI_VERSION=1.1.1
# Tue, 24 Apr 2018 01:07:55 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 24 Apr 2018 01:07:56 GMT
WORKDIR /home/user
# Tue, 24 Apr 2018 01:07:56 GMT
USER [user]
# Tue, 24 Apr 2018 01:07:56 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b024dbee3c6ba3b3b2738c83ca576870d555278e6a66242614de3ca1c1c97c2a`  
		Last Modified: Tue, 24 Apr 2018 01:08:23 GMT  
		Size: 308.0 KB (308010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faccf307e77a62e6a7ed0b913990b53de3f59e88a80666312f7eb3b827e90c5a`  
		Last Modified: Tue, 24 Apr 2018 01:08:23 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817ef566b1ff333f537f030f525ececa60480005d662b3849c88f16167056cba`  
		Last Modified: Tue, 24 Apr 2018 01:08:26 GMT  
		Size: 17.0 MB (17046163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1-alpine` - linux; arm variant v6

```console
$ docker pull irssi@sha256:6e61b1e4bfde0a66a722f1a39324fcba57b958549153d26458417ff30378d92c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17860770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96119e32cb5129cf2696257b6f9b940932364d1c1ec75d4d7fe9c925a53b1316`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:26 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Mon, 26 Feb 2018 23:48:27 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:28 GMT
CMD ["/bin/sh"]
# Tue, 27 Feb 2018 01:41:30 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 27 Feb 2018 01:41:31 GMT
ENV HOME=/home/user
# Tue, 27 Feb 2018 01:41:34 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 27 Feb 2018 01:41:35 GMT
ENV LANG=C.UTF-8
# Tue, 27 Feb 2018 01:41:36 GMT
ENV IRSSI_VERSION=1.1.1
# Tue, 27 Feb 2018 01:49:49 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 27 Feb 2018 01:49:52 GMT
WORKDIR /home/user
# Tue, 27 Feb 2018 01:49:52 GMT
USER [user]
# Tue, 27 Feb 2018 01:49:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448db471625a0828399cd99cb762a514458df032a36e5a23df975081ab87bc41`  
		Last Modified: Mon, 26 Feb 2018 23:49:11 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b313ea3cb5abb878920f6ab1fb82bdf8b5565b0fde018bf810b82ed4d26752b5`  
		Last Modified: Tue, 27 Feb 2018 01:50:17 GMT  
		Size: 352.2 KB (352167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf27a3207b0169aa1fa0c7efdebb9689e3477ad2a83a6cd365b38e69f03da284`  
		Last Modified: Tue, 27 Feb 2018 01:50:16 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3cb1e86e0ea761445f118868bf4cd89f6931a0e2af9c302c2413597b90fdecd`  
		Last Modified: Tue, 27 Feb 2018 01:50:43 GMT  
		Size: 15.5 MB (15541151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1-alpine` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:11cb93189a4037a18c00e6b83fed00f40482a57cf6ec680b0cd5f69cfb170028
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18488691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c333c40aa69de6e0a3bc10d24d6bbc358daa7255e9e838bf0ae7ca86e90be1fe`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 17:45:00 GMT
RUN apk --no-cache add 	ca-certificates
# Thu, 26 Oct 2017 17:45:08 GMT
ENV HOME=/home/user
# Thu, 26 Oct 2017 17:45:10 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Thu, 26 Oct 2017 17:45:10 GMT
ENV LANG=C.UTF-8
# Sun, 18 Feb 2018 07:26:27 GMT
ENV IRSSI_VERSION=1.1.1
# Sun, 18 Feb 2018 07:28:50 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Sun, 18 Feb 2018 07:28:50 GMT
WORKDIR /home/user
# Sun, 18 Feb 2018 07:28:51 GMT
USER [user]
# Sun, 18 Feb 2018 07:28:51 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8c5b430d5e8452d7d09b3680499ba2cbc9f73a78c893204a3fc96ff4fe1a3a`  
		Last Modified: Thu, 26 Oct 2017 17:47:54 GMT  
		Size: 351.5 KB (351488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa637fc312c367d8b9064ead8f46b76b498360b8d7e8111e86f9061221c3b249`  
		Last Modified: Thu, 26 Oct 2017 17:47:54 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81460f673f3c7c6b04bd3aa05ff5c91c375b52bbfdd4942138c4188484b7dbcb`  
		Last Modified: Sun, 18 Feb 2018 07:32:59 GMT  
		Size: 16.2 MB (16221020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1-alpine` - linux; 386

```console
$ docker pull irssi@sha256:daf2358c9281f1bbba5c2f58cc6d7a203dd9642ac51d8976cfdfd4e7b2d9ee6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18253895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d51b2789fcd79cdbc82df7f08b0de3257cbf2737268f5bda1cf3b38fd056f25f`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Fri, 27 Oct 2017 13:17:32 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 27 Oct 2017 13:17:32 GMT
ENV HOME=/home/user
# Fri, 27 Oct 2017 13:17:33 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 27 Oct 2017 13:17:33 GMT
ENV LANG=C.UTF-8
# Tue, 20 Feb 2018 02:00:33 GMT
ENV IRSSI_VERSION=1.1.1
# Tue, 20 Feb 2018 02:01:43 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 20 Feb 2018 02:03:50 GMT
WORKDIR /home/user
# Tue, 20 Feb 2018 02:03:50 GMT
USER [user]
# Tue, 20 Feb 2018 02:03:51 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb936f32ae8ff24a58d10ed9b86727eb02e494b8f4b01fa90c05e43b21349fa`  
		Last Modified: Sat, 28 Oct 2017 13:20:50 GMT  
		Size: 352.1 KB (352114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e118020dccdf44b9b32ac9b67cb245e7cc37e2187e503cc4ea1187f16339db`  
		Last Modified: Sat, 28 Oct 2017 13:20:49 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41cc69990e768c690c744b574c63640eabbc751531aa0ab92b5399a47d7f2be4`  
		Last Modified: Tue, 20 Feb 2018 02:25:43 GMT  
		Size: 15.9 MB (15854749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1-alpine` - linux; ppc64le

```console
$ docker pull irssi@sha256:1242f15439addf3afc82102f2441abb6912b77dee18e9041fc53fc1f6e50688d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 MB (19166816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13d17c5ba2d1de946a298d13e84ddbb4f3afde15c9cba361e4a4c9a3659d9ed1`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Tue, 24 Apr 2018 08:29:31 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 24 Apr 2018 08:29:33 GMT
ENV HOME=/home/user
# Tue, 24 Apr 2018 08:29:36 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 24 Apr 2018 08:29:37 GMT
ENV LANG=C.UTF-8
# Tue, 24 Apr 2018 08:29:38 GMT
ENV IRSSI_VERSION=1.1.1
# Tue, 24 Apr 2018 08:31:05 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 24 Apr 2018 08:31:05 GMT
WORKDIR /home/user
# Tue, 24 Apr 2018 08:31:07 GMT
USER [user]
# Tue, 24 Apr 2018 08:31:09 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58295c2f75c7cf34beafefd3c8d6188dda33afa2a0ab06d9381e5b1ba1f70e9c`  
		Last Modified: Tue, 24 Apr 2018 08:31:36 GMT  
		Size: 310.6 KB (310601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ecfabf42bcdc40b3b54b0578ce52f527f8757dcf6ac4453db48a1b7b9bcb119`  
		Last Modified: Tue, 24 Apr 2018 08:31:37 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792fe2e1c31c6345a1fdeec8bbc828636986689f3e6576534d3330c6ebafb700`  
		Last Modified: Tue, 24 Apr 2018 08:31:42 GMT  
		Size: 16.8 MB (16773281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1-alpine` - linux; s390x

```console
$ docker pull irssi@sha256:e07e332aeefe34fb823a30749d2874b4d9ff2e3c52d6353260995d7421375280
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.6 MB (19625508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:428f8fdd6d538178e9cddf894829b50e1c3d6fd0dfcb06d1560e5e9f64a212d6`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Fri, 27 Oct 2017 08:45:38 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 27 Oct 2017 08:45:38 GMT
ENV HOME=/home/user
# Fri, 27 Oct 2017 08:45:38 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 27 Oct 2017 08:45:39 GMT
ENV LANG=C.UTF-8
# Sun, 18 Feb 2018 09:46:46 GMT
ENV IRSSI_VERSION=1.1.1
# Sun, 18 Feb 2018 09:47:39 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Sun, 18 Feb 2018 09:47:39 GMT
WORKDIR /home/user
# Sun, 18 Feb 2018 09:47:39 GMT
USER [user]
# Sun, 18 Feb 2018 09:47:39 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c748eb210bfc4fad3e92ae03d0da1c4e221b9d448cf37ee416aa33f8129cc0ee`  
		Last Modified: Fri, 27 Oct 2017 08:46:40 GMT  
		Size: 352.5 KB (352520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cddb23fb031789f9aebce0f717eafa5d3200e0ad8fa81b467b12b03f823c714`  
		Last Modified: Fri, 27 Oct 2017 08:46:40 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:564760eb31fd4fca82bd0d6e5db66498de267e3db79f7694cee102f1e3f73c7f`  
		Last Modified: Sun, 18 Feb 2018 09:48:19 GMT  
		Size: 17.2 MB (17206089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:alpine`

```console
$ docker pull irssi@sha256:ccd1c76ae6fb1362874b8b747d2cd428f0f6f6ab86f9218c3d3bb04ba51dfe43
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
$ docker pull irssi@sha256:25711c38b31cccef62e336ba92c92d4c67968a3786d0dd62f26478a1ac97133f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19420971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b658d18f3db63efb8a1b3737577d08c9a072171357d7bfc6b0b9a55d0f19c85b`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 24 Apr 2018 01:07:11 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 24 Apr 2018 01:07:12 GMT
ENV HOME=/home/user
# Tue, 24 Apr 2018 01:07:13 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 24 Apr 2018 01:07:13 GMT
ENV LANG=C.UTF-8
# Tue, 24 Apr 2018 01:07:13 GMT
ENV IRSSI_VERSION=1.1.1
# Tue, 24 Apr 2018 01:07:55 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 24 Apr 2018 01:07:56 GMT
WORKDIR /home/user
# Tue, 24 Apr 2018 01:07:56 GMT
USER [user]
# Tue, 24 Apr 2018 01:07:56 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b024dbee3c6ba3b3b2738c83ca576870d555278e6a66242614de3ca1c1c97c2a`  
		Last Modified: Tue, 24 Apr 2018 01:08:23 GMT  
		Size: 308.0 KB (308010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faccf307e77a62e6a7ed0b913990b53de3f59e88a80666312f7eb3b827e90c5a`  
		Last Modified: Tue, 24 Apr 2018 01:08:23 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817ef566b1ff333f537f030f525ececa60480005d662b3849c88f16167056cba`  
		Last Modified: Tue, 24 Apr 2018 01:08:26 GMT  
		Size: 17.0 MB (17046163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:alpine` - linux; arm variant v6

```console
$ docker pull irssi@sha256:6e61b1e4bfde0a66a722f1a39324fcba57b958549153d26458417ff30378d92c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17860770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96119e32cb5129cf2696257b6f9b940932364d1c1ec75d4d7fe9c925a53b1316`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:26 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Mon, 26 Feb 2018 23:48:27 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:28 GMT
CMD ["/bin/sh"]
# Tue, 27 Feb 2018 01:41:30 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 27 Feb 2018 01:41:31 GMT
ENV HOME=/home/user
# Tue, 27 Feb 2018 01:41:34 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 27 Feb 2018 01:41:35 GMT
ENV LANG=C.UTF-8
# Tue, 27 Feb 2018 01:41:36 GMT
ENV IRSSI_VERSION=1.1.1
# Tue, 27 Feb 2018 01:49:49 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 27 Feb 2018 01:49:52 GMT
WORKDIR /home/user
# Tue, 27 Feb 2018 01:49:52 GMT
USER [user]
# Tue, 27 Feb 2018 01:49:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448db471625a0828399cd99cb762a514458df032a36e5a23df975081ab87bc41`  
		Last Modified: Mon, 26 Feb 2018 23:49:11 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b313ea3cb5abb878920f6ab1fb82bdf8b5565b0fde018bf810b82ed4d26752b5`  
		Last Modified: Tue, 27 Feb 2018 01:50:17 GMT  
		Size: 352.2 KB (352167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf27a3207b0169aa1fa0c7efdebb9689e3477ad2a83a6cd365b38e69f03da284`  
		Last Modified: Tue, 27 Feb 2018 01:50:16 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3cb1e86e0ea761445f118868bf4cd89f6931a0e2af9c302c2413597b90fdecd`  
		Last Modified: Tue, 27 Feb 2018 01:50:43 GMT  
		Size: 15.5 MB (15541151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:alpine` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:11cb93189a4037a18c00e6b83fed00f40482a57cf6ec680b0cd5f69cfb170028
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18488691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c333c40aa69de6e0a3bc10d24d6bbc358daa7255e9e838bf0ae7ca86e90be1fe`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 17:45:00 GMT
RUN apk --no-cache add 	ca-certificates
# Thu, 26 Oct 2017 17:45:08 GMT
ENV HOME=/home/user
# Thu, 26 Oct 2017 17:45:10 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Thu, 26 Oct 2017 17:45:10 GMT
ENV LANG=C.UTF-8
# Sun, 18 Feb 2018 07:26:27 GMT
ENV IRSSI_VERSION=1.1.1
# Sun, 18 Feb 2018 07:28:50 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Sun, 18 Feb 2018 07:28:50 GMT
WORKDIR /home/user
# Sun, 18 Feb 2018 07:28:51 GMT
USER [user]
# Sun, 18 Feb 2018 07:28:51 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8c5b430d5e8452d7d09b3680499ba2cbc9f73a78c893204a3fc96ff4fe1a3a`  
		Last Modified: Thu, 26 Oct 2017 17:47:54 GMT  
		Size: 351.5 KB (351488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa637fc312c367d8b9064ead8f46b76b498360b8d7e8111e86f9061221c3b249`  
		Last Modified: Thu, 26 Oct 2017 17:47:54 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81460f673f3c7c6b04bd3aa05ff5c91c375b52bbfdd4942138c4188484b7dbcb`  
		Last Modified: Sun, 18 Feb 2018 07:32:59 GMT  
		Size: 16.2 MB (16221020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:alpine` - linux; 386

```console
$ docker pull irssi@sha256:daf2358c9281f1bbba5c2f58cc6d7a203dd9642ac51d8976cfdfd4e7b2d9ee6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18253895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d51b2789fcd79cdbc82df7f08b0de3257cbf2737268f5bda1cf3b38fd056f25f`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Fri, 27 Oct 2017 13:17:32 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 27 Oct 2017 13:17:32 GMT
ENV HOME=/home/user
# Fri, 27 Oct 2017 13:17:33 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 27 Oct 2017 13:17:33 GMT
ENV LANG=C.UTF-8
# Tue, 20 Feb 2018 02:00:33 GMT
ENV IRSSI_VERSION=1.1.1
# Tue, 20 Feb 2018 02:01:43 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 20 Feb 2018 02:03:50 GMT
WORKDIR /home/user
# Tue, 20 Feb 2018 02:03:50 GMT
USER [user]
# Tue, 20 Feb 2018 02:03:51 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb936f32ae8ff24a58d10ed9b86727eb02e494b8f4b01fa90c05e43b21349fa`  
		Last Modified: Sat, 28 Oct 2017 13:20:50 GMT  
		Size: 352.1 KB (352114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e118020dccdf44b9b32ac9b67cb245e7cc37e2187e503cc4ea1187f16339db`  
		Last Modified: Sat, 28 Oct 2017 13:20:49 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41cc69990e768c690c744b574c63640eabbc751531aa0ab92b5399a47d7f2be4`  
		Last Modified: Tue, 20 Feb 2018 02:25:43 GMT  
		Size: 15.9 MB (15854749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:alpine` - linux; ppc64le

```console
$ docker pull irssi@sha256:1242f15439addf3afc82102f2441abb6912b77dee18e9041fc53fc1f6e50688d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 MB (19166816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13d17c5ba2d1de946a298d13e84ddbb4f3afde15c9cba361e4a4c9a3659d9ed1`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Tue, 24 Apr 2018 08:29:31 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 24 Apr 2018 08:29:33 GMT
ENV HOME=/home/user
# Tue, 24 Apr 2018 08:29:36 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 24 Apr 2018 08:29:37 GMT
ENV LANG=C.UTF-8
# Tue, 24 Apr 2018 08:29:38 GMT
ENV IRSSI_VERSION=1.1.1
# Tue, 24 Apr 2018 08:31:05 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 24 Apr 2018 08:31:05 GMT
WORKDIR /home/user
# Tue, 24 Apr 2018 08:31:07 GMT
USER [user]
# Tue, 24 Apr 2018 08:31:09 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58295c2f75c7cf34beafefd3c8d6188dda33afa2a0ab06d9381e5b1ba1f70e9c`  
		Last Modified: Tue, 24 Apr 2018 08:31:36 GMT  
		Size: 310.6 KB (310601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ecfabf42bcdc40b3b54b0578ce52f527f8757dcf6ac4453db48a1b7b9bcb119`  
		Last Modified: Tue, 24 Apr 2018 08:31:37 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792fe2e1c31c6345a1fdeec8bbc828636986689f3e6576534d3330c6ebafb700`  
		Last Modified: Tue, 24 Apr 2018 08:31:42 GMT  
		Size: 16.8 MB (16773281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:alpine` - linux; s390x

```console
$ docker pull irssi@sha256:e07e332aeefe34fb823a30749d2874b4d9ff2e3c52d6353260995d7421375280
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.6 MB (19625508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:428f8fdd6d538178e9cddf894829b50e1c3d6fd0dfcb06d1560e5e9f64a212d6`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Fri, 27 Oct 2017 08:45:38 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 27 Oct 2017 08:45:38 GMT
ENV HOME=/home/user
# Fri, 27 Oct 2017 08:45:38 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 27 Oct 2017 08:45:39 GMT
ENV LANG=C.UTF-8
# Sun, 18 Feb 2018 09:46:46 GMT
ENV IRSSI_VERSION=1.1.1
# Sun, 18 Feb 2018 09:47:39 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Sun, 18 Feb 2018 09:47:39 GMT
WORKDIR /home/user
# Sun, 18 Feb 2018 09:47:39 GMT
USER [user]
# Sun, 18 Feb 2018 09:47:39 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c748eb210bfc4fad3e92ae03d0da1c4e221b9d448cf37ee416aa33f8129cc0ee`  
		Last Modified: Fri, 27 Oct 2017 08:46:40 GMT  
		Size: 352.5 KB (352520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cddb23fb031789f9aebce0f717eafa5d3200e0ad8fa81b467b12b03f823c714`  
		Last Modified: Fri, 27 Oct 2017 08:46:40 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:564760eb31fd4fca82bd0d6e5db66498de267e3db79f7694cee102f1e3f73c7f`  
		Last Modified: Sun, 18 Feb 2018 09:48:19 GMT  
		Size: 17.2 MB (17206089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:latest`

```console
$ docker pull irssi@sha256:eedff26e2dc7256d2442219218c2e7c50ce66d82e273f946f15abba83d0a70cc
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
$ docker pull irssi@sha256:7389258f3a8812961991d113b34bf170a00c515f05e06318855ef44cf7a092c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98186215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eda6a29374f6020f2dac903fba4c8b5ba8de6ef3c11e2d169439bb01a7d4566`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:06:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:06:46 GMT
ENV HOME=/home/user
# Wed, 14 Mar 2018 05:06:47 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 14 Mar 2018 05:06:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 05:06:48 GMT
ENV IRSSI_VERSION=1.1.1
# Wed, 14 Mar 2018 05:07:54 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 05:07:55 GMT
WORKDIR /home/user
# Wed, 14 Mar 2018 05:07:55 GMT
USER [user]
# Wed, 14 Mar 2018 05:07:55 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82191da590cf3b26b57d90ca632dfc15de95ad94968baa79997ae348f31e093`  
		Last Modified: Wed, 14 Mar 2018 05:12:06 GMT  
		Size: 33.0 MB (33045833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bd46dedb1a49f8c7296071b3f220d9c2a83ff493a8e66ecfc015fcd1c898af`  
		Last Modified: Wed, 14 Mar 2018 05:11:59 GMT  
		Size: 4.4 KB (4423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac8c1d0cd7b13a5f22b9bea5406db724da11016bc64f85bd4c2ab90bcf29cb2e`  
		Last Modified: Wed, 14 Mar 2018 05:12:03 GMT  
		Size: 12.5 MB (12527440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; arm variant v5

```console
$ docker pull irssi@sha256:88292cd6d56ea7c96f1e53d983740a3c25db01129dd7135ada7f6f11f2f5896b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 MB (94466781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bed329d2ed64422b20d5a44cbfe4b9b88f41199650ddf945ca9bc29054c92401`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 14 Mar 2018 19:55:39 GMT
ADD file:4e1092328fe0aabf46bb091fe0fbee6bf44c434f8d0d262902005bbecb69c5cc in / 
# Wed, 14 Mar 2018 19:55:39 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:27:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:27:26 GMT
ENV HOME=/home/user
# Wed, 14 Mar 2018 21:27:27 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 14 Mar 2018 21:27:28 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 21:27:28 GMT
ENV IRSSI_VERSION=1.1.1
# Wed, 14 Mar 2018 21:28:53 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 21:28:54 GMT
WORKDIR /home/user
# Wed, 14 Mar 2018 21:28:54 GMT
USER [user]
# Wed, 14 Mar 2018 21:28:55 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d6c8df84f6d163cc0438ee1b71ec7d86a796a60b2c010df85016296ce8991655`  
		Last Modified: Wed, 14 Mar 2018 20:06:36 GMT  
		Size: 50.9 MB (50890011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a442fec576cd81681ab79e0f4799c4c333798acf161525493af2ac8f7bf239f`  
		Last Modified: Wed, 14 Mar 2018 21:29:34 GMT  
		Size: 31.7 MB (31728076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e833e8a582510076458458039787eb3443804fac09e84f4c3c6bea254f868205`  
		Last Modified: Wed, 14 Mar 2018 21:29:21 GMT  
		Size: 4.4 KB (4439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38270e5aefb27c0243eaaa497e1e45fb937565f17e94246f13d1c5908dc7bd0f`  
		Last Modified: Wed, 14 Mar 2018 21:29:25 GMT  
		Size: 11.8 MB (11844255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; arm variant v7

```console
$ docker pull irssi@sha256:652542f60cd1c56090843cfda0855d9eeeaf7584a8200d02712a3f0e98fb1f19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.6 MB (91568058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acab9a8011a43d7fded7b6c740d1474ac18545b79e1c343721791b4335c33481`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 14 Mar 2018 12:26:45 GMT
ADD file:61187374d52790eaf655b56fcca85d392ef4a9d0844161f18ea519a8f6acb1bb in / 
# Wed, 14 Mar 2018 12:26:46 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:22:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:22:15 GMT
ENV HOME=/home/user
# Wed, 14 Mar 2018 13:22:18 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 14 Mar 2018 13:22:18 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 13:22:19 GMT
ENV IRSSI_VERSION=1.1.1
# Wed, 14 Mar 2018 13:23:40 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 13:23:40 GMT
WORKDIR /home/user
# Wed, 14 Mar 2018 13:23:40 GMT
USER [user]
# Wed, 14 Mar 2018 13:23:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:01f50fb86130a0959fcc95157f9f911daf27a42f88c23a55ad8ad827eb4d7124`  
		Last Modified: Wed, 14 Mar 2018 12:38:17 GMT  
		Size: 48.7 MB (48702073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe097b588e924a2ec9aee74eea310e8211e36cd504d809e9210580524be6b0e`  
		Last Modified: Wed, 14 Mar 2018 13:24:20 GMT  
		Size: 31.3 MB (31268276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebd045412d10dc8cbbe03bb46418e84078cfd682947104ef800216dc26cb26a`  
		Last Modified: Wed, 14 Mar 2018 13:24:10 GMT  
		Size: 4.4 KB (4442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ccb0053165097aa8fa999017f1000a12adedc8d2f2b5ec1a7206939b06b028`  
		Last Modified: Wed, 14 Mar 2018 13:24:14 GMT  
		Size: 11.6 MB (11593267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:c18a90fac753bad9a5584f1d0addc94251951bf91f170397060cf79c35645ab3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.9 MB (93942797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efd2fff6775f786dfe2c3079853dc493a173b46a876b8e3768816734ea243d73`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 19:20:59 GMT
ENV HOME=/home/user
# Wed, 14 Mar 2018 19:21:09 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 14 Mar 2018 19:21:11 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 19:21:13 GMT
ENV IRSSI_VERSION=1.1.1
# Wed, 14 Mar 2018 19:25:53 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 19:25:54 GMT
WORKDIR /home/user
# Wed, 14 Mar 2018 19:25:55 GMT
USER [user]
# Wed, 14 Mar 2018 19:25:55 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a450ab62539bd4edeadec2461f9ddb6431122bbe9b58afc97b5a57004124728`  
		Last Modified: Wed, 14 Mar 2018 19:26:56 GMT  
		Size: 31.9 MB (31892642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab776d44d87abcf016254d5a41dbb1c47ffa14a133cb1ef689a19ee3d473d16`  
		Last Modified: Wed, 14 Mar 2018 19:26:43 GMT  
		Size: 4.4 KB (4445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c46cc53d039177ec34d331b0ae689b7ffc601f66902068074ae5d51f858c05`  
		Last Modified: Wed, 14 Mar 2018 19:26:49 GMT  
		Size: 12.1 MB (12112247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; 386

```console
$ docker pull irssi@sha256:42e431274e9c1bb37948e5ec6429c51179cd284fff8287acc93ace20da97ca83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.0 MB (102045898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e5a70b7efa9e204841439aed881c88d6fe3a83982d30f64ae2acf12db4cebb3`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Mar 2018 14:05:26 GMT
ADD file:8683f1cd44868aa69e4e8fce74caa88badfe317f49380ffa594640a48e4a5f1a in / 
# Tue, 27 Mar 2018 14:05:27 GMT
CMD ["bash"]
# Thu, 29 Mar 2018 23:27:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 23:27:36 GMT
ENV HOME=/home/user
# Thu, 29 Mar 2018 23:27:37 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Thu, 29 Mar 2018 23:27:37 GMT
ENV LANG=C.UTF-8
# Thu, 29 Mar 2018 23:27:37 GMT
ENV IRSSI_VERSION=1.1.1
# Thu, 29 Mar 2018 23:29:07 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 29 Mar 2018 23:29:07 GMT
WORKDIR /home/user
# Thu, 29 Mar 2018 23:29:07 GMT
USER [user]
# Thu, 29 Mar 2018 23:29:08 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:9f151777f4a2473f74fd28d3d07fb57e7ce14f486a67f2f364a27bee629048c9`  
		Last Modified: Thu, 15 Mar 2018 01:00:02 GMT  
		Size: 52.8 MB (52787625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ac0bcc34e94d00c0bf613433fbe48d9832ebecf670005eaa819f7b469e8ca5`  
		Last Modified: Thu, 29 Mar 2018 23:39:08 GMT  
		Size: 34.7 MB (34742755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e965f7f0bd38312fd384e83bf1f0ca4834b6dc6beebc16ef1c84660f87c528`  
		Last Modified: Thu, 29 Mar 2018 23:39:00 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd882710e5e9206ff85405af1ea18bebddb4c7ada7c619582af088802316f40`  
		Last Modified: Thu, 29 Mar 2018 23:39:05 GMT  
		Size: 14.5 MB (14511104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; ppc64le

```console
$ docker pull irssi@sha256:cde991c54b4f2d2d62fbb06043f0be2b8fc895542e7cb643ab0e8edf5bf6fe44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.5 MB (97495180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8689cd9dbf69c14394cb89685bacca94728bfefb3ed2d74d492fd3447d8704a8`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:18 GMT
ADD file:a6ce5f76128adbe25d645aecee3745170f8a75a73a0e40d65b4198b322025f61 in / 
# Wed, 14 Mar 2018 00:32:19 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 00:55:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 00:55:35 GMT
ENV HOME=/home/user
# Thu, 15 Mar 2018 00:55:43 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Thu, 15 Mar 2018 00:55:44 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 00:55:45 GMT
ENV IRSSI_VERSION=1.1.1
# Thu, 15 Mar 2018 01:04:09 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 01:04:12 GMT
WORKDIR /home/user
# Thu, 15 Mar 2018 01:04:14 GMT
USER [user]
# Thu, 15 Mar 2018 01:04:16 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:a87bd2b531300d02e0cb399797953ca9c847bd638a0a3d7f9c3adcfb967f32ce`  
		Last Modified: Wed, 14 Mar 2018 00:38:38 GMT  
		Size: 51.8 MB (51817165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10991d833049e39d57efa05b775f85da7bb4aef885f4a70b9f793a934927d372`  
		Last Modified: Thu, 15 Mar 2018 01:04:53 GMT  
		Size: 32.9 MB (32877743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6662271642dd42bcfab3ebbc6e11bfb23edb7fe109b4294efce18d41adddb265`  
		Last Modified: Thu, 15 Mar 2018 01:04:43 GMT  
		Size: 4.5 KB (4465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32eca740a9a60eda352a868de2850b1289c4e302c45f8387f93e8c1b8ff1fd0c`  
		Last Modified: Thu, 15 Mar 2018 01:04:47 GMT  
		Size: 12.8 MB (12795807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; s390x

```console
$ docker pull irssi@sha256:22acfe83308346019ff3baf102b21ca6cebfe43d792b19b83cde7d5183df658a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.9 MB (98881396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a61ead0da28a868a8f44ee63557e5287926614edb9f08aca4dbc71780e2e9f9f`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:53 GMT
ADD file:4f85a37eded7f246b2b04ad9c50b04a578b30985fa427d1ced53437a88a760f1 in / 
# Wed, 14 Mar 2018 05:21:54 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:13:49 GMT
ENV HOME=/home/user
# Wed, 14 Mar 2018 06:13:50 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 14 Mar 2018 06:13:50 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 06:13:50 GMT
ENV IRSSI_VERSION=1.1.1
# Wed, 14 Mar 2018 06:14:41 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 06:14:41 GMT
WORKDIR /home/user
# Wed, 14 Mar 2018 06:14:41 GMT
USER [user]
# Wed, 14 Mar 2018 06:14:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ccd1a0cc23d7ab6837be3aa2f9af33195c4b20de649ee2c39e8b1a87709575ed`  
		Last Modified: Wed, 14 Mar 2018 05:26:10 GMT  
		Size: 52.8 MB (52795472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58bdf3525c377d2c075463d4b4994801fadbf27381a65e5ce9925f3be51fc621`  
		Last Modified: Wed, 14 Mar 2018 06:15:15 GMT  
		Size: 33.6 MB (33552478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bea3097d5805ee54735a333cb9184a5b8eea06026b7a2ca02fe41f396c93ac1`  
		Last Modified: Wed, 14 Mar 2018 06:15:06 GMT  
		Size: 4.4 KB (4429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ae61c980f29d99a0fc49451ff3e2e5fb9aaf0204bf627d78157299d2bd748f`  
		Last Modified: Wed, 14 Mar 2018 06:15:09 GMT  
		Size: 12.5 MB (12529017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

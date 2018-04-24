## `irssi:latest`

```console
$ docker pull irssi@sha256:3c21ac1cfb5971e02ab1f0d7cbaef6fd1bdd2aa9f6a08ecce2aae5b053bfc207
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
$ docker pull irssi@sha256:bcea646c2a299a675bf5579d9ddde2ca0bd6284b67e7d4e4a558eda272c08349
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.8 MB (103807387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da403b0e220a28584dc56b179068b0b60509c82eee155e3c89a33157f736e71a`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Mar 2018 14:05:26 GMT
ADD file:8683f1cd44868aa69e4e8fce74caa88badfe317f49380ffa594640a48e4a5f1a in / 
# Tue, 27 Mar 2018 14:05:27 GMT
CMD ["bash"]
# Tue, 24 Apr 2018 11:21:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 11:21:07 GMT
ENV HOME=/home/user
# Tue, 24 Apr 2018 11:21:08 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 24 Apr 2018 11:21:08 GMT
ENV LANG=C.UTF-8
# Tue, 24 Apr 2018 11:21:08 GMT
ENV IRSSI_VERSION=1.1.1
# Tue, 24 Apr 2018 11:22:34 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Apr 2018 11:22:34 GMT
WORKDIR /home/user
# Tue, 24 Apr 2018 11:22:34 GMT
USER [user]
# Tue, 24 Apr 2018 11:22:34 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:9f151777f4a2473f74fd28d3d07fb57e7ce14f486a67f2f364a27bee629048c9`  
		Last Modified: Thu, 15 Mar 2018 01:00:02 GMT  
		Size: 52.8 MB (52787625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4963ffd80503de2ab50a986376e391112d6f6fc1b13b3d9577326f8337dd30`  
		Last Modified: Tue, 24 Apr 2018 11:24:06 GMT  
		Size: 36.5 MB (36504102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab1b752a0f850bb9521f3a1291a6c50d744442febc989933c7c57d8e15069e8`  
		Last Modified: Tue, 24 Apr 2018 11:23:56 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1238cac6e8638c5de6294722b4dddc5f2a1fd67cbe827df8a2f1bdba4170b3b6`  
		Last Modified: Tue, 24 Apr 2018 11:24:01 GMT  
		Size: 14.5 MB (14511246 bytes)  
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

## `irssi:latest`

```console
$ docker pull irssi@sha256:54a1d167aec05fd5968595a70bda9281f2c718c2092d618d4e5cb954bab405cb
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
$ docker pull irssi@sha256:70a9e910f6c206f3aa717a5cccb74d72e60b8bbad004795bbbea1cd890f439f5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45060293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bc68263e5bb2796560f0b7918e1f4dc2f0833cf8e02552e657290c445caaec0`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:33:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:33:44 GMT
ENV HOME=/home/user
# Wed, 27 Mar 2019 12:33:45 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 27 Mar 2019 12:33:46 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:33:46 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 27 Mar 2019 12:35:08 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 12:35:09 GMT
WORKDIR /home/user
# Wed, 27 Mar 2019 12:35:10 GMT
USER user
# Wed, 27 Mar 2019 12:35:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a5756c70414c4d7bbbb7a5d6be31dbfceb35d503d8c8d202a73a9fdf661b27b`  
		Last Modified: Wed, 27 Mar 2019 12:35:40 GMT  
		Size: 17.0 MB (16988816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af4bd4b6cb13660006cd1428d3184469137a2057c3892f0c6658e3e26d6580b`  
		Last Modified: Wed, 27 Mar 2019 12:35:32 GMT  
		Size: 4.2 KB (4187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d7688e14f1577445841d462f122eb3c35e7c0805723b5ad78257b1ccc68cce7`  
		Last Modified: Wed, 27 Mar 2019 12:35:36 GMT  
		Size: 8.8 MB (8784848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:2bf237420ed1283041d2b5564483d7a74fb54abf0cac02b35c05804a771f565f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47751756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa5ec7b581f767ee8754bfd4276b91d94f7dc82e21075afb6e7b3beaf3c515aa`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:56:56 GMT
ENV HOME=/home/user
# Wed, 27 Mar 2019 12:57:00 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 27 Mar 2019 12:57:02 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:57:02 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 27 Mar 2019 13:03:37 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 13:03:38 GMT
WORKDIR /home/user
# Wed, 27 Mar 2019 13:03:38 GMT
USER user
# Wed, 27 Mar 2019 13:03:39 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46da62a6142e3e0babc0b992a754ec5f13b1710ce7705857ab99f21238d4005c`  
		Last Modified: Wed, 27 Mar 2019 13:04:10 GMT  
		Size: 17.8 MB (17830474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5625052ce7427b9f7643c6c6c4ba7e47e4024df5289ae29818f3dfecb7314e5`  
		Last Modified: Wed, 27 Mar 2019 13:04:00 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1a38a77e9b74eaa5a19ab78667606bb6a2c5268faf4ddb76e5b495f6cd9a0f`  
		Last Modified: Wed, 27 Mar 2019 13:04:05 GMT  
		Size: 9.6 MB (9576921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; 386

```console
$ docker pull irssi@sha256:13a6640b3777a8e0b4566f3ab773345518d25194909c24898392debf10e93ff0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54855815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5287e07eb4ae2d879d4b77bc5cb80c45a481a92fd738e99e83c67ccf1df86a2`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 14:12:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 14:12:27 GMT
ENV HOME=/home/user
# Wed, 27 Mar 2019 14:12:28 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 27 Mar 2019 14:12:28 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 14:12:28 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 27 Mar 2019 14:13:53 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 14:13:53 GMT
WORKDIR /home/user
# Wed, 27 Mar 2019 14:13:53 GMT
USER user
# Wed, 27 Mar 2019 14:13:54 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5771d59cf686752f7fb7481bcd96e27a606f3c7fdc05f028506e0fdaf8dcf46`  
		Last Modified: Wed, 27 Mar 2019 14:14:14 GMT  
		Size: 18.4 MB (18413512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67d27cbb37991c42cadb3caf3dc8064893c9a5d7abbbfb2fde60fc57bb46d84`  
		Last Modified: Wed, 27 Mar 2019 14:14:07 GMT  
		Size: 4.2 KB (4157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6bbda42204819877cd95465571c7eb50ffd6659bbe07c2d9b3938ab301062e`  
		Last Modified: Wed, 27 Mar 2019 14:14:11 GMT  
		Size: 13.3 MB (13312401 bytes)  
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
$ docker pull irssi@sha256:1acf2cbe9b3bb66eb08bc9d7b07264882ebaa7718da52485cf29cc81f544c0d5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.4 MB (52446988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10530b6c5feada725587917cff99227e67192ede773f6648b6882fd8f2629df9`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:45 GMT
ADD file:bbc08c16057153af2910791402d3a29eb5da11e030d2fc6778644c444142d2ab in / 
# Wed, 27 Mar 2019 11:43:46 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:23:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:23:59 GMT
ENV HOME=/home/user
# Wed, 27 Mar 2019 12:24:00 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 27 Mar 2019 12:24:00 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:24:01 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 27 Mar 2019 12:25:34 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 12:25:35 GMT
WORKDIR /home/user
# Wed, 27 Mar 2019 12:25:35 GMT
USER user
# Wed, 27 Mar 2019 12:25:35 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:9ce36a197e11ef57ec11f749055a2d2db6113c6b0026d930d3ddbbd86a7ec15b`  
		Last Modified: Wed, 27 Mar 2019 11:46:50 GMT  
		Size: 22.3 MB (22345282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c56f075fd00bb2f4d2659113c29915098a137db82fc6749ee37c7a9b5ac73c`  
		Last Modified: Wed, 27 Mar 2019 12:25:58 GMT  
		Size: 18.8 MB (18809345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b130d5fc4b4134fb713db9bed15981a4e20fa520abfee3bd43bcd2d6fc5124`  
		Last Modified: Wed, 27 Mar 2019 12:25:52 GMT  
		Size: 4.2 KB (4174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5fc263bade2c03f32629fcdebcf984aba214ed9a68e6e51ae37b589dae3d60d`  
		Last Modified: Wed, 27 Mar 2019 12:25:55 GMT  
		Size: 11.3 MB (11288187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

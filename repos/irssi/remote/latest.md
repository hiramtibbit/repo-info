## `irssi:latest`

```console
$ docker pull irssi@sha256:020ca1c75867789e15c5472ae81b2c06fb974c7c97ce034c63951a1af3c9ebbd
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
$ docker pull irssi@sha256:f331f02b71969bc9a29a2fdf365a4879cd5c3234a6b2c99d00f5fba55c9404cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51412672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9f041397d9c924bbe222d84aa8102af71e38b481091431997e5333ac2f8e77`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 22:23:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 22:23:56 GMT
ENV HOME=/home/user
# Wed, 27 Jun 2018 22:23:57 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 27 Jun 2018 22:23:57 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 22:23:58 GMT
ENV IRSSI_VERSION=1.1.1
# Wed, 27 Jun 2018 22:24:55 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 22:24:55 GMT
WORKDIR /home/user
# Wed, 27 Jun 2018 22:24:56 GMT
USER [user]
# Wed, 27 Jun 2018 22:24:56 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e195000a2474b76e9392b5915c27a5852e6ec9c547cc89f59bf992c853d09f3c`  
		Last Modified: Wed, 27 Jun 2018 22:25:32 GMT  
		Size: 18.7 MB (18730851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4790abf41743099230f96ddeec042ecc5e4fdedfd5bfd31e26fd33d02102c4`  
		Last Modified: Wed, 27 Jun 2018 22:25:28 GMT  
		Size: 4.2 KB (4170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b5f077799baf9dc4b1cd5ea18277518e2391d800f0ef66be1cdc17142e8d9c`  
		Last Modified: Wed, 27 Jun 2018 22:25:30 GMT  
		Size: 10.2 MB (10180676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; arm variant v5

```console
$ docker pull irssi@sha256:f2820617e86ea215ebedb58449e6f76ced4af763b0a8d60e497319b68b032983
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47718300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7f5b728c7c3ba7e00bbc20efd19b09a40e25a4f9c11fdfda6a7afaf6f87e42c`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 27 Jun 2018 08:54:01 GMT
ADD file:f1e0d5c56a23a29918cb3b7691cee8f22620b4c54ee70a0dbb4b8151b2be3355 in / 
# Wed, 27 Jun 2018 08:54:02 GMT
CMD ["bash"]
# Thu, 28 Jun 2018 08:49:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jun 2018 08:49:04 GMT
ENV HOME=/home/user
# Thu, 28 Jun 2018 08:49:05 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Thu, 28 Jun 2018 08:49:06 GMT
ENV LANG=C.UTF-8
# Thu, 28 Jun 2018 08:49:06 GMT
ENV IRSSI_VERSION=1.1.1
# Thu, 28 Jun 2018 08:50:10 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 28 Jun 2018 08:50:10 GMT
WORKDIR /home/user
# Thu, 28 Jun 2018 08:50:11 GMT
USER [user]
# Thu, 28 Jun 2018 08:50:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:151bc45ca30d5401779cd71c1dd194a7e6f64f1214de3f4f025bc53daf823199`  
		Last Modified: Wed, 27 Jun 2018 09:03:17 GMT  
		Size: 21.2 MB (21177290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc68f074083f86ce7ec4313d02362d23b9c73616de9876bf54484369b19ddbda`  
		Last Modified: Thu, 28 Jun 2018 08:50:43 GMT  
		Size: 17.5 MB (17503991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c296453043140d6a54dc61bde4079ccc242ccc2fdb95c75308c331696bb5f34d`  
		Last Modified: Thu, 28 Jun 2018 08:50:35 GMT  
		Size: 4.2 KB (4186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb48ce35d1ad066fb8d851bff8ee20e786d867ec34969da5300745be1e79788`  
		Last Modified: Thu, 28 Jun 2018 08:50:38 GMT  
		Size: 9.0 MB (9032833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; arm variant v7

```console
$ docker pull irssi@sha256:018684b3046fd5fcac3b65f51ee4f483b3084de2f97532bc7800f992b37af0a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.6 MB (91562637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e592f101e1c5af63f2e6386568c87a122cd98f986f173ce9e758067353c2700e`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 27 Jun 2018 11:58:58 GMT
ADD file:5d5aafaeefc220111bbdbc1dd4f32bfad6875e4b28a214c9c88678b9205a8a21 in / 
# Wed, 27 Jun 2018 11:59:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:51:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:51:16 GMT
ENV HOME=/home/user
# Wed, 27 Jun 2018 12:51:18 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 27 Jun 2018 12:51:18 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 12:51:19 GMT
ENV IRSSI_VERSION=1.1.1
# Wed, 27 Jun 2018 12:52:40 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 12:52:41 GMT
WORKDIR /home/user
# Wed, 27 Jun 2018 12:52:41 GMT
USER [user]
# Wed, 27 Jun 2018 12:52:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:a06a975b738391d72254582d5a2537ac0961581af50ec5f7a76df622e01f96b9`  
		Last Modified: Wed, 27 Jun 2018 12:07:58 GMT  
		Size: 50.2 MB (50188121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3703cec2dbffaa529e767ef8a547ddf95797d04cbe6f2959afe2a6eaa8383d40`  
		Last Modified: Wed, 27 Jun 2018 12:53:17 GMT  
		Size: 29.8 MB (29762853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312027ae8185a84b429ffa82ee278eb4753aa3f253b1a1cd399c1a958e563a9a`  
		Last Modified: Wed, 27 Jun 2018 12:53:07 GMT  
		Size: 4.4 KB (4438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c11ecfdcb81fd13670338b006a62f58c5e3c9217d5b3ccab1c161e40ca1424a`  
		Last Modified: Wed, 27 Jun 2018 12:53:11 GMT  
		Size: 11.6 MB (11607225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:c7cd11f09d19ffa832d928cca32469fc61e02dfb09ff12124e788db38c0ba5c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47680084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67d648b1b3a6cc862d5cd29e46f3ec70e181660dd24f800cb502d5c468615624`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Thu, 28 Jun 2018 08:59:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jun 2018 08:59:20 GMT
ENV HOME=/home/user
# Thu, 28 Jun 2018 08:59:22 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Thu, 28 Jun 2018 08:59:23 GMT
ENV LANG=C.UTF-8
# Thu, 28 Jun 2018 08:59:24 GMT
ENV IRSSI_VERSION=1.1.1
# Thu, 28 Jun 2018 09:02:26 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 28 Jun 2018 09:02:27 GMT
WORKDIR /home/user
# Thu, 28 Jun 2018 09:02:28 GMT
USER [user]
# Thu, 28 Jun 2018 09:02:29 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d8691d66ae63058faa4e3b72f1c27ea2baf54f057e6c4b11ae2ba6055bc1e08`  
		Last Modified: Thu, 28 Jun 2018 09:03:08 GMT  
		Size: 17.9 MB (17850220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9509a418c08b00e70904f178390886625660f137bbebbc0eaa2ce019e59927e`  
		Last Modified: Thu, 28 Jun 2018 09:02:59 GMT  
		Size: 4.2 KB (4186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42edd1b716dc2f24ad09934c25c3e8eacef48e38b1149099e7e86e0ee3518154`  
		Last Modified: Thu, 28 Jun 2018 09:03:04 GMT  
		Size: 9.5 MB (9477601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; 386

```console
$ docker pull irssi@sha256:1ed2fc4f7bc4e045e245f7e36f3666304cb65035e448d6d5d9919ab5d76773e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.0 MB (102040518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:394aeac156015fa40278dd10e5b15ac2e2069422049def8b23ff2f38710f81fa`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:09 GMT
ADD file:08ad3a6967c6fe1bfa51f138b64b989a03a61773e4558ec538f63256b472dd77 in / 
# Wed, 27 Jun 2018 10:40:13 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:33:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:33:40 GMT
ENV HOME=/home/user
# Wed, 27 Jun 2018 12:33:41 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 27 Jun 2018 12:33:41 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 12:33:41 GMT
ENV IRSSI_VERSION=1.1.1
# Wed, 27 Jun 2018 12:35:53 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 12:35:53 GMT
WORKDIR /home/user
# Wed, 27 Jun 2018 12:35:53 GMT
USER [user]
# Wed, 27 Jun 2018 12:35:54 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:9e841ca399d43620c0457822730c2d49124abceba44d04d1ec0a0fa4f453b6d1`  
		Last Modified: Wed, 27 Jun 2018 10:53:00 GMT  
		Size: 54.5 MB (54483863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d826162f99893515bb0c37df79ab1477b9bc2df8c202b84721e92e153d227e`  
		Last Modified: Wed, 27 Jun 2018 12:36:26 GMT  
		Size: 33.0 MB (33026229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf9a005fbfb91d6c4df7e03d031a9dd337883c99285c34505825c7cd80eb874`  
		Last Modified: Wed, 27 Jun 2018 12:36:13 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0788e901d92c593f84ff73b54d1d46bbed5ef33b1e8817f218d9cea484594e67`  
		Last Modified: Wed, 27 Jun 2018 12:36:19 GMT  
		Size: 14.5 MB (14526015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; ppc64le

```console
$ docker pull irssi@sha256:ce51614a330ae2feb5df8ad326215b730cb964bc8a3466d917a6b0eb7bfc7575
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.1 MB (51129815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:829145d1a3e9bae8d939f7fa6291760734375b38cc79c34e5e2de120be56d68b`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:34 GMT
ADD file:7bd6d5557557a294db488600b483d452db358e399f7c8b1acf2a89c25b3d2006 in / 
# Wed, 27 Jun 2018 08:21:35 GMT
CMD ["bash"]
# Thu, 28 Jun 2018 08:27:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jun 2018 08:27:42 GMT
ENV HOME=/home/user
# Thu, 28 Jun 2018 08:27:51 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Thu, 28 Jun 2018 08:27:53 GMT
ENV LANG=C.UTF-8
# Thu, 28 Jun 2018 08:27:54 GMT
ENV IRSSI_VERSION=1.1.1
# Thu, 28 Jun 2018 08:32:57 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 28 Jun 2018 08:32:58 GMT
WORKDIR /home/user
# Thu, 28 Jun 2018 08:32:59 GMT
USER [user]
# Thu, 28 Jun 2018 08:32:59 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:591f394d671c26b8ef397269eb6b0bd86b78d5619523f5d1632fca943faff2de`  
		Last Modified: Wed, 27 Jun 2018 08:31:55 GMT  
		Size: 22.8 MB (22753035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90d9565548f36cf51530f28c58e3abe3d5b0797932b3e29fb860328ad39d3bc`  
		Last Modified: Thu, 28 Jun 2018 08:33:31 GMT  
		Size: 18.2 MB (18177831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef5651e3199acf6455b2b7a8455fcf0f3976163fdbd9344f195e6feefd39ed9`  
		Last Modified: Thu, 28 Jun 2018 08:33:24 GMT  
		Size: 4.2 KB (4204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaab4fed220972491d20d78f6ed2093fe5e856256309101be444d8ed060b5b01`  
		Last Modified: Thu, 28 Jun 2018 08:33:28 GMT  
		Size: 10.2 MB (10194745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; s390x

```console
$ docker pull irssi@sha256:4eb6fe8fdf3101e7592db73a12603f3d1defa80314c987d6cbf1025833aed8cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.9 MB (98865354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a468355e910db7e0d36c5ca238968c1f0bb75b69fe36d5a7f63f6b14ca76a45a`
-	Default Command: `["irssi"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:30:55 GMT
ENV HOME=/home/user
# Sat, 28 Apr 2018 13:30:56 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Sat, 28 Apr 2018 13:30:56 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 13:30:56 GMT
ENV IRSSI_VERSION=1.1.1
# Sat, 28 Apr 2018 13:31:44 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 13:31:45 GMT
WORKDIR /home/user
# Sat, 28 Apr 2018 13:31:45 GMT
USER [user]
# Sat, 28 Apr 2018 13:31:45 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e378cd133db0a71ae641cb74ee171cef4077f2a95ba2882a6f1959b8f0a541`  
		Last Modified: Sat, 28 Apr 2018 13:32:34 GMT  
		Size: 31.9 MB (31866559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a58c0179496c63848dd2d9b864ac3eceb220da05184a52fd2ccd50bc0d64101`  
		Last Modified: Sat, 28 Apr 2018 13:32:27 GMT  
		Size: 4.4 KB (4431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea2f17f8bceae0a7d36899630c01b066a1639b63918151c1fece47601a2397d1`  
		Last Modified: Sat, 28 Apr 2018 13:32:30 GMT  
		Size: 12.5 MB (12528507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

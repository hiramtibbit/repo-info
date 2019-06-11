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
$ docker pull irssi@sha256:7747aeae71109454d5f497b96d13867ac55522cd17cd403c941ad29a2e847af2
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
$ docker pull irssi@sha256:a9e17e6a0d375ac0bc27fbb6f5b81830b4d068ee7d1da14d2e082b090eaf7c0b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51514611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64143ebab46fdccc9d7ae054e2f6932699a28dade8ee46cd3278f8dbbd63b0dd`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:58:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:58:32 GMT
ENV HOME=/home/user
# Wed, 08 May 2019 02:58:33 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 08 May 2019 02:58:33 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 02:58:34 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 08 May 2019 03:00:17 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 03:00:18 GMT
WORKDIR /home/user
# Wed, 08 May 2019 03:00:18 GMT
USER user
# Wed, 08 May 2019 03:00:18 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006c3b0e6bc4ecca47b36b42a7181e306a25ae7d99f3b3ed93396af7a329b32a`  
		Last Modified: Wed, 08 May 2019 03:00:48 GMT  
		Size: 18.7 MB (18740558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a9ba7b487e8c1e3bed24db7eaed88fb9857b0733c6cbf91d129d5984701244`  
		Last Modified: Wed, 08 May 2019 03:00:41 GMT  
		Size: 4.2 KB (4171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2765576597c8285e7077856a6df83dea1d4c2237101cbf7760f4cbef33f5a108`  
		Last Modified: Wed, 08 May 2019 03:00:44 GMT  
		Size: 10.3 MB (10280532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1` - linux; arm variant v5

```console
$ docker pull irssi@sha256:fb7ad8d9ec469e66165e9567eee3ed2f873a5ef47827065be337209119e6032f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47809229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:044ff074a0f18011ca20cb19c24459f3da0a39d3ef7f92f170811b4704ccd695`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 10 Jun 2019 23:53:36 GMT
ADD file:b563bf03e125515b4f74af859aa40e35d24c633add8a20f007b0da89ef4692d9 in / 
# Mon, 10 Jun 2019 23:53:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:17:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:17:29 GMT
ENV HOME=/home/user
# Tue, 11 Jun 2019 00:17:31 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 11 Jun 2019 00:17:32 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 00:17:32 GMT
ENV IRSSI_VERSION=1.2.0
# Tue, 11 Jun 2019 00:19:08 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 11 Jun 2019 00:19:09 GMT
WORKDIR /home/user
# Tue, 11 Jun 2019 00:19:10 GMT
USER user
# Tue, 11 Jun 2019 00:19:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:081b7d581c1dae49d30a4b9d0fead63d3653fe9ed91f43a20287f8ddbad3797b`  
		Last Modified: Mon, 10 Jun 2019 23:59:41 GMT  
		Size: 21.2 MB (21155842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343423ea7ba6256964021816c069b9d2e16dccabff3e3bb02140ca4baec2afbd`  
		Last Modified: Tue, 11 Jun 2019 00:19:45 GMT  
		Size: 17.5 MB (17508383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9224c762160d75a1a793d58c5e1c6dd2b4845c39df3ab1444c380d129824806`  
		Last Modified: Tue, 11 Jun 2019 00:19:35 GMT  
		Size: 4.2 KB (4184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9325ed52f043734ff679f35e6650e668bf458d792332283234310fe2d0da7d`  
		Last Modified: Tue, 11 Jun 2019 00:19:40 GMT  
		Size: 9.1 MB (9140820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1` - linux; arm variant v7

```console
$ docker pull irssi@sha256:bffa5ee2c6be369bba71245d3427bb26a5efd5b6b941941db5f4635c8d425c7b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45066086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50c8b9cf910b0186c0eb6b6b749584ead3ae8af8bcabc9b536964132987e3c29`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 11 Jun 2019 00:03:03 GMT
ADD file:4102df5a1a0de014e0753e42aec7c4f521a1adb132934625dc3a60945e20b048 in / 
# Tue, 11 Jun 2019 00:03:04 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:30:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:08 GMT
ENV HOME=/home/user
# Tue, 11 Jun 2019 00:30:11 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 11 Jun 2019 00:30:11 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 00:30:12 GMT
ENV IRSSI_VERSION=1.2.0
# Tue, 11 Jun 2019 00:31:33 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 11 Jun 2019 00:31:34 GMT
WORKDIR /home/user
# Tue, 11 Jun 2019 00:31:34 GMT
USER user
# Tue, 11 Jun 2019 00:31:34 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5155b41fe73a7b2fc8284ed1160e8ad046f2bfd1606e73e4bbe3f54b05890fc9`  
		Last Modified: Tue, 11 Jun 2019 00:09:27 GMT  
		Size: 19.3 MB (19276185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67102a87a1ca7327f1ac1d87489189a8ea0270e10d16cad928a2ccee2f141da`  
		Last Modified: Tue, 11 Jun 2019 00:32:00 GMT  
		Size: 17.0 MB (17000389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbce0e253628ba07fd22009d6958914a362a700f019b6cb5550c4ebaa077b6c2`  
		Last Modified: Tue, 11 Jun 2019 00:31:52 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:949286e8d0ce011c0d1f5c55a0969c8d90317a9f6115a85c6c5c965fc2b64096`  
		Last Modified: Tue, 11 Jun 2019 00:31:56 GMT  
		Size: 8.8 MB (8785332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:667c752799584938cec9e1fb4406387f09a22f48195d555ea56cf1989a7cc8d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47761945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:337978b15f7333a26f08a4ce6b73aac179f081d6d6fb72af74020108b6d471cf`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:21:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:21:39 GMT
ENV HOME=/home/user
# Wed, 08 May 2019 12:21:46 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 08 May 2019 12:21:51 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 12:21:53 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 08 May 2019 12:26:57 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 12:26:57 GMT
WORKDIR /home/user
# Wed, 08 May 2019 12:26:58 GMT
USER user
# Wed, 08 May 2019 12:27:00 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ae2ddbd3f7d686ac397e1dce3c7e812f4fc6c9d89d6322511c67e830d7ae49`  
		Last Modified: Wed, 08 May 2019 12:27:36 GMT  
		Size: 17.8 MB (17846837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234e6d6b02f3f03b6d68fb2dd3f581f32b18c867278f47dc2ced181d49f0d3b3`  
		Last Modified: Wed, 08 May 2019 12:27:27 GMT  
		Size: 4.2 KB (4186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:460daf12f06253ffa751a4e1befc1b180cfabd5a8ae927d57b04ddfec1ce82eb`  
		Last Modified: Wed, 08 May 2019 12:27:32 GMT  
		Size: 9.6 MB (9577107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1` - linux; 386

```console
$ docker pull irssi@sha256:3e681bcc8272ee5221ee0cffc3c997ce2e3110e603c2cc6ec325445e58d4663c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54863090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:624fcf6e9b7c0c7e5bb36875bdd80f35de3065ddba49d2502386f4b23c61dd25`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 18:50:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:50:35 GMT
ENV HOME=/home/user
# Wed, 08 May 2019 18:50:36 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 08 May 2019 18:50:36 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 18:50:37 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 08 May 2019 18:51:45 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 18:51:45 GMT
WORKDIR /home/user
# Wed, 08 May 2019 18:51:46 GMT
USER user
# Wed, 08 May 2019 18:51:46 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f839808582f01d9636dbe7cbf209c00c77f197d373e79d0a72b87bdec3220898`  
		Last Modified: Wed, 08 May 2019 18:52:09 GMT  
		Size: 18.4 MB (18425275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb5e70ab3bb3d37cdd654d150be4f0952784a1b54f4b6fe4e586d1d919c166e`  
		Last Modified: Wed, 08 May 2019 18:52:03 GMT  
		Size: 4.2 KB (4158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4281daf65ebaec7dbd506bb844f070f72096c9788ad7f201fe0e3675b54ed0e4`  
		Last Modified: Wed, 08 May 2019 18:52:07 GMT  
		Size: 13.3 MB (13312814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1` - linux; ppc64le

```console
$ docker pull irssi@sha256:149e7e51987a9f9302f7c3889a51f10fb0049eae61ed361ddb68992fa35922bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.2 MB (51219284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:407ee9646b447f043ffa84ca7314e6f3c701c4a903fefd9073577e22d5d2984e`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:56 GMT
ADD file:cbe9750f9a223a6cdc02ae93dd729d2261ce439e1c7be255cd3a688eebfe62ba in / 
# Mon, 10 Jun 2019 23:18:59 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:45:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 10 Jun 2019 23:45:50 GMT
ENV HOME=/home/user
# Mon, 10 Jun 2019 23:46:04 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 10 Jun 2019 23:46:06 GMT
ENV LANG=C.UTF-8
# Mon, 10 Jun 2019 23:46:10 GMT
ENV IRSSI_VERSION=1.2.0
# Mon, 10 Jun 2019 23:54:15 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 10 Jun 2019 23:54:18 GMT
WORKDIR /home/user
# Mon, 10 Jun 2019 23:54:27 GMT
USER user
# Mon, 10 Jun 2019 23:54:30 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d41f2b4ffc1e666af1af85c808fc5e2c1f81602da89d9e81911a402a3e1e69b5`  
		Last Modified: Mon, 10 Jun 2019 23:24:17 GMT  
		Size: 22.7 MB (22744910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f44c5d66de0507ab8b24f0652d337e40d904d91a02d8839fbaa9dbf67d2bd0e`  
		Last Modified: Mon, 10 Jun 2019 23:56:44 GMT  
		Size: 18.2 MB (18173859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffe1f7d810fdc2f1e0ee3aa51d305d707382b4be64b78cbfbc72e8ed6e22e2d`  
		Last Modified: Mon, 10 Jun 2019 23:56:37 GMT  
		Size: 4.2 KB (4198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb758fe3168087fc36a18f0b88c33a5dfb92f3bb556eccc25b5a7bab31e36e5`  
		Last Modified: Mon, 10 Jun 2019 23:56:41 GMT  
		Size: 10.3 MB (10296317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1` - linux; s390x

```console
$ docker pull irssi@sha256:e724169756996c765bdfc53b9c0a5ad3a636742b4e7d3558fb3783d26c759df9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52453792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f41ea5e403a11cac6c67c5aa47e6afd5e9cc1ba2d07880ca08200acd2670066`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 18:02:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:02:11 GMT
ENV HOME=/home/user
# Wed, 08 May 2019 18:02:21 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 08 May 2019 18:02:22 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 18:02:23 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 08 May 2019 18:07:47 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 18:07:49 GMT
WORKDIR /home/user
# Wed, 08 May 2019 18:07:50 GMT
USER user
# Wed, 08 May 2019 18:07:51 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d24e6ac43116c80ccb00709d81449343df2907239ce6544d0b39d33d8ffe6b1`  
		Last Modified: Wed, 08 May 2019 18:08:55 GMT  
		Size: 18.8 MB (18821730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a407edac554e05f159fa55ec5b83319018193243a8097a6d11be0b97660950f3`  
		Last Modified: Wed, 08 May 2019 18:08:33 GMT  
		Size: 4.2 KB (4174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a381a279b60524eaed4a444eba46e88b045c1533eb61badf2defc67d9ab175d6`  
		Last Modified: Wed, 08 May 2019 18:08:45 GMT  
		Size: 11.3 MB (11289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.2`

```console
$ docker pull irssi@sha256:7747aeae71109454d5f497b96d13867ac55522cd17cd403c941ad29a2e847af2
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
$ docker pull irssi@sha256:a9e17e6a0d375ac0bc27fbb6f5b81830b4d068ee7d1da14d2e082b090eaf7c0b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51514611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64143ebab46fdccc9d7ae054e2f6932699a28dade8ee46cd3278f8dbbd63b0dd`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:58:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:58:32 GMT
ENV HOME=/home/user
# Wed, 08 May 2019 02:58:33 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 08 May 2019 02:58:33 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 02:58:34 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 08 May 2019 03:00:17 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 03:00:18 GMT
WORKDIR /home/user
# Wed, 08 May 2019 03:00:18 GMT
USER user
# Wed, 08 May 2019 03:00:18 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006c3b0e6bc4ecca47b36b42a7181e306a25ae7d99f3b3ed93396af7a329b32a`  
		Last Modified: Wed, 08 May 2019 03:00:48 GMT  
		Size: 18.7 MB (18740558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a9ba7b487e8c1e3bed24db7eaed88fb9857b0733c6cbf91d129d5984701244`  
		Last Modified: Wed, 08 May 2019 03:00:41 GMT  
		Size: 4.2 KB (4171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2765576597c8285e7077856a6df83dea1d4c2237101cbf7760f4cbef33f5a108`  
		Last Modified: Wed, 08 May 2019 03:00:44 GMT  
		Size: 10.3 MB (10280532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.2` - linux; arm variant v5

```console
$ docker pull irssi@sha256:fb7ad8d9ec469e66165e9567eee3ed2f873a5ef47827065be337209119e6032f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47809229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:044ff074a0f18011ca20cb19c24459f3da0a39d3ef7f92f170811b4704ccd695`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 10 Jun 2019 23:53:36 GMT
ADD file:b563bf03e125515b4f74af859aa40e35d24c633add8a20f007b0da89ef4692d9 in / 
# Mon, 10 Jun 2019 23:53:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:17:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:17:29 GMT
ENV HOME=/home/user
# Tue, 11 Jun 2019 00:17:31 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 11 Jun 2019 00:17:32 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 00:17:32 GMT
ENV IRSSI_VERSION=1.2.0
# Tue, 11 Jun 2019 00:19:08 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 11 Jun 2019 00:19:09 GMT
WORKDIR /home/user
# Tue, 11 Jun 2019 00:19:10 GMT
USER user
# Tue, 11 Jun 2019 00:19:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:081b7d581c1dae49d30a4b9d0fead63d3653fe9ed91f43a20287f8ddbad3797b`  
		Last Modified: Mon, 10 Jun 2019 23:59:41 GMT  
		Size: 21.2 MB (21155842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343423ea7ba6256964021816c069b9d2e16dccabff3e3bb02140ca4baec2afbd`  
		Last Modified: Tue, 11 Jun 2019 00:19:45 GMT  
		Size: 17.5 MB (17508383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9224c762160d75a1a793d58c5e1c6dd2b4845c39df3ab1444c380d129824806`  
		Last Modified: Tue, 11 Jun 2019 00:19:35 GMT  
		Size: 4.2 KB (4184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9325ed52f043734ff679f35e6650e668bf458d792332283234310fe2d0da7d`  
		Last Modified: Tue, 11 Jun 2019 00:19:40 GMT  
		Size: 9.1 MB (9140820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.2` - linux; arm variant v7

```console
$ docker pull irssi@sha256:bffa5ee2c6be369bba71245d3427bb26a5efd5b6b941941db5f4635c8d425c7b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45066086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50c8b9cf910b0186c0eb6b6b749584ead3ae8af8bcabc9b536964132987e3c29`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 11 Jun 2019 00:03:03 GMT
ADD file:4102df5a1a0de014e0753e42aec7c4f521a1adb132934625dc3a60945e20b048 in / 
# Tue, 11 Jun 2019 00:03:04 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:30:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:08 GMT
ENV HOME=/home/user
# Tue, 11 Jun 2019 00:30:11 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 11 Jun 2019 00:30:11 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 00:30:12 GMT
ENV IRSSI_VERSION=1.2.0
# Tue, 11 Jun 2019 00:31:33 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 11 Jun 2019 00:31:34 GMT
WORKDIR /home/user
# Tue, 11 Jun 2019 00:31:34 GMT
USER user
# Tue, 11 Jun 2019 00:31:34 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5155b41fe73a7b2fc8284ed1160e8ad046f2bfd1606e73e4bbe3f54b05890fc9`  
		Last Modified: Tue, 11 Jun 2019 00:09:27 GMT  
		Size: 19.3 MB (19276185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67102a87a1ca7327f1ac1d87489189a8ea0270e10d16cad928a2ccee2f141da`  
		Last Modified: Tue, 11 Jun 2019 00:32:00 GMT  
		Size: 17.0 MB (17000389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbce0e253628ba07fd22009d6958914a362a700f019b6cb5550c4ebaa077b6c2`  
		Last Modified: Tue, 11 Jun 2019 00:31:52 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:949286e8d0ce011c0d1f5c55a0969c8d90317a9f6115a85c6c5c965fc2b64096`  
		Last Modified: Tue, 11 Jun 2019 00:31:56 GMT  
		Size: 8.8 MB (8785332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.2` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:667c752799584938cec9e1fb4406387f09a22f48195d555ea56cf1989a7cc8d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47761945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:337978b15f7333a26f08a4ce6b73aac179f081d6d6fb72af74020108b6d471cf`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:21:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:21:39 GMT
ENV HOME=/home/user
# Wed, 08 May 2019 12:21:46 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 08 May 2019 12:21:51 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 12:21:53 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 08 May 2019 12:26:57 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 12:26:57 GMT
WORKDIR /home/user
# Wed, 08 May 2019 12:26:58 GMT
USER user
# Wed, 08 May 2019 12:27:00 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ae2ddbd3f7d686ac397e1dce3c7e812f4fc6c9d89d6322511c67e830d7ae49`  
		Last Modified: Wed, 08 May 2019 12:27:36 GMT  
		Size: 17.8 MB (17846837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234e6d6b02f3f03b6d68fb2dd3f581f32b18c867278f47dc2ced181d49f0d3b3`  
		Last Modified: Wed, 08 May 2019 12:27:27 GMT  
		Size: 4.2 KB (4186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:460daf12f06253ffa751a4e1befc1b180cfabd5a8ae927d57b04ddfec1ce82eb`  
		Last Modified: Wed, 08 May 2019 12:27:32 GMT  
		Size: 9.6 MB (9577107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.2` - linux; 386

```console
$ docker pull irssi@sha256:3e681bcc8272ee5221ee0cffc3c997ce2e3110e603c2cc6ec325445e58d4663c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54863090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:624fcf6e9b7c0c7e5bb36875bdd80f35de3065ddba49d2502386f4b23c61dd25`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 18:50:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:50:35 GMT
ENV HOME=/home/user
# Wed, 08 May 2019 18:50:36 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 08 May 2019 18:50:36 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 18:50:37 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 08 May 2019 18:51:45 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 18:51:45 GMT
WORKDIR /home/user
# Wed, 08 May 2019 18:51:46 GMT
USER user
# Wed, 08 May 2019 18:51:46 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f839808582f01d9636dbe7cbf209c00c77f197d373e79d0a72b87bdec3220898`  
		Last Modified: Wed, 08 May 2019 18:52:09 GMT  
		Size: 18.4 MB (18425275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb5e70ab3bb3d37cdd654d150be4f0952784a1b54f4b6fe4e586d1d919c166e`  
		Last Modified: Wed, 08 May 2019 18:52:03 GMT  
		Size: 4.2 KB (4158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4281daf65ebaec7dbd506bb844f070f72096c9788ad7f201fe0e3675b54ed0e4`  
		Last Modified: Wed, 08 May 2019 18:52:07 GMT  
		Size: 13.3 MB (13312814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.2` - linux; ppc64le

```console
$ docker pull irssi@sha256:149e7e51987a9f9302f7c3889a51f10fb0049eae61ed361ddb68992fa35922bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.2 MB (51219284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:407ee9646b447f043ffa84ca7314e6f3c701c4a903fefd9073577e22d5d2984e`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:56 GMT
ADD file:cbe9750f9a223a6cdc02ae93dd729d2261ce439e1c7be255cd3a688eebfe62ba in / 
# Mon, 10 Jun 2019 23:18:59 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:45:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 10 Jun 2019 23:45:50 GMT
ENV HOME=/home/user
# Mon, 10 Jun 2019 23:46:04 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 10 Jun 2019 23:46:06 GMT
ENV LANG=C.UTF-8
# Mon, 10 Jun 2019 23:46:10 GMT
ENV IRSSI_VERSION=1.2.0
# Mon, 10 Jun 2019 23:54:15 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 10 Jun 2019 23:54:18 GMT
WORKDIR /home/user
# Mon, 10 Jun 2019 23:54:27 GMT
USER user
# Mon, 10 Jun 2019 23:54:30 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d41f2b4ffc1e666af1af85c808fc5e2c1f81602da89d9e81911a402a3e1e69b5`  
		Last Modified: Mon, 10 Jun 2019 23:24:17 GMT  
		Size: 22.7 MB (22744910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f44c5d66de0507ab8b24f0652d337e40d904d91a02d8839fbaa9dbf67d2bd0e`  
		Last Modified: Mon, 10 Jun 2019 23:56:44 GMT  
		Size: 18.2 MB (18173859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffe1f7d810fdc2f1e0ee3aa51d305d707382b4be64b78cbfbc72e8ed6e22e2d`  
		Last Modified: Mon, 10 Jun 2019 23:56:37 GMT  
		Size: 4.2 KB (4198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb758fe3168087fc36a18f0b88c33a5dfb92f3bb556eccc25b5a7bab31e36e5`  
		Last Modified: Mon, 10 Jun 2019 23:56:41 GMT  
		Size: 10.3 MB (10296317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.2` - linux; s390x

```console
$ docker pull irssi@sha256:e724169756996c765bdfc53b9c0a5ad3a636742b4e7d3558fb3783d26c759df9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52453792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f41ea5e403a11cac6c67c5aa47e6afd5e9cc1ba2d07880ca08200acd2670066`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 18:02:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:02:11 GMT
ENV HOME=/home/user
# Wed, 08 May 2019 18:02:21 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 08 May 2019 18:02:22 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 18:02:23 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 08 May 2019 18:07:47 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 18:07:49 GMT
WORKDIR /home/user
# Wed, 08 May 2019 18:07:50 GMT
USER user
# Wed, 08 May 2019 18:07:51 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d24e6ac43116c80ccb00709d81449343df2907239ce6544d0b39d33d8ffe6b1`  
		Last Modified: Wed, 08 May 2019 18:08:55 GMT  
		Size: 18.8 MB (18821730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a407edac554e05f159fa55ec5b83319018193243a8097a6d11be0b97660950f3`  
		Last Modified: Wed, 08 May 2019 18:08:33 GMT  
		Size: 4.2 KB (4174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a381a279b60524eaed4a444eba46e88b045c1533eb61badf2defc67d9ab175d6`  
		Last Modified: Wed, 08 May 2019 18:08:45 GMT  
		Size: 11.3 MB (11289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.2.0`

```console
$ docker pull irssi@sha256:7747aeae71109454d5f497b96d13867ac55522cd17cd403c941ad29a2e847af2
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
$ docker pull irssi@sha256:a9e17e6a0d375ac0bc27fbb6f5b81830b4d068ee7d1da14d2e082b090eaf7c0b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51514611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64143ebab46fdccc9d7ae054e2f6932699a28dade8ee46cd3278f8dbbd63b0dd`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:58:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:58:32 GMT
ENV HOME=/home/user
# Wed, 08 May 2019 02:58:33 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 08 May 2019 02:58:33 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 02:58:34 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 08 May 2019 03:00:17 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 03:00:18 GMT
WORKDIR /home/user
# Wed, 08 May 2019 03:00:18 GMT
USER user
# Wed, 08 May 2019 03:00:18 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006c3b0e6bc4ecca47b36b42a7181e306a25ae7d99f3b3ed93396af7a329b32a`  
		Last Modified: Wed, 08 May 2019 03:00:48 GMT  
		Size: 18.7 MB (18740558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a9ba7b487e8c1e3bed24db7eaed88fb9857b0733c6cbf91d129d5984701244`  
		Last Modified: Wed, 08 May 2019 03:00:41 GMT  
		Size: 4.2 KB (4171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2765576597c8285e7077856a6df83dea1d4c2237101cbf7760f4cbef33f5a108`  
		Last Modified: Wed, 08 May 2019 03:00:44 GMT  
		Size: 10.3 MB (10280532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.2.0` - linux; arm variant v5

```console
$ docker pull irssi@sha256:fb7ad8d9ec469e66165e9567eee3ed2f873a5ef47827065be337209119e6032f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47809229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:044ff074a0f18011ca20cb19c24459f3da0a39d3ef7f92f170811b4704ccd695`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 10 Jun 2019 23:53:36 GMT
ADD file:b563bf03e125515b4f74af859aa40e35d24c633add8a20f007b0da89ef4692d9 in / 
# Mon, 10 Jun 2019 23:53:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:17:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:17:29 GMT
ENV HOME=/home/user
# Tue, 11 Jun 2019 00:17:31 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 11 Jun 2019 00:17:32 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 00:17:32 GMT
ENV IRSSI_VERSION=1.2.0
# Tue, 11 Jun 2019 00:19:08 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 11 Jun 2019 00:19:09 GMT
WORKDIR /home/user
# Tue, 11 Jun 2019 00:19:10 GMT
USER user
# Tue, 11 Jun 2019 00:19:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:081b7d581c1dae49d30a4b9d0fead63d3653fe9ed91f43a20287f8ddbad3797b`  
		Last Modified: Mon, 10 Jun 2019 23:59:41 GMT  
		Size: 21.2 MB (21155842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343423ea7ba6256964021816c069b9d2e16dccabff3e3bb02140ca4baec2afbd`  
		Last Modified: Tue, 11 Jun 2019 00:19:45 GMT  
		Size: 17.5 MB (17508383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9224c762160d75a1a793d58c5e1c6dd2b4845c39df3ab1444c380d129824806`  
		Last Modified: Tue, 11 Jun 2019 00:19:35 GMT  
		Size: 4.2 KB (4184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9325ed52f043734ff679f35e6650e668bf458d792332283234310fe2d0da7d`  
		Last Modified: Tue, 11 Jun 2019 00:19:40 GMT  
		Size: 9.1 MB (9140820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.2.0` - linux; arm variant v7

```console
$ docker pull irssi@sha256:bffa5ee2c6be369bba71245d3427bb26a5efd5b6b941941db5f4635c8d425c7b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45066086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50c8b9cf910b0186c0eb6b6b749584ead3ae8af8bcabc9b536964132987e3c29`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 11 Jun 2019 00:03:03 GMT
ADD file:4102df5a1a0de014e0753e42aec7c4f521a1adb132934625dc3a60945e20b048 in / 
# Tue, 11 Jun 2019 00:03:04 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:30:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:08 GMT
ENV HOME=/home/user
# Tue, 11 Jun 2019 00:30:11 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 11 Jun 2019 00:30:11 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 00:30:12 GMT
ENV IRSSI_VERSION=1.2.0
# Tue, 11 Jun 2019 00:31:33 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 11 Jun 2019 00:31:34 GMT
WORKDIR /home/user
# Tue, 11 Jun 2019 00:31:34 GMT
USER user
# Tue, 11 Jun 2019 00:31:34 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5155b41fe73a7b2fc8284ed1160e8ad046f2bfd1606e73e4bbe3f54b05890fc9`  
		Last Modified: Tue, 11 Jun 2019 00:09:27 GMT  
		Size: 19.3 MB (19276185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67102a87a1ca7327f1ac1d87489189a8ea0270e10d16cad928a2ccee2f141da`  
		Last Modified: Tue, 11 Jun 2019 00:32:00 GMT  
		Size: 17.0 MB (17000389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbce0e253628ba07fd22009d6958914a362a700f019b6cb5550c4ebaa077b6c2`  
		Last Modified: Tue, 11 Jun 2019 00:31:52 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:949286e8d0ce011c0d1f5c55a0969c8d90317a9f6115a85c6c5c965fc2b64096`  
		Last Modified: Tue, 11 Jun 2019 00:31:56 GMT  
		Size: 8.8 MB (8785332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.2.0` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:667c752799584938cec9e1fb4406387f09a22f48195d555ea56cf1989a7cc8d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47761945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:337978b15f7333a26f08a4ce6b73aac179f081d6d6fb72af74020108b6d471cf`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:21:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:21:39 GMT
ENV HOME=/home/user
# Wed, 08 May 2019 12:21:46 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 08 May 2019 12:21:51 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 12:21:53 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 08 May 2019 12:26:57 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 12:26:57 GMT
WORKDIR /home/user
# Wed, 08 May 2019 12:26:58 GMT
USER user
# Wed, 08 May 2019 12:27:00 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ae2ddbd3f7d686ac397e1dce3c7e812f4fc6c9d89d6322511c67e830d7ae49`  
		Last Modified: Wed, 08 May 2019 12:27:36 GMT  
		Size: 17.8 MB (17846837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234e6d6b02f3f03b6d68fb2dd3f581f32b18c867278f47dc2ced181d49f0d3b3`  
		Last Modified: Wed, 08 May 2019 12:27:27 GMT  
		Size: 4.2 KB (4186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:460daf12f06253ffa751a4e1befc1b180cfabd5a8ae927d57b04ddfec1ce82eb`  
		Last Modified: Wed, 08 May 2019 12:27:32 GMT  
		Size: 9.6 MB (9577107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.2.0` - linux; 386

```console
$ docker pull irssi@sha256:3e681bcc8272ee5221ee0cffc3c997ce2e3110e603c2cc6ec325445e58d4663c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54863090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:624fcf6e9b7c0c7e5bb36875bdd80f35de3065ddba49d2502386f4b23c61dd25`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 18:50:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:50:35 GMT
ENV HOME=/home/user
# Wed, 08 May 2019 18:50:36 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 08 May 2019 18:50:36 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 18:50:37 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 08 May 2019 18:51:45 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 18:51:45 GMT
WORKDIR /home/user
# Wed, 08 May 2019 18:51:46 GMT
USER user
# Wed, 08 May 2019 18:51:46 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f839808582f01d9636dbe7cbf209c00c77f197d373e79d0a72b87bdec3220898`  
		Last Modified: Wed, 08 May 2019 18:52:09 GMT  
		Size: 18.4 MB (18425275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb5e70ab3bb3d37cdd654d150be4f0952784a1b54f4b6fe4e586d1d919c166e`  
		Last Modified: Wed, 08 May 2019 18:52:03 GMT  
		Size: 4.2 KB (4158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4281daf65ebaec7dbd506bb844f070f72096c9788ad7f201fe0e3675b54ed0e4`  
		Last Modified: Wed, 08 May 2019 18:52:07 GMT  
		Size: 13.3 MB (13312814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.2.0` - linux; ppc64le

```console
$ docker pull irssi@sha256:149e7e51987a9f9302f7c3889a51f10fb0049eae61ed361ddb68992fa35922bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.2 MB (51219284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:407ee9646b447f043ffa84ca7314e6f3c701c4a903fefd9073577e22d5d2984e`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:56 GMT
ADD file:cbe9750f9a223a6cdc02ae93dd729d2261ce439e1c7be255cd3a688eebfe62ba in / 
# Mon, 10 Jun 2019 23:18:59 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:45:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 10 Jun 2019 23:45:50 GMT
ENV HOME=/home/user
# Mon, 10 Jun 2019 23:46:04 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 10 Jun 2019 23:46:06 GMT
ENV LANG=C.UTF-8
# Mon, 10 Jun 2019 23:46:10 GMT
ENV IRSSI_VERSION=1.2.0
# Mon, 10 Jun 2019 23:54:15 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 10 Jun 2019 23:54:18 GMT
WORKDIR /home/user
# Mon, 10 Jun 2019 23:54:27 GMT
USER user
# Mon, 10 Jun 2019 23:54:30 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d41f2b4ffc1e666af1af85c808fc5e2c1f81602da89d9e81911a402a3e1e69b5`  
		Last Modified: Mon, 10 Jun 2019 23:24:17 GMT  
		Size: 22.7 MB (22744910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f44c5d66de0507ab8b24f0652d337e40d904d91a02d8839fbaa9dbf67d2bd0e`  
		Last Modified: Mon, 10 Jun 2019 23:56:44 GMT  
		Size: 18.2 MB (18173859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffe1f7d810fdc2f1e0ee3aa51d305d707382b4be64b78cbfbc72e8ed6e22e2d`  
		Last Modified: Mon, 10 Jun 2019 23:56:37 GMT  
		Size: 4.2 KB (4198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb758fe3168087fc36a18f0b88c33a5dfb92f3bb556eccc25b5a7bab31e36e5`  
		Last Modified: Mon, 10 Jun 2019 23:56:41 GMT  
		Size: 10.3 MB (10296317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.2.0` - linux; s390x

```console
$ docker pull irssi@sha256:e724169756996c765bdfc53b9c0a5ad3a636742b4e7d3558fb3783d26c759df9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52453792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f41ea5e403a11cac6c67c5aa47e6afd5e9cc1ba2d07880ca08200acd2670066`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 18:02:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:02:11 GMT
ENV HOME=/home/user
# Wed, 08 May 2019 18:02:21 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 08 May 2019 18:02:22 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 18:02:23 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 08 May 2019 18:07:47 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 18:07:49 GMT
WORKDIR /home/user
# Wed, 08 May 2019 18:07:50 GMT
USER user
# Wed, 08 May 2019 18:07:51 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d24e6ac43116c80ccb00709d81449343df2907239ce6544d0b39d33d8ffe6b1`  
		Last Modified: Wed, 08 May 2019 18:08:55 GMT  
		Size: 18.8 MB (18821730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a407edac554e05f159fa55ec5b83319018193243a8097a6d11be0b97660950f3`  
		Last Modified: Wed, 08 May 2019 18:08:33 GMT  
		Size: 4.2 KB (4174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a381a279b60524eaed4a444eba46e88b045c1533eb61badf2defc67d9ab175d6`  
		Last Modified: Wed, 08 May 2019 18:08:45 GMT  
		Size: 11.3 MB (11289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.2.0-alpine`

```console
$ docker pull irssi@sha256:556dce4752d827c1d7c8299df13ce30d24c3db797aac8bfb8deb68bbb91b82f1
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
$ docker pull irssi@sha256:7b24df83ce17b8a2bf3ea46650a1dd9bab6c12ec995ffa67bb4f9787ffa92ee0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18869366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26b6e8699c9982703820b51e99afaff292b47152a27b2079719b95cd6e071dea`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:51 GMT
ADD file:55fbeb767cf2b9344907a5252cccd1e7fb7b146277b267422b6117406300bfbf in / 
# Fri, 08 Mar 2019 03:37:54 GMT
CMD ["/bin/sh"]
# Mon, 10 Jun 2019 23:54:50 GMT
RUN apk --no-cache add 	ca-certificates
# Mon, 10 Jun 2019 23:54:52 GMT
ENV HOME=/home/user
# Mon, 10 Jun 2019 23:54:57 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 10 Jun 2019 23:54:59 GMT
ENV LANG=C.UTF-8
# Mon, 10 Jun 2019 23:55:02 GMT
ENV IRSSI_VERSION=1.2.0
# Mon, 10 Jun 2019 23:56:02 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Mon, 10 Jun 2019 23:56:08 GMT
WORKDIR /home/user
# Mon, 10 Jun 2019 23:56:12 GMT
USER user
# Mon, 10 Jun 2019 23:56:15 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f4c3542ff81d415a34c73cfb323605bb8faf0062bb1ba117e2bd1370b734b441`  
		Last Modified: Fri, 08 Mar 2019 03:38:54 GMT  
		Size: 2.1 MB (2098856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9fd30ab2c500707df1e839e3946b72d40cdd381b27dceb73ae608df6efbbff`  
		Last Modified: Mon, 10 Jun 2019 23:57:00 GMT  
		Size: 303.8 KB (303833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2d39e0ceb0e8a065a2e62aaa16a3b0d2dab84b8aa9b8d1ab82e7ffbc8ac9c0`  
		Last Modified: Mon, 10 Jun 2019 23:56:59 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4177f5c3418b0b50e98e93b8a338f9e2a46cde3befa8e556055c62190dd59c31`  
		Last Modified: Mon, 10 Jun 2019 23:57:06 GMT  
		Size: 16.5 MB (16465382 bytes)  
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
$ docker pull irssi@sha256:556dce4752d827c1d7c8299df13ce30d24c3db797aac8bfb8deb68bbb91b82f1
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
$ docker pull irssi@sha256:7b24df83ce17b8a2bf3ea46650a1dd9bab6c12ec995ffa67bb4f9787ffa92ee0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18869366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26b6e8699c9982703820b51e99afaff292b47152a27b2079719b95cd6e071dea`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:51 GMT
ADD file:55fbeb767cf2b9344907a5252cccd1e7fb7b146277b267422b6117406300bfbf in / 
# Fri, 08 Mar 2019 03:37:54 GMT
CMD ["/bin/sh"]
# Mon, 10 Jun 2019 23:54:50 GMT
RUN apk --no-cache add 	ca-certificates
# Mon, 10 Jun 2019 23:54:52 GMT
ENV HOME=/home/user
# Mon, 10 Jun 2019 23:54:57 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 10 Jun 2019 23:54:59 GMT
ENV LANG=C.UTF-8
# Mon, 10 Jun 2019 23:55:02 GMT
ENV IRSSI_VERSION=1.2.0
# Mon, 10 Jun 2019 23:56:02 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Mon, 10 Jun 2019 23:56:08 GMT
WORKDIR /home/user
# Mon, 10 Jun 2019 23:56:12 GMT
USER user
# Mon, 10 Jun 2019 23:56:15 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f4c3542ff81d415a34c73cfb323605bb8faf0062bb1ba117e2bd1370b734b441`  
		Last Modified: Fri, 08 Mar 2019 03:38:54 GMT  
		Size: 2.1 MB (2098856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9fd30ab2c500707df1e839e3946b72d40cdd381b27dceb73ae608df6efbbff`  
		Last Modified: Mon, 10 Jun 2019 23:57:00 GMT  
		Size: 303.8 KB (303833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2d39e0ceb0e8a065a2e62aaa16a3b0d2dab84b8aa9b8d1ab82e7ffbc8ac9c0`  
		Last Modified: Mon, 10 Jun 2019 23:56:59 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4177f5c3418b0b50e98e93b8a338f9e2a46cde3befa8e556055c62190dd59c31`  
		Last Modified: Mon, 10 Jun 2019 23:57:06 GMT  
		Size: 16.5 MB (16465382 bytes)  
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
$ docker pull irssi@sha256:556dce4752d827c1d7c8299df13ce30d24c3db797aac8bfb8deb68bbb91b82f1
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
$ docker pull irssi@sha256:7b24df83ce17b8a2bf3ea46650a1dd9bab6c12ec995ffa67bb4f9787ffa92ee0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18869366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26b6e8699c9982703820b51e99afaff292b47152a27b2079719b95cd6e071dea`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:51 GMT
ADD file:55fbeb767cf2b9344907a5252cccd1e7fb7b146277b267422b6117406300bfbf in / 
# Fri, 08 Mar 2019 03:37:54 GMT
CMD ["/bin/sh"]
# Mon, 10 Jun 2019 23:54:50 GMT
RUN apk --no-cache add 	ca-certificates
# Mon, 10 Jun 2019 23:54:52 GMT
ENV HOME=/home/user
# Mon, 10 Jun 2019 23:54:57 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 10 Jun 2019 23:54:59 GMT
ENV LANG=C.UTF-8
# Mon, 10 Jun 2019 23:55:02 GMT
ENV IRSSI_VERSION=1.2.0
# Mon, 10 Jun 2019 23:56:02 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Mon, 10 Jun 2019 23:56:08 GMT
WORKDIR /home/user
# Mon, 10 Jun 2019 23:56:12 GMT
USER user
# Mon, 10 Jun 2019 23:56:15 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f4c3542ff81d415a34c73cfb323605bb8faf0062bb1ba117e2bd1370b734b441`  
		Last Modified: Fri, 08 Mar 2019 03:38:54 GMT  
		Size: 2.1 MB (2098856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9fd30ab2c500707df1e839e3946b72d40cdd381b27dceb73ae608df6efbbff`  
		Last Modified: Mon, 10 Jun 2019 23:57:00 GMT  
		Size: 303.8 KB (303833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2d39e0ceb0e8a065a2e62aaa16a3b0d2dab84b8aa9b8d1ab82e7ffbc8ac9c0`  
		Last Modified: Mon, 10 Jun 2019 23:56:59 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4177f5c3418b0b50e98e93b8a338f9e2a46cde3befa8e556055c62190dd59c31`  
		Last Modified: Mon, 10 Jun 2019 23:57:06 GMT  
		Size: 16.5 MB (16465382 bytes)  
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
$ docker pull irssi@sha256:556dce4752d827c1d7c8299df13ce30d24c3db797aac8bfb8deb68bbb91b82f1
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
$ docker pull irssi@sha256:7b24df83ce17b8a2bf3ea46650a1dd9bab6c12ec995ffa67bb4f9787ffa92ee0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18869366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26b6e8699c9982703820b51e99afaff292b47152a27b2079719b95cd6e071dea`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:51 GMT
ADD file:55fbeb767cf2b9344907a5252cccd1e7fb7b146277b267422b6117406300bfbf in / 
# Fri, 08 Mar 2019 03:37:54 GMT
CMD ["/bin/sh"]
# Mon, 10 Jun 2019 23:54:50 GMT
RUN apk --no-cache add 	ca-certificates
# Mon, 10 Jun 2019 23:54:52 GMT
ENV HOME=/home/user
# Mon, 10 Jun 2019 23:54:57 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 10 Jun 2019 23:54:59 GMT
ENV LANG=C.UTF-8
# Mon, 10 Jun 2019 23:55:02 GMT
ENV IRSSI_VERSION=1.2.0
# Mon, 10 Jun 2019 23:56:02 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Mon, 10 Jun 2019 23:56:08 GMT
WORKDIR /home/user
# Mon, 10 Jun 2019 23:56:12 GMT
USER user
# Mon, 10 Jun 2019 23:56:15 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f4c3542ff81d415a34c73cfb323605bb8faf0062bb1ba117e2bd1370b734b441`  
		Last Modified: Fri, 08 Mar 2019 03:38:54 GMT  
		Size: 2.1 MB (2098856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9fd30ab2c500707df1e839e3946b72d40cdd381b27dceb73ae608df6efbbff`  
		Last Modified: Mon, 10 Jun 2019 23:57:00 GMT  
		Size: 303.8 KB (303833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2d39e0ceb0e8a065a2e62aaa16a3b0d2dab84b8aa9b8d1ab82e7ffbc8ac9c0`  
		Last Modified: Mon, 10 Jun 2019 23:56:59 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4177f5c3418b0b50e98e93b8a338f9e2a46cde3befa8e556055c62190dd59c31`  
		Last Modified: Mon, 10 Jun 2019 23:57:06 GMT  
		Size: 16.5 MB (16465382 bytes)  
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
$ docker pull irssi@sha256:7747aeae71109454d5f497b96d13867ac55522cd17cd403c941ad29a2e847af2
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
$ docker pull irssi@sha256:a9e17e6a0d375ac0bc27fbb6f5b81830b4d068ee7d1da14d2e082b090eaf7c0b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51514611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64143ebab46fdccc9d7ae054e2f6932699a28dade8ee46cd3278f8dbbd63b0dd`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:58:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:58:32 GMT
ENV HOME=/home/user
# Wed, 08 May 2019 02:58:33 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 08 May 2019 02:58:33 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 02:58:34 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 08 May 2019 03:00:17 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 03:00:18 GMT
WORKDIR /home/user
# Wed, 08 May 2019 03:00:18 GMT
USER user
# Wed, 08 May 2019 03:00:18 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006c3b0e6bc4ecca47b36b42a7181e306a25ae7d99f3b3ed93396af7a329b32a`  
		Last Modified: Wed, 08 May 2019 03:00:48 GMT  
		Size: 18.7 MB (18740558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a9ba7b487e8c1e3bed24db7eaed88fb9857b0733c6cbf91d129d5984701244`  
		Last Modified: Wed, 08 May 2019 03:00:41 GMT  
		Size: 4.2 KB (4171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2765576597c8285e7077856a6df83dea1d4c2237101cbf7760f4cbef33f5a108`  
		Last Modified: Wed, 08 May 2019 03:00:44 GMT  
		Size: 10.3 MB (10280532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; arm variant v5

```console
$ docker pull irssi@sha256:fb7ad8d9ec469e66165e9567eee3ed2f873a5ef47827065be337209119e6032f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47809229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:044ff074a0f18011ca20cb19c24459f3da0a39d3ef7f92f170811b4704ccd695`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 10 Jun 2019 23:53:36 GMT
ADD file:b563bf03e125515b4f74af859aa40e35d24c633add8a20f007b0da89ef4692d9 in / 
# Mon, 10 Jun 2019 23:53:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:17:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:17:29 GMT
ENV HOME=/home/user
# Tue, 11 Jun 2019 00:17:31 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 11 Jun 2019 00:17:32 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 00:17:32 GMT
ENV IRSSI_VERSION=1.2.0
# Tue, 11 Jun 2019 00:19:08 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 11 Jun 2019 00:19:09 GMT
WORKDIR /home/user
# Tue, 11 Jun 2019 00:19:10 GMT
USER user
# Tue, 11 Jun 2019 00:19:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:081b7d581c1dae49d30a4b9d0fead63d3653fe9ed91f43a20287f8ddbad3797b`  
		Last Modified: Mon, 10 Jun 2019 23:59:41 GMT  
		Size: 21.2 MB (21155842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343423ea7ba6256964021816c069b9d2e16dccabff3e3bb02140ca4baec2afbd`  
		Last Modified: Tue, 11 Jun 2019 00:19:45 GMT  
		Size: 17.5 MB (17508383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9224c762160d75a1a793d58c5e1c6dd2b4845c39df3ab1444c380d129824806`  
		Last Modified: Tue, 11 Jun 2019 00:19:35 GMT  
		Size: 4.2 KB (4184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9325ed52f043734ff679f35e6650e668bf458d792332283234310fe2d0da7d`  
		Last Modified: Tue, 11 Jun 2019 00:19:40 GMT  
		Size: 9.1 MB (9140820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; arm variant v7

```console
$ docker pull irssi@sha256:bffa5ee2c6be369bba71245d3427bb26a5efd5b6b941941db5f4635c8d425c7b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45066086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50c8b9cf910b0186c0eb6b6b749584ead3ae8af8bcabc9b536964132987e3c29`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 11 Jun 2019 00:03:03 GMT
ADD file:4102df5a1a0de014e0753e42aec7c4f521a1adb132934625dc3a60945e20b048 in / 
# Tue, 11 Jun 2019 00:03:04 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:30:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:08 GMT
ENV HOME=/home/user
# Tue, 11 Jun 2019 00:30:11 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 11 Jun 2019 00:30:11 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 00:30:12 GMT
ENV IRSSI_VERSION=1.2.0
# Tue, 11 Jun 2019 00:31:33 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 11 Jun 2019 00:31:34 GMT
WORKDIR /home/user
# Tue, 11 Jun 2019 00:31:34 GMT
USER user
# Tue, 11 Jun 2019 00:31:34 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5155b41fe73a7b2fc8284ed1160e8ad046f2bfd1606e73e4bbe3f54b05890fc9`  
		Last Modified: Tue, 11 Jun 2019 00:09:27 GMT  
		Size: 19.3 MB (19276185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67102a87a1ca7327f1ac1d87489189a8ea0270e10d16cad928a2ccee2f141da`  
		Last Modified: Tue, 11 Jun 2019 00:32:00 GMT  
		Size: 17.0 MB (17000389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbce0e253628ba07fd22009d6958914a362a700f019b6cb5550c4ebaa077b6c2`  
		Last Modified: Tue, 11 Jun 2019 00:31:52 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:949286e8d0ce011c0d1f5c55a0969c8d90317a9f6115a85c6c5c965fc2b64096`  
		Last Modified: Tue, 11 Jun 2019 00:31:56 GMT  
		Size: 8.8 MB (8785332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:667c752799584938cec9e1fb4406387f09a22f48195d555ea56cf1989a7cc8d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47761945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:337978b15f7333a26f08a4ce6b73aac179f081d6d6fb72af74020108b6d471cf`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:21:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:21:39 GMT
ENV HOME=/home/user
# Wed, 08 May 2019 12:21:46 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 08 May 2019 12:21:51 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 12:21:53 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 08 May 2019 12:26:57 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 12:26:57 GMT
WORKDIR /home/user
# Wed, 08 May 2019 12:26:58 GMT
USER user
# Wed, 08 May 2019 12:27:00 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ae2ddbd3f7d686ac397e1dce3c7e812f4fc6c9d89d6322511c67e830d7ae49`  
		Last Modified: Wed, 08 May 2019 12:27:36 GMT  
		Size: 17.8 MB (17846837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234e6d6b02f3f03b6d68fb2dd3f581f32b18c867278f47dc2ced181d49f0d3b3`  
		Last Modified: Wed, 08 May 2019 12:27:27 GMT  
		Size: 4.2 KB (4186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:460daf12f06253ffa751a4e1befc1b180cfabd5a8ae927d57b04ddfec1ce82eb`  
		Last Modified: Wed, 08 May 2019 12:27:32 GMT  
		Size: 9.6 MB (9577107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; 386

```console
$ docker pull irssi@sha256:3e681bcc8272ee5221ee0cffc3c997ce2e3110e603c2cc6ec325445e58d4663c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54863090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:624fcf6e9b7c0c7e5bb36875bdd80f35de3065ddba49d2502386f4b23c61dd25`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 18:50:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:50:35 GMT
ENV HOME=/home/user
# Wed, 08 May 2019 18:50:36 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 08 May 2019 18:50:36 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 18:50:37 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 08 May 2019 18:51:45 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 18:51:45 GMT
WORKDIR /home/user
# Wed, 08 May 2019 18:51:46 GMT
USER user
# Wed, 08 May 2019 18:51:46 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f839808582f01d9636dbe7cbf209c00c77f197d373e79d0a72b87bdec3220898`  
		Last Modified: Wed, 08 May 2019 18:52:09 GMT  
		Size: 18.4 MB (18425275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb5e70ab3bb3d37cdd654d150be4f0952784a1b54f4b6fe4e586d1d919c166e`  
		Last Modified: Wed, 08 May 2019 18:52:03 GMT  
		Size: 4.2 KB (4158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4281daf65ebaec7dbd506bb844f070f72096c9788ad7f201fe0e3675b54ed0e4`  
		Last Modified: Wed, 08 May 2019 18:52:07 GMT  
		Size: 13.3 MB (13312814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; ppc64le

```console
$ docker pull irssi@sha256:149e7e51987a9f9302f7c3889a51f10fb0049eae61ed361ddb68992fa35922bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.2 MB (51219284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:407ee9646b447f043ffa84ca7314e6f3c701c4a903fefd9073577e22d5d2984e`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:56 GMT
ADD file:cbe9750f9a223a6cdc02ae93dd729d2261ce439e1c7be255cd3a688eebfe62ba in / 
# Mon, 10 Jun 2019 23:18:59 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:45:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 10 Jun 2019 23:45:50 GMT
ENV HOME=/home/user
# Mon, 10 Jun 2019 23:46:04 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 10 Jun 2019 23:46:06 GMT
ENV LANG=C.UTF-8
# Mon, 10 Jun 2019 23:46:10 GMT
ENV IRSSI_VERSION=1.2.0
# Mon, 10 Jun 2019 23:54:15 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 10 Jun 2019 23:54:18 GMT
WORKDIR /home/user
# Mon, 10 Jun 2019 23:54:27 GMT
USER user
# Mon, 10 Jun 2019 23:54:30 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d41f2b4ffc1e666af1af85c808fc5e2c1f81602da89d9e81911a402a3e1e69b5`  
		Last Modified: Mon, 10 Jun 2019 23:24:17 GMT  
		Size: 22.7 MB (22744910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f44c5d66de0507ab8b24f0652d337e40d904d91a02d8839fbaa9dbf67d2bd0e`  
		Last Modified: Mon, 10 Jun 2019 23:56:44 GMT  
		Size: 18.2 MB (18173859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffe1f7d810fdc2f1e0ee3aa51d305d707382b4be64b78cbfbc72e8ed6e22e2d`  
		Last Modified: Mon, 10 Jun 2019 23:56:37 GMT  
		Size: 4.2 KB (4198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb758fe3168087fc36a18f0b88c33a5dfb92f3bb556eccc25b5a7bab31e36e5`  
		Last Modified: Mon, 10 Jun 2019 23:56:41 GMT  
		Size: 10.3 MB (10296317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; s390x

```console
$ docker pull irssi@sha256:e724169756996c765bdfc53b9c0a5ad3a636742b4e7d3558fb3783d26c759df9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52453792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f41ea5e403a11cac6c67c5aa47e6afd5e9cc1ba2d07880ca08200acd2670066`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 18:02:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:02:11 GMT
ENV HOME=/home/user
# Wed, 08 May 2019 18:02:21 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 08 May 2019 18:02:22 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 18:02:23 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 08 May 2019 18:07:47 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 18:07:49 GMT
WORKDIR /home/user
# Wed, 08 May 2019 18:07:50 GMT
USER user
# Wed, 08 May 2019 18:07:51 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d24e6ac43116c80ccb00709d81449343df2907239ce6544d0b39d33d8ffe6b1`  
		Last Modified: Wed, 08 May 2019 18:08:55 GMT  
		Size: 18.8 MB (18821730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a407edac554e05f159fa55ec5b83319018193243a8097a6d11be0b97660950f3`  
		Last Modified: Wed, 08 May 2019 18:08:33 GMT  
		Size: 4.2 KB (4174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a381a279b60524eaed4a444eba46e88b045c1533eb61badf2defc67d9ab175d6`  
		Last Modified: Wed, 08 May 2019 18:08:45 GMT  
		Size: 11.3 MB (11289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

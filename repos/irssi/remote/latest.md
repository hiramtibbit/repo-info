## `irssi:latest`

```console
$ docker pull irssi@sha256:62b3a939c07535ae77cc461e1055177220e17f9d5b48cc0fa3622acd54b93456
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
$ docker pull irssi@sha256:34170dd16124153d6be202b246aeba676de1b1a2ff7aa73dae946c330a3d250e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47808860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01c9eb4d3e34842d865884ec85c08757ab16ffc291790fe96411c3d0eee50143`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 10:12:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:12:10 GMT
ENV HOME=/home/user
# Wed, 08 May 2019 10:12:12 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 08 May 2019 10:12:12 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 10:12:12 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 08 May 2019 10:13:31 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 10:13:31 GMT
WORKDIR /home/user
# Wed, 08 May 2019 10:13:32 GMT
USER user
# Wed, 08 May 2019 10:13:32 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77dde03268e511c3d3f1a481ae055b00b89247005fd79ec08e9fff5f437bbfd5`  
		Last Modified: Wed, 08 May 2019 10:14:02 GMT  
		Size: 17.5 MB (17508067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eebceb750ea9f3189278d2b4c01d4c0092def49b76f7d2d83fcc4e4db1c8a5d6`  
		Last Modified: Wed, 08 May 2019 10:13:53 GMT  
		Size: 4.2 KB (4185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a7c04b26bbf4b40ffd5aa55398b4221d861db1c37ddbcf85e5b430441118da`  
		Last Modified: Wed, 08 May 2019 10:13:57 GMT  
		Size: 9.1 MB (9140745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; arm variant v7

```console
$ docker pull irssi@sha256:de59ad57d1ca605587120f1591bef338f960b8bdf0abc2d2431ea39e4bb27d11
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45065869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a3dc42932802534001164f9a831b15e6d5b3a40382c940b08ba5ffd95eebab8`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:13:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:13:39 GMT
ENV HOME=/home/user
# Wed, 08 May 2019 13:13:42 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 08 May 2019 13:13:42 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 13:13:43 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 08 May 2019 13:15:11 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 13:15:12 GMT
WORKDIR /home/user
# Wed, 08 May 2019 13:15:12 GMT
USER user
# Wed, 08 May 2019 13:15:13 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9fa6340ee32829d7780dd41431cdce9d9106ba9ee3ac3bfe26771d2e3056dce`  
		Last Modified: Wed, 08 May 2019 13:15:41 GMT  
		Size: 17.0 MB (17000237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23eac5471d2f106b8288c67d2a33d8243887070d1f5141197b8f338b2113be43`  
		Last Modified: Wed, 08 May 2019 13:15:34 GMT  
		Size: 4.2 KB (4189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc0d7df316f421a4aa71c7e20d21253ee059fdcedc30488542a4b01628bfb91`  
		Last Modified: Wed, 08 May 2019 13:15:37 GMT  
		Size: 8.8 MB (8785227 bytes)  
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
$ docker pull irssi@sha256:182b6e9ef12109d1a3d11204594d86572cc85cb659809bbf517113cf1a71c145
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.2 MB (51219318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bb5c39267ae1c580e3d2edf7b676b23e3743aebbfc5236c39fad348d6d8729c`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:40:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:40:36 GMT
ENV HOME=/home/user
# Wed, 08 May 2019 13:40:52 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 08 May 2019 13:40:57 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 13:41:03 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 08 May 2019 13:51:42 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 13:51:46 GMT
WORKDIR /home/user
# Wed, 08 May 2019 13:51:52 GMT
USER user
# Wed, 08 May 2019 13:51:56 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b796247353e15b739b779314d16b8427114ac1d6f3a2bc115df6ddde369db66b`  
		Last Modified: Wed, 08 May 2019 13:52:45 GMT  
		Size: 18.2 MB (18173575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300270f5af99a2ee23a6cd39fffe39f0eb0a1222b369396a9bf01c822393e2b6`  
		Last Modified: Wed, 08 May 2019 13:52:36 GMT  
		Size: 4.2 KB (4213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0821fde1cd4c97d996c50acb307c8002031c0a95000c62cbdff5acf9cc134a`  
		Last Modified: Wed, 08 May 2019 13:52:41 GMT  
		Size: 10.3 MB (10296616 bytes)  
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

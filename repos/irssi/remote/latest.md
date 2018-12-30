## `irssi:latest`

```console
$ docker pull irssi@sha256:9fcc37278bd2ca8ea3530a4d0eda9f393d51fd3b96e33ce65b128aa4b886d57e
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
$ docker pull irssi@sha256:948a29bbe114b1666f21f2ce2a64a8a80d4eea7514e3345b030ba7e8e453a813
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51394286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa3eb1fea05e39cefd75f3b4a552bb8911a2821d6b5d91411405ba586f8c66bc`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:55:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 03:55:16 GMT
ENV HOME=/home/user
# Sat, 29 Dec 2018 03:55:17 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Sat, 29 Dec 2018 03:55:17 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 03:55:17 GMT
ENV IRSSI_VERSION=1.1.1
# Sat, 29 Dec 2018 03:56:36 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 29 Dec 2018 03:56:36 GMT
WORKDIR /home/user
# Sat, 29 Dec 2018 03:56:36 GMT
USER user
# Sat, 29 Dec 2018 03:56:36 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a73a20f6ee67b1e692a076e7ced06ae2deff4eb7d81e0462212e6bb7b45c682`  
		Last Modified: Sat, 29 Dec 2018 03:57:04 GMT  
		Size: 18.7 MB (18716438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4788cee4ca298393dba25b0387e5fce984391a907394c57bd76aad13ba082e`  
		Last Modified: Sat, 29 Dec 2018 03:56:58 GMT  
		Size: 4.2 KB (4172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1567adf160edf7e35cd5984dded5c6cdf5155a5884740849d6b5796345159090`  
		Last Modified: Sat, 29 Dec 2018 03:57:01 GMT  
		Size: 10.2 MB (10180760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; arm variant v5

```console
$ docker pull irssi@sha256:3477b9a9caa703e5fd87c3c434db20fa9273892857b7417cc2529efaf176b8c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47692856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaaab8b2fbac1b6fc16bf802d2d00e19e75f426959e77082a12ac74bfab87d8a`
-	Default Command: `["irssi"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:47:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:47:28 GMT
ENV HOME=/home/user
# Sat, 29 Dec 2018 10:47:30 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Sat, 29 Dec 2018 10:47:30 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 10:47:30 GMT
ENV IRSSI_VERSION=1.1.1
# Sat, 29 Dec 2018 10:48:44 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 29 Dec 2018 10:48:45 GMT
WORKDIR /home/user
# Sat, 29 Dec 2018 10:48:45 GMT
USER user
# Sat, 29 Dec 2018 10:48:45 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b941cc91e7c6304e5b6edb83b213d91b160dba9d303564dd6f200e2b6b1fd2a4`  
		Last Modified: Sat, 29 Dec 2018 10:49:04 GMT  
		Size: 17.5 MB (17487457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81acdde70e8365ea82efadfbb263284de30b347a6eb201f5c5df718e0b74486d`  
		Last Modified: Sat, 29 Dec 2018 10:48:56 GMT  
		Size: 4.2 KB (4185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30914ce278cb12b5760b9e68fabef496d2aa44cfcaa5234f93c22605685c3b6c`  
		Last Modified: Sat, 29 Dec 2018 10:48:59 GMT  
		Size: 9.0 MB (9033438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; arm variant v7

```console
$ docker pull irssi@sha256:c5d69823574efe23821492238a04b55e2a1fe08a67e37f32204c1c706639fbac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (44954533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d15c9d56130669facd2fad49f091b751b75ec87fb2a1f92f63067d7e16ebc75`
-	Default Command: `["irssi"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:17:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:17:04 GMT
ENV HOME=/home/user
# Sat, 29 Dec 2018 15:17:06 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Sat, 29 Dec 2018 15:17:06 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 15:17:07 GMT
ENV IRSSI_VERSION=1.1.1
# Sat, 29 Dec 2018 15:18:14 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 29 Dec 2018 15:18:15 GMT
WORKDIR /home/user
# Sat, 29 Dec 2018 15:18:15 GMT
USER user
# Sat, 29 Dec 2018 15:18:16 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b561cfde25bb1c0efef149e395f18312c2cb07a71c5a4091eb5a42b6bc1cd0ad`  
		Last Modified: Sat, 29 Dec 2018 15:18:44 GMT  
		Size: 17.0 MB (16979959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8b94d96077c2e851867cf336af8e0062b8cdea091843e16bb98c0f299fb802`  
		Last Modified: Sat, 29 Dec 2018 15:18:37 GMT  
		Size: 4.2 KB (4184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35833ae3c05e7d6b5ec50b5cb821473bce1e18694c872e0751e88514b375e884`  
		Last Modified: Sat, 29 Dec 2018 15:18:40 GMT  
		Size: 8.7 MB (8692635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:412b10bcb32e10fb6f74049cb6b945b26682579f394ce72ae04db5624cb8e792
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47644403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bdcdff61598cad0300240795a46a3a8519aef9622a2d09c07ee8bff428485e1`
-	Default Command: `["irssi"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 23:21:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 23:21:17 GMT
ENV HOME=/home/user
# Sat, 29 Dec 2018 23:21:22 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Sat, 29 Dec 2018 23:21:23 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 23:21:24 GMT
ENV IRSSI_VERSION=1.1.1
# Sat, 29 Dec 2018 23:28:02 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 29 Dec 2018 23:28:04 GMT
WORKDIR /home/user
# Sat, 29 Dec 2018 23:28:05 GMT
USER user
# Sat, 29 Dec 2018 23:28:06 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b468c25a6f6fa6b641bc84db9e9ead9ca34f26435b4a62dac4c435ff921da110`  
		Last Modified: Sat, 29 Dec 2018 23:28:44 GMT  
		Size: 17.8 MB (17824125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ccf46776354f7cc592032e5b74165ce23b13f88bec021e158a6d5c9e785ae87`  
		Last Modified: Sat, 29 Dec 2018 23:28:33 GMT  
		Size: 4.2 KB (4184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4677083b8b31f7959f28a078c7761f4f3e6bd5678df4f381d06509af6304f15`  
		Last Modified: Sat, 29 Dec 2018 23:28:38 GMT  
		Size: 9.5 MB (9478583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; 386

```console
$ docker pull irssi@sha256:b72d6015537ce62208a7defdcf3f88fa195ac2da79924ff1c5ebb13c25895292
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.8 MB (54756618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3014192b2712cb4e8e022c533cf7fd07f481147f608c5fe75381b2f2f0d96b0d`
-	Default Command: `["irssi"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:36:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:36:14 GMT
ENV HOME=/home/user
# Sat, 29 Dec 2018 13:36:15 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Sat, 29 Dec 2018 13:36:16 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:36:16 GMT
ENV IRSSI_VERSION=1.1.1
# Sat, 29 Dec 2018 13:38:13 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 29 Dec 2018 13:38:14 GMT
WORKDIR /home/user
# Sat, 29 Dec 2018 13:38:14 GMT
USER user
# Sat, 29 Dec 2018 13:38:14 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9789d514d72d5d1d5a0c0607399d514e0cd78c74e0300ca6ff4da444916a0a`  
		Last Modified: Sat, 29 Dec 2018 13:38:56 GMT  
		Size: 18.4 MB (18405147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8091dbdb6b8cabc0a17b287c40d1510c94aefec7a5d0b383b6097cb32ee7b3`  
		Last Modified: Sat, 29 Dec 2018 13:38:40 GMT  
		Size: 4.2 KB (4162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6aa6e16ad54d995346e90258fd4aa1cafae918773b07e14a575ba6b8483857`  
		Last Modified: Sat, 29 Dec 2018 13:38:52 GMT  
		Size: 13.2 MB (13214154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; ppc64le

```console
$ docker pull irssi@sha256:81bf623a187d8ed616d0ae357442755ab2ca7067ab6e077d4a6812a7dcae52ea
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.1 MB (51098523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8693d254d137bcfe13ee782d701e3092bf4fdcf0c1e9c65e0ebd7ab49893fb5e`
-	Default Command: `["irssi"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:54:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:54:12 GMT
ENV HOME=/home/user
# Sat, 29 Dec 2018 11:54:17 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Sat, 29 Dec 2018 11:54:18 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 11:54:19 GMT
ENV IRSSI_VERSION=1.1.1
# Sat, 29 Dec 2018 11:57:15 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 29 Dec 2018 11:57:19 GMT
WORKDIR /home/user
# Sat, 29 Dec 2018 11:57:22 GMT
USER user
# Sat, 29 Dec 2018 11:57:24 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81227335e398bef13dce8d0661d178d93392503c0a52f4be8ba4982ad72debb`  
		Last Modified: Sat, 29 Dec 2018 11:57:49 GMT  
		Size: 18.2 MB (18152624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:184981e70c17dd28fb1c88ab9460e546576a60c742a8ae865dc50441a2bc340c`  
		Last Modified: Sat, 29 Dec 2018 11:57:43 GMT  
		Size: 4.2 KB (4210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956bb6f944c30bba7cb6dc89a3fb34140ba9dd83f8b97070d7d042cda027b098`  
		Last Modified: Sat, 29 Dec 2018 11:57:47 GMT  
		Size: 10.2 MB (10194863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; s390x

```console
$ docker pull irssi@sha256:7f46bcf45d38dc899de3592793dcf0171e0dcd8310b7b058e1089a13007904e0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52337335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:444cf22a7a8301497e888f17e183b7a069ee362c4c0c67ed6daf1cbc72ba1184`
-	Default Command: `["irssi"]`

```dockerfile
# Sat, 29 Dec 2018 12:43:52 GMT
ADD file:35c030887198a067338539b6bd96e04ff649537c38542febcb7e0ccd2a3d90c8 in / 
# Sat, 29 Dec 2018 12:43:52 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:21:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:21:41 GMT
ENV HOME=/home/user
# Sat, 29 Dec 2018 14:21:42 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Sat, 29 Dec 2018 14:21:42 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 14:21:42 GMT
ENV IRSSI_VERSION=1.1.1
# Sat, 29 Dec 2018 14:22:42 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 29 Dec 2018 14:22:43 GMT
WORKDIR /home/user
# Sat, 29 Dec 2018 14:22:43 GMT
USER user
# Sat, 29 Dec 2018 14:22:43 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:0e647eff4fda368965291c62c8bc90ae9cbcc84a50a5caed821af7f05ec653d4`  
		Last Modified: Sat, 29 Dec 2018 12:46:52 GMT  
		Size: 22.3 MB (22341416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:394810703bb9b6786d8572a1cfb49006ddc51f9a49ac79672e5490a4b2e44bcb`  
		Last Modified: Sat, 29 Dec 2018 14:23:05 GMT  
		Size: 18.8 MB (18800803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751360942f8940fab1f1026b75c865e1a181b9bb20e7d9fd6864510c329e2236`  
		Last Modified: Sat, 29 Dec 2018 14:22:59 GMT  
		Size: 4.2 KB (4177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7111f03cf6bd621bce862eb5652d65203e51525c2d9125d02cddb66775bd2b8b`  
		Last Modified: Sat, 29 Dec 2018 14:23:02 GMT  
		Size: 11.2 MB (11190939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

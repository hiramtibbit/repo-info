## `irssi:latest`

```console
$ docker pull irssi@sha256:0842d79e2871351b58fa344d5da33eb1768c46962e7a99490f0497edbeccf5fb
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
$ docker pull irssi@sha256:b948612dc43d824ce02b674a317ede168ed16ab67a1e964198060ee38a61cf6e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51368128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19613e2ba51c64ae925457dc64090d2fefe5e3919d1d4459f5dcf19a47b66070`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:05:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 12:05:39 GMT
ENV HOME=/home/user
# Fri, 16 Nov 2018 12:05:40 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 16 Nov 2018 12:05:41 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 12:05:41 GMT
ENV IRSSI_VERSION=1.1.1
# Wed, 21 Nov 2018 00:23:33 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 21 Nov 2018 00:23:33 GMT
WORKDIR /home/user
# Wed, 21 Nov 2018 00:23:34 GMT
USER [user]
# Wed, 21 Nov 2018 00:23:34 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f071dbdbfec1502f58bebc4da30391d7d4fc2fd195c41fd34cf50304e6e8ed`  
		Last Modified: Wed, 21 Nov 2018 00:25:34 GMT  
		Size: 18.7 MB (18696863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e29a708b59b610e5909c260b4e8f72847d08116dc375012029fb302ad56d04d`  
		Last Modified: Wed, 21 Nov 2018 00:25:27 GMT  
		Size: 4.2 KB (4170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5640f825873a17d233bb185429111be0b6a3f796e36309fd5efd90d70fecfd`  
		Last Modified: Wed, 21 Nov 2018 00:25:30 GMT  
		Size: 10.2 MB (10180818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; arm variant v5

```console
$ docker pull irssi@sha256:097e96800fcbfa234be6e66097a825813e603cce5159dc1d24ed8eaba97fac99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47669547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee88574a616eca3c5851b2ef9539f8a87762f88d6816f3ae89a8a8c1a9771999`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 16 Oct 2018 08:55:22 GMT
ADD file:8f2148adabc29587e17b50138f305f39e94e0e2bd9211a9f913fef56013ac35a in / 
# Tue, 16 Oct 2018 08:55:23 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:50:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:50:07 GMT
ENV HOME=/home/user
# Tue, 16 Oct 2018 09:50:08 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 16 Oct 2018 09:50:08 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 09:50:09 GMT
ENV IRSSI_VERSION=1.1.1
# Tue, 16 Oct 2018 09:51:27 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 09:51:27 GMT
WORKDIR /home/user
# Tue, 16 Oct 2018 09:51:28 GMT
USER [user]
# Tue, 16 Oct 2018 09:51:28 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:4b7ffdf9817f718c84be550e8edf757070396d69165fa729c6ddd4e775428eb2`  
		Last Modified: Tue, 16 Oct 2018 09:04:44 GMT  
		Size: 21.2 MB (21162965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4cb279d84c9006a796170fba4a5bdd1162f30ca1c712efdb2f318c253c2b2b`  
		Last Modified: Tue, 16 Oct 2018 09:51:47 GMT  
		Size: 17.5 MB (17469003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60863215dea7c14296975a12da16f9ebb3d2d33066fe5228743813066e14342f`  
		Last Modified: Tue, 16 Oct 2018 09:51:39 GMT  
		Size: 4.2 KB (4186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56ca0a6eeadbd7d8436338fb9a816484f60524622238c4df0dd3ca54763bb9e7`  
		Last Modified: Tue, 16 Oct 2018 09:51:43 GMT  
		Size: 9.0 MB (9033393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; arm variant v7

```console
$ docker pull irssi@sha256:f665db4eae01f1136ad038f857e951f19160dc22226399271a5cb1ba736a9259
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.9 MB (44936030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a1ea5d99484ff4f5c4b90545720e8561c821796fcec9ece5be25e46f08fe337`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:01:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:01:22 GMT
ENV HOME=/home/user
# Wed, 05 Sep 2018 13:01:23 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 05 Sep 2018 13:01:28 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:01:28 GMT
ENV IRSSI_VERSION=1.1.1
# Wed, 05 Sep 2018 13:02:28 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 13:02:28 GMT
WORKDIR /home/user
# Wed, 05 Sep 2018 13:02:29 GMT
USER [user]
# Wed, 05 Sep 2018 13:02:29 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e800d37146dcb442ed0cf8c05a4c9b779fe149edf3181117164705f2a6dc235`  
		Last Modified: Wed, 05 Sep 2018 13:03:02 GMT  
		Size: 17.0 MB (16969346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93d92806dc22f8feeef6429cc144edf075aa2601c5864e3317eb2b4347b8610`  
		Last Modified: Wed, 05 Sep 2018 13:02:57 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2414f8dab42675fe225a496f9666b5371ffdb68bc49b5ca4037850186a00f47b`  
		Last Modified: Wed, 05 Sep 2018 13:02:58 GMT  
		Size: 8.7 MB (8692336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:d4a1231f31c2e6f75c54a317adeb5ffbe3a56759364ad96ce6c4eab25b6464d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47626071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41df7fe2fa0899dc86079da744169d80df87a441b0324f42702475565522fbbf`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:05:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:05:14 GMT
ENV HOME=/home/user
# Tue, 16 Oct 2018 13:05:18 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 16 Oct 2018 13:05:19 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 13:05:20 GMT
ENV IRSSI_VERSION=1.1.1
# Tue, 16 Oct 2018 13:09:45 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 13:09:46 GMT
WORKDIR /home/user
# Tue, 16 Oct 2018 13:09:47 GMT
USER [user]
# Tue, 16 Oct 2018 13:09:48 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8409a30f4dc3884fa73543b8b5983bffaff57a5a4a48e0f222f2060294abefb6`  
		Last Modified: Tue, 16 Oct 2018 13:11:44 GMT  
		Size: 17.8 MB (17812357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:881a426f1683fdfb488fca49ede04b353b7ff0e4487905c1b923b78c7226d62d`  
		Last Modified: Tue, 16 Oct 2018 13:11:34 GMT  
		Size: 4.2 KB (4186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581a4d634a50d8c8d16816324462d13779408c8acf8cd983c09092cb6b0c52c2`  
		Last Modified: Tue, 16 Oct 2018 13:11:39 GMT  
		Size: 9.5 MB (9477943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; 386

```console
$ docker pull irssi@sha256:fd4ca813ef79d3357cbaf910f2f0f108a6bf050fa72f33133f1b4f1aa7b448dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54731203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eda479f8a99cc50c1c26c8d4b46f63c5342d5c991cff91c67bfd91a653a1fca0`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:16:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:16:08 GMT
ENV HOME=/home/user
# Tue, 16 Oct 2018 22:16:09 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 16 Oct 2018 22:16:09 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 22:16:09 GMT
ENV IRSSI_VERSION=1.1.1
# Tue, 16 Oct 2018 22:17:08 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 22:17:08 GMT
WORKDIR /home/user
# Tue, 16 Oct 2018 22:17:08 GMT
USER [user]
# Tue, 16 Oct 2018 22:17:09 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6009849d19428a5342d89fd234d7061e2f99205a5b75dbb22cba7d26aeab9a7`  
		Last Modified: Tue, 16 Oct 2018 22:17:29 GMT  
		Size: 18.4 MB (18386439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed127dfeac75f4cb9e25a82fc75629cdad9146c0b48866d65de98871e4d4da8b`  
		Last Modified: Tue, 16 Oct 2018 22:17:22 GMT  
		Size: 4.2 KB (4163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6dad2e2aa8d528f02d870146b8bda14643299879a2904a6a6e87de73a0f8e0`  
		Last Modified: Tue, 16 Oct 2018 22:17:27 GMT  
		Size: 13.2 MB (13213996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; ppc64le

```console
$ docker pull irssi@sha256:9ce7ddd700e0b52d7363d7186ed30b9327264c83994f81b61ee3436144689ffb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.1 MB (51087138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83d90b5685f7d2e209819749a5ac5ac398b7f4b900d64b322f8f5dd39813e412`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 16 Oct 2018 08:22:25 GMT
ADD file:b1fa1d0ffa2b206311dfd95642d74c3312565a1ec2e6e3a2197bfd2a4b3de6c6 in / 
# Tue, 16 Oct 2018 08:22:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:24:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:24:05 GMT
ENV HOME=/home/user
# Tue, 16 Oct 2018 12:24:12 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 16 Oct 2018 12:24:18 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 12:24:19 GMT
ENV IRSSI_VERSION=1.1.1
# Tue, 16 Oct 2018 12:28:44 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 12:28:45 GMT
WORKDIR /home/user
# Tue, 16 Oct 2018 12:28:50 GMT
USER [user]
# Tue, 16 Oct 2018 12:28:51 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:202f659db3e53c01ac947538d8b37251e9fa16c4a6a699dc6c2a8910afcdfed4`  
		Last Modified: Tue, 16 Oct 2018 08:30:59 GMT  
		Size: 22.7 MB (22740583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47371ea3a7b954e9d8d5b4f3724bd3953fe91d58fda6a2216e283ae8db0e5769`  
		Last Modified: Tue, 16 Oct 2018 12:29:25 GMT  
		Size: 18.1 MB (18147342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76a8a96fa5648246da314ebbe8e3a4561e8883cb6f3fd59eb295c23310c1e05a`  
		Last Modified: Tue, 16 Oct 2018 12:29:18 GMT  
		Size: 4.2 KB (4206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616323bc4c75ef01c721d1774140f01a5b5810e60dd11f3afbbe2f96fb7426ec`  
		Last Modified: Tue, 16 Oct 2018 12:29:22 GMT  
		Size: 10.2 MB (10195007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; s390x

```console
$ docker pull irssi@sha256:fb2daefe30fa2aa7e8774571897c09d255dc926bf6422e92ea76cf0f5f9da062
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52308936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7705fb33b149fa60fc3e3d54d6df4a4b2bd209d3342b4d510c7ca9560a297197`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:52 GMT
ADD file:a7cc9e5280b465a6e72c8b1331e009ddd18bff12c000c9e49ababac631179edc in / 
# Tue, 16 Oct 2018 11:42:52 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:32:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:32:21 GMT
ENV HOME=/home/user
# Tue, 16 Oct 2018 12:32:21 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 16 Oct 2018 12:32:21 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 12:32:22 GMT
ENV IRSSI_VERSION=1.1.1
# Tue, 16 Oct 2018 12:33:19 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dirmngr 		dpkg-dev 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 12:33:20 GMT
WORKDIR /home/user
# Tue, 16 Oct 2018 12:33:20 GMT
USER [user]
# Tue, 16 Oct 2018 12:33:20 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b16a7816eac3ca0893b75f07b37e5e276ba331e1a35619343718d1c33f877877`  
		Last Modified: Tue, 16 Oct 2018 11:46:03 GMT  
		Size: 22.3 MB (22334662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aabf9bd8fcd9938320c72b81e6d60741d2bf58a9acba0a09016a3c96158ee7c`  
		Last Modified: Tue, 16 Oct 2018 12:33:36 GMT  
		Size: 18.8 MB (18779000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a9819f058ca550b57b73349b0671dd71eea750e30b93a3181cb516165ad75c`  
		Last Modified: Tue, 16 Oct 2018 12:33:31 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a527512ad6c4bac525f94abe94aa7c0a2080be38927c97b794995926d0de0fd`  
		Last Modified: Tue, 16 Oct 2018 12:33:36 GMT  
		Size: 11.2 MB (11191094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

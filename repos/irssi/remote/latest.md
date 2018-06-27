## `irssi:latest`

```console
$ docker pull irssi@sha256:8de759563b1da85c34f24008cede0be5c08e61099d9f32e0dd0b027d5931e531
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
$ docker pull irssi@sha256:6026610e19655c2b5af222ddebd005ed1258911842bd6e723401d53b7a43d80e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 MB (94458262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fafffd35006c53c85e6555f213fa0045a05b3adaca1c7fa45b3f2621153fc2b`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 27 Jun 2018 08:49:35 GMT
ADD file:ffdec8efe717fef7468633ecb4de75a3e3f775a293230d77477e11b8364c9042 in / 
# Wed, 27 Jun 2018 08:49:38 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:33:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:33:30 GMT
ENV HOME=/home/user
# Wed, 27 Jun 2018 09:33:31 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 27 Jun 2018 09:33:31 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 09:33:32 GMT
ENV IRSSI_VERSION=1.1.1
# Wed, 27 Jun 2018 09:34:53 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 09:34:54 GMT
WORKDIR /home/user
# Wed, 27 Jun 2018 09:34:54 GMT
USER [user]
# Wed, 27 Jun 2018 09:34:54 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2370554fdd8c2d014fa023ee30dcf0dc3febde1853ffc7cd9641ea8eb276d0bb`  
		Last Modified: Wed, 27 Jun 2018 08:58:15 GMT  
		Size: 52.4 MB (52448410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a078d9fe5c6858cae6cbb9cf8e7d1d2670d807d3412c3de91a3d3d687faf46bc`  
		Last Modified: Wed, 27 Jun 2018 09:35:29 GMT  
		Size: 30.2 MB (30150650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a30f88b1973e65698291756de90260f887ce462d73c50ea2d53e3a1b6baa68d`  
		Last Modified: Wed, 27 Jun 2018 09:35:18 GMT  
		Size: 4.4 KB (4436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eadb30c1fda170f932c6b4c05eb37ea19969e2d775f57c1fe9ddfabf269d6ca`  
		Last Modified: Wed, 27 Jun 2018 09:35:23 GMT  
		Size: 11.9 MB (11854766 bytes)  
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
$ docker pull irssi@sha256:684ae93f6d58eba8cdec97eeb913bf5766acdf88822ee2491fe67e720a57a729
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.9 MB (93928391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50f3d83983b9cb35edcb70a00b0e003ac54daacc1818e84da4eacb662bee3786`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Tue, 01 May 2018 06:41:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 06:41:16 GMT
ENV HOME=/home/user
# Tue, 01 May 2018 06:41:19 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 01 May 2018 06:41:20 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 06:41:20 GMT
ENV IRSSI_VERSION=1.1.1
# Tue, 01 May 2018 06:44:41 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 May 2018 06:44:42 GMT
WORKDIR /home/user
# Tue, 01 May 2018 06:44:43 GMT
USER [user]
# Tue, 01 May 2018 06:44:44 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24f45ebbc74884bce1e7ba0c4a45914b4d298d61ee716fa149b2cfe0a5930c5`  
		Last Modified: Tue, 01 May 2018 06:45:38 GMT  
		Size: 30.4 MB (30365754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28875468e6129ccb0ff4dc7eedf66e86d66893d428333d7ded5419fe65e8146`  
		Last Modified: Tue, 01 May 2018 06:45:19 GMT  
		Size: 4.4 KB (4440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f412465ac185b61141fa3e2b8fe481d92dab7b7009731ae7a47be0f287ff64f`  
		Last Modified: Tue, 01 May 2018 06:45:28 GMT  
		Size: 12.1 MB (12111343 bytes)  
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
$ docker pull irssi@sha256:5cc820b0d5c6580ba457163a669542f6f831d3abf9c6e531425c59607f482e31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.5 MB (97450411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaccbf36f6a90017cf31567c4f0f95a0cc299e72a8c9cd98c0c2b2c43caf011f`
-	Default Command: `["irssi"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:19:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:19:31 GMT
ENV HOME=/home/user
# Sat, 28 Apr 2018 09:19:36 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Sat, 28 Apr 2018 09:19:36 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 09:19:37 GMT
ENV IRSSI_VERSION=1.1.1
# Sat, 28 Apr 2018 09:22:34 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 09:22:35 GMT
WORKDIR /home/user
# Sat, 28 Apr 2018 09:22:36 GMT
USER [user]
# Sat, 28 Apr 2018 09:22:36 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf58a3af067ebf8a3be7c55c1d2cc95d4fdff2f93bc7fdbd8dd0ce34e537dee6`  
		Last Modified: Sat, 28 Apr 2018 09:23:02 GMT  
		Size: 31.3 MB (31258916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9956fc0cbac1ce698783e5c62141aa2ca349dbef75d40d1ecffe8f83bc99d53`  
		Last Modified: Sat, 28 Apr 2018 09:22:53 GMT  
		Size: 4.5 KB (4459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd844a70e4daf3288d4f2567d1f2ac9345165ac0da2661196977d6aa28d9649b`  
		Last Modified: Sat, 28 Apr 2018 09:22:57 GMT  
		Size: 12.8 MB (12794225 bytes)  
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

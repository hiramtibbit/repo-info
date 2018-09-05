<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rust`

-	[`rust:1`](#rust1)
-	[`rust:1.28`](#rust128)
-	[`rust:1.28.0`](#rust1280)
-	[`rust:1.28.0-jessie`](#rust1280-jessie)
-	[`rust:1.28.0-slim`](#rust1280-slim)
-	[`rust:1.28.0-slim-jessie`](#rust1280-slim-jessie)
-	[`rust:1.28.0-slim-stretch`](#rust1280-slim-stretch)
-	[`rust:1.28.0-stretch`](#rust1280-stretch)
-	[`rust:1.28-jessie`](#rust128-jessie)
-	[`rust:1.28-slim`](#rust128-slim)
-	[`rust:1.28-slim-jessie`](#rust128-slim-jessie)
-	[`rust:1.28-slim-stretch`](#rust128-slim-stretch)
-	[`rust:1.28-stretch`](#rust128-stretch)
-	[`rust:1-jessie`](#rust1-jessie)
-	[`rust:1-slim`](#rust1-slim)
-	[`rust:1-slim-jessie`](#rust1-slim-jessie)
-	[`rust:1-slim-stretch`](#rust1-slim-stretch)
-	[`rust:1-stretch`](#rust1-stretch)
-	[`rust:jessie`](#rustjessie)
-	[`rust:latest`](#rustlatest)
-	[`rust:slim`](#rustslim)
-	[`rust:slim-jessie`](#rustslim-jessie)
-	[`rust:slim-stretch`](#rustslim-stretch)
-	[`rust:stretch`](#ruststretch)

## `rust:1`

```console
$ docker pull rust@sha256:d0f857cb3634f27d829a54fb2dd038c7cfdb7a131e6448fab9251306d6470cb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1` - linux; amd64

```console
$ docker pull rust@sha256:3032c3f2fe741a5f4832d593a363790dfe14718c5caf0e77ff25b6f2b4edd5a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **537.5 MB (537515417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:156ba9bbcf99933b905887268cbe0cf72d0d70e19f5da300996b75b70b609749`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:34:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:36:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 08:14:19 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Wed, 05 Sep 2018 08:14:59 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ae6b477848b6e03aad8ec9c74f1fb80364e5c8b5fe9ca3ec793df84247f027`  
		Last Modified: Tue, 04 Sep 2018 22:53:04 GMT  
		Size: 50.1 MB (50065233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bdf9e584cc733044425cc166ce90743b25f7003cb06408b905030f76200b2a`  
		Last Modified: Tue, 04 Sep 2018 22:53:52 GMT  
		Size: 213.2 MB (213208939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5cea304355c8a1e7546a6036d1601ff1c8f115b4813b6301956198532eb00a`  
		Last Modified: Wed, 05 Sep 2018 08:19:00 GMT  
		Size: 213.9 MB (213854594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1` - linux; arm variant v7

```console
$ docker pull rust@sha256:4140e07370c12db4dc3a33e510b72bcbea22a18503ce3e368bd08181ff1431dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **448.0 MB (448035981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa450e6ec24242aad2bf4ca3c6769fb27e325614fb8c26a2da78bf4ea208ef70`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:05:25 GMT
ADD file:77cbe27c4436cc4c9d81bee6c5ae0fee0c6d1708813d34abd2af2d3ebd7d96a5 in / 
# Tue, 17 Jul 2018 12:05:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:46:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 13:47:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:49:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Aug 2018 12:13:15 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 12:13:57 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:a92bc499a4699bc1d9bd6631daec00b7b440346221ce91af635e3460f7d4d70b`  
		Last Modified: Tue, 17 Jul 2018 12:17:32 GMT  
		Size: 42.1 MB (42060835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56e34dc5db45e25c590c9a353c3562d66546b06312f418f9aae4661c28ee94f`  
		Last Modified: Tue, 17 Jul 2018 14:10:12 GMT  
		Size: 9.4 MB (9440199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948d2574fcb06c4081812a267179437a8d624eba8741a8fb5a6e3ef655c3dcff`  
		Last Modified: Tue, 17 Jul 2018 14:10:10 GMT  
		Size: 3.9 MB (3912954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ced04c5b3fc619ca9252df05a702d37000cbcc3fbac10e5e485428deba85ae`  
		Last Modified: Tue, 17 Jul 2018 14:10:55 GMT  
		Size: 46.4 MB (46380475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb38878a7d651556b67958bf17f303eaa9d80fd58ef30ddad40818a750db4c2`  
		Last Modified: Tue, 17 Jul 2018 14:12:09 GMT  
		Size: 194.0 MB (193983246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223e37f886ddf7381fe9967d5748b96ce4ae4d56ca9b234c0d35deb50a20ec46`  
		Last Modified: Fri, 03 Aug 2018 12:17:40 GMT  
		Size: 152.3 MB (152258272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:d10d4cdd69705e6fdb48a0f1f13b0eb1acc4302f3666249c955ec6e8b2b6ac54
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **456.2 MB (456157357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8f86f6e38942357171897bb82cc3fd4e403d4f912dda4c5743e049b4f03d0af`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:51:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:54:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:02:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Aug 2018 11:32:02 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:32:37 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf842c718cc953be45905967fc6a0114f55314ce412b80107e20d8b43fdcdb`  
		Last Modified: Tue, 17 Jul 2018 15:10:44 GMT  
		Size: 9.7 MB (9690273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317d79a9c0a5c766d03c1c253fa09f645ed7321dc3a80e0ae33599958677cd1d`  
		Last Modified: Tue, 17 Jul 2018 15:10:41 GMT  
		Size: 4.1 MB (4088491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a390be6b2f0349f7391582a305479410441bcb0329b8daa800d13f3921fd39b7`  
		Last Modified: Tue, 17 Jul 2018 15:11:46 GMT  
		Size: 48.0 MB (48003327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ed075d58fff4f9897e8a3191ca7e66c3f9ac907c59cc4ab05312f240370617`  
		Last Modified: Tue, 17 Jul 2018 15:13:30 GMT  
		Size: 200.6 MB (200617675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96237e52d6f5ddf065fe0997e5cc990bb4f2ecea1c69f077cbf205e2c3b252c8`  
		Last Modified: Fri, 03 Aug 2018 11:35:42 GMT  
		Size: 150.6 MB (150634023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1` - linux; 386

```console
$ docker pull rust@sha256:aede4e7fec486326ab53fc5e60e2ae4b28119b01e68502db25c74606af42d2d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **547.9 MB (547873597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8f093e73a204173acf71a72704bb4e15baf6b4e8d08e6ffc7d3afb59e90bf38`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:34:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:34:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:35:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:38:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Aug 2018 11:50:13 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:51:09 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55059f59399b1edb44f6fccf01b4b41c46365022205a35f92fa4aee831f1bac`  
		Last Modified: Tue, 17 Jul 2018 15:15:31 GMT  
		Size: 10.8 MB (10752710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b748c8a9e197a5c36217dc0236e60923d398eef3c44073cffeed563cb61421c3`  
		Last Modified: Tue, 17 Jul 2018 15:15:28 GMT  
		Size: 4.6 MB (4555355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33fbb92cee00a6946f3439c773b2a26dfb2db55c4c789ca3e7b53c3c7840823`  
		Last Modified: Tue, 17 Jul 2018 15:16:38 GMT  
		Size: 51.6 MB (51592718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a0578b14037a0f8bdb93132eb6a4fe86133b55a4aa25ac5f97a9872020c7777`  
		Last Modified: Tue, 17 Jul 2018 15:18:57 GMT  
		Size: 218.3 MB (218257626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7595598dcb532a0b59215eb962b9bb6c12d794d9e2b38cf730819f741764c6`  
		Last Modified: Fri, 03 Aug 2018 11:58:56 GMT  
		Size: 216.7 MB (216677666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.28`

```console
$ docker pull rust@sha256:d0f857cb3634f27d829a54fb2dd038c7cfdb7a131e6448fab9251306d6470cb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1.28` - linux; amd64

```console
$ docker pull rust@sha256:3032c3f2fe741a5f4832d593a363790dfe14718c5caf0e77ff25b6f2b4edd5a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **537.5 MB (537515417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:156ba9bbcf99933b905887268cbe0cf72d0d70e19f5da300996b75b70b609749`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:34:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:36:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 08:14:19 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Wed, 05 Sep 2018 08:14:59 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ae6b477848b6e03aad8ec9c74f1fb80364e5c8b5fe9ca3ec793df84247f027`  
		Last Modified: Tue, 04 Sep 2018 22:53:04 GMT  
		Size: 50.1 MB (50065233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bdf9e584cc733044425cc166ce90743b25f7003cb06408b905030f76200b2a`  
		Last Modified: Tue, 04 Sep 2018 22:53:52 GMT  
		Size: 213.2 MB (213208939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5cea304355c8a1e7546a6036d1601ff1c8f115b4813b6301956198532eb00a`  
		Last Modified: Wed, 05 Sep 2018 08:19:00 GMT  
		Size: 213.9 MB (213854594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.28` - linux; arm variant v7

```console
$ docker pull rust@sha256:4140e07370c12db4dc3a33e510b72bcbea22a18503ce3e368bd08181ff1431dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **448.0 MB (448035981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa450e6ec24242aad2bf4ca3c6769fb27e325614fb8c26a2da78bf4ea208ef70`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:05:25 GMT
ADD file:77cbe27c4436cc4c9d81bee6c5ae0fee0c6d1708813d34abd2af2d3ebd7d96a5 in / 
# Tue, 17 Jul 2018 12:05:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:46:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 13:47:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:49:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Aug 2018 12:13:15 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 12:13:57 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:a92bc499a4699bc1d9bd6631daec00b7b440346221ce91af635e3460f7d4d70b`  
		Last Modified: Tue, 17 Jul 2018 12:17:32 GMT  
		Size: 42.1 MB (42060835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56e34dc5db45e25c590c9a353c3562d66546b06312f418f9aae4661c28ee94f`  
		Last Modified: Tue, 17 Jul 2018 14:10:12 GMT  
		Size: 9.4 MB (9440199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948d2574fcb06c4081812a267179437a8d624eba8741a8fb5a6e3ef655c3dcff`  
		Last Modified: Tue, 17 Jul 2018 14:10:10 GMT  
		Size: 3.9 MB (3912954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ced04c5b3fc619ca9252df05a702d37000cbcc3fbac10e5e485428deba85ae`  
		Last Modified: Tue, 17 Jul 2018 14:10:55 GMT  
		Size: 46.4 MB (46380475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb38878a7d651556b67958bf17f303eaa9d80fd58ef30ddad40818a750db4c2`  
		Last Modified: Tue, 17 Jul 2018 14:12:09 GMT  
		Size: 194.0 MB (193983246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223e37f886ddf7381fe9967d5748b96ce4ae4d56ca9b234c0d35deb50a20ec46`  
		Last Modified: Fri, 03 Aug 2018 12:17:40 GMT  
		Size: 152.3 MB (152258272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.28` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:d10d4cdd69705e6fdb48a0f1f13b0eb1acc4302f3666249c955ec6e8b2b6ac54
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **456.2 MB (456157357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8f86f6e38942357171897bb82cc3fd4e403d4f912dda4c5743e049b4f03d0af`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:51:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:54:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:02:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Aug 2018 11:32:02 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:32:37 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf842c718cc953be45905967fc6a0114f55314ce412b80107e20d8b43fdcdb`  
		Last Modified: Tue, 17 Jul 2018 15:10:44 GMT  
		Size: 9.7 MB (9690273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317d79a9c0a5c766d03c1c253fa09f645ed7321dc3a80e0ae33599958677cd1d`  
		Last Modified: Tue, 17 Jul 2018 15:10:41 GMT  
		Size: 4.1 MB (4088491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a390be6b2f0349f7391582a305479410441bcb0329b8daa800d13f3921fd39b7`  
		Last Modified: Tue, 17 Jul 2018 15:11:46 GMT  
		Size: 48.0 MB (48003327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ed075d58fff4f9897e8a3191ca7e66c3f9ac907c59cc4ab05312f240370617`  
		Last Modified: Tue, 17 Jul 2018 15:13:30 GMT  
		Size: 200.6 MB (200617675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96237e52d6f5ddf065fe0997e5cc990bb4f2ecea1c69f077cbf205e2c3b252c8`  
		Last Modified: Fri, 03 Aug 2018 11:35:42 GMT  
		Size: 150.6 MB (150634023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.28` - linux; 386

```console
$ docker pull rust@sha256:aede4e7fec486326ab53fc5e60e2ae4b28119b01e68502db25c74606af42d2d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **547.9 MB (547873597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8f093e73a204173acf71a72704bb4e15baf6b4e8d08e6ffc7d3afb59e90bf38`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:34:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:34:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:35:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:38:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Aug 2018 11:50:13 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:51:09 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55059f59399b1edb44f6fccf01b4b41c46365022205a35f92fa4aee831f1bac`  
		Last Modified: Tue, 17 Jul 2018 15:15:31 GMT  
		Size: 10.8 MB (10752710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b748c8a9e197a5c36217dc0236e60923d398eef3c44073cffeed563cb61421c3`  
		Last Modified: Tue, 17 Jul 2018 15:15:28 GMT  
		Size: 4.6 MB (4555355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33fbb92cee00a6946f3439c773b2a26dfb2db55c4c789ca3e7b53c3c7840823`  
		Last Modified: Tue, 17 Jul 2018 15:16:38 GMT  
		Size: 51.6 MB (51592718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a0578b14037a0f8bdb93132eb6a4fe86133b55a4aa25ac5f97a9872020c7777`  
		Last Modified: Tue, 17 Jul 2018 15:18:57 GMT  
		Size: 218.3 MB (218257626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7595598dcb532a0b59215eb962b9bb6c12d794d9e2b38cf730819f741764c6`  
		Last Modified: Fri, 03 Aug 2018 11:58:56 GMT  
		Size: 216.7 MB (216677666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.28.0`

```console
$ docker pull rust@sha256:d0f857cb3634f27d829a54fb2dd038c7cfdb7a131e6448fab9251306d6470cb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1.28.0` - linux; amd64

```console
$ docker pull rust@sha256:3032c3f2fe741a5f4832d593a363790dfe14718c5caf0e77ff25b6f2b4edd5a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **537.5 MB (537515417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:156ba9bbcf99933b905887268cbe0cf72d0d70e19f5da300996b75b70b609749`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:34:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:36:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 08:14:19 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Wed, 05 Sep 2018 08:14:59 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ae6b477848b6e03aad8ec9c74f1fb80364e5c8b5fe9ca3ec793df84247f027`  
		Last Modified: Tue, 04 Sep 2018 22:53:04 GMT  
		Size: 50.1 MB (50065233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bdf9e584cc733044425cc166ce90743b25f7003cb06408b905030f76200b2a`  
		Last Modified: Tue, 04 Sep 2018 22:53:52 GMT  
		Size: 213.2 MB (213208939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5cea304355c8a1e7546a6036d1601ff1c8f115b4813b6301956198532eb00a`  
		Last Modified: Wed, 05 Sep 2018 08:19:00 GMT  
		Size: 213.9 MB (213854594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.28.0` - linux; arm variant v7

```console
$ docker pull rust@sha256:4140e07370c12db4dc3a33e510b72bcbea22a18503ce3e368bd08181ff1431dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **448.0 MB (448035981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa450e6ec24242aad2bf4ca3c6769fb27e325614fb8c26a2da78bf4ea208ef70`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:05:25 GMT
ADD file:77cbe27c4436cc4c9d81bee6c5ae0fee0c6d1708813d34abd2af2d3ebd7d96a5 in / 
# Tue, 17 Jul 2018 12:05:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:46:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 13:47:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:49:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Aug 2018 12:13:15 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 12:13:57 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:a92bc499a4699bc1d9bd6631daec00b7b440346221ce91af635e3460f7d4d70b`  
		Last Modified: Tue, 17 Jul 2018 12:17:32 GMT  
		Size: 42.1 MB (42060835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56e34dc5db45e25c590c9a353c3562d66546b06312f418f9aae4661c28ee94f`  
		Last Modified: Tue, 17 Jul 2018 14:10:12 GMT  
		Size: 9.4 MB (9440199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948d2574fcb06c4081812a267179437a8d624eba8741a8fb5a6e3ef655c3dcff`  
		Last Modified: Tue, 17 Jul 2018 14:10:10 GMT  
		Size: 3.9 MB (3912954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ced04c5b3fc619ca9252df05a702d37000cbcc3fbac10e5e485428deba85ae`  
		Last Modified: Tue, 17 Jul 2018 14:10:55 GMT  
		Size: 46.4 MB (46380475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb38878a7d651556b67958bf17f303eaa9d80fd58ef30ddad40818a750db4c2`  
		Last Modified: Tue, 17 Jul 2018 14:12:09 GMT  
		Size: 194.0 MB (193983246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223e37f886ddf7381fe9967d5748b96ce4ae4d56ca9b234c0d35deb50a20ec46`  
		Last Modified: Fri, 03 Aug 2018 12:17:40 GMT  
		Size: 152.3 MB (152258272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.28.0` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:d10d4cdd69705e6fdb48a0f1f13b0eb1acc4302f3666249c955ec6e8b2b6ac54
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **456.2 MB (456157357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8f86f6e38942357171897bb82cc3fd4e403d4f912dda4c5743e049b4f03d0af`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:51:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:54:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:02:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Aug 2018 11:32:02 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:32:37 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf842c718cc953be45905967fc6a0114f55314ce412b80107e20d8b43fdcdb`  
		Last Modified: Tue, 17 Jul 2018 15:10:44 GMT  
		Size: 9.7 MB (9690273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317d79a9c0a5c766d03c1c253fa09f645ed7321dc3a80e0ae33599958677cd1d`  
		Last Modified: Tue, 17 Jul 2018 15:10:41 GMT  
		Size: 4.1 MB (4088491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a390be6b2f0349f7391582a305479410441bcb0329b8daa800d13f3921fd39b7`  
		Last Modified: Tue, 17 Jul 2018 15:11:46 GMT  
		Size: 48.0 MB (48003327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ed075d58fff4f9897e8a3191ca7e66c3f9ac907c59cc4ab05312f240370617`  
		Last Modified: Tue, 17 Jul 2018 15:13:30 GMT  
		Size: 200.6 MB (200617675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96237e52d6f5ddf065fe0997e5cc990bb4f2ecea1c69f077cbf205e2c3b252c8`  
		Last Modified: Fri, 03 Aug 2018 11:35:42 GMT  
		Size: 150.6 MB (150634023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.28.0` - linux; 386

```console
$ docker pull rust@sha256:aede4e7fec486326ab53fc5e60e2ae4b28119b01e68502db25c74606af42d2d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **547.9 MB (547873597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8f093e73a204173acf71a72704bb4e15baf6b4e8d08e6ffc7d3afb59e90bf38`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:34:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:34:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:35:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:38:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Aug 2018 11:50:13 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:51:09 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55059f59399b1edb44f6fccf01b4b41c46365022205a35f92fa4aee831f1bac`  
		Last Modified: Tue, 17 Jul 2018 15:15:31 GMT  
		Size: 10.8 MB (10752710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b748c8a9e197a5c36217dc0236e60923d398eef3c44073cffeed563cb61421c3`  
		Last Modified: Tue, 17 Jul 2018 15:15:28 GMT  
		Size: 4.6 MB (4555355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33fbb92cee00a6946f3439c773b2a26dfb2db55c4c789ca3e7b53c3c7840823`  
		Last Modified: Tue, 17 Jul 2018 15:16:38 GMT  
		Size: 51.6 MB (51592718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a0578b14037a0f8bdb93132eb6a4fe86133b55a4aa25ac5f97a9872020c7777`  
		Last Modified: Tue, 17 Jul 2018 15:18:57 GMT  
		Size: 218.3 MB (218257626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7595598dcb532a0b59215eb962b9bb6c12d794d9e2b38cf730819f741764c6`  
		Last Modified: Fri, 03 Aug 2018 11:58:56 GMT  
		Size: 216.7 MB (216677666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.28.0-jessie`

```console
$ docker pull rust@sha256:3b65997f24717d8e6af4e5c0931f281f485a74bd94dc3d81c148d41d139bf11b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `rust:1.28.0-jessie` - linux; amd64

```console
$ docker pull rust@sha256:92f99233126dabdc56b0913a7352ff31298b1e07afaf2391d044cd996c2901a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **460.0 MB (460048091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d875491c51c10d04e0fb9147da456af523628af1dcf99aaec449fd8938f7378e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 08:16:20 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Wed, 05 Sep 2018 08:16:47 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0161892996fce0b1364bbe5d64d5271e68baac07ff66ec20c6e609bca476811a`  
		Last Modified: Wed, 05 Sep 2018 08:21:45 GMT  
		Size: 213.9 MB (213854432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.28.0-jessie` - linux; arm variant v7

```console
$ docker pull rust@sha256:f3ef7f05e2440a3e16e1b70ba5bd4ae24489442eb4f5248b7d4afc4f9ebcc5cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **373.0 MB (373005362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96c7b35678f9f8f2b166278049fc19ff757eae3b7dbd8a17e7bc32b418c95ab9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 11:59:28 GMT
ADD file:b6521e3d1f270115e5b6c8df3fb62b87aae252b99045c6884f1c071d88fecf10 in / 
# Tue, 17 Jul 2018 11:59:35 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:40:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:40:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 13:41:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:43:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Aug 2018 12:14:52 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 12:15:14 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:fbd7fa58000c551825cee932912ff0e71b08d10d3a21e72fa231f872c5ec3109`  
		Last Modified: Tue, 17 Jul 2018 12:10:53 GMT  
		Size: 50.2 MB (50187773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d9a9aa87bb2d7aaaef5230826591f3a257cdde7443239673f8a87f99ee7ffa`  
		Last Modified: Tue, 17 Jul 2018 14:06:05 GMT  
		Size: 16.7 MB (16712260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12745f5f1fe2c0c7e66de9818fd2e49a955fd18db2ccd7f512bbefacbbd8d3b`  
		Last Modified: Tue, 17 Jul 2018 14:06:43 GMT  
		Size: 39.8 MB (39763909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e00ffbabf923fa03f155489011edc7e3f5dadcef3d3268d6c3bc54c04d14fa`  
		Last Modified: Tue, 17 Jul 2018 14:07:33 GMT  
		Size: 114.1 MB (114082976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb15e2d2eedeebd8326a02ee8118ecfe03e64a2eeb29f30caab85c24a128a92d`  
		Last Modified: Fri, 03 Aug 2018 12:20:13 GMT  
		Size: 152.3 MB (152258444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.28.0-jessie` - linux; 386

```console
$ docker pull rust@sha256:d2cd20f0925c2479fd3c75b3ae306b88a6b5d1c1a272532d87bcbaf16632c871
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **470.1 MB (470112684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25bbeccf5340be553e48ab2165090a2b02aa45f963d5aaa219c8ea1d89860335`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:41:14 GMT
ADD file:edf13e4ea5255fbdbe91ff11bf281f8dc1ed1790ea095ab1ff341f0abc03f58c in / 
# Tue, 17 Jul 2018 10:41:14 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:25:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:25:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:27:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:30:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Aug 2018 11:53:25 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:54:16 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:357075fdb6ed4cabaab3293713922024245238f5596815e10a36b24c0a498f08`  
		Last Modified: Tue, 17 Jul 2018 10:56:53 GMT  
		Size: 54.5 MB (54483269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61274d86633cfcbd74890e3b94b540ad3cdbcb6a769aa68579f642fd13a32eb1`  
		Last Modified: Tue, 17 Jul 2018 15:08:53 GMT  
		Size: 19.8 MB (19832967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:501abb8e70591a1130105f440ab6d42bf38283ba8d4078896dde609700fdc926`  
		Last Modified: Tue, 17 Jul 2018 15:09:43 GMT  
		Size: 43.9 MB (43946227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b6051d7512c1bb08bb453f73126eae548545c7ec84c2822943b1b6907ab3ef`  
		Last Modified: Tue, 17 Jul 2018 15:11:11 GMT  
		Size: 135.2 MB (135173578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96cfaa09d27bc1d35e4f35148e9b545b409183ad2a324906b545be7a6cdef9b`  
		Last Modified: Fri, 03 Aug 2018 12:06:41 GMT  
		Size: 216.7 MB (216676643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.28.0-slim`

```console
$ docker pull rust@sha256:33a0519f2b6c24577867c76dacff39fac472099d841bd18526f45bff004a4925
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1.28.0-slim` - linux; amd64

```console
$ docker pull rust@sha256:a9225488dd58672d4b24106d8f27f132296494d386fedb2a2b723d484bb291c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.2 MB (274197592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d15e07d28e019fdc2fe3d520fb08e4a1189f746a5d95be808a410b48a3005ca`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:15:14 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Wed, 05 Sep 2018 08:16:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bacc369f2c765b6bccecce41253197af891e31eb5fd84750f26dd6981beec721`  
		Last Modified: Wed, 05 Sep 2018 08:20:23 GMT  
		Size: 251.7 MB (251711627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.28.0-slim` - linux; arm variant v7

```console
$ docker pull rust@sha256:dc3d506ac98e412740e0c3c193557fe649c8c375c9dce60291b3a369b69afd21
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199575663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2126fc03bf4cbec538bec90bbd55769b0ce2e93899622afd6aefc2c1be75cfa`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Fri, 03 Aug 2018 12:14:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 12:14:45 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612a364e8bf79cb96e50510d078b715dd093ed26ed3d42bc145b05ee5185072f`  
		Last Modified: Fri, 03 Aug 2018 12:19:01 GMT  
		Size: 180.3 MB (180305480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.28.0-slim` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:028dca7efa0ee542ca88fd9fbc27c86f30dd970203b3858b7a541de04da9e5a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.6 MB (201582380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1ae4430fe5092950b3c6569ba342c749bbe7228a422a3bcad907bc05598e916`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Fri, 03 Aug 2018 11:33:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:34:26 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde0fd2e5590b5d262eb3eb908f99763fb7b41cc151b438eb6c9f50d7a253508`  
		Last Modified: Fri, 03 Aug 2018 11:39:11 GMT  
		Size: 181.3 MB (181250733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.28.0-slim` - linux; 386

```console
$ docker pull rust@sha256:a19f6acd68686107b0f43c79f43e0d8ca230331ec88364d2facd99ee9a6c3c1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.7 MB (281674075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:774c75082272b614aa638b9269fbde45cee098351b18be3b105dc3b43896687c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Fri, 03 Aug 2018 11:51:32 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:52:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b843d1926a8f846d6cb3469ec9f67c578ab7e51b7430d442999d30b60b2b0142`  
		Last Modified: Fri, 03 Aug 2018 12:03:02 GMT  
		Size: 258.5 MB (258547698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.28.0-slim-jessie`

```console
$ docker pull rust@sha256:ae60f560236edb5303ee634e6366732658f7f191b70f96943f5673795ce884b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `rust:1.28.0-slim-jessie` - linux; amd64

```console
$ docker pull rust@sha256:cd8dd3b5cc62fdeb3a699c01909474d8b2d732f4e4a1df32f7a611fff63b6973
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.1 MB (274094336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d91ac5bccef7fbecaf701f20585fb637605cf2a9a2e4152d8ca57bcdfc1162d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:16:59 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Wed, 05 Sep 2018 08:18:02 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:930b1ecf8ede92d7eb46c03be72246cabe1bcf1311a1af702e8b5ebf33c3c340`  
		Last Modified: Wed, 05 Sep 2018 08:23:01 GMT  
		Size: 244.0 MB (243973772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.28.0-slim-jessie` - linux; arm variant v7

```console
$ docker pull rust@sha256:84eeab80574b301b9365631d151c42801c0a35e32d3b02a6513432f4bb64f427
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 MB (201277863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:946cfbe7e7e065d034839616f4ebe4dd73693dcdc1fc68b191622e87eee537ee`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:00:33 GMT
ADD file:32d146255a9263416cb50a32e6079a40852e3ae1db6b0e30134cde4d24917309 in / 
# Tue, 17 Jul 2018 12:00:36 GMT
CMD ["bash"]
# Fri, 03 Aug 2018 12:15:22 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 12:16:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:093a70fc20ffe401f4cf25ac9cf7d08c8d511df67aba90ee8c4eec4f8cb2c67e`  
		Last Modified: Tue, 17 Jul 2018 12:12:07 GMT  
		Size: 26.3 MB (26286960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade36aac4baf0237232e69d34cddbaaba4b74b641fb165b542f2495d48146a55`  
		Last Modified: Fri, 03 Aug 2018 12:21:15 GMT  
		Size: 175.0 MB (174990903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.28.0-slim-jessie` - linux; 386

```console
$ docker pull rust@sha256:cf23171d3a9a16deccee476b421fccfd369d5f0e98db007ae641881294e4ba64
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.9 MB (281901804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d751fc3f71138f6dd33968dc267d1d5646c7de1b4a7f7f2cbfe554d6fb41b13`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:42:32 GMT
ADD file:9f28594bd37e3d6105c4b8e438188e5f1c270ba5fa552b2b4969a43a0a84730d in / 
# Tue, 17 Jul 2018 10:42:35 GMT
CMD ["bash"]
# Fri, 03 Aug 2018 11:54:54 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:57:13 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:08ccc2995d065af2cd0d4ce4d10d2409e68dcfd7b947820dea2d5371344277e3`  
		Last Modified: Tue, 17 Jul 2018 10:58:32 GMT  
		Size: 30.3 MB (30270010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56308966da8022069999e6844402a55e2be921b9383c169cfaa2a8a74eb0b5d`  
		Last Modified: Fri, 03 Aug 2018 12:09:29 GMT  
		Size: 251.6 MB (251631794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.28.0-slim-stretch`

```console
$ docker pull rust@sha256:33a0519f2b6c24577867c76dacff39fac472099d841bd18526f45bff004a4925
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1.28.0-slim-stretch` - linux; amd64

```console
$ docker pull rust@sha256:a9225488dd58672d4b24106d8f27f132296494d386fedb2a2b723d484bb291c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.2 MB (274197592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d15e07d28e019fdc2fe3d520fb08e4a1189f746a5d95be808a410b48a3005ca`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:15:14 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Wed, 05 Sep 2018 08:16:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bacc369f2c765b6bccecce41253197af891e31eb5fd84750f26dd6981beec721`  
		Last Modified: Wed, 05 Sep 2018 08:20:23 GMT  
		Size: 251.7 MB (251711627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.28.0-slim-stretch` - linux; arm variant v7

```console
$ docker pull rust@sha256:dc3d506ac98e412740e0c3c193557fe649c8c375c9dce60291b3a369b69afd21
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199575663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2126fc03bf4cbec538bec90bbd55769b0ce2e93899622afd6aefc2c1be75cfa`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Fri, 03 Aug 2018 12:14:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 12:14:45 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612a364e8bf79cb96e50510d078b715dd093ed26ed3d42bc145b05ee5185072f`  
		Last Modified: Fri, 03 Aug 2018 12:19:01 GMT  
		Size: 180.3 MB (180305480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.28.0-slim-stretch` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:028dca7efa0ee542ca88fd9fbc27c86f30dd970203b3858b7a541de04da9e5a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.6 MB (201582380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1ae4430fe5092950b3c6569ba342c749bbe7228a422a3bcad907bc05598e916`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Fri, 03 Aug 2018 11:33:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:34:26 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde0fd2e5590b5d262eb3eb908f99763fb7b41cc151b438eb6c9f50d7a253508`  
		Last Modified: Fri, 03 Aug 2018 11:39:11 GMT  
		Size: 181.3 MB (181250733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.28.0-slim-stretch` - linux; 386

```console
$ docker pull rust@sha256:a19f6acd68686107b0f43c79f43e0d8ca230331ec88364d2facd99ee9a6c3c1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.7 MB (281674075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:774c75082272b614aa638b9269fbde45cee098351b18be3b105dc3b43896687c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Fri, 03 Aug 2018 11:51:32 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:52:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b843d1926a8f846d6cb3469ec9f67c578ab7e51b7430d442999d30b60b2b0142`  
		Last Modified: Fri, 03 Aug 2018 12:03:02 GMT  
		Size: 258.5 MB (258547698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.28.0-stretch`

```console
$ docker pull rust@sha256:d0f857cb3634f27d829a54fb2dd038c7cfdb7a131e6448fab9251306d6470cb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1.28.0-stretch` - linux; amd64

```console
$ docker pull rust@sha256:3032c3f2fe741a5f4832d593a363790dfe14718c5caf0e77ff25b6f2b4edd5a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **537.5 MB (537515417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:156ba9bbcf99933b905887268cbe0cf72d0d70e19f5da300996b75b70b609749`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:34:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:36:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 08:14:19 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Wed, 05 Sep 2018 08:14:59 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ae6b477848b6e03aad8ec9c74f1fb80364e5c8b5fe9ca3ec793df84247f027`  
		Last Modified: Tue, 04 Sep 2018 22:53:04 GMT  
		Size: 50.1 MB (50065233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bdf9e584cc733044425cc166ce90743b25f7003cb06408b905030f76200b2a`  
		Last Modified: Tue, 04 Sep 2018 22:53:52 GMT  
		Size: 213.2 MB (213208939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5cea304355c8a1e7546a6036d1601ff1c8f115b4813b6301956198532eb00a`  
		Last Modified: Wed, 05 Sep 2018 08:19:00 GMT  
		Size: 213.9 MB (213854594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.28.0-stretch` - linux; arm variant v7

```console
$ docker pull rust@sha256:4140e07370c12db4dc3a33e510b72bcbea22a18503ce3e368bd08181ff1431dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **448.0 MB (448035981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa450e6ec24242aad2bf4ca3c6769fb27e325614fb8c26a2da78bf4ea208ef70`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:05:25 GMT
ADD file:77cbe27c4436cc4c9d81bee6c5ae0fee0c6d1708813d34abd2af2d3ebd7d96a5 in / 
# Tue, 17 Jul 2018 12:05:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:46:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 13:47:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:49:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Aug 2018 12:13:15 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 12:13:57 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:a92bc499a4699bc1d9bd6631daec00b7b440346221ce91af635e3460f7d4d70b`  
		Last Modified: Tue, 17 Jul 2018 12:17:32 GMT  
		Size: 42.1 MB (42060835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56e34dc5db45e25c590c9a353c3562d66546b06312f418f9aae4661c28ee94f`  
		Last Modified: Tue, 17 Jul 2018 14:10:12 GMT  
		Size: 9.4 MB (9440199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948d2574fcb06c4081812a267179437a8d624eba8741a8fb5a6e3ef655c3dcff`  
		Last Modified: Tue, 17 Jul 2018 14:10:10 GMT  
		Size: 3.9 MB (3912954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ced04c5b3fc619ca9252df05a702d37000cbcc3fbac10e5e485428deba85ae`  
		Last Modified: Tue, 17 Jul 2018 14:10:55 GMT  
		Size: 46.4 MB (46380475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb38878a7d651556b67958bf17f303eaa9d80fd58ef30ddad40818a750db4c2`  
		Last Modified: Tue, 17 Jul 2018 14:12:09 GMT  
		Size: 194.0 MB (193983246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223e37f886ddf7381fe9967d5748b96ce4ae4d56ca9b234c0d35deb50a20ec46`  
		Last Modified: Fri, 03 Aug 2018 12:17:40 GMT  
		Size: 152.3 MB (152258272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.28.0-stretch` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:d10d4cdd69705e6fdb48a0f1f13b0eb1acc4302f3666249c955ec6e8b2b6ac54
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **456.2 MB (456157357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8f86f6e38942357171897bb82cc3fd4e403d4f912dda4c5743e049b4f03d0af`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:51:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:54:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:02:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Aug 2018 11:32:02 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:32:37 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf842c718cc953be45905967fc6a0114f55314ce412b80107e20d8b43fdcdb`  
		Last Modified: Tue, 17 Jul 2018 15:10:44 GMT  
		Size: 9.7 MB (9690273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317d79a9c0a5c766d03c1c253fa09f645ed7321dc3a80e0ae33599958677cd1d`  
		Last Modified: Tue, 17 Jul 2018 15:10:41 GMT  
		Size: 4.1 MB (4088491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a390be6b2f0349f7391582a305479410441bcb0329b8daa800d13f3921fd39b7`  
		Last Modified: Tue, 17 Jul 2018 15:11:46 GMT  
		Size: 48.0 MB (48003327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ed075d58fff4f9897e8a3191ca7e66c3f9ac907c59cc4ab05312f240370617`  
		Last Modified: Tue, 17 Jul 2018 15:13:30 GMT  
		Size: 200.6 MB (200617675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96237e52d6f5ddf065fe0997e5cc990bb4f2ecea1c69f077cbf205e2c3b252c8`  
		Last Modified: Fri, 03 Aug 2018 11:35:42 GMT  
		Size: 150.6 MB (150634023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.28.0-stretch` - linux; 386

```console
$ docker pull rust@sha256:aede4e7fec486326ab53fc5e60e2ae4b28119b01e68502db25c74606af42d2d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **547.9 MB (547873597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8f093e73a204173acf71a72704bb4e15baf6b4e8d08e6ffc7d3afb59e90bf38`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:34:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:34:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:35:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:38:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Aug 2018 11:50:13 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:51:09 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55059f59399b1edb44f6fccf01b4b41c46365022205a35f92fa4aee831f1bac`  
		Last Modified: Tue, 17 Jul 2018 15:15:31 GMT  
		Size: 10.8 MB (10752710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b748c8a9e197a5c36217dc0236e60923d398eef3c44073cffeed563cb61421c3`  
		Last Modified: Tue, 17 Jul 2018 15:15:28 GMT  
		Size: 4.6 MB (4555355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33fbb92cee00a6946f3439c773b2a26dfb2db55c4c789ca3e7b53c3c7840823`  
		Last Modified: Tue, 17 Jul 2018 15:16:38 GMT  
		Size: 51.6 MB (51592718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a0578b14037a0f8bdb93132eb6a4fe86133b55a4aa25ac5f97a9872020c7777`  
		Last Modified: Tue, 17 Jul 2018 15:18:57 GMT  
		Size: 218.3 MB (218257626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7595598dcb532a0b59215eb962b9bb6c12d794d9e2b38cf730819f741764c6`  
		Last Modified: Fri, 03 Aug 2018 11:58:56 GMT  
		Size: 216.7 MB (216677666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.28-jessie`

```console
$ docker pull rust@sha256:3b65997f24717d8e6af4e5c0931f281f485a74bd94dc3d81c148d41d139bf11b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `rust:1.28-jessie` - linux; amd64

```console
$ docker pull rust@sha256:92f99233126dabdc56b0913a7352ff31298b1e07afaf2391d044cd996c2901a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **460.0 MB (460048091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d875491c51c10d04e0fb9147da456af523628af1dcf99aaec449fd8938f7378e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 08:16:20 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Wed, 05 Sep 2018 08:16:47 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0161892996fce0b1364bbe5d64d5271e68baac07ff66ec20c6e609bca476811a`  
		Last Modified: Wed, 05 Sep 2018 08:21:45 GMT  
		Size: 213.9 MB (213854432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.28-jessie` - linux; arm variant v7

```console
$ docker pull rust@sha256:f3ef7f05e2440a3e16e1b70ba5bd4ae24489442eb4f5248b7d4afc4f9ebcc5cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **373.0 MB (373005362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96c7b35678f9f8f2b166278049fc19ff757eae3b7dbd8a17e7bc32b418c95ab9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 11:59:28 GMT
ADD file:b6521e3d1f270115e5b6c8df3fb62b87aae252b99045c6884f1c071d88fecf10 in / 
# Tue, 17 Jul 2018 11:59:35 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:40:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:40:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 13:41:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:43:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Aug 2018 12:14:52 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 12:15:14 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:fbd7fa58000c551825cee932912ff0e71b08d10d3a21e72fa231f872c5ec3109`  
		Last Modified: Tue, 17 Jul 2018 12:10:53 GMT  
		Size: 50.2 MB (50187773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d9a9aa87bb2d7aaaef5230826591f3a257cdde7443239673f8a87f99ee7ffa`  
		Last Modified: Tue, 17 Jul 2018 14:06:05 GMT  
		Size: 16.7 MB (16712260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12745f5f1fe2c0c7e66de9818fd2e49a955fd18db2ccd7f512bbefacbbd8d3b`  
		Last Modified: Tue, 17 Jul 2018 14:06:43 GMT  
		Size: 39.8 MB (39763909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e00ffbabf923fa03f155489011edc7e3f5dadcef3d3268d6c3bc54c04d14fa`  
		Last Modified: Tue, 17 Jul 2018 14:07:33 GMT  
		Size: 114.1 MB (114082976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb15e2d2eedeebd8326a02ee8118ecfe03e64a2eeb29f30caab85c24a128a92d`  
		Last Modified: Fri, 03 Aug 2018 12:20:13 GMT  
		Size: 152.3 MB (152258444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.28-jessie` - linux; 386

```console
$ docker pull rust@sha256:d2cd20f0925c2479fd3c75b3ae306b88a6b5d1c1a272532d87bcbaf16632c871
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **470.1 MB (470112684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25bbeccf5340be553e48ab2165090a2b02aa45f963d5aaa219c8ea1d89860335`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:41:14 GMT
ADD file:edf13e4ea5255fbdbe91ff11bf281f8dc1ed1790ea095ab1ff341f0abc03f58c in / 
# Tue, 17 Jul 2018 10:41:14 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:25:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:25:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:27:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:30:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Aug 2018 11:53:25 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:54:16 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:357075fdb6ed4cabaab3293713922024245238f5596815e10a36b24c0a498f08`  
		Last Modified: Tue, 17 Jul 2018 10:56:53 GMT  
		Size: 54.5 MB (54483269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61274d86633cfcbd74890e3b94b540ad3cdbcb6a769aa68579f642fd13a32eb1`  
		Last Modified: Tue, 17 Jul 2018 15:08:53 GMT  
		Size: 19.8 MB (19832967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:501abb8e70591a1130105f440ab6d42bf38283ba8d4078896dde609700fdc926`  
		Last Modified: Tue, 17 Jul 2018 15:09:43 GMT  
		Size: 43.9 MB (43946227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b6051d7512c1bb08bb453f73126eae548545c7ec84c2822943b1b6907ab3ef`  
		Last Modified: Tue, 17 Jul 2018 15:11:11 GMT  
		Size: 135.2 MB (135173578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96cfaa09d27bc1d35e4f35148e9b545b409183ad2a324906b545be7a6cdef9b`  
		Last Modified: Fri, 03 Aug 2018 12:06:41 GMT  
		Size: 216.7 MB (216676643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.28-slim`

```console
$ docker pull rust@sha256:33a0519f2b6c24577867c76dacff39fac472099d841bd18526f45bff004a4925
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1.28-slim` - linux; amd64

```console
$ docker pull rust@sha256:a9225488dd58672d4b24106d8f27f132296494d386fedb2a2b723d484bb291c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.2 MB (274197592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d15e07d28e019fdc2fe3d520fb08e4a1189f746a5d95be808a410b48a3005ca`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:15:14 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Wed, 05 Sep 2018 08:16:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bacc369f2c765b6bccecce41253197af891e31eb5fd84750f26dd6981beec721`  
		Last Modified: Wed, 05 Sep 2018 08:20:23 GMT  
		Size: 251.7 MB (251711627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.28-slim` - linux; arm variant v7

```console
$ docker pull rust@sha256:dc3d506ac98e412740e0c3c193557fe649c8c375c9dce60291b3a369b69afd21
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199575663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2126fc03bf4cbec538bec90bbd55769b0ce2e93899622afd6aefc2c1be75cfa`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Fri, 03 Aug 2018 12:14:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 12:14:45 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612a364e8bf79cb96e50510d078b715dd093ed26ed3d42bc145b05ee5185072f`  
		Last Modified: Fri, 03 Aug 2018 12:19:01 GMT  
		Size: 180.3 MB (180305480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.28-slim` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:028dca7efa0ee542ca88fd9fbc27c86f30dd970203b3858b7a541de04da9e5a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.6 MB (201582380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1ae4430fe5092950b3c6569ba342c749bbe7228a422a3bcad907bc05598e916`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Fri, 03 Aug 2018 11:33:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:34:26 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde0fd2e5590b5d262eb3eb908f99763fb7b41cc151b438eb6c9f50d7a253508`  
		Last Modified: Fri, 03 Aug 2018 11:39:11 GMT  
		Size: 181.3 MB (181250733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.28-slim` - linux; 386

```console
$ docker pull rust@sha256:a19f6acd68686107b0f43c79f43e0d8ca230331ec88364d2facd99ee9a6c3c1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.7 MB (281674075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:774c75082272b614aa638b9269fbde45cee098351b18be3b105dc3b43896687c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Fri, 03 Aug 2018 11:51:32 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:52:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b843d1926a8f846d6cb3469ec9f67c578ab7e51b7430d442999d30b60b2b0142`  
		Last Modified: Fri, 03 Aug 2018 12:03:02 GMT  
		Size: 258.5 MB (258547698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.28-slim-jessie`

```console
$ docker pull rust@sha256:ae60f560236edb5303ee634e6366732658f7f191b70f96943f5673795ce884b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `rust:1.28-slim-jessie` - linux; amd64

```console
$ docker pull rust@sha256:cd8dd3b5cc62fdeb3a699c01909474d8b2d732f4e4a1df32f7a611fff63b6973
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.1 MB (274094336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d91ac5bccef7fbecaf701f20585fb637605cf2a9a2e4152d8ca57bcdfc1162d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:16:59 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Wed, 05 Sep 2018 08:18:02 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:930b1ecf8ede92d7eb46c03be72246cabe1bcf1311a1af702e8b5ebf33c3c340`  
		Last Modified: Wed, 05 Sep 2018 08:23:01 GMT  
		Size: 244.0 MB (243973772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.28-slim-jessie` - linux; arm variant v7

```console
$ docker pull rust@sha256:84eeab80574b301b9365631d151c42801c0a35e32d3b02a6513432f4bb64f427
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 MB (201277863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:946cfbe7e7e065d034839616f4ebe4dd73693dcdc1fc68b191622e87eee537ee`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:00:33 GMT
ADD file:32d146255a9263416cb50a32e6079a40852e3ae1db6b0e30134cde4d24917309 in / 
# Tue, 17 Jul 2018 12:00:36 GMT
CMD ["bash"]
# Fri, 03 Aug 2018 12:15:22 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 12:16:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:093a70fc20ffe401f4cf25ac9cf7d08c8d511df67aba90ee8c4eec4f8cb2c67e`  
		Last Modified: Tue, 17 Jul 2018 12:12:07 GMT  
		Size: 26.3 MB (26286960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade36aac4baf0237232e69d34cddbaaba4b74b641fb165b542f2495d48146a55`  
		Last Modified: Fri, 03 Aug 2018 12:21:15 GMT  
		Size: 175.0 MB (174990903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.28-slim-jessie` - linux; 386

```console
$ docker pull rust@sha256:cf23171d3a9a16deccee476b421fccfd369d5f0e98db007ae641881294e4ba64
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.9 MB (281901804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d751fc3f71138f6dd33968dc267d1d5646c7de1b4a7f7f2cbfe554d6fb41b13`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:42:32 GMT
ADD file:9f28594bd37e3d6105c4b8e438188e5f1c270ba5fa552b2b4969a43a0a84730d in / 
# Tue, 17 Jul 2018 10:42:35 GMT
CMD ["bash"]
# Fri, 03 Aug 2018 11:54:54 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:57:13 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:08ccc2995d065af2cd0d4ce4d10d2409e68dcfd7b947820dea2d5371344277e3`  
		Last Modified: Tue, 17 Jul 2018 10:58:32 GMT  
		Size: 30.3 MB (30270010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56308966da8022069999e6844402a55e2be921b9383c169cfaa2a8a74eb0b5d`  
		Last Modified: Fri, 03 Aug 2018 12:09:29 GMT  
		Size: 251.6 MB (251631794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.28-slim-stretch`

```console
$ docker pull rust@sha256:33a0519f2b6c24577867c76dacff39fac472099d841bd18526f45bff004a4925
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1.28-slim-stretch` - linux; amd64

```console
$ docker pull rust@sha256:a9225488dd58672d4b24106d8f27f132296494d386fedb2a2b723d484bb291c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.2 MB (274197592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d15e07d28e019fdc2fe3d520fb08e4a1189f746a5d95be808a410b48a3005ca`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:15:14 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Wed, 05 Sep 2018 08:16:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bacc369f2c765b6bccecce41253197af891e31eb5fd84750f26dd6981beec721`  
		Last Modified: Wed, 05 Sep 2018 08:20:23 GMT  
		Size: 251.7 MB (251711627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.28-slim-stretch` - linux; arm variant v7

```console
$ docker pull rust@sha256:dc3d506ac98e412740e0c3c193557fe649c8c375c9dce60291b3a369b69afd21
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199575663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2126fc03bf4cbec538bec90bbd55769b0ce2e93899622afd6aefc2c1be75cfa`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Fri, 03 Aug 2018 12:14:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 12:14:45 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612a364e8bf79cb96e50510d078b715dd093ed26ed3d42bc145b05ee5185072f`  
		Last Modified: Fri, 03 Aug 2018 12:19:01 GMT  
		Size: 180.3 MB (180305480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.28-slim-stretch` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:028dca7efa0ee542ca88fd9fbc27c86f30dd970203b3858b7a541de04da9e5a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.6 MB (201582380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1ae4430fe5092950b3c6569ba342c749bbe7228a422a3bcad907bc05598e916`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Fri, 03 Aug 2018 11:33:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:34:26 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde0fd2e5590b5d262eb3eb908f99763fb7b41cc151b438eb6c9f50d7a253508`  
		Last Modified: Fri, 03 Aug 2018 11:39:11 GMT  
		Size: 181.3 MB (181250733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.28-slim-stretch` - linux; 386

```console
$ docker pull rust@sha256:a19f6acd68686107b0f43c79f43e0d8ca230331ec88364d2facd99ee9a6c3c1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.7 MB (281674075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:774c75082272b614aa638b9269fbde45cee098351b18be3b105dc3b43896687c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Fri, 03 Aug 2018 11:51:32 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:52:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b843d1926a8f846d6cb3469ec9f67c578ab7e51b7430d442999d30b60b2b0142`  
		Last Modified: Fri, 03 Aug 2018 12:03:02 GMT  
		Size: 258.5 MB (258547698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.28-stretch`

```console
$ docker pull rust@sha256:d0f857cb3634f27d829a54fb2dd038c7cfdb7a131e6448fab9251306d6470cb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1.28-stretch` - linux; amd64

```console
$ docker pull rust@sha256:3032c3f2fe741a5f4832d593a363790dfe14718c5caf0e77ff25b6f2b4edd5a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **537.5 MB (537515417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:156ba9bbcf99933b905887268cbe0cf72d0d70e19f5da300996b75b70b609749`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:34:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:36:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 08:14:19 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Wed, 05 Sep 2018 08:14:59 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ae6b477848b6e03aad8ec9c74f1fb80364e5c8b5fe9ca3ec793df84247f027`  
		Last Modified: Tue, 04 Sep 2018 22:53:04 GMT  
		Size: 50.1 MB (50065233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bdf9e584cc733044425cc166ce90743b25f7003cb06408b905030f76200b2a`  
		Last Modified: Tue, 04 Sep 2018 22:53:52 GMT  
		Size: 213.2 MB (213208939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5cea304355c8a1e7546a6036d1601ff1c8f115b4813b6301956198532eb00a`  
		Last Modified: Wed, 05 Sep 2018 08:19:00 GMT  
		Size: 213.9 MB (213854594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.28-stretch` - linux; arm variant v7

```console
$ docker pull rust@sha256:4140e07370c12db4dc3a33e510b72bcbea22a18503ce3e368bd08181ff1431dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **448.0 MB (448035981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa450e6ec24242aad2bf4ca3c6769fb27e325614fb8c26a2da78bf4ea208ef70`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:05:25 GMT
ADD file:77cbe27c4436cc4c9d81bee6c5ae0fee0c6d1708813d34abd2af2d3ebd7d96a5 in / 
# Tue, 17 Jul 2018 12:05:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:46:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 13:47:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:49:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Aug 2018 12:13:15 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 12:13:57 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:a92bc499a4699bc1d9bd6631daec00b7b440346221ce91af635e3460f7d4d70b`  
		Last Modified: Tue, 17 Jul 2018 12:17:32 GMT  
		Size: 42.1 MB (42060835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56e34dc5db45e25c590c9a353c3562d66546b06312f418f9aae4661c28ee94f`  
		Last Modified: Tue, 17 Jul 2018 14:10:12 GMT  
		Size: 9.4 MB (9440199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948d2574fcb06c4081812a267179437a8d624eba8741a8fb5a6e3ef655c3dcff`  
		Last Modified: Tue, 17 Jul 2018 14:10:10 GMT  
		Size: 3.9 MB (3912954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ced04c5b3fc619ca9252df05a702d37000cbcc3fbac10e5e485428deba85ae`  
		Last Modified: Tue, 17 Jul 2018 14:10:55 GMT  
		Size: 46.4 MB (46380475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb38878a7d651556b67958bf17f303eaa9d80fd58ef30ddad40818a750db4c2`  
		Last Modified: Tue, 17 Jul 2018 14:12:09 GMT  
		Size: 194.0 MB (193983246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223e37f886ddf7381fe9967d5748b96ce4ae4d56ca9b234c0d35deb50a20ec46`  
		Last Modified: Fri, 03 Aug 2018 12:17:40 GMT  
		Size: 152.3 MB (152258272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.28-stretch` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:d10d4cdd69705e6fdb48a0f1f13b0eb1acc4302f3666249c955ec6e8b2b6ac54
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **456.2 MB (456157357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8f86f6e38942357171897bb82cc3fd4e403d4f912dda4c5743e049b4f03d0af`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:51:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:54:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:02:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Aug 2018 11:32:02 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:32:37 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf842c718cc953be45905967fc6a0114f55314ce412b80107e20d8b43fdcdb`  
		Last Modified: Tue, 17 Jul 2018 15:10:44 GMT  
		Size: 9.7 MB (9690273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317d79a9c0a5c766d03c1c253fa09f645ed7321dc3a80e0ae33599958677cd1d`  
		Last Modified: Tue, 17 Jul 2018 15:10:41 GMT  
		Size: 4.1 MB (4088491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a390be6b2f0349f7391582a305479410441bcb0329b8daa800d13f3921fd39b7`  
		Last Modified: Tue, 17 Jul 2018 15:11:46 GMT  
		Size: 48.0 MB (48003327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ed075d58fff4f9897e8a3191ca7e66c3f9ac907c59cc4ab05312f240370617`  
		Last Modified: Tue, 17 Jul 2018 15:13:30 GMT  
		Size: 200.6 MB (200617675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96237e52d6f5ddf065fe0997e5cc990bb4f2ecea1c69f077cbf205e2c3b252c8`  
		Last Modified: Fri, 03 Aug 2018 11:35:42 GMT  
		Size: 150.6 MB (150634023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.28-stretch` - linux; 386

```console
$ docker pull rust@sha256:aede4e7fec486326ab53fc5e60e2ae4b28119b01e68502db25c74606af42d2d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **547.9 MB (547873597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8f093e73a204173acf71a72704bb4e15baf6b4e8d08e6ffc7d3afb59e90bf38`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:34:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:34:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:35:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:38:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Aug 2018 11:50:13 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:51:09 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55059f59399b1edb44f6fccf01b4b41c46365022205a35f92fa4aee831f1bac`  
		Last Modified: Tue, 17 Jul 2018 15:15:31 GMT  
		Size: 10.8 MB (10752710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b748c8a9e197a5c36217dc0236e60923d398eef3c44073cffeed563cb61421c3`  
		Last Modified: Tue, 17 Jul 2018 15:15:28 GMT  
		Size: 4.6 MB (4555355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33fbb92cee00a6946f3439c773b2a26dfb2db55c4c789ca3e7b53c3c7840823`  
		Last Modified: Tue, 17 Jul 2018 15:16:38 GMT  
		Size: 51.6 MB (51592718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a0578b14037a0f8bdb93132eb6a4fe86133b55a4aa25ac5f97a9872020c7777`  
		Last Modified: Tue, 17 Jul 2018 15:18:57 GMT  
		Size: 218.3 MB (218257626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7595598dcb532a0b59215eb962b9bb6c12d794d9e2b38cf730819f741764c6`  
		Last Modified: Fri, 03 Aug 2018 11:58:56 GMT  
		Size: 216.7 MB (216677666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1-jessie`

```console
$ docker pull rust@sha256:3b65997f24717d8e6af4e5c0931f281f485a74bd94dc3d81c148d41d139bf11b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `rust:1-jessie` - linux; amd64

```console
$ docker pull rust@sha256:92f99233126dabdc56b0913a7352ff31298b1e07afaf2391d044cd996c2901a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **460.0 MB (460048091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d875491c51c10d04e0fb9147da456af523628af1dcf99aaec449fd8938f7378e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 08:16:20 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Wed, 05 Sep 2018 08:16:47 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0161892996fce0b1364bbe5d64d5271e68baac07ff66ec20c6e609bca476811a`  
		Last Modified: Wed, 05 Sep 2018 08:21:45 GMT  
		Size: 213.9 MB (213854432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-jessie` - linux; arm variant v7

```console
$ docker pull rust@sha256:f3ef7f05e2440a3e16e1b70ba5bd4ae24489442eb4f5248b7d4afc4f9ebcc5cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **373.0 MB (373005362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96c7b35678f9f8f2b166278049fc19ff757eae3b7dbd8a17e7bc32b418c95ab9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 11:59:28 GMT
ADD file:b6521e3d1f270115e5b6c8df3fb62b87aae252b99045c6884f1c071d88fecf10 in / 
# Tue, 17 Jul 2018 11:59:35 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:40:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:40:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 13:41:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:43:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Aug 2018 12:14:52 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 12:15:14 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:fbd7fa58000c551825cee932912ff0e71b08d10d3a21e72fa231f872c5ec3109`  
		Last Modified: Tue, 17 Jul 2018 12:10:53 GMT  
		Size: 50.2 MB (50187773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d9a9aa87bb2d7aaaef5230826591f3a257cdde7443239673f8a87f99ee7ffa`  
		Last Modified: Tue, 17 Jul 2018 14:06:05 GMT  
		Size: 16.7 MB (16712260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12745f5f1fe2c0c7e66de9818fd2e49a955fd18db2ccd7f512bbefacbbd8d3b`  
		Last Modified: Tue, 17 Jul 2018 14:06:43 GMT  
		Size: 39.8 MB (39763909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e00ffbabf923fa03f155489011edc7e3f5dadcef3d3268d6c3bc54c04d14fa`  
		Last Modified: Tue, 17 Jul 2018 14:07:33 GMT  
		Size: 114.1 MB (114082976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb15e2d2eedeebd8326a02ee8118ecfe03e64a2eeb29f30caab85c24a128a92d`  
		Last Modified: Fri, 03 Aug 2018 12:20:13 GMT  
		Size: 152.3 MB (152258444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-jessie` - linux; 386

```console
$ docker pull rust@sha256:d2cd20f0925c2479fd3c75b3ae306b88a6b5d1c1a272532d87bcbaf16632c871
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **470.1 MB (470112684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25bbeccf5340be553e48ab2165090a2b02aa45f963d5aaa219c8ea1d89860335`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:41:14 GMT
ADD file:edf13e4ea5255fbdbe91ff11bf281f8dc1ed1790ea095ab1ff341f0abc03f58c in / 
# Tue, 17 Jul 2018 10:41:14 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:25:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:25:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:27:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:30:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Aug 2018 11:53:25 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:54:16 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:357075fdb6ed4cabaab3293713922024245238f5596815e10a36b24c0a498f08`  
		Last Modified: Tue, 17 Jul 2018 10:56:53 GMT  
		Size: 54.5 MB (54483269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61274d86633cfcbd74890e3b94b540ad3cdbcb6a769aa68579f642fd13a32eb1`  
		Last Modified: Tue, 17 Jul 2018 15:08:53 GMT  
		Size: 19.8 MB (19832967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:501abb8e70591a1130105f440ab6d42bf38283ba8d4078896dde609700fdc926`  
		Last Modified: Tue, 17 Jul 2018 15:09:43 GMT  
		Size: 43.9 MB (43946227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b6051d7512c1bb08bb453f73126eae548545c7ec84c2822943b1b6907ab3ef`  
		Last Modified: Tue, 17 Jul 2018 15:11:11 GMT  
		Size: 135.2 MB (135173578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96cfaa09d27bc1d35e4f35148e9b545b409183ad2a324906b545be7a6cdef9b`  
		Last Modified: Fri, 03 Aug 2018 12:06:41 GMT  
		Size: 216.7 MB (216676643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1-slim`

```console
$ docker pull rust@sha256:33a0519f2b6c24577867c76dacff39fac472099d841bd18526f45bff004a4925
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1-slim` - linux; amd64

```console
$ docker pull rust@sha256:a9225488dd58672d4b24106d8f27f132296494d386fedb2a2b723d484bb291c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.2 MB (274197592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d15e07d28e019fdc2fe3d520fb08e4a1189f746a5d95be808a410b48a3005ca`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:15:14 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Wed, 05 Sep 2018 08:16:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bacc369f2c765b6bccecce41253197af891e31eb5fd84750f26dd6981beec721`  
		Last Modified: Wed, 05 Sep 2018 08:20:23 GMT  
		Size: 251.7 MB (251711627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-slim` - linux; arm variant v7

```console
$ docker pull rust@sha256:dc3d506ac98e412740e0c3c193557fe649c8c375c9dce60291b3a369b69afd21
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199575663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2126fc03bf4cbec538bec90bbd55769b0ce2e93899622afd6aefc2c1be75cfa`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Fri, 03 Aug 2018 12:14:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 12:14:45 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612a364e8bf79cb96e50510d078b715dd093ed26ed3d42bc145b05ee5185072f`  
		Last Modified: Fri, 03 Aug 2018 12:19:01 GMT  
		Size: 180.3 MB (180305480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-slim` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:028dca7efa0ee542ca88fd9fbc27c86f30dd970203b3858b7a541de04da9e5a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.6 MB (201582380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1ae4430fe5092950b3c6569ba342c749bbe7228a422a3bcad907bc05598e916`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Fri, 03 Aug 2018 11:33:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:34:26 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde0fd2e5590b5d262eb3eb908f99763fb7b41cc151b438eb6c9f50d7a253508`  
		Last Modified: Fri, 03 Aug 2018 11:39:11 GMT  
		Size: 181.3 MB (181250733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-slim` - linux; 386

```console
$ docker pull rust@sha256:a19f6acd68686107b0f43c79f43e0d8ca230331ec88364d2facd99ee9a6c3c1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.7 MB (281674075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:774c75082272b614aa638b9269fbde45cee098351b18be3b105dc3b43896687c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Fri, 03 Aug 2018 11:51:32 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:52:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b843d1926a8f846d6cb3469ec9f67c578ab7e51b7430d442999d30b60b2b0142`  
		Last Modified: Fri, 03 Aug 2018 12:03:02 GMT  
		Size: 258.5 MB (258547698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1-slim-jessie`

```console
$ docker pull rust@sha256:ae60f560236edb5303ee634e6366732658f7f191b70f96943f5673795ce884b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `rust:1-slim-jessie` - linux; amd64

```console
$ docker pull rust@sha256:cd8dd3b5cc62fdeb3a699c01909474d8b2d732f4e4a1df32f7a611fff63b6973
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.1 MB (274094336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d91ac5bccef7fbecaf701f20585fb637605cf2a9a2e4152d8ca57bcdfc1162d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:16:59 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Wed, 05 Sep 2018 08:18:02 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:930b1ecf8ede92d7eb46c03be72246cabe1bcf1311a1af702e8b5ebf33c3c340`  
		Last Modified: Wed, 05 Sep 2018 08:23:01 GMT  
		Size: 244.0 MB (243973772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-slim-jessie` - linux; arm variant v7

```console
$ docker pull rust@sha256:84eeab80574b301b9365631d151c42801c0a35e32d3b02a6513432f4bb64f427
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 MB (201277863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:946cfbe7e7e065d034839616f4ebe4dd73693dcdc1fc68b191622e87eee537ee`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:00:33 GMT
ADD file:32d146255a9263416cb50a32e6079a40852e3ae1db6b0e30134cde4d24917309 in / 
# Tue, 17 Jul 2018 12:00:36 GMT
CMD ["bash"]
# Fri, 03 Aug 2018 12:15:22 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 12:16:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:093a70fc20ffe401f4cf25ac9cf7d08c8d511df67aba90ee8c4eec4f8cb2c67e`  
		Last Modified: Tue, 17 Jul 2018 12:12:07 GMT  
		Size: 26.3 MB (26286960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade36aac4baf0237232e69d34cddbaaba4b74b641fb165b542f2495d48146a55`  
		Last Modified: Fri, 03 Aug 2018 12:21:15 GMT  
		Size: 175.0 MB (174990903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-slim-jessie` - linux; 386

```console
$ docker pull rust@sha256:cf23171d3a9a16deccee476b421fccfd369d5f0e98db007ae641881294e4ba64
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.9 MB (281901804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d751fc3f71138f6dd33968dc267d1d5646c7de1b4a7f7f2cbfe554d6fb41b13`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:42:32 GMT
ADD file:9f28594bd37e3d6105c4b8e438188e5f1c270ba5fa552b2b4969a43a0a84730d in / 
# Tue, 17 Jul 2018 10:42:35 GMT
CMD ["bash"]
# Fri, 03 Aug 2018 11:54:54 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:57:13 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:08ccc2995d065af2cd0d4ce4d10d2409e68dcfd7b947820dea2d5371344277e3`  
		Last Modified: Tue, 17 Jul 2018 10:58:32 GMT  
		Size: 30.3 MB (30270010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56308966da8022069999e6844402a55e2be921b9383c169cfaa2a8a74eb0b5d`  
		Last Modified: Fri, 03 Aug 2018 12:09:29 GMT  
		Size: 251.6 MB (251631794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1-slim-stretch`

```console
$ docker pull rust@sha256:33a0519f2b6c24577867c76dacff39fac472099d841bd18526f45bff004a4925
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1-slim-stretch` - linux; amd64

```console
$ docker pull rust@sha256:a9225488dd58672d4b24106d8f27f132296494d386fedb2a2b723d484bb291c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.2 MB (274197592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d15e07d28e019fdc2fe3d520fb08e4a1189f746a5d95be808a410b48a3005ca`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:15:14 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Wed, 05 Sep 2018 08:16:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bacc369f2c765b6bccecce41253197af891e31eb5fd84750f26dd6981beec721`  
		Last Modified: Wed, 05 Sep 2018 08:20:23 GMT  
		Size: 251.7 MB (251711627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-slim-stretch` - linux; arm variant v7

```console
$ docker pull rust@sha256:dc3d506ac98e412740e0c3c193557fe649c8c375c9dce60291b3a369b69afd21
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199575663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2126fc03bf4cbec538bec90bbd55769b0ce2e93899622afd6aefc2c1be75cfa`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Fri, 03 Aug 2018 12:14:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 12:14:45 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612a364e8bf79cb96e50510d078b715dd093ed26ed3d42bc145b05ee5185072f`  
		Last Modified: Fri, 03 Aug 2018 12:19:01 GMT  
		Size: 180.3 MB (180305480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-slim-stretch` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:028dca7efa0ee542ca88fd9fbc27c86f30dd970203b3858b7a541de04da9e5a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.6 MB (201582380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1ae4430fe5092950b3c6569ba342c749bbe7228a422a3bcad907bc05598e916`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Fri, 03 Aug 2018 11:33:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:34:26 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde0fd2e5590b5d262eb3eb908f99763fb7b41cc151b438eb6c9f50d7a253508`  
		Last Modified: Fri, 03 Aug 2018 11:39:11 GMT  
		Size: 181.3 MB (181250733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-slim-stretch` - linux; 386

```console
$ docker pull rust@sha256:a19f6acd68686107b0f43c79f43e0d8ca230331ec88364d2facd99ee9a6c3c1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.7 MB (281674075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:774c75082272b614aa638b9269fbde45cee098351b18be3b105dc3b43896687c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Fri, 03 Aug 2018 11:51:32 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:52:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b843d1926a8f846d6cb3469ec9f67c578ab7e51b7430d442999d30b60b2b0142`  
		Last Modified: Fri, 03 Aug 2018 12:03:02 GMT  
		Size: 258.5 MB (258547698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1-stretch`

```console
$ docker pull rust@sha256:d0f857cb3634f27d829a54fb2dd038c7cfdb7a131e6448fab9251306d6470cb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1-stretch` - linux; amd64

```console
$ docker pull rust@sha256:3032c3f2fe741a5f4832d593a363790dfe14718c5caf0e77ff25b6f2b4edd5a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **537.5 MB (537515417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:156ba9bbcf99933b905887268cbe0cf72d0d70e19f5da300996b75b70b609749`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:34:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:36:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 08:14:19 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Wed, 05 Sep 2018 08:14:59 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ae6b477848b6e03aad8ec9c74f1fb80364e5c8b5fe9ca3ec793df84247f027`  
		Last Modified: Tue, 04 Sep 2018 22:53:04 GMT  
		Size: 50.1 MB (50065233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bdf9e584cc733044425cc166ce90743b25f7003cb06408b905030f76200b2a`  
		Last Modified: Tue, 04 Sep 2018 22:53:52 GMT  
		Size: 213.2 MB (213208939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5cea304355c8a1e7546a6036d1601ff1c8f115b4813b6301956198532eb00a`  
		Last Modified: Wed, 05 Sep 2018 08:19:00 GMT  
		Size: 213.9 MB (213854594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-stretch` - linux; arm variant v7

```console
$ docker pull rust@sha256:4140e07370c12db4dc3a33e510b72bcbea22a18503ce3e368bd08181ff1431dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **448.0 MB (448035981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa450e6ec24242aad2bf4ca3c6769fb27e325614fb8c26a2da78bf4ea208ef70`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:05:25 GMT
ADD file:77cbe27c4436cc4c9d81bee6c5ae0fee0c6d1708813d34abd2af2d3ebd7d96a5 in / 
# Tue, 17 Jul 2018 12:05:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:46:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 13:47:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:49:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Aug 2018 12:13:15 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 12:13:57 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:a92bc499a4699bc1d9bd6631daec00b7b440346221ce91af635e3460f7d4d70b`  
		Last Modified: Tue, 17 Jul 2018 12:17:32 GMT  
		Size: 42.1 MB (42060835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56e34dc5db45e25c590c9a353c3562d66546b06312f418f9aae4661c28ee94f`  
		Last Modified: Tue, 17 Jul 2018 14:10:12 GMT  
		Size: 9.4 MB (9440199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948d2574fcb06c4081812a267179437a8d624eba8741a8fb5a6e3ef655c3dcff`  
		Last Modified: Tue, 17 Jul 2018 14:10:10 GMT  
		Size: 3.9 MB (3912954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ced04c5b3fc619ca9252df05a702d37000cbcc3fbac10e5e485428deba85ae`  
		Last Modified: Tue, 17 Jul 2018 14:10:55 GMT  
		Size: 46.4 MB (46380475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb38878a7d651556b67958bf17f303eaa9d80fd58ef30ddad40818a750db4c2`  
		Last Modified: Tue, 17 Jul 2018 14:12:09 GMT  
		Size: 194.0 MB (193983246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223e37f886ddf7381fe9967d5748b96ce4ae4d56ca9b234c0d35deb50a20ec46`  
		Last Modified: Fri, 03 Aug 2018 12:17:40 GMT  
		Size: 152.3 MB (152258272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-stretch` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:d10d4cdd69705e6fdb48a0f1f13b0eb1acc4302f3666249c955ec6e8b2b6ac54
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **456.2 MB (456157357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8f86f6e38942357171897bb82cc3fd4e403d4f912dda4c5743e049b4f03d0af`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:51:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:54:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:02:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Aug 2018 11:32:02 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:32:37 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf842c718cc953be45905967fc6a0114f55314ce412b80107e20d8b43fdcdb`  
		Last Modified: Tue, 17 Jul 2018 15:10:44 GMT  
		Size: 9.7 MB (9690273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317d79a9c0a5c766d03c1c253fa09f645ed7321dc3a80e0ae33599958677cd1d`  
		Last Modified: Tue, 17 Jul 2018 15:10:41 GMT  
		Size: 4.1 MB (4088491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a390be6b2f0349f7391582a305479410441bcb0329b8daa800d13f3921fd39b7`  
		Last Modified: Tue, 17 Jul 2018 15:11:46 GMT  
		Size: 48.0 MB (48003327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ed075d58fff4f9897e8a3191ca7e66c3f9ac907c59cc4ab05312f240370617`  
		Last Modified: Tue, 17 Jul 2018 15:13:30 GMT  
		Size: 200.6 MB (200617675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96237e52d6f5ddf065fe0997e5cc990bb4f2ecea1c69f077cbf205e2c3b252c8`  
		Last Modified: Fri, 03 Aug 2018 11:35:42 GMT  
		Size: 150.6 MB (150634023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-stretch` - linux; 386

```console
$ docker pull rust@sha256:aede4e7fec486326ab53fc5e60e2ae4b28119b01e68502db25c74606af42d2d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **547.9 MB (547873597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8f093e73a204173acf71a72704bb4e15baf6b4e8d08e6ffc7d3afb59e90bf38`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:34:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:34:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:35:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:38:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Aug 2018 11:50:13 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:51:09 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55059f59399b1edb44f6fccf01b4b41c46365022205a35f92fa4aee831f1bac`  
		Last Modified: Tue, 17 Jul 2018 15:15:31 GMT  
		Size: 10.8 MB (10752710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b748c8a9e197a5c36217dc0236e60923d398eef3c44073cffeed563cb61421c3`  
		Last Modified: Tue, 17 Jul 2018 15:15:28 GMT  
		Size: 4.6 MB (4555355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33fbb92cee00a6946f3439c773b2a26dfb2db55c4c789ca3e7b53c3c7840823`  
		Last Modified: Tue, 17 Jul 2018 15:16:38 GMT  
		Size: 51.6 MB (51592718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a0578b14037a0f8bdb93132eb6a4fe86133b55a4aa25ac5f97a9872020c7777`  
		Last Modified: Tue, 17 Jul 2018 15:18:57 GMT  
		Size: 218.3 MB (218257626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7595598dcb532a0b59215eb962b9bb6c12d794d9e2b38cf730819f741764c6`  
		Last Modified: Fri, 03 Aug 2018 11:58:56 GMT  
		Size: 216.7 MB (216677666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:jessie`

```console
$ docker pull rust@sha256:3b65997f24717d8e6af4e5c0931f281f485a74bd94dc3d81c148d41d139bf11b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `rust:jessie` - linux; amd64

```console
$ docker pull rust@sha256:92f99233126dabdc56b0913a7352ff31298b1e07afaf2391d044cd996c2901a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **460.0 MB (460048091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d875491c51c10d04e0fb9147da456af523628af1dcf99aaec449fd8938f7378e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 08:16:20 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Wed, 05 Sep 2018 08:16:47 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0161892996fce0b1364bbe5d64d5271e68baac07ff66ec20c6e609bca476811a`  
		Last Modified: Wed, 05 Sep 2018 08:21:45 GMT  
		Size: 213.9 MB (213854432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:jessie` - linux; arm variant v7

```console
$ docker pull rust@sha256:f3ef7f05e2440a3e16e1b70ba5bd4ae24489442eb4f5248b7d4afc4f9ebcc5cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **373.0 MB (373005362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96c7b35678f9f8f2b166278049fc19ff757eae3b7dbd8a17e7bc32b418c95ab9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 11:59:28 GMT
ADD file:b6521e3d1f270115e5b6c8df3fb62b87aae252b99045c6884f1c071d88fecf10 in / 
# Tue, 17 Jul 2018 11:59:35 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:40:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:40:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 13:41:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:43:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Aug 2018 12:14:52 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 12:15:14 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:fbd7fa58000c551825cee932912ff0e71b08d10d3a21e72fa231f872c5ec3109`  
		Last Modified: Tue, 17 Jul 2018 12:10:53 GMT  
		Size: 50.2 MB (50187773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d9a9aa87bb2d7aaaef5230826591f3a257cdde7443239673f8a87f99ee7ffa`  
		Last Modified: Tue, 17 Jul 2018 14:06:05 GMT  
		Size: 16.7 MB (16712260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12745f5f1fe2c0c7e66de9818fd2e49a955fd18db2ccd7f512bbefacbbd8d3b`  
		Last Modified: Tue, 17 Jul 2018 14:06:43 GMT  
		Size: 39.8 MB (39763909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e00ffbabf923fa03f155489011edc7e3f5dadcef3d3268d6c3bc54c04d14fa`  
		Last Modified: Tue, 17 Jul 2018 14:07:33 GMT  
		Size: 114.1 MB (114082976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb15e2d2eedeebd8326a02ee8118ecfe03e64a2eeb29f30caab85c24a128a92d`  
		Last Modified: Fri, 03 Aug 2018 12:20:13 GMT  
		Size: 152.3 MB (152258444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:jessie` - linux; 386

```console
$ docker pull rust@sha256:d2cd20f0925c2479fd3c75b3ae306b88a6b5d1c1a272532d87bcbaf16632c871
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **470.1 MB (470112684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25bbeccf5340be553e48ab2165090a2b02aa45f963d5aaa219c8ea1d89860335`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:41:14 GMT
ADD file:edf13e4ea5255fbdbe91ff11bf281f8dc1ed1790ea095ab1ff341f0abc03f58c in / 
# Tue, 17 Jul 2018 10:41:14 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:25:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:25:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:27:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:30:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Aug 2018 11:53:25 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:54:16 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:357075fdb6ed4cabaab3293713922024245238f5596815e10a36b24c0a498f08`  
		Last Modified: Tue, 17 Jul 2018 10:56:53 GMT  
		Size: 54.5 MB (54483269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61274d86633cfcbd74890e3b94b540ad3cdbcb6a769aa68579f642fd13a32eb1`  
		Last Modified: Tue, 17 Jul 2018 15:08:53 GMT  
		Size: 19.8 MB (19832967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:501abb8e70591a1130105f440ab6d42bf38283ba8d4078896dde609700fdc926`  
		Last Modified: Tue, 17 Jul 2018 15:09:43 GMT  
		Size: 43.9 MB (43946227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b6051d7512c1bb08bb453f73126eae548545c7ec84c2822943b1b6907ab3ef`  
		Last Modified: Tue, 17 Jul 2018 15:11:11 GMT  
		Size: 135.2 MB (135173578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96cfaa09d27bc1d35e4f35148e9b545b409183ad2a324906b545be7a6cdef9b`  
		Last Modified: Fri, 03 Aug 2018 12:06:41 GMT  
		Size: 216.7 MB (216676643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:latest`

```console
$ docker pull rust@sha256:d0f857cb3634f27d829a54fb2dd038c7cfdb7a131e6448fab9251306d6470cb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:latest` - linux; amd64

```console
$ docker pull rust@sha256:3032c3f2fe741a5f4832d593a363790dfe14718c5caf0e77ff25b6f2b4edd5a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **537.5 MB (537515417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:156ba9bbcf99933b905887268cbe0cf72d0d70e19f5da300996b75b70b609749`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:34:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:36:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 08:14:19 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Wed, 05 Sep 2018 08:14:59 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ae6b477848b6e03aad8ec9c74f1fb80364e5c8b5fe9ca3ec793df84247f027`  
		Last Modified: Tue, 04 Sep 2018 22:53:04 GMT  
		Size: 50.1 MB (50065233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bdf9e584cc733044425cc166ce90743b25f7003cb06408b905030f76200b2a`  
		Last Modified: Tue, 04 Sep 2018 22:53:52 GMT  
		Size: 213.2 MB (213208939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5cea304355c8a1e7546a6036d1601ff1c8f115b4813b6301956198532eb00a`  
		Last Modified: Wed, 05 Sep 2018 08:19:00 GMT  
		Size: 213.9 MB (213854594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:latest` - linux; arm variant v7

```console
$ docker pull rust@sha256:4140e07370c12db4dc3a33e510b72bcbea22a18503ce3e368bd08181ff1431dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **448.0 MB (448035981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa450e6ec24242aad2bf4ca3c6769fb27e325614fb8c26a2da78bf4ea208ef70`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:05:25 GMT
ADD file:77cbe27c4436cc4c9d81bee6c5ae0fee0c6d1708813d34abd2af2d3ebd7d96a5 in / 
# Tue, 17 Jul 2018 12:05:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:46:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 13:47:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:49:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Aug 2018 12:13:15 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 12:13:57 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:a92bc499a4699bc1d9bd6631daec00b7b440346221ce91af635e3460f7d4d70b`  
		Last Modified: Tue, 17 Jul 2018 12:17:32 GMT  
		Size: 42.1 MB (42060835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56e34dc5db45e25c590c9a353c3562d66546b06312f418f9aae4661c28ee94f`  
		Last Modified: Tue, 17 Jul 2018 14:10:12 GMT  
		Size: 9.4 MB (9440199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948d2574fcb06c4081812a267179437a8d624eba8741a8fb5a6e3ef655c3dcff`  
		Last Modified: Tue, 17 Jul 2018 14:10:10 GMT  
		Size: 3.9 MB (3912954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ced04c5b3fc619ca9252df05a702d37000cbcc3fbac10e5e485428deba85ae`  
		Last Modified: Tue, 17 Jul 2018 14:10:55 GMT  
		Size: 46.4 MB (46380475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb38878a7d651556b67958bf17f303eaa9d80fd58ef30ddad40818a750db4c2`  
		Last Modified: Tue, 17 Jul 2018 14:12:09 GMT  
		Size: 194.0 MB (193983246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223e37f886ddf7381fe9967d5748b96ce4ae4d56ca9b234c0d35deb50a20ec46`  
		Last Modified: Fri, 03 Aug 2018 12:17:40 GMT  
		Size: 152.3 MB (152258272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:latest` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:d10d4cdd69705e6fdb48a0f1f13b0eb1acc4302f3666249c955ec6e8b2b6ac54
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **456.2 MB (456157357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8f86f6e38942357171897bb82cc3fd4e403d4f912dda4c5743e049b4f03d0af`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:51:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:54:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:02:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Aug 2018 11:32:02 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:32:37 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf842c718cc953be45905967fc6a0114f55314ce412b80107e20d8b43fdcdb`  
		Last Modified: Tue, 17 Jul 2018 15:10:44 GMT  
		Size: 9.7 MB (9690273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317d79a9c0a5c766d03c1c253fa09f645ed7321dc3a80e0ae33599958677cd1d`  
		Last Modified: Tue, 17 Jul 2018 15:10:41 GMT  
		Size: 4.1 MB (4088491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a390be6b2f0349f7391582a305479410441bcb0329b8daa800d13f3921fd39b7`  
		Last Modified: Tue, 17 Jul 2018 15:11:46 GMT  
		Size: 48.0 MB (48003327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ed075d58fff4f9897e8a3191ca7e66c3f9ac907c59cc4ab05312f240370617`  
		Last Modified: Tue, 17 Jul 2018 15:13:30 GMT  
		Size: 200.6 MB (200617675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96237e52d6f5ddf065fe0997e5cc990bb4f2ecea1c69f077cbf205e2c3b252c8`  
		Last Modified: Fri, 03 Aug 2018 11:35:42 GMT  
		Size: 150.6 MB (150634023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:latest` - linux; 386

```console
$ docker pull rust@sha256:aede4e7fec486326ab53fc5e60e2ae4b28119b01e68502db25c74606af42d2d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **547.9 MB (547873597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8f093e73a204173acf71a72704bb4e15baf6b4e8d08e6ffc7d3afb59e90bf38`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:34:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:34:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:35:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:38:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Aug 2018 11:50:13 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:51:09 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55059f59399b1edb44f6fccf01b4b41c46365022205a35f92fa4aee831f1bac`  
		Last Modified: Tue, 17 Jul 2018 15:15:31 GMT  
		Size: 10.8 MB (10752710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b748c8a9e197a5c36217dc0236e60923d398eef3c44073cffeed563cb61421c3`  
		Last Modified: Tue, 17 Jul 2018 15:15:28 GMT  
		Size: 4.6 MB (4555355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33fbb92cee00a6946f3439c773b2a26dfb2db55c4c789ca3e7b53c3c7840823`  
		Last Modified: Tue, 17 Jul 2018 15:16:38 GMT  
		Size: 51.6 MB (51592718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a0578b14037a0f8bdb93132eb6a4fe86133b55a4aa25ac5f97a9872020c7777`  
		Last Modified: Tue, 17 Jul 2018 15:18:57 GMT  
		Size: 218.3 MB (218257626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7595598dcb532a0b59215eb962b9bb6c12d794d9e2b38cf730819f741764c6`  
		Last Modified: Fri, 03 Aug 2018 11:58:56 GMT  
		Size: 216.7 MB (216677666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:slim`

```console
$ docker pull rust@sha256:33a0519f2b6c24577867c76dacff39fac472099d841bd18526f45bff004a4925
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:slim` - linux; amd64

```console
$ docker pull rust@sha256:a9225488dd58672d4b24106d8f27f132296494d386fedb2a2b723d484bb291c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.2 MB (274197592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d15e07d28e019fdc2fe3d520fb08e4a1189f746a5d95be808a410b48a3005ca`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:15:14 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Wed, 05 Sep 2018 08:16:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bacc369f2c765b6bccecce41253197af891e31eb5fd84750f26dd6981beec721`  
		Last Modified: Wed, 05 Sep 2018 08:20:23 GMT  
		Size: 251.7 MB (251711627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:slim` - linux; arm variant v7

```console
$ docker pull rust@sha256:dc3d506ac98e412740e0c3c193557fe649c8c375c9dce60291b3a369b69afd21
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199575663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2126fc03bf4cbec538bec90bbd55769b0ce2e93899622afd6aefc2c1be75cfa`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Fri, 03 Aug 2018 12:14:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 12:14:45 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612a364e8bf79cb96e50510d078b715dd093ed26ed3d42bc145b05ee5185072f`  
		Last Modified: Fri, 03 Aug 2018 12:19:01 GMT  
		Size: 180.3 MB (180305480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:slim` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:028dca7efa0ee542ca88fd9fbc27c86f30dd970203b3858b7a541de04da9e5a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.6 MB (201582380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1ae4430fe5092950b3c6569ba342c749bbe7228a422a3bcad907bc05598e916`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Fri, 03 Aug 2018 11:33:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:34:26 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde0fd2e5590b5d262eb3eb908f99763fb7b41cc151b438eb6c9f50d7a253508`  
		Last Modified: Fri, 03 Aug 2018 11:39:11 GMT  
		Size: 181.3 MB (181250733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:slim` - linux; 386

```console
$ docker pull rust@sha256:a19f6acd68686107b0f43c79f43e0d8ca230331ec88364d2facd99ee9a6c3c1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.7 MB (281674075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:774c75082272b614aa638b9269fbde45cee098351b18be3b105dc3b43896687c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Fri, 03 Aug 2018 11:51:32 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:52:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b843d1926a8f846d6cb3469ec9f67c578ab7e51b7430d442999d30b60b2b0142`  
		Last Modified: Fri, 03 Aug 2018 12:03:02 GMT  
		Size: 258.5 MB (258547698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:slim-jessie`

```console
$ docker pull rust@sha256:ae60f560236edb5303ee634e6366732658f7f191b70f96943f5673795ce884b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `rust:slim-jessie` - linux; amd64

```console
$ docker pull rust@sha256:cd8dd3b5cc62fdeb3a699c01909474d8b2d732f4e4a1df32f7a611fff63b6973
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.1 MB (274094336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d91ac5bccef7fbecaf701f20585fb637605cf2a9a2e4152d8ca57bcdfc1162d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:16:59 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Wed, 05 Sep 2018 08:18:02 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:930b1ecf8ede92d7eb46c03be72246cabe1bcf1311a1af702e8b5ebf33c3c340`  
		Last Modified: Wed, 05 Sep 2018 08:23:01 GMT  
		Size: 244.0 MB (243973772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:slim-jessie` - linux; arm variant v7

```console
$ docker pull rust@sha256:84eeab80574b301b9365631d151c42801c0a35e32d3b02a6513432f4bb64f427
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 MB (201277863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:946cfbe7e7e065d034839616f4ebe4dd73693dcdc1fc68b191622e87eee537ee`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:00:33 GMT
ADD file:32d146255a9263416cb50a32e6079a40852e3ae1db6b0e30134cde4d24917309 in / 
# Tue, 17 Jul 2018 12:00:36 GMT
CMD ["bash"]
# Fri, 03 Aug 2018 12:15:22 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 12:16:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:093a70fc20ffe401f4cf25ac9cf7d08c8d511df67aba90ee8c4eec4f8cb2c67e`  
		Last Modified: Tue, 17 Jul 2018 12:12:07 GMT  
		Size: 26.3 MB (26286960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade36aac4baf0237232e69d34cddbaaba4b74b641fb165b542f2495d48146a55`  
		Last Modified: Fri, 03 Aug 2018 12:21:15 GMT  
		Size: 175.0 MB (174990903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:slim-jessie` - linux; 386

```console
$ docker pull rust@sha256:cf23171d3a9a16deccee476b421fccfd369d5f0e98db007ae641881294e4ba64
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.9 MB (281901804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d751fc3f71138f6dd33968dc267d1d5646c7de1b4a7f7f2cbfe554d6fb41b13`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:42:32 GMT
ADD file:9f28594bd37e3d6105c4b8e438188e5f1c270ba5fa552b2b4969a43a0a84730d in / 
# Tue, 17 Jul 2018 10:42:35 GMT
CMD ["bash"]
# Fri, 03 Aug 2018 11:54:54 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:57:13 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:08ccc2995d065af2cd0d4ce4d10d2409e68dcfd7b947820dea2d5371344277e3`  
		Last Modified: Tue, 17 Jul 2018 10:58:32 GMT  
		Size: 30.3 MB (30270010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56308966da8022069999e6844402a55e2be921b9383c169cfaa2a8a74eb0b5d`  
		Last Modified: Fri, 03 Aug 2018 12:09:29 GMT  
		Size: 251.6 MB (251631794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:slim-stretch`

```console
$ docker pull rust@sha256:33a0519f2b6c24577867c76dacff39fac472099d841bd18526f45bff004a4925
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:slim-stretch` - linux; amd64

```console
$ docker pull rust@sha256:a9225488dd58672d4b24106d8f27f132296494d386fedb2a2b723d484bb291c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.2 MB (274197592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d15e07d28e019fdc2fe3d520fb08e4a1189f746a5d95be808a410b48a3005ca`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:15:14 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Wed, 05 Sep 2018 08:16:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bacc369f2c765b6bccecce41253197af891e31eb5fd84750f26dd6981beec721`  
		Last Modified: Wed, 05 Sep 2018 08:20:23 GMT  
		Size: 251.7 MB (251711627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:slim-stretch` - linux; arm variant v7

```console
$ docker pull rust@sha256:dc3d506ac98e412740e0c3c193557fe649c8c375c9dce60291b3a369b69afd21
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199575663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2126fc03bf4cbec538bec90bbd55769b0ce2e93899622afd6aefc2c1be75cfa`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Fri, 03 Aug 2018 12:14:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 12:14:45 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612a364e8bf79cb96e50510d078b715dd093ed26ed3d42bc145b05ee5185072f`  
		Last Modified: Fri, 03 Aug 2018 12:19:01 GMT  
		Size: 180.3 MB (180305480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:slim-stretch` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:028dca7efa0ee542ca88fd9fbc27c86f30dd970203b3858b7a541de04da9e5a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.6 MB (201582380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1ae4430fe5092950b3c6569ba342c749bbe7228a422a3bcad907bc05598e916`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Fri, 03 Aug 2018 11:33:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:34:26 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde0fd2e5590b5d262eb3eb908f99763fb7b41cc151b438eb6c9f50d7a253508`  
		Last Modified: Fri, 03 Aug 2018 11:39:11 GMT  
		Size: 181.3 MB (181250733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:slim-stretch` - linux; 386

```console
$ docker pull rust@sha256:a19f6acd68686107b0f43c79f43e0d8ca230331ec88364d2facd99ee9a6c3c1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.7 MB (281674075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:774c75082272b614aa638b9269fbde45cee098351b18be3b105dc3b43896687c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Fri, 03 Aug 2018 11:51:32 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:52:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b843d1926a8f846d6cb3469ec9f67c578ab7e51b7430d442999d30b60b2b0142`  
		Last Modified: Fri, 03 Aug 2018 12:03:02 GMT  
		Size: 258.5 MB (258547698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:stretch`

```console
$ docker pull rust@sha256:d0f857cb3634f27d829a54fb2dd038c7cfdb7a131e6448fab9251306d6470cb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:stretch` - linux; amd64

```console
$ docker pull rust@sha256:3032c3f2fe741a5f4832d593a363790dfe14718c5caf0e77ff25b6f2b4edd5a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **537.5 MB (537515417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:156ba9bbcf99933b905887268cbe0cf72d0d70e19f5da300996b75b70b609749`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:34:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:36:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 08:14:19 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Wed, 05 Sep 2018 08:14:59 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ae6b477848b6e03aad8ec9c74f1fb80364e5c8b5fe9ca3ec793df84247f027`  
		Last Modified: Tue, 04 Sep 2018 22:53:04 GMT  
		Size: 50.1 MB (50065233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bdf9e584cc733044425cc166ce90743b25f7003cb06408b905030f76200b2a`  
		Last Modified: Tue, 04 Sep 2018 22:53:52 GMT  
		Size: 213.2 MB (213208939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5cea304355c8a1e7546a6036d1601ff1c8f115b4813b6301956198532eb00a`  
		Last Modified: Wed, 05 Sep 2018 08:19:00 GMT  
		Size: 213.9 MB (213854594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:stretch` - linux; arm variant v7

```console
$ docker pull rust@sha256:4140e07370c12db4dc3a33e510b72bcbea22a18503ce3e368bd08181ff1431dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **448.0 MB (448035981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa450e6ec24242aad2bf4ca3c6769fb27e325614fb8c26a2da78bf4ea208ef70`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:05:25 GMT
ADD file:77cbe27c4436cc4c9d81bee6c5ae0fee0c6d1708813d34abd2af2d3ebd7d96a5 in / 
# Tue, 17 Jul 2018 12:05:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:46:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 13:47:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:49:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Aug 2018 12:13:15 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 12:13:57 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:a92bc499a4699bc1d9bd6631daec00b7b440346221ce91af635e3460f7d4d70b`  
		Last Modified: Tue, 17 Jul 2018 12:17:32 GMT  
		Size: 42.1 MB (42060835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56e34dc5db45e25c590c9a353c3562d66546b06312f418f9aae4661c28ee94f`  
		Last Modified: Tue, 17 Jul 2018 14:10:12 GMT  
		Size: 9.4 MB (9440199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948d2574fcb06c4081812a267179437a8d624eba8741a8fb5a6e3ef655c3dcff`  
		Last Modified: Tue, 17 Jul 2018 14:10:10 GMT  
		Size: 3.9 MB (3912954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ced04c5b3fc619ca9252df05a702d37000cbcc3fbac10e5e485428deba85ae`  
		Last Modified: Tue, 17 Jul 2018 14:10:55 GMT  
		Size: 46.4 MB (46380475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb38878a7d651556b67958bf17f303eaa9d80fd58ef30ddad40818a750db4c2`  
		Last Modified: Tue, 17 Jul 2018 14:12:09 GMT  
		Size: 194.0 MB (193983246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223e37f886ddf7381fe9967d5748b96ce4ae4d56ca9b234c0d35deb50a20ec46`  
		Last Modified: Fri, 03 Aug 2018 12:17:40 GMT  
		Size: 152.3 MB (152258272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:stretch` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:d10d4cdd69705e6fdb48a0f1f13b0eb1acc4302f3666249c955ec6e8b2b6ac54
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **456.2 MB (456157357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8f86f6e38942357171897bb82cc3fd4e403d4f912dda4c5743e049b4f03d0af`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:51:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:54:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:02:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Aug 2018 11:32:02 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:32:37 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf842c718cc953be45905967fc6a0114f55314ce412b80107e20d8b43fdcdb`  
		Last Modified: Tue, 17 Jul 2018 15:10:44 GMT  
		Size: 9.7 MB (9690273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317d79a9c0a5c766d03c1c253fa09f645ed7321dc3a80e0ae33599958677cd1d`  
		Last Modified: Tue, 17 Jul 2018 15:10:41 GMT  
		Size: 4.1 MB (4088491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a390be6b2f0349f7391582a305479410441bcb0329b8daa800d13f3921fd39b7`  
		Last Modified: Tue, 17 Jul 2018 15:11:46 GMT  
		Size: 48.0 MB (48003327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ed075d58fff4f9897e8a3191ca7e66c3f9ac907c59cc4ab05312f240370617`  
		Last Modified: Tue, 17 Jul 2018 15:13:30 GMT  
		Size: 200.6 MB (200617675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96237e52d6f5ddf065fe0997e5cc990bb4f2ecea1c69f077cbf205e2c3b252c8`  
		Last Modified: Fri, 03 Aug 2018 11:35:42 GMT  
		Size: 150.6 MB (150634023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:stretch` - linux; 386

```console
$ docker pull rust@sha256:aede4e7fec486326ab53fc5e60e2ae4b28119b01e68502db25c74606af42d2d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **547.9 MB (547873597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8f093e73a204173acf71a72704bb4e15baf6b4e8d08e6ffc7d3afb59e90bf38`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:34:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:34:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:35:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:38:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Aug 2018 11:50:13 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.28.0
# Fri, 03 Aug 2018 11:51:09 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f69dafcca62fe70d7882113e21bb96a2cbdf4fc4636d25337d6de9191bdec8da' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='eee969b9fd128e8dc9b4ec44acde46735cf8e612d06495e9d022517849aba2d6' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='cdc48b7882582fd8475107a406dd86df85c7d72e5deea99ff8940c8e11531285' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='3bad3945452509ac28ba4113e198323daab57488d6885bb31ac30c9eecd88825' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.13.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55059f59399b1edb44f6fccf01b4b41c46365022205a35f92fa4aee831f1bac`  
		Last Modified: Tue, 17 Jul 2018 15:15:31 GMT  
		Size: 10.8 MB (10752710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b748c8a9e197a5c36217dc0236e60923d398eef3c44073cffeed563cb61421c3`  
		Last Modified: Tue, 17 Jul 2018 15:15:28 GMT  
		Size: 4.6 MB (4555355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33fbb92cee00a6946f3439c773b2a26dfb2db55c4c789ca3e7b53c3c7840823`  
		Last Modified: Tue, 17 Jul 2018 15:16:38 GMT  
		Size: 51.6 MB (51592718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a0578b14037a0f8bdb93132eb6a4fe86133b55a4aa25ac5f97a9872020c7777`  
		Last Modified: Tue, 17 Jul 2018 15:18:57 GMT  
		Size: 218.3 MB (218257626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7595598dcb532a0b59215eb962b9bb6c12d794d9e2b38cf730819f741764c6`  
		Last Modified: Fri, 03 Aug 2018 11:58:56 GMT  
		Size: 216.7 MB (216677666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

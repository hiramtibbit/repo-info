<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rust`

-	[`rust:1`](#rust1)
-	[`rust:1.31`](#rust131)
-	[`rust:1.31.0`](#rust1310)
-	[`rust:1.31.0-slim`](#rust1310-slim)
-	[`rust:1.31.0-slim-stretch`](#rust1310-slim-stretch)
-	[`rust:1.31.0-stretch`](#rust1310-stretch)
-	[`rust:1.31-slim`](#rust131-slim)
-	[`rust:1.31-slim-stretch`](#rust131-slim-stretch)
-	[`rust:1.31-stretch`](#rust131-stretch)
-	[`rust:1-slim`](#rust1-slim)
-	[`rust:1-slim-stretch`](#rust1-slim-stretch)
-	[`rust:1-stretch`](#rust1-stretch)
-	[`rust:latest`](#rustlatest)
-	[`rust:slim`](#rustslim)
-	[`rust:slim-stretch`](#rustslim-stretch)
-	[`rust:stretch`](#ruststretch)

## `rust:1`

```console
$ docker pull rust@sha256:848fcf1b811da7de48854f3e5bcdcdd5e095648d43bd78be0cb4e8dfb3b75894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:1` - linux; amd64

```console
$ docker pull rust@sha256:352aa7d93c62b9e4af79d8586582386f600ff221994bbe88b88945fdbdd310f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **552.4 MB (552377616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:080dac3a4f6bd7edc117967273ccdfec59d176d4c510c2194da794eb1ea85798`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:19:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 06 Dec 2018 21:20:24 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.31.0
# Thu, 06 Dec 2018 21:20:54 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='02c0464459b2f88ce99f927b14f6aa4d09c96b9eb6e57808d6c567edce66260a' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='c7a3094b5e81974a5f752c3d6d78f0202e9ee45962140167880a2e0fe5bb3eb7' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='d1d6ca6c91fa5c22a53f9c7a79dbc49ac2c9056e2d74636e8f091310f157e351' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='63dd42cdc70b9b026a86d514be4392ab24110ae4537285b5d04e98cdc2cf27d1' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.15.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1db95989906f161007d8ef2a6ef6e0ec64bc15bf2c993fd002edbdfc7aa7df`  
		Last Modified: Fri, 16 Nov 2018 11:36:02 GMT  
		Size: 213.2 MB (213213743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734ee16af2dd89c09a46ff408ffc44679aca2e1b8a10baec4febd9a7b6ac9778`  
		Last Modified: Thu, 06 Dec 2018 21:24:21 GMT  
		Size: 228.7 MB (228700117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.31`

```console
$ docker pull rust@sha256:848fcf1b811da7de48854f3e5bcdcdd5e095648d43bd78be0cb4e8dfb3b75894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:1.31` - linux; amd64

```console
$ docker pull rust@sha256:352aa7d93c62b9e4af79d8586582386f600ff221994bbe88b88945fdbdd310f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **552.4 MB (552377616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:080dac3a4f6bd7edc117967273ccdfec59d176d4c510c2194da794eb1ea85798`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:19:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 06 Dec 2018 21:20:24 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.31.0
# Thu, 06 Dec 2018 21:20:54 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='02c0464459b2f88ce99f927b14f6aa4d09c96b9eb6e57808d6c567edce66260a' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='c7a3094b5e81974a5f752c3d6d78f0202e9ee45962140167880a2e0fe5bb3eb7' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='d1d6ca6c91fa5c22a53f9c7a79dbc49ac2c9056e2d74636e8f091310f157e351' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='63dd42cdc70b9b026a86d514be4392ab24110ae4537285b5d04e98cdc2cf27d1' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.15.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1db95989906f161007d8ef2a6ef6e0ec64bc15bf2c993fd002edbdfc7aa7df`  
		Last Modified: Fri, 16 Nov 2018 11:36:02 GMT  
		Size: 213.2 MB (213213743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734ee16af2dd89c09a46ff408ffc44679aca2e1b8a10baec4febd9a7b6ac9778`  
		Last Modified: Thu, 06 Dec 2018 21:24:21 GMT  
		Size: 228.7 MB (228700117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.31.0`

```console
$ docker pull rust@sha256:848fcf1b811da7de48854f3e5bcdcdd5e095648d43bd78be0cb4e8dfb3b75894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:1.31.0` - linux; amd64

```console
$ docker pull rust@sha256:352aa7d93c62b9e4af79d8586582386f600ff221994bbe88b88945fdbdd310f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **552.4 MB (552377616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:080dac3a4f6bd7edc117967273ccdfec59d176d4c510c2194da794eb1ea85798`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:19:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 06 Dec 2018 21:20:24 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.31.0
# Thu, 06 Dec 2018 21:20:54 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='02c0464459b2f88ce99f927b14f6aa4d09c96b9eb6e57808d6c567edce66260a' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='c7a3094b5e81974a5f752c3d6d78f0202e9ee45962140167880a2e0fe5bb3eb7' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='d1d6ca6c91fa5c22a53f9c7a79dbc49ac2c9056e2d74636e8f091310f157e351' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='63dd42cdc70b9b026a86d514be4392ab24110ae4537285b5d04e98cdc2cf27d1' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.15.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1db95989906f161007d8ef2a6ef6e0ec64bc15bf2c993fd002edbdfc7aa7df`  
		Last Modified: Fri, 16 Nov 2018 11:36:02 GMT  
		Size: 213.2 MB (213213743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734ee16af2dd89c09a46ff408ffc44679aca2e1b8a10baec4febd9a7b6ac9778`  
		Last Modified: Thu, 06 Dec 2018 21:24:21 GMT  
		Size: 228.7 MB (228700117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.31.0-slim`

```console
$ docker pull rust@sha256:9ed866e8abf359d2166087515286317b4bca4be4aecac5aea76435f28f2eb9b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:1.31.0-slim` - linux; amd64

```console
$ docker pull rust@sha256:3647316cf265d7a97c13bb732681b7d73148ae56b367fa136c49ee819326c7cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.1 MB (289063767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c94159e6b38fa0735180f4295ab53ac6df4fa377d06e87569dbaaa76acfe948a`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Thu, 06 Dec 2018 21:22:02 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.31.0
# Thu, 06 Dec 2018 21:22:47 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='02c0464459b2f88ce99f927b14f6aa4d09c96b9eb6e57808d6c567edce66260a' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='c7a3094b5e81974a5f752c3d6d78f0202e9ee45962140167880a2e0fe5bb3eb7' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='d1d6ca6c91fa5c22a53f9c7a79dbc49ac2c9056e2d74636e8f091310f157e351' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='63dd42cdc70b9b026a86d514be4392ab24110ae4537285b5d04e98cdc2cf27d1' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.15.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2527118b4de51950ad78767f003920aeae8e10270e7cb33231f6f933754d5c94`  
		Last Modified: Thu, 06 Dec 2018 21:27:15 GMT  
		Size: 266.6 MB (266577490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.31.0-slim-stretch`

```console
$ docker pull rust@sha256:9ed866e8abf359d2166087515286317b4bca4be4aecac5aea76435f28f2eb9b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:1.31.0-slim-stretch` - linux; amd64

```console
$ docker pull rust@sha256:3647316cf265d7a97c13bb732681b7d73148ae56b367fa136c49ee819326c7cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.1 MB (289063767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c94159e6b38fa0735180f4295ab53ac6df4fa377d06e87569dbaaa76acfe948a`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Thu, 06 Dec 2018 21:22:02 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.31.0
# Thu, 06 Dec 2018 21:22:47 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='02c0464459b2f88ce99f927b14f6aa4d09c96b9eb6e57808d6c567edce66260a' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='c7a3094b5e81974a5f752c3d6d78f0202e9ee45962140167880a2e0fe5bb3eb7' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='d1d6ca6c91fa5c22a53f9c7a79dbc49ac2c9056e2d74636e8f091310f157e351' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='63dd42cdc70b9b026a86d514be4392ab24110ae4537285b5d04e98cdc2cf27d1' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.15.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2527118b4de51950ad78767f003920aeae8e10270e7cb33231f6f933754d5c94`  
		Last Modified: Thu, 06 Dec 2018 21:27:15 GMT  
		Size: 266.6 MB (266577490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.31.0-stretch`

```console
$ docker pull rust@sha256:848fcf1b811da7de48854f3e5bcdcdd5e095648d43bd78be0cb4e8dfb3b75894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:1.31.0-stretch` - linux; amd64

```console
$ docker pull rust@sha256:352aa7d93c62b9e4af79d8586582386f600ff221994bbe88b88945fdbdd310f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **552.4 MB (552377616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:080dac3a4f6bd7edc117967273ccdfec59d176d4c510c2194da794eb1ea85798`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:19:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 06 Dec 2018 21:20:24 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.31.0
# Thu, 06 Dec 2018 21:20:54 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='02c0464459b2f88ce99f927b14f6aa4d09c96b9eb6e57808d6c567edce66260a' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='c7a3094b5e81974a5f752c3d6d78f0202e9ee45962140167880a2e0fe5bb3eb7' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='d1d6ca6c91fa5c22a53f9c7a79dbc49ac2c9056e2d74636e8f091310f157e351' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='63dd42cdc70b9b026a86d514be4392ab24110ae4537285b5d04e98cdc2cf27d1' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.15.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1db95989906f161007d8ef2a6ef6e0ec64bc15bf2c993fd002edbdfc7aa7df`  
		Last Modified: Fri, 16 Nov 2018 11:36:02 GMT  
		Size: 213.2 MB (213213743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734ee16af2dd89c09a46ff408ffc44679aca2e1b8a10baec4febd9a7b6ac9778`  
		Last Modified: Thu, 06 Dec 2018 21:24:21 GMT  
		Size: 228.7 MB (228700117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.31-slim`

```console
$ docker pull rust@sha256:9ed866e8abf359d2166087515286317b4bca4be4aecac5aea76435f28f2eb9b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:1.31-slim` - linux; amd64

```console
$ docker pull rust@sha256:3647316cf265d7a97c13bb732681b7d73148ae56b367fa136c49ee819326c7cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.1 MB (289063767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c94159e6b38fa0735180f4295ab53ac6df4fa377d06e87569dbaaa76acfe948a`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Thu, 06 Dec 2018 21:22:02 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.31.0
# Thu, 06 Dec 2018 21:22:47 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='02c0464459b2f88ce99f927b14f6aa4d09c96b9eb6e57808d6c567edce66260a' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='c7a3094b5e81974a5f752c3d6d78f0202e9ee45962140167880a2e0fe5bb3eb7' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='d1d6ca6c91fa5c22a53f9c7a79dbc49ac2c9056e2d74636e8f091310f157e351' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='63dd42cdc70b9b026a86d514be4392ab24110ae4537285b5d04e98cdc2cf27d1' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.15.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2527118b4de51950ad78767f003920aeae8e10270e7cb33231f6f933754d5c94`  
		Last Modified: Thu, 06 Dec 2018 21:27:15 GMT  
		Size: 266.6 MB (266577490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.31-slim-stretch`

```console
$ docker pull rust@sha256:9ed866e8abf359d2166087515286317b4bca4be4aecac5aea76435f28f2eb9b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:1.31-slim-stretch` - linux; amd64

```console
$ docker pull rust@sha256:3647316cf265d7a97c13bb732681b7d73148ae56b367fa136c49ee819326c7cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.1 MB (289063767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c94159e6b38fa0735180f4295ab53ac6df4fa377d06e87569dbaaa76acfe948a`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Thu, 06 Dec 2018 21:22:02 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.31.0
# Thu, 06 Dec 2018 21:22:47 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='02c0464459b2f88ce99f927b14f6aa4d09c96b9eb6e57808d6c567edce66260a' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='c7a3094b5e81974a5f752c3d6d78f0202e9ee45962140167880a2e0fe5bb3eb7' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='d1d6ca6c91fa5c22a53f9c7a79dbc49ac2c9056e2d74636e8f091310f157e351' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='63dd42cdc70b9b026a86d514be4392ab24110ae4537285b5d04e98cdc2cf27d1' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.15.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2527118b4de51950ad78767f003920aeae8e10270e7cb33231f6f933754d5c94`  
		Last Modified: Thu, 06 Dec 2018 21:27:15 GMT  
		Size: 266.6 MB (266577490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.31-stretch`

```console
$ docker pull rust@sha256:848fcf1b811da7de48854f3e5bcdcdd5e095648d43bd78be0cb4e8dfb3b75894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:1.31-stretch` - linux; amd64

```console
$ docker pull rust@sha256:352aa7d93c62b9e4af79d8586582386f600ff221994bbe88b88945fdbdd310f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **552.4 MB (552377616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:080dac3a4f6bd7edc117967273ccdfec59d176d4c510c2194da794eb1ea85798`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:19:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 06 Dec 2018 21:20:24 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.31.0
# Thu, 06 Dec 2018 21:20:54 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='02c0464459b2f88ce99f927b14f6aa4d09c96b9eb6e57808d6c567edce66260a' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='c7a3094b5e81974a5f752c3d6d78f0202e9ee45962140167880a2e0fe5bb3eb7' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='d1d6ca6c91fa5c22a53f9c7a79dbc49ac2c9056e2d74636e8f091310f157e351' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='63dd42cdc70b9b026a86d514be4392ab24110ae4537285b5d04e98cdc2cf27d1' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.15.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1db95989906f161007d8ef2a6ef6e0ec64bc15bf2c993fd002edbdfc7aa7df`  
		Last Modified: Fri, 16 Nov 2018 11:36:02 GMT  
		Size: 213.2 MB (213213743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734ee16af2dd89c09a46ff408ffc44679aca2e1b8a10baec4febd9a7b6ac9778`  
		Last Modified: Thu, 06 Dec 2018 21:24:21 GMT  
		Size: 228.7 MB (228700117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1-slim`

```console
$ docker pull rust@sha256:9ed866e8abf359d2166087515286317b4bca4be4aecac5aea76435f28f2eb9b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:1-slim` - linux; amd64

```console
$ docker pull rust@sha256:3647316cf265d7a97c13bb732681b7d73148ae56b367fa136c49ee819326c7cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.1 MB (289063767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c94159e6b38fa0735180f4295ab53ac6df4fa377d06e87569dbaaa76acfe948a`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Thu, 06 Dec 2018 21:22:02 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.31.0
# Thu, 06 Dec 2018 21:22:47 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='02c0464459b2f88ce99f927b14f6aa4d09c96b9eb6e57808d6c567edce66260a' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='c7a3094b5e81974a5f752c3d6d78f0202e9ee45962140167880a2e0fe5bb3eb7' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='d1d6ca6c91fa5c22a53f9c7a79dbc49ac2c9056e2d74636e8f091310f157e351' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='63dd42cdc70b9b026a86d514be4392ab24110ae4537285b5d04e98cdc2cf27d1' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.15.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2527118b4de51950ad78767f003920aeae8e10270e7cb33231f6f933754d5c94`  
		Last Modified: Thu, 06 Dec 2018 21:27:15 GMT  
		Size: 266.6 MB (266577490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1-slim-stretch`

```console
$ docker pull rust@sha256:9ed866e8abf359d2166087515286317b4bca4be4aecac5aea76435f28f2eb9b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:1-slim-stretch` - linux; amd64

```console
$ docker pull rust@sha256:3647316cf265d7a97c13bb732681b7d73148ae56b367fa136c49ee819326c7cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.1 MB (289063767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c94159e6b38fa0735180f4295ab53ac6df4fa377d06e87569dbaaa76acfe948a`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Thu, 06 Dec 2018 21:22:02 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.31.0
# Thu, 06 Dec 2018 21:22:47 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='02c0464459b2f88ce99f927b14f6aa4d09c96b9eb6e57808d6c567edce66260a' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='c7a3094b5e81974a5f752c3d6d78f0202e9ee45962140167880a2e0fe5bb3eb7' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='d1d6ca6c91fa5c22a53f9c7a79dbc49ac2c9056e2d74636e8f091310f157e351' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='63dd42cdc70b9b026a86d514be4392ab24110ae4537285b5d04e98cdc2cf27d1' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.15.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2527118b4de51950ad78767f003920aeae8e10270e7cb33231f6f933754d5c94`  
		Last Modified: Thu, 06 Dec 2018 21:27:15 GMT  
		Size: 266.6 MB (266577490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1-stretch`

```console
$ docker pull rust@sha256:848fcf1b811da7de48854f3e5bcdcdd5e095648d43bd78be0cb4e8dfb3b75894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:1-stretch` - linux; amd64

```console
$ docker pull rust@sha256:352aa7d93c62b9e4af79d8586582386f600ff221994bbe88b88945fdbdd310f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **552.4 MB (552377616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:080dac3a4f6bd7edc117967273ccdfec59d176d4c510c2194da794eb1ea85798`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:19:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 06 Dec 2018 21:20:24 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.31.0
# Thu, 06 Dec 2018 21:20:54 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='02c0464459b2f88ce99f927b14f6aa4d09c96b9eb6e57808d6c567edce66260a' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='c7a3094b5e81974a5f752c3d6d78f0202e9ee45962140167880a2e0fe5bb3eb7' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='d1d6ca6c91fa5c22a53f9c7a79dbc49ac2c9056e2d74636e8f091310f157e351' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='63dd42cdc70b9b026a86d514be4392ab24110ae4537285b5d04e98cdc2cf27d1' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.15.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1db95989906f161007d8ef2a6ef6e0ec64bc15bf2c993fd002edbdfc7aa7df`  
		Last Modified: Fri, 16 Nov 2018 11:36:02 GMT  
		Size: 213.2 MB (213213743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734ee16af2dd89c09a46ff408ffc44679aca2e1b8a10baec4febd9a7b6ac9778`  
		Last Modified: Thu, 06 Dec 2018 21:24:21 GMT  
		Size: 228.7 MB (228700117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:latest`

```console
$ docker pull rust@sha256:848fcf1b811da7de48854f3e5bcdcdd5e095648d43bd78be0cb4e8dfb3b75894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:latest` - linux; amd64

```console
$ docker pull rust@sha256:352aa7d93c62b9e4af79d8586582386f600ff221994bbe88b88945fdbdd310f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **552.4 MB (552377616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:080dac3a4f6bd7edc117967273ccdfec59d176d4c510c2194da794eb1ea85798`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:19:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 06 Dec 2018 21:20:24 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.31.0
# Thu, 06 Dec 2018 21:20:54 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='02c0464459b2f88ce99f927b14f6aa4d09c96b9eb6e57808d6c567edce66260a' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='c7a3094b5e81974a5f752c3d6d78f0202e9ee45962140167880a2e0fe5bb3eb7' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='d1d6ca6c91fa5c22a53f9c7a79dbc49ac2c9056e2d74636e8f091310f157e351' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='63dd42cdc70b9b026a86d514be4392ab24110ae4537285b5d04e98cdc2cf27d1' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.15.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1db95989906f161007d8ef2a6ef6e0ec64bc15bf2c993fd002edbdfc7aa7df`  
		Last Modified: Fri, 16 Nov 2018 11:36:02 GMT  
		Size: 213.2 MB (213213743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734ee16af2dd89c09a46ff408ffc44679aca2e1b8a10baec4febd9a7b6ac9778`  
		Last Modified: Thu, 06 Dec 2018 21:24:21 GMT  
		Size: 228.7 MB (228700117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:slim`

```console
$ docker pull rust@sha256:9ed866e8abf359d2166087515286317b4bca4be4aecac5aea76435f28f2eb9b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:slim` - linux; amd64

```console
$ docker pull rust@sha256:3647316cf265d7a97c13bb732681b7d73148ae56b367fa136c49ee819326c7cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.1 MB (289063767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c94159e6b38fa0735180f4295ab53ac6df4fa377d06e87569dbaaa76acfe948a`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Thu, 06 Dec 2018 21:22:02 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.31.0
# Thu, 06 Dec 2018 21:22:47 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='02c0464459b2f88ce99f927b14f6aa4d09c96b9eb6e57808d6c567edce66260a' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='c7a3094b5e81974a5f752c3d6d78f0202e9ee45962140167880a2e0fe5bb3eb7' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='d1d6ca6c91fa5c22a53f9c7a79dbc49ac2c9056e2d74636e8f091310f157e351' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='63dd42cdc70b9b026a86d514be4392ab24110ae4537285b5d04e98cdc2cf27d1' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.15.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2527118b4de51950ad78767f003920aeae8e10270e7cb33231f6f933754d5c94`  
		Last Modified: Thu, 06 Dec 2018 21:27:15 GMT  
		Size: 266.6 MB (266577490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:slim-stretch`

```console
$ docker pull rust@sha256:9ed866e8abf359d2166087515286317b4bca4be4aecac5aea76435f28f2eb9b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:slim-stretch` - linux; amd64

```console
$ docker pull rust@sha256:3647316cf265d7a97c13bb732681b7d73148ae56b367fa136c49ee819326c7cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.1 MB (289063767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c94159e6b38fa0735180f4295ab53ac6df4fa377d06e87569dbaaa76acfe948a`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Thu, 06 Dec 2018 21:22:02 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.31.0
# Thu, 06 Dec 2018 21:22:47 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='02c0464459b2f88ce99f927b14f6aa4d09c96b9eb6e57808d6c567edce66260a' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='c7a3094b5e81974a5f752c3d6d78f0202e9ee45962140167880a2e0fe5bb3eb7' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='d1d6ca6c91fa5c22a53f9c7a79dbc49ac2c9056e2d74636e8f091310f157e351' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='63dd42cdc70b9b026a86d514be4392ab24110ae4537285b5d04e98cdc2cf27d1' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.15.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2527118b4de51950ad78767f003920aeae8e10270e7cb33231f6f933754d5c94`  
		Last Modified: Thu, 06 Dec 2018 21:27:15 GMT  
		Size: 266.6 MB (266577490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:stretch`

```console
$ docker pull rust@sha256:848fcf1b811da7de48854f3e5bcdcdd5e095648d43bd78be0cb4e8dfb3b75894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:stretch` - linux; amd64

```console
$ docker pull rust@sha256:352aa7d93c62b9e4af79d8586582386f600ff221994bbe88b88945fdbdd310f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **552.4 MB (552377616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:080dac3a4f6bd7edc117967273ccdfec59d176d4c510c2194da794eb1ea85798`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:19:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 06 Dec 2018 21:20:24 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.31.0
# Thu, 06 Dec 2018 21:20:54 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='02c0464459b2f88ce99f927b14f6aa4d09c96b9eb6e57808d6c567edce66260a' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='c7a3094b5e81974a5f752c3d6d78f0202e9ee45962140167880a2e0fe5bb3eb7' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='d1d6ca6c91fa5c22a53f9c7a79dbc49ac2c9056e2d74636e8f091310f157e351' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='63dd42cdc70b9b026a86d514be4392ab24110ae4537285b5d04e98cdc2cf27d1' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.15.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1db95989906f161007d8ef2a6ef6e0ec64bc15bf2c993fd002edbdfc7aa7df`  
		Last Modified: Fri, 16 Nov 2018 11:36:02 GMT  
		Size: 213.2 MB (213213743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734ee16af2dd89c09a46ff408ffc44679aca2e1b8a10baec4febd9a7b6ac9778`  
		Last Modified: Thu, 06 Dec 2018 21:24:21 GMT  
		Size: 228.7 MB (228700117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

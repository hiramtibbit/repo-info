<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rust`

-	[`rust:1`](#rust1)
-	[`rust:1.27`](#rust127)
-	[`rust:1.27.1`](#rust1271)
-	[`rust:1.27.1-jessie`](#rust1271-jessie)
-	[`rust:1.27.1-slim`](#rust1271-slim)
-	[`rust:1.27.1-slim-jessie`](#rust1271-slim-jessie)
-	[`rust:1.27.1-slim-stretch`](#rust1271-slim-stretch)
-	[`rust:1.27.1-stretch`](#rust1271-stretch)
-	[`rust:1.27-jessie`](#rust127-jessie)
-	[`rust:1.27-slim`](#rust127-slim)
-	[`rust:1.27-slim-jessie`](#rust127-slim-jessie)
-	[`rust:1.27-slim-stretch`](#rust127-slim-stretch)
-	[`rust:1.27-stretch`](#rust127-stretch)
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
$ docker pull rust@sha256:64cb7f3d867c5c75d27d11fbff106d7dbc50b82618b8fdde772573df463f8043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1` - linux; amd64

```console
$ docker pull rust@sha256:cb4378aa87ddd3f4086e24ef56f53fb4e58e2c617f4ba9f504879166e7ba8cf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **549.7 MB (549710769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f1c7a25cafb3402337b19c164b722d272b25ed81a931d7213fe1ef5ce3e4373`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:16:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 09:29:26 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 17 Jul 2018 09:30:06 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4eee24d4dacb41c21411e0477a741655303cdc48b18a948632c31f0f3a70bb8`  
		Last Modified: Tue, 17 Jul 2018 03:54:59 GMT  
		Size: 50.1 MB (50064642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59856e9f0abefedc34fcefc3f57c4955cc384785663745532ddc31a89641c83`  
		Last Modified: Tue, 17 Jul 2018 03:57:05 GMT  
		Size: 213.2 MB (213190110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d308c31aedf69e0dc0a306b09cf4c5b6020a1a1de2c2ab109013e8df8646c31`  
		Last Modified: Tue, 17 Jul 2018 09:36:57 GMT  
		Size: 226.1 MB (226069698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1` - linux; arm variant v7

```console
$ docker pull rust@sha256:536638c219ad9493530a7eed7b1093e8be26322d431cb8d187f5f9e573f2da79
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **445.5 MB (445540439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73eb5409eac300f6257f4f6d597d885c84c0ea9bfceb77c7ba1d50ebda155646`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:26 GMT
ADD file:b928e6adeb71af1928fc7b8e0ff4770e5521eebf544a3b27f9736ac86e7a0ffa in / 
# Wed, 27 Jun 2018 12:03:27 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:47:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:47:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 12:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:49:55 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 12:04:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 12:04:47 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:c675459249e5e2b5c2119c5965490fb00918a71cd19ba6a70e1c14ea0366cc9a`  
		Last Modified: Wed, 27 Jun 2018 12:12:46 GMT  
		Size: 42.1 MB (42062253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87675d75ec387a55e1b055dfadf15fd7137586ee9acf9be9b2a4840e4001b2a`  
		Last Modified: Wed, 27 Jun 2018 12:58:52 GMT  
		Size: 9.5 MB (9472634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f55e83b4f681428c2fb1542a44d864d0d2f78d235199a33824985049fd42bb5`  
		Last Modified: Wed, 27 Jun 2018 12:58:50 GMT  
		Size: 3.9 MB (3913173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf79f9923b0cece59f9957dddd92e7c5cd6c8c3311984ae5249217f97be3d0f`  
		Last Modified: Wed, 27 Jun 2018 12:59:26 GMT  
		Size: 46.4 MB (46382240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cd8ed2ab006145f28b4a6a80fa54438a8edfddc3c94bb7a16ddd895eae4dd9`  
		Last Modified: Wed, 27 Jun 2018 13:00:37 GMT  
		Size: 194.0 MB (193959303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3a30cb8a0ae60fe619137b08534dbe892ceb37ae21bd4844d8d3ed8a8d9688`  
		Last Modified: Wed, 11 Jul 2018 12:09:04 GMT  
		Size: 149.8 MB (149750836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:6ac5b25d08890ee111818501ccaac79a6933874efb5a536956588b9418d89fc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.6 MB (452581724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d4c06d93489e7b5bdf689b1a7d68c450af9b26e6b2233ec0e5231ef6a7e6675`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:46:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:47:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 10:48:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:59:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 09:45:11 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 09:45:47 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:6054c6775a4e4515d2365ad9337e322dd5c6ad0e0bc8e5bb6b0252461e71afc4`  
		Last Modified: Wed, 27 Jun 2018 08:57:38 GMT  
		Size: 43.1 MB (43115791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d57f1ab872b53f8ac8eff946226a3ff9d5fb929656964b75dae06303e9c8ef4`  
		Last Modified: Wed, 27 Jun 2018 11:06:29 GMT  
		Size: 9.7 MB (9722190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662e63f6b578575fadc2ae00bf10794a2a45166c03105d940c919da9f78c1c43`  
		Last Modified: Wed, 27 Jun 2018 11:06:28 GMT  
		Size: 4.1 MB (4088526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242c1552cb593c1f860dd482a21f1607a2965ef9ac5b5a29aad2a768ce9d699a`  
		Last Modified: Wed, 27 Jun 2018 11:07:20 GMT  
		Size: 48.0 MB (48002203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b998f5fde2603980e88247b2183aa042f85bef2b36f90e0a7b32472aebdbeb43`  
		Last Modified: Wed, 27 Jun 2018 11:08:58 GMT  
		Size: 200.6 MB (200586169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6331dfc65736a1867a9bfa028f83a00b9de900d49ff322a6845f2ac4f155c148`  
		Last Modified: Wed, 11 Jul 2018 09:51:20 GMT  
		Size: 147.1 MB (147066845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1` - linux; 386

```console
$ docker pull rust@sha256:87f70109d3fa492517072f3bc9bdf13d5c565e72c51305c04f504c8689216d14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **551.7 MB (551677477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d776d6b37a2f8cf68f93a19a7c04f3c42e1c8a96176a998a847b992a628efe6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:42:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 11:42:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:45:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 11:04:14 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 11:05:00 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fb0be3608d00a27aadd5246acebfa684875786308e5e07bd72ecedb1ea550e`  
		Last Modified: Wed, 06 Jun 2018 12:17:46 GMT  
		Size: 10.8 MB (10784612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109b3030038f2425d43d6f1796554d59323fd256fe621bd3a73249279da3a2e7`  
		Last Modified: Wed, 06 Jun 2018 12:17:44 GMT  
		Size: 4.6 MB (4555092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1af01b2a73367b29b158a599b31f1a8d0e0e964f8ba899158fe801dca9aa54f`  
		Last Modified: Wed, 06 Jun 2018 12:18:38 GMT  
		Size: 51.6 MB (51593154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fccdc7430291198a7cd90746f94076159d8f379640b3f5718b0d05cc583fbf7`  
		Last Modified: Wed, 06 Jun 2018 12:20:25 GMT  
		Size: 218.2 MB (218211308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87111e8c52e15ee62bbfd6bc101f2347c7cf742bb0b345c677a5a3db87892bfd`  
		Last Modified: Wed, 11 Jul 2018 11:13:12 GMT  
		Size: 220.5 MB (220488426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.27`

```console
$ docker pull rust@sha256:64cb7f3d867c5c75d27d11fbff106d7dbc50b82618b8fdde772573df463f8043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1.27` - linux; amd64

```console
$ docker pull rust@sha256:cb4378aa87ddd3f4086e24ef56f53fb4e58e2c617f4ba9f504879166e7ba8cf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **549.7 MB (549710769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f1c7a25cafb3402337b19c164b722d272b25ed81a931d7213fe1ef5ce3e4373`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:16:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 09:29:26 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 17 Jul 2018 09:30:06 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4eee24d4dacb41c21411e0477a741655303cdc48b18a948632c31f0f3a70bb8`  
		Last Modified: Tue, 17 Jul 2018 03:54:59 GMT  
		Size: 50.1 MB (50064642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59856e9f0abefedc34fcefc3f57c4955cc384785663745532ddc31a89641c83`  
		Last Modified: Tue, 17 Jul 2018 03:57:05 GMT  
		Size: 213.2 MB (213190110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d308c31aedf69e0dc0a306b09cf4c5b6020a1a1de2c2ab109013e8df8646c31`  
		Last Modified: Tue, 17 Jul 2018 09:36:57 GMT  
		Size: 226.1 MB (226069698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.27` - linux; arm variant v7

```console
$ docker pull rust@sha256:536638c219ad9493530a7eed7b1093e8be26322d431cb8d187f5f9e573f2da79
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **445.5 MB (445540439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73eb5409eac300f6257f4f6d597d885c84c0ea9bfceb77c7ba1d50ebda155646`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:26 GMT
ADD file:b928e6adeb71af1928fc7b8e0ff4770e5521eebf544a3b27f9736ac86e7a0ffa in / 
# Wed, 27 Jun 2018 12:03:27 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:47:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:47:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 12:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:49:55 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 12:04:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 12:04:47 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:c675459249e5e2b5c2119c5965490fb00918a71cd19ba6a70e1c14ea0366cc9a`  
		Last Modified: Wed, 27 Jun 2018 12:12:46 GMT  
		Size: 42.1 MB (42062253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87675d75ec387a55e1b055dfadf15fd7137586ee9acf9be9b2a4840e4001b2a`  
		Last Modified: Wed, 27 Jun 2018 12:58:52 GMT  
		Size: 9.5 MB (9472634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f55e83b4f681428c2fb1542a44d864d0d2f78d235199a33824985049fd42bb5`  
		Last Modified: Wed, 27 Jun 2018 12:58:50 GMT  
		Size: 3.9 MB (3913173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf79f9923b0cece59f9957dddd92e7c5cd6c8c3311984ae5249217f97be3d0f`  
		Last Modified: Wed, 27 Jun 2018 12:59:26 GMT  
		Size: 46.4 MB (46382240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cd8ed2ab006145f28b4a6a80fa54438a8edfddc3c94bb7a16ddd895eae4dd9`  
		Last Modified: Wed, 27 Jun 2018 13:00:37 GMT  
		Size: 194.0 MB (193959303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3a30cb8a0ae60fe619137b08534dbe892ceb37ae21bd4844d8d3ed8a8d9688`  
		Last Modified: Wed, 11 Jul 2018 12:09:04 GMT  
		Size: 149.8 MB (149750836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.27` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:6ac5b25d08890ee111818501ccaac79a6933874efb5a536956588b9418d89fc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.6 MB (452581724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d4c06d93489e7b5bdf689b1a7d68c450af9b26e6b2233ec0e5231ef6a7e6675`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:46:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:47:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 10:48:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:59:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 09:45:11 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 09:45:47 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:6054c6775a4e4515d2365ad9337e322dd5c6ad0e0bc8e5bb6b0252461e71afc4`  
		Last Modified: Wed, 27 Jun 2018 08:57:38 GMT  
		Size: 43.1 MB (43115791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d57f1ab872b53f8ac8eff946226a3ff9d5fb929656964b75dae06303e9c8ef4`  
		Last Modified: Wed, 27 Jun 2018 11:06:29 GMT  
		Size: 9.7 MB (9722190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662e63f6b578575fadc2ae00bf10794a2a45166c03105d940c919da9f78c1c43`  
		Last Modified: Wed, 27 Jun 2018 11:06:28 GMT  
		Size: 4.1 MB (4088526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242c1552cb593c1f860dd482a21f1607a2965ef9ac5b5a29aad2a768ce9d699a`  
		Last Modified: Wed, 27 Jun 2018 11:07:20 GMT  
		Size: 48.0 MB (48002203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b998f5fde2603980e88247b2183aa042f85bef2b36f90e0a7b32472aebdbeb43`  
		Last Modified: Wed, 27 Jun 2018 11:08:58 GMT  
		Size: 200.6 MB (200586169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6331dfc65736a1867a9bfa028f83a00b9de900d49ff322a6845f2ac4f155c148`  
		Last Modified: Wed, 11 Jul 2018 09:51:20 GMT  
		Size: 147.1 MB (147066845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.27` - linux; 386

```console
$ docker pull rust@sha256:87f70109d3fa492517072f3bc9bdf13d5c565e72c51305c04f504c8689216d14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **551.7 MB (551677477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d776d6b37a2f8cf68f93a19a7c04f3c42e1c8a96176a998a847b992a628efe6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:42:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 11:42:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:45:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 11:04:14 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 11:05:00 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fb0be3608d00a27aadd5246acebfa684875786308e5e07bd72ecedb1ea550e`  
		Last Modified: Wed, 06 Jun 2018 12:17:46 GMT  
		Size: 10.8 MB (10784612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109b3030038f2425d43d6f1796554d59323fd256fe621bd3a73249279da3a2e7`  
		Last Modified: Wed, 06 Jun 2018 12:17:44 GMT  
		Size: 4.6 MB (4555092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1af01b2a73367b29b158a599b31f1a8d0e0e964f8ba899158fe801dca9aa54f`  
		Last Modified: Wed, 06 Jun 2018 12:18:38 GMT  
		Size: 51.6 MB (51593154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fccdc7430291198a7cd90746f94076159d8f379640b3f5718b0d05cc583fbf7`  
		Last Modified: Wed, 06 Jun 2018 12:20:25 GMT  
		Size: 218.2 MB (218211308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87111e8c52e15ee62bbfd6bc101f2347c7cf742bb0b345c677a5a3db87892bfd`  
		Last Modified: Wed, 11 Jul 2018 11:13:12 GMT  
		Size: 220.5 MB (220488426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.27.1`

```console
$ docker pull rust@sha256:64cb7f3d867c5c75d27d11fbff106d7dbc50b82618b8fdde772573df463f8043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1.27.1` - linux; amd64

```console
$ docker pull rust@sha256:cb4378aa87ddd3f4086e24ef56f53fb4e58e2c617f4ba9f504879166e7ba8cf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **549.7 MB (549710769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f1c7a25cafb3402337b19c164b722d272b25ed81a931d7213fe1ef5ce3e4373`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:16:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 09:29:26 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 17 Jul 2018 09:30:06 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4eee24d4dacb41c21411e0477a741655303cdc48b18a948632c31f0f3a70bb8`  
		Last Modified: Tue, 17 Jul 2018 03:54:59 GMT  
		Size: 50.1 MB (50064642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59856e9f0abefedc34fcefc3f57c4955cc384785663745532ddc31a89641c83`  
		Last Modified: Tue, 17 Jul 2018 03:57:05 GMT  
		Size: 213.2 MB (213190110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d308c31aedf69e0dc0a306b09cf4c5b6020a1a1de2c2ab109013e8df8646c31`  
		Last Modified: Tue, 17 Jul 2018 09:36:57 GMT  
		Size: 226.1 MB (226069698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.27.1` - linux; arm variant v7

```console
$ docker pull rust@sha256:536638c219ad9493530a7eed7b1093e8be26322d431cb8d187f5f9e573f2da79
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **445.5 MB (445540439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73eb5409eac300f6257f4f6d597d885c84c0ea9bfceb77c7ba1d50ebda155646`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:26 GMT
ADD file:b928e6adeb71af1928fc7b8e0ff4770e5521eebf544a3b27f9736ac86e7a0ffa in / 
# Wed, 27 Jun 2018 12:03:27 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:47:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:47:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 12:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:49:55 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 12:04:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 12:04:47 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:c675459249e5e2b5c2119c5965490fb00918a71cd19ba6a70e1c14ea0366cc9a`  
		Last Modified: Wed, 27 Jun 2018 12:12:46 GMT  
		Size: 42.1 MB (42062253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87675d75ec387a55e1b055dfadf15fd7137586ee9acf9be9b2a4840e4001b2a`  
		Last Modified: Wed, 27 Jun 2018 12:58:52 GMT  
		Size: 9.5 MB (9472634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f55e83b4f681428c2fb1542a44d864d0d2f78d235199a33824985049fd42bb5`  
		Last Modified: Wed, 27 Jun 2018 12:58:50 GMT  
		Size: 3.9 MB (3913173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf79f9923b0cece59f9957dddd92e7c5cd6c8c3311984ae5249217f97be3d0f`  
		Last Modified: Wed, 27 Jun 2018 12:59:26 GMT  
		Size: 46.4 MB (46382240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cd8ed2ab006145f28b4a6a80fa54438a8edfddc3c94bb7a16ddd895eae4dd9`  
		Last Modified: Wed, 27 Jun 2018 13:00:37 GMT  
		Size: 194.0 MB (193959303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3a30cb8a0ae60fe619137b08534dbe892ceb37ae21bd4844d8d3ed8a8d9688`  
		Last Modified: Wed, 11 Jul 2018 12:09:04 GMT  
		Size: 149.8 MB (149750836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.27.1` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:6ac5b25d08890ee111818501ccaac79a6933874efb5a536956588b9418d89fc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.6 MB (452581724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d4c06d93489e7b5bdf689b1a7d68c450af9b26e6b2233ec0e5231ef6a7e6675`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:46:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:47:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 10:48:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:59:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 09:45:11 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 09:45:47 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:6054c6775a4e4515d2365ad9337e322dd5c6ad0e0bc8e5bb6b0252461e71afc4`  
		Last Modified: Wed, 27 Jun 2018 08:57:38 GMT  
		Size: 43.1 MB (43115791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d57f1ab872b53f8ac8eff946226a3ff9d5fb929656964b75dae06303e9c8ef4`  
		Last Modified: Wed, 27 Jun 2018 11:06:29 GMT  
		Size: 9.7 MB (9722190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662e63f6b578575fadc2ae00bf10794a2a45166c03105d940c919da9f78c1c43`  
		Last Modified: Wed, 27 Jun 2018 11:06:28 GMT  
		Size: 4.1 MB (4088526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242c1552cb593c1f860dd482a21f1607a2965ef9ac5b5a29aad2a768ce9d699a`  
		Last Modified: Wed, 27 Jun 2018 11:07:20 GMT  
		Size: 48.0 MB (48002203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b998f5fde2603980e88247b2183aa042f85bef2b36f90e0a7b32472aebdbeb43`  
		Last Modified: Wed, 27 Jun 2018 11:08:58 GMT  
		Size: 200.6 MB (200586169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6331dfc65736a1867a9bfa028f83a00b9de900d49ff322a6845f2ac4f155c148`  
		Last Modified: Wed, 11 Jul 2018 09:51:20 GMT  
		Size: 147.1 MB (147066845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.27.1` - linux; 386

```console
$ docker pull rust@sha256:87f70109d3fa492517072f3bc9bdf13d5c565e72c51305c04f504c8689216d14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **551.7 MB (551677477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d776d6b37a2f8cf68f93a19a7c04f3c42e1c8a96176a998a847b992a628efe6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:42:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 11:42:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:45:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 11:04:14 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 11:05:00 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fb0be3608d00a27aadd5246acebfa684875786308e5e07bd72ecedb1ea550e`  
		Last Modified: Wed, 06 Jun 2018 12:17:46 GMT  
		Size: 10.8 MB (10784612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109b3030038f2425d43d6f1796554d59323fd256fe621bd3a73249279da3a2e7`  
		Last Modified: Wed, 06 Jun 2018 12:17:44 GMT  
		Size: 4.6 MB (4555092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1af01b2a73367b29b158a599b31f1a8d0e0e964f8ba899158fe801dca9aa54f`  
		Last Modified: Wed, 06 Jun 2018 12:18:38 GMT  
		Size: 51.6 MB (51593154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fccdc7430291198a7cd90746f94076159d8f379640b3f5718b0d05cc583fbf7`  
		Last Modified: Wed, 06 Jun 2018 12:20:25 GMT  
		Size: 218.2 MB (218211308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87111e8c52e15ee62bbfd6bc101f2347c7cf742bb0b345c677a5a3db87892bfd`  
		Last Modified: Wed, 11 Jul 2018 11:13:12 GMT  
		Size: 220.5 MB (220488426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.27.1-jessie`

```console
$ docker pull rust@sha256:8d47316608938649ca76df23afeb504f86b68bca5bda51e5d6763a97edc304cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1.27.1-jessie` - linux; amd64

```console
$ docker pull rust@sha256:97a7bd97b8aa25ffef6d697b0eb55813a31ea7924883af615d371acac4b9ed91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.3 MB (472260638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ca39f52b17af3411f550d6549a9b50b403575e280f50d4c3edc99f42884a438`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:04:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:04:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:06:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:08:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 09:32:01 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 17 Jul 2018 09:32:40 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46dde23c37b3419122bb597461c1a48bdea1842aaae7dbe728dfa20a9aabe11b`  
		Last Modified: Tue, 17 Jul 2018 03:47:37 GMT  
		Size: 17.5 MB (17538077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ebaeb0745895220f609d4aa703e4563c39de239a2d00b85bece23a3ca3ac735`  
		Last Modified: Tue, 17 Jul 2018 03:48:27 GMT  
		Size: 43.3 MB (43297880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7428f935583e84197ae834885e62b69922f1ce7e8672a3746295555b3853fc7`  
		Last Modified: Tue, 17 Jul 2018 03:49:48 GMT  
		Size: 131.1 MB (131104182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c75fc343e81a6f96e0d8335aa471c95f1f14114249ba64c66c9f4444f7baac1`  
		Last Modified: Tue, 17 Jul 2018 09:45:20 GMT  
		Size: 226.1 MB (226068374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.27.1-jessie` - linux; arm variant v7

```console
$ docker pull rust@sha256:5e034ac2c06d60800955a9b065944dd16fa001bd07a89b7184aae2a7ac52a722
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.5 MB (370545736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a19356cbbecdb7b50eef9e6d5f23a8be36804fc73d5400752c9881f68f3e193`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:58:58 GMT
ADD file:5d5aafaeefc220111bbdbc1dd4f32bfad6875e4b28a214c9c88678b9205a8a21 in / 
# Wed, 27 Jun 2018 11:59:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:41:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:41:37 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 12:42:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:44:37 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 12:06:08 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 12:06:32 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:a06a975b738391d72254582d5a2537ac0961581af50ec5f7a76df622e01f96b9`  
		Last Modified: Wed, 27 Jun 2018 12:07:58 GMT  
		Size: 50.2 MB (50188121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ef1dbac9624e93cf5a7ac63c8df26bc65202d2536fb411e8506d69e563985f`  
		Last Modified: Wed, 27 Jun 2018 12:55:39 GMT  
		Size: 16.8 MB (16763249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2095682ba1c8ea76d23358f9f8685d48abce3f28fe2f04e491eab9fe089b2a4d`  
		Last Modified: Wed, 27 Jun 2018 12:56:06 GMT  
		Size: 39.8 MB (39766175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ee6c3d04736819ef47a350cc13ae8292f6ea46725afba7f0e9707189d34e4f`  
		Last Modified: Wed, 27 Jun 2018 12:56:46 GMT  
		Size: 114.1 MB (114077096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74af71dae9dca639a1015600e0093b45a34f751caf58640b661b1ef36e809fe5`  
		Last Modified: Wed, 11 Jul 2018 12:12:43 GMT  
		Size: 149.8 MB (149751095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.27.1-jessie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:677f92728d40a9492a3edad83e5a4d52b34a0e402354b58ded9c8fccc65bc890
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **372.6 MB (372633667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6adcf5b64c1c5011a3e69764648ce2180ab3890853a76d9547d8628ba1720507`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:16:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:18:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:26:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 09:48:08 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 09:48:39 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc4956efcaf7d30060a373d34961e3c6e71ee0317cb5381a180230a397c5442`  
		Last Modified: Sat, 05 May 2018 09:43:52 GMT  
		Size: 17.2 MB (17213842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71a9e408db2031cacf4541c01e9c992c2cdfd06fd26ad42c508faa3b0a71aae4`  
		Last Modified: Sat, 05 May 2018 09:44:04 GMT  
		Size: 41.0 MB (41017251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cec222141bb55b79ea11b53648102f30631ebf7c65a2b10bcddd8ce4f83e1b3`  
		Last Modified: Sat, 05 May 2018 09:44:22 GMT  
		Size: 115.9 MB (115888398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3167313df6db0ecec466fa83fdd385811fdc44a0eef7ea5f7b9bbdbc51caf208`  
		Last Modified: Wed, 11 Jul 2018 09:57:54 GMT  
		Size: 147.1 MB (147067322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.27.1-jessie` - linux; 386

```console
$ docker pull rust@sha256:2c98ff30161ae710afe60bf5088a889bae5b845d6fb564bf3a40371964e8d401
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **474.0 MB (473966741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f90418713aa817e0fa30a8754d8670d57a2c2c645dbd9f7454d5749886649e3`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:09 GMT
ADD file:08ad3a6967c6fe1bfa51f138b64b989a03a61773e4558ec538f63256b472dd77 in / 
# Wed, 27 Jun 2018 10:40:13 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:36:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 11:37:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:40:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 11:06:58 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 11:07:40 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:9e841ca399d43620c0457822730c2d49124abceba44d04d1ec0a0fa4f453b6d1`  
		Last Modified: Wed, 27 Jun 2018 10:53:00 GMT  
		Size: 54.5 MB (54483863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ca7b03c37b52ffd35c8f2d79cffc57130da8d386955cc12ba8c21a187c4fbf`  
		Last Modified: Wed, 27 Jun 2018 11:48:50 GMT  
		Size: 19.9 MB (19880956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4483b5c21761acc2d8af0c32253db028b7bf59fce0beb0629de69d8663edad44`  
		Last Modified: Wed, 27 Jun 2018 11:49:21 GMT  
		Size: 43.9 MB (43940305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42574455704e0bcf1337b2f02ca6cb792e3b8fa44272e4edc3e912173fc019d7`  
		Last Modified: Wed, 27 Jun 2018 11:50:05 GMT  
		Size: 135.2 MB (135173331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95cf4f5c9cceaf69df901ff1c69653ef645b52a0752791365cf8f1a3f32cbbd3`  
		Last Modified: Wed, 11 Jul 2018 11:21:19 GMT  
		Size: 220.5 MB (220488286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.27.1-slim`

```console
$ docker pull rust@sha256:234f3ac9d33dd9c9320984689fc59b31995a72691429288479754a5b7973f918
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1.27.1-slim` - linux; amd64

```console
$ docker pull rust@sha256:0e70d8dcea92f9657ca872343653b031929d0705af8cb2890d8ce51039c084fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.4 MB (286388171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c284dcffb7249eb2f860d1ae6afa9eccbdeabaa34dacb2ae1fce9d9be1557e6c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:30:26 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 17 Jul 2018 09:31:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e948b2315659182267272446927243ebefd25343f0e055cf62bd53b7f05f3f76`  
		Last Modified: Tue, 17 Jul 2018 09:40:53 GMT  
		Size: 263.9 MB (263902265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.27.1-slim` - linux; arm variant v7

```console
$ docker pull rust@sha256:36dd6980a37ed4167f23987fd0c647d17456cd2ffc5dd0d1b15abf2d717d53cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.1 MB (197109302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f6ba4f48a4528b621b913f50060251fdc3d84172fe3eed2df2a852269509aba`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 12:04:59 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 12:05:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7593372abd11523bdf4750615efd5a3d4eaabd3fb75e45c39b207c7c9fed16`  
		Last Modified: Wed, 11 Jul 2018 12:10:52 GMT  
		Size: 177.8 MB (177823029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.27.1-slim` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:12073f58dc677cdf1416afdbbf5878e1a040db71fb4ed01189108140f3025bdd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.1 MB (198053058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b55fcc056e73fc8cdb7bdc92f6efb38e87e583fff230ef8a286093e944b2a88a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 09:46:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 09:47:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2212f40a4b635542e3b14a7d51749ec0f9cc8eef3ca112b0fe479c612095bc55`  
		Last Modified: Wed, 11 Jul 2018 09:54:40 GMT  
		Size: 177.7 MB (177704981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.27.1-slim` - linux; 386

```console
$ docker pull rust@sha256:6111933327b11fe488fb52906426556f7fb5caede3ca7c0a8efc9f1481845cb3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.5 MB (285523775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:779f0f6824436748f45287d84aeffcce0f40d7fdae0b66b3f0caaa748322cb11`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 11:05:09 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 11:06:34 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243a3b1299482d1eb3d3f7dc69e3d66adb87d8cb6f75b9bf2af7040c6a4b659a`  
		Last Modified: Wed, 11 Jul 2018 11:17:48 GMT  
		Size: 262.4 MB (262383672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.27.1-slim-jessie`

```console
$ docker pull rust@sha256:8bb38334d9c34da1b9e7f129618c6315b8d59e9102dae5b5c40dc880113eee7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `rust:1.27.1-slim-jessie` - linux; amd64

```console
$ docker pull rust@sha256:8205f4ab41f7ddc6be3f6f7f9d12b6c3f64784cd02b8e54a31c2088fd0ddb3cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.3 MB (286294572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d8123f5e3937ed192e100c13a0b7bb91e31b74eb33b866d5727654cfe2f89b5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:33:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 17 Jul 2018 09:34:53 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147aea4ad3d5da6902f71ae6e4c8e20a905f60ebcd2e371381fa4805875c4fff`  
		Last Modified: Tue, 17 Jul 2018 09:47:57 GMT  
		Size: 256.2 MB (256174408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.27.1-slim-jessie` - linux; arm variant v7

```console
$ docker pull rust@sha256:21e682b36a9ed6e56e0594a3e987bb3d300a1d03aea11c170e6d25406bd75177
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.8 MB (198766902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03b39fcd64ac60d0e4f0a64e8eb0aa62a2caf6ce3a2aff7f9c4ba87d3e95311a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:59:29 GMT
ADD file:139eb5c6629bcd898347ffb1d1f2b4a86c7ce74f0da7ef85fc58886baf3efb25 in / 
# Wed, 27 Jun 2018 11:59:29 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 12:06:43 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 12:07:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:105c2fdbbcba2943a690f8b934af14483b01cb2fa01aa43b8ba23a69fe311f0a`  
		Last Modified: Wed, 27 Jun 2018 12:08:54 GMT  
		Size: 26.3 MB (26286807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:828710563bd73a941d286e42ff576bc69364e9750f9ddf6cf856e469ec30ce1b`  
		Last Modified: Wed, 11 Jul 2018 12:13:58 GMT  
		Size: 172.5 MB (172480095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.27.1-slim-jessie` - linux; 386

```console
$ docker pull rust@sha256:ff0891d4481486cfe61e448cc050f138778b77fac00ef6ceee965a436929cc88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.7 MB (285683333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:870397638800d7729d132e8b72ea51e1e50e8a5d93cb8430b4aaca5be5bd8d07`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:54 GMT
ADD file:cd5600a909bc1ec399c2dd64e2e0f8383e1029c2169b56e923349fff08a544a6 in / 
# Wed, 27 Jun 2018 10:40:55 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 11:07:53 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 11:10:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:754ff349eaaa3314a657ce6b24abe2a9d237430ab3b66d7bd2b21113499d68ff`  
		Last Modified: Wed, 27 Jun 2018 10:54:13 GMT  
		Size: 30.3 MB (30269679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbc5e53d2e10a6d44df49c396746b414fe6e2919200f8854b5f6814bf55c004`  
		Last Modified: Wed, 11 Jul 2018 11:24:06 GMT  
		Size: 255.4 MB (255413654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.27.1-slim-stretch`

```console
$ docker pull rust@sha256:234f3ac9d33dd9c9320984689fc59b31995a72691429288479754a5b7973f918
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1.27.1-slim-stretch` - linux; amd64

```console
$ docker pull rust@sha256:0e70d8dcea92f9657ca872343653b031929d0705af8cb2890d8ce51039c084fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.4 MB (286388171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c284dcffb7249eb2f860d1ae6afa9eccbdeabaa34dacb2ae1fce9d9be1557e6c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:30:26 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 17 Jul 2018 09:31:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e948b2315659182267272446927243ebefd25343f0e055cf62bd53b7f05f3f76`  
		Last Modified: Tue, 17 Jul 2018 09:40:53 GMT  
		Size: 263.9 MB (263902265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.27.1-slim-stretch` - linux; arm variant v7

```console
$ docker pull rust@sha256:36dd6980a37ed4167f23987fd0c647d17456cd2ffc5dd0d1b15abf2d717d53cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.1 MB (197109302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f6ba4f48a4528b621b913f50060251fdc3d84172fe3eed2df2a852269509aba`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 12:04:59 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 12:05:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7593372abd11523bdf4750615efd5a3d4eaabd3fb75e45c39b207c7c9fed16`  
		Last Modified: Wed, 11 Jul 2018 12:10:52 GMT  
		Size: 177.8 MB (177823029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.27.1-slim-stretch` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:12073f58dc677cdf1416afdbbf5878e1a040db71fb4ed01189108140f3025bdd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.1 MB (198053058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b55fcc056e73fc8cdb7bdc92f6efb38e87e583fff230ef8a286093e944b2a88a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 09:46:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 09:47:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2212f40a4b635542e3b14a7d51749ec0f9cc8eef3ca112b0fe479c612095bc55`  
		Last Modified: Wed, 11 Jul 2018 09:54:40 GMT  
		Size: 177.7 MB (177704981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.27.1-slim-stretch` - linux; 386

```console
$ docker pull rust@sha256:6111933327b11fe488fb52906426556f7fb5caede3ca7c0a8efc9f1481845cb3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.5 MB (285523775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:779f0f6824436748f45287d84aeffcce0f40d7fdae0b66b3f0caaa748322cb11`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 11:05:09 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 11:06:34 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243a3b1299482d1eb3d3f7dc69e3d66adb87d8cb6f75b9bf2af7040c6a4b659a`  
		Last Modified: Wed, 11 Jul 2018 11:17:48 GMT  
		Size: 262.4 MB (262383672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.27.1-stretch`

```console
$ docker pull rust@sha256:64cb7f3d867c5c75d27d11fbff106d7dbc50b82618b8fdde772573df463f8043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1.27.1-stretch` - linux; amd64

```console
$ docker pull rust@sha256:cb4378aa87ddd3f4086e24ef56f53fb4e58e2c617f4ba9f504879166e7ba8cf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **549.7 MB (549710769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f1c7a25cafb3402337b19c164b722d272b25ed81a931d7213fe1ef5ce3e4373`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:16:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 09:29:26 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 17 Jul 2018 09:30:06 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4eee24d4dacb41c21411e0477a741655303cdc48b18a948632c31f0f3a70bb8`  
		Last Modified: Tue, 17 Jul 2018 03:54:59 GMT  
		Size: 50.1 MB (50064642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59856e9f0abefedc34fcefc3f57c4955cc384785663745532ddc31a89641c83`  
		Last Modified: Tue, 17 Jul 2018 03:57:05 GMT  
		Size: 213.2 MB (213190110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d308c31aedf69e0dc0a306b09cf4c5b6020a1a1de2c2ab109013e8df8646c31`  
		Last Modified: Tue, 17 Jul 2018 09:36:57 GMT  
		Size: 226.1 MB (226069698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.27.1-stretch` - linux; arm variant v7

```console
$ docker pull rust@sha256:536638c219ad9493530a7eed7b1093e8be26322d431cb8d187f5f9e573f2da79
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **445.5 MB (445540439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73eb5409eac300f6257f4f6d597d885c84c0ea9bfceb77c7ba1d50ebda155646`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:26 GMT
ADD file:b928e6adeb71af1928fc7b8e0ff4770e5521eebf544a3b27f9736ac86e7a0ffa in / 
# Wed, 27 Jun 2018 12:03:27 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:47:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:47:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 12:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:49:55 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 12:04:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 12:04:47 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:c675459249e5e2b5c2119c5965490fb00918a71cd19ba6a70e1c14ea0366cc9a`  
		Last Modified: Wed, 27 Jun 2018 12:12:46 GMT  
		Size: 42.1 MB (42062253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87675d75ec387a55e1b055dfadf15fd7137586ee9acf9be9b2a4840e4001b2a`  
		Last Modified: Wed, 27 Jun 2018 12:58:52 GMT  
		Size: 9.5 MB (9472634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f55e83b4f681428c2fb1542a44d864d0d2f78d235199a33824985049fd42bb5`  
		Last Modified: Wed, 27 Jun 2018 12:58:50 GMT  
		Size: 3.9 MB (3913173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf79f9923b0cece59f9957dddd92e7c5cd6c8c3311984ae5249217f97be3d0f`  
		Last Modified: Wed, 27 Jun 2018 12:59:26 GMT  
		Size: 46.4 MB (46382240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cd8ed2ab006145f28b4a6a80fa54438a8edfddc3c94bb7a16ddd895eae4dd9`  
		Last Modified: Wed, 27 Jun 2018 13:00:37 GMT  
		Size: 194.0 MB (193959303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3a30cb8a0ae60fe619137b08534dbe892ceb37ae21bd4844d8d3ed8a8d9688`  
		Last Modified: Wed, 11 Jul 2018 12:09:04 GMT  
		Size: 149.8 MB (149750836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.27.1-stretch` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:6ac5b25d08890ee111818501ccaac79a6933874efb5a536956588b9418d89fc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.6 MB (452581724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d4c06d93489e7b5bdf689b1a7d68c450af9b26e6b2233ec0e5231ef6a7e6675`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:46:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:47:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 10:48:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:59:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 09:45:11 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 09:45:47 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:6054c6775a4e4515d2365ad9337e322dd5c6ad0e0bc8e5bb6b0252461e71afc4`  
		Last Modified: Wed, 27 Jun 2018 08:57:38 GMT  
		Size: 43.1 MB (43115791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d57f1ab872b53f8ac8eff946226a3ff9d5fb929656964b75dae06303e9c8ef4`  
		Last Modified: Wed, 27 Jun 2018 11:06:29 GMT  
		Size: 9.7 MB (9722190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662e63f6b578575fadc2ae00bf10794a2a45166c03105d940c919da9f78c1c43`  
		Last Modified: Wed, 27 Jun 2018 11:06:28 GMT  
		Size: 4.1 MB (4088526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242c1552cb593c1f860dd482a21f1607a2965ef9ac5b5a29aad2a768ce9d699a`  
		Last Modified: Wed, 27 Jun 2018 11:07:20 GMT  
		Size: 48.0 MB (48002203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b998f5fde2603980e88247b2183aa042f85bef2b36f90e0a7b32472aebdbeb43`  
		Last Modified: Wed, 27 Jun 2018 11:08:58 GMT  
		Size: 200.6 MB (200586169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6331dfc65736a1867a9bfa028f83a00b9de900d49ff322a6845f2ac4f155c148`  
		Last Modified: Wed, 11 Jul 2018 09:51:20 GMT  
		Size: 147.1 MB (147066845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.27.1-stretch` - linux; 386

```console
$ docker pull rust@sha256:87f70109d3fa492517072f3bc9bdf13d5c565e72c51305c04f504c8689216d14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **551.7 MB (551677477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d776d6b37a2f8cf68f93a19a7c04f3c42e1c8a96176a998a847b992a628efe6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:42:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 11:42:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:45:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 11:04:14 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 11:05:00 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fb0be3608d00a27aadd5246acebfa684875786308e5e07bd72ecedb1ea550e`  
		Last Modified: Wed, 06 Jun 2018 12:17:46 GMT  
		Size: 10.8 MB (10784612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109b3030038f2425d43d6f1796554d59323fd256fe621bd3a73249279da3a2e7`  
		Last Modified: Wed, 06 Jun 2018 12:17:44 GMT  
		Size: 4.6 MB (4555092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1af01b2a73367b29b158a599b31f1a8d0e0e964f8ba899158fe801dca9aa54f`  
		Last Modified: Wed, 06 Jun 2018 12:18:38 GMT  
		Size: 51.6 MB (51593154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fccdc7430291198a7cd90746f94076159d8f379640b3f5718b0d05cc583fbf7`  
		Last Modified: Wed, 06 Jun 2018 12:20:25 GMT  
		Size: 218.2 MB (218211308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87111e8c52e15ee62bbfd6bc101f2347c7cf742bb0b345c677a5a3db87892bfd`  
		Last Modified: Wed, 11 Jul 2018 11:13:12 GMT  
		Size: 220.5 MB (220488426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.27-jessie`

```console
$ docker pull rust@sha256:8d47316608938649ca76df23afeb504f86b68bca5bda51e5d6763a97edc304cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1.27-jessie` - linux; amd64

```console
$ docker pull rust@sha256:97a7bd97b8aa25ffef6d697b0eb55813a31ea7924883af615d371acac4b9ed91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.3 MB (472260638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ca39f52b17af3411f550d6549a9b50b403575e280f50d4c3edc99f42884a438`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:04:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:04:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:06:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:08:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 09:32:01 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 17 Jul 2018 09:32:40 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46dde23c37b3419122bb597461c1a48bdea1842aaae7dbe728dfa20a9aabe11b`  
		Last Modified: Tue, 17 Jul 2018 03:47:37 GMT  
		Size: 17.5 MB (17538077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ebaeb0745895220f609d4aa703e4563c39de239a2d00b85bece23a3ca3ac735`  
		Last Modified: Tue, 17 Jul 2018 03:48:27 GMT  
		Size: 43.3 MB (43297880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7428f935583e84197ae834885e62b69922f1ce7e8672a3746295555b3853fc7`  
		Last Modified: Tue, 17 Jul 2018 03:49:48 GMT  
		Size: 131.1 MB (131104182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c75fc343e81a6f96e0d8335aa471c95f1f14114249ba64c66c9f4444f7baac1`  
		Last Modified: Tue, 17 Jul 2018 09:45:20 GMT  
		Size: 226.1 MB (226068374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.27-jessie` - linux; arm variant v7

```console
$ docker pull rust@sha256:5e034ac2c06d60800955a9b065944dd16fa001bd07a89b7184aae2a7ac52a722
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.5 MB (370545736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a19356cbbecdb7b50eef9e6d5f23a8be36804fc73d5400752c9881f68f3e193`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:58:58 GMT
ADD file:5d5aafaeefc220111bbdbc1dd4f32bfad6875e4b28a214c9c88678b9205a8a21 in / 
# Wed, 27 Jun 2018 11:59:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:41:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:41:37 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 12:42:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:44:37 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 12:06:08 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 12:06:32 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:a06a975b738391d72254582d5a2537ac0961581af50ec5f7a76df622e01f96b9`  
		Last Modified: Wed, 27 Jun 2018 12:07:58 GMT  
		Size: 50.2 MB (50188121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ef1dbac9624e93cf5a7ac63c8df26bc65202d2536fb411e8506d69e563985f`  
		Last Modified: Wed, 27 Jun 2018 12:55:39 GMT  
		Size: 16.8 MB (16763249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2095682ba1c8ea76d23358f9f8685d48abce3f28fe2f04e491eab9fe089b2a4d`  
		Last Modified: Wed, 27 Jun 2018 12:56:06 GMT  
		Size: 39.8 MB (39766175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ee6c3d04736819ef47a350cc13ae8292f6ea46725afba7f0e9707189d34e4f`  
		Last Modified: Wed, 27 Jun 2018 12:56:46 GMT  
		Size: 114.1 MB (114077096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74af71dae9dca639a1015600e0093b45a34f751caf58640b661b1ef36e809fe5`  
		Last Modified: Wed, 11 Jul 2018 12:12:43 GMT  
		Size: 149.8 MB (149751095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.27-jessie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:677f92728d40a9492a3edad83e5a4d52b34a0e402354b58ded9c8fccc65bc890
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **372.6 MB (372633667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6adcf5b64c1c5011a3e69764648ce2180ab3890853a76d9547d8628ba1720507`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:16:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:18:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:26:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 09:48:08 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 09:48:39 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc4956efcaf7d30060a373d34961e3c6e71ee0317cb5381a180230a397c5442`  
		Last Modified: Sat, 05 May 2018 09:43:52 GMT  
		Size: 17.2 MB (17213842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71a9e408db2031cacf4541c01e9c992c2cdfd06fd26ad42c508faa3b0a71aae4`  
		Last Modified: Sat, 05 May 2018 09:44:04 GMT  
		Size: 41.0 MB (41017251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cec222141bb55b79ea11b53648102f30631ebf7c65a2b10bcddd8ce4f83e1b3`  
		Last Modified: Sat, 05 May 2018 09:44:22 GMT  
		Size: 115.9 MB (115888398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3167313df6db0ecec466fa83fdd385811fdc44a0eef7ea5f7b9bbdbc51caf208`  
		Last Modified: Wed, 11 Jul 2018 09:57:54 GMT  
		Size: 147.1 MB (147067322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.27-jessie` - linux; 386

```console
$ docker pull rust@sha256:2c98ff30161ae710afe60bf5088a889bae5b845d6fb564bf3a40371964e8d401
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **474.0 MB (473966741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f90418713aa817e0fa30a8754d8670d57a2c2c645dbd9f7454d5749886649e3`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:09 GMT
ADD file:08ad3a6967c6fe1bfa51f138b64b989a03a61773e4558ec538f63256b472dd77 in / 
# Wed, 27 Jun 2018 10:40:13 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:36:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 11:37:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:40:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 11:06:58 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 11:07:40 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:9e841ca399d43620c0457822730c2d49124abceba44d04d1ec0a0fa4f453b6d1`  
		Last Modified: Wed, 27 Jun 2018 10:53:00 GMT  
		Size: 54.5 MB (54483863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ca7b03c37b52ffd35c8f2d79cffc57130da8d386955cc12ba8c21a187c4fbf`  
		Last Modified: Wed, 27 Jun 2018 11:48:50 GMT  
		Size: 19.9 MB (19880956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4483b5c21761acc2d8af0c32253db028b7bf59fce0beb0629de69d8663edad44`  
		Last Modified: Wed, 27 Jun 2018 11:49:21 GMT  
		Size: 43.9 MB (43940305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42574455704e0bcf1337b2f02ca6cb792e3b8fa44272e4edc3e912173fc019d7`  
		Last Modified: Wed, 27 Jun 2018 11:50:05 GMT  
		Size: 135.2 MB (135173331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95cf4f5c9cceaf69df901ff1c69653ef645b52a0752791365cf8f1a3f32cbbd3`  
		Last Modified: Wed, 11 Jul 2018 11:21:19 GMT  
		Size: 220.5 MB (220488286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.27-slim`

```console
$ docker pull rust@sha256:234f3ac9d33dd9c9320984689fc59b31995a72691429288479754a5b7973f918
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1.27-slim` - linux; amd64

```console
$ docker pull rust@sha256:0e70d8dcea92f9657ca872343653b031929d0705af8cb2890d8ce51039c084fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.4 MB (286388171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c284dcffb7249eb2f860d1ae6afa9eccbdeabaa34dacb2ae1fce9d9be1557e6c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:30:26 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 17 Jul 2018 09:31:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e948b2315659182267272446927243ebefd25343f0e055cf62bd53b7f05f3f76`  
		Last Modified: Tue, 17 Jul 2018 09:40:53 GMT  
		Size: 263.9 MB (263902265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.27-slim` - linux; arm variant v7

```console
$ docker pull rust@sha256:36dd6980a37ed4167f23987fd0c647d17456cd2ffc5dd0d1b15abf2d717d53cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.1 MB (197109302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f6ba4f48a4528b621b913f50060251fdc3d84172fe3eed2df2a852269509aba`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 12:04:59 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 12:05:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7593372abd11523bdf4750615efd5a3d4eaabd3fb75e45c39b207c7c9fed16`  
		Last Modified: Wed, 11 Jul 2018 12:10:52 GMT  
		Size: 177.8 MB (177823029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.27-slim` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:12073f58dc677cdf1416afdbbf5878e1a040db71fb4ed01189108140f3025bdd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.1 MB (198053058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b55fcc056e73fc8cdb7bdc92f6efb38e87e583fff230ef8a286093e944b2a88a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 09:46:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 09:47:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2212f40a4b635542e3b14a7d51749ec0f9cc8eef3ca112b0fe479c612095bc55`  
		Last Modified: Wed, 11 Jul 2018 09:54:40 GMT  
		Size: 177.7 MB (177704981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.27-slim` - linux; 386

```console
$ docker pull rust@sha256:6111933327b11fe488fb52906426556f7fb5caede3ca7c0a8efc9f1481845cb3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.5 MB (285523775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:779f0f6824436748f45287d84aeffcce0f40d7fdae0b66b3f0caaa748322cb11`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 11:05:09 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 11:06:34 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243a3b1299482d1eb3d3f7dc69e3d66adb87d8cb6f75b9bf2af7040c6a4b659a`  
		Last Modified: Wed, 11 Jul 2018 11:17:48 GMT  
		Size: 262.4 MB (262383672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.27-slim-jessie`

```console
$ docker pull rust@sha256:8bb38334d9c34da1b9e7f129618c6315b8d59e9102dae5b5c40dc880113eee7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `rust:1.27-slim-jessie` - linux; amd64

```console
$ docker pull rust@sha256:8205f4ab41f7ddc6be3f6f7f9d12b6c3f64784cd02b8e54a31c2088fd0ddb3cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.3 MB (286294572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d8123f5e3937ed192e100c13a0b7bb91e31b74eb33b866d5727654cfe2f89b5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:33:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 17 Jul 2018 09:34:53 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147aea4ad3d5da6902f71ae6e4c8e20a905f60ebcd2e371381fa4805875c4fff`  
		Last Modified: Tue, 17 Jul 2018 09:47:57 GMT  
		Size: 256.2 MB (256174408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.27-slim-jessie` - linux; arm variant v7

```console
$ docker pull rust@sha256:21e682b36a9ed6e56e0594a3e987bb3d300a1d03aea11c170e6d25406bd75177
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.8 MB (198766902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03b39fcd64ac60d0e4f0a64e8eb0aa62a2caf6ce3a2aff7f9c4ba87d3e95311a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:59:29 GMT
ADD file:139eb5c6629bcd898347ffb1d1f2b4a86c7ce74f0da7ef85fc58886baf3efb25 in / 
# Wed, 27 Jun 2018 11:59:29 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 12:06:43 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 12:07:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:105c2fdbbcba2943a690f8b934af14483b01cb2fa01aa43b8ba23a69fe311f0a`  
		Last Modified: Wed, 27 Jun 2018 12:08:54 GMT  
		Size: 26.3 MB (26286807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:828710563bd73a941d286e42ff576bc69364e9750f9ddf6cf856e469ec30ce1b`  
		Last Modified: Wed, 11 Jul 2018 12:13:58 GMT  
		Size: 172.5 MB (172480095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.27-slim-jessie` - linux; 386

```console
$ docker pull rust@sha256:ff0891d4481486cfe61e448cc050f138778b77fac00ef6ceee965a436929cc88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.7 MB (285683333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:870397638800d7729d132e8b72ea51e1e50e8a5d93cb8430b4aaca5be5bd8d07`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:54 GMT
ADD file:cd5600a909bc1ec399c2dd64e2e0f8383e1029c2169b56e923349fff08a544a6 in / 
# Wed, 27 Jun 2018 10:40:55 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 11:07:53 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 11:10:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:754ff349eaaa3314a657ce6b24abe2a9d237430ab3b66d7bd2b21113499d68ff`  
		Last Modified: Wed, 27 Jun 2018 10:54:13 GMT  
		Size: 30.3 MB (30269679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbc5e53d2e10a6d44df49c396746b414fe6e2919200f8854b5f6814bf55c004`  
		Last Modified: Wed, 11 Jul 2018 11:24:06 GMT  
		Size: 255.4 MB (255413654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.27-slim-stretch`

```console
$ docker pull rust@sha256:234f3ac9d33dd9c9320984689fc59b31995a72691429288479754a5b7973f918
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1.27-slim-stretch` - linux; amd64

```console
$ docker pull rust@sha256:0e70d8dcea92f9657ca872343653b031929d0705af8cb2890d8ce51039c084fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.4 MB (286388171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c284dcffb7249eb2f860d1ae6afa9eccbdeabaa34dacb2ae1fce9d9be1557e6c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:30:26 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 17 Jul 2018 09:31:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e948b2315659182267272446927243ebefd25343f0e055cf62bd53b7f05f3f76`  
		Last Modified: Tue, 17 Jul 2018 09:40:53 GMT  
		Size: 263.9 MB (263902265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.27-slim-stretch` - linux; arm variant v7

```console
$ docker pull rust@sha256:36dd6980a37ed4167f23987fd0c647d17456cd2ffc5dd0d1b15abf2d717d53cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.1 MB (197109302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f6ba4f48a4528b621b913f50060251fdc3d84172fe3eed2df2a852269509aba`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 12:04:59 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 12:05:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7593372abd11523bdf4750615efd5a3d4eaabd3fb75e45c39b207c7c9fed16`  
		Last Modified: Wed, 11 Jul 2018 12:10:52 GMT  
		Size: 177.8 MB (177823029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.27-slim-stretch` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:12073f58dc677cdf1416afdbbf5878e1a040db71fb4ed01189108140f3025bdd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.1 MB (198053058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b55fcc056e73fc8cdb7bdc92f6efb38e87e583fff230ef8a286093e944b2a88a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 09:46:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 09:47:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2212f40a4b635542e3b14a7d51749ec0f9cc8eef3ca112b0fe479c612095bc55`  
		Last Modified: Wed, 11 Jul 2018 09:54:40 GMT  
		Size: 177.7 MB (177704981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.27-slim-stretch` - linux; 386

```console
$ docker pull rust@sha256:6111933327b11fe488fb52906426556f7fb5caede3ca7c0a8efc9f1481845cb3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.5 MB (285523775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:779f0f6824436748f45287d84aeffcce0f40d7fdae0b66b3f0caaa748322cb11`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 11:05:09 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 11:06:34 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243a3b1299482d1eb3d3f7dc69e3d66adb87d8cb6f75b9bf2af7040c6a4b659a`  
		Last Modified: Wed, 11 Jul 2018 11:17:48 GMT  
		Size: 262.4 MB (262383672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.27-stretch`

```console
$ docker pull rust@sha256:64cb7f3d867c5c75d27d11fbff106d7dbc50b82618b8fdde772573df463f8043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1.27-stretch` - linux; amd64

```console
$ docker pull rust@sha256:cb4378aa87ddd3f4086e24ef56f53fb4e58e2c617f4ba9f504879166e7ba8cf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **549.7 MB (549710769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f1c7a25cafb3402337b19c164b722d272b25ed81a931d7213fe1ef5ce3e4373`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:16:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 09:29:26 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 17 Jul 2018 09:30:06 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4eee24d4dacb41c21411e0477a741655303cdc48b18a948632c31f0f3a70bb8`  
		Last Modified: Tue, 17 Jul 2018 03:54:59 GMT  
		Size: 50.1 MB (50064642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59856e9f0abefedc34fcefc3f57c4955cc384785663745532ddc31a89641c83`  
		Last Modified: Tue, 17 Jul 2018 03:57:05 GMT  
		Size: 213.2 MB (213190110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d308c31aedf69e0dc0a306b09cf4c5b6020a1a1de2c2ab109013e8df8646c31`  
		Last Modified: Tue, 17 Jul 2018 09:36:57 GMT  
		Size: 226.1 MB (226069698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.27-stretch` - linux; arm variant v7

```console
$ docker pull rust@sha256:536638c219ad9493530a7eed7b1093e8be26322d431cb8d187f5f9e573f2da79
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **445.5 MB (445540439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73eb5409eac300f6257f4f6d597d885c84c0ea9bfceb77c7ba1d50ebda155646`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:26 GMT
ADD file:b928e6adeb71af1928fc7b8e0ff4770e5521eebf544a3b27f9736ac86e7a0ffa in / 
# Wed, 27 Jun 2018 12:03:27 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:47:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:47:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 12:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:49:55 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 12:04:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 12:04:47 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:c675459249e5e2b5c2119c5965490fb00918a71cd19ba6a70e1c14ea0366cc9a`  
		Last Modified: Wed, 27 Jun 2018 12:12:46 GMT  
		Size: 42.1 MB (42062253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87675d75ec387a55e1b055dfadf15fd7137586ee9acf9be9b2a4840e4001b2a`  
		Last Modified: Wed, 27 Jun 2018 12:58:52 GMT  
		Size: 9.5 MB (9472634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f55e83b4f681428c2fb1542a44d864d0d2f78d235199a33824985049fd42bb5`  
		Last Modified: Wed, 27 Jun 2018 12:58:50 GMT  
		Size: 3.9 MB (3913173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf79f9923b0cece59f9957dddd92e7c5cd6c8c3311984ae5249217f97be3d0f`  
		Last Modified: Wed, 27 Jun 2018 12:59:26 GMT  
		Size: 46.4 MB (46382240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cd8ed2ab006145f28b4a6a80fa54438a8edfddc3c94bb7a16ddd895eae4dd9`  
		Last Modified: Wed, 27 Jun 2018 13:00:37 GMT  
		Size: 194.0 MB (193959303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3a30cb8a0ae60fe619137b08534dbe892ceb37ae21bd4844d8d3ed8a8d9688`  
		Last Modified: Wed, 11 Jul 2018 12:09:04 GMT  
		Size: 149.8 MB (149750836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.27-stretch` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:6ac5b25d08890ee111818501ccaac79a6933874efb5a536956588b9418d89fc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.6 MB (452581724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d4c06d93489e7b5bdf689b1a7d68c450af9b26e6b2233ec0e5231ef6a7e6675`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:46:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:47:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 10:48:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:59:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 09:45:11 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 09:45:47 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:6054c6775a4e4515d2365ad9337e322dd5c6ad0e0bc8e5bb6b0252461e71afc4`  
		Last Modified: Wed, 27 Jun 2018 08:57:38 GMT  
		Size: 43.1 MB (43115791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d57f1ab872b53f8ac8eff946226a3ff9d5fb929656964b75dae06303e9c8ef4`  
		Last Modified: Wed, 27 Jun 2018 11:06:29 GMT  
		Size: 9.7 MB (9722190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662e63f6b578575fadc2ae00bf10794a2a45166c03105d940c919da9f78c1c43`  
		Last Modified: Wed, 27 Jun 2018 11:06:28 GMT  
		Size: 4.1 MB (4088526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242c1552cb593c1f860dd482a21f1607a2965ef9ac5b5a29aad2a768ce9d699a`  
		Last Modified: Wed, 27 Jun 2018 11:07:20 GMT  
		Size: 48.0 MB (48002203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b998f5fde2603980e88247b2183aa042f85bef2b36f90e0a7b32472aebdbeb43`  
		Last Modified: Wed, 27 Jun 2018 11:08:58 GMT  
		Size: 200.6 MB (200586169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6331dfc65736a1867a9bfa028f83a00b9de900d49ff322a6845f2ac4f155c148`  
		Last Modified: Wed, 11 Jul 2018 09:51:20 GMT  
		Size: 147.1 MB (147066845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.27-stretch` - linux; 386

```console
$ docker pull rust@sha256:87f70109d3fa492517072f3bc9bdf13d5c565e72c51305c04f504c8689216d14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **551.7 MB (551677477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d776d6b37a2f8cf68f93a19a7c04f3c42e1c8a96176a998a847b992a628efe6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:42:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 11:42:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:45:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 11:04:14 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 11:05:00 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fb0be3608d00a27aadd5246acebfa684875786308e5e07bd72ecedb1ea550e`  
		Last Modified: Wed, 06 Jun 2018 12:17:46 GMT  
		Size: 10.8 MB (10784612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109b3030038f2425d43d6f1796554d59323fd256fe621bd3a73249279da3a2e7`  
		Last Modified: Wed, 06 Jun 2018 12:17:44 GMT  
		Size: 4.6 MB (4555092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1af01b2a73367b29b158a599b31f1a8d0e0e964f8ba899158fe801dca9aa54f`  
		Last Modified: Wed, 06 Jun 2018 12:18:38 GMT  
		Size: 51.6 MB (51593154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fccdc7430291198a7cd90746f94076159d8f379640b3f5718b0d05cc583fbf7`  
		Last Modified: Wed, 06 Jun 2018 12:20:25 GMT  
		Size: 218.2 MB (218211308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87111e8c52e15ee62bbfd6bc101f2347c7cf742bb0b345c677a5a3db87892bfd`  
		Last Modified: Wed, 11 Jul 2018 11:13:12 GMT  
		Size: 220.5 MB (220488426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1-jessie`

```console
$ docker pull rust@sha256:8d47316608938649ca76df23afeb504f86b68bca5bda51e5d6763a97edc304cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1-jessie` - linux; amd64

```console
$ docker pull rust@sha256:97a7bd97b8aa25ffef6d697b0eb55813a31ea7924883af615d371acac4b9ed91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.3 MB (472260638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ca39f52b17af3411f550d6549a9b50b403575e280f50d4c3edc99f42884a438`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:04:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:04:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:06:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:08:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 09:32:01 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 17 Jul 2018 09:32:40 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46dde23c37b3419122bb597461c1a48bdea1842aaae7dbe728dfa20a9aabe11b`  
		Last Modified: Tue, 17 Jul 2018 03:47:37 GMT  
		Size: 17.5 MB (17538077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ebaeb0745895220f609d4aa703e4563c39de239a2d00b85bece23a3ca3ac735`  
		Last Modified: Tue, 17 Jul 2018 03:48:27 GMT  
		Size: 43.3 MB (43297880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7428f935583e84197ae834885e62b69922f1ce7e8672a3746295555b3853fc7`  
		Last Modified: Tue, 17 Jul 2018 03:49:48 GMT  
		Size: 131.1 MB (131104182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c75fc343e81a6f96e0d8335aa471c95f1f14114249ba64c66c9f4444f7baac1`  
		Last Modified: Tue, 17 Jul 2018 09:45:20 GMT  
		Size: 226.1 MB (226068374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-jessie` - linux; arm variant v7

```console
$ docker pull rust@sha256:5e034ac2c06d60800955a9b065944dd16fa001bd07a89b7184aae2a7ac52a722
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.5 MB (370545736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a19356cbbecdb7b50eef9e6d5f23a8be36804fc73d5400752c9881f68f3e193`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:58:58 GMT
ADD file:5d5aafaeefc220111bbdbc1dd4f32bfad6875e4b28a214c9c88678b9205a8a21 in / 
# Wed, 27 Jun 2018 11:59:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:41:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:41:37 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 12:42:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:44:37 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 12:06:08 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 12:06:32 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:a06a975b738391d72254582d5a2537ac0961581af50ec5f7a76df622e01f96b9`  
		Last Modified: Wed, 27 Jun 2018 12:07:58 GMT  
		Size: 50.2 MB (50188121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ef1dbac9624e93cf5a7ac63c8df26bc65202d2536fb411e8506d69e563985f`  
		Last Modified: Wed, 27 Jun 2018 12:55:39 GMT  
		Size: 16.8 MB (16763249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2095682ba1c8ea76d23358f9f8685d48abce3f28fe2f04e491eab9fe089b2a4d`  
		Last Modified: Wed, 27 Jun 2018 12:56:06 GMT  
		Size: 39.8 MB (39766175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ee6c3d04736819ef47a350cc13ae8292f6ea46725afba7f0e9707189d34e4f`  
		Last Modified: Wed, 27 Jun 2018 12:56:46 GMT  
		Size: 114.1 MB (114077096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74af71dae9dca639a1015600e0093b45a34f751caf58640b661b1ef36e809fe5`  
		Last Modified: Wed, 11 Jul 2018 12:12:43 GMT  
		Size: 149.8 MB (149751095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-jessie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:677f92728d40a9492a3edad83e5a4d52b34a0e402354b58ded9c8fccc65bc890
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **372.6 MB (372633667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6adcf5b64c1c5011a3e69764648ce2180ab3890853a76d9547d8628ba1720507`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:16:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:18:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:26:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 09:48:08 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 09:48:39 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc4956efcaf7d30060a373d34961e3c6e71ee0317cb5381a180230a397c5442`  
		Last Modified: Sat, 05 May 2018 09:43:52 GMT  
		Size: 17.2 MB (17213842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71a9e408db2031cacf4541c01e9c992c2cdfd06fd26ad42c508faa3b0a71aae4`  
		Last Modified: Sat, 05 May 2018 09:44:04 GMT  
		Size: 41.0 MB (41017251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cec222141bb55b79ea11b53648102f30631ebf7c65a2b10bcddd8ce4f83e1b3`  
		Last Modified: Sat, 05 May 2018 09:44:22 GMT  
		Size: 115.9 MB (115888398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3167313df6db0ecec466fa83fdd385811fdc44a0eef7ea5f7b9bbdbc51caf208`  
		Last Modified: Wed, 11 Jul 2018 09:57:54 GMT  
		Size: 147.1 MB (147067322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-jessie` - linux; 386

```console
$ docker pull rust@sha256:2c98ff30161ae710afe60bf5088a889bae5b845d6fb564bf3a40371964e8d401
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **474.0 MB (473966741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f90418713aa817e0fa30a8754d8670d57a2c2c645dbd9f7454d5749886649e3`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:09 GMT
ADD file:08ad3a6967c6fe1bfa51f138b64b989a03a61773e4558ec538f63256b472dd77 in / 
# Wed, 27 Jun 2018 10:40:13 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:36:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 11:37:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:40:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 11:06:58 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 11:07:40 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:9e841ca399d43620c0457822730c2d49124abceba44d04d1ec0a0fa4f453b6d1`  
		Last Modified: Wed, 27 Jun 2018 10:53:00 GMT  
		Size: 54.5 MB (54483863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ca7b03c37b52ffd35c8f2d79cffc57130da8d386955cc12ba8c21a187c4fbf`  
		Last Modified: Wed, 27 Jun 2018 11:48:50 GMT  
		Size: 19.9 MB (19880956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4483b5c21761acc2d8af0c32253db028b7bf59fce0beb0629de69d8663edad44`  
		Last Modified: Wed, 27 Jun 2018 11:49:21 GMT  
		Size: 43.9 MB (43940305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42574455704e0bcf1337b2f02ca6cb792e3b8fa44272e4edc3e912173fc019d7`  
		Last Modified: Wed, 27 Jun 2018 11:50:05 GMT  
		Size: 135.2 MB (135173331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95cf4f5c9cceaf69df901ff1c69653ef645b52a0752791365cf8f1a3f32cbbd3`  
		Last Modified: Wed, 11 Jul 2018 11:21:19 GMT  
		Size: 220.5 MB (220488286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1-slim`

```console
$ docker pull rust@sha256:234f3ac9d33dd9c9320984689fc59b31995a72691429288479754a5b7973f918
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1-slim` - linux; amd64

```console
$ docker pull rust@sha256:0e70d8dcea92f9657ca872343653b031929d0705af8cb2890d8ce51039c084fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.4 MB (286388171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c284dcffb7249eb2f860d1ae6afa9eccbdeabaa34dacb2ae1fce9d9be1557e6c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:30:26 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 17 Jul 2018 09:31:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e948b2315659182267272446927243ebefd25343f0e055cf62bd53b7f05f3f76`  
		Last Modified: Tue, 17 Jul 2018 09:40:53 GMT  
		Size: 263.9 MB (263902265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-slim` - linux; arm variant v7

```console
$ docker pull rust@sha256:36dd6980a37ed4167f23987fd0c647d17456cd2ffc5dd0d1b15abf2d717d53cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.1 MB (197109302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f6ba4f48a4528b621b913f50060251fdc3d84172fe3eed2df2a852269509aba`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 12:04:59 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 12:05:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7593372abd11523bdf4750615efd5a3d4eaabd3fb75e45c39b207c7c9fed16`  
		Last Modified: Wed, 11 Jul 2018 12:10:52 GMT  
		Size: 177.8 MB (177823029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-slim` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:12073f58dc677cdf1416afdbbf5878e1a040db71fb4ed01189108140f3025bdd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.1 MB (198053058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b55fcc056e73fc8cdb7bdc92f6efb38e87e583fff230ef8a286093e944b2a88a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 09:46:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 09:47:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2212f40a4b635542e3b14a7d51749ec0f9cc8eef3ca112b0fe479c612095bc55`  
		Last Modified: Wed, 11 Jul 2018 09:54:40 GMT  
		Size: 177.7 MB (177704981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-slim` - linux; 386

```console
$ docker pull rust@sha256:6111933327b11fe488fb52906426556f7fb5caede3ca7c0a8efc9f1481845cb3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.5 MB (285523775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:779f0f6824436748f45287d84aeffcce0f40d7fdae0b66b3f0caaa748322cb11`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 11:05:09 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 11:06:34 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243a3b1299482d1eb3d3f7dc69e3d66adb87d8cb6f75b9bf2af7040c6a4b659a`  
		Last Modified: Wed, 11 Jul 2018 11:17:48 GMT  
		Size: 262.4 MB (262383672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1-slim-jessie`

```console
$ docker pull rust@sha256:8bb38334d9c34da1b9e7f129618c6315b8d59e9102dae5b5c40dc880113eee7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `rust:1-slim-jessie` - linux; amd64

```console
$ docker pull rust@sha256:8205f4ab41f7ddc6be3f6f7f9d12b6c3f64784cd02b8e54a31c2088fd0ddb3cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.3 MB (286294572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d8123f5e3937ed192e100c13a0b7bb91e31b74eb33b866d5727654cfe2f89b5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:33:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 17 Jul 2018 09:34:53 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147aea4ad3d5da6902f71ae6e4c8e20a905f60ebcd2e371381fa4805875c4fff`  
		Last Modified: Tue, 17 Jul 2018 09:47:57 GMT  
		Size: 256.2 MB (256174408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-slim-jessie` - linux; arm variant v7

```console
$ docker pull rust@sha256:21e682b36a9ed6e56e0594a3e987bb3d300a1d03aea11c170e6d25406bd75177
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.8 MB (198766902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03b39fcd64ac60d0e4f0a64e8eb0aa62a2caf6ce3a2aff7f9c4ba87d3e95311a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:59:29 GMT
ADD file:139eb5c6629bcd898347ffb1d1f2b4a86c7ce74f0da7ef85fc58886baf3efb25 in / 
# Wed, 27 Jun 2018 11:59:29 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 12:06:43 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 12:07:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:105c2fdbbcba2943a690f8b934af14483b01cb2fa01aa43b8ba23a69fe311f0a`  
		Last Modified: Wed, 27 Jun 2018 12:08:54 GMT  
		Size: 26.3 MB (26286807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:828710563bd73a941d286e42ff576bc69364e9750f9ddf6cf856e469ec30ce1b`  
		Last Modified: Wed, 11 Jul 2018 12:13:58 GMT  
		Size: 172.5 MB (172480095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-slim-jessie` - linux; 386

```console
$ docker pull rust@sha256:ff0891d4481486cfe61e448cc050f138778b77fac00ef6ceee965a436929cc88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.7 MB (285683333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:870397638800d7729d132e8b72ea51e1e50e8a5d93cb8430b4aaca5be5bd8d07`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:54 GMT
ADD file:cd5600a909bc1ec399c2dd64e2e0f8383e1029c2169b56e923349fff08a544a6 in / 
# Wed, 27 Jun 2018 10:40:55 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 11:07:53 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 11:10:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:754ff349eaaa3314a657ce6b24abe2a9d237430ab3b66d7bd2b21113499d68ff`  
		Last Modified: Wed, 27 Jun 2018 10:54:13 GMT  
		Size: 30.3 MB (30269679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbc5e53d2e10a6d44df49c396746b414fe6e2919200f8854b5f6814bf55c004`  
		Last Modified: Wed, 11 Jul 2018 11:24:06 GMT  
		Size: 255.4 MB (255413654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1-slim-stretch`

```console
$ docker pull rust@sha256:234f3ac9d33dd9c9320984689fc59b31995a72691429288479754a5b7973f918
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1-slim-stretch` - linux; amd64

```console
$ docker pull rust@sha256:0e70d8dcea92f9657ca872343653b031929d0705af8cb2890d8ce51039c084fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.4 MB (286388171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c284dcffb7249eb2f860d1ae6afa9eccbdeabaa34dacb2ae1fce9d9be1557e6c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:30:26 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 17 Jul 2018 09:31:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e948b2315659182267272446927243ebefd25343f0e055cf62bd53b7f05f3f76`  
		Last Modified: Tue, 17 Jul 2018 09:40:53 GMT  
		Size: 263.9 MB (263902265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-slim-stretch` - linux; arm variant v7

```console
$ docker pull rust@sha256:36dd6980a37ed4167f23987fd0c647d17456cd2ffc5dd0d1b15abf2d717d53cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.1 MB (197109302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f6ba4f48a4528b621b913f50060251fdc3d84172fe3eed2df2a852269509aba`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 12:04:59 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 12:05:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7593372abd11523bdf4750615efd5a3d4eaabd3fb75e45c39b207c7c9fed16`  
		Last Modified: Wed, 11 Jul 2018 12:10:52 GMT  
		Size: 177.8 MB (177823029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-slim-stretch` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:12073f58dc677cdf1416afdbbf5878e1a040db71fb4ed01189108140f3025bdd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.1 MB (198053058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b55fcc056e73fc8cdb7bdc92f6efb38e87e583fff230ef8a286093e944b2a88a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 09:46:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 09:47:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2212f40a4b635542e3b14a7d51749ec0f9cc8eef3ca112b0fe479c612095bc55`  
		Last Modified: Wed, 11 Jul 2018 09:54:40 GMT  
		Size: 177.7 MB (177704981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-slim-stretch` - linux; 386

```console
$ docker pull rust@sha256:6111933327b11fe488fb52906426556f7fb5caede3ca7c0a8efc9f1481845cb3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.5 MB (285523775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:779f0f6824436748f45287d84aeffcce0f40d7fdae0b66b3f0caaa748322cb11`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 11:05:09 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 11:06:34 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243a3b1299482d1eb3d3f7dc69e3d66adb87d8cb6f75b9bf2af7040c6a4b659a`  
		Last Modified: Wed, 11 Jul 2018 11:17:48 GMT  
		Size: 262.4 MB (262383672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1-stretch`

```console
$ docker pull rust@sha256:64cb7f3d867c5c75d27d11fbff106d7dbc50b82618b8fdde772573df463f8043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1-stretch` - linux; amd64

```console
$ docker pull rust@sha256:cb4378aa87ddd3f4086e24ef56f53fb4e58e2c617f4ba9f504879166e7ba8cf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **549.7 MB (549710769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f1c7a25cafb3402337b19c164b722d272b25ed81a931d7213fe1ef5ce3e4373`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:16:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 09:29:26 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 17 Jul 2018 09:30:06 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4eee24d4dacb41c21411e0477a741655303cdc48b18a948632c31f0f3a70bb8`  
		Last Modified: Tue, 17 Jul 2018 03:54:59 GMT  
		Size: 50.1 MB (50064642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59856e9f0abefedc34fcefc3f57c4955cc384785663745532ddc31a89641c83`  
		Last Modified: Tue, 17 Jul 2018 03:57:05 GMT  
		Size: 213.2 MB (213190110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d308c31aedf69e0dc0a306b09cf4c5b6020a1a1de2c2ab109013e8df8646c31`  
		Last Modified: Tue, 17 Jul 2018 09:36:57 GMT  
		Size: 226.1 MB (226069698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-stretch` - linux; arm variant v7

```console
$ docker pull rust@sha256:536638c219ad9493530a7eed7b1093e8be26322d431cb8d187f5f9e573f2da79
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **445.5 MB (445540439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73eb5409eac300f6257f4f6d597d885c84c0ea9bfceb77c7ba1d50ebda155646`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:26 GMT
ADD file:b928e6adeb71af1928fc7b8e0ff4770e5521eebf544a3b27f9736ac86e7a0ffa in / 
# Wed, 27 Jun 2018 12:03:27 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:47:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:47:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 12:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:49:55 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 12:04:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 12:04:47 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:c675459249e5e2b5c2119c5965490fb00918a71cd19ba6a70e1c14ea0366cc9a`  
		Last Modified: Wed, 27 Jun 2018 12:12:46 GMT  
		Size: 42.1 MB (42062253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87675d75ec387a55e1b055dfadf15fd7137586ee9acf9be9b2a4840e4001b2a`  
		Last Modified: Wed, 27 Jun 2018 12:58:52 GMT  
		Size: 9.5 MB (9472634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f55e83b4f681428c2fb1542a44d864d0d2f78d235199a33824985049fd42bb5`  
		Last Modified: Wed, 27 Jun 2018 12:58:50 GMT  
		Size: 3.9 MB (3913173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf79f9923b0cece59f9957dddd92e7c5cd6c8c3311984ae5249217f97be3d0f`  
		Last Modified: Wed, 27 Jun 2018 12:59:26 GMT  
		Size: 46.4 MB (46382240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cd8ed2ab006145f28b4a6a80fa54438a8edfddc3c94bb7a16ddd895eae4dd9`  
		Last Modified: Wed, 27 Jun 2018 13:00:37 GMT  
		Size: 194.0 MB (193959303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3a30cb8a0ae60fe619137b08534dbe892ceb37ae21bd4844d8d3ed8a8d9688`  
		Last Modified: Wed, 11 Jul 2018 12:09:04 GMT  
		Size: 149.8 MB (149750836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-stretch` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:6ac5b25d08890ee111818501ccaac79a6933874efb5a536956588b9418d89fc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.6 MB (452581724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d4c06d93489e7b5bdf689b1a7d68c450af9b26e6b2233ec0e5231ef6a7e6675`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:46:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:47:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 10:48:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:59:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 09:45:11 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 09:45:47 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:6054c6775a4e4515d2365ad9337e322dd5c6ad0e0bc8e5bb6b0252461e71afc4`  
		Last Modified: Wed, 27 Jun 2018 08:57:38 GMT  
		Size: 43.1 MB (43115791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d57f1ab872b53f8ac8eff946226a3ff9d5fb929656964b75dae06303e9c8ef4`  
		Last Modified: Wed, 27 Jun 2018 11:06:29 GMT  
		Size: 9.7 MB (9722190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662e63f6b578575fadc2ae00bf10794a2a45166c03105d940c919da9f78c1c43`  
		Last Modified: Wed, 27 Jun 2018 11:06:28 GMT  
		Size: 4.1 MB (4088526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242c1552cb593c1f860dd482a21f1607a2965ef9ac5b5a29aad2a768ce9d699a`  
		Last Modified: Wed, 27 Jun 2018 11:07:20 GMT  
		Size: 48.0 MB (48002203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b998f5fde2603980e88247b2183aa042f85bef2b36f90e0a7b32472aebdbeb43`  
		Last Modified: Wed, 27 Jun 2018 11:08:58 GMT  
		Size: 200.6 MB (200586169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6331dfc65736a1867a9bfa028f83a00b9de900d49ff322a6845f2ac4f155c148`  
		Last Modified: Wed, 11 Jul 2018 09:51:20 GMT  
		Size: 147.1 MB (147066845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-stretch` - linux; 386

```console
$ docker pull rust@sha256:87f70109d3fa492517072f3bc9bdf13d5c565e72c51305c04f504c8689216d14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **551.7 MB (551677477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d776d6b37a2f8cf68f93a19a7c04f3c42e1c8a96176a998a847b992a628efe6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:42:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 11:42:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:45:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 11:04:14 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 11:05:00 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fb0be3608d00a27aadd5246acebfa684875786308e5e07bd72ecedb1ea550e`  
		Last Modified: Wed, 06 Jun 2018 12:17:46 GMT  
		Size: 10.8 MB (10784612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109b3030038f2425d43d6f1796554d59323fd256fe621bd3a73249279da3a2e7`  
		Last Modified: Wed, 06 Jun 2018 12:17:44 GMT  
		Size: 4.6 MB (4555092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1af01b2a73367b29b158a599b31f1a8d0e0e964f8ba899158fe801dca9aa54f`  
		Last Modified: Wed, 06 Jun 2018 12:18:38 GMT  
		Size: 51.6 MB (51593154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fccdc7430291198a7cd90746f94076159d8f379640b3f5718b0d05cc583fbf7`  
		Last Modified: Wed, 06 Jun 2018 12:20:25 GMT  
		Size: 218.2 MB (218211308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87111e8c52e15ee62bbfd6bc101f2347c7cf742bb0b345c677a5a3db87892bfd`  
		Last Modified: Wed, 11 Jul 2018 11:13:12 GMT  
		Size: 220.5 MB (220488426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:jessie`

```console
$ docker pull rust@sha256:8d47316608938649ca76df23afeb504f86b68bca5bda51e5d6763a97edc304cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:jessie` - linux; amd64

```console
$ docker pull rust@sha256:97a7bd97b8aa25ffef6d697b0eb55813a31ea7924883af615d371acac4b9ed91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.3 MB (472260638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ca39f52b17af3411f550d6549a9b50b403575e280f50d4c3edc99f42884a438`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:04:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:04:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:06:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:08:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 09:32:01 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 17 Jul 2018 09:32:40 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46dde23c37b3419122bb597461c1a48bdea1842aaae7dbe728dfa20a9aabe11b`  
		Last Modified: Tue, 17 Jul 2018 03:47:37 GMT  
		Size: 17.5 MB (17538077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ebaeb0745895220f609d4aa703e4563c39de239a2d00b85bece23a3ca3ac735`  
		Last Modified: Tue, 17 Jul 2018 03:48:27 GMT  
		Size: 43.3 MB (43297880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7428f935583e84197ae834885e62b69922f1ce7e8672a3746295555b3853fc7`  
		Last Modified: Tue, 17 Jul 2018 03:49:48 GMT  
		Size: 131.1 MB (131104182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c75fc343e81a6f96e0d8335aa471c95f1f14114249ba64c66c9f4444f7baac1`  
		Last Modified: Tue, 17 Jul 2018 09:45:20 GMT  
		Size: 226.1 MB (226068374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:jessie` - linux; arm variant v7

```console
$ docker pull rust@sha256:5e034ac2c06d60800955a9b065944dd16fa001bd07a89b7184aae2a7ac52a722
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.5 MB (370545736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a19356cbbecdb7b50eef9e6d5f23a8be36804fc73d5400752c9881f68f3e193`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:58:58 GMT
ADD file:5d5aafaeefc220111bbdbc1dd4f32bfad6875e4b28a214c9c88678b9205a8a21 in / 
# Wed, 27 Jun 2018 11:59:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:41:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:41:37 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 12:42:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:44:37 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 12:06:08 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 12:06:32 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:a06a975b738391d72254582d5a2537ac0961581af50ec5f7a76df622e01f96b9`  
		Last Modified: Wed, 27 Jun 2018 12:07:58 GMT  
		Size: 50.2 MB (50188121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ef1dbac9624e93cf5a7ac63c8df26bc65202d2536fb411e8506d69e563985f`  
		Last Modified: Wed, 27 Jun 2018 12:55:39 GMT  
		Size: 16.8 MB (16763249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2095682ba1c8ea76d23358f9f8685d48abce3f28fe2f04e491eab9fe089b2a4d`  
		Last Modified: Wed, 27 Jun 2018 12:56:06 GMT  
		Size: 39.8 MB (39766175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ee6c3d04736819ef47a350cc13ae8292f6ea46725afba7f0e9707189d34e4f`  
		Last Modified: Wed, 27 Jun 2018 12:56:46 GMT  
		Size: 114.1 MB (114077096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74af71dae9dca639a1015600e0093b45a34f751caf58640b661b1ef36e809fe5`  
		Last Modified: Wed, 11 Jul 2018 12:12:43 GMT  
		Size: 149.8 MB (149751095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:jessie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:677f92728d40a9492a3edad83e5a4d52b34a0e402354b58ded9c8fccc65bc890
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **372.6 MB (372633667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6adcf5b64c1c5011a3e69764648ce2180ab3890853a76d9547d8628ba1720507`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:16:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:18:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:26:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 09:48:08 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 09:48:39 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc4956efcaf7d30060a373d34961e3c6e71ee0317cb5381a180230a397c5442`  
		Last Modified: Sat, 05 May 2018 09:43:52 GMT  
		Size: 17.2 MB (17213842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71a9e408db2031cacf4541c01e9c992c2cdfd06fd26ad42c508faa3b0a71aae4`  
		Last Modified: Sat, 05 May 2018 09:44:04 GMT  
		Size: 41.0 MB (41017251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cec222141bb55b79ea11b53648102f30631ebf7c65a2b10bcddd8ce4f83e1b3`  
		Last Modified: Sat, 05 May 2018 09:44:22 GMT  
		Size: 115.9 MB (115888398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3167313df6db0ecec466fa83fdd385811fdc44a0eef7ea5f7b9bbdbc51caf208`  
		Last Modified: Wed, 11 Jul 2018 09:57:54 GMT  
		Size: 147.1 MB (147067322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:jessie` - linux; 386

```console
$ docker pull rust@sha256:2c98ff30161ae710afe60bf5088a889bae5b845d6fb564bf3a40371964e8d401
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **474.0 MB (473966741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f90418713aa817e0fa30a8754d8670d57a2c2c645dbd9f7454d5749886649e3`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:09 GMT
ADD file:08ad3a6967c6fe1bfa51f138b64b989a03a61773e4558ec538f63256b472dd77 in / 
# Wed, 27 Jun 2018 10:40:13 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:36:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 11:37:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:40:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 11:06:58 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 11:07:40 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:9e841ca399d43620c0457822730c2d49124abceba44d04d1ec0a0fa4f453b6d1`  
		Last Modified: Wed, 27 Jun 2018 10:53:00 GMT  
		Size: 54.5 MB (54483863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ca7b03c37b52ffd35c8f2d79cffc57130da8d386955cc12ba8c21a187c4fbf`  
		Last Modified: Wed, 27 Jun 2018 11:48:50 GMT  
		Size: 19.9 MB (19880956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4483b5c21761acc2d8af0c32253db028b7bf59fce0beb0629de69d8663edad44`  
		Last Modified: Wed, 27 Jun 2018 11:49:21 GMT  
		Size: 43.9 MB (43940305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42574455704e0bcf1337b2f02ca6cb792e3b8fa44272e4edc3e912173fc019d7`  
		Last Modified: Wed, 27 Jun 2018 11:50:05 GMT  
		Size: 135.2 MB (135173331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95cf4f5c9cceaf69df901ff1c69653ef645b52a0752791365cf8f1a3f32cbbd3`  
		Last Modified: Wed, 11 Jul 2018 11:21:19 GMT  
		Size: 220.5 MB (220488286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:latest`

```console
$ docker pull rust@sha256:64cb7f3d867c5c75d27d11fbff106d7dbc50b82618b8fdde772573df463f8043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:latest` - linux; amd64

```console
$ docker pull rust@sha256:cb4378aa87ddd3f4086e24ef56f53fb4e58e2c617f4ba9f504879166e7ba8cf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **549.7 MB (549710769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f1c7a25cafb3402337b19c164b722d272b25ed81a931d7213fe1ef5ce3e4373`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:16:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 09:29:26 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 17 Jul 2018 09:30:06 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4eee24d4dacb41c21411e0477a741655303cdc48b18a948632c31f0f3a70bb8`  
		Last Modified: Tue, 17 Jul 2018 03:54:59 GMT  
		Size: 50.1 MB (50064642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59856e9f0abefedc34fcefc3f57c4955cc384785663745532ddc31a89641c83`  
		Last Modified: Tue, 17 Jul 2018 03:57:05 GMT  
		Size: 213.2 MB (213190110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d308c31aedf69e0dc0a306b09cf4c5b6020a1a1de2c2ab109013e8df8646c31`  
		Last Modified: Tue, 17 Jul 2018 09:36:57 GMT  
		Size: 226.1 MB (226069698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:latest` - linux; arm variant v7

```console
$ docker pull rust@sha256:536638c219ad9493530a7eed7b1093e8be26322d431cb8d187f5f9e573f2da79
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **445.5 MB (445540439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73eb5409eac300f6257f4f6d597d885c84c0ea9bfceb77c7ba1d50ebda155646`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:26 GMT
ADD file:b928e6adeb71af1928fc7b8e0ff4770e5521eebf544a3b27f9736ac86e7a0ffa in / 
# Wed, 27 Jun 2018 12:03:27 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:47:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:47:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 12:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:49:55 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 12:04:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 12:04:47 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:c675459249e5e2b5c2119c5965490fb00918a71cd19ba6a70e1c14ea0366cc9a`  
		Last Modified: Wed, 27 Jun 2018 12:12:46 GMT  
		Size: 42.1 MB (42062253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87675d75ec387a55e1b055dfadf15fd7137586ee9acf9be9b2a4840e4001b2a`  
		Last Modified: Wed, 27 Jun 2018 12:58:52 GMT  
		Size: 9.5 MB (9472634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f55e83b4f681428c2fb1542a44d864d0d2f78d235199a33824985049fd42bb5`  
		Last Modified: Wed, 27 Jun 2018 12:58:50 GMT  
		Size: 3.9 MB (3913173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf79f9923b0cece59f9957dddd92e7c5cd6c8c3311984ae5249217f97be3d0f`  
		Last Modified: Wed, 27 Jun 2018 12:59:26 GMT  
		Size: 46.4 MB (46382240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cd8ed2ab006145f28b4a6a80fa54438a8edfddc3c94bb7a16ddd895eae4dd9`  
		Last Modified: Wed, 27 Jun 2018 13:00:37 GMT  
		Size: 194.0 MB (193959303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3a30cb8a0ae60fe619137b08534dbe892ceb37ae21bd4844d8d3ed8a8d9688`  
		Last Modified: Wed, 11 Jul 2018 12:09:04 GMT  
		Size: 149.8 MB (149750836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:latest` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:6ac5b25d08890ee111818501ccaac79a6933874efb5a536956588b9418d89fc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.6 MB (452581724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d4c06d93489e7b5bdf689b1a7d68c450af9b26e6b2233ec0e5231ef6a7e6675`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:46:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:47:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 10:48:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:59:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 09:45:11 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 09:45:47 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:6054c6775a4e4515d2365ad9337e322dd5c6ad0e0bc8e5bb6b0252461e71afc4`  
		Last Modified: Wed, 27 Jun 2018 08:57:38 GMT  
		Size: 43.1 MB (43115791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d57f1ab872b53f8ac8eff946226a3ff9d5fb929656964b75dae06303e9c8ef4`  
		Last Modified: Wed, 27 Jun 2018 11:06:29 GMT  
		Size: 9.7 MB (9722190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662e63f6b578575fadc2ae00bf10794a2a45166c03105d940c919da9f78c1c43`  
		Last Modified: Wed, 27 Jun 2018 11:06:28 GMT  
		Size: 4.1 MB (4088526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242c1552cb593c1f860dd482a21f1607a2965ef9ac5b5a29aad2a768ce9d699a`  
		Last Modified: Wed, 27 Jun 2018 11:07:20 GMT  
		Size: 48.0 MB (48002203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b998f5fde2603980e88247b2183aa042f85bef2b36f90e0a7b32472aebdbeb43`  
		Last Modified: Wed, 27 Jun 2018 11:08:58 GMT  
		Size: 200.6 MB (200586169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6331dfc65736a1867a9bfa028f83a00b9de900d49ff322a6845f2ac4f155c148`  
		Last Modified: Wed, 11 Jul 2018 09:51:20 GMT  
		Size: 147.1 MB (147066845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:latest` - linux; 386

```console
$ docker pull rust@sha256:87f70109d3fa492517072f3bc9bdf13d5c565e72c51305c04f504c8689216d14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **551.7 MB (551677477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d776d6b37a2f8cf68f93a19a7c04f3c42e1c8a96176a998a847b992a628efe6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:42:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 11:42:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:45:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 11:04:14 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 11:05:00 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fb0be3608d00a27aadd5246acebfa684875786308e5e07bd72ecedb1ea550e`  
		Last Modified: Wed, 06 Jun 2018 12:17:46 GMT  
		Size: 10.8 MB (10784612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109b3030038f2425d43d6f1796554d59323fd256fe621bd3a73249279da3a2e7`  
		Last Modified: Wed, 06 Jun 2018 12:17:44 GMT  
		Size: 4.6 MB (4555092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1af01b2a73367b29b158a599b31f1a8d0e0e964f8ba899158fe801dca9aa54f`  
		Last Modified: Wed, 06 Jun 2018 12:18:38 GMT  
		Size: 51.6 MB (51593154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fccdc7430291198a7cd90746f94076159d8f379640b3f5718b0d05cc583fbf7`  
		Last Modified: Wed, 06 Jun 2018 12:20:25 GMT  
		Size: 218.2 MB (218211308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87111e8c52e15ee62bbfd6bc101f2347c7cf742bb0b345c677a5a3db87892bfd`  
		Last Modified: Wed, 11 Jul 2018 11:13:12 GMT  
		Size: 220.5 MB (220488426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:slim`

```console
$ docker pull rust@sha256:234f3ac9d33dd9c9320984689fc59b31995a72691429288479754a5b7973f918
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:slim` - linux; amd64

```console
$ docker pull rust@sha256:0e70d8dcea92f9657ca872343653b031929d0705af8cb2890d8ce51039c084fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.4 MB (286388171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c284dcffb7249eb2f860d1ae6afa9eccbdeabaa34dacb2ae1fce9d9be1557e6c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:30:26 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 17 Jul 2018 09:31:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e948b2315659182267272446927243ebefd25343f0e055cf62bd53b7f05f3f76`  
		Last Modified: Tue, 17 Jul 2018 09:40:53 GMT  
		Size: 263.9 MB (263902265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:slim` - linux; arm variant v7

```console
$ docker pull rust@sha256:36dd6980a37ed4167f23987fd0c647d17456cd2ffc5dd0d1b15abf2d717d53cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.1 MB (197109302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f6ba4f48a4528b621b913f50060251fdc3d84172fe3eed2df2a852269509aba`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 12:04:59 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 12:05:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7593372abd11523bdf4750615efd5a3d4eaabd3fb75e45c39b207c7c9fed16`  
		Last Modified: Wed, 11 Jul 2018 12:10:52 GMT  
		Size: 177.8 MB (177823029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:slim` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:12073f58dc677cdf1416afdbbf5878e1a040db71fb4ed01189108140f3025bdd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.1 MB (198053058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b55fcc056e73fc8cdb7bdc92f6efb38e87e583fff230ef8a286093e944b2a88a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 09:46:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 09:47:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2212f40a4b635542e3b14a7d51749ec0f9cc8eef3ca112b0fe479c612095bc55`  
		Last Modified: Wed, 11 Jul 2018 09:54:40 GMT  
		Size: 177.7 MB (177704981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:slim` - linux; 386

```console
$ docker pull rust@sha256:6111933327b11fe488fb52906426556f7fb5caede3ca7c0a8efc9f1481845cb3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.5 MB (285523775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:779f0f6824436748f45287d84aeffcce0f40d7fdae0b66b3f0caaa748322cb11`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 11:05:09 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 11:06:34 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243a3b1299482d1eb3d3f7dc69e3d66adb87d8cb6f75b9bf2af7040c6a4b659a`  
		Last Modified: Wed, 11 Jul 2018 11:17:48 GMT  
		Size: 262.4 MB (262383672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:slim-jessie`

```console
$ docker pull rust@sha256:8bb38334d9c34da1b9e7f129618c6315b8d59e9102dae5b5c40dc880113eee7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `rust:slim-jessie` - linux; amd64

```console
$ docker pull rust@sha256:8205f4ab41f7ddc6be3f6f7f9d12b6c3f64784cd02b8e54a31c2088fd0ddb3cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.3 MB (286294572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d8123f5e3937ed192e100c13a0b7bb91e31b74eb33b866d5727654cfe2f89b5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:33:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 17 Jul 2018 09:34:53 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147aea4ad3d5da6902f71ae6e4c8e20a905f60ebcd2e371381fa4805875c4fff`  
		Last Modified: Tue, 17 Jul 2018 09:47:57 GMT  
		Size: 256.2 MB (256174408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:slim-jessie` - linux; arm variant v7

```console
$ docker pull rust@sha256:21e682b36a9ed6e56e0594a3e987bb3d300a1d03aea11c170e6d25406bd75177
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.8 MB (198766902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03b39fcd64ac60d0e4f0a64e8eb0aa62a2caf6ce3a2aff7f9c4ba87d3e95311a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:59:29 GMT
ADD file:139eb5c6629bcd898347ffb1d1f2b4a86c7ce74f0da7ef85fc58886baf3efb25 in / 
# Wed, 27 Jun 2018 11:59:29 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 12:06:43 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 12:07:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:105c2fdbbcba2943a690f8b934af14483b01cb2fa01aa43b8ba23a69fe311f0a`  
		Last Modified: Wed, 27 Jun 2018 12:08:54 GMT  
		Size: 26.3 MB (26286807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:828710563bd73a941d286e42ff576bc69364e9750f9ddf6cf856e469ec30ce1b`  
		Last Modified: Wed, 11 Jul 2018 12:13:58 GMT  
		Size: 172.5 MB (172480095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:slim-jessie` - linux; 386

```console
$ docker pull rust@sha256:ff0891d4481486cfe61e448cc050f138778b77fac00ef6ceee965a436929cc88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.7 MB (285683333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:870397638800d7729d132e8b72ea51e1e50e8a5d93cb8430b4aaca5be5bd8d07`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:54 GMT
ADD file:cd5600a909bc1ec399c2dd64e2e0f8383e1029c2169b56e923349fff08a544a6 in / 
# Wed, 27 Jun 2018 10:40:55 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 11:07:53 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 11:10:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:754ff349eaaa3314a657ce6b24abe2a9d237430ab3b66d7bd2b21113499d68ff`  
		Last Modified: Wed, 27 Jun 2018 10:54:13 GMT  
		Size: 30.3 MB (30269679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbc5e53d2e10a6d44df49c396746b414fe6e2919200f8854b5f6814bf55c004`  
		Last Modified: Wed, 11 Jul 2018 11:24:06 GMT  
		Size: 255.4 MB (255413654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:slim-stretch`

```console
$ docker pull rust@sha256:234f3ac9d33dd9c9320984689fc59b31995a72691429288479754a5b7973f918
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:slim-stretch` - linux; amd64

```console
$ docker pull rust@sha256:0e70d8dcea92f9657ca872343653b031929d0705af8cb2890d8ce51039c084fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.4 MB (286388171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c284dcffb7249eb2f860d1ae6afa9eccbdeabaa34dacb2ae1fce9d9be1557e6c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:30:26 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 17 Jul 2018 09:31:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e948b2315659182267272446927243ebefd25343f0e055cf62bd53b7f05f3f76`  
		Last Modified: Tue, 17 Jul 2018 09:40:53 GMT  
		Size: 263.9 MB (263902265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:slim-stretch` - linux; arm variant v7

```console
$ docker pull rust@sha256:36dd6980a37ed4167f23987fd0c647d17456cd2ffc5dd0d1b15abf2d717d53cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.1 MB (197109302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f6ba4f48a4528b621b913f50060251fdc3d84172fe3eed2df2a852269509aba`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 12:04:59 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 12:05:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7593372abd11523bdf4750615efd5a3d4eaabd3fb75e45c39b207c7c9fed16`  
		Last Modified: Wed, 11 Jul 2018 12:10:52 GMT  
		Size: 177.8 MB (177823029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:slim-stretch` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:12073f58dc677cdf1416afdbbf5878e1a040db71fb4ed01189108140f3025bdd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.1 MB (198053058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b55fcc056e73fc8cdb7bdc92f6efb38e87e583fff230ef8a286093e944b2a88a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 09:46:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 09:47:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2212f40a4b635542e3b14a7d51749ec0f9cc8eef3ca112b0fe479c612095bc55`  
		Last Modified: Wed, 11 Jul 2018 09:54:40 GMT  
		Size: 177.7 MB (177704981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:slim-stretch` - linux; 386

```console
$ docker pull rust@sha256:6111933327b11fe488fb52906426556f7fb5caede3ca7c0a8efc9f1481845cb3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.5 MB (285523775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:779f0f6824436748f45287d84aeffcce0f40d7fdae0b66b3f0caaa748322cb11`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 11:05:09 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 11:06:34 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243a3b1299482d1eb3d3f7dc69e3d66adb87d8cb6f75b9bf2af7040c6a4b659a`  
		Last Modified: Wed, 11 Jul 2018 11:17:48 GMT  
		Size: 262.4 MB (262383672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:stretch`

```console
$ docker pull rust@sha256:64cb7f3d867c5c75d27d11fbff106d7dbc50b82618b8fdde772573df463f8043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:stretch` - linux; amd64

```console
$ docker pull rust@sha256:cb4378aa87ddd3f4086e24ef56f53fb4e58e2c617f4ba9f504879166e7ba8cf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **549.7 MB (549710769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f1c7a25cafb3402337b19c164b722d272b25ed81a931d7213fe1ef5ce3e4373`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:16:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 09:29:26 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 17 Jul 2018 09:30:06 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4eee24d4dacb41c21411e0477a741655303cdc48b18a948632c31f0f3a70bb8`  
		Last Modified: Tue, 17 Jul 2018 03:54:59 GMT  
		Size: 50.1 MB (50064642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59856e9f0abefedc34fcefc3f57c4955cc384785663745532ddc31a89641c83`  
		Last Modified: Tue, 17 Jul 2018 03:57:05 GMT  
		Size: 213.2 MB (213190110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d308c31aedf69e0dc0a306b09cf4c5b6020a1a1de2c2ab109013e8df8646c31`  
		Last Modified: Tue, 17 Jul 2018 09:36:57 GMT  
		Size: 226.1 MB (226069698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:stretch` - linux; arm variant v7

```console
$ docker pull rust@sha256:536638c219ad9493530a7eed7b1093e8be26322d431cb8d187f5f9e573f2da79
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **445.5 MB (445540439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73eb5409eac300f6257f4f6d597d885c84c0ea9bfceb77c7ba1d50ebda155646`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:26 GMT
ADD file:b928e6adeb71af1928fc7b8e0ff4770e5521eebf544a3b27f9736ac86e7a0ffa in / 
# Wed, 27 Jun 2018 12:03:27 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:47:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:47:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 12:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:49:55 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 12:04:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 12:04:47 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:c675459249e5e2b5c2119c5965490fb00918a71cd19ba6a70e1c14ea0366cc9a`  
		Last Modified: Wed, 27 Jun 2018 12:12:46 GMT  
		Size: 42.1 MB (42062253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87675d75ec387a55e1b055dfadf15fd7137586ee9acf9be9b2a4840e4001b2a`  
		Last Modified: Wed, 27 Jun 2018 12:58:52 GMT  
		Size: 9.5 MB (9472634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f55e83b4f681428c2fb1542a44d864d0d2f78d235199a33824985049fd42bb5`  
		Last Modified: Wed, 27 Jun 2018 12:58:50 GMT  
		Size: 3.9 MB (3913173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf79f9923b0cece59f9957dddd92e7c5cd6c8c3311984ae5249217f97be3d0f`  
		Last Modified: Wed, 27 Jun 2018 12:59:26 GMT  
		Size: 46.4 MB (46382240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cd8ed2ab006145f28b4a6a80fa54438a8edfddc3c94bb7a16ddd895eae4dd9`  
		Last Modified: Wed, 27 Jun 2018 13:00:37 GMT  
		Size: 194.0 MB (193959303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3a30cb8a0ae60fe619137b08534dbe892ceb37ae21bd4844d8d3ed8a8d9688`  
		Last Modified: Wed, 11 Jul 2018 12:09:04 GMT  
		Size: 149.8 MB (149750836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:stretch` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:6ac5b25d08890ee111818501ccaac79a6933874efb5a536956588b9418d89fc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.6 MB (452581724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d4c06d93489e7b5bdf689b1a7d68c450af9b26e6b2233ec0e5231ef6a7e6675`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:46:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:47:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 10:48:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:59:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 09:45:11 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 09:45:47 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:6054c6775a4e4515d2365ad9337e322dd5c6ad0e0bc8e5bb6b0252461e71afc4`  
		Last Modified: Wed, 27 Jun 2018 08:57:38 GMT  
		Size: 43.1 MB (43115791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d57f1ab872b53f8ac8eff946226a3ff9d5fb929656964b75dae06303e9c8ef4`  
		Last Modified: Wed, 27 Jun 2018 11:06:29 GMT  
		Size: 9.7 MB (9722190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662e63f6b578575fadc2ae00bf10794a2a45166c03105d940c919da9f78c1c43`  
		Last Modified: Wed, 27 Jun 2018 11:06:28 GMT  
		Size: 4.1 MB (4088526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242c1552cb593c1f860dd482a21f1607a2965ef9ac5b5a29aad2a768ce9d699a`  
		Last Modified: Wed, 27 Jun 2018 11:07:20 GMT  
		Size: 48.0 MB (48002203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b998f5fde2603980e88247b2183aa042f85bef2b36f90e0a7b32472aebdbeb43`  
		Last Modified: Wed, 27 Jun 2018 11:08:58 GMT  
		Size: 200.6 MB (200586169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6331dfc65736a1867a9bfa028f83a00b9de900d49ff322a6845f2ac4f155c148`  
		Last Modified: Wed, 11 Jul 2018 09:51:20 GMT  
		Size: 147.1 MB (147066845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:stretch` - linux; 386

```console
$ docker pull rust@sha256:87f70109d3fa492517072f3bc9bdf13d5c565e72c51305c04f504c8689216d14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **551.7 MB (551677477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d776d6b37a2f8cf68f93a19a7c04f3c42e1c8a96176a998a847b992a628efe6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:42:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 11:42:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:45:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 11:04:14 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 11:05:00 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fb0be3608d00a27aadd5246acebfa684875786308e5e07bd72ecedb1ea550e`  
		Last Modified: Wed, 06 Jun 2018 12:17:46 GMT  
		Size: 10.8 MB (10784612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109b3030038f2425d43d6f1796554d59323fd256fe621bd3a73249279da3a2e7`  
		Last Modified: Wed, 06 Jun 2018 12:17:44 GMT  
		Size: 4.6 MB (4555092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1af01b2a73367b29b158a599b31f1a8d0e0e964f8ba899158fe801dca9aa54f`  
		Last Modified: Wed, 06 Jun 2018 12:18:38 GMT  
		Size: 51.6 MB (51593154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fccdc7430291198a7cd90746f94076159d8f379640b3f5718b0d05cc583fbf7`  
		Last Modified: Wed, 06 Jun 2018 12:20:25 GMT  
		Size: 218.2 MB (218211308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87111e8c52e15ee62bbfd6bc101f2347c7cf742bb0b345c677a5a3db87892bfd`  
		Last Modified: Wed, 11 Jul 2018 11:13:12 GMT  
		Size: 220.5 MB (220488426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

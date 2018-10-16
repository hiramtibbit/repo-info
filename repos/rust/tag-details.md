<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rust`

-	[`rust:1`](#rust1)
-	[`rust:1.29`](#rust129)
-	[`rust:1.29.2`](#rust1292)
-	[`rust:1.29.2-slim`](#rust1292-slim)
-	[`rust:1.29.2-slim-stretch`](#rust1292-slim-stretch)
-	[`rust:1.29.2-stretch`](#rust1292-stretch)
-	[`rust:1.29-slim`](#rust129-slim)
-	[`rust:1.29-slim-stretch`](#rust129-slim-stretch)
-	[`rust:1.29-stretch`](#rust129-stretch)
-	[`rust:1-slim`](#rust1-slim)
-	[`rust:1-slim-stretch`](#rust1-slim-stretch)
-	[`rust:1-stretch`](#rust1-stretch)
-	[`rust:latest`](#rustlatest)
-	[`rust:slim`](#rustslim)
-	[`rust:slim-stretch`](#rustslim-stretch)
-	[`rust:stretch`](#ruststretch)

## `rust:1`

```console
$ docker pull rust@sha256:deac3be607fe25738066454096e0804a59dc94d6b0b3fbe727eb411eb1e2676d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1` - linux; amd64

```console
$ docker pull rust@sha256:e48c0e8d043bf84a6615d6711af9bbdf204ee502ba8be907b46fa4e8ddab9e25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **535.2 MB (535238811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f24616cd007e943ba000b6f8ddfddaf8d317a2493c31245e8e4b965789ddc998`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:03:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:37:33 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Tue, 16 Oct 2018 09:38:15 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72744d0a318b0788001cc4f5f83c6847ba4b753307fadd046b508bbc41eb9e29`  
		Last Modified: Tue, 16 Oct 2018 01:15:57 GMT  
		Size: 213.2 MB (213202596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34e052c2087a602fd6c7d2a43d2293557040d6128ff3592ad68a76f7e28e2b78`  
		Last Modified: Tue, 16 Oct 2018 09:39:44 GMT  
		Size: 211.6 MB (211584663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1` - linux; arm variant v7

```console
$ docker pull rust@sha256:9a0845345a8288e6625ba1b26341d345df070ca6a839183857bd489dc5dae803
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **447.2 MB (447204047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75b976e7c1b911722a15bc2571b7e0e98e25b247607bc9f322f531e535ad443e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:45:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:47:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sun, 14 Oct 2018 11:57:45 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sun, 14 Oct 2018 11:58:48 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215164aeca718c35ec0eb0e6c0105cdcb8ceadce60d8c8ccc9c182f3b9928d32`  
		Last Modified: Wed, 05 Sep 2018 12:56:53 GMT  
		Size: 9.4 MB (9440248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3881d6781569972fa823e9e0c4eab63be9dd636d1ae45ba90a364cfea2ed4f51`  
		Last Modified: Wed, 05 Sep 2018 12:56:51 GMT  
		Size: 3.9 MB (3912963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247050a5017030d16351675bb3d21d3413470130201b75e5a0688c5d20932c20`  
		Last Modified: Wed, 05 Sep 2018 12:57:31 GMT  
		Size: 46.4 MB (46380896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9616fd9b504f68976445f1c199b9d33089646acb282faa652e819a52e1de7cdc`  
		Last Modified: Wed, 05 Sep 2018 12:58:39 GMT  
		Size: 194.0 MB (194001521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7293af3a3fea97dc9043395e3eb4f6226b0ba1e41bf812c187ccdfae21d21041`  
		Last Modified: Tue, 16 Oct 2018 12:42:52 GMT  
		Size: 151.4 MB (151405749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:b774ef087bd368a99dc59b5b1d61c9b13bea7cafd889e2ba12275b4478709a93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.8 MB (455763552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a937a2e5ada0c6e14da35ef6f4483b089e6fe49b0c5095082017f13fe732718`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:02:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 10:04:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:15:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 13 Oct 2018 10:26:49 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sat, 13 Oct 2018 10:27:23 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ac5864132647baf5fa26dfe782dbf1645944aca4a8e963d24572bb0b90007`  
		Last Modified: Wed, 05 Sep 2018 10:25:53 GMT  
		Size: 9.7 MB (9690090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d98c830cad0499c1720f09b5ec6e3dde0f144f0b5ab1b555fa37e4eac6623`  
		Last Modified: Wed, 05 Sep 2018 10:25:51 GMT  
		Size: 4.1 MB (4088370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b9bb8999b31a6d7863b55aa60a4268cb0d6b948e0271befbdd3e6b81af462b`  
		Last Modified: Wed, 05 Sep 2018 10:27:44 GMT  
		Size: 48.0 MB (48003320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7759d8623c1cc32b06c21fc173f450a7cf57a80e14e31dd28b6e4dadcef76bea`  
		Last Modified: Wed, 05 Sep 2018 10:30:03 GMT  
		Size: 200.6 MB (200626040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8e379d394cfb7cae5a1f89d7ae41fa5ad523f7573f8ff73f205162a919eee6`  
		Last Modified: Sat, 13 Oct 2018 10:30:44 GMT  
		Size: 150.2 MB (150232111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1` - linux; 386

```console
$ docker pull rust@sha256:0cff60ddd67c9ea89bfdb73320e3ccfd1c70864dab85118675a8f6f4420c51ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **545.2 MB (545188443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebda099ba789f09a0ddfc647bc36f637b267ec1002659febaba3f03d4b011b7b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:36 GMT
ADD file:3712892f37687a2c2c5bbcb861ce5514725fe71d82c86a79fb1d1bcaa39b8989 in / 
# Wed, 05 Sep 2018 10:43:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:39:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:39:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:40:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:43:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 13 Oct 2018 12:16:29 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sat, 13 Oct 2018 12:17:32 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:23bbbdd93c8977020ec67716d0cda1fe7a96e73c4c3a0aa6c42122459e2ba839`  
		Last Modified: Wed, 05 Sep 2018 10:51:53 GMT  
		Size: 46.0 MB (46039046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0651aebef484f2932d9d9ec0ecaeaa15733b8454c24edd2fce38adb0542d794`  
		Last Modified: Wed, 05 Sep 2018 12:09:00 GMT  
		Size: 10.8 MB (10752740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5868a2cc4b3fe4d148aaea3d9f4da71a92f29f3b899d163fef3a2ead52cf44a6`  
		Last Modified: Wed, 05 Sep 2018 12:08:55 GMT  
		Size: 4.6 MB (4555338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f5880b1f9668fd77a6ab2213c8f16110a0e52bb5a8b3edd308306f6df47911`  
		Last Modified: Wed, 05 Sep 2018 12:09:42 GMT  
		Size: 51.6 MB (51592445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c6d01b2edcff2b1d748bcebd9d4632d0888c58beb4a379685de71ec90170d1`  
		Last Modified: Wed, 05 Sep 2018 12:11:26 GMT  
		Size: 218.3 MB (218257236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cde425bfb7e9de73f3f6d4dac5f397523bbbb84e68eafc276a68f402c9aff4e`  
		Last Modified: Sat, 13 Oct 2018 12:19:49 GMT  
		Size: 214.0 MB (213991638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.29`

```console
$ docker pull rust@sha256:deac3be607fe25738066454096e0804a59dc94d6b0b3fbe727eb411eb1e2676d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1.29` - linux; amd64

```console
$ docker pull rust@sha256:e48c0e8d043bf84a6615d6711af9bbdf204ee502ba8be907b46fa4e8ddab9e25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **535.2 MB (535238811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f24616cd007e943ba000b6f8ddfddaf8d317a2493c31245e8e4b965789ddc998`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:03:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:37:33 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Tue, 16 Oct 2018 09:38:15 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72744d0a318b0788001cc4f5f83c6847ba4b753307fadd046b508bbc41eb9e29`  
		Last Modified: Tue, 16 Oct 2018 01:15:57 GMT  
		Size: 213.2 MB (213202596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34e052c2087a602fd6c7d2a43d2293557040d6128ff3592ad68a76f7e28e2b78`  
		Last Modified: Tue, 16 Oct 2018 09:39:44 GMT  
		Size: 211.6 MB (211584663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.29` - linux; arm variant v7

```console
$ docker pull rust@sha256:9a0845345a8288e6625ba1b26341d345df070ca6a839183857bd489dc5dae803
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **447.2 MB (447204047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75b976e7c1b911722a15bc2571b7e0e98e25b247607bc9f322f531e535ad443e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:45:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:47:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sun, 14 Oct 2018 11:57:45 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sun, 14 Oct 2018 11:58:48 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215164aeca718c35ec0eb0e6c0105cdcb8ceadce60d8c8ccc9c182f3b9928d32`  
		Last Modified: Wed, 05 Sep 2018 12:56:53 GMT  
		Size: 9.4 MB (9440248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3881d6781569972fa823e9e0c4eab63be9dd636d1ae45ba90a364cfea2ed4f51`  
		Last Modified: Wed, 05 Sep 2018 12:56:51 GMT  
		Size: 3.9 MB (3912963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247050a5017030d16351675bb3d21d3413470130201b75e5a0688c5d20932c20`  
		Last Modified: Wed, 05 Sep 2018 12:57:31 GMT  
		Size: 46.4 MB (46380896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9616fd9b504f68976445f1c199b9d33089646acb282faa652e819a52e1de7cdc`  
		Last Modified: Wed, 05 Sep 2018 12:58:39 GMT  
		Size: 194.0 MB (194001521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7293af3a3fea97dc9043395e3eb4f6226b0ba1e41bf812c187ccdfae21d21041`  
		Last Modified: Tue, 16 Oct 2018 12:42:52 GMT  
		Size: 151.4 MB (151405749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.29` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:b774ef087bd368a99dc59b5b1d61c9b13bea7cafd889e2ba12275b4478709a93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.8 MB (455763552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a937a2e5ada0c6e14da35ef6f4483b089e6fe49b0c5095082017f13fe732718`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:02:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 10:04:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:15:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 13 Oct 2018 10:26:49 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sat, 13 Oct 2018 10:27:23 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ac5864132647baf5fa26dfe782dbf1645944aca4a8e963d24572bb0b90007`  
		Last Modified: Wed, 05 Sep 2018 10:25:53 GMT  
		Size: 9.7 MB (9690090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d98c830cad0499c1720f09b5ec6e3dde0f144f0b5ab1b555fa37e4eac6623`  
		Last Modified: Wed, 05 Sep 2018 10:25:51 GMT  
		Size: 4.1 MB (4088370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b9bb8999b31a6d7863b55aa60a4268cb0d6b948e0271befbdd3e6b81af462b`  
		Last Modified: Wed, 05 Sep 2018 10:27:44 GMT  
		Size: 48.0 MB (48003320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7759d8623c1cc32b06c21fc173f450a7cf57a80e14e31dd28b6e4dadcef76bea`  
		Last Modified: Wed, 05 Sep 2018 10:30:03 GMT  
		Size: 200.6 MB (200626040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8e379d394cfb7cae5a1f89d7ae41fa5ad523f7573f8ff73f205162a919eee6`  
		Last Modified: Sat, 13 Oct 2018 10:30:44 GMT  
		Size: 150.2 MB (150232111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.29` - linux; 386

```console
$ docker pull rust@sha256:0cff60ddd67c9ea89bfdb73320e3ccfd1c70864dab85118675a8f6f4420c51ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **545.2 MB (545188443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebda099ba789f09a0ddfc647bc36f637b267ec1002659febaba3f03d4b011b7b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:36 GMT
ADD file:3712892f37687a2c2c5bbcb861ce5514725fe71d82c86a79fb1d1bcaa39b8989 in / 
# Wed, 05 Sep 2018 10:43:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:39:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:39:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:40:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:43:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 13 Oct 2018 12:16:29 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sat, 13 Oct 2018 12:17:32 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:23bbbdd93c8977020ec67716d0cda1fe7a96e73c4c3a0aa6c42122459e2ba839`  
		Last Modified: Wed, 05 Sep 2018 10:51:53 GMT  
		Size: 46.0 MB (46039046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0651aebef484f2932d9d9ec0ecaeaa15733b8454c24edd2fce38adb0542d794`  
		Last Modified: Wed, 05 Sep 2018 12:09:00 GMT  
		Size: 10.8 MB (10752740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5868a2cc4b3fe4d148aaea3d9f4da71a92f29f3b899d163fef3a2ead52cf44a6`  
		Last Modified: Wed, 05 Sep 2018 12:08:55 GMT  
		Size: 4.6 MB (4555338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f5880b1f9668fd77a6ab2213c8f16110a0e52bb5a8b3edd308306f6df47911`  
		Last Modified: Wed, 05 Sep 2018 12:09:42 GMT  
		Size: 51.6 MB (51592445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c6d01b2edcff2b1d748bcebd9d4632d0888c58beb4a379685de71ec90170d1`  
		Last Modified: Wed, 05 Sep 2018 12:11:26 GMT  
		Size: 218.3 MB (218257236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cde425bfb7e9de73f3f6d4dac5f397523bbbb84e68eafc276a68f402c9aff4e`  
		Last Modified: Sat, 13 Oct 2018 12:19:49 GMT  
		Size: 214.0 MB (213991638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.29.2`

```console
$ docker pull rust@sha256:deac3be607fe25738066454096e0804a59dc94d6b0b3fbe727eb411eb1e2676d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1.29.2` - linux; amd64

```console
$ docker pull rust@sha256:e48c0e8d043bf84a6615d6711af9bbdf204ee502ba8be907b46fa4e8ddab9e25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **535.2 MB (535238811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f24616cd007e943ba000b6f8ddfddaf8d317a2493c31245e8e4b965789ddc998`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:03:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:37:33 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Tue, 16 Oct 2018 09:38:15 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72744d0a318b0788001cc4f5f83c6847ba4b753307fadd046b508bbc41eb9e29`  
		Last Modified: Tue, 16 Oct 2018 01:15:57 GMT  
		Size: 213.2 MB (213202596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34e052c2087a602fd6c7d2a43d2293557040d6128ff3592ad68a76f7e28e2b78`  
		Last Modified: Tue, 16 Oct 2018 09:39:44 GMT  
		Size: 211.6 MB (211584663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.29.2` - linux; arm variant v7

```console
$ docker pull rust@sha256:9a0845345a8288e6625ba1b26341d345df070ca6a839183857bd489dc5dae803
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **447.2 MB (447204047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75b976e7c1b911722a15bc2571b7e0e98e25b247607bc9f322f531e535ad443e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:45:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:47:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sun, 14 Oct 2018 11:57:45 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sun, 14 Oct 2018 11:58:48 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215164aeca718c35ec0eb0e6c0105cdcb8ceadce60d8c8ccc9c182f3b9928d32`  
		Last Modified: Wed, 05 Sep 2018 12:56:53 GMT  
		Size: 9.4 MB (9440248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3881d6781569972fa823e9e0c4eab63be9dd636d1ae45ba90a364cfea2ed4f51`  
		Last Modified: Wed, 05 Sep 2018 12:56:51 GMT  
		Size: 3.9 MB (3912963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247050a5017030d16351675bb3d21d3413470130201b75e5a0688c5d20932c20`  
		Last Modified: Wed, 05 Sep 2018 12:57:31 GMT  
		Size: 46.4 MB (46380896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9616fd9b504f68976445f1c199b9d33089646acb282faa652e819a52e1de7cdc`  
		Last Modified: Wed, 05 Sep 2018 12:58:39 GMT  
		Size: 194.0 MB (194001521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7293af3a3fea97dc9043395e3eb4f6226b0ba1e41bf812c187ccdfae21d21041`  
		Last Modified: Tue, 16 Oct 2018 12:42:52 GMT  
		Size: 151.4 MB (151405749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.29.2` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:b774ef087bd368a99dc59b5b1d61c9b13bea7cafd889e2ba12275b4478709a93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.8 MB (455763552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a937a2e5ada0c6e14da35ef6f4483b089e6fe49b0c5095082017f13fe732718`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:02:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 10:04:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:15:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 13 Oct 2018 10:26:49 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sat, 13 Oct 2018 10:27:23 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ac5864132647baf5fa26dfe782dbf1645944aca4a8e963d24572bb0b90007`  
		Last Modified: Wed, 05 Sep 2018 10:25:53 GMT  
		Size: 9.7 MB (9690090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d98c830cad0499c1720f09b5ec6e3dde0f144f0b5ab1b555fa37e4eac6623`  
		Last Modified: Wed, 05 Sep 2018 10:25:51 GMT  
		Size: 4.1 MB (4088370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b9bb8999b31a6d7863b55aa60a4268cb0d6b948e0271befbdd3e6b81af462b`  
		Last Modified: Wed, 05 Sep 2018 10:27:44 GMT  
		Size: 48.0 MB (48003320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7759d8623c1cc32b06c21fc173f450a7cf57a80e14e31dd28b6e4dadcef76bea`  
		Last Modified: Wed, 05 Sep 2018 10:30:03 GMT  
		Size: 200.6 MB (200626040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8e379d394cfb7cae5a1f89d7ae41fa5ad523f7573f8ff73f205162a919eee6`  
		Last Modified: Sat, 13 Oct 2018 10:30:44 GMT  
		Size: 150.2 MB (150232111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.29.2` - linux; 386

```console
$ docker pull rust@sha256:0cff60ddd67c9ea89bfdb73320e3ccfd1c70864dab85118675a8f6f4420c51ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **545.2 MB (545188443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebda099ba789f09a0ddfc647bc36f637b267ec1002659febaba3f03d4b011b7b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:36 GMT
ADD file:3712892f37687a2c2c5bbcb861ce5514725fe71d82c86a79fb1d1bcaa39b8989 in / 
# Wed, 05 Sep 2018 10:43:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:39:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:39:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:40:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:43:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 13 Oct 2018 12:16:29 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sat, 13 Oct 2018 12:17:32 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:23bbbdd93c8977020ec67716d0cda1fe7a96e73c4c3a0aa6c42122459e2ba839`  
		Last Modified: Wed, 05 Sep 2018 10:51:53 GMT  
		Size: 46.0 MB (46039046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0651aebef484f2932d9d9ec0ecaeaa15733b8454c24edd2fce38adb0542d794`  
		Last Modified: Wed, 05 Sep 2018 12:09:00 GMT  
		Size: 10.8 MB (10752740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5868a2cc4b3fe4d148aaea3d9f4da71a92f29f3b899d163fef3a2ead52cf44a6`  
		Last Modified: Wed, 05 Sep 2018 12:08:55 GMT  
		Size: 4.6 MB (4555338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f5880b1f9668fd77a6ab2213c8f16110a0e52bb5a8b3edd308306f6df47911`  
		Last Modified: Wed, 05 Sep 2018 12:09:42 GMT  
		Size: 51.6 MB (51592445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c6d01b2edcff2b1d748bcebd9d4632d0888c58beb4a379685de71ec90170d1`  
		Last Modified: Wed, 05 Sep 2018 12:11:26 GMT  
		Size: 218.3 MB (218257236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cde425bfb7e9de73f3f6d4dac5f397523bbbb84e68eafc276a68f402c9aff4e`  
		Last Modified: Sat, 13 Oct 2018 12:19:49 GMT  
		Size: 214.0 MB (213991638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.29.2-slim`

```console
$ docker pull rust@sha256:8ca59fbf2b3eef6415c2b43483a1e38f4dd59b8c32d0563bd42d7eb306b7acd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1.29.2-slim` - linux; amd64

```console
$ docker pull rust@sha256:0d495e79dbcc71087f3cf2ab12b31f8735bcc67c542e87000b5459668dd49efc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271952262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b336238c9f8504a22e876e67b34b6c40e46b046aa682c41ceaeb5352b8515e83`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Mon, 15 Oct 2018 23:54:23 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Mon, 15 Oct 2018 23:55:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb9d85a78cc824eaa741c8e6a970f29a50eee9eef20b9229b13c37cebca6420`  
		Last Modified: Mon, 15 Oct 2018 23:56:34 GMT  
		Size: 249.5 MB (249466223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.29.2-slim` - linux; arm variant v7

```console
$ docker pull rust@sha256:21998a90aff4eca239336fa290b48e03814a77e8ab3bb3e550b2ecf8c9044251
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.8 MB (198754891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b7e5d3ec5b2541f45835205577886175c745d341d2104b1c3e7a7b7f15a5cf`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:40:18 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Tue, 16 Oct 2018 12:42:00 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc921a164f8aa5fa545fd48252ccfcfaac4644662a61d717523f0d0e36e42de`  
		Last Modified: Tue, 16 Oct 2018 12:44:44 GMT  
		Size: 179.5 MB (179484725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.29.2-slim` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:64a97f96f3f77a5a6642224b195108989286303237397c189e1595934b53e885
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.2 MB (201155659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:773a46ad430e532abc413ec38958b97f2ec90e1715c210cf0eefc27e72c71493`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Sat, 13 Oct 2018 10:27:53 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sat, 13 Oct 2018 10:29:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6a393b1519511e9b22e38e1c31bb853a17f9e2e7edd8da8670c6ab428047dc`  
		Last Modified: Sat, 13 Oct 2018 10:34:43 GMT  
		Size: 180.8 MB (180824018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.29.2-slim` - linux; 386

```console
$ docker pull rust@sha256:4ee4b07bfb21fdde1d533f38464c86eb5b2c9cf4977dff2424e3ae5a2e9fa3ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.0 MB (278974849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0f7c6f85bf618a5e01cfc259dedec1c422eaa8743d25d7f15cc9abc42db4b89`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:58 GMT
ADD file:e2998c599fe122e866e9244aa7fdb1d3bdddb454863a1d003340392684d2388d in / 
# Wed, 05 Sep 2018 10:43:59 GMT
CMD ["bash"]
# Sat, 13 Oct 2018 12:17:46 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sat, 13 Oct 2018 12:18:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:6a04e6fc95134a0f0b1fc5f312d7930a2abb685ce0081538c60b7d51a221cbb1`  
		Last Modified: Wed, 05 Sep 2018 10:52:19 GMT  
		Size: 23.1 MB (23126488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb6f5d811c1e5a167b365fbce7ba3dc8438c27967b1d78fa5bf9ffb4cb9c4f5`  
		Last Modified: Sat, 13 Oct 2018 12:21:48 GMT  
		Size: 255.8 MB (255848361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.29.2-slim-stretch`

```console
$ docker pull rust@sha256:8ca59fbf2b3eef6415c2b43483a1e38f4dd59b8c32d0563bd42d7eb306b7acd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1.29.2-slim-stretch` - linux; amd64

```console
$ docker pull rust@sha256:0d495e79dbcc71087f3cf2ab12b31f8735bcc67c542e87000b5459668dd49efc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271952262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b336238c9f8504a22e876e67b34b6c40e46b046aa682c41ceaeb5352b8515e83`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Mon, 15 Oct 2018 23:54:23 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Mon, 15 Oct 2018 23:55:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb9d85a78cc824eaa741c8e6a970f29a50eee9eef20b9229b13c37cebca6420`  
		Last Modified: Mon, 15 Oct 2018 23:56:34 GMT  
		Size: 249.5 MB (249466223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.29.2-slim-stretch` - linux; arm variant v7

```console
$ docker pull rust@sha256:21998a90aff4eca239336fa290b48e03814a77e8ab3bb3e550b2ecf8c9044251
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.8 MB (198754891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b7e5d3ec5b2541f45835205577886175c745d341d2104b1c3e7a7b7f15a5cf`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:40:18 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Tue, 16 Oct 2018 12:42:00 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc921a164f8aa5fa545fd48252ccfcfaac4644662a61d717523f0d0e36e42de`  
		Last Modified: Tue, 16 Oct 2018 12:44:44 GMT  
		Size: 179.5 MB (179484725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.29.2-slim-stretch` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:64a97f96f3f77a5a6642224b195108989286303237397c189e1595934b53e885
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.2 MB (201155659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:773a46ad430e532abc413ec38958b97f2ec90e1715c210cf0eefc27e72c71493`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Sat, 13 Oct 2018 10:27:53 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sat, 13 Oct 2018 10:29:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6a393b1519511e9b22e38e1c31bb853a17f9e2e7edd8da8670c6ab428047dc`  
		Last Modified: Sat, 13 Oct 2018 10:34:43 GMT  
		Size: 180.8 MB (180824018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.29.2-slim-stretch` - linux; 386

```console
$ docker pull rust@sha256:4ee4b07bfb21fdde1d533f38464c86eb5b2c9cf4977dff2424e3ae5a2e9fa3ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.0 MB (278974849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0f7c6f85bf618a5e01cfc259dedec1c422eaa8743d25d7f15cc9abc42db4b89`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:58 GMT
ADD file:e2998c599fe122e866e9244aa7fdb1d3bdddb454863a1d003340392684d2388d in / 
# Wed, 05 Sep 2018 10:43:59 GMT
CMD ["bash"]
# Sat, 13 Oct 2018 12:17:46 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sat, 13 Oct 2018 12:18:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:6a04e6fc95134a0f0b1fc5f312d7930a2abb685ce0081538c60b7d51a221cbb1`  
		Last Modified: Wed, 05 Sep 2018 10:52:19 GMT  
		Size: 23.1 MB (23126488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb6f5d811c1e5a167b365fbce7ba3dc8438c27967b1d78fa5bf9ffb4cb9c4f5`  
		Last Modified: Sat, 13 Oct 2018 12:21:48 GMT  
		Size: 255.8 MB (255848361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.29.2-stretch`

```console
$ docker pull rust@sha256:deac3be607fe25738066454096e0804a59dc94d6b0b3fbe727eb411eb1e2676d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1.29.2-stretch` - linux; amd64

```console
$ docker pull rust@sha256:e48c0e8d043bf84a6615d6711af9bbdf204ee502ba8be907b46fa4e8ddab9e25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **535.2 MB (535238811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f24616cd007e943ba000b6f8ddfddaf8d317a2493c31245e8e4b965789ddc998`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:03:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:37:33 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Tue, 16 Oct 2018 09:38:15 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72744d0a318b0788001cc4f5f83c6847ba4b753307fadd046b508bbc41eb9e29`  
		Last Modified: Tue, 16 Oct 2018 01:15:57 GMT  
		Size: 213.2 MB (213202596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34e052c2087a602fd6c7d2a43d2293557040d6128ff3592ad68a76f7e28e2b78`  
		Last Modified: Tue, 16 Oct 2018 09:39:44 GMT  
		Size: 211.6 MB (211584663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.29.2-stretch` - linux; arm variant v7

```console
$ docker pull rust@sha256:9a0845345a8288e6625ba1b26341d345df070ca6a839183857bd489dc5dae803
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **447.2 MB (447204047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75b976e7c1b911722a15bc2571b7e0e98e25b247607bc9f322f531e535ad443e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:45:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:47:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sun, 14 Oct 2018 11:57:45 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sun, 14 Oct 2018 11:58:48 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215164aeca718c35ec0eb0e6c0105cdcb8ceadce60d8c8ccc9c182f3b9928d32`  
		Last Modified: Wed, 05 Sep 2018 12:56:53 GMT  
		Size: 9.4 MB (9440248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3881d6781569972fa823e9e0c4eab63be9dd636d1ae45ba90a364cfea2ed4f51`  
		Last Modified: Wed, 05 Sep 2018 12:56:51 GMT  
		Size: 3.9 MB (3912963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247050a5017030d16351675bb3d21d3413470130201b75e5a0688c5d20932c20`  
		Last Modified: Wed, 05 Sep 2018 12:57:31 GMT  
		Size: 46.4 MB (46380896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9616fd9b504f68976445f1c199b9d33089646acb282faa652e819a52e1de7cdc`  
		Last Modified: Wed, 05 Sep 2018 12:58:39 GMT  
		Size: 194.0 MB (194001521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7293af3a3fea97dc9043395e3eb4f6226b0ba1e41bf812c187ccdfae21d21041`  
		Last Modified: Tue, 16 Oct 2018 12:42:52 GMT  
		Size: 151.4 MB (151405749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.29.2-stretch` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:b774ef087bd368a99dc59b5b1d61c9b13bea7cafd889e2ba12275b4478709a93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.8 MB (455763552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a937a2e5ada0c6e14da35ef6f4483b089e6fe49b0c5095082017f13fe732718`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:02:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 10:04:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:15:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 13 Oct 2018 10:26:49 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sat, 13 Oct 2018 10:27:23 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ac5864132647baf5fa26dfe782dbf1645944aca4a8e963d24572bb0b90007`  
		Last Modified: Wed, 05 Sep 2018 10:25:53 GMT  
		Size: 9.7 MB (9690090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d98c830cad0499c1720f09b5ec6e3dde0f144f0b5ab1b555fa37e4eac6623`  
		Last Modified: Wed, 05 Sep 2018 10:25:51 GMT  
		Size: 4.1 MB (4088370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b9bb8999b31a6d7863b55aa60a4268cb0d6b948e0271befbdd3e6b81af462b`  
		Last Modified: Wed, 05 Sep 2018 10:27:44 GMT  
		Size: 48.0 MB (48003320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7759d8623c1cc32b06c21fc173f450a7cf57a80e14e31dd28b6e4dadcef76bea`  
		Last Modified: Wed, 05 Sep 2018 10:30:03 GMT  
		Size: 200.6 MB (200626040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8e379d394cfb7cae5a1f89d7ae41fa5ad523f7573f8ff73f205162a919eee6`  
		Last Modified: Sat, 13 Oct 2018 10:30:44 GMT  
		Size: 150.2 MB (150232111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.29.2-stretch` - linux; 386

```console
$ docker pull rust@sha256:0cff60ddd67c9ea89bfdb73320e3ccfd1c70864dab85118675a8f6f4420c51ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **545.2 MB (545188443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebda099ba789f09a0ddfc647bc36f637b267ec1002659febaba3f03d4b011b7b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:36 GMT
ADD file:3712892f37687a2c2c5bbcb861ce5514725fe71d82c86a79fb1d1bcaa39b8989 in / 
# Wed, 05 Sep 2018 10:43:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:39:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:39:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:40:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:43:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 13 Oct 2018 12:16:29 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sat, 13 Oct 2018 12:17:32 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:23bbbdd93c8977020ec67716d0cda1fe7a96e73c4c3a0aa6c42122459e2ba839`  
		Last Modified: Wed, 05 Sep 2018 10:51:53 GMT  
		Size: 46.0 MB (46039046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0651aebef484f2932d9d9ec0ecaeaa15733b8454c24edd2fce38adb0542d794`  
		Last Modified: Wed, 05 Sep 2018 12:09:00 GMT  
		Size: 10.8 MB (10752740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5868a2cc4b3fe4d148aaea3d9f4da71a92f29f3b899d163fef3a2ead52cf44a6`  
		Last Modified: Wed, 05 Sep 2018 12:08:55 GMT  
		Size: 4.6 MB (4555338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f5880b1f9668fd77a6ab2213c8f16110a0e52bb5a8b3edd308306f6df47911`  
		Last Modified: Wed, 05 Sep 2018 12:09:42 GMT  
		Size: 51.6 MB (51592445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c6d01b2edcff2b1d748bcebd9d4632d0888c58beb4a379685de71ec90170d1`  
		Last Modified: Wed, 05 Sep 2018 12:11:26 GMT  
		Size: 218.3 MB (218257236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cde425bfb7e9de73f3f6d4dac5f397523bbbb84e68eafc276a68f402c9aff4e`  
		Last Modified: Sat, 13 Oct 2018 12:19:49 GMT  
		Size: 214.0 MB (213991638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.29-slim`

```console
$ docker pull rust@sha256:8ca59fbf2b3eef6415c2b43483a1e38f4dd59b8c32d0563bd42d7eb306b7acd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1.29-slim` - linux; amd64

```console
$ docker pull rust@sha256:0d495e79dbcc71087f3cf2ab12b31f8735bcc67c542e87000b5459668dd49efc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271952262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b336238c9f8504a22e876e67b34b6c40e46b046aa682c41ceaeb5352b8515e83`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Mon, 15 Oct 2018 23:54:23 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Mon, 15 Oct 2018 23:55:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb9d85a78cc824eaa741c8e6a970f29a50eee9eef20b9229b13c37cebca6420`  
		Last Modified: Mon, 15 Oct 2018 23:56:34 GMT  
		Size: 249.5 MB (249466223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.29-slim` - linux; arm variant v7

```console
$ docker pull rust@sha256:21998a90aff4eca239336fa290b48e03814a77e8ab3bb3e550b2ecf8c9044251
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.8 MB (198754891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b7e5d3ec5b2541f45835205577886175c745d341d2104b1c3e7a7b7f15a5cf`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:40:18 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Tue, 16 Oct 2018 12:42:00 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc921a164f8aa5fa545fd48252ccfcfaac4644662a61d717523f0d0e36e42de`  
		Last Modified: Tue, 16 Oct 2018 12:44:44 GMT  
		Size: 179.5 MB (179484725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.29-slim` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:64a97f96f3f77a5a6642224b195108989286303237397c189e1595934b53e885
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.2 MB (201155659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:773a46ad430e532abc413ec38958b97f2ec90e1715c210cf0eefc27e72c71493`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Sat, 13 Oct 2018 10:27:53 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sat, 13 Oct 2018 10:29:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6a393b1519511e9b22e38e1c31bb853a17f9e2e7edd8da8670c6ab428047dc`  
		Last Modified: Sat, 13 Oct 2018 10:34:43 GMT  
		Size: 180.8 MB (180824018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.29-slim` - linux; 386

```console
$ docker pull rust@sha256:4ee4b07bfb21fdde1d533f38464c86eb5b2c9cf4977dff2424e3ae5a2e9fa3ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.0 MB (278974849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0f7c6f85bf618a5e01cfc259dedec1c422eaa8743d25d7f15cc9abc42db4b89`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:58 GMT
ADD file:e2998c599fe122e866e9244aa7fdb1d3bdddb454863a1d003340392684d2388d in / 
# Wed, 05 Sep 2018 10:43:59 GMT
CMD ["bash"]
# Sat, 13 Oct 2018 12:17:46 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sat, 13 Oct 2018 12:18:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:6a04e6fc95134a0f0b1fc5f312d7930a2abb685ce0081538c60b7d51a221cbb1`  
		Last Modified: Wed, 05 Sep 2018 10:52:19 GMT  
		Size: 23.1 MB (23126488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb6f5d811c1e5a167b365fbce7ba3dc8438c27967b1d78fa5bf9ffb4cb9c4f5`  
		Last Modified: Sat, 13 Oct 2018 12:21:48 GMT  
		Size: 255.8 MB (255848361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.29-slim-stretch`

```console
$ docker pull rust@sha256:8ca59fbf2b3eef6415c2b43483a1e38f4dd59b8c32d0563bd42d7eb306b7acd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1.29-slim-stretch` - linux; amd64

```console
$ docker pull rust@sha256:0d495e79dbcc71087f3cf2ab12b31f8735bcc67c542e87000b5459668dd49efc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271952262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b336238c9f8504a22e876e67b34b6c40e46b046aa682c41ceaeb5352b8515e83`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Mon, 15 Oct 2018 23:54:23 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Mon, 15 Oct 2018 23:55:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb9d85a78cc824eaa741c8e6a970f29a50eee9eef20b9229b13c37cebca6420`  
		Last Modified: Mon, 15 Oct 2018 23:56:34 GMT  
		Size: 249.5 MB (249466223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.29-slim-stretch` - linux; arm variant v7

```console
$ docker pull rust@sha256:21998a90aff4eca239336fa290b48e03814a77e8ab3bb3e550b2ecf8c9044251
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.8 MB (198754891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b7e5d3ec5b2541f45835205577886175c745d341d2104b1c3e7a7b7f15a5cf`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:40:18 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Tue, 16 Oct 2018 12:42:00 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc921a164f8aa5fa545fd48252ccfcfaac4644662a61d717523f0d0e36e42de`  
		Last Modified: Tue, 16 Oct 2018 12:44:44 GMT  
		Size: 179.5 MB (179484725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.29-slim-stretch` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:64a97f96f3f77a5a6642224b195108989286303237397c189e1595934b53e885
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.2 MB (201155659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:773a46ad430e532abc413ec38958b97f2ec90e1715c210cf0eefc27e72c71493`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Sat, 13 Oct 2018 10:27:53 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sat, 13 Oct 2018 10:29:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6a393b1519511e9b22e38e1c31bb853a17f9e2e7edd8da8670c6ab428047dc`  
		Last Modified: Sat, 13 Oct 2018 10:34:43 GMT  
		Size: 180.8 MB (180824018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.29-slim-stretch` - linux; 386

```console
$ docker pull rust@sha256:4ee4b07bfb21fdde1d533f38464c86eb5b2c9cf4977dff2424e3ae5a2e9fa3ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.0 MB (278974849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0f7c6f85bf618a5e01cfc259dedec1c422eaa8743d25d7f15cc9abc42db4b89`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:58 GMT
ADD file:e2998c599fe122e866e9244aa7fdb1d3bdddb454863a1d003340392684d2388d in / 
# Wed, 05 Sep 2018 10:43:59 GMT
CMD ["bash"]
# Sat, 13 Oct 2018 12:17:46 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sat, 13 Oct 2018 12:18:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:6a04e6fc95134a0f0b1fc5f312d7930a2abb685ce0081538c60b7d51a221cbb1`  
		Last Modified: Wed, 05 Sep 2018 10:52:19 GMT  
		Size: 23.1 MB (23126488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb6f5d811c1e5a167b365fbce7ba3dc8438c27967b1d78fa5bf9ffb4cb9c4f5`  
		Last Modified: Sat, 13 Oct 2018 12:21:48 GMT  
		Size: 255.8 MB (255848361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.29-stretch`

```console
$ docker pull rust@sha256:deac3be607fe25738066454096e0804a59dc94d6b0b3fbe727eb411eb1e2676d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1.29-stretch` - linux; amd64

```console
$ docker pull rust@sha256:e48c0e8d043bf84a6615d6711af9bbdf204ee502ba8be907b46fa4e8ddab9e25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **535.2 MB (535238811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f24616cd007e943ba000b6f8ddfddaf8d317a2493c31245e8e4b965789ddc998`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:03:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:37:33 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Tue, 16 Oct 2018 09:38:15 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72744d0a318b0788001cc4f5f83c6847ba4b753307fadd046b508bbc41eb9e29`  
		Last Modified: Tue, 16 Oct 2018 01:15:57 GMT  
		Size: 213.2 MB (213202596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34e052c2087a602fd6c7d2a43d2293557040d6128ff3592ad68a76f7e28e2b78`  
		Last Modified: Tue, 16 Oct 2018 09:39:44 GMT  
		Size: 211.6 MB (211584663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.29-stretch` - linux; arm variant v7

```console
$ docker pull rust@sha256:9a0845345a8288e6625ba1b26341d345df070ca6a839183857bd489dc5dae803
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **447.2 MB (447204047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75b976e7c1b911722a15bc2571b7e0e98e25b247607bc9f322f531e535ad443e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:45:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:47:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sun, 14 Oct 2018 11:57:45 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sun, 14 Oct 2018 11:58:48 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215164aeca718c35ec0eb0e6c0105cdcb8ceadce60d8c8ccc9c182f3b9928d32`  
		Last Modified: Wed, 05 Sep 2018 12:56:53 GMT  
		Size: 9.4 MB (9440248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3881d6781569972fa823e9e0c4eab63be9dd636d1ae45ba90a364cfea2ed4f51`  
		Last Modified: Wed, 05 Sep 2018 12:56:51 GMT  
		Size: 3.9 MB (3912963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247050a5017030d16351675bb3d21d3413470130201b75e5a0688c5d20932c20`  
		Last Modified: Wed, 05 Sep 2018 12:57:31 GMT  
		Size: 46.4 MB (46380896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9616fd9b504f68976445f1c199b9d33089646acb282faa652e819a52e1de7cdc`  
		Last Modified: Wed, 05 Sep 2018 12:58:39 GMT  
		Size: 194.0 MB (194001521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7293af3a3fea97dc9043395e3eb4f6226b0ba1e41bf812c187ccdfae21d21041`  
		Last Modified: Tue, 16 Oct 2018 12:42:52 GMT  
		Size: 151.4 MB (151405749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.29-stretch` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:b774ef087bd368a99dc59b5b1d61c9b13bea7cafd889e2ba12275b4478709a93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.8 MB (455763552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a937a2e5ada0c6e14da35ef6f4483b089e6fe49b0c5095082017f13fe732718`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:02:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 10:04:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:15:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 13 Oct 2018 10:26:49 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sat, 13 Oct 2018 10:27:23 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ac5864132647baf5fa26dfe782dbf1645944aca4a8e963d24572bb0b90007`  
		Last Modified: Wed, 05 Sep 2018 10:25:53 GMT  
		Size: 9.7 MB (9690090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d98c830cad0499c1720f09b5ec6e3dde0f144f0b5ab1b555fa37e4eac6623`  
		Last Modified: Wed, 05 Sep 2018 10:25:51 GMT  
		Size: 4.1 MB (4088370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b9bb8999b31a6d7863b55aa60a4268cb0d6b948e0271befbdd3e6b81af462b`  
		Last Modified: Wed, 05 Sep 2018 10:27:44 GMT  
		Size: 48.0 MB (48003320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7759d8623c1cc32b06c21fc173f450a7cf57a80e14e31dd28b6e4dadcef76bea`  
		Last Modified: Wed, 05 Sep 2018 10:30:03 GMT  
		Size: 200.6 MB (200626040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8e379d394cfb7cae5a1f89d7ae41fa5ad523f7573f8ff73f205162a919eee6`  
		Last Modified: Sat, 13 Oct 2018 10:30:44 GMT  
		Size: 150.2 MB (150232111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.29-stretch` - linux; 386

```console
$ docker pull rust@sha256:0cff60ddd67c9ea89bfdb73320e3ccfd1c70864dab85118675a8f6f4420c51ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **545.2 MB (545188443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebda099ba789f09a0ddfc647bc36f637b267ec1002659febaba3f03d4b011b7b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:36 GMT
ADD file:3712892f37687a2c2c5bbcb861ce5514725fe71d82c86a79fb1d1bcaa39b8989 in / 
# Wed, 05 Sep 2018 10:43:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:39:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:39:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:40:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:43:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 13 Oct 2018 12:16:29 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sat, 13 Oct 2018 12:17:32 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:23bbbdd93c8977020ec67716d0cda1fe7a96e73c4c3a0aa6c42122459e2ba839`  
		Last Modified: Wed, 05 Sep 2018 10:51:53 GMT  
		Size: 46.0 MB (46039046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0651aebef484f2932d9d9ec0ecaeaa15733b8454c24edd2fce38adb0542d794`  
		Last Modified: Wed, 05 Sep 2018 12:09:00 GMT  
		Size: 10.8 MB (10752740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5868a2cc4b3fe4d148aaea3d9f4da71a92f29f3b899d163fef3a2ead52cf44a6`  
		Last Modified: Wed, 05 Sep 2018 12:08:55 GMT  
		Size: 4.6 MB (4555338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f5880b1f9668fd77a6ab2213c8f16110a0e52bb5a8b3edd308306f6df47911`  
		Last Modified: Wed, 05 Sep 2018 12:09:42 GMT  
		Size: 51.6 MB (51592445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c6d01b2edcff2b1d748bcebd9d4632d0888c58beb4a379685de71ec90170d1`  
		Last Modified: Wed, 05 Sep 2018 12:11:26 GMT  
		Size: 218.3 MB (218257236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cde425bfb7e9de73f3f6d4dac5f397523bbbb84e68eafc276a68f402c9aff4e`  
		Last Modified: Sat, 13 Oct 2018 12:19:49 GMT  
		Size: 214.0 MB (213991638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1-slim`

```console
$ docker pull rust@sha256:8ca59fbf2b3eef6415c2b43483a1e38f4dd59b8c32d0563bd42d7eb306b7acd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1-slim` - linux; amd64

```console
$ docker pull rust@sha256:0d495e79dbcc71087f3cf2ab12b31f8735bcc67c542e87000b5459668dd49efc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271952262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b336238c9f8504a22e876e67b34b6c40e46b046aa682c41ceaeb5352b8515e83`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Mon, 15 Oct 2018 23:54:23 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Mon, 15 Oct 2018 23:55:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb9d85a78cc824eaa741c8e6a970f29a50eee9eef20b9229b13c37cebca6420`  
		Last Modified: Mon, 15 Oct 2018 23:56:34 GMT  
		Size: 249.5 MB (249466223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-slim` - linux; arm variant v7

```console
$ docker pull rust@sha256:21998a90aff4eca239336fa290b48e03814a77e8ab3bb3e550b2ecf8c9044251
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.8 MB (198754891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b7e5d3ec5b2541f45835205577886175c745d341d2104b1c3e7a7b7f15a5cf`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:40:18 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Tue, 16 Oct 2018 12:42:00 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc921a164f8aa5fa545fd48252ccfcfaac4644662a61d717523f0d0e36e42de`  
		Last Modified: Tue, 16 Oct 2018 12:44:44 GMT  
		Size: 179.5 MB (179484725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-slim` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:64a97f96f3f77a5a6642224b195108989286303237397c189e1595934b53e885
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.2 MB (201155659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:773a46ad430e532abc413ec38958b97f2ec90e1715c210cf0eefc27e72c71493`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Sat, 13 Oct 2018 10:27:53 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sat, 13 Oct 2018 10:29:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6a393b1519511e9b22e38e1c31bb853a17f9e2e7edd8da8670c6ab428047dc`  
		Last Modified: Sat, 13 Oct 2018 10:34:43 GMT  
		Size: 180.8 MB (180824018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-slim` - linux; 386

```console
$ docker pull rust@sha256:4ee4b07bfb21fdde1d533f38464c86eb5b2c9cf4977dff2424e3ae5a2e9fa3ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.0 MB (278974849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0f7c6f85bf618a5e01cfc259dedec1c422eaa8743d25d7f15cc9abc42db4b89`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:58 GMT
ADD file:e2998c599fe122e866e9244aa7fdb1d3bdddb454863a1d003340392684d2388d in / 
# Wed, 05 Sep 2018 10:43:59 GMT
CMD ["bash"]
# Sat, 13 Oct 2018 12:17:46 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sat, 13 Oct 2018 12:18:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:6a04e6fc95134a0f0b1fc5f312d7930a2abb685ce0081538c60b7d51a221cbb1`  
		Last Modified: Wed, 05 Sep 2018 10:52:19 GMT  
		Size: 23.1 MB (23126488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb6f5d811c1e5a167b365fbce7ba3dc8438c27967b1d78fa5bf9ffb4cb9c4f5`  
		Last Modified: Sat, 13 Oct 2018 12:21:48 GMT  
		Size: 255.8 MB (255848361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1-slim-stretch`

```console
$ docker pull rust@sha256:8ca59fbf2b3eef6415c2b43483a1e38f4dd59b8c32d0563bd42d7eb306b7acd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1-slim-stretch` - linux; amd64

```console
$ docker pull rust@sha256:0d495e79dbcc71087f3cf2ab12b31f8735bcc67c542e87000b5459668dd49efc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271952262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b336238c9f8504a22e876e67b34b6c40e46b046aa682c41ceaeb5352b8515e83`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Mon, 15 Oct 2018 23:54:23 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Mon, 15 Oct 2018 23:55:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb9d85a78cc824eaa741c8e6a970f29a50eee9eef20b9229b13c37cebca6420`  
		Last Modified: Mon, 15 Oct 2018 23:56:34 GMT  
		Size: 249.5 MB (249466223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-slim-stretch` - linux; arm variant v7

```console
$ docker pull rust@sha256:21998a90aff4eca239336fa290b48e03814a77e8ab3bb3e550b2ecf8c9044251
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.8 MB (198754891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b7e5d3ec5b2541f45835205577886175c745d341d2104b1c3e7a7b7f15a5cf`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:40:18 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Tue, 16 Oct 2018 12:42:00 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc921a164f8aa5fa545fd48252ccfcfaac4644662a61d717523f0d0e36e42de`  
		Last Modified: Tue, 16 Oct 2018 12:44:44 GMT  
		Size: 179.5 MB (179484725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-slim-stretch` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:64a97f96f3f77a5a6642224b195108989286303237397c189e1595934b53e885
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.2 MB (201155659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:773a46ad430e532abc413ec38958b97f2ec90e1715c210cf0eefc27e72c71493`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Sat, 13 Oct 2018 10:27:53 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sat, 13 Oct 2018 10:29:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6a393b1519511e9b22e38e1c31bb853a17f9e2e7edd8da8670c6ab428047dc`  
		Last Modified: Sat, 13 Oct 2018 10:34:43 GMT  
		Size: 180.8 MB (180824018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-slim-stretch` - linux; 386

```console
$ docker pull rust@sha256:4ee4b07bfb21fdde1d533f38464c86eb5b2c9cf4977dff2424e3ae5a2e9fa3ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.0 MB (278974849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0f7c6f85bf618a5e01cfc259dedec1c422eaa8743d25d7f15cc9abc42db4b89`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:58 GMT
ADD file:e2998c599fe122e866e9244aa7fdb1d3bdddb454863a1d003340392684d2388d in / 
# Wed, 05 Sep 2018 10:43:59 GMT
CMD ["bash"]
# Sat, 13 Oct 2018 12:17:46 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sat, 13 Oct 2018 12:18:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:6a04e6fc95134a0f0b1fc5f312d7930a2abb685ce0081538c60b7d51a221cbb1`  
		Last Modified: Wed, 05 Sep 2018 10:52:19 GMT  
		Size: 23.1 MB (23126488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb6f5d811c1e5a167b365fbce7ba3dc8438c27967b1d78fa5bf9ffb4cb9c4f5`  
		Last Modified: Sat, 13 Oct 2018 12:21:48 GMT  
		Size: 255.8 MB (255848361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1-stretch`

```console
$ docker pull rust@sha256:deac3be607fe25738066454096e0804a59dc94d6b0b3fbe727eb411eb1e2676d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1-stretch` - linux; amd64

```console
$ docker pull rust@sha256:e48c0e8d043bf84a6615d6711af9bbdf204ee502ba8be907b46fa4e8ddab9e25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **535.2 MB (535238811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f24616cd007e943ba000b6f8ddfddaf8d317a2493c31245e8e4b965789ddc998`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:03:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:37:33 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Tue, 16 Oct 2018 09:38:15 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72744d0a318b0788001cc4f5f83c6847ba4b753307fadd046b508bbc41eb9e29`  
		Last Modified: Tue, 16 Oct 2018 01:15:57 GMT  
		Size: 213.2 MB (213202596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34e052c2087a602fd6c7d2a43d2293557040d6128ff3592ad68a76f7e28e2b78`  
		Last Modified: Tue, 16 Oct 2018 09:39:44 GMT  
		Size: 211.6 MB (211584663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-stretch` - linux; arm variant v7

```console
$ docker pull rust@sha256:9a0845345a8288e6625ba1b26341d345df070ca6a839183857bd489dc5dae803
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **447.2 MB (447204047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75b976e7c1b911722a15bc2571b7e0e98e25b247607bc9f322f531e535ad443e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:45:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:47:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sun, 14 Oct 2018 11:57:45 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sun, 14 Oct 2018 11:58:48 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215164aeca718c35ec0eb0e6c0105cdcb8ceadce60d8c8ccc9c182f3b9928d32`  
		Last Modified: Wed, 05 Sep 2018 12:56:53 GMT  
		Size: 9.4 MB (9440248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3881d6781569972fa823e9e0c4eab63be9dd636d1ae45ba90a364cfea2ed4f51`  
		Last Modified: Wed, 05 Sep 2018 12:56:51 GMT  
		Size: 3.9 MB (3912963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247050a5017030d16351675bb3d21d3413470130201b75e5a0688c5d20932c20`  
		Last Modified: Wed, 05 Sep 2018 12:57:31 GMT  
		Size: 46.4 MB (46380896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9616fd9b504f68976445f1c199b9d33089646acb282faa652e819a52e1de7cdc`  
		Last Modified: Wed, 05 Sep 2018 12:58:39 GMT  
		Size: 194.0 MB (194001521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7293af3a3fea97dc9043395e3eb4f6226b0ba1e41bf812c187ccdfae21d21041`  
		Last Modified: Tue, 16 Oct 2018 12:42:52 GMT  
		Size: 151.4 MB (151405749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-stretch` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:b774ef087bd368a99dc59b5b1d61c9b13bea7cafd889e2ba12275b4478709a93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.8 MB (455763552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a937a2e5ada0c6e14da35ef6f4483b089e6fe49b0c5095082017f13fe732718`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:02:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 10:04:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:15:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 13 Oct 2018 10:26:49 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sat, 13 Oct 2018 10:27:23 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ac5864132647baf5fa26dfe782dbf1645944aca4a8e963d24572bb0b90007`  
		Last Modified: Wed, 05 Sep 2018 10:25:53 GMT  
		Size: 9.7 MB (9690090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d98c830cad0499c1720f09b5ec6e3dde0f144f0b5ab1b555fa37e4eac6623`  
		Last Modified: Wed, 05 Sep 2018 10:25:51 GMT  
		Size: 4.1 MB (4088370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b9bb8999b31a6d7863b55aa60a4268cb0d6b948e0271befbdd3e6b81af462b`  
		Last Modified: Wed, 05 Sep 2018 10:27:44 GMT  
		Size: 48.0 MB (48003320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7759d8623c1cc32b06c21fc173f450a7cf57a80e14e31dd28b6e4dadcef76bea`  
		Last Modified: Wed, 05 Sep 2018 10:30:03 GMT  
		Size: 200.6 MB (200626040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8e379d394cfb7cae5a1f89d7ae41fa5ad523f7573f8ff73f205162a919eee6`  
		Last Modified: Sat, 13 Oct 2018 10:30:44 GMT  
		Size: 150.2 MB (150232111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-stretch` - linux; 386

```console
$ docker pull rust@sha256:0cff60ddd67c9ea89bfdb73320e3ccfd1c70864dab85118675a8f6f4420c51ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **545.2 MB (545188443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebda099ba789f09a0ddfc647bc36f637b267ec1002659febaba3f03d4b011b7b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:36 GMT
ADD file:3712892f37687a2c2c5bbcb861ce5514725fe71d82c86a79fb1d1bcaa39b8989 in / 
# Wed, 05 Sep 2018 10:43:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:39:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:39:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:40:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:43:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 13 Oct 2018 12:16:29 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sat, 13 Oct 2018 12:17:32 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:23bbbdd93c8977020ec67716d0cda1fe7a96e73c4c3a0aa6c42122459e2ba839`  
		Last Modified: Wed, 05 Sep 2018 10:51:53 GMT  
		Size: 46.0 MB (46039046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0651aebef484f2932d9d9ec0ecaeaa15733b8454c24edd2fce38adb0542d794`  
		Last Modified: Wed, 05 Sep 2018 12:09:00 GMT  
		Size: 10.8 MB (10752740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5868a2cc4b3fe4d148aaea3d9f4da71a92f29f3b899d163fef3a2ead52cf44a6`  
		Last Modified: Wed, 05 Sep 2018 12:08:55 GMT  
		Size: 4.6 MB (4555338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f5880b1f9668fd77a6ab2213c8f16110a0e52bb5a8b3edd308306f6df47911`  
		Last Modified: Wed, 05 Sep 2018 12:09:42 GMT  
		Size: 51.6 MB (51592445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c6d01b2edcff2b1d748bcebd9d4632d0888c58beb4a379685de71ec90170d1`  
		Last Modified: Wed, 05 Sep 2018 12:11:26 GMT  
		Size: 218.3 MB (218257236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cde425bfb7e9de73f3f6d4dac5f397523bbbb84e68eafc276a68f402c9aff4e`  
		Last Modified: Sat, 13 Oct 2018 12:19:49 GMT  
		Size: 214.0 MB (213991638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:latest`

```console
$ docker pull rust@sha256:deac3be607fe25738066454096e0804a59dc94d6b0b3fbe727eb411eb1e2676d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:latest` - linux; amd64

```console
$ docker pull rust@sha256:e48c0e8d043bf84a6615d6711af9bbdf204ee502ba8be907b46fa4e8ddab9e25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **535.2 MB (535238811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f24616cd007e943ba000b6f8ddfddaf8d317a2493c31245e8e4b965789ddc998`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:03:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:37:33 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Tue, 16 Oct 2018 09:38:15 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72744d0a318b0788001cc4f5f83c6847ba4b753307fadd046b508bbc41eb9e29`  
		Last Modified: Tue, 16 Oct 2018 01:15:57 GMT  
		Size: 213.2 MB (213202596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34e052c2087a602fd6c7d2a43d2293557040d6128ff3592ad68a76f7e28e2b78`  
		Last Modified: Tue, 16 Oct 2018 09:39:44 GMT  
		Size: 211.6 MB (211584663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:latest` - linux; arm variant v7

```console
$ docker pull rust@sha256:9a0845345a8288e6625ba1b26341d345df070ca6a839183857bd489dc5dae803
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **447.2 MB (447204047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75b976e7c1b911722a15bc2571b7e0e98e25b247607bc9f322f531e535ad443e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:45:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:47:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sun, 14 Oct 2018 11:57:45 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sun, 14 Oct 2018 11:58:48 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215164aeca718c35ec0eb0e6c0105cdcb8ceadce60d8c8ccc9c182f3b9928d32`  
		Last Modified: Wed, 05 Sep 2018 12:56:53 GMT  
		Size: 9.4 MB (9440248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3881d6781569972fa823e9e0c4eab63be9dd636d1ae45ba90a364cfea2ed4f51`  
		Last Modified: Wed, 05 Sep 2018 12:56:51 GMT  
		Size: 3.9 MB (3912963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247050a5017030d16351675bb3d21d3413470130201b75e5a0688c5d20932c20`  
		Last Modified: Wed, 05 Sep 2018 12:57:31 GMT  
		Size: 46.4 MB (46380896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9616fd9b504f68976445f1c199b9d33089646acb282faa652e819a52e1de7cdc`  
		Last Modified: Wed, 05 Sep 2018 12:58:39 GMT  
		Size: 194.0 MB (194001521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7293af3a3fea97dc9043395e3eb4f6226b0ba1e41bf812c187ccdfae21d21041`  
		Last Modified: Tue, 16 Oct 2018 12:42:52 GMT  
		Size: 151.4 MB (151405749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:latest` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:b774ef087bd368a99dc59b5b1d61c9b13bea7cafd889e2ba12275b4478709a93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.8 MB (455763552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a937a2e5ada0c6e14da35ef6f4483b089e6fe49b0c5095082017f13fe732718`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:02:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 10:04:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:15:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 13 Oct 2018 10:26:49 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sat, 13 Oct 2018 10:27:23 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ac5864132647baf5fa26dfe782dbf1645944aca4a8e963d24572bb0b90007`  
		Last Modified: Wed, 05 Sep 2018 10:25:53 GMT  
		Size: 9.7 MB (9690090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d98c830cad0499c1720f09b5ec6e3dde0f144f0b5ab1b555fa37e4eac6623`  
		Last Modified: Wed, 05 Sep 2018 10:25:51 GMT  
		Size: 4.1 MB (4088370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b9bb8999b31a6d7863b55aa60a4268cb0d6b948e0271befbdd3e6b81af462b`  
		Last Modified: Wed, 05 Sep 2018 10:27:44 GMT  
		Size: 48.0 MB (48003320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7759d8623c1cc32b06c21fc173f450a7cf57a80e14e31dd28b6e4dadcef76bea`  
		Last Modified: Wed, 05 Sep 2018 10:30:03 GMT  
		Size: 200.6 MB (200626040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8e379d394cfb7cae5a1f89d7ae41fa5ad523f7573f8ff73f205162a919eee6`  
		Last Modified: Sat, 13 Oct 2018 10:30:44 GMT  
		Size: 150.2 MB (150232111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:latest` - linux; 386

```console
$ docker pull rust@sha256:0cff60ddd67c9ea89bfdb73320e3ccfd1c70864dab85118675a8f6f4420c51ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **545.2 MB (545188443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebda099ba789f09a0ddfc647bc36f637b267ec1002659febaba3f03d4b011b7b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:36 GMT
ADD file:3712892f37687a2c2c5bbcb861ce5514725fe71d82c86a79fb1d1bcaa39b8989 in / 
# Wed, 05 Sep 2018 10:43:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:39:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:39:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:40:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:43:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 13 Oct 2018 12:16:29 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sat, 13 Oct 2018 12:17:32 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:23bbbdd93c8977020ec67716d0cda1fe7a96e73c4c3a0aa6c42122459e2ba839`  
		Last Modified: Wed, 05 Sep 2018 10:51:53 GMT  
		Size: 46.0 MB (46039046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0651aebef484f2932d9d9ec0ecaeaa15733b8454c24edd2fce38adb0542d794`  
		Last Modified: Wed, 05 Sep 2018 12:09:00 GMT  
		Size: 10.8 MB (10752740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5868a2cc4b3fe4d148aaea3d9f4da71a92f29f3b899d163fef3a2ead52cf44a6`  
		Last Modified: Wed, 05 Sep 2018 12:08:55 GMT  
		Size: 4.6 MB (4555338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f5880b1f9668fd77a6ab2213c8f16110a0e52bb5a8b3edd308306f6df47911`  
		Last Modified: Wed, 05 Sep 2018 12:09:42 GMT  
		Size: 51.6 MB (51592445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c6d01b2edcff2b1d748bcebd9d4632d0888c58beb4a379685de71ec90170d1`  
		Last Modified: Wed, 05 Sep 2018 12:11:26 GMT  
		Size: 218.3 MB (218257236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cde425bfb7e9de73f3f6d4dac5f397523bbbb84e68eafc276a68f402c9aff4e`  
		Last Modified: Sat, 13 Oct 2018 12:19:49 GMT  
		Size: 214.0 MB (213991638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:slim`

```console
$ docker pull rust@sha256:8ca59fbf2b3eef6415c2b43483a1e38f4dd59b8c32d0563bd42d7eb306b7acd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:slim` - linux; amd64

```console
$ docker pull rust@sha256:0d495e79dbcc71087f3cf2ab12b31f8735bcc67c542e87000b5459668dd49efc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271952262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b336238c9f8504a22e876e67b34b6c40e46b046aa682c41ceaeb5352b8515e83`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Mon, 15 Oct 2018 23:54:23 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Mon, 15 Oct 2018 23:55:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb9d85a78cc824eaa741c8e6a970f29a50eee9eef20b9229b13c37cebca6420`  
		Last Modified: Mon, 15 Oct 2018 23:56:34 GMT  
		Size: 249.5 MB (249466223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:slim` - linux; arm variant v7

```console
$ docker pull rust@sha256:21998a90aff4eca239336fa290b48e03814a77e8ab3bb3e550b2ecf8c9044251
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.8 MB (198754891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b7e5d3ec5b2541f45835205577886175c745d341d2104b1c3e7a7b7f15a5cf`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:40:18 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Tue, 16 Oct 2018 12:42:00 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc921a164f8aa5fa545fd48252ccfcfaac4644662a61d717523f0d0e36e42de`  
		Last Modified: Tue, 16 Oct 2018 12:44:44 GMT  
		Size: 179.5 MB (179484725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:slim` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:64a97f96f3f77a5a6642224b195108989286303237397c189e1595934b53e885
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.2 MB (201155659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:773a46ad430e532abc413ec38958b97f2ec90e1715c210cf0eefc27e72c71493`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Sat, 13 Oct 2018 10:27:53 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sat, 13 Oct 2018 10:29:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6a393b1519511e9b22e38e1c31bb853a17f9e2e7edd8da8670c6ab428047dc`  
		Last Modified: Sat, 13 Oct 2018 10:34:43 GMT  
		Size: 180.8 MB (180824018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:slim` - linux; 386

```console
$ docker pull rust@sha256:4ee4b07bfb21fdde1d533f38464c86eb5b2c9cf4977dff2424e3ae5a2e9fa3ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.0 MB (278974849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0f7c6f85bf618a5e01cfc259dedec1c422eaa8743d25d7f15cc9abc42db4b89`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:58 GMT
ADD file:e2998c599fe122e866e9244aa7fdb1d3bdddb454863a1d003340392684d2388d in / 
# Wed, 05 Sep 2018 10:43:59 GMT
CMD ["bash"]
# Sat, 13 Oct 2018 12:17:46 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sat, 13 Oct 2018 12:18:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:6a04e6fc95134a0f0b1fc5f312d7930a2abb685ce0081538c60b7d51a221cbb1`  
		Last Modified: Wed, 05 Sep 2018 10:52:19 GMT  
		Size: 23.1 MB (23126488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb6f5d811c1e5a167b365fbce7ba3dc8438c27967b1d78fa5bf9ffb4cb9c4f5`  
		Last Modified: Sat, 13 Oct 2018 12:21:48 GMT  
		Size: 255.8 MB (255848361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:slim-stretch`

```console
$ docker pull rust@sha256:8ca59fbf2b3eef6415c2b43483a1e38f4dd59b8c32d0563bd42d7eb306b7acd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:slim-stretch` - linux; amd64

```console
$ docker pull rust@sha256:0d495e79dbcc71087f3cf2ab12b31f8735bcc67c542e87000b5459668dd49efc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271952262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b336238c9f8504a22e876e67b34b6c40e46b046aa682c41ceaeb5352b8515e83`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Mon, 15 Oct 2018 23:54:23 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Mon, 15 Oct 2018 23:55:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb9d85a78cc824eaa741c8e6a970f29a50eee9eef20b9229b13c37cebca6420`  
		Last Modified: Mon, 15 Oct 2018 23:56:34 GMT  
		Size: 249.5 MB (249466223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:slim-stretch` - linux; arm variant v7

```console
$ docker pull rust@sha256:21998a90aff4eca239336fa290b48e03814a77e8ab3bb3e550b2ecf8c9044251
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.8 MB (198754891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b7e5d3ec5b2541f45835205577886175c745d341d2104b1c3e7a7b7f15a5cf`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:40:18 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Tue, 16 Oct 2018 12:42:00 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc921a164f8aa5fa545fd48252ccfcfaac4644662a61d717523f0d0e36e42de`  
		Last Modified: Tue, 16 Oct 2018 12:44:44 GMT  
		Size: 179.5 MB (179484725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:slim-stretch` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:64a97f96f3f77a5a6642224b195108989286303237397c189e1595934b53e885
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.2 MB (201155659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:773a46ad430e532abc413ec38958b97f2ec90e1715c210cf0eefc27e72c71493`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Sat, 13 Oct 2018 10:27:53 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sat, 13 Oct 2018 10:29:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6a393b1519511e9b22e38e1c31bb853a17f9e2e7edd8da8670c6ab428047dc`  
		Last Modified: Sat, 13 Oct 2018 10:34:43 GMT  
		Size: 180.8 MB (180824018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:slim-stretch` - linux; 386

```console
$ docker pull rust@sha256:4ee4b07bfb21fdde1d533f38464c86eb5b2c9cf4977dff2424e3ae5a2e9fa3ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.0 MB (278974849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0f7c6f85bf618a5e01cfc259dedec1c422eaa8743d25d7f15cc9abc42db4b89`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:58 GMT
ADD file:e2998c599fe122e866e9244aa7fdb1d3bdddb454863a1d003340392684d2388d in / 
# Wed, 05 Sep 2018 10:43:59 GMT
CMD ["bash"]
# Sat, 13 Oct 2018 12:17:46 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sat, 13 Oct 2018 12:18:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:6a04e6fc95134a0f0b1fc5f312d7930a2abb685ce0081538c60b7d51a221cbb1`  
		Last Modified: Wed, 05 Sep 2018 10:52:19 GMT  
		Size: 23.1 MB (23126488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb6f5d811c1e5a167b365fbce7ba3dc8438c27967b1d78fa5bf9ffb4cb9c4f5`  
		Last Modified: Sat, 13 Oct 2018 12:21:48 GMT  
		Size: 255.8 MB (255848361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:stretch`

```console
$ docker pull rust@sha256:deac3be607fe25738066454096e0804a59dc94d6b0b3fbe727eb411eb1e2676d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:stretch` - linux; amd64

```console
$ docker pull rust@sha256:e48c0e8d043bf84a6615d6711af9bbdf204ee502ba8be907b46fa4e8ddab9e25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **535.2 MB (535238811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f24616cd007e943ba000b6f8ddfddaf8d317a2493c31245e8e4b965789ddc998`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:03:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:37:33 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Tue, 16 Oct 2018 09:38:15 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72744d0a318b0788001cc4f5f83c6847ba4b753307fadd046b508bbc41eb9e29`  
		Last Modified: Tue, 16 Oct 2018 01:15:57 GMT  
		Size: 213.2 MB (213202596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34e052c2087a602fd6c7d2a43d2293557040d6128ff3592ad68a76f7e28e2b78`  
		Last Modified: Tue, 16 Oct 2018 09:39:44 GMT  
		Size: 211.6 MB (211584663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:stretch` - linux; arm variant v7

```console
$ docker pull rust@sha256:9a0845345a8288e6625ba1b26341d345df070ca6a839183857bd489dc5dae803
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **447.2 MB (447204047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75b976e7c1b911722a15bc2571b7e0e98e25b247607bc9f322f531e535ad443e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:45:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:47:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sun, 14 Oct 2018 11:57:45 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sun, 14 Oct 2018 11:58:48 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215164aeca718c35ec0eb0e6c0105cdcb8ceadce60d8c8ccc9c182f3b9928d32`  
		Last Modified: Wed, 05 Sep 2018 12:56:53 GMT  
		Size: 9.4 MB (9440248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3881d6781569972fa823e9e0c4eab63be9dd636d1ae45ba90a364cfea2ed4f51`  
		Last Modified: Wed, 05 Sep 2018 12:56:51 GMT  
		Size: 3.9 MB (3912963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247050a5017030d16351675bb3d21d3413470130201b75e5a0688c5d20932c20`  
		Last Modified: Wed, 05 Sep 2018 12:57:31 GMT  
		Size: 46.4 MB (46380896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9616fd9b504f68976445f1c199b9d33089646acb282faa652e819a52e1de7cdc`  
		Last Modified: Wed, 05 Sep 2018 12:58:39 GMT  
		Size: 194.0 MB (194001521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7293af3a3fea97dc9043395e3eb4f6226b0ba1e41bf812c187ccdfae21d21041`  
		Last Modified: Tue, 16 Oct 2018 12:42:52 GMT  
		Size: 151.4 MB (151405749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:stretch` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:b774ef087bd368a99dc59b5b1d61c9b13bea7cafd889e2ba12275b4478709a93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.8 MB (455763552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a937a2e5ada0c6e14da35ef6f4483b089e6fe49b0c5095082017f13fe732718`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:02:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 10:04:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:15:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 13 Oct 2018 10:26:49 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sat, 13 Oct 2018 10:27:23 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ac5864132647baf5fa26dfe782dbf1645944aca4a8e963d24572bb0b90007`  
		Last Modified: Wed, 05 Sep 2018 10:25:53 GMT  
		Size: 9.7 MB (9690090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d98c830cad0499c1720f09b5ec6e3dde0f144f0b5ab1b555fa37e4eac6623`  
		Last Modified: Wed, 05 Sep 2018 10:25:51 GMT  
		Size: 4.1 MB (4088370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b9bb8999b31a6d7863b55aa60a4268cb0d6b948e0271befbdd3e6b81af462b`  
		Last Modified: Wed, 05 Sep 2018 10:27:44 GMT  
		Size: 48.0 MB (48003320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7759d8623c1cc32b06c21fc173f450a7cf57a80e14e31dd28b6e4dadcef76bea`  
		Last Modified: Wed, 05 Sep 2018 10:30:03 GMT  
		Size: 200.6 MB (200626040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8e379d394cfb7cae5a1f89d7ae41fa5ad523f7573f8ff73f205162a919eee6`  
		Last Modified: Sat, 13 Oct 2018 10:30:44 GMT  
		Size: 150.2 MB (150232111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:stretch` - linux; 386

```console
$ docker pull rust@sha256:0cff60ddd67c9ea89bfdb73320e3ccfd1c70864dab85118675a8f6f4420c51ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **545.2 MB (545188443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebda099ba789f09a0ddfc647bc36f637b267ec1002659febaba3f03d4b011b7b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:36 GMT
ADD file:3712892f37687a2c2c5bbcb861ce5514725fe71d82c86a79fb1d1bcaa39b8989 in / 
# Wed, 05 Sep 2018 10:43:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:39:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:39:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:40:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:43:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 13 Oct 2018 12:16:29 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.29.2
# Sat, 13 Oct 2018 12:17:32 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='0077ff9c19f722e2be202698c037413099e1188c0c233c12a2297bf18e9ff6e7' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='f139e5be4ea2db7ff151c122f5d24af3c587c4fc74a7414e262cb34403278ad3' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c7d5471e71a315134e7499af75eb177d1f574858f1c6b8e61b436702d671a4e2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='909ce4e2d0c9bf60ba5a85426c38cceb5ae77979ab2b1e354e76b9851b5ec5ed' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.14.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:23bbbdd93c8977020ec67716d0cda1fe7a96e73c4c3a0aa6c42122459e2ba839`  
		Last Modified: Wed, 05 Sep 2018 10:51:53 GMT  
		Size: 46.0 MB (46039046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0651aebef484f2932d9d9ec0ecaeaa15733b8454c24edd2fce38adb0542d794`  
		Last Modified: Wed, 05 Sep 2018 12:09:00 GMT  
		Size: 10.8 MB (10752740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5868a2cc4b3fe4d148aaea3d9f4da71a92f29f3b899d163fef3a2ead52cf44a6`  
		Last Modified: Wed, 05 Sep 2018 12:08:55 GMT  
		Size: 4.6 MB (4555338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f5880b1f9668fd77a6ab2213c8f16110a0e52bb5a8b3edd308306f6df47911`  
		Last Modified: Wed, 05 Sep 2018 12:09:42 GMT  
		Size: 51.6 MB (51592445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c6d01b2edcff2b1d748bcebd9d4632d0888c58beb4a379685de71ec90170d1`  
		Last Modified: Wed, 05 Sep 2018 12:11:26 GMT  
		Size: 218.3 MB (218257236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cde425bfb7e9de73f3f6d4dac5f397523bbbb84e68eafc276a68f402c9aff4e`  
		Last Modified: Sat, 13 Oct 2018 12:19:49 GMT  
		Size: 214.0 MB (213991638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

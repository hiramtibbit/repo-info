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
$ docker pull rust@sha256:4ad241efcc4de766d257668e289c30a68111f5f650f2d0be22e4b08ad7bb73de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:1` - linux; amd64

```console
$ docker pull rust@sha256:eb00f4fb12f995a6caffefb242c1017b63c79ca2e5b9ae027a9b5b253d8ba92b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **549.7 MB (549724712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbee606464fb3ffa1bda59afd8cfc5fb7be33a22ff2aa4ee973e760985070709`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:17:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:19:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Jul 2018 21:20:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 10 Jul 2018 21:20:51 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7ad5906a7580677bdf8a8d57749814520c2c6a2054604c115ba6e8646363aa`  
		Last Modified: Tue, 26 Jun 2018 22:30:55 GMT  
		Size: 50.1 MB (50062264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2ddfdfc7d12d2e9d472df6f8f910edf803d71a98628858eb0879f94f60ba1b`  
		Last Modified: Tue, 26 Jun 2018 22:32:32 GMT  
		Size: 213.2 MB (213163111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61eaff6d4ac29f1f320be1da19385fe43ab21dc7c4e2246f203a9ef06e088b9b`  
		Last Modified: Tue, 10 Jul 2018 21:28:01 GMT  
		Size: 226.1 MB (226069790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.27`

```console
$ docker pull rust@sha256:4ad241efcc4de766d257668e289c30a68111f5f650f2d0be22e4b08ad7bb73de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:1.27` - linux; amd64

```console
$ docker pull rust@sha256:eb00f4fb12f995a6caffefb242c1017b63c79ca2e5b9ae027a9b5b253d8ba92b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **549.7 MB (549724712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbee606464fb3ffa1bda59afd8cfc5fb7be33a22ff2aa4ee973e760985070709`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:17:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:19:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Jul 2018 21:20:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 10 Jul 2018 21:20:51 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7ad5906a7580677bdf8a8d57749814520c2c6a2054604c115ba6e8646363aa`  
		Last Modified: Tue, 26 Jun 2018 22:30:55 GMT  
		Size: 50.1 MB (50062264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2ddfdfc7d12d2e9d472df6f8f910edf803d71a98628858eb0879f94f60ba1b`  
		Last Modified: Tue, 26 Jun 2018 22:32:32 GMT  
		Size: 213.2 MB (213163111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61eaff6d4ac29f1f320be1da19385fe43ab21dc7c4e2246f203a9ef06e088b9b`  
		Last Modified: Tue, 10 Jul 2018 21:28:01 GMT  
		Size: 226.1 MB (226069790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.27.1`

```console
$ docker pull rust@sha256:4ad241efcc4de766d257668e289c30a68111f5f650f2d0be22e4b08ad7bb73de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:1.27.1` - linux; amd64

```console
$ docker pull rust@sha256:eb00f4fb12f995a6caffefb242c1017b63c79ca2e5b9ae027a9b5b253d8ba92b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **549.7 MB (549724712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbee606464fb3ffa1bda59afd8cfc5fb7be33a22ff2aa4ee973e760985070709`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:17:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:19:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Jul 2018 21:20:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 10 Jul 2018 21:20:51 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7ad5906a7580677bdf8a8d57749814520c2c6a2054604c115ba6e8646363aa`  
		Last Modified: Tue, 26 Jun 2018 22:30:55 GMT  
		Size: 50.1 MB (50062264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2ddfdfc7d12d2e9d472df6f8f910edf803d71a98628858eb0879f94f60ba1b`  
		Last Modified: Tue, 26 Jun 2018 22:32:32 GMT  
		Size: 213.2 MB (213163111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61eaff6d4ac29f1f320be1da19385fe43ab21dc7c4e2246f203a9ef06e088b9b`  
		Last Modified: Tue, 10 Jul 2018 21:28:01 GMT  
		Size: 226.1 MB (226069790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.27.1-jessie`

```console
$ docker pull rust@sha256:179c445b34b1139964c5dec196743664a1a56f48620e9b1acb6b221953d85a67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:1.27.1-jessie` - linux; amd64

```console
$ docker pull rust@sha256:0f0022542bef89553f565d49574bc884b5765444bab659e81c803f1dfe320d88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.3 MB (472298308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:651b0d8a732c3a348ef9dddf5c86a7d1e031d09f3ac62960b2dcf46e29b32e64`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:09:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:09:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:10:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:13:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Jul 2018 21:22:46 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 10 Jul 2018 21:23:32 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece825d3308bbf98f708d95475ccd880497a1e2979ff4ef2534d49049a18488f`  
		Last Modified: Tue, 26 Jun 2018 22:25:06 GMT  
		Size: 17.6 MB (17585269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06854774e2f35e4763103a446112c67322913a6177bea69eb49663e0166e6d6d`  
		Last Modified: Tue, 26 Jun 2018 22:25:45 GMT  
		Size: 43.3 MB (43299742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0db43b9b8da254cebc77bf871006df01219e195b9853616b9f708f124a00f3a`  
		Last Modified: Tue, 26 Jun 2018 22:26:55 GMT  
		Size: 131.1 MB (131090905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4356d465a10d086195ee5f6d5a7718e72207dd1cca9a5e9cb41dcc3dcf428eda`  
		Last Modified: Tue, 10 Jul 2018 21:35:25 GMT  
		Size: 226.1 MB (226070357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.27.1-slim`

```console
$ docker pull rust@sha256:4d95fb79bb9421bd8f4e2f3c9588ee47da6eb897726f1d45608cf82c166f78a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:1.27.1-slim` - linux; amd64

```console
$ docker pull rust@sha256:d662da1a6b3aaa087cad38234723d4a7ed65b17fdef50b1a3ee6c46908cf9b06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.4 MB (286434120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6434a26d0a01a05965ccd61a96307f65257a084fef7c39f9f7ebf18b9654f483`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Tue, 10 Jul 2018 21:21:10 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 10 Jul 2018 21:22:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ea4e7715e907d0ffa9d31cd6dbf4e8b393c5ada03910d08febcf41188e6d13`  
		Last Modified: Tue, 10 Jul 2018 21:31:43 GMT  
		Size: 263.9 MB (263937145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.27.1-slim-jessie`

```console
$ docker pull rust@sha256:b51db30718f1fdefae2c6adc9aaef9bbaabcfda77eb8d1789d7d868fb5e1f998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:1.27.1-slim-jessie` - linux; amd64

```console
$ docker pull rust@sha256:ae1ad15304768ea45c6c3671f09fe24aac4f570aca163617f71765bd32fffa01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.3 MB (286286470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36d87de4c1c11452cfbf3f075a34d22fc29510e8ae17e884259c5c302e353958`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:21:17 GMT
ADD file:8108708c9ab961c9562c2171f4f594291dbaac0dc81dcb7bcbaf134f251f459e in / 
# Tue, 26 Jun 2018 21:21:18 GMT
CMD ["bash"]
# Tue, 10 Jul 2018 21:23:48 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 10 Jul 2018 21:26:02 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:2caa28db99eb312c788669036f0bf3914f73f5a27a30f69d2a7443fce10eb882`  
		Last Modified: Tue, 26 Jun 2018 21:31:00 GMT  
		Size: 30.1 MB (30119838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80b29cac58dd8a2e80532fdf6a99d83952fef5684929816fc4440f3ffc825b4`  
		Last Modified: Tue, 10 Jul 2018 21:38:09 GMT  
		Size: 256.2 MB (256166632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.27.1-slim-stretch`

```console
$ docker pull rust@sha256:4d95fb79bb9421bd8f4e2f3c9588ee47da6eb897726f1d45608cf82c166f78a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:1.27.1-slim-stretch` - linux; amd64

```console
$ docker pull rust@sha256:d662da1a6b3aaa087cad38234723d4a7ed65b17fdef50b1a3ee6c46908cf9b06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.4 MB (286434120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6434a26d0a01a05965ccd61a96307f65257a084fef7c39f9f7ebf18b9654f483`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Tue, 10 Jul 2018 21:21:10 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 10 Jul 2018 21:22:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ea4e7715e907d0ffa9d31cd6dbf4e8b393c5ada03910d08febcf41188e6d13`  
		Last Modified: Tue, 10 Jul 2018 21:31:43 GMT  
		Size: 263.9 MB (263937145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.27.1-stretch`

```console
$ docker pull rust@sha256:4ad241efcc4de766d257668e289c30a68111f5f650f2d0be22e4b08ad7bb73de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:1.27.1-stretch` - linux; amd64

```console
$ docker pull rust@sha256:eb00f4fb12f995a6caffefb242c1017b63c79ca2e5b9ae027a9b5b253d8ba92b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **549.7 MB (549724712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbee606464fb3ffa1bda59afd8cfc5fb7be33a22ff2aa4ee973e760985070709`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:17:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:19:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Jul 2018 21:20:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 10 Jul 2018 21:20:51 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7ad5906a7580677bdf8a8d57749814520c2c6a2054604c115ba6e8646363aa`  
		Last Modified: Tue, 26 Jun 2018 22:30:55 GMT  
		Size: 50.1 MB (50062264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2ddfdfc7d12d2e9d472df6f8f910edf803d71a98628858eb0879f94f60ba1b`  
		Last Modified: Tue, 26 Jun 2018 22:32:32 GMT  
		Size: 213.2 MB (213163111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61eaff6d4ac29f1f320be1da19385fe43ab21dc7c4e2246f203a9ef06e088b9b`  
		Last Modified: Tue, 10 Jul 2018 21:28:01 GMT  
		Size: 226.1 MB (226069790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.27-jessie`

```console
$ docker pull rust@sha256:179c445b34b1139964c5dec196743664a1a56f48620e9b1acb6b221953d85a67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:1.27-jessie` - linux; amd64

```console
$ docker pull rust@sha256:0f0022542bef89553f565d49574bc884b5765444bab659e81c803f1dfe320d88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.3 MB (472298308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:651b0d8a732c3a348ef9dddf5c86a7d1e031d09f3ac62960b2dcf46e29b32e64`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:09:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:09:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:10:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:13:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Jul 2018 21:22:46 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 10 Jul 2018 21:23:32 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece825d3308bbf98f708d95475ccd880497a1e2979ff4ef2534d49049a18488f`  
		Last Modified: Tue, 26 Jun 2018 22:25:06 GMT  
		Size: 17.6 MB (17585269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06854774e2f35e4763103a446112c67322913a6177bea69eb49663e0166e6d6d`  
		Last Modified: Tue, 26 Jun 2018 22:25:45 GMT  
		Size: 43.3 MB (43299742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0db43b9b8da254cebc77bf871006df01219e195b9853616b9f708f124a00f3a`  
		Last Modified: Tue, 26 Jun 2018 22:26:55 GMT  
		Size: 131.1 MB (131090905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4356d465a10d086195ee5f6d5a7718e72207dd1cca9a5e9cb41dcc3dcf428eda`  
		Last Modified: Tue, 10 Jul 2018 21:35:25 GMT  
		Size: 226.1 MB (226070357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.27-slim`

```console
$ docker pull rust@sha256:4d95fb79bb9421bd8f4e2f3c9588ee47da6eb897726f1d45608cf82c166f78a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:1.27-slim` - linux; amd64

```console
$ docker pull rust@sha256:d662da1a6b3aaa087cad38234723d4a7ed65b17fdef50b1a3ee6c46908cf9b06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.4 MB (286434120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6434a26d0a01a05965ccd61a96307f65257a084fef7c39f9f7ebf18b9654f483`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Tue, 10 Jul 2018 21:21:10 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 10 Jul 2018 21:22:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ea4e7715e907d0ffa9d31cd6dbf4e8b393c5ada03910d08febcf41188e6d13`  
		Last Modified: Tue, 10 Jul 2018 21:31:43 GMT  
		Size: 263.9 MB (263937145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.27-slim-jessie`

```console
$ docker pull rust@sha256:b51db30718f1fdefae2c6adc9aaef9bbaabcfda77eb8d1789d7d868fb5e1f998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:1.27-slim-jessie` - linux; amd64

```console
$ docker pull rust@sha256:ae1ad15304768ea45c6c3671f09fe24aac4f570aca163617f71765bd32fffa01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.3 MB (286286470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36d87de4c1c11452cfbf3f075a34d22fc29510e8ae17e884259c5c302e353958`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:21:17 GMT
ADD file:8108708c9ab961c9562c2171f4f594291dbaac0dc81dcb7bcbaf134f251f459e in / 
# Tue, 26 Jun 2018 21:21:18 GMT
CMD ["bash"]
# Tue, 10 Jul 2018 21:23:48 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 10 Jul 2018 21:26:02 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:2caa28db99eb312c788669036f0bf3914f73f5a27a30f69d2a7443fce10eb882`  
		Last Modified: Tue, 26 Jun 2018 21:31:00 GMT  
		Size: 30.1 MB (30119838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80b29cac58dd8a2e80532fdf6a99d83952fef5684929816fc4440f3ffc825b4`  
		Last Modified: Tue, 10 Jul 2018 21:38:09 GMT  
		Size: 256.2 MB (256166632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.27-slim-stretch`

```console
$ docker pull rust@sha256:4d95fb79bb9421bd8f4e2f3c9588ee47da6eb897726f1d45608cf82c166f78a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:1.27-slim-stretch` - linux; amd64

```console
$ docker pull rust@sha256:d662da1a6b3aaa087cad38234723d4a7ed65b17fdef50b1a3ee6c46908cf9b06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.4 MB (286434120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6434a26d0a01a05965ccd61a96307f65257a084fef7c39f9f7ebf18b9654f483`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Tue, 10 Jul 2018 21:21:10 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 10 Jul 2018 21:22:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ea4e7715e907d0ffa9d31cd6dbf4e8b393c5ada03910d08febcf41188e6d13`  
		Last Modified: Tue, 10 Jul 2018 21:31:43 GMT  
		Size: 263.9 MB (263937145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.27-stretch`

```console
$ docker pull rust@sha256:4ad241efcc4de766d257668e289c30a68111f5f650f2d0be22e4b08ad7bb73de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:1.27-stretch` - linux; amd64

```console
$ docker pull rust@sha256:eb00f4fb12f995a6caffefb242c1017b63c79ca2e5b9ae027a9b5b253d8ba92b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **549.7 MB (549724712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbee606464fb3ffa1bda59afd8cfc5fb7be33a22ff2aa4ee973e760985070709`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:17:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:19:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Jul 2018 21:20:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 10 Jul 2018 21:20:51 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7ad5906a7580677bdf8a8d57749814520c2c6a2054604c115ba6e8646363aa`  
		Last Modified: Tue, 26 Jun 2018 22:30:55 GMT  
		Size: 50.1 MB (50062264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2ddfdfc7d12d2e9d472df6f8f910edf803d71a98628858eb0879f94f60ba1b`  
		Last Modified: Tue, 26 Jun 2018 22:32:32 GMT  
		Size: 213.2 MB (213163111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61eaff6d4ac29f1f320be1da19385fe43ab21dc7c4e2246f203a9ef06e088b9b`  
		Last Modified: Tue, 10 Jul 2018 21:28:01 GMT  
		Size: 226.1 MB (226069790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1-jessie`

```console
$ docker pull rust@sha256:179c445b34b1139964c5dec196743664a1a56f48620e9b1acb6b221953d85a67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:1-jessie` - linux; amd64

```console
$ docker pull rust@sha256:0f0022542bef89553f565d49574bc884b5765444bab659e81c803f1dfe320d88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.3 MB (472298308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:651b0d8a732c3a348ef9dddf5c86a7d1e031d09f3ac62960b2dcf46e29b32e64`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:09:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:09:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:10:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:13:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Jul 2018 21:22:46 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 10 Jul 2018 21:23:32 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece825d3308bbf98f708d95475ccd880497a1e2979ff4ef2534d49049a18488f`  
		Last Modified: Tue, 26 Jun 2018 22:25:06 GMT  
		Size: 17.6 MB (17585269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06854774e2f35e4763103a446112c67322913a6177bea69eb49663e0166e6d6d`  
		Last Modified: Tue, 26 Jun 2018 22:25:45 GMT  
		Size: 43.3 MB (43299742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0db43b9b8da254cebc77bf871006df01219e195b9853616b9f708f124a00f3a`  
		Last Modified: Tue, 26 Jun 2018 22:26:55 GMT  
		Size: 131.1 MB (131090905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4356d465a10d086195ee5f6d5a7718e72207dd1cca9a5e9cb41dcc3dcf428eda`  
		Last Modified: Tue, 10 Jul 2018 21:35:25 GMT  
		Size: 226.1 MB (226070357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1-slim`

```console
$ docker pull rust@sha256:4d95fb79bb9421bd8f4e2f3c9588ee47da6eb897726f1d45608cf82c166f78a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:1-slim` - linux; amd64

```console
$ docker pull rust@sha256:d662da1a6b3aaa087cad38234723d4a7ed65b17fdef50b1a3ee6c46908cf9b06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.4 MB (286434120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6434a26d0a01a05965ccd61a96307f65257a084fef7c39f9f7ebf18b9654f483`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Tue, 10 Jul 2018 21:21:10 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 10 Jul 2018 21:22:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ea4e7715e907d0ffa9d31cd6dbf4e8b393c5ada03910d08febcf41188e6d13`  
		Last Modified: Tue, 10 Jul 2018 21:31:43 GMT  
		Size: 263.9 MB (263937145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1-slim-jessie`

```console
$ docker pull rust@sha256:b51db30718f1fdefae2c6adc9aaef9bbaabcfda77eb8d1789d7d868fb5e1f998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:1-slim-jessie` - linux; amd64

```console
$ docker pull rust@sha256:ae1ad15304768ea45c6c3671f09fe24aac4f570aca163617f71765bd32fffa01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.3 MB (286286470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36d87de4c1c11452cfbf3f075a34d22fc29510e8ae17e884259c5c302e353958`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:21:17 GMT
ADD file:8108708c9ab961c9562c2171f4f594291dbaac0dc81dcb7bcbaf134f251f459e in / 
# Tue, 26 Jun 2018 21:21:18 GMT
CMD ["bash"]
# Tue, 10 Jul 2018 21:23:48 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 10 Jul 2018 21:26:02 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:2caa28db99eb312c788669036f0bf3914f73f5a27a30f69d2a7443fce10eb882`  
		Last Modified: Tue, 26 Jun 2018 21:31:00 GMT  
		Size: 30.1 MB (30119838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80b29cac58dd8a2e80532fdf6a99d83952fef5684929816fc4440f3ffc825b4`  
		Last Modified: Tue, 10 Jul 2018 21:38:09 GMT  
		Size: 256.2 MB (256166632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1-slim-stretch`

```console
$ docker pull rust@sha256:4d95fb79bb9421bd8f4e2f3c9588ee47da6eb897726f1d45608cf82c166f78a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:1-slim-stretch` - linux; amd64

```console
$ docker pull rust@sha256:d662da1a6b3aaa087cad38234723d4a7ed65b17fdef50b1a3ee6c46908cf9b06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.4 MB (286434120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6434a26d0a01a05965ccd61a96307f65257a084fef7c39f9f7ebf18b9654f483`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Tue, 10 Jul 2018 21:21:10 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 10 Jul 2018 21:22:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ea4e7715e907d0ffa9d31cd6dbf4e8b393c5ada03910d08febcf41188e6d13`  
		Last Modified: Tue, 10 Jul 2018 21:31:43 GMT  
		Size: 263.9 MB (263937145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1-stretch`

```console
$ docker pull rust@sha256:4ad241efcc4de766d257668e289c30a68111f5f650f2d0be22e4b08ad7bb73de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:1-stretch` - linux; amd64

```console
$ docker pull rust@sha256:eb00f4fb12f995a6caffefb242c1017b63c79ca2e5b9ae027a9b5b253d8ba92b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **549.7 MB (549724712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbee606464fb3ffa1bda59afd8cfc5fb7be33a22ff2aa4ee973e760985070709`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:17:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:19:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Jul 2018 21:20:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 10 Jul 2018 21:20:51 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7ad5906a7580677bdf8a8d57749814520c2c6a2054604c115ba6e8646363aa`  
		Last Modified: Tue, 26 Jun 2018 22:30:55 GMT  
		Size: 50.1 MB (50062264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2ddfdfc7d12d2e9d472df6f8f910edf803d71a98628858eb0879f94f60ba1b`  
		Last Modified: Tue, 26 Jun 2018 22:32:32 GMT  
		Size: 213.2 MB (213163111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61eaff6d4ac29f1f320be1da19385fe43ab21dc7c4e2246f203a9ef06e088b9b`  
		Last Modified: Tue, 10 Jul 2018 21:28:01 GMT  
		Size: 226.1 MB (226069790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:jessie`

```console
$ docker pull rust@sha256:179c445b34b1139964c5dec196743664a1a56f48620e9b1acb6b221953d85a67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:jessie` - linux; amd64

```console
$ docker pull rust@sha256:0f0022542bef89553f565d49574bc884b5765444bab659e81c803f1dfe320d88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.3 MB (472298308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:651b0d8a732c3a348ef9dddf5c86a7d1e031d09f3ac62960b2dcf46e29b32e64`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:09:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:09:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:10:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:13:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Jul 2018 21:22:46 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 10 Jul 2018 21:23:32 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece825d3308bbf98f708d95475ccd880497a1e2979ff4ef2534d49049a18488f`  
		Last Modified: Tue, 26 Jun 2018 22:25:06 GMT  
		Size: 17.6 MB (17585269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06854774e2f35e4763103a446112c67322913a6177bea69eb49663e0166e6d6d`  
		Last Modified: Tue, 26 Jun 2018 22:25:45 GMT  
		Size: 43.3 MB (43299742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0db43b9b8da254cebc77bf871006df01219e195b9853616b9f708f124a00f3a`  
		Last Modified: Tue, 26 Jun 2018 22:26:55 GMT  
		Size: 131.1 MB (131090905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4356d465a10d086195ee5f6d5a7718e72207dd1cca9a5e9cb41dcc3dcf428eda`  
		Last Modified: Tue, 10 Jul 2018 21:35:25 GMT  
		Size: 226.1 MB (226070357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:latest`

```console
$ docker pull rust@sha256:4ad241efcc4de766d257668e289c30a68111f5f650f2d0be22e4b08ad7bb73de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:latest` - linux; amd64

```console
$ docker pull rust@sha256:eb00f4fb12f995a6caffefb242c1017b63c79ca2e5b9ae027a9b5b253d8ba92b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **549.7 MB (549724712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbee606464fb3ffa1bda59afd8cfc5fb7be33a22ff2aa4ee973e760985070709`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:17:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:19:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Jul 2018 21:20:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 10 Jul 2018 21:20:51 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7ad5906a7580677bdf8a8d57749814520c2c6a2054604c115ba6e8646363aa`  
		Last Modified: Tue, 26 Jun 2018 22:30:55 GMT  
		Size: 50.1 MB (50062264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2ddfdfc7d12d2e9d472df6f8f910edf803d71a98628858eb0879f94f60ba1b`  
		Last Modified: Tue, 26 Jun 2018 22:32:32 GMT  
		Size: 213.2 MB (213163111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61eaff6d4ac29f1f320be1da19385fe43ab21dc7c4e2246f203a9ef06e088b9b`  
		Last Modified: Tue, 10 Jul 2018 21:28:01 GMT  
		Size: 226.1 MB (226069790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:slim`

```console
$ docker pull rust@sha256:4d95fb79bb9421bd8f4e2f3c9588ee47da6eb897726f1d45608cf82c166f78a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:slim` - linux; amd64

```console
$ docker pull rust@sha256:d662da1a6b3aaa087cad38234723d4a7ed65b17fdef50b1a3ee6c46908cf9b06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.4 MB (286434120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6434a26d0a01a05965ccd61a96307f65257a084fef7c39f9f7ebf18b9654f483`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Tue, 10 Jul 2018 21:21:10 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 10 Jul 2018 21:22:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ea4e7715e907d0ffa9d31cd6dbf4e8b393c5ada03910d08febcf41188e6d13`  
		Last Modified: Tue, 10 Jul 2018 21:31:43 GMT  
		Size: 263.9 MB (263937145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:slim-jessie`

```console
$ docker pull rust@sha256:b51db30718f1fdefae2c6adc9aaef9bbaabcfda77eb8d1789d7d868fb5e1f998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:slim-jessie` - linux; amd64

```console
$ docker pull rust@sha256:ae1ad15304768ea45c6c3671f09fe24aac4f570aca163617f71765bd32fffa01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.3 MB (286286470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36d87de4c1c11452cfbf3f075a34d22fc29510e8ae17e884259c5c302e353958`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:21:17 GMT
ADD file:8108708c9ab961c9562c2171f4f594291dbaac0dc81dcb7bcbaf134f251f459e in / 
# Tue, 26 Jun 2018 21:21:18 GMT
CMD ["bash"]
# Tue, 10 Jul 2018 21:23:48 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 10 Jul 2018 21:26:02 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:2caa28db99eb312c788669036f0bf3914f73f5a27a30f69d2a7443fce10eb882`  
		Last Modified: Tue, 26 Jun 2018 21:31:00 GMT  
		Size: 30.1 MB (30119838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80b29cac58dd8a2e80532fdf6a99d83952fef5684929816fc4440f3ffc825b4`  
		Last Modified: Tue, 10 Jul 2018 21:38:09 GMT  
		Size: 256.2 MB (256166632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:slim-stretch`

```console
$ docker pull rust@sha256:4d95fb79bb9421bd8f4e2f3c9588ee47da6eb897726f1d45608cf82c166f78a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:slim-stretch` - linux; amd64

```console
$ docker pull rust@sha256:d662da1a6b3aaa087cad38234723d4a7ed65b17fdef50b1a3ee6c46908cf9b06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.4 MB (286434120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6434a26d0a01a05965ccd61a96307f65257a084fef7c39f9f7ebf18b9654f483`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Tue, 10 Jul 2018 21:21:10 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 10 Jul 2018 21:22:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ea4e7715e907d0ffa9d31cd6dbf4e8b393c5ada03910d08febcf41188e6d13`  
		Last Modified: Tue, 10 Jul 2018 21:31:43 GMT  
		Size: 263.9 MB (263937145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:stretch`

```console
$ docker pull rust@sha256:4ad241efcc4de766d257668e289c30a68111f5f650f2d0be22e4b08ad7bb73de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rust:stretch` - linux; amd64

```console
$ docker pull rust@sha256:eb00f4fb12f995a6caffefb242c1017b63c79ca2e5b9ae027a9b5b253d8ba92b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **549.7 MB (549724712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbee606464fb3ffa1bda59afd8cfc5fb7be33a22ff2aa4ee973e760985070709`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:17:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:19:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Jul 2018 21:20:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 10 Jul 2018 21:20:51 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7ad5906a7580677bdf8a8d57749814520c2c6a2054604c115ba6e8646363aa`  
		Last Modified: Tue, 26 Jun 2018 22:30:55 GMT  
		Size: 50.1 MB (50062264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2ddfdfc7d12d2e9d472df6f8f910edf803d71a98628858eb0879f94f60ba1b`  
		Last Modified: Tue, 26 Jun 2018 22:32:32 GMT  
		Size: 213.2 MB (213163111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61eaff6d4ac29f1f320be1da19385fe43ab21dc7c4e2246f203a9ef06e088b9b`  
		Last Modified: Tue, 10 Jul 2018 21:28:01 GMT  
		Size: 226.1 MB (226069790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
